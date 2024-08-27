struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec2<i32>,
    d: f32,
    e: bool,
}

struct Struct_4 {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: Struct_2,
    e: i32,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 62505u;

var<private> global1: array<vec4<bool>, 16> = array<vec4<bool>, 16>(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> vec2<bool> {
    let var_0 = vec3<bool>(true, ~_wgslsmith_mod_u32(abs(u_input.c.x), 1u) >= (_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(u_input.c, arg_0.a), u_input.c.x, u_input.d | u_input.c.x) ^ reverseBits(max(arg_0.b, 4294967295u))), true);
    global1 = array<vec4<bool>, 16>();
    global1 = array<vec4<bool>, 16>();
    var var_1 = Struct_5(reverseBits(-9772i));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-742f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-897f))), 1f), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(363f, 125f, arg_1)), -1419f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-621f + -970f))), _wgslsmith_f_op_f32(sign(970f)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1540f, -1846f, _wgslsmith_f_op_f32(abs(-557f))) + vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1401f, -1112f)), -976f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2142f - 427f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))))));
    return vec2<bool>(arg_1, var_0.x);
}

fn func_2() -> Struct_1 {
    global1 = array<vec4<bool>, 16>();
    var var_0 = select(select(func_3(Struct_1(vec2<u32>(22618u, 0u), abs(u_input.d), 5703u, vec4<bool>(true, true, true, true)), -612f >= _wgslsmith_f_op_f32(round(2154f))), vec2<bool>(all(select(global1[_wgslsmith_index_u32(27410u, 16u)], vec4<bool>(false, false, true, false), false)), true), vec2<bool>(true && (u_input.d != u_input.d), !all(vec3<bool>(true, false, true)))), select(vec2<bool>(true, true), vec2<bool>(true, (u_input.d < 36277u) | true), !(!(14897u <= u_input.d))), any(vec2<bool>(1u < u_input.d, 690f < _wgslsmith_f_op_f32(ceil(227f)))));
    var var_1 = -_wgslsmith_mult_i32(-2147483647i, u_input.b);
    let var_2 = Struct_1(_wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.c.x, ~u_input.d), abs(firstLeadingBit(u_input.c ^ vec2<u32>(u_input.d, u_input.c.x)))), u_input.c.x, 1u & ~u_input.c.x, !select(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(56691u, 46253u, ~22048u), 16u)], global1[_wgslsmith_index_u32(u_input.d, 16u)], select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(false, var_0.x, true, var_0.x))));
    var_1 = ~(-19119i);
    return Struct_1(vec2<u32>(u_input.d, _wgslsmith_add_u32(reverseBits(~762u), firstTrailingBit(max(1u, 38530u)))), 27274u, _wgslsmith_mod_u32(~u_input.d, ~u_input.d), !(!global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~4294967295u, ~25080u), 16u)]));
}

fn func_1() -> vec4<u32> {
    var var_0 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -864f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(100f, -986f, true)) * _wgslsmith_div_f32(1171f, 972f))), 1622f, 1362f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-336f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-456f - -622f)), -1532f, 776f)), u_input.a.ww, _wgslsmith_f_op_f32(514f + _wgslsmith_f_op_f32(-892f - 340f)), false);
    var var_1 = Struct_2(var_0.e, ~53384u, func_2(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b.x * var_0.d), -340f)))), func_2());
    let var_2 = Struct_2(var_0.e, 2415u, Struct_1(abs(var_1.e.a), ~u_input.c.x, ~_wgslsmith_mod_u32(u_input.d, min(var_1.b, u_input.c.x)), global1[_wgslsmith_index_u32(min(abs(52696u), _wgslsmith_mult_u32(~39912u, u_input.d)), 16u)]), -1215f, func_2());
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -752f)), _wgslsmith_f_op_f32(min(-1391f, _wgslsmith_f_op_f32(f32(-1f) * -576f))));
    var var_4 = _wgslsmith_mod_i32(~(-58164i), -34475i);
    return _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(~firstTrailingBit(vec4<u32>(var_2.e.a.x, var_2.b, var_1.e.a.x, 0u)), _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.c.x, var_1.e.b, 3811u, u_input.d), ~vec4<u32>(0u, 2473u, 10063u, var_2.c.c)), _wgslsmith_div_vec4_u32(~vec4<u32>(32468u, var_2.b, var_2.e.a.x, 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(var_1.c.b, var_2.b, 0u, var_1.c.b), vec4<u32>(u_input.d, var_1.e.c, 111010u, var_2.c.b)))) >> (select(_wgslsmith_add_vec4_u32(~vec4<u32>(41344u, var_1.e.a.x, 0u, 27904u), firstLeadingBit(vec4<u32>(var_1.e.b, u_input.d, var_2.b, var_1.c.a.x))), vec4<u32>(var_2.e.b | var_2.e.b, var_2.c.a.x, 83946u, 10093u), var_2.c.d.x) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(4294967295u, var_1.b, u_input.c.x), firstLeadingBit(vec3<u32>(4294967295u, u_input.d, 80822u))), _wgslsmith_sub_vec3_u32(~vec3<u32>(1u, 4294967295u, var_1.e.a.x), vec3<u32>(47928u, u_input.c.x, var_1.e.a.x) >> (vec3<u32>(var_2.e.c, 23633u, 1u) % vec3<u32>(32u)))), u_input.c.x, _wgslsmith_dot_vec4_u32(select(vec4<u32>(44360u, u_input.d, var_1.b, 26331u), vec4<u32>(10474u, 4294967295u, 1u, var_2.c.b), var_2.e.d.x) & select(vec4<u32>(u_input.c.x, u_input.c.x, u_input.d, var_2.e.b), vec4<u32>(18697u, u_input.d, 1u, u_input.c.x), var_2.c.d), vec4<u32>(~1u, 0u, 32044u, 4294967295u)), 7670u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_dot_vec4_u32(min(vec4<u32>(abs(u_input.d) & 15872u, u_input.c.x, u_input.c.x, u_input.d), ~_wgslsmith_div_vec4_u32(vec4<u32>(24944u, u_input.d, 50397u, 1u), vec4<u32>(81643u, u_input.d, 44088u, u_input.c.x)) ^ _wgslsmith_mod_vec4_u32(func_1(), vec4<u32>(0u, u_input.d, u_input.c.x, u_input.d))), vec4<u32>(u_input.c.x, func_1().x, ~u_input.d, ~20382u));
    var var_0 = func_2();
    let var_1 = Struct_4(-26921i, firstLeadingBit(min(firstLeadingBit(abs(vec4<u32>(4294967295u, var_0.a.x, var_0.c, 28950u))), ~vec4<u32>(u_input.c.x, 4294967295u, u_input.d, var_0.b))), 0i, Struct_2(true, firstTrailingBit(13231u), Struct_1(vec2<u32>(4294967295u, var_0.c), ~min(u_input.d, var_0.c), var_0.a.x, !global1[_wgslsmith_index_u32(var_0.b, 16u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(930f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-968f)))), func_2()), ~u_input.b << (firstLeadingBit(u_input.c.x) % 32u));
    var var_2 = ~u_input.d;
    let var_3 = !((u_input.b >= _wgslsmith_dot_vec3_i32(u_input.a.xxx, vec3<i32>(u_input.b, 2147483647i, u_input.b))) & all(!vec3<bool>(var_0.d.x, var_1.d.c.d.x, var_1.d.c.d.x))) & !all(var_1.d.e.d.zy);
    var var_4 = var_0.d.x;
    let var_5 = Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.d)), 1235f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d.d + -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.d.d, var_1.d.d)))), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(2254f, _wgslsmith_f_op_f32(floor(var_1.d.d)))), var_1.d.d)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.d.d, _wgslsmith_f_op_f32(trunc(var_1.d.d))) - -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(2407f, _wgslsmith_f_op_f32(1219f * var_1.d.d))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1082f * -397f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-764f, var_1.d.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1108f))))), reverseBits(vec2<i32>(_wgslsmith_sub_i32(44257i, var_1.e) | min(u_input.a.x, u_input.b), var_1.c)), var_1.d.d, any(vec4<bool>(var_3, any(select(var_1.d.e.d.zx, vec2<bool>(false, false), false)), true, false)));
    let var_6 = _wgslsmith_f_op_vec3_f32(-var_5.a.ywz);
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_6.x - -824f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_5.b.x + -1677f)))));
}

