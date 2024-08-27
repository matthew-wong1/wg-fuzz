struct Struct_1 {
    a: bool,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 28>;

var<private> global1: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(false, Struct_1(false, 894f, -31675i)), Struct_2(false, Struct_1(false, -1532f, 1i)), Struct_2(false, Struct_1(false, 656f, 62202i)), Struct_2(false, Struct_1(true, 137f, i32(-2147483648))), Struct_2(false, Struct_1(true, 1052f, 1i)), Struct_2(false, Struct_1(false, 454f, -11053i)));

var<private> global2: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(true, Struct_1(true, -1169f, -22390i)), Struct_2(false, Struct_1(false, -942f, i32(-2147483648))), Struct_2(false, Struct_1(false, 1088f, -1i)), Struct_2(true, Struct_1(true, 395f, 1i)), Struct_2(true, Struct_1(true, -715f, -5063i)), Struct_2(false, Struct_1(true, 1000f, 1i)), Struct_2(false, Struct_1(false, 1000f, 1i)), Struct_2(false, Struct_1(false, 1403f, 0i)), Struct_2(false, Struct_1(true, 2863f, i32(-2147483648))), Struct_2(true, Struct_1(true, 261f, -23065i)), Struct_2(true, Struct_1(false, -552f, 18945i)), Struct_2(true, Struct_1(true, -833f, 20053i)), Struct_2(false, Struct_1(false, -1000f, 74260i)), Struct_2(true, Struct_1(true, 251f, 33255i)), Struct_2(false, Struct_1(false, -1000f, 4280i)), Struct_2(false, Struct_1(false, 1182f, 1i)), Struct_2(false, Struct_1(true, 1598f, -49695i)), Struct_2(true, Struct_1(true, -529f, 1i)), Struct_2(true, Struct_1(true, -543f, 2147483647i)), Struct_2(true, Struct_1(false, 361f, -5167i)), Struct_2(true, Struct_1(false, -403f, i32(-2147483648))), Struct_2(false, Struct_1(true, 1237f, 2147483647i)), Struct_2(true, Struct_1(false, 129f, -13201i)), Struct_2(true, Struct_1(false, 381f, i32(-2147483648))), Struct_2(false, Struct_1(false, -158f, -11040i)), Struct_2(true, Struct_1(false, 1828f, 2147483647i)), Struct_2(true, Struct_1(true, 1000f, 0i)), Struct_2(true, Struct_1(false, -1968f, -1i)), Struct_2(true, Struct_1(true, -392f, -1i)), Struct_2(true, Struct_1(false, -1000f, i32(-2147483648))), Struct_2(true, Struct_1(false, -556f, 19449i)));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec4<bool> {
    let var_0 = select(vec2<bool>(true, true), select(global0[_wgslsmith_index_u32(~(~u_input.a), 28u)], !global0[_wgslsmith_index_u32(u_input.a, 28u)], true), select((_wgslsmith_div_u32(u_input.a, 1u) <= (u_input.b | u_input.a)) || true, ~_wgslsmith_clamp_i32(4645i, -2147483647i, 2147483647i) >= countOneBits(-2147483647i << (u_input.b % 32u)), false));
    global0 = array<vec2<bool>, 28>();
    global2 = array<Struct_2, 31>();
    var var_1 = vec3<u32>(firstTrailingBit(u_input.b), _wgslsmith_mult_u32(_wgslsmith_mod_u32(select(~u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(45266u, 4294967295u), vec2<u32>(13898u, u_input.a)), any(vec3<bool>(var_0.x, true, true))), min(1u >> (u_input.b % 32u), _wgslsmith_mult_u32(u_input.b, 0u))), 28709u), 4294967295u);
    global2 = array<Struct_2, 31>();
    return vec4<bool>(var_0.x, var_0.x, any(select(!vec3<bool>(var_0.x, false, true), !vec3<bool>(var_0.x, true, false), false)) | all(select(select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(false, var_0.x, var_0.x, var_0.x), false), !vec4<bool>(var_0.x, var_0.x, true, var_0.x), true)), all(select(select(!vec3<bool>(false, var_0.x, var_0.x), select(vec3<bool>(var_0.x, true, true), vec3<bool>(true, false, true), vec3<bool>(var_0.x, true, false)), !var_0.x), select(vec3<bool>(false, true, true), !vec3<bool>(true, true, var_0.x), all(vec4<bool>(false, true, var_0.x, var_0.x))), !(!vec3<bool>(var_0.x, false, true)))));
}

fn func_2(arg_0: i32) -> vec2<f32> {
    let var_0 = Struct_1(any(select(vec4<bool>(true, true, true, true), func_3(), vec4<bool>(true, arg_0 <= -97i, true, any(vec3<bool>(false, true, false))))), _wgslsmith_f_op_f32(872f + 1726f), ~(-97567i));
    let var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) + _wgslsmith_f_op_f32(var_0.b + var_0.b))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, var_0.b)) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, var_0.b) * vec2<f32>(-629f, 1459f))))))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.x)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1189f * -1159f))));
    global1 = array<Struct_2, 6>();
    var var_3 = Struct_2(true, Struct_1(!all(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, u_input.a), 28u)]), var_1.x, var_0.c));
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.x))))));
}

fn func_1() -> vec2<f32> {
    global0 = array<vec2<bool>, 28>();
    global2 = array<Struct_2, 31>();
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1058f, 1452f), vec2<f32>(802f, -1563f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(5719i))))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(824f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -615f) + _wgslsmith_f_op_f32(1498f - -864f))))), vec2<bool>(any(vec4<bool>(true, true, true, true)) || false, false)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1944f * -1492f), _wgslsmith_f_op_f32(176f + -320f)) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-648f, 198f)))) * _wgslsmith_f_op_vec2_f32(func_1())), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1019f, -1000f)))));
    var var_1 = Struct_1(select(var_0.x < _wgslsmith_f_op_f32(f32(-1f) * -526f), all(vec3<bool>(false, true, false)) && true, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(11402i, -2147483647i, -15915i), vec3<i32>(-44816i, -57004i, -6635i)), -2147483647i) < -14511i), _wgslsmith_f_op_f32(213f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.x, var_0.x)) + _wgslsmith_f_op_f32(floor(1088f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), -1355f))), ~(-53034i));
    var var_2 = vec3<bool>(all(!func_3().yxw), false, !any(func_3()));
    var_1 = Struct_1(var_2.x, _wgslsmith_f_op_f32(var_1.b * -1422f), var_1.c);
    let var_3 = Struct_2(any(select(vec4<bool>(all(vec3<bool>(var_2.x, var_1.a, false)), true, true, true), func_3(), !select(vec4<bool>(false, var_1.a, false, true), vec4<bool>(false, true, true, var_1.a), true))), Struct_1(var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -550f) + -1403f), 1i));
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -1029f, var_1.b) * vec3<f32>(var_0.x, 1605f, -679f)))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(var_3.b.b)), _wgslsmith_f_op_f32(-1000f + -2378f), var_2.x)), 487f)));
    var var_5 = _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(var_1.c, 2147483647i), 53405i, ~var_3.b.c), _wgslsmith_add_vec3_i32(abs(vec3<i32>(var_1.c, 2147483647i, 31551i)), -vec3<i32>(var_1.c, var_1.c, 2147483647i))) ^ ~14670i, -68210i);
    let var_6 = _wgslsmith_clamp_vec4_i32(vec4<i32>(~(-_wgslsmith_mult_i32(70815i, var_1.c)), 9602i, var_3.b.c, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(var_1.c, var_3.b.c, -1i) ^ vec3<i32>(var_3.b.c, var_3.b.c, var_1.c)), min(vec3<i32>(var_1.c, var_3.b.c, var_1.c) << (vec3<u32>(1u, 34612u, u_input.a) % vec3<u32>(32u)), vec3<i32>(-2198i, var_1.c, var_1.c)))), _wgslsmith_clamp_vec4_i32(select(vec4<i32>(-33252i, var_3.b.c, 50464i, ~var_1.c), vec4<i32>(14228i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.c, 2161i, var_3.b.c, 1i), vec4<i32>(var_3.b.c, var_3.b.c, var_1.c, var_1.c)), _wgslsmith_div_i32(var_3.b.c, -63227i), countOneBits(-26180i)), any(vec4<bool>(true, false, true, false))), countOneBits(vec4<i32>(~var_3.b.c, 0i, var_1.c | var_1.c, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.c, -2147483647i), vec2<i32>(-1i, var_3.b.c)))), abs(-vec4<i32>(-2147483647i, var_3.b.c, -6400i, var_1.c))), vec4<i32>(var_3.b.c, _wgslsmith_sub_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.c, 42340i), vec2<i32>(var_1.c, -2147483647i)), _wgslsmith_div_i32(max(var_1.c, var_1.c), reverseBits(var_1.c))), firstTrailingBit(reverseBits(-2147483647i)), -_wgslsmith_mult_i32(var_1.c & var_1.c, i32(-1i) * -50077i)));
    let var_7 = Struct_3(var_6);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(38912i, -24620i), var_1.c);
}

