struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec4<f32>,
    d: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_2, 28>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> i32 {
    global1 = array<Struct_2, 28>();
    let var_0 = -1857f;
    var var_1 = Struct_4(vec4<bool>(false, true, false, true), vec4<i32>(u_input.c.x, _wgslsmith_add_i32(~u_input.c.x, 53028i), (0i | u_input.c.x) & _wgslsmith_dot_vec4_i32(u_input.c, ~vec4<i32>(2147483647i, u_input.c.x, u_input.c.x, u_input.c.x)), _wgslsmith_mult_i32(0i, 2147483647i)), Struct_3(var_0, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, var_0, var_0)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, var_0, -654f))), ~(u_input.a | 84504u), vec4<f32>(_wgslsmith_f_op_f32(var_0 + var_0), -889f, _wgslsmith_f_op_f32(ceil(241f)), _wgslsmith_f_op_f32(f32(-1f) * -1768f)), u_input.c.x), Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(479f, 776f, -1152f, 747f)))), u_input.a, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-912f, 1409f, var_0, var_0) * vec4<f32>(-236f, 591f, var_0, var_0)))), firstTrailingBit(~(-41542i))), vec3<f32>(var_0, 215f, 1334f), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, var_0, var_0)), u_input.e, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-557f, var_0, 1523f, var_0)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, -352f, -1030f) + vec4<f32>(var_0, var_0, var_0, 1669f))), _wgslsmith_add_i32(1i, _wgslsmith_add_i32(-1i, u_input.c.x)))));
    let var_2 = Struct_4(select(var_1.a, vec4<bool>(select(var_1.a.x, true, all(var_1.a.wzw)), var_1.a.x, !var_1.a.x, any(select(var_1.a.wz, vec2<bool>(false, var_1.a.x), var_1.a.x))), ~var_1.b.x == ~var_1.b.x), reverseBits(abs(-countOneBits(u_input.c))), var_1.c);
    var var_3 = vec4<bool>(var_1.a.x || var_1.a.x, true, select(any(vec4<bool>(var_2.a.x, var_1.a.x, var_2.a.x, true)), true, false) & all(select(var_2.a.zwx, select(var_2.a.xzz, vec3<bool>(true, var_2.a.x, var_2.a.x), vec3<bool>(var_1.a.x, var_1.a.x, false)), all(vec3<bool>(true, false, true)))), true || var_1.a.x);
    return ~var_1.b.x;
}

fn func_2(arg_0: Struct_4, arg_1: Struct_2) -> bool {
    let var_0 = 23875u;
    let var_1 = ~_wgslsmith_add_vec3_i32(abs(arg_0.b.yzy), abs(vec3<i32>(select(u_input.c.x, u_input.c.x, false), func_3(), arg_1.b.d)));
    var var_2 = ~(~reverseBits(_wgslsmith_sub_vec3_u32(u_input.b, ~vec3<u32>(var_0, arg_1.b.b, var_0))));
    let var_3 = _wgslsmith_f_op_f32(abs(275f));
    let var_4 = false | arg_0.a.x;
    return true;
}

fn func_1() -> vec3<f32> {
    var var_0 = all(select(vec3<bool>(true, true, true), vec3<bool>(select(true, all(vec2<bool>(false, true)), all(vec3<bool>(false, true, false))), select(false, false, func_2(Struct_4(vec4<bool>(false, true, false, false), vec4<i32>(-2147483647i, u_input.c.x, -26932i, -34880i), Struct_3(415f, Struct_1(vec4<f32>(-573f, 1014f, -1069f, -1000f), u_input.a, vec4<f32>(208f, 308f, 1295f, 1182f), u_input.c.x), Struct_1(vec4<f32>(-1460f, -1515f, -1000f, 1219f), u_input.d, vec4<f32>(1869f, 237f, 1615f, -1000f), -59898i), vec3<f32>(741f, -1281f, 345f), Struct_1(vec4<f32>(-263f, 494f, -1332f, -741f), 1740u, vec4<f32>(-225f, -2416f, -459f, 278f), -2147483647i))), global1[_wgslsmith_index_u32(55901u, 28u)])), true), !func_2(Struct_4(vec4<bool>(false, true, true, false), vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), Struct_3(-942f, Struct_1(vec4<f32>(1221f, -390f, 642f, -114f), 49378u, vec4<f32>(255f, -168f, -1055f, 889f), 25980i), Struct_1(vec4<f32>(-1552f, 281f, 1059f, 1160f), u_input.e, vec4<f32>(505f, -1756f, -161f, -1934f), u_input.c.x), vec3<f32>(345f, 219f, -1531f), Struct_1(vec4<f32>(586f, -1688f, 535f, -137f), u_input.b.x, vec4<f32>(2105f, -979f, -1301f, -945f), -34839i))), global1[_wgslsmith_index_u32(u_input.a ^ u_input.e, 28u)])));
    var_0 = -62963i == u_input.c.x;
    let var_1 = countOneBits(_wgslsmith_div_vec3_i32(-reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c.x, -14727i, 1i), u_input.c.zxw)), vec3<i32>(1i, u_input.c.x, 1i)));
    global0 = true;
    var var_2 = Struct_3(_wgslsmith_f_op_f32(step(640f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -319f) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-766f * 714f)))))), Struct_1(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-676f, 1245f, _wgslsmith_f_op_f32(f32(-1f) * -1425f), -442f))), 4294967295u, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(171f, 1091f, -849f, -1000f))), vec4<f32>(171f, 1560f, 1000f, 1759f), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true)))))), -28680i >> ((1u << (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, 85399u, 40574u), vec4<u32>(61155u, 1u, u_input.b.x, u_input.a)) % 32u)) % 32u)), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-226f, 677f, 1174f, 1160f))))), u_input.b.x, vec4<f32>(658f, _wgslsmith_div_f32(-158f, _wgslsmith_f_op_f32(trunc(-282f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f * 481f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -214f))), 1i), vec3<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(339f, 117f) + _wgslsmith_f_op_f32(step(-463f, -624f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-130f)))))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1869f - -2706f), _wgslsmith_f_op_f32(select(-602f, -661f, false)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -1123f)), -394f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(153f - -674f))), 4294967295u, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-747f, 2764f, -716f, 1000f)))), -4250i));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(var_2.c.c.xxx, var_2.e.c.ywx), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-100f, -1687f, var_2.b.c.x)), true)) * _wgslsmith_f_op_vec3_f32(abs(var_2.e.a.wwz))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-630f, var_2.b.a.x, _wgslsmith_f_op_f32(-787f - var_2.b.a.x)))) * _wgslsmith_f_op_vec3_f32(-var_2.c.a.zxx));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec3<u32>(_wgslsmith_div_u32(4294967295u, select(u_input.a, u_input.d, true)), _wgslsmith_mult_u32(~19472u, ~u_input.d), 13712u) << (vec3<u32>(_wgslsmith_mult_u32(0u, 0u), ~((31000u | u_input.d) ^ abs(24371u)), u_input.b.x) % vec3<u32>(32u));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1705f, -246f, 372f) + vec3<f32>(-335f, -2466f, 1000f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1866f, 1179f, 289f), vec3<f32>(408f, -849f, -102f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1()))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1691f, 1000f, -442f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1132f, -645f, 1200f), vec3<f32>(1060f, 1000f, 731f), false)))) - vec3<f32>(1922f, 1000f, _wgslsmith_f_op_f32(-1424f - -639f)))));
    var var_2 = select(-_wgslsmith_mult_i32(reverseBits(u_input.c.x), 0i), 0i, !select(false, true, true) && !all(vec3<bool>(true, true, true))) <= u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, var_0.zx & vec2<u32>(_wgslsmith_sub_u32(var_0.x, var_0.x), 1u));
}

