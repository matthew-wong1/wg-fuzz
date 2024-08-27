struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
    b: u32,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: f32,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: u32, arg_1: vec4<bool>) -> vec2<f32> {
    var var_0 = u_input.b.x;
    var_0 = min(-42549i, u_input.b.x >> (~(~(~u_input.a)) % 32u));
    let var_1 = select(~abs(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0, arg_0, u_input.a), vec3<u32>(75638u, 4294967295u, arg_0)) & _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 56835u, u_input.a), vec3<u32>(arg_0, 0u, arg_0))), _wgslsmith_mult_vec3_u32(vec3<u32>(abs(1u), 4294967295u, _wgslsmith_div_u32(countOneBits(11986u), min(20684u, 1u))), ~vec3<u32>(u_input.c.x, 29071u, 24497u) << (~_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0, 24648u, 1u), vec3<u32>(22537u, 1u, 47400u)) % vec3<u32>(32u))), vec3<bool>(!all(!vec3<bool>(true, arg_1.x, arg_1.x)), arg_1.x, arg_1.x));
    let var_2 = ~36180u;
    var_0 = 33994i;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + 1776f) - 753f), -173f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(734f, -385f) + vec2<f32>(119f, 393f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-2300f, -402f))))))));
}

fn func_2() -> Struct_1 {
    let var_0 = select(!select(vec3<bool>(true, all(vec3<bool>(true, false, false)), true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), select(false, all(vec2<bool>(true, false)), false)), vec3<bool>(true, true, true), any(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true))));
    var var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(abs(u_input.a), !vec4<bool>(var_0.x, true, false, var_0.x)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(241f, 235f), vec2<f32>(-1900f, -558f), vec2<bool>(var_0.x, true))) * _wgslsmith_div_vec2_f32(vec2<f32>(272f, -298f), vec2<f32>(810f, -502f)))))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1372f, _wgslsmith_f_op_f32(-439f + 1120f)), vec2<f32>(-830f, _wgslsmith_div_f32(-524f, -1000f))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * vec2<f32>(-949f, -1108f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(853f, -1312f)))))))));
    let var_2 = Struct_3(Struct_1(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b.x ^ -43223i, _wgslsmith_dot_vec3_i32(u_input.b.zwx, u_input.b.yxy)), u_input.b.xx), !var_0.x, firstTrailingBit(i32(-1i) * -20531i)));
    let var_3 = -159f;
    let var_4 = var_1.x;
    return Struct_1(_wgslsmith_mod_vec2_i32(var_2.a.a, min(countOneBits(vec2<i32>(-21749i, 2147483647i)), -var_2.a.a) & vec2<i32>(firstTrailingBit(u_input.b.x), u_input.b.x)), var_2.a.b, _wgslsmith_add_i32(var_2.a.c ^ _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(u_input.b.wyz, vec3<i32>(var_2.a.a.x, -32961i, -41946i)), _wgslsmith_sub_i32(17023i, var_2.a.c)), u_input.b.x));
}

fn func_1() -> Struct_3 {
    var var_0 = reverseBits(-41037i << (u_input.c.x % 32u));
    let var_1 = true;
    let var_2 = Struct_4(Struct_3(func_2()), func_2());
    let var_3 = Struct_2(countOneBits(abs(countOneBits(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c.x, 53990u, u_input.a), vec3<u32>(47510u, u_input.a, u_input.a))))), Struct_1(-select(~vec2<i32>(-61869i, 0i), ~var_2.a.a.a, vec2<bool>(var_1, var_1)), var_2.a.a.b, ~1i));
    var_0 = 2147483647i;
    return Struct_3(var_2.b);
}

fn func_4(arg_0: Struct_5, arg_1: i32, arg_2: Struct_1) -> vec2<bool> {
    var var_0 = Struct_5(func_1(), u_input.c.x << (37788u % 32u), Struct_2(firstTrailingBit(arg_0.c.a), Struct_1(min(u_input.b.ww, ~arg_0.a.a.a), arg_2.c >= _wgslsmith_div_i32(arg_2.a.x, 2147483647i), 22188i)));
    let var_1 = true;
    var_0 = arg_0;
    let var_2 = Struct_2(reverseBits(_wgslsmith_mod_vec3_u32(~arg_0.c.a & vec3<u32>(u_input.c.x, 0u, u_input.c.x), arg_0.c.a)), Struct_1(~min(vec2<i32>(-1i, u_input.b.x), vec2<i32>(-2147483647i, arg_2.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(arg_0.c.a.x, vec4<bool>(false, true, var_0.a.a.b, var_1))).x) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-730f))), ~(-(~1i))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1210f, -2170f))))), _wgslsmith_f_op_f32(-1028f * -779f), 1206f));
    return vec2<bool>(false, any(!(!select(vec3<bool>(var_1, arg_0.c.b.b, var_0.a.a.b), vec3<bool>(false, var_2.b.b, arg_2.b), vec3<bool>(false, false, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_5(func_1(), _wgslsmith_add_u32(1u, u_input.c.x), Struct_2(_wgslsmith_mult_vec3_u32(~vec3<u32>(4294967295u, 4294967295u, 1u), min(vec3<u32>(38722u, 0u, 94656u), vec3<u32>(43414u, 1u, u_input.a))), Struct_1(u_input.b.yw, true, firstTrailingBit(-6961i)))), -51235i, Struct_1(-(~max(u_input.b.wx, u_input.b.xy)), true, -50476i));
    let var_1 = -select(~vec4<i32>(func_1().a.a.x, u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, 18403i, u_input.b.x)), firstTrailingBit(-27738i)), vec4<i32>(-45402i, ~(-u_input.b.x), 1i, ~(-13190i) & abs(u_input.b.x)), any(select(!vec2<bool>(true, var_0.x), vec2<bool>(false, var_0.x), true)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-894f, 758f)))), 1009f), _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(-785f + _wgslsmith_f_op_f32(sign(-464f))), true))));
    var var_3 = Struct_5(Struct_3(func_1().a), _wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.a, 6741u << (u_input.a % 32u), 47590u ^ u_input.a), vec3<u32>(1u, _wgslsmith_div_u32(1u, 4294967295u), u_input.c.x)) << (_wgslsmith_sub_u32(1u, _wgslsmith_div_u32(firstLeadingBit(u_input.c.x), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 5414u, 5332u, u_input.a), vec4<u32>(u_input.a, u_input.a, 9930u, 9387u)))) % 32u), Struct_2(~(countOneBits(vec3<u32>(0u, u_input.c.x, 1u)) | min(vec3<u32>(u_input.a, 0u, 10696u), vec3<u32>(50058u, u_input.a, u_input.a))), Struct_1(-(var_1.yz >> (vec2<u32>(u_input.c.x, 4294967295u) % vec2<u32>(32u))), func_4(Struct_5(Struct_3(Struct_1(vec2<i32>(-2147483647i, var_1.x), var_0.x, -20943i)), u_input.a, Struct_2(vec3<u32>(4903u, 16106u, u_input.c.x), Struct_1(u_input.b.zx, var_0.x, var_1.x))), abs(19475i), func_2()).x, var_1.x)));
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-388f)) * _wgslsmith_f_op_f32(1414f * -1422f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1617f, -1028f)))))) + _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    var var_4 = Struct_4(Struct_3(Struct_1(var_3.a.a.a | -var_3.c.b.a, var_0.x, 0i)), var_3.c.b);
    let var_5 = func_1().a;
    var var_6 = all(!vec2<bool>(true, var_4.b.b));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(select(vec4<u32>(u_input.c.x, var_3.b, 4294967295u, u_input.c.x), vec4<u32>(20854u, 27571u, var_3.b, 1u), false), ~vec4<u32>(26337u, 10514u, var_3.c.a.x, u_input.c.x), ~vec4<u32>(var_3.c.a.x, 9167u, var_3.b, 0u)), reverseBits(firstTrailingBit(vec4<u32>(21131u, 4294967295u, u_input.c.x, 0u))))), _wgslsmith_clamp_vec3_i32(vec3<i32>(i32(-1i) * -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_4.a.a.c, 36464i, 4342i), _wgslsmith_add_vec3_i32(u_input.b.xyx, vec3<i32>(var_5.a.x, var_1.x, 1i))), 31293i), ~(-var_1.www) >> (~vec3<u32>(12065u, var_3.b, u_input.c.x) % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(-var_1.yxw, var_1.xyy)), -599f, ~vec4<u32>(23984u, var_3.c.a.x, 52847u, _wgslsmith_mod_u32(26708u, ~1u)), ~19598u);
}

