struct Struct_1 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<i32>,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 15> = array<vec2<bool>, 15>(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false));

var<private> global1: array<u32, 17> = array<u32, 17>(14861u, 1u, 2904u, 0u, 18996u, 1u, 1u, 4294967295u, 44058u, 4294967295u, 100497u, 1u, 0u, 8479u, 0u, 4294967295u, 1u);

var<private> global2: f32;

var<private> global3: array<vec3<bool>, 28> = array<vec3<bool>, 28>(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> i32 {
    global0 = array<vec2<bool>, 15>();
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -395f);
    let var_1 = Struct_1(abs(vec2<u32>(11464u, 56171u) << (firstTrailingBit(~u_input.a.yx) % vec2<u32>(32u))), false);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1093f, -837f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1826f, 1000f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(2560f, -314f)))));
    var_0 = _wgslsmith_f_op_f32(-1151f - _wgslsmith_f_op_f32(round(var_2.x)));
    return countOneBits(-_wgslsmith_add_i32(~(-2147483647i), _wgslsmith_clamp_i32(1i, 0i, 9510i)) >> ((global1[_wgslsmith_index_u32(abs(var_1.a.x), 17u)] >> (_wgslsmith_add_u32(var_1.a.x, abs(0u)) % 32u)) % 32u));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: vec4<f32>) -> Struct_2 {
    return Struct_2(Struct_1(vec2<u32>(firstLeadingBit(min(u_input.a.x, arg_1.a.x)), ~39200u), !arg_0));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: bool) -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.a.a.x, 66203u, (~arg_2.a.a.x >> (_wgslsmith_dot_vec3_u32(u_input.c, u_input.a) % 32u)) & arg_2.a.a.x, 70339u), ~_wgslsmith_mult_vec4_u32(~abs(vec4<u32>(0u, arg_2.a.a.x, 0u, arg_2.a.a.x)), vec4<u32>(34091u, _wgslsmith_div_u32(24622u, 7331u), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 17u)], 17u)]), 17u)], 92776u | arg_2.a.a.x)));
    var var_1 = vec2<bool>(true, true);
    let var_2 = vec4<i32>(-(~(-2147483647i)), -49727i, abs(_wgslsmith_div_i32(0i, _wgslsmith_mod_i32(2147483647i, arg_1.x))), ~(~(~arg_1.x))) | firstLeadingBit(vec4<i32>(arg_1.x, ~(~arg_1.x), arg_1.x, i32(-1i) * -2147483647i));
    var_0 = 4294967295u & ~(arg_2.a.a.x >> (~arg_2.a.a.x % 32u));
    var var_3 = arg_2;
    return arg_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0u;
    let var_1 = Struct_2(func_3(vec3<f32>(_wgslsmith_f_op_f32(-1465f * -1121f), _wgslsmith_f_op_f32(sign(-139f)), 520f), vec4<i32>(func_1(), ~1i, ~_wgslsmith_mod_i32(1i, -17321i), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 0i, 0i), vec3<i32>(-4814i, 19021i, 2147483647i)) >> (53993u % 32u)), func_2(false, Struct_1(~u_input.c.xz, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-3038f, 573f, 1048f, -886f) - vec4<f32>(-1441f, 1000f, -338f, 1000f)))), any(select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), true), vec4<bool>(true, true, false, false), true))));
    var var_2 = Struct_2(var_1.a);
    let var_3 = -reverseBits(~min(vec2<i32>(-818i, 23487i), vec2<i32>(18826i, -58431i)) & (~vec2<i32>(2726i, -9320i) << (func_3(vec3<f32>(1464f, -345f, 617f), vec4<i32>(-52066i, 2147483647i, 1i, -1i), var_1, false).a % vec2<u32>(32u))));
    var_0 = ~_wgslsmith_sub_u32(_wgslsmith_mod_u32(42505u, _wgslsmith_div_u32(u_input.b, global1[_wgslsmith_index_u32(48045u, 17u)]) | _wgslsmith_mod_u32(var_1.a.a.x, var_1.a.a.x)), u_input.a.x);
    var var_4 = var_2.a;
    let var_5 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-147f, 1700f, 657f, 374f) + vec4<f32>(1622f, -1000f, -935f, 687f)) * vec4<f32>(-641f, -1366f, 545f, -1000f)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.x, var_4.a.x, min(vec3<i32>(var_3.x, ~(-var_3.x), -(~var_3.x)), min(vec3<i32>(19059i, ~(-20858i), _wgslsmith_dot_vec3_i32(vec3<i32>(var_3.x, -45933i, 39446i), vec3<i32>(var_3.x, 0i, -1i))), vec3<i32>(var_3.x, 2147483647i, var_3.x))), vec2<u32>(min(~var_2.a.a.x, var_1.a.a.x), u_input.c.x), 1074f);
}

