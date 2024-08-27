struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: i32,
    d: vec3<f32>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: f32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1i, vec4<i32>(33877i, 12741i, 1856i, -1i), false, 24733i);

var<private> global1: array<vec4<f32>, 29> = array<vec4<f32>, 29>(vec4<f32>(2364f, 227f, 274f, -926f), vec4<f32>(1511f, -1200f, -863f, -3095f), vec4<f32>(1000f, 292f, 472f, -613f), vec4<f32>(1000f, -117f, 1823f, 694f), vec4<f32>(597f, 240f, -141f, 1651f), vec4<f32>(1000f, -2168f, -1570f, -1000f), vec4<f32>(-940f, 973f, 808f, 1169f), vec4<f32>(-140f, 1000f, 1617f, 609f), vec4<f32>(861f, 1840f, 2172f, 1000f), vec4<f32>(419f, 745f, -1224f, -378f), vec4<f32>(-1781f, -497f, -257f, 330f), vec4<f32>(340f, 276f, -243f, 317f), vec4<f32>(1473f, -1188f, -350f, 356f), vec4<f32>(-1486f, -397f, 2507f, 354f), vec4<f32>(509f, 1000f, -2646f, 802f), vec4<f32>(167f, 1107f, -480f, -198f), vec4<f32>(-873f, -1000f, 353f, 359f), vec4<f32>(-1000f, -1000f, -1066f, 308f), vec4<f32>(-137f, -241f, -993f, 1017f), vec4<f32>(-381f, -726f, -583f, -2314f), vec4<f32>(-1000f, 1176f, 1024f, -533f), vec4<f32>(-771f, 1000f, -1106f, -254f), vec4<f32>(526f, -198f, 914f, -1673f), vec4<f32>(-693f, -1692f, 1727f, -1418f), vec4<f32>(-520f, 222f, 608f, 2086f), vec4<f32>(-502f, -467f, -929f, -210f), vec4<f32>(-218f, 235f, 1541f, -809f), vec4<f32>(184f, -547f, -1540f, 987f), vec4<f32>(-448f, 730f, -1113f, 751f));

var<private> global2: array<vec2<bool>, 21>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_5, arg_1: u32, arg_2: Struct_5, arg_3: u32) -> i32 {
    global0 = Struct_1(global0.a, ~vec4<i32>(arg_2.a.b.x, arg_0.a.a, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(0i, 7019i, -18815i, 1i)), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.a.b.x, -1i, arg_2.a.b.x, arg_2.a.d), arg_2.a.b)), 1i), true, -16265i);
    var var_0 = ~_wgslsmith_clamp_vec3_i32(-((global0.b.xyw << (vec3<u32>(arg_3, 32296u, 0u) % vec3<u32>(32u))) | arg_2.a.b.www), _wgslsmith_mult_vec3_i32(vec3<i32>(0i, arg_2.a.b.x, ~global0.b.x), vec3<i32>(-1i) * -arg_0.a.b.wzw), arg_2.a.b.zwx);
    global1 = array<vec4<f32>, 29>();
    var var_1 = Struct_2(firstLeadingBit(-_wgslsmith_dot_vec3_i32(select(vec3<i32>(0i, 35853i, global0.b.x), global0.b.wzw, vec3<bool>(false, arg_0.a.c, arg_0.a.c)), _wgslsmith_add_vec3_i32(vec3<i32>(7240i, var_0.x, arg_0.a.b.x), arg_0.a.b.ywz))));
    let var_2 = arg_0.a.b.x;
    return _wgslsmith_sub_i32(_wgslsmith_mod_i32(arg_0.a.b.x, 13039i | var_2), arg_2.a.d);
}

fn func_2(arg_0: vec3<bool>, arg_1: u32, arg_2: i32) -> Struct_3 {
    let var_0 = _wgslsmith_sub_vec2_i32(vec2<i32>(arg_2, -2147483647i), _wgslsmith_mult_vec2_i32(-firstLeadingBit(vec2<i32>(arg_2, 2147483647i)), abs(global0.b.ww >> (u_input.b % vec2<u32>(32u)))) >> (u_input.c.xx % vec2<u32>(32u)));
    let var_1 = Struct_2(arg_2);
    let var_2 = false;
    let var_3 = u_input.c.yy;
    global2 = array<vec2<bool>, 21>();
    return Struct_3(global0.d, Struct_1(_wgslsmith_mod_i32(var_0.x, _wgslsmith_dot_vec3_i32(global0.b.wxw, vec3<i32>(2147483647i, 1i, var_1.a))) >> (_wgslsmith_add_u32(4294967295u >> (arg_1 % 32u), ~u_input.a) % 32u), select(global0.b, abs(global0.b), var_2), !var_2, 35754i), 0u, Struct_1(-func_3(Struct_5(Struct_1(18323i, global0.b, false, -1i), var_3), var_3.x, Struct_5(Struct_1(global0.d, vec4<i32>(var_0.x, var_0.x, -12451i, -12666i), true, 0i), vec2<u32>(u_input.d, arg_1)), _wgslsmith_mod_u32(19464u, u_input.b.x)), ~(~global0.b) & _wgslsmith_mult_vec4_i32(~vec4<i32>(10202i, 1i, 1i, 16210i), global0.b), select(any(arg_0.yz), !all(vec4<bool>(global0.c, arg_0.x, false, arg_0.x)), var_2), -(i32(-1i) * -2147483647i)), Struct_1(countOneBits(min(_wgslsmith_clamp_i32(0i, -2147483647i, var_0.x), firstLeadingBit(-6060i))), global0.b, !(!var_2 | select(false, true, false)), 1i));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_5) -> i32 {
    let var_0 = ~(-2147483647i);
    var var_1 = 4294967295u;
    var var_2 = func_2(!(!(!select(vec3<bool>(true, false, true), vec3<bool>(arg_0.a.c, arg_0.a.c, arg_0.a.c), vec3<bool>(arg_0.a.c, arg_0.a.c, false)))), u_input.a, -(-abs(arg_0.c) | (_wgslsmith_sub_i32(global0.a, global0.d) & var_0)));
    let var_3 = arg_0;
    let var_4 = Struct_3(_wgslsmith_add_i32(6522i, arg_1.a.d), var_2.d, func_2(!vec3<bool>(global0.c, arg_1.a.c, var_2.d.c), max(u_input.a, 4294967295u), _wgslsmith_mod_i32(var_2.e.d, 1i)).c | 0u, Struct_1(arg_1.a.a, vec4<i32>(-2147483647i, func_3(arg_1, _wgslsmith_mult_u32(4294967295u, arg_1.b.x), Struct_5(Struct_1(-33085i, var_3.a.b, true, -58463i), u_input.c.zy), 4294967295u), ~(arg_1.a.a | -35031i), _wgslsmith_dot_vec3_i32(select(vec3<i32>(-7110i, var_0, -2147483647i), global0.b.yww, vec3<bool>(true, true, arg_1.a.c)), firstTrailingBit(vec3<i32>(arg_1.a.d, -2147483647i, -2147483647i)))), true, var_3.b), Struct_1(_wgslsmith_sub_i32(abs(i32(-1i) * -2147483647i), max(firstLeadingBit(global0.b.x), _wgslsmith_mod_i32(arg_1.a.d, arg_0.b))), reverseBits(arg_0.a.b), all(vec4<bool>(var_3.d.x >= 1000f, arg_1.a.c, arg_1.a.d != var_2.b.d, false)), _wgslsmith_mult_i32(~_wgslsmith_dot_vec3_i32(arg_0.a.b.zxw, var_3.a.b.zwz), -var_0 | var_2.a)));
    return ~(-1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_dot_vec4_i32(~vec4<i32>(global0.b.x, func_1(Struct_4(Struct_1(-39728i, global0.b, global0.c, 0i), -1i, global0.a, vec3<f32>(1226f, -688f, 515f)), Struct_5(Struct_1(global0.b.x, vec4<i32>(2147483647i, global0.a, -1i, global0.a), true, global0.d), vec2<u32>(1u, 33003u))), _wgslsmith_add_i32(global0.a, global0.b.x), global0.a), -min(~vec4<i32>(7141i, global0.d, global0.a, 0i), global0.b)), Struct_1(global0.a, global0.b, all(select(select(vec3<bool>(global0.c, true, global0.c), vec3<bool>(true, global0.c, global0.c), vec3<bool>(false, global0.c, true)), select(vec3<bool>(false, true, true), vec3<bool>(true, false, global0.c), vec3<bool>(global0.c, global0.c, global0.c)), global0.c)), ~global0.b.x), reverseBits(min(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 8755u, 23441u, u_input.b.x), vec4<u32>(u_input.a, 0u, u_input.a, u_input.d)))) | ~((u_input.c.x << (4294967295u % 32u)) | 1u), func_2(!(!select(vec3<bool>(global0.c, true, true), vec3<bool>(true, false, global0.c), true)), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.b & vec2<u32>(4294967295u, 0u), ~vec2<u32>(u_input.b.x, 0u)), min(~u_input.b, vec2<u32>(0u, u_input.d))), firstLeadingBit(~(global0.d | 1i))).d, Struct_1(global0.d, global0.b, !global0.c, -51157i));
    let var_1 = var_0.b.a;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-653f - _wgslsmith_f_op_f32(357f - 1880f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var var_3 = Struct_5(func_2(select(!(!vec3<bool>(true, global0.c, false)), !(!vec3<bool>(true, false, var_0.b.c)), !vec3<bool>(var_0.b.c, global0.c, false)), firstLeadingBit(var_0.c), 0i).e, countOneBits(vec2<u32>(u_input.b.x, reverseBits(74787u)) | _wgslsmith_div_vec2_u32(~u_input.b, _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, var_0.c), u_input.c.yz))));
    let var_4 = -264f;
    global1 = array<vec4<f32>, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.c >> (u_input.c % vec3<u32>(32u)), u_input.c >> (vec3<u32>(62523u, 37306u, var_3.b.x) % vec3<u32>(32u))) | ~_wgslsmith_mult_vec3_u32(u_input.c, vec3<u32>(41266u, 60459u, 0u)), ~u_input.c, u_input.c), abs(abs(~var_3.a.b | min(global0.b, var_3.a.b))), 872f, firstLeadingBit(abs(~var_0.c)), global0.d);
}

