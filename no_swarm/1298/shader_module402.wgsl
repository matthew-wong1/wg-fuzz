struct Struct_1 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: f32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: bool,
    d: vec3<u32>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 16> = array<vec4<f32>, 16>(vec4<f32>(-1364f, 109f, 596f, 821f), vec4<f32>(-616f, 135f, 507f, 410f), vec4<f32>(867f, -235f, 1000f, 925f), vec4<f32>(778f, -800f, 1217f, 260f), vec4<f32>(1545f, 365f, 220f, -788f), vec4<f32>(927f, -1000f, 805f, 296f), vec4<f32>(1368f, -1000f, 1791f, 1519f), vec4<f32>(1000f, 183f, 1413f, -580f), vec4<f32>(-771f, 960f, 876f, 2421f), vec4<f32>(656f, 1160f, -453f, -988f), vec4<f32>(-1701f, -205f, -514f, 2016f), vec4<f32>(-626f, 1000f, 956f, 526f), vec4<f32>(-1118f, 574f, 572f, 336f), vec4<f32>(-1191f, 1000f, 205f, 239f), vec4<f32>(-405f, -221f, -315f, 386f), vec4<f32>(1000f, 489f, 1000f, -238f));

var<private> global1: array<vec4<i32>, 22> = array<vec4<i32>, 22>(vec4<i32>(-31469i, -9878i, 3146i, 24115i), vec4<i32>(2147483647i, -55819i, i32(-2147483648), -1i), vec4<i32>(52140i, 40922i, -4272i, -39424i), vec4<i32>(2901i, 24907i, 0i, 0i), vec4<i32>(34546i, -8781i, 2147483647i, 1i), vec4<i32>(0i, 0i, 30801i, i32(-2147483648)), vec4<i32>(-1i, 2147483647i, 2147483647i, -13916i), vec4<i32>(0i, i32(-2147483648), -8825i, 2147483647i), vec4<i32>(-1i, 29070i, 2489i, 21451i), vec4<i32>(0i, -4050i, i32(-2147483648), 2147483647i), vec4<i32>(-1i, 1i, 2147483647i, 0i), vec4<i32>(-1i, -1i, 2147483647i, 2147483647i), vec4<i32>(i32(-2147483648), 2147483647i, i32(-2147483648), -40783i), vec4<i32>(i32(-2147483648), -29399i, -48457i, -45877i), vec4<i32>(2491i, -50319i, 33157i, 0i), vec4<i32>(-8804i, -10187i, 0i, 1i), vec4<i32>(2147483647i, 2147483647i, -6927i, -4979i), vec4<i32>(i32(-2147483648), -4656i, 1i, 0i), vec4<i32>(-12241i, 535i, 80276i, -79683i), vec4<i32>(-35624i, 16423i, 0i, -58735i), vec4<i32>(i32(-2147483648), 1i, 0i, 3709i), vec4<i32>(-1i, 15319i, -56201i, 1i));

var<private> global2: vec3<i32> = vec3<i32>(-27942i, -3265i, 17186i);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>, arg_1: u32, arg_2: f32, arg_3: f32) -> vec4<f32> {
    var var_0 = select(vec2<bool>(!select(true, any(vec3<bool>(false, false, false)), true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_3, arg_3)), _wgslsmith_f_op_f32(-arg_3)) < 1169f), !select(select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), arg_0.x != u_input.c), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false))), false), all(vec4<bool>(true, true, true, true)));
    let var_1 = _wgslsmith_f_op_f32(-arg_2);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~u_input.b.x, 19676u), 16u)]) + vec4<f32>(var_1, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(302f * arg_2))))), arg_2, -894f));
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: Struct_3, arg_3: vec2<bool>) -> f32 {
    var var_0 = vec4<bool>(all(select(vec3<bool>(all(arg_0.b.yz), arg_3.x || false, arg_0.a.b != 11318u), vec3<bool>(true, true, true), arg_3.x)), !arg_2.c.c, !(min(u_input.e.x, global2.x) < _wgslsmith_div_i32(40016i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, -62115i), vec2<i32>(-2147483647i, arg_1)))), all(vec2<bool>(any(vec4<bool>(true, true, true, true)), !(!arg_0.b.x))));
    global1 = array<vec4<i32>, 22>();
    var var_1 = _wgslsmith_mod_i32(max(29766i, _wgslsmith_dot_vec4_i32(global1[_wgslsmith_index_u32(max(u_input.d.x, ~arg_2.c.b), 22u)], _wgslsmith_div_vec4_i32(-u_input.a, vec4<i32>(2147483647i, 1178i, u_input.c, arg_1)))), i32(-1i) * -arg_1);
    return arg_0.a.e.x;
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(1f, -2227f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(156f - 1183f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(977f + -745f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(684f)) - _wgslsmith_f_op_f32(f32(-1f) * -1531f)))), global0[_wgslsmith_index_u32(u_input.b.x, 16u)]);
    let var_1 = 654f;
    global0 = array<vec4<f32>, 16>();
    return Struct_2(_wgslsmith_f_op_f32(func_4(Struct_3(Struct_2(525f, firstTrailingBit(u_input.d.x), false, u_input.d.xzw, var_0), vec3<bool>(false, u_input.d.x == u_input.b.x, true), Struct_2(1843f, 4294967295u, true, vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u), _wgslsmith_f_op_vec4_f32(func_3(vec3<i32>(-12685i, global2.x, -1i), 4294967295u, var_0.x, -936f)))), countOneBits(reverseBits(36187i)), Struct_3(Struct_2(-548f, 1u, true, u_input.d.zwy, _wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(22445u, 16u)] + vec4<f32>(-473f, var_0.x, var_1, 1202f))), vec3<bool>(true, true, select(true, true, true)), Struct_2(_wgslsmith_f_op_f32(-var_1), ~15047u, all(vec3<bool>(false, true, false)), max(vec3<u32>(0u, u_input.b.x, 21887u), u_input.b.zxy), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_1, var_1, var_1)))), select(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), all(vec2<bool>(false, true))), all(vec2<bool>(true, false))))), _wgslsmith_add_u32(~_wgslsmith_clamp_u32(12551u, 1u, 4294967295u) | u_input.d.x, u_input.b.x), any(vec2<bool>(true, true)), abs(vec3<u32>(~0u, 1u, u_input.b.x)) | vec3<u32>(firstLeadingBit(abs(0u)), u_input.d.x, ~u_input.b.x << ((u_input.d.x >> (u_input.d.x % 32u)) % 32u)), vec4<f32>(-1123f, _wgslsmith_div_f32(-125f, 250f), _wgslsmith_f_op_f32(-191f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-439f + var_1)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.x - -1366f))), _wgslsmith_f_op_f32(-1497f * -1000f))));
}

fn func_1(arg_0: i32, arg_1: u32) -> Struct_3 {
    var var_0 = func_2();
    global2 = ~countOneBits(vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.e, global2.xy), 0i, _wgslsmith_add_i32(2147483647i, global2.x))) | (select(vec3<i32>(~u_input.c, 23016i, arg_0), max(~vec3<i32>(0i, 2147483647i, global2.x), u_input.a.xzz), all(select(vec4<bool>(false, var_0.c, true, false), vec4<bool>(false, true, false, false), vec4<bool>(var_0.c, true, var_0.c, true)))) << (vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(arg_1, arg_1), ~var_0.b, ~u_input.b.x), func_2().b, arg_1) % vec3<u32>(32u)));
    global2 = u_input.a.wzx;
    let var_1 = -983i >> (~arg_1 % 32u);
    let var_2 = Struct_3(Struct_2(var_0.e.x, var_0.b, false, max(~vec3<u32>(arg_1, 45176u, arg_1), ~_wgslsmith_div_vec3_u32(var_0.d, vec3<u32>(u_input.d.x, 0u, 0u))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-160f, -623f, 1000f, -681f)), var_0.e)), !select(select(!vec3<bool>(var_0.c, true, var_0.c), vec3<bool>(true, true, true), vec3<bool>(true, false, var_0.c)), !(!vec3<bool>(false, var_0.c, false)), var_0.c), Struct_2(181f, ~(~arg_1) >> (var_0.b % 32u), any(!(!vec3<bool>(var_0.c, false, false))), u_input.d.yxz, vec4<f32>(var_0.e.x, var_0.a, _wgslsmith_f_op_f32(var_0.a - 1f), _wgslsmith_f_op_f32(f32(-1f) * -1681f))));
    return Struct_3(var_2.c, vec3<bool>(false, !var_2.a.c, all(select(vec4<bool>(false, true, false, var_2.c.c), vec4<bool>(var_0.c, var_0.c, var_2.b.x, var_2.a.c), vec4<bool>(var_0.c, false, var_2.c.c, false)))), Struct_2(var_0.e.x, _wgslsmith_dot_vec2_u32(u_input.d.xx | countOneBits(u_input.d.zy), ~var_2.a.d.xy), var_0.c, ~func_2().d, _wgslsmith_f_op_vec4_f32(round(global0[_wgslsmith_index_u32(var_2.c.d.x, 16u)]))));
}

fn func_5(arg_0: Struct_3) -> vec3<i32> {
    global1 = array<vec4<i32>, 22>();
    global1 = array<vec4<i32>, 22>();
    let var_0 = func_1(1i, u_input.b.x);
    global0 = array<vec4<f32>, 16>();
    let var_1 = Struct_1(_wgslsmith_clamp_vec4_u32(u_input.b, u_input.d, vec4<u32>(~firstLeadingBit(1u), ~func_2().b, max(firstTrailingBit(arg_0.a.d.x), ~1u), _wgslsmith_mult_u32(_wgslsmith_mod_u32(0u, u_input.b.x), 0u))), _wgslsmith_clamp_vec2_u32(vec2<u32>(~countOneBits(106314u), _wgslsmith_mult_u32(_wgslsmith_div_u32(var_0.c.d.x, arg_0.a.d.x), _wgslsmith_clamp_u32(0u, var_0.c.b, 4294967295u))), _wgslsmith_mult_vec2_u32(min(~vec2<u32>(11916u, 2470u), var_0.a.d.zx >> (arg_0.a.d.yy % vec2<u32>(32u))), ~(~vec2<u32>(1u, 4294967295u))), min(select(u_input.d.xz, min(vec2<u32>(4294967295u, 119818u), vec2<u32>(u_input.b.x, var_0.a.d.x)), vec2<bool>(false, true)), ~var_0.c.d.xz >> (~vec2<u32>(16481u, 12777u) % vec2<u32>(32u)))), u_input.b.yx, var_0.c.a, ~max(~_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, var_0.c.d.x), arg_0.c.d.yz), ~vec2<u32>(81497u, u_input.d.x)));
    return min(countOneBits(~u_input.a.xzz), vec3<i32>(((i32(-1i) * -2147483647i) << (abs(var_0.c.b) % 32u)) & -2147483647i, _wgslsmith_clamp_i32(62271i, -51718i, u_input.e.x), u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_1(~max(global2.x, 2147483647i) | -firstTrailingBit(global2.x), _wgslsmith_add_u32(51965u, 1u)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.zwx, ~(~(~vec2<u32>(4294967295u, u_input.b.x))));
}

