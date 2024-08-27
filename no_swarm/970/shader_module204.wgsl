struct Struct_1 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: u32,
    c: vec4<f32>,
    d: bool,
    e: i32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 3>;

var<private> global1: vec4<bool>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: bool, arg_3: Struct_4) -> i32 {
    var var_0 = ~arg_3.b;
    let var_1 = select(u_input.d.ww, abs(arg_3.a), max(var_0.x, max(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_0.x, 0u), vec3<u32>(1u, arg_0.b, arg_3.b.x)), arg_3.b.x ^ 1102u)) >= arg_3.b.x);
    var var_2 = min(abs(~min(countOneBits(vec3<u32>(arg_0.b, 4294967295u, arg_3.b.x)), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, var_0.x, 1u), vec3<u32>(1u, 4294967295u, arg_0.b)))), select(vec3<u32>(~arg_3.b.x << (~arg_3.b.x % 32u), abs(select(143u, 131246u, true)), _wgslsmith_dot_vec2_u32(max(arg_3.b, vec2<u32>(arg_0.b, arg_3.b.x)), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.b, 100803u), arg_3.b))), countOneBits(~vec3<u32>(4294967295u, 0u, 4294967295u) ^ _wgslsmith_add_vec3_u32(vec3<u32>(var_0.x, arg_3.b.x, var_0.x), vec3<u32>(arg_3.b.x, 6113u, var_0.x))), arg_0.d));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(-198f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1079f)))));
    let var_4 = vec3<i32>(max(i32(-1i) * -19833i, var_1.x), arg_0.e, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(~(-var_1), _wgslsmith_add_vec2_i32(arg_0.a.xz, vec2<i32>(0i, u_input.d.x))), 2147483647i));
    return _wgslsmith_mult_i32(arg_3.a.x, 0i);
}

fn func_2(arg_0: i32, arg_1: vec2<i32>, arg_2: vec4<f32>, arg_3: bool) -> vec2<bool> {
    let var_0 = Struct_4(arg_1, ~vec2<u32>(1u, 1u));
    let var_1 = vec4<bool>(false, arg_3, ~(var_0.b.x >> (~var_0.b.x % 32u)) > ~(~min(0u, var_0.b.x)), 0i > (0i ^ func_3(Struct_3(vec4<i32>(-2147483647i, -42884i, arg_1.x, 16974i), 81509u, vec4<f32>(149f, arg_2.x, arg_2.x, arg_2.x), false, -29070i), Struct_2(arg_2.x), true, var_0)));
    let var_2 = firstLeadingBit(abs(61360u));
    global0 = array<vec4<f32>, 3>();
    let var_3 = select(vec2<u32>(0u | _wgslsmith_div_u32(~var_0.b.x, ~37262u), var_2), var_0.b, !vec2<bool>(false, var_1.x));
    return select(vec2<bool>(any(!var_1.zy), false), !(!var_1.xx), vec2<bool>(global1.x, true));
}

fn func_1(arg_0: vec3<bool>) -> i32 {
    let var_0 = !(!all(vec2<bool>(false, global1.x)));
    var var_1 = !arg_0.x;
    let var_2 = !func_2(i32(-1i) * -23987i, u_input.d.xz, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1218f)), -1830f, -434f, _wgslsmith_div_f32(-1000f, -1138f)), true);
    var var_3 = !global1.x;
    var var_4 = vec3<f32>(1f, -741f, -2174f);
    return -17012i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(~vec2<i32>(func_1(global1.zzz), _wgslsmith_div_i32(1i, u_input.d.x)), abs(u_input.b.ww)), vec2<i32>(countOneBits(-_wgslsmith_sub_i32(u_input.d.x, u_input.a.x)), 2147483647i));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -395f));
    global0 = array<vec4<f32>, 3>();
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, 182f), vec2<f32>(1095f, 1461f)))) + vec2<f32>(1423f, -505f)));
    var var_3 = Struct_1(!select(global1.zxy, select(select(vec3<bool>(global1.x, false, true), global1.xyy, vec3<bool>(true, global1.x, global1.x)), select(global1.xwz, global1.yyy, vec3<bool>(true, global1.x, global1.x)), vec3<bool>(global1.x, global1.x, global1.x)), !vec3<bool>(true, true, global1.x)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(-1331f)), _wgslsmith_f_op_f32(min(177f, -125f))) - var_2))), vec4<bool>(global1.x, all(global1.yy), true, -1i != var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_vec4_u32(vec4<u32>(abs(59152u), ~0u, ~37958u, abs(1u)), ~(~vec4<u32>(1u, 0u, 0u, 0u))), -u_input.b.ww, -(~u_input.b.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_3.b.x * _wgslsmith_f_op_f32(var_2.x - 282f)), _wgslsmith_f_op_f32(floor(1655f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a + -1635f))) - vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_3.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.b.x) * var_2.x), var_1.a)), abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(20605u, 20722u, 35826u, 21396u), _wgslsmith_div_vec4_u32(vec4<u32>(53228u, 0u, 0u, 1u), vec4<u32>(1u, 1u, 51957u, 32133u))) & ~(~57850u)));
}

