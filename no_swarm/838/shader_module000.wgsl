struct Struct_1 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 16> = array<f32, 16>(-374f, -923f, -256f, 443f, 951f, -2070f, -377f, -838f, -125f, -1081f, -284f, 788f, -325f, 1417f, 396f, -222f);

var<private> global1: array<f32, 6>;

var<private> global2: array<vec3<bool>, 19>;

var<private> global3: f32;

var<private> global4: vec3<i32> = vec3<i32>(1i, 27809i, -11150i);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1) -> vec3<u32> {
    global2 = array<vec3<bool>, 19>();
    global0 = array<f32, 16>();
    let var_0 = min(arg_1.c.zzw, arg_1.c.wyx);
    global0 = array<f32, 16>();
    let var_1 = global1[_wgslsmith_index_u32(u_input.a.x, 6u)];
    return ~vec3<u32>(_wgslsmith_add_u32(abs(1u | u_input.c), var_0.x), ~_wgslsmith_clamp_u32(~10564u, _wgslsmith_mult_u32(5371u, u_input.b), 4294967295u), arg_1.c.x);
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: bool, arg_3: bool) -> u32 {
    global3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(~firstTrailingBit(~20062u), 6u)])), global0[_wgslsmith_index_u32(countOneBits(~select(95468u, 24361u, false)), 16u)]));
    var var_0 = Struct_1(vec2<bool>(!(global4.x < _wgslsmith_sub_i32(u_input.e.x, 23249i)), !(!arg_1.a.x)), vec2<i32>(_wgslsmith_mult_i32(1i, ~(-216i)), _wgslsmith_mod_i32(-2147483647i, ~2407i)), vec4<u32>(u_input.b, countOneBits(_wgslsmith_mod_u32(1u, arg_1.d.x & 4294967295u)), 1u, arg_1.d.x), select(~(arg_1.d ^ (arg_1.c.zzw << (arg_1.d % vec3<u32>(32u)))), func_3(abs(select(vec4<i32>(0i, u_input.e.x, 3745i, u_input.e.x), vec4<i32>(12953i, -18646i, -40489i, 19737i), false)), Struct_1(vec2<bool>(arg_0, arg_3), ~arg_1.b, vec4<u32>(0u, arg_1.c.x, u_input.c, arg_1.d.x), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, arg_1.c.x, arg_1.d.x), arg_1.c.yww), arg_2)), global2[_wgslsmith_index_u32(6961u, 19u)]), any(select(!select(vec4<bool>(arg_1.a.x, true, arg_2, true), vec4<bool>(true, arg_3, arg_2, true), vec4<bool>(true, arg_2, true, arg_2)), select(!vec4<bool>(arg_2, arg_1.e, true, arg_2), select(vec4<bool>(arg_2, true, false, false), vec4<bool>(true, true, arg_0, arg_2), vec4<bool>(false, false, true, arg_1.a.x)), arg_1.e), arg_2)));
    global0 = array<f32, 16>();
    var var_1 = true;
    var var_2 = Struct_1(!vec2<bool>(global4.x >= _wgslsmith_mult_i32(global4.x, global4.x), false), u_input.d.zz ^ var_0.b, vec4<u32>(4294967295u, _wgslsmith_mult_u32(_wgslsmith_sub_u32(4294967295u, var_0.c.x) | arg_1.c.x, 1u), ~(_wgslsmith_clamp_u32(26844u, 86724u, 8423u) & 1u), arg_1.c.x), ~(~(~var_0.c.zxy)) ^ ~vec3<u32>(~53089u, 4294967295u, 33778u), true);
    return 36901u;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec2<u32>, arg_3: vec4<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_mod_i32(countOneBits(min(-(global4.x | -27920i), -reverseBits(-36657i))), firstTrailingBit(reverseBits(2147483647i)));
    global0 = array<f32, 16>();
    let var_1 = arg_0;
    global0 = array<f32, 16>();
    let var_2 = Struct_1(var_1.a, vec2<i32>(~4608i, var_1.b.x), ~abs(~(~arg_3)), countOneBits(vec3<u32>(1u, abs(select(var_1.c.x, 35197u, arg_0.a.x)), ~1u)), !arg_0.e);
    return Struct_1(select(arg_0.a, !var_1.a, var_1.a.x), vec2<i32>(~var_1.b.x, var_0), vec4<u32>(arg_0.c.x, 4294967295u, var_2.d.x, 4294967295u), min(vec3<u32>(reverseBits(~arg_3.x), _wgslsmith_sub_u32(30050u, var_1.c.x << (var_2.c.x % 32u)), 86757u ^ select(4294967295u, 0u, var_1.a.x)), vec3<u32>(u_input.a.x, ~(~74961u), arg_3.x)), ~arg_0.b.x > -1800i);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>) -> Struct_1 {
    let var_0 = countOneBits(u_input.d.yy);
    global3 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1536f, global0[_wgslsmith_index_u32(arg_0.c.x, 16u)]), _wgslsmith_f_op_f32(1456f - global1[_wgslsmith_index_u32(12089u, 6u)])));
    let var_1 = func_4(arg_0, ~abs(_wgslsmith_mod_u32(func_3(vec4<i32>(global4.x, 0i, u_input.e.x, arg_0.b.x), arg_0).x, 1u >> (arg_0.d.x % 32u))), min(firstLeadingBit(vec2<u32>(func_2(arg_2.x, arg_1, true, false), 33515u)), ~vec2<u32>(~u_input.c, countOneBits(arg_0.d.x))), vec4<u32>(~arg_0.c.x, func_4(func_4(Struct_1(arg_2.xz, vec2<i32>(arg_0.b.x, u_input.e.x), vec4<u32>(8897u, 26863u, arg_0.d.x, 1u), arg_1.d, arg_2.x), u_input.a.x, u_input.a, vec4<u32>(arg_0.c.x, arg_0.c.x, 4294967295u, 1u)), u_input.a.x, arg_1.d.yz | vec2<u32>(arg_0.c.x, arg_1.c.x), abs(arg_0.c)).c.x, ~142123u, arg_0.d.x) << (_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.b, u_input.a.x, 0u) >> (_wgslsmith_sub_vec4_u32(arg_0.c, vec4<u32>(arg_0.d.x, u_input.c, 1u, 39037u)) % vec4<u32>(32u)), ~(~vec4<u32>(arg_1.c.x, 67333u, u_input.a.x, 59195u))) % vec4<u32>(32u)));
    global2 = array<vec3<bool>, 19>();
    let var_2 = vec2<f32>(global0[_wgslsmith_index_u32(func_3(_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(-1i, 1i, -2147483647i, var_1.b.x), -vec4<i32>(var_0.x, var_0.x, u_input.d.x, -22986i)), reverseBits(abs(vec4<i32>(24510i, u_input.d.x, -2147483647i, var_0.x)))), Struct_1(arg_0.a, arg_1.b, var_1.c, vec3<u32>(1u, max(1u, var_1.d.x), 1u), arg_2.x)).x, 16u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~var_1.c.x, 6u)] * global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b, arg_1.c.x), 16u)]));
    return Struct_1(vec2<bool>(any(global2[_wgslsmith_index_u32(u_input.c, 19u)]), !arg_1.e), vec2<i32>(-27296i, ~(-var_0.x)), ~firstLeadingBit(var_1.c), arg_0.d, !var_1.e);
}

fn func_1() -> f32 {
    var var_0 = Struct_1(!vec2<bool>(!any(vec4<bool>(false, true, true, true)), !(u_input.d.x < global4.x)), global4.yy, vec4<u32>(~(_wgslsmith_mod_u32(u_input.a.x, u_input.c) ^ ~u_input.b), ~66883u, u_input.c, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.a | u_input.a, u_input.a), _wgslsmith_add_vec2_u32(firstLeadingBit(u_input.a), vec2<u32>(u_input.b, u_input.a.x)))), ~_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(u_input.a.x, u_input.a.x, 0u)), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, u_input.a.x, 1u), vec3<u32>(u_input.c, 66289u, 5038u))), vec3<u32>(1u, 35681u, 4294967295u) & ~vec3<u32>(95006u, u_input.c, 16891u)), !select(true, false, all(vec4<bool>(false, true, true, true))));
    global2 = array<vec3<bool>, 19>();
    global1 = array<f32, 6>();
    var var_1 = var_0.e && select(all(vec4<bool>(true, var_0.a.x, var_0.e, true)), var_0.a.x, false);
    let var_2 = func_5(func_4(Struct_1(vec2<bool>(var_0.e, any(vec3<bool>(false, var_0.a.x, true))), abs(u_input.e), var_0.c, var_0.d, false), func_2(abs(u_input.d.x) <= -var_0.b.x, Struct_1(!vec2<bool>(true, var_0.a.x), ~var_0.b, var_0.c, ~var_0.c.xxy, var_0.a.x), false, any(global2[_wgslsmith_index_u32(1u, 19u)])), var_0.c.zw, vec4<u32>(_wgslsmith_sub_u32(0u, var_0.c.x), 4294967295u, _wgslsmith_sub_u32(~1u, ~32449u), ~u_input.a.x)), Struct_1(vec2<bool>(false, select(func_4(Struct_1(vec2<bool>(var_0.e, var_0.a.x), u_input.e, var_0.c, vec3<u32>(42276u, u_input.a.x, var_0.d.x), var_0.e), 27088u, vec2<u32>(u_input.b, 21230u), var_0.c).a.x, true, all(vec3<bool>(var_0.e, false, var_0.a.x)))), _wgslsmith_add_vec2_i32(select(-u_input.e, _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.e.x, -23056i), vec2<i32>(var_0.b.x, -27742i)), var_0.a.x), select(vec2<i32>(global4.x, 47747i), ~u_input.d.xx, all(var_0.a))), vec4<u32>(_wgslsmith_div_u32(var_0.c.x, func_3(vec4<i32>(12696i, 1i, 1i, var_0.b.x), Struct_1(vec2<bool>(true, var_0.a.x), var_0.b, vec4<u32>(var_0.c.x, var_0.d.x, u_input.a.x, var_0.c.x), var_0.c.zzw, true)).x), func_4(Struct_1(vec2<bool>(false, false), vec2<i32>(var_0.b.x, -2147483647i), var_0.c, var_0.c.yyx, var_0.e), 55416u, vec2<u32>(var_0.d.x, 1u), vec4<u32>(u_input.b, u_input.a.x, var_0.d.x, 1u)).d.x ^ min(45510u, 22092u), u_input.c, func_4(Struct_1(var_0.a, vec2<i32>(30630i, var_0.b.x), var_0.c, vec3<u32>(u_input.c, var_0.d.x, 58133u), false), u_input.b, abs(u_input.a), abs(var_0.c)).c.x), vec3<u32>(0u, ~var_0.c.x, select(var_0.d.x >> (0u % 32u), u_input.c, var_0.e)), !var_0.a.x), !global2[_wgslsmith_index_u32(0u, 19u)]);
    return _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 16u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = global0[_wgslsmith_index_u32(1320u, 16u)];
    global0 = array<f32, 16>();
    let var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-659f, 347f, global1[_wgslsmith_index_u32(u_input.a.x, 6u)]))))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(-1430f, global0[_wgslsmith_index_u32(u_input.b, 16u)]), _wgslsmith_f_op_f32(ceil(-995f)), global0[_wgslsmith_index_u32(u_input.b, 16u)]), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-874f, global1[_wgslsmith_index_u32(92624u, 6u)], -704f)), vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 16u)], global1[_wgslsmith_index_u32(6074u, 6u)], -596f), vec3<bool>(true, true, true))), true & (u_input.d.x >= u_input.d.x)))), vec3<f32>(1000f, 132f, _wgslsmith_f_op_f32(func_1()))));
    global3 = 118f;
    var var_1 = global4.zy;
    var var_2 = func_4(func_4(func_5(func_4(Struct_1(vec2<bool>(false, true), vec2<i32>(1i, global4.x), vec4<u32>(59816u, 19692u, 1u, u_input.c), vec3<u32>(0u, 0u, 14378u), false), 54915u, u_input.a, vec4<u32>(u_input.c, 4294967295u, u_input.c, u_input.c)), Struct_1(vec2<bool>(true, true), func_5(Struct_1(vec2<bool>(false, false), vec2<i32>(1i, -39738i), vec4<u32>(37957u, u_input.c, u_input.c, u_input.b), vec3<u32>(u_input.a.x, 4294967295u, u_input.b), false), Struct_1(vec2<bool>(true, true), vec2<i32>(var_1.x, u_input.d.x), vec4<u32>(u_input.c, u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(1u, u_input.a.x, u_input.a.x), true), global2[_wgslsmith_index_u32(u_input.c, 19u)]).b, vec4<u32>(50568u, u_input.c, u_input.c, 64437u), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, 4294967295u, 1u), vec3<u32>(u_input.c, 50044u, 0u)), true), select(!global2[_wgslsmith_index_u32(u_input.b, 19u)], select(global2[_wgslsmith_index_u32(1u, 19u)], vec3<bool>(true, true, false), vec3<bool>(false, true, true)), global2[_wgslsmith_index_u32(u_input.c, 19u)])), ~0u, func_5(func_4(Struct_1(vec2<bool>(false, false), u_input.d.zx, vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.b), vec3<u32>(u_input.c, 60869u, 4294967295u), true), 1u << (u_input.b % 32u), u_input.a, abs(vec4<u32>(u_input.b, u_input.a.x, 0u, 0u))), Struct_1(func_4(Struct_1(vec2<bool>(false, false), u_input.d.xx, vec4<u32>(71814u, u_input.b, 46217u, u_input.c), vec3<u32>(14553u, u_input.b, 1u), true), u_input.a.x, vec2<u32>(u_input.a.x, u_input.a.x), vec4<u32>(1u, u_input.a.x, 51784u, 60362u)).a, _wgslsmith_mult_vec2_i32(global4.xz, u_input.e), min(vec4<u32>(u_input.a.x, 59772u, u_input.c, u_input.c), vec4<u32>(u_input.c, u_input.b, u_input.c, u_input.c)), func_3(vec4<i32>(var_1.x, 0i, var_1.x, global4.x), Struct_1(vec2<bool>(false, true), u_input.e, vec4<u32>(u_input.a.x, 1u, 0u, u_input.a.x), vec3<u32>(u_input.c, 1u, u_input.b), false)), true), global2[_wgslsmith_index_u32(select(u_input.a.x, u_input.a.x, true) >> (u_input.b % 32u), 19u)]).c.xw, ~select(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 28909u, u_input.a.x, 4294967295u), vec4<u32>(0u, u_input.a.x, 36762u, 16140u)), vec4<u32>(u_input.b, u_input.a.x, u_input.b, 72777u), var_1.x <= global4.x)), u_input.b & ~(~_wgslsmith_add_u32(u_input.a.x, u_input.c)), u_input.a, _wgslsmith_mod_vec4_u32(~((vec4<u32>(u_input.a.x, u_input.c, 0u, 33139u) ^ vec4<u32>(u_input.c, u_input.b, u_input.a.x, u_input.a.x)) | ~vec4<u32>(u_input.b, u_input.a.x, 1u, 4294967295u)), vec4<u32>(4294967295u, u_input.b | 1u, _wgslsmith_add_u32(u_input.c, 21090u), max(4294967295u, 43636u)) ^ _wgslsmith_div_vec4_u32(vec4<u32>(1u, 73423u, 1u, u_input.a.x) ^ vec4<u32>(u_input.b, 4893u, 0u, u_input.b), ~vec4<u32>(78846u, 13545u, 4294967295u, u_input.a.x))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(var_0)) * vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(reverseBits(var_2.d.x), 6u)])) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x + global0[_wgslsmith_index_u32(u_input.b, 16u)]), _wgslsmith_div_f32(var_3.x, global0[_wgslsmith_index_u32(0u, 16u)])))), -_wgslsmith_mult_i32(var_2.b.x, i32(-1i) * -global4.x), vec4<u32>(_wgslsmith_dot_vec3_u32(var_2.d, var_2.c.yxx), min(~u_input.a.x, _wgslsmith_clamp_u32(~var_2.d.x, var_2.d.x, u_input.a.x)), _wgslsmith_add_u32(~(~14953u), u_input.a.x), ~_wgslsmith_add_u32(1u, ~var_2.d.x)), min(var_1.x << (25860u % 32u), reverseBits(u_input.d.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, var_3.x))), vec2<f32>(_wgslsmith_f_op_f32(var_3.x - global0[_wgslsmith_index_u32(34288u, 16u)]), -1013f)) + _wgslsmith_f_op_vec2_f32(sign(var_0.zz))));
}

