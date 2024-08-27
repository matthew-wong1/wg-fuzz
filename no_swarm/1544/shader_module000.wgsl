struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: i32,
    d: vec2<f32>,
    e: bool,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec4<f32>,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 2>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32, arg_1: vec3<f32>, arg_2: f32) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(-arg_1.yx);
    var var_1 = Struct_1(u_input.b.x, !vec2<bool>(true, countOneBits(u_input.c) == (u_input.c ^ u_input.c)), i32(-1i) * -(~(-u_input.c)), _wgslsmith_f_op_vec2_f32(-arg_1.yz), any(select(global0[_wgslsmith_index_u32(u_input.a, 2u)], vec3<bool>(true, all(vec2<bool>(false, false)), true), true)));
    let var_2 = _wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.a, u_input.b.x) & ~(_wgslsmith_div_u32(var_1.a, 1730u) & _wgslsmith_add_u32(u_input.b.x, 55547u)), ~85248u);
    var_1 = Struct_1(~(~u_input.a), vec2<bool>(-38767i != var_1.c, false), -_wgslsmith_mod_i32(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, var_1.c, -21832i), vec3<i32>(2147483647i, 1i, 21532i))) << (firstTrailingBit(_wgslsmith_mod_u32(~var_2, 1u | u_input.b.x)) % 32u), vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(var_1.d.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0))))), any(select(global0[_wgslsmith_index_u32(43591u, 2u)], select(vec3<bool>(false, var_1.e, var_1.e), global0[_wgslsmith_index_u32(var_1.a, 2u)], global0[_wgslsmith_index_u32(var_1.a, 2u)]), select(global0[_wgslsmith_index_u32(4294967295u, 2u)], vec3<bool>(var_1.e, true, var_1.b.x), global0[_wgslsmith_index_u32(u_input.b.x, 2u)]))) != all(var_1.b));
    let var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(arg_1)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.x, -1386f, arg_2), arg_1)) * arg_1)))));
    return false;
}

fn func_2() -> Struct_2 {
    global0 = array<vec3<bool>, 2>();
    var var_0 = !vec3<bool>(((u_input.b.x | u_input.b.x) == ~0u) & select(true, func_3(217f, vec3<f32>(-1155f, 251f, -600f), 1074f), select(false, false, false)), (~(-1i) & ~u_input.c) > u_input.c, select(any(vec2<bool>(true, true)), true, all(vec2<bool>(true, true)) && true));
    var var_1 = Struct_1(min(min(1u, _wgslsmith_div_u32(firstTrailingBit(u_input.b.x), u_input.a | 0u)), _wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.a, 12197u), u_input.a) ^ u_input.a), !select(vec2<bool>(true, false), !(!var_0.yz), any(vec4<bool>(true, false, var_0.x, var_0.x))), ~u_input.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(512f, -2364f), vec2<f32>(686f, 345f)))) - vec2<f32>(1f, 1f)), true);
    global0 = array<vec3<bool>, 2>();
    var var_2 = -countOneBits(vec3<i32>(-_wgslsmith_mult_i32(u_input.c, -57332i), u_input.c, var_1.c));
    return Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d.x, var_1.d.x, var_1.d.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d.x, -163f, var_1.d.x)))))));
}

fn func_1() -> Struct_2 {
    global0 = array<vec3<bool>, 2>();
    var var_0 = func_2();
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1748f);
    global0 = array<vec3<bool>, 2>();
    let var_2 = _wgslsmith_f_op_f32(575f - var_1);
    return Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(round(var_2)), var_1), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-695f, -1396f, 457f) - vec3<f32>(var_2, 397f, 121f)) - vec3<f32>(270f, -1185f, var_0.a.x))), var_0.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_add_i32(0i, ~(~_wgslsmith_sub_i32(0i, u_input.c)));
    let var_1 = !select(all(vec2<bool>(true, true)), true, true);
    global0 = array<vec3<bool>, 2>();
    var var_2 = func_1();
    var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1316f, _wgslsmith_f_op_f32(-var_2.a.x), var_2.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(0i, _wgslsmith_dot_vec4_i32(select(select(vec4<i32>(-74703i, 21318i, 2147483647i, var_0), vec4<i32>(u_input.c, u_input.c, var_0, 0i), vec4<bool>(true, var_1, var_1, false)), vec4<i32>(u_input.c, u_input.c, var_0, var_0) ^ vec4<i32>(var_0, u_input.c, var_0, u_input.c), !vec4<bool>(false, false, var_1, var_1)), abs(firstLeadingBit(vec4<i32>(-56594i, var_0, u_input.c, 14611i)))), u_input.c, -41869i), var_2.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-268f, _wgslsmith_f_op_f32(max(1000f, -2266f)), var_2.a.x, _wgslsmith_f_op_f32(floor(-1459f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-423f, var_2.a.x, var_2.a.x, -130f) + vec4<f32>(var_2.a.x, var_2.a.x, var_2.a.x, -317f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-297f, var_2.a.x, var_2.a.x, -171f) + vec4<f32>(-297f, var_2.a.x, var_2.a.x, var_2.a.x)), all(vec3<bool>(false, false, var_1))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.x, var_2.a.x, var_2.a.x, 767f)) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.x, var_2.a.x, var_2.a.x, -127f) - vec4<f32>(var_2.a.x, var_2.a.x, 1312f, var_2.a.x)))))), _wgslsmith_mult_vec2_i32(-firstLeadingBit(abs(vec2<i32>(var_0, u_input.c))), select(vec2<i32>(select(u_input.c, -2147483647i, false), 23556i), ~_wgslsmith_sub_vec2_i32(vec2<i32>(var_0, -1i), vec2<i32>(var_0, -29280i)), select(vec2<bool>(var_1, false), vec2<bool>(var_1, var_1), true))), _wgslsmith_mult_i32(-var_0, ~_wgslsmith_dot_vec2_i32(~vec2<i32>(var_0, -1i), ~vec2<i32>(-2147483647i, var_0))));
}

