struct Struct_1 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: vec4<i32>,
    e: bool,
}

struct Struct_3 {
    a: vec4<bool>,
    b: i32,
    c: Struct_1,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 31>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>) -> i32 {
    global0 = array<Struct_2, 31>();
    let var_0 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-354f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-843f, -1130f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(1336f, 703f, false)), -638f, select(false, true, false)))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-2275f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-779f - -846f)))));
    let var_1 = Struct_3(vec4<bool>(all(select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), -1434f < var_0)), true, false, true), arg_0.b, Struct_1(u_input.a.yx, reverseBits(_wgslsmith_sub_i32(countOneBits(-29252i), min(-1i, 1i)))), vec3<u32>(arg_0.a.x, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(u_input.a << (u_input.a % vec4<u32>(32u)), min(vec4<u32>(4294967295u, arg_1.x, arg_0.a.x, u_input.a.x), vec4<u32>(11514u, arg_0.a.x, 1u, 3741u))), u_input.a.x), _wgslsmith_div_u32(31134u, 24492u)));
    var var_2 = var_1.c;
    var var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(var_0, -977f, !var_1.a.x))));
    return select(-56974i, min(var_1.b, -1i), !var_1.a.x);
}

fn func_4(arg_0: Struct_3) -> i32 {
    global0 = array<Struct_2, 31>();
    let var_0 = ~vec2<u32>(arg_0.c.a.x & u_input.a.x, arg_0.c.a.x);
    let var_1 = Struct_1(vec2<u32>(~firstLeadingBit(4294967295u), u_input.a.x) | (~var_0 & min(abs(u_input.a.xw), _wgslsmith_sub_vec2_u32(u_input.a.zz, u_input.a.yy))), -7546i);
    global0 = array<Struct_2, 31>();
    var var_2 = _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, reverseBits(302u)), _wgslsmith_div_vec2_u32(vec2<u32>(1u, u_input.a.x) >> (~firstLeadingBit(vec2<u32>(36253u, arg_0.c.a.x)) % vec2<u32>(32u)), vec2<u32>(~(4294967295u >> (var_1.a.x % 32u)), 53803u)));
    return arg_0.c.b;
}

fn func_2(arg_0: u32) -> Struct_1 {
    return Struct_1(_wgslsmith_clamp_vec2_u32(select(vec2<u32>(arg_0, 7505u), ~vec2<u32>(u_input.a.x, arg_0), false) << ((~vec2<u32>(arg_0, arg_0) | abs(u_input.a.zx)) % vec2<u32>(32u)), ~(vec2<u32>(arg_0, u_input.a.x) | ~u_input.a.wy), u_input.a.xx), func_4(Struct_3(vec4<bool>(true, true, true, true), (i32(-1i) * -25677i) & func_3(Struct_1(u_input.a.wz, -15956i), vec2<u32>(arg_0, 0u)), Struct_1(~vec2<u32>(u_input.a.x, u_input.a.x), ~(-1i)), firstTrailingBit(u_input.a.xxx))));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec4<u32>) -> u32 {
    global0 = array<Struct_2, 31>();
    global0 = array<Struct_2, 31>();
    let var_0 = _wgslsmith_add_vec4_i32(-vec4<i32>(145i, arg_0.b, -9826i, arg_0.b) << (_wgslsmith_mult_vec4_u32(reverseBits(arg_2), _wgslsmith_sub_vec4_u32(u_input.a, vec4<u32>(arg_0.a.x, arg_0.a.x, 16037u, 0u))) % vec4<u32>(32u)), ~countOneBits(~vec4<i32>(10498i, 3545i, arg_0.b, arg_0.b))) & (-abs(~vec4<i32>(-44079i, 2147483647i, -2147483647i, arg_0.b)) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.a.x, u_input.a.x, 0u, reverseBits(arg_2.x)), _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.a.x, u_input.a.x, 36304u, arg_2.x), vec4<u32>(4294967295u, arg_0.a.x, arg_0.a.x, 0u)), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.a.x, 0u), u_input.a))) % vec4<u32>(32u)));
    global0 = array<Struct_2, 31>();
    let var_1 = ~_wgslsmith_mod_vec3_i32(var_0.wxy, -max(var_0.zxw, vec3<i32>(-2147483647i, -19759i, 0i)));
    return _wgslsmith_clamp_u32(_wgslsmith_mult_u32(41254u, (arg_0.a.x & abs(22817u)) | 1u), firstTrailingBit(min(u_input.a.x, arg_0.a.x)), 88152u);
}

fn func_1(arg_0: vec2<i32>) -> f32 {
    global0 = array<Struct_2, 31>();
    var var_0 = global0[_wgslsmith_index_u32(func_5(func_2(_wgslsmith_mod_u32(u_input.a.x, 40805u) | _wgslsmith_dot_vec4_u32(u_input.a, firstLeadingBit(vec4<u32>(0u, u_input.a.x, 0u, 75959u)))), !select(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), vec3<bool>(all(vec3<bool>(false, false, true)), true, true), true), ~u_input.a), 31u)];
    var var_1 = global0[_wgslsmith_index_u32(func_5(func_2(u_input.a.x ^ abs(29828u)), vec3<bool>(all(select(vec4<bool>(false, var_0.e, true, var_0.b), select(vec4<bool>(var_0.e, false, false, var_0.b), vec4<bool>(true, true, true, var_0.b), var_0.e), true && var_0.e)), _wgslsmith_dot_vec2_u32(~vec2<u32>(14358u, u_input.a.x), _wgslsmith_add_vec2_u32(u_input.a.wy, u_input.a.xy)) < firstTrailingBit(u_input.a.x), false), u_input.a), 31u)];
    var var_2 = global0[_wgslsmith_index_u32(u_input.a.x, 31u)];
    let var_3 = func_2(min(_wgslsmith_dot_vec4_u32(u_input.a, ~vec4<u32>(22809u, 60720u, var_1.a.a.x, var_2.a.a.x)), 1u));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-746f + -857f), 1384f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1142f)))))));
}

fn func_6(arg_0: bool, arg_1: f32, arg_2: vec4<f32>, arg_3: vec3<i32>) -> StorageBuffer {
    let var_0 = Struct_3(select(vec4<bool>(arg_0, false & !arg_0, all(!vec2<bool>(false, arg_0)), any(select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(true, arg_0, false), vec3<bool>(arg_0, arg_0, false)))), select(vec4<bool>(any(vec3<bool>(false, arg_0, false)), 0u > u_input.a.x, false, true), select(select(vec4<bool>(true, arg_0, arg_0, arg_0), vec4<bool>(true, arg_0, arg_0, arg_0), arg_0), select(vec4<bool>(false, arg_0, false, arg_0), vec4<bool>(arg_0, true, arg_0, true), arg_0), select(arg_0, false, arg_0)), !(92322u != u_input.a.x)), !vec4<bool>(any(vec4<bool>(false, true, false, arg_0)), true, true, true)), (arg_3.x & -firstTrailingBit(21073i)) | 20862i, Struct_1(u_input.a.zz, func_2(~(u_input.a.x >> (u_input.a.x % 32u))).b), vec3<u32>(0u, abs(~(~u_input.a.x)), u_input.a.x));
    let var_1 = ~(~vec4<u32>(u_input.a.x ^ 0u, var_0.c.a.x, var_0.d.x, min(_wgslsmith_add_u32(13917u, 33635u), firstLeadingBit(0u))));
    var var_2 = func_2(abs(59052u));
    let var_3 = !var_0.a.x;
    var_2 = func_2(select(_wgslsmith_mult_u32(var_2.a.x, 24663u), 7657u, true) << (~var_2.a.x % 32u));
    return StorageBuffer(var_0.c.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_2.x, arg_1, arg_2.x, -533f), arg_2))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, 2005f, arg_1, arg_2.x))) + arg_2));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 31>();
    global0 = array<Struct_2, 31>();
    let var_0 = countOneBits(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x)) << (firstTrailingBit(_wgslsmith_sub_u32(~firstLeadingBit(30512u), ~u_input.a.x)) % 32u);
    let var_1 = vec4<bool>(true, !(firstTrailingBit(0u) < _wgslsmith_mult_u32(u_input.a.x, u_input.a.x)) | true, true, true);
    let var_2 = Struct_3(select(vec4<bool>(false, true, var_1.x, !any(var_1.zy)), !select(!vec4<bool>(true, var_1.x, false, var_1.x), var_1, select(var_1, var_1, var_1.x)), vec4<bool>(select(var_1.x, true, true), var_1.x, any(vec2<bool>(false, var_1.x)), var_1.x || var_1.x)), -_wgslsmith_add_i32(~(-44430i), 1i) ^ max(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 0i, -6757i, -27826i), vec4<i32>(-24026i, 1i, 1i, 8225i)) ^ countOneBits(2147483647i), _wgslsmith_mult_i32(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(45715i, -30137i, -41606i, 2147483647i), vec4<i32>(0i, 32181i, -4238i, 16963i)))), Struct_1(vec2<u32>(1u, 1u), 1i), u_input.a.wyx);
    let var_3 = select(vec3<u32>(3729u ^ u_input.a.x, min(1u, var_2.d.x), var_0), vec3<u32>(~23014u, var_2.d.x, ~_wgslsmith_mod_u32(var_0, 61247u)), var_2.a.x && true) | (u_input.a.wwz ^ vec3<u32>(var_2.d.x, 1u, ~var_2.c.a.x << (u_input.a.x % 32u)));
    let var_4 = vec4<i32>(1i, -1i, _wgslsmith_add_i32(var_2.c.b ^ var_2.c.b, max(var_2.c.b, -60967i)) << (var_0 % 32u), 28182i) ^ vec4<i32>(reverseBits(_wgslsmith_clamp_i32(-7216i, _wgslsmith_dot_vec3_i32(vec3<i32>(-26632i, 2147483647i, -5980i), vec3<i32>(var_2.c.b, -11245i, var_2.b)), ~var_2.c.b)), var_2.c.b, _wgslsmith_mult_i32(var_2.c.b, var_2.b), ~_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(var_2.b, 0i, 1i, var_2.b)), ~vec4<i32>(var_2.c.b, var_2.c.b, -1i, -18851i)));
    let x = u_input.a;
    s_output = func_6(false == var_1.x, 1f, vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -430f) - _wgslsmith_f_op_f32(func_1(var_4.wy))))), 907f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-527f * -1396f) + _wgslsmith_f_op_f32(-1022f - 295f)), -291f)), 969f), firstTrailingBit(-vec3<i32>(~(-1i), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, var_2.b, var_4.x), vec3<i32>(2147483647i, -1i, -1i)), 1i)));
}

