struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(-973f), Struct_1(1727f), Struct_1(1533f), Struct_1(1143f));

var<private> global1: f32 = -261f;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> vec2<f32> {
    var var_0 = _wgslsmith_mod_u32(24788u, ~(~12051u));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -519f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1555f - -1748f) + -673f)), -872f, -573f));
    let var_2 = any(vec3<bool>(all(vec4<bool>(true, true, true, true)), false, !any(vec4<bool>(true, true, true, true))));
    let var_3 = vec2<bool>(false, !(_wgslsmith_mult_u32(9724u, _wgslsmith_div_u32(u_input.b.x, 0u)) != _wgslsmith_mult_u32(0u, 1u)));
    let var_4 = Struct_2(-u_input.a.xy);
    return _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, _wgslsmith_f_op_f32(max(var_1.x, var_1.x))) * var_1.ww)))));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_2) -> Struct_1 {
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -594f);
    let var_0 = u_input.b.yy;
    let var_1 = Struct_1(1799f);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3()));
    var var_3 = select(select(vec3<bool>(true, select(true, arg_0.x | true, !arg_0.x), _wgslsmith_dot_vec3_u32(vec3<u32>(28597u, var_0.x, 0u), vec3<u32>(4294967295u, var_0.x, 52945u)) < 42371u), arg_0.www, arg_0.xxy), vec3<bool>(all(!vec2<bool>(false, arg_0.x)), true, true), any(vec4<bool>(all(select(vec2<bool>(arg_0.x, false), vec2<bool>(true, true), arg_0.x)), arg_0.x, !any(arg_0), true)));
    return var_1;
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = func_2(vec4<bool>(false, false, arg_1 || true, arg_1), Struct_2(vec2<i32>(arg_2.x | _wgslsmith_add_i32(0i, arg_2.x), 0i)));
    let var_1 = Struct_2(_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, -2147483647i), ~u_input.a.ww), vec2<i32>(_wgslsmith_mod_i32(u_input.a.x, 49405i), arg_2.x)) & -vec2<i32>(64252i, abs(arg_2.x)));
    let var_2 = vec3<u32>(15458u, u_input.b.x, u_input.b.x | u_input.b.x);
    global0 = array<Struct_1, 4>();
    let var_3 = _wgslsmith_add_vec2_i32(var_1.a, var_1.a);
    return global0[_wgslsmith_index_u32(var_2.x, 4u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 4>();
    global1 = _wgslsmith_f_op_f32(673f + _wgslsmith_f_op_f32(abs(-1827f)));
    global0 = array<Struct_1, 4>();
    let var_0 = func_1(-761f, !(select(-22063i, _wgslsmith_clamp_i32(-44664i, 34902i, 2147483647i), 0u < u_input.b.x) < ~_wgslsmith_sub_i32(28897i, 1i)), vec3<i32>(1i, abs(18330i), u_input.a.x));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(792f * var_0.a) * _wgslsmith_f_op_f32(var_0.a - var_0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1312f)) * -729f)));
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -509f);
    global0 = array<Struct_1, 4>();
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.a)));
    let x = u_input.a;
    s_output = StorageBuffer(-1295f, u_input.a.wx ^ _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.a.wx, vec2<i32>(-8288i, u_input.a.x)), vec2<i32>(1i, -23578i) & vec2<i32>(u_input.a.x, u_input.a.x)), _wgslsmith_add_vec2_i32(~u_input.a.zx, vec2<i32>(2147483647i, 2534i))), ~(~vec4<u32>(u_input.b.x, reverseBits(u_input.b.x), abs(u_input.b.x), u_input.b.x)), max(_wgslsmith_add_vec2_u32(min(vec2<u32>(0u, 27994u), u_input.b.yy), vec2<u32>(4294967295u, u_input.b.x) << (vec2<u32>(4294967295u, u_input.b.x) % vec2<u32>(32u))), abs(vec2<u32>(2193u, 1u))) ^ u_input.b.zy, abs(u_input.a.x));
}

