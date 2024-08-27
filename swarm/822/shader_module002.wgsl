struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec2<f32>,
    e: f32,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
    c: vec4<bool>,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: Struct_2,
    e: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 32> = array<f32, 32>(-179f, 597f, 1086f, -1000f, 948f, 1669f, -1331f, 813f, 521f, 661f, -599f, -1508f, -671f, 1000f, 1991f, -122f, 804f, -226f, 613f, 285f, 716f, -1424f, -1000f, -1010f, -547f, -1222f, -214f, 1201f, 342f, -1054f, 284f, -1417f);

var<private> global1: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(607f, vec2<i32>(25007i, 0i), vec4<bool>(false, true, true, true), false), Struct_2(-674f, vec2<i32>(746i, 35333i), vec4<bool>(false, false, false, false), true), Struct_2(303f, vec2<i32>(-34289i, i32(-2147483648)), vec4<bool>(false, true, false, false), true), Struct_2(-921f, vec2<i32>(-1i, 2147483647i), vec4<bool>(true, false, true, false), false), Struct_2(-677f, vec2<i32>(1i, 1i), vec4<bool>(true, true, true, true), true), Struct_2(418f, vec2<i32>(i32(-2147483648), 1i), vec4<bool>(false, true, true, true), true), Struct_2(724f, vec2<i32>(-10163i, -1i), vec4<bool>(true, false, true, true), false), Struct_2(1278f, vec2<i32>(9059i, -3789i), vec4<bool>(true, true, true, true), false), Struct_2(-330f, vec2<i32>(-1i, 37085i), vec4<bool>(false, true, false, true), false), Struct_2(-1395f, vec2<i32>(1i, 49842i), vec4<bool>(true, true, true, false), false), Struct_2(-1596f, vec2<i32>(-46986i, i32(-2147483648)), vec4<bool>(true, true, true, true), true), Struct_2(1307f, vec2<i32>(0i, 1i), vec4<bool>(true, false, false, false), false), Struct_2(751f, vec2<i32>(-23467i, 23373i), vec4<bool>(true, false, false, false), false), Struct_2(-174f, vec2<i32>(-53667i, -1i), vec4<bool>(true, true, false, true), false), Struct_2(501f, vec2<i32>(0i, 17635i), vec4<bool>(false, true, true, false), false), Struct_2(1316f, vec2<i32>(-12446i, i32(-2147483648)), vec4<bool>(false, false, false, true), true), Struct_2(-202f, vec2<i32>(-14068i, 22528i), vec4<bool>(false, true, true, true), true), Struct_2(-1328f, vec2<i32>(i32(-2147483648), 2147483647i), vec4<bool>(true, true, true, true), true), Struct_2(-1509f, vec2<i32>(-1i, 32874i), vec4<bool>(false, true, false, false), true), Struct_2(-1505f, vec2<i32>(1i, 22151i), vec4<bool>(true, false, true, false), true), Struct_2(-382f, vec2<i32>(2147483647i, -50071i), vec4<bool>(true, true, true, true), false), Struct_2(511f, vec2<i32>(2147483647i, 0i), vec4<bool>(false, true, false, false), false), Struct_2(1286f, vec2<i32>(0i, 12304i), vec4<bool>(false, false, false, true), true), Struct_2(129f, vec2<i32>(i32(-2147483648), -1i), vec4<bool>(false, false, true, true), false), Struct_2(-612f, vec2<i32>(2147483647i, -28319i), vec4<bool>(false, false, false, true), true), Struct_2(1057f, vec2<i32>(25600i, 1i), vec4<bool>(false, true, false, false), false));

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> vec3<u32> {
    global0 = array<f32, 32>();
    let var_0 = !select(vec3<bool>(all(vec2<bool>(false, false)) | (global0[_wgslsmith_index_u32(u_input.a, 32u)] == global0[_wgslsmith_index_u32(20175u, 32u)]), countOneBits(u_input.a) <= u_input.a, true), vec3<bool>(true, true, true), !vec3<bool>(select(true, false, false), all(vec4<bool>(true, true, false, true)), true));
    var var_1 = true;
    var_1 = var_0.x;
    var_1 = any(!(!select(vec3<bool>(var_0.x, var_0.x, false), !var_0, var_0)));
    return _wgslsmith_clamp_vec3_u32(((vec3<u32>(1u, u_input.a, u_input.a) << ((vec3<u32>(1u, 86521u, 4294967295u) ^ vec3<u32>(u_input.a, u_input.a, 58519u)) % vec3<u32>(32u))) ^ ~(vec3<u32>(0u, u_input.a, u_input.a) & vec3<u32>(1u, 80079u, u_input.a))) >> (vec3<u32>(u_input.a, ~u_input.a, ~56418u) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(~max(firstTrailingBit(vec3<u32>(u_input.a, 1u, 1u)), vec3<u32>(u_input.a, 66167u, 69475u)), select(select(select(vec3<u32>(u_input.a, 39377u, 53370u), vec3<u32>(24465u, 14191u, u_input.a), vec3<bool>(false, var_0.x, true)), vec3<u32>(u_input.a, u_input.a, u_input.a), !vec3<bool>(false, false, var_0.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(84505u, u_input.a, u_input.a) >> (vec3<u32>(u_input.a, 1u, u_input.a) % vec3<u32>(32u)), ~vec3<u32>(0u, u_input.a, u_input.a)), var_0.x)), vec3<u32>(countOneBits(0u), 73581u, 0u));
}

fn func_2() -> vec4<u32> {
    let var_0 = _wgslsmith_mult_vec3_u32(func_3(), abs(~abs(~vec3<u32>(7117u, u_input.a, 1u))));
    let var_1 = vec3<i32>(_wgslsmith_mult_i32(-25459i, ~(-u_input.b.x & _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, u_input.b.x, u_input.b.x), u_input.b))), 1i, _wgslsmith_dot_vec2_i32(abs(min(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), u_input.b.zx, u_input.b.zy), _wgslsmith_sub_vec2_i32(u_input.b.yz, vec2<i32>(u_input.b.x, 1i)))), u_input.b.wx));
    let var_2 = global0[_wgslsmith_index_u32(~var_0.x, 32u)];
    let var_3 = u_input.b.xxx;
    var var_4 = ~vec3<i32>(abs(-var_1.x), -_wgslsmith_add_i32(var_3.x, i32(-1i) * -1i), min(-var_3.x, u_input.b.x >> (_wgslsmith_div_u32(var_0.x, var_0.x) % 32u)));
    return ~(~(~(vec4<u32>(5875u, 0u, 0u, u_input.a) >> ((vec4<u32>(4294967295u, 9384u, 4294967295u, 63102u) >> (vec4<u32>(0u, var_0.x, 68823u, var_0.x) % vec4<u32>(32u))) % vec4<u32>(32u)))));
}

fn func_1() -> i32 {
    global0 = array<f32, 32>();
    var var_0 = vec2<u32>(u_input.a, ~u_input.a) | (vec2<u32>(~(~1307u), u_input.a ^ select(u_input.a, u_input.a, false)) | vec2<u32>(u_input.a, _wgslsmith_div_u32(firstTrailingBit(u_input.a), u_input.a)));
    let var_1 = _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(select(~(~vec3<u32>(4294967295u, var_0.x, u_input.a)), ~vec3<u32>(var_0.x, 4294967295u, u_input.a) >> (vec3<u32>(4294967295u, u_input.a, u_input.a) % vec3<u32>(32u)), vec3<bool>(true, true, true)), _wgslsmith_mod_vec3_u32(~(~vec3<u32>(u_input.a, 34690u, 20486u)), vec3<u32>(var_0.x, firstTrailingBit(u_input.a), 1u))), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_add_u32(1704u, 88729u), _wgslsmith_div_u32(14242u, var_0.x), min(u_input.a, u_input.a), ~u_input.a), func_2()), func_3().x << (_wgslsmith_dot_vec3_u32(~vec3<u32>(28103u, 0u, var_0.x), vec3<u32>(var_0.x, var_0.x, var_0.x)) % 32u), ~_wgslsmith_sub_u32(~u_input.a, ~u_input.a)));
    let var_2 = global0[_wgslsmith_index_u32(var_1, 32u)];
    global0 = array<f32, 32>();
    return -47060i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(vec3<i32>(52546i, func_1(), u_input.b.x));
    global0 = array<f32, 32>();
    let var_1 = global1[_wgslsmith_index_u32(func_3().x, 26u)];
    let var_2 = Struct_4(global1[_wgslsmith_index_u32(u_input.a, 26u)], global0[_wgslsmith_index_u32(u_input.a, 32u)], vec3<f32>(global0[_wgslsmith_index_u32(~(~4294967295u), 32u)], -488f, _wgslsmith_f_op_f32(sign(var_1.a))));
    var var_3 = vec2<i32>(var_2.a.b.x, -_wgslsmith_mod_i32(-26025i << (u_input.a % 32u), abs(var_2.a.b.x >> (1u % 32u))));
    let var_4 = var_2.a.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.yzx, max(u_input.a, ~1u) >> (0u % 32u), -vec4<i32>(1i, var_3.x, 2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -18162i), vec2<i32>(var_1.b.x, -1i))) >> (~(reverseBits(vec4<u32>(u_input.a, u_input.a, 3869u, u_input.a)) | ~vec4<u32>(u_input.a, 87558u, 30631u, u_input.a)) % vec4<u32>(32u)));
}

