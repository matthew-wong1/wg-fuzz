struct Struct_1 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: u32,
    c: vec3<bool>,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 4>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> f32 {
    let var_0 = Struct_2(38967u, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1111f - 211f) + -132f)))));
    let var_1 = Struct_2(u_input.b.x, _wgslsmith_f_op_f32(min(var_0.b, var_0.b)));
    var var_2 = Struct_3(16122i);
    var var_3 = _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(select(~vec3<i32>(62589i, u_input.a, var_2.a), firstLeadingBit(vec3<i32>(1014i, u_input.a, u_input.a)), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true))), firstLeadingBit(vec3<i32>(u_input.a, 0i, var_2.a) | vec3<i32>(var_2.a, u_input.a, u_input.a))) | -(~reverseBits(vec3<i32>(var_2.a, u_input.a, -1i))), vec3<i32>(u_input.a, ~(i32(-1i) * -266i), min(u_input.a, _wgslsmith_sub_i32(u_input.a, i32(-1i) * -32425i))));
    var_2 = Struct_3(u_input.a);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1f)));
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_2(~u_input.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2315f) * 811f))));
    global0 = array<vec2<bool>, 4>();
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-612f - var_0.b)) - -503f) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3()))))));
    var var_2 = _wgslsmith_clamp_vec2_u32(u_input.b, _wgslsmith_mod_vec2_u32((~vec2<u32>(u_input.b.x, 4294967295u) << (select(u_input.b, vec2<u32>(65870u, u_input.b.x), vec2<bool>(false, true)) % vec2<u32>(32u))) ^ vec2<u32>(~15703u, u_input.b.x), u_input.b), abs(u_input.b));
    var var_3 = Struct_1(select(true, 11927u != u_input.b.x, true), abs(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.b.x, 65504u, 16533u, u_input.b.x), (vec4<u32>(37933u, 1u, 114909u, u_input.b.x) | vec4<u32>(u_input.b.x, var_0.a, u_input.b.x, var_0.a)) >> ((vec4<u32>(var_2.x, u_input.b.x, 52964u, var_0.a) >> (vec4<u32>(45083u, 0u, var_0.a, 1u) % vec4<u32>(32u))) % vec4<u32>(32u)))));
    return Struct_3(u_input.a);
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: vec3<f32>, arg_3: vec2<u32>) -> vec4<u32> {
    let var_0 = 1u;
    global0 = array<vec2<bool>, 4>();
    var var_1 = Struct_1(arg_1, _wgslsmith_div_vec4_u32(vec4<u32>(28483u, _wgslsmith_add_u32(u_input.b.x, u_input.b.x), ~82095u, arg_3.x), vec4<u32>(~0u, 1u, 64331u, ~arg_3.x)) ^ ~(~vec4<u32>(1u, arg_3.x, 13429u, var_0) >> (vec4<u32>(arg_3.x, var_0, u_input.b.x, 0u) % vec4<u32>(32u))));
    var_1 = Struct_1(!all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(arg_1, arg_1, var_1.a, var_1.a), false), select(vec4<bool>(var_1.a, arg_1, var_1.a, true), vec4<bool>(true, false, var_1.a, var_1.a), arg_1), vec4<bool>(var_1.a, true, false, var_1.a))), _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_div_u32(var_1.b.x, 5432u) >> (~0u % 32u), _wgslsmith_mult_u32(var_1.b.x, ~arg_3.x), 0u | var_1.b.x, 1u), vec4<u32>(arg_3.x, _wgslsmith_mod_u32(_wgslsmith_add_u32(arg_3.x, var_0), var_1.b.x ^ var_1.b.x), firstLeadingBit(firstTrailingBit(var_0)), select(var_1.b.x, var_0, all(vec4<bool>(var_1.a, false, var_1.a, false))))));
    var_1 = Struct_1(arg_1, _wgslsmith_clamp_vec4_u32(~countOneBits(reverseBits(var_1.b)), var_1.b, max(vec4<u32>(arg_3.x, 0u, 53765u, 1u), vec4<u32>(112730u, 18635u, var_0, var_0)) & abs(reverseBits(vec4<u32>(u_input.b.x, u_input.b.x, arg_3.x, var_1.b.x)))));
    return ~firstTrailingBit(~abs(~vec4<u32>(35504u, 4294967295u, u_input.b.x, arg_3.x)));
}

fn func_1(arg_0: vec3<u32>) -> i32 {
    global0 = array<vec2<bool>, 4>();
    global0 = array<vec2<bool>, 4>();
    var var_0 = Struct_1(true, abs(func_4(func_2(), false, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-131f, 961f, -1123f), vec3<f32>(1265f, 874f, -644f))) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1501f, 762f, -1732f)))), vec2<u32>(firstLeadingBit(0u), 0u))));
    global0 = array<vec2<bool>, 4>();
    return -64290i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(_wgslsmith_mult_i32(_wgslsmith_mod_i32(~u_input.a, _wgslsmith_add_i32(u_input.a, u_input.a)), i32(-1i) * -u_input.a));
    var var_1 = vec2<i32>(func_1(countOneBits(firstLeadingBit(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x))) | vec3<u32>(~70897u, reverseBits(u_input.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, 59865u, 84438u), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)))), var_0.a & func_2().a);
    let var_2 = vec3<bool>(true, true, true);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-508f * _wgslsmith_f_op_f32(trunc(-971f))))));
    let var_4 = 0i;
    var var_5 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -547f), 1819f)), 1601f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-982f, -739f), vec2<f32>(246f, -1382f))) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1564f, -141f)))) + vec2<f32>(480f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2437f * 852f) * _wgslsmith_div_f32(1398f, 440f)))), any(select(vec4<bool>(u_input.b.x == 2968u, true, true, var_2.x), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, var_2.x, var_2.x), vec4<bool>(var_2.x, var_2.x, true, true), vec4<bool>(false, var_2.x, var_2.x, true)), select(vec4<bool>(false, var_2.x, var_2.x, var_2.x), vec4<bool>(var_2.x, false, var_2.x, true), vec4<bool>(true, true, var_2.x, false)), u_input.b.x <= 2565u)))));
    var_1 = (vec2<i32>(_wgslsmith_add_i32(~var_1.x, max(0i, var_0.a)), func_2().a) << (max(~min(vec2<u32>(u_input.b.x, 0u), vec2<u32>(u_input.b.x, u_input.b.x)), _wgslsmith_div_vec2_u32(max(vec2<u32>(4294967295u, 1u), vec2<u32>(u_input.b.x, u_input.b.x)), u_input.b)) % vec2<u32>(32u))) >> (u_input.b % vec2<u32>(32u));
    global0 = array<vec2<bool>, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i);
}

