struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<f32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<u32>,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 2>;

var<private> global1: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(i32(-2147483648), false, vec4<f32>(-1000f, 257f, -594f, 549f), vec3<i32>(i32(-2147483648), 0i, 24544i)), Struct_1(0i, true, vec4<f32>(-564f, -1997f, 1779f, -344f), vec3<i32>(12582i, 0i, 2147483647i)), Struct_1(15211i, false, vec4<f32>(-1164f, -472f, -825f, 2549f), vec3<i32>(2147483647i, 1i, -52599i)), Struct_1(1i, true, vec4<f32>(632f, 1362f, 616f, 162f), vec3<i32>(0i, -1i, -9855i)), Struct_1(-1i, true, vec4<f32>(-744f, 2280f, -390f, -515f), vec3<i32>(5670i, 2147483647i, i32(-2147483648))), Struct_1(0i, true, vec4<f32>(-779f, 1479f, 656f, 294f), vec3<i32>(1i, 1i, 28874i)), Struct_1(0i, true, vec4<f32>(-712f, -173f, -1584f, 927f), vec3<i32>(0i, 48739i, 14805i)), Struct_1(i32(-2147483648), true, vec4<f32>(1080f, -146f, 158f, -414f), vec3<i32>(0i, -47860i, -1i)), Struct_1(-1177i, false, vec4<f32>(-635f, 366f, -556f, -348f), vec3<i32>(1i, -3348i, -19628i)), Struct_1(0i, true, vec4<f32>(952f, 645f, 344f, -869f), vec3<i32>(-26224i, -1i, -44006i)), Struct_1(1i, true, vec4<f32>(-593f, 1456f, -1154f, -152f), vec3<i32>(i32(-2147483648), -3750i, 48636i)), Struct_1(4048i, false, vec4<f32>(-210f, 1872f, -2260f, 1186f), vec3<i32>(-1i, -35258i, 0i)), Struct_1(-30849i, false, vec4<f32>(113f, 142f, 478f, -455f), vec3<i32>(-5843i, -23640i, 2147483647i)), Struct_1(-32280i, false, vec4<f32>(-1040f, 737f, -1313f, 231f), vec3<i32>(0i, -21470i, 1i)), Struct_1(18185i, false, vec4<f32>(-922f, 351f, -1328f, -264f), vec3<i32>(2147483647i, -9276i, -491i)), Struct_1(-3222i, true, vec4<f32>(-632f, 149f, -1399f, 1079f), vec3<i32>(30003i, -108372i, i32(-2147483648))), Struct_1(-57903i, true, vec4<f32>(-381f, -275f, 527f, -2177f), vec3<i32>(36999i, 0i, -9313i)), Struct_1(1i, false, vec4<f32>(1000f, -1000f, 566f, 442f), vec3<i32>(0i, -80215i, i32(-2147483648))), Struct_1(-2268i, true, vec4<f32>(-209f, 649f, 100f, -857f), vec3<i32>(1i, -14933i, 10980i)), Struct_1(24792i, false, vec4<f32>(516f, 747f, -864f, 304f), vec3<i32>(14531i, 21152i, 0i)), Struct_1(i32(-2147483648), false, vec4<f32>(537f, 341f, 571f, 1353f), vec3<i32>(i32(-2147483648), 32298i, 34745i)), Struct_1(28188i, false, vec4<f32>(-503f, -147f, 875f, 248f), vec3<i32>(0i, -33703i, -37849i)), Struct_1(54936i, true, vec4<f32>(2066f, 1253f, -193f, 1000f), vec3<i32>(18841i, 2147483647i, 27872i)), Struct_1(56328i, true, vec4<f32>(-1390f, -1035f, 697f, -1000f), vec3<i32>(5513i, 1i, i32(-2147483648))));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> u32 {
    return min(arg_1, _wgslsmith_div_u32(~(~(~arg_1)), 0u));
}

fn func_2() -> f32 {
    global1 = array<Struct_1, 24>();
    let var_0 = _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_div_i32(2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), ~u_input.a)), -firstLeadingBit(15897i), ~(-u_input.c), 1i | u_input.d), vec4<i32>(1i >> (0u % 32u), 38246i, 1i, -select(0i, -2147483647i, select(false, false, false))));
    global1 = array<Struct_1, 24>();
    var var_1 = vec3<u32>(~1u, 125023u, func_3(Struct_2(_wgslsmith_f_op_f32(abs(427f)), ~var_0.yx, Struct_1(-2147483647i, false, vec4<f32>(1000f, 642f, -289f, 1424f), var_0.zzx), _wgslsmith_f_op_f32(447f * 192f), Struct_1(-530i, true, vec4<f32>(1857f, 436f, -258f, -956f), vec3<i32>(1i, 0i, -51141i))), ~57898u) << (~abs(1u) % 32u));
    global0 = array<Struct_3, 2>();
    return _wgslsmith_f_op_f32(-1163f - _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1001f + -141f) + _wgslsmith_f_op_f32(658f * -717f)), _wgslsmith_f_op_f32(f32(-1f) * -245f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-760f)), 1f)) + -828f)));
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: Struct_2, arg_3: vec3<bool>) -> Struct_1 {
    var var_0 = true;
    var var_1 = any(select(select(vec3<bool>(true, true, arg_2.c.b), arg_3, !vec3<bool>(arg_3.x, arg_2.e.b, false)), arg_3, true));
    var_0 = arg_2.e.b;
    var var_2 = _wgslsmith_f_op_f32(floor(arg_1));
    var var_3 = countOneBits(abs(-(_wgslsmith_sub_i32(arg_2.e.d.x, 336i) >> (1u % 32u))));
    return arg_2.c;
}

fn func_1() -> Struct_3 {
    global1 = array<Struct_1, 24>();
    let var_0 = Struct_2(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-935f, _wgslsmith_f_op_f32(select(493f, -937f, false)), true)), _wgslsmith_f_op_f32(-213f + -1000f), any(vec2<bool>(true, true))))), vec2<i32>(~_wgslsmith_dot_vec3_i32(min(vec3<i32>(u_input.a.x, u_input.a.x, -1128i), vec3<i32>(u_input.b, -2147483647i, -27672i)), countOneBits(vec3<i32>(u_input.c, u_input.d, -34970i))), i32(-1i) * -_wgslsmith_sub_i32(u_input.c, -71041i)), Struct_1(u_input.a.x, true, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -815f, 958f, 692f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-672f, 1189f, -212f, -258f))))), min(firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.d, u_input.d, u_input.b), vec3<i32>(u_input.d, 11358i, -1i))), _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, u_input.c, u_input.b), vec3<i32>(16278i, 1i, 12223i), vec3<i32>(-62485i, u_input.a.x, 1i)), -vec3<i32>(-1i, 2147483647i, 2147483647i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1510f + -382f) - _wgslsmith_f_op_f32(-140f - _wgslsmith_f_op_f32(-713f * 155f)))), func_4(u_input.d, 540f, Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(437f - -1685f))), _wgslsmith_mod_vec2_i32(~u_input.a, vec2<i32>(-20937i, 25496i)), Struct_1(-1i, false, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1180f, 529f, 484f, 930f) * vec4<f32>(853f, 168f, -332f, -696f)), select(vec3<i32>(u_input.b, 66136i, 2147483647i), vec3<i32>(u_input.c, u_input.b, 1i), vec3<bool>(true, false, true))), -1060f, global1[_wgslsmith_index_u32(~(~50766u), 24u)]), vec3<bool>(select(true, select(true, true, true), true), true, true)));
    var var_1 = _wgslsmith_mod_vec4_i32(select(firstLeadingBit(~vec4<i32>(u_input.b, 2147483647i, -1i, u_input.d)), ~vec4<i32>(var_0.b.x, var_0.c.a, var_0.b.x, u_input.a.x), any(!vec2<bool>(var_0.e.b, var_0.e.b))) | vec4<i32>(u_input.a.x, u_input.d, -abs(0i), u_input.b), vec4<i32>(-_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(-46219i, u_input.c, u_input.b), -var_0.e.d.x, 1i), ~u_input.c, 2147483647i, u_input.a.x));
    global1 = array<Struct_1, 24>();
    let var_2 = -174f;
    return global0[_wgslsmith_index_u32(1u, 2u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global1 = array<Struct_1, 24>();
    let var_1 = -select(vec4<i32>(-1i) * -(vec4<i32>(0i, u_input.a.x, u_input.d, -2147483647i) | vec4<i32>(var_0.b.a, 3701i, u_input.b, -2147483647i)), vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.a, u_input.a), select(_wgslsmith_mult_i32(-80189i, 1i), var_0.b.d.x, !var_0.b.b), (var_0.b.a | 1588i) & -u_input.a.x, -26834i), !(!select(vec4<bool>(var_0.b.b, false, var_0.b.b, true), vec4<bool>(false, var_0.b.b, false, var_0.b.b), vec4<bool>(var_0.b.b, false, true, var_0.b.b))));
    var var_2 = var_0.a.wy;
    global0 = array<Struct_3, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.yww, 1u, var_0.b.c.x);
}

