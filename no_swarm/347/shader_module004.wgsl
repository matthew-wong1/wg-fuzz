struct Struct_1 {
    a: i32,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 10>;

var<private> global1: array<vec2<u32>, 21>;

var<private> global2: u32 = 108571u;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: u32) -> bool {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1 - -543f), _wgslsmith_f_op_f32(arg_1 * arg_0.c)) + 150f)), 468f, _wgslsmith_f_op_f32(max(-610f, arg_1)), arg_0.c);
    var var_1 = 0u;
    var_1 = 4294967295u;
    let var_2 = _wgslsmith_f_op_f32(ceil(423f));
    var var_3 = var_0.yxz;
    return all(vec2<bool>(false, true));
}

fn func_2() -> Struct_2 {
    let var_0 = u_input.e << (_wgslsmith_add_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(firstLeadingBit(u_input.b.x), _wgslsmith_sub_u32(4294967295u, 0u)), min(_wgslsmith_add_u32(u_input.d.x, u_input.e), u_input.d.x)), u_input.b.x ^ u_input.b.x) % 32u);
    let var_1 = u_input.c.x;
    let var_2 = vec2<u32>(1u, _wgslsmith_dot_vec2_u32(~vec2<u32>(3311u, 1u), global1[_wgslsmith_index_u32(31639u, 21u)])) ^ countOneBits(global1[_wgslsmith_index_u32(50647u, 21u)]);
    let var_3 = select(vec4<bool>(func_3(Struct_1(_wgslsmith_mod_i32(u_input.c.x, var_1), ~43618u, _wgslsmith_div_f32(107f, -164f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1287f), 1266f)), var_0), true, true, all(select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false), vec3<bool>(true, true, true), vec3<bool>(false, false, false)))), !vec4<bool>(true, all(vec3<bool>(true, true, true)), all(vec4<bool>(true, true, false, true)), any(vec3<bool>(false, false, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), !(all(vec3<bool>(false, false, true)) || all(vec2<bool>(true, false)))));
    global1 = array<vec2<u32>, 21>();
    return global0[_wgslsmith_index_u32(max(_wgslsmith_mod_u32(_wgslsmith_add_u32(var_0 << (0u % 32u), 31830u | u_input.a), ~abs(var_0)), 0u) << (_wgslsmith_sub_u32(9967u, var_2.x) % 32u), 10u)];
}

fn func_4(arg_0: vec3<u32>, arg_1: u32, arg_2: vec2<u32>, arg_3: Struct_3) -> Struct_3 {
    var var_0 = arg_3;
    global0 = array<Struct_2, 10>();
    global1 = array<vec2<u32>, 21>();
    var var_1 = select(var_0.b.xx, vec2<bool>(all(vec4<bool>(false, var_0.b.x && true, arg_3.b.x, var_0.b.x)), arg_3.b.x), all(vec3<bool>(!arg_3.b.x | arg_3.b.x, var_0.b.x, true && all(arg_3.b))));
    var var_2 = max(reverseBits(~vec4<u32>(~u_input.e, _wgslsmith_dot_vec2_u32(u_input.d.zx, var_0.a.a.ww), reverseBits(1u), _wgslsmith_add_u32(0u, 1u))), countOneBits(var_0.a.a));
    return arg_3;
}

fn func_1() -> Struct_1 {
    var var_0 = func_4(~vec3<u32>(1u, ~1u, _wgslsmith_add_u32(_wgslsmith_sub_u32(1u, u_input.d.x), ~u_input.e)), u_input.b.x, _wgslsmith_add_vec2_u32(vec2<u32>(~_wgslsmith_mult_u32(u_input.a, u_input.d.x), 110789u), vec2<u32>(u_input.d.x, ~(~1u))), Struct_3(func_2(), vec3<bool>(true, any(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), false)), true)));
    var var_1 = countOneBits(_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(-vec3<i32>(-1i, u_input.c.x, var_0.a.b.a) & (vec3<i32>(0i, u_input.c.x, u_input.c.x) >> (vec3<u32>(u_input.a, 4294967295u, 0u) % vec3<u32>(32u))), vec3<i32>(_wgslsmith_sub_i32(8370i, var_0.a.c.a), _wgslsmith_add_i32(u_input.c.x, 33349i), i32(-1i) * -3318i)), max(countOneBits(vec3<i32>(0i, var_0.a.c.a, -1i)), _wgslsmith_sub_vec3_i32(vec3<i32>(var_0.a.e.a, -46263i, var_0.a.c.a), vec3<i32>(var_0.a.b.a, var_0.a.e.a, -79005i)))));
    global1 = array<vec2<u32>, 21>();
    global1 = array<vec2<u32>, 21>();
    var var_2 = select(~abs(vec2<u32>(min(u_input.a, 38472u), 54606u)), ~(~(~select(var_0.a.a.zy, u_input.b, vec2<bool>(var_0.b.x, true)))), vec2<bool>(func_4(~var_0.a.a.zwz, 0u, vec2<u32>(~1u, firstTrailingBit(u_input.b.x)), Struct_3(var_0.a, func_4(var_0.a.a.zzx, 0u, vec2<u32>(0u, 1u), Struct_3(var_0.a, vec3<bool>(false, true, false))).b)).b.x, var_0.b.x));
    return var_0.a.b;
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2) -> Struct_1 {
    var var_0 = Struct_3(Struct_2(max(countOneBits(arg_2.a), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.b, arg_1.b, arg_2.c.b, 107940u), vec4<u32>(8042u, u_input.e, 25950u, 0u)) << (arg_2.a % vec4<u32>(32u))), func_2().d, func_4(arg_2.a.yzx, arg_2.b.b ^ arg_1.b, vec2<u32>(abs(7132u), 0u), func_4(vec3<u32>(1u, 5431u, arg_2.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.b, 4294967295u), u_input.b), countOneBits(vec2<u32>(arg_1.b, 39521u)), func_4(u_input.d, 1u, global1[_wgslsmith_index_u32(0u, 21u)], Struct_3(Struct_2(arg_2.a, arg_2.e, Struct_1(u_input.c.x, arg_2.a.x, arg_1.c), Struct_1(75472i, 1u, arg_2.e.c), arg_1), vec3<bool>(true, true, false))))).a.e, Struct_1(_wgslsmith_mult_i32(_wgslsmith_add_i32(arg_1.a, 2147483647i), arg_2.d.a & 1i), 4294967295u, arg_1.c), func_4(~select(u_input.d, vec3<u32>(u_input.a, 23181u, u_input.d.x), vec3<bool>(false, true, false)), u_input.b.x, min(global1[_wgslsmith_index_u32(arg_2.b.b, 21u)], vec2<u32>(1u, 4294967295u)) & min(vec2<u32>(u_input.b.x, 4525u), u_input.d.yz), Struct_3(arg_2, vec3<bool>(true, true, true))).a.c), vec3<bool>(true, true, arg_1.b < _wgslsmith_dot_vec3_u32(~vec3<u32>(45894u, 59600u, u_input.b.x), u_input.d)));
    var_0 = func_4(u_input.d, _wgslsmith_sub_u32(62353u, _wgslsmith_mod_u32(~select(arg_2.a.x, 0u, var_0.b.x), var_0.a.a.x)), _wgslsmith_mult_vec2_u32(reverseBits(u_input.d.zz), func_2().a.yy << ((_wgslsmith_sub_vec2_u32(global1[_wgslsmith_index_u32(72860u, 21u)], var_0.a.a.zx) >> (vec2<u32>(var_0.a.b.b, var_0.a.b.b) % vec2<u32>(32u))) % vec2<u32>(32u))), Struct_3(global0[_wgslsmith_index_u32(reverseBits(u_input.e), 10u)], vec3<bool>(!var_0.b.x, true, true)));
    let var_1 = var_0.a.c;
    global0 = array<Struct_2, 10>();
    let var_2 = !vec2<bool>(var_0.b.x, var_0.b.x);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(Struct_2(vec4<u32>(0u, _wgslsmith_clamp_u32(u_input.b.x, max(u_input.d.x, u_input.d.x), firstLeadingBit(24208u)), 4294967295u, 0u), func_5(-1000f, func_1(), func_2()), func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -195f) * _wgslsmith_f_op_f32(f32(-1f) * -1354f)), Struct_1(1i, _wgslsmith_sub_u32(u_input.d.x, 1u), _wgslsmith_f_op_f32(146f * -583f)), func_2()), Struct_1(u_input.c.x, max(u_input.a, _wgslsmith_clamp_u32(u_input.b.x, 0u, 0u)), -1879f), Struct_1(-1i, u_input.d.x, 1f)), vec3<bool>(false, func_4(~min(u_input.d, u_input.d), ~_wgslsmith_add_u32(u_input.d.x, u_input.a), ~_wgslsmith_sub_vec2_u32(u_input.d.zx, global1[_wgslsmith_index_u32(36617u, 21u)]), func_4(u_input.d | u_input.d, u_input.e, global1[_wgslsmith_index_u32(52660u, 21u)], func_4(u_input.d, 38698u, global1[_wgslsmith_index_u32(4294967295u, 21u)], Struct_3(global0[_wgslsmith_index_u32(u_input.a, 10u)], vec3<bool>(true, false, false))))).b.x, !func_3(func_4(vec3<u32>(4294967295u, 15927u, u_input.a), 4294967295u, vec2<u32>(20358u, 55602u), Struct_3(Struct_2(vec4<u32>(4294967295u, u_input.b.x, u_input.d.x, 9131u), Struct_1(29263i, u_input.e, 1222f), Struct_1(u_input.c.x, u_input.b.x, 1415f), Struct_1(u_input.c.x, 1u, -416f), Struct_1(u_input.c.x, u_input.e, 886f)), vec3<bool>(false, true, true))).a.e, 1986f, abs(4294967295u))));
    var var_1 = vec4<i32>(-22630i, max(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(abs(2147483647i), var_0.a.b.a), var_0.a.e.a, var_0.a.b.a), ~(-13386i) << (_wgslsmith_dot_vec4_u32(max(vec4<u32>(57138u, var_0.a.a.x, var_0.a.c.b, var_0.a.e.b), vec4<u32>(5460u, 40006u, 25868u, u_input.b.x)), var_0.a.a) % 32u)), _wgslsmith_dot_vec3_i32(vec3<i32>(func_5(_wgslsmith_f_op_f32(f32(-1f) * -1000f), Struct_1(2147483647i, u_input.e, -284f), Struct_2(vec4<u32>(var_0.a.a.x, 0u, u_input.b.x, var_0.a.d.b), Struct_1(-2147483647i, 24209u, -636f), Struct_1(-42307i, u_input.a, 1576f), Struct_1(-1i, var_0.a.b.b, var_0.a.e.c), var_0.a.d)).a, _wgslsmith_div_i32(~var_0.a.b.a, 1i), u_input.c.x), vec3<i32>(0i, -1i, func_1().a)), -51251i);
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.c.c, var_0.a.e.c)))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.d.c - var_0.a.d.c)), _wgslsmith_f_op_f32(f32(-1f) * -736f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.b.c, _wgslsmith_f_op_f32(var_0.a.c.c - var_0.a.b.c)))));
    var_0 = func_4(~_wgslsmith_clamp_vec3_u32(var_0.a.a.zyw, ~(~u_input.d), u_input.d), 1u, vec2<u32>(max(0u, 4294967295u) >> (var_0.a.d.b % 32u), 23843u) << (global1[_wgslsmith_index_u32(~(~(~u_input.d.x)), 21u)] % vec2<u32>(32u)), func_4(vec3<u32>(func_1().b, func_1().b, _wgslsmith_mod_u32(51344u, reverseBits(16927u))), 25424u, vec2<u32>(_wgslsmith_mod_u32(4294967295u, 1u), _wgslsmith_sub_u32(4294967295u, var_0.a.b.b)), Struct_3(func_4(vec3<u32>(var_0.a.d.b, 4294967295u, 9676u), 14592u, abs(vec2<u32>(var_0.a.a.x, var_0.a.d.b)), func_4(var_0.a.a.xxx, 0u, global1[_wgslsmith_index_u32(u_input.a, 21u)], Struct_3(Struct_2(var_0.a.a, Struct_1(2147483647i, u_input.d.x, var_0.a.e.c), var_0.a.c, Struct_1(-2147483647i, 1u, var_2.x), var_0.a.b), var_0.b))).a, !vec3<bool>(false, var_0.b.x, true))));
    var_2 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1000f, -1000f)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(i32(-1i) * -_wgslsmith_div_i32(u_input.c.x, -64026i), -1i, var_1.x >> (_wgslsmith_mod_u32(u_input.e, var_0.a.e.b) % 32u)));
}

