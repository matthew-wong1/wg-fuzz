struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec3<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 919i;

var<private> global1: array<vec4<bool>, 21> = array<vec4<bool>, 21>(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false));

var<private> global2: f32;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> f32 {
    global1 = array<vec4<bool>, 21>();
    global1 = array<vec4<bool>, 21>();
    global0 = 1i;
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -107f), _wgslsmith_f_op_f32(round(-169f)))), _wgslsmith_f_op_f32(trunc(1338f))))));
    var var_1 = u_input.a;
    return 447f;
}

fn func_3() -> bool {
    var var_0 = Struct_1(~(~min(min(47798u, 10530u), 43785u)));
    global2 = _wgslsmith_div_f32(-883f, _wgslsmith_f_op_f32(-531f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1214f)) + _wgslsmith_f_op_f32(min(-709f, _wgslsmith_f_op_f32(min(353f, 1665f)))))));
    let var_1 = Struct_1(_wgslsmith_add_u32(var_0.a, ~1u));
    var var_2 = vec3<u32>(1u, ~(~0u), _wgslsmith_div_u32(_wgslsmith_mult_u32(~u_input.b.x, u_input.a), _wgslsmith_mod_u32(countOneBits(var_1.a) << (min(64266u, var_1.a) % 32u), u_input.b.x)));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(338f, -832f) - _wgslsmith_f_op_f32(func_2())) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(f32(-1f) * -159f)))));
    return true;
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    let var_0 = ~(arg_0.a >> (_wgslsmith_add_u32(~9070u, u_input.a) % 32u)) >> (0u % 32u);
    let var_1 = vec2<u32>(abs(25573u), ~(~u_input.a));
    var var_2 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(func_2()))), arg_1), 339f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1 * 1970f), _wgslsmith_div_f32(arg_1, 1000f)) - _wgslsmith_f_op_f32(-627f + _wgslsmith_f_op_f32(arg_1 * arg_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -722f) * -860f))), _wgslsmith_f_op_f32(arg_1 - 265f));
    let var_3 = func_3();
    var var_4 = _wgslsmith_div_vec2_u32(vec2<u32>(1u, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b.x, arg_0.a, u_input.b.x), vec4<u32>(4294967295u, var_1.x, var_1.x, arg_0.a)), u_input.a)) | u_input.b.zy, u_input.b.yy);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -743f) + _wgslsmith_f_op_f32(max(679f, 3183f))), 622f)) + _wgslsmith_f_op_f32(202f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-760f - 1030f) * _wgslsmith_f_op_f32(select(182f, -724f, true))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-893f)))) * _wgslsmith_f_op_f32(f32(-1f) * -338f)));
    global2 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    global0 = 1i;
    global0 = select(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -23014i, -56084i) >> (u_input.b % vec3<u32>(32u)), vec3<i32>(2147483647i, -18245i, -35420i)), -1i), 1i, !select(true, true, true)) & -17067i;
    let var_0 = func_1(Struct_1(~(~u_input.b.x) ^ 1u), 617f);
    var var_1 = Struct_1(0u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1081f + -314f), -926f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(546f, 1580f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, 1033f), vec2<f32>(-779f, 351f), false)), vec2<f32>(-785f, -831f)) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(127f, -651f))))))), 1i << (~_wgslsmith_dot_vec3_u32(~u_input.b, countOneBits(vec3<u32>(1u, 1u, 46964u))) % 32u), _wgslsmith_mult_vec3_i32(-firstLeadingBit(-vec3<i32>(0i, 0i, 8156i)), _wgslsmith_div_vec3_i32(vec3<i32>(1i, _wgslsmith_add_i32(-1i, 62566i), 38607i), vec3<i32>(reverseBits(2147483647i), 1i, i32(-1i) * -48138i))), vec4<u32>(var_1.a, var_0.a, var_0.a, max(4294967295u, ~u_input.a)));
}

