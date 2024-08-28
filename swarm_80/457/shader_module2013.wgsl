struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec4<i32>,
    c: Struct_3,
    d: Struct_3,
}

struct Struct_5 {
    a: vec2<i32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 2>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: f32) -> bool {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, arg_2) * vec2<f32>(arg_2, 430f)))))));
    let var_1 = global0[_wgslsmith_index_u32(~0u, 2u)];
    global0 = array<Struct_5, 2>();
    global0 = array<Struct_5, 2>();
    global0 = array<Struct_5, 2>();
    return false;
}

fn func_2(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_1) -> u32 {
    let var_0 = all(vec3<bool>(true, true, true)) | func_3(countOneBits(1i), u_input.a.x, _wgslsmith_f_op_f32(arg_0.a.a.a.x * 648f));
    var var_1 = u_input.c;
    let var_2 = var_0;
    let var_3 = _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(-var_1.x, var_1.x << (4294967295u % 32u), _wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(var_1.x, 41707i, -2147483647i, -29236i))) | 2147483647i, ~(i32(-1i) * -u_input.b), -6115i, ~abs(u_input.d)), _wgslsmith_add_vec4_i32(~u_input.a, vec4<i32>(0i, i32(-1i) * -19913i, ~u_input.d, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, var_1.x, var_1.x), u_input.c.xxz)) & (vec4<i32>(u_input.b, -4708i, -1i, u_input.a.x) << (~vec4<u32>(66199u, 28113u, 35643u, 1u) % vec4<u32>(32u)))));
    let var_4 = -2147483647i;
    return ~1u;
}

fn func_1() -> StorageBuffer {
    let var_0 = _wgslsmith_div_u32(~83197u, countOneBits(_wgslsmith_mod_u32(func_2(Struct_3(Struct_2(Struct_1(vec2<f32>(-1131f, -2508f)))), Struct_2(Struct_1(vec2<f32>(-611f, -526f))), Struct_1(vec2<f32>(-433f, -965f))), abs(abs(4294967295u)))));
    let var_1 = 4294967295u;
    global0 = array<Struct_5, 2>();
    global0 = array<Struct_5, 2>();
    var var_2 = global0[_wgslsmith_index_u32(~var_0 | var_1, 2u)];
    return StorageBuffer(abs(var_2.a.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1846f - -120f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1352f), _wgslsmith_f_op_f32(ceil(-1157f)))), 844f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-603f + 344f) * _wgslsmith_f_op_f32(min(-2085f, 167f))), 1926f) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(899f, 538f, -187f, -1000f) + vec4<f32>(995f, 989f, 441f, 1081f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(416f, 2335f, -1595f, 400f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1710f, -1138f, 1000f, 542f)))));
    global0 = array<Struct_5, 2>();
    global0 = array<Struct_5, 2>();
    global0 = array<Struct_5, 2>();
    let var_1 = vec3<i32>(31985i, 1i, _wgslsmith_mult_i32(select(_wgslsmith_sub_i32(_wgslsmith_mod_i32(-1i, u_input.c.x), min(u_input.d, 2147483647i)), 1i ^ u_input.a.x, true), -22098i >> (1u % 32u)));
    global0 = array<Struct_5, 2>();
    let x = u_input.a;
    s_output = func_1();
}

