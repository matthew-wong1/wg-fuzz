struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: u32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(vec3<i32>(-21992i, 1i, 19488i), Struct_1(0u, vec3<bool>(true, false, false), 1u, vec4<bool>(false, false, false, true)), Struct_1(0u, vec3<bool>(false, true, true), 0u, vec4<bool>(false, true, false, true)), -617f, vec2<bool>(true, true)), Struct_2(vec3<i32>(23151i, 27122i, 15516i), Struct_1(0u, vec3<bool>(true, true, true), 1u, vec4<bool>(true, false, false, false)), Struct_1(41647u, vec3<bool>(true, false, true), 39428u, vec4<bool>(false, false, true, false)), 1864f, vec2<bool>(true, false)));

var<private> global1: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(vec3<i32>(-2703i, 1i, 26633i), Struct_1(33836u, vec3<bool>(true, true, true), 55698u, vec4<bool>(false, true, true, false)), Struct_1(31194u, vec3<bool>(false, true, true), 4294967295u, vec4<bool>(false, false, true, true)), -981f, vec2<bool>(true, false)), Struct_2(vec3<i32>(0i, 1i, -19757i), Struct_1(1u, vec3<bool>(true, true, true), 6010u, vec4<bool>(true, false, true, true)), Struct_1(0u, vec3<bool>(true, false, false), 4294967295u, vec4<bool>(false, false, false, false)), -1292f, vec2<bool>(true, false)), Struct_2(vec3<i32>(36271i, 1i, -35460i), Struct_1(53542u, vec3<bool>(false, true, true), 79625u, vec4<bool>(true, true, false, true)), Struct_1(4294967295u, vec3<bool>(false, false, false), 70334u, vec4<bool>(true, true, false, false)), 1000f, vec2<bool>(false, true)), Struct_2(vec3<i32>(2147483647i, i32(-2147483648), 0i), Struct_1(4294967295u, vec3<bool>(true, false, false), 24220u, vec4<bool>(false, false, false, false)), Struct_1(1u, vec3<bool>(false, false, false), 0u, vec4<bool>(true, true, true, false)), -265f, vec2<bool>(false, false)), Struct_2(vec3<i32>(23185i, 10641i, -19727i), Struct_1(1u, vec3<bool>(false, false, true), 1633u, vec4<bool>(false, true, true, false)), Struct_1(0u, vec3<bool>(true, false, false), 42514u, vec4<bool>(false, false, false, false)), 1000f, vec2<bool>(false, true)), Struct_2(vec3<i32>(2147483647i, i32(-2147483648), i32(-2147483648)), Struct_1(0u, vec3<bool>(true, true, true), 23472u, vec4<bool>(false, true, false, false)), Struct_1(1u, vec3<bool>(true, false, true), 20804u, vec4<bool>(false, true, true, false)), 1959f, vec2<bool>(true, true)), Struct_2(vec3<i32>(12267i, 2147483647i, 0i), Struct_1(1u, vec3<bool>(true, true, false), 45976u, vec4<bool>(false, true, true, true)), Struct_1(0u, vec3<bool>(true, false, false), 75124u, vec4<bool>(false, true, false, false)), 1852f, vec2<bool>(false, true)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: u32) -> vec4<f32> {
    let var_0 = vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(-vec3<i32>(u_input.b, arg_1.a.x, u_input.c.x), abs(vec3<i32>(28687i, u_input.b, -44856i)), u_input.c.xzx), ~arg_1.a << (_wgslsmith_mod_vec3_u32(vec3<u32>(0u, arg_1.b.a, 4294967295u), vec3<u32>(1u, 1u, arg_1.c.a)) % vec3<u32>(32u))), u_input.a, -arg_1.a.x) >> (select(_wgslsmith_mult_vec3_u32(~vec3<u32>(arg_3, 2312u, arg_3) >> (abs(vec3<u32>(arg_1.c.c, arg_3, arg_1.b.a)) % vec3<u32>(32u)), ~abs(vec3<u32>(80458u, 50487u, 47590u))), _wgslsmith_sub_vec3_u32(vec3<u32>(92708u ^ arg_3, 32599u, _wgslsmith_clamp_u32(31981u, 38474u, 1u)), _wgslsmith_mod_vec3_u32(vec3<u32>(14162u, arg_3, 0u) >> (vec3<u32>(56679u, arg_3, 41718u) % vec3<u32>(32u)), ~vec3<u32>(arg_1.c.a, arg_1.c.a, arg_3))), select(select(arg_0.xxx, select(arg_1.b.d.zxw, arg_1.c.b, vec3<bool>(false, arg_0.x, arg_2.x)), select(arg_2.zyx, arg_2.xyw, arg_0.x)), !arg_1.b.b, arg_2.yxx)) % vec3<u32>(32u));
    var var_1 = -1i;
    let var_2 = vec4<f32>(-483f, 439f, arg_1.d, -1184f);
    var var_3 = arg_1;
    let var_4 = reverseBits(_wgslsmith_clamp_vec3_u32(abs(_wgslsmith_add_vec3_u32(vec3<u32>(var_3.c.a, arg_3, var_3.c.c), ~vec3<u32>(1u, var_3.c.a, arg_1.b.a))), _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(arg_3, arg_1.b.a, arg_1.b.c), min(vec3<u32>(arg_3, var_3.b.a, 0u), vec3<u32>(arg_1.c.a, arg_1.c.c, arg_3))), ~firstLeadingBit(vec3<u32>(arg_1.c.a, arg_3, 13554u))), ~(~vec3<u32>(71659u, var_3.c.c, arg_1.b.c) & select(vec3<u32>(arg_1.b.c, 13937u, arg_1.b.c), vec3<u32>(var_3.c.c, 4294967295u, 26224u), arg_0.x))));
    return vec4<f32>(_wgslsmith_f_op_f32(min(467f, _wgslsmith_f_op_f32(arg_1.d * var_3.d))), 1545f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -386f), _wgslsmith_f_op_f32(1483f + var_2.x))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_3.d), var_3.d))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(2352f)), -1015f, var_0.x >= u_input.c.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.d - var_2.x)))), 925f);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: vec3<i32>) -> i32 {
    global1 = array<Struct_2, 7>();
    let var_0 = vec2<i32>(2147483647i, ~countOneBits(0i));
    let var_1 = vec4<i32>(1i, abs(_wgslsmith_sub_i32(var_0.x & -69493i, arg_2.x) & (arg_2.x | 0i)), arg_2.x, firstTrailingBit(min(26271i, max(u_input.b, ~var_0.x))));
    let var_2 = Struct_1(arg_0.b.c, !vec3<bool>(arg_0.b.b.x, !(arg_0.e.x == true), true), arg_0.b.a, vec4<bool>(true, ~_wgslsmith_mod_i32(2147483647i, arg_2.x) == 35520i, false, all(select(select(vec3<bool>(arg_0.e.x, arg_0.b.d.x, arg_0.e.x), arg_0.b.d.xyy, true), select(arg_0.b.d.zxz, vec3<bool>(arg_0.c.d.x, arg_0.b.b.x, arg_0.b.b.x), true), true))));
    let var_3 = Struct_2(select(abs(-vec3<i32>(arg_0.a.x, u_input.b, -14155i) << (_wgslsmith_div_vec3_u32(vec3<u32>(101764u, var_2.a, arg_0.b.a), vec3<u32>(arg_0.c.c, var_2.c, var_2.c)) % vec3<u32>(32u))), vec3<i32>(var_1.x, 475i, ~_wgslsmith_div_i32(var_0.x, u_input.b)), arg_0.c.b), Struct_1(var_2.c | 1u, vec3<bool>(true, true, arg_0.c.b.x), min(abs(4294967295u), 1u), select(select(var_2.d, select(vec4<bool>(arg_0.c.b.x, false, arg_0.c.b.x, var_2.b.x), vec4<bool>(var_2.b.x, true, false, true), vec4<bool>(false, true, var_2.d.x, arg_0.e.x)), !arg_0.c.d), select(vec4<bool>(var_2.b.x, var_2.d.x, var_2.d.x, var_2.b.x), select(var_2.d, var_2.d, var_2.b.x), select(arg_0.b.d, vec4<bool>(false, false, false, arg_0.b.d.x), var_2.d)), arg_0.e.x)), Struct_1(abs(10262u), vec3<bool>(true, any(!var_2.d), false), var_2.c, select(select(var_2.d, var_2.d, select(vec4<bool>(true, arg_0.c.d.x, var_2.b.x, arg_0.e.x), arg_0.b.d, var_2.d)), vec4<bool>(true, arg_0.c.d.x & false, any(vec2<bool>(false, false)), !arg_0.e.x), vec4<bool>(arg_0.c.d.x, -1638f != arg_0.d, var_2.b.x, true))), -308f, vec2<bool>(!any(vec4<bool>(var_2.b.x, true, var_2.b.x, arg_0.e.x)), any(!vec4<bool>(arg_0.b.b.x, arg_0.b.b.x, false, var_2.d.x)) | (max(21954i, arg_2.x) == var_1.x)));
    return -53403i;
}

fn func_2(arg_0: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-644f, 740f)) - 284f))));
    var var_1 = -vec3<i32>(-35927i, u_input.a, -countOneBits(abs(0i)));
    let var_2 = Struct_2(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, -1i, func_4(global1[_wgslsmith_index_u32(48805u, 7u)], _wgslsmith_f_op_vec4_f32(func_3(arg_0.d, Struct_2(vec3<i32>(var_1.x, var_1.x, 7756i), arg_0, arg_0, var_0, arg_0.d.yw), vec4<bool>(false, arg_0.b.x, false, arg_0.d.x), arg_0.c)), u_input.c.wyz)), u_input.c.xzz), Struct_1(_wgslsmith_clamp_u32(countOneBits(arg_0.c) | reverseBits(49378u), _wgslsmith_mult_u32(arg_0.a, 2926u), _wgslsmith_add_u32(arg_0.a << (arg_0.a % 32u), 0u)), arg_0.b, ~arg_0.a, !select(vec4<bool>(arg_0.b.x, false, arg_0.d.x, true), arg_0.d, vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.d.x, arg_0.b.x))), Struct_1(firstTrailingBit(~24351u), !vec3<bool>(select(false, false, true), true, arg_0.d.x), _wgslsmith_dot_vec4_u32(vec4<u32>(~1u, abs(37811u), 1u, reverseBits(arg_0.c)), _wgslsmith_add_vec4_u32(~vec4<u32>(111317u, arg_0.c, arg_0.a, arg_0.c), vec4<u32>(1u, arg_0.a, 13542u, arg_0.a) >> (vec4<u32>(0u, arg_0.c, arg_0.a, 2970u) % vec4<u32>(32u)))), !(!arg_0.d)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_0, var_0)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(var_0 - var_0))))), vec2<bool>(~firstLeadingBit(4294967295u) <= abs(arg_0.c), true));
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-502f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec4_f32(func_3(vec4<bool>(var_2.c.d.x, false, false, var_2.c.b.x), Struct_2(vec3<i32>(var_2.a.x, var_2.a.x, u_input.c.x), Struct_1(arg_0.a, arg_0.b, 1u, vec4<bool>(var_2.b.b.x, var_2.c.d.x, arg_0.b.x, true)), arg_0, var_2.d, arg_0.b.xx), select(vec4<bool>(true, var_2.b.d.x, var_2.c.b.x, arg_0.b.x), vec4<bool>(true, true, false, var_2.b.b.x), arg_0.d), var_2.b.a)).x, -1000f)), 602f, _wgslsmith_f_op_f32(sign(-802f))) + vec4<f32>(1f, 938f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1717f))), _wgslsmith_f_op_f32(-var_2.d)));
    global1 = array<Struct_2, 7>();
    return ~abs(_wgslsmith_add_u32(_wgslsmith_mult_u32(~arg_0.c, 20666u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, arg_0.a, 4294967295u), _wgslsmith_add_vec4_u32(vec4<u32>(var_2.c.c, 22362u, 38875u, arg_0.a), vec4<u32>(arg_0.a, var_2.b.a, var_2.c.c, var_2.c.c)))));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: i32) -> vec3<u32> {
    return vec3<u32>(0u, func_2(Struct_1(_wgslsmith_div_u32(arg_0.a, 0u), !vec3<bool>(true, arg_2.b.x, arg_2.b.x), ~4294967295u, arg_2.d)) & 1u, 36260u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(ceil(-989f)), -2233f);
    let var_1 = Struct_1(_wgslsmith_clamp_u32(4294967295u, _wgslsmith_dot_vec3_u32(select(func_1(Struct_1(1u, vec3<bool>(true, true, false), 19975u, vec4<bool>(true, false, false, false)), 5387i, Struct_1(1u, vec3<bool>(true, false, false), 2047u, vec4<bool>(true, false, false, true)), 796i), ~vec3<u32>(1u, 4294967295u, 81162u), vec3<bool>(false, false, true)), firstLeadingBit(vec3<u32>(94433u, 1u, 1u))), 1u), select(vec3<bool>(1i > select(-1i, 12602i, false), abs(48597u) < _wgslsmith_dot_vec3_u32(vec3<u32>(3990u, 8707u, 1u), vec3<u32>(4294967295u, 1u, 1u)), true), select(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false), vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false))), vec3<bool>(!all(vec4<bool>(false, true, true, false)), any(select(vec2<bool>(true, true), vec2<bool>(false, false), true)), true)), ~43470u, vec4<bool>(any(vec2<bool>(true, true)), _wgslsmith_sub_i32(~u_input.a, _wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(-1i, u_input.b, -10826i, -1i))) >= (~u_input.a << (0u % 32u)), (_wgslsmith_div_i32(u_input.a, u_input.a) != _wgslsmith_clamp_i32(3170i, u_input.a, -1i)) && true, true));
    var var_2 = Struct_2(-max(reverseBits(vec3<i32>(30595i, 2147483647i, -8855i)), reverseBits(u_input.c.xyy)), var_1, var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1208f, _wgslsmith_f_op_f32(floor(403f)))) - var_0.x), !vec2<bool>(all(var_1.d), true));
    let var_3 = var_2.b.d.x;
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(-var_2.d), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_2.d * var_2.d))), 555f);
    var_2 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_div_u32(firstLeadingBit(var_2.c.a), abs(1u)), ~(~var_2.b.a)), ~vec2<u32>(firstLeadingBit(var_2.c.a), var_1.a)), ~(~vec2<u32>(var_2.b.c >> (var_2.b.a % 32u), reverseBits(4294967295u)))), 7u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(_wgslsmith_mult_u32(var_1.a, ~var_1.a) << (select(40702u, ~var_1.c, any(var_2.e)) % 32u), ~var_1.a), _wgslsmith_dot_vec2_u32(vec2<u32>(4862u, 1u), firstTrailingBit(vec2<u32>(~var_2.b.a, firstLeadingBit(52246u)))), _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.b.a, var_2.b.c), ~vec2<u32>(select(4294967295u, 1u, false), firstTrailingBit(36355u))));
}

