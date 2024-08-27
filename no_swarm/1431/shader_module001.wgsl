struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec2<i32>(31791i, -1i), vec4<i32>(-29449i, 60030i, 45316i, -14680i)), Struct_1(vec2<i32>(-32629i, 2147483647i), vec4<i32>(20110i, 1i, 0i, 66879i)), Struct_1(vec2<i32>(0i, -7868i), vec4<i32>(15898i, -31738i, 1i, 12647i)), Struct_1(vec2<i32>(-53800i, 60494i), vec4<i32>(i32(-2147483648), -13694i, 22803i, 2147483647i)), Struct_1(vec2<i32>(0i, 11601i), vec4<i32>(50651i, -9312i, 0i, -1i)), Struct_1(vec2<i32>(-22871i, -1i), vec4<i32>(-39395i, 2147483647i, 1i, i32(-2147483648))), Struct_1(vec2<i32>(-20969i, -6167i), vec4<i32>(-1i, -11751i, -1i, i32(-2147483648))), Struct_1(vec2<i32>(0i, 2147483647i), vec4<i32>(2147483647i, 2147483647i, -1i, 0i)), Struct_1(vec2<i32>(-5645i, 2147483647i), vec4<i32>(2147483647i, 2147483647i, -44163i, 49758i)), Struct_1(vec2<i32>(26733i, -1i), vec4<i32>(-36557i, 12184i, -1i, 0i)), Struct_1(vec2<i32>(19684i, 1743i), vec4<i32>(15396i, 10830i, -91703i, 2147483647i)), Struct_1(vec2<i32>(46296i, i32(-2147483648)), vec4<i32>(-19409i, 11359i, 9202i, 2147483647i)), Struct_1(vec2<i32>(-77601i, 18128i), vec4<i32>(59259i, -1i, 0i, 3739i)), Struct_1(vec2<i32>(-52674i, -25584i), vec4<i32>(2147483647i, -1i, -93661i, 1i)), Struct_1(vec2<i32>(16663i, i32(-2147483648)), vec4<i32>(0i, 2147483647i, -7013i, 2147483647i)), Struct_1(vec2<i32>(0i, 50272i), vec4<i32>(-1i, 0i, i32(-2147483648), -1i)), Struct_1(vec2<i32>(i32(-2147483648), 0i), vec4<i32>(2147483647i, 1i, -30389i, -18474i)), Struct_1(vec2<i32>(25565i, 1i), vec4<i32>(-7292i, -1i, -5800i, -29589i)), Struct_1(vec2<i32>(25700i, -39703i), vec4<i32>(-1i, -15650i, 4218i, 1i)), Struct_1(vec2<i32>(-2728i, 2147483647i), vec4<i32>(-13226i, 2147483647i, 1i, 1i)), Struct_1(vec2<i32>(-46422i, i32(-2147483648)), vec4<i32>(-44396i, 7172i, -56035i, -33228i)), Struct_1(vec2<i32>(0i, 1i), vec4<i32>(-24579i, 28012i, -21572i, 76315i)), Struct_1(vec2<i32>(1i, 339i), vec4<i32>(-2755i, 2147483647i, i32(-2147483648), 65849i)), Struct_1(vec2<i32>(4592i, -1i), vec4<i32>(i32(-2147483648), 882i, 2147483647i, 16455i)), Struct_1(vec2<i32>(-5674i, -1i), vec4<i32>(1i, -40386i, -38300i, -1i)), Struct_1(vec2<i32>(13648i, 1i), vec4<i32>(0i, 2147483647i, 35405i, 27478i)), Struct_1(vec2<i32>(i32(-2147483648), 14533i), vec4<i32>(2147483647i, i32(-2147483648), 2147483647i, -24567i)), Struct_1(vec2<i32>(81543i, 1i), vec4<i32>(0i, 23004i, 3211i, i32(-2147483648))), Struct_1(vec2<i32>(-18909i, -964i), vec4<i32>(1i, 28476i, -26072i, 48819i)), Struct_1(vec2<i32>(11966i, 7983i), vec4<i32>(28141i, 2147483647i, i32(-2147483648), 2147483647i)), Struct_1(vec2<i32>(22706i, -17965i), vec4<i32>(2147483647i, -1i, i32(-2147483648), 0i)), Struct_1(vec2<i32>(-1i, -26580i), vec4<i32>(33708i, -205i, -1i, -5751i)));

var<private> global1: u32 = 73470u;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: i32, arg_3: bool) -> u32 {
    global1 = u_input.a;
    global0 = array<Struct_1, 32>();
    global0 = array<Struct_1, 32>();
    var var_0 = reverseBits(_wgslsmith_mod_vec4_i32(-vec4<i32>(arg_2, 2147483647i, u_input.c, 8680i) ^ vec4<i32>(~2147483647i, reverseBits(arg_2), abs(u_input.d), -2147483647i), (vec4<i32>(arg_2, arg_2, u_input.c, u_input.c) >> (u_input.b % vec4<u32>(32u))) & max(vec4<i32>(-1i, 3023i, -31437i, arg_2), select(vec4<i32>(u_input.d, -42335i, 2147483647i, u_input.c), vec4<i32>(arg_2, arg_2, arg_2, u_input.d), vec4<bool>(true, false, arg_3, true)))));
    let var_1 = Struct_2(vec3<bool>(true, false, arg_1.x), global0[_wgslsmith_index_u32(u_input.a, 32u)]);
    return arg_0.x;
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<u32>, arg_2: Struct_2) -> vec4<bool> {
    global1 = ~arg_1.x;
    global1 = _wgslsmith_clamp_u32(arg_1.x, ~59808u, func_3(~(~(~vec2<u32>(37607u, 1u))), arg_2.a, abs(-81621i), false));
    global0 = array<Struct_1, 32>();
    global1 = _wgslsmith_sub_u32(_wgslsmith_sub_u32(select(~114842u, _wgslsmith_mult_u32(_wgslsmith_mod_u32(40670u, arg_1.x), ~46426u), true), 1u), 44377u);
    return vec4<bool>(arg_2.a.x, true, any(vec2<bool>(!select(true, arg_2.a.x, arg_2.a.x), true && all(vec4<bool>(arg_2.a.x, arg_2.a.x, arg_2.a.x, true)))), arg_2.a.x);
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: vec3<u32>) -> Struct_1 {
    let var_0 = func_4(_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_div_i32(arg_1, ~(-26245i)), ~1i, (u_input.d & -66293i) ^ arg_1), -vec3<i32>(-24971i, arg_1 << (61047u % 32u), 1i)), vec3<u32>(~0u | u_input.a, 11765u, arg_2.x), Struct_2(!vec3<bool>(true, true, all(vec2<bool>(true, true))), global0[_wgslsmith_index_u32(~abs(func_3(u_input.b.wx, vec3<bool>(false, true, false), u_input.d, false)), 32u)]));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, arg_0, -381f, -330f), vec4<f32>(arg_0, 211f, 415f, 389f), true)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(2125f, 1022f, 1000f, 1243f))))));
    var var_2 = var_0.x;
    let var_3 = max(_wgslsmith_mod_vec2_u32(arg_2.yz, vec2<u32>(firstLeadingBit(arg_2.x), 45083u)), vec2<u32>(firstTrailingBit(arg_2.x & arg_2.x), func_3(arg_2.yz, var_0.zwy, ~1232i, any(var_0)))) & u_input.b.xw;
    let var_4 = Struct_2(func_4(~vec3<i32>(1i, ~arg_1, firstLeadingBit(u_input.d)), vec3<u32>(_wgslsmith_div_u32(1u, abs(1u)), 1u, abs(u_input.a)), Struct_2(func_4(vec3<i32>(arg_1, arg_1, 0i), ~arg_2, Struct_2(var_0.wzy, global0[_wgslsmith_index_u32(arg_2.x, 32u)])).wxy, global0[_wgslsmith_index_u32(var_3.x, 32u)])).wyw, global0[_wgslsmith_index_u32(arg_2.x, 32u)]);
    return global0[_wgslsmith_index_u32(0u, 32u)];
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_2) -> vec4<bool> {
    global1 = 74281u;
    global0 = array<Struct_1, 32>();
    global1 = 0u;
    var var_0 = -1604f;
    let var_1 = arg_2.b.b.x;
    return !vec4<bool>(arg_2.a.x, true, false, any(vec2<bool>(true, true)));
}

fn func_1() -> StorageBuffer {
    var var_0 = select(func_5(_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.b.xz, u_input.b.zx), ~_wgslsmith_sub_vec2_u32(vec2<u32>(3629u, u_input.a), u_input.b.ww)), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(556f, 540f))), u_input.c, countOneBits(u_input.b.yzy)), Struct_2(vec3<bool>(true, true, true), func_2(_wgslsmith_f_op_f32(536f + -868f), _wgslsmith_sub_i32(32672i, 3515i), u_input.b.yzw))), vec4<bool>(true, any(vec2<bool>(true, true)) && true, true, false), !any(select(vec2<bool>(true, false), vec2<bool>(true, true), u_input.c != u_input.c)));
    var var_1 = Struct_2(select(var_0.zyy, var_0.zzz, any(var_0.wy)), Struct_1(abs(countOneBits(vec2<i32>(10781i, u_input.c))), select(-vec4<i32>(1i, -45602i, u_input.c, u_input.d) | ~vec4<i32>(u_input.d, -56171i, 10201i, u_input.c), -min(vec4<i32>(u_input.d, u_input.c, u_input.d, 2147483647i), vec4<i32>(-55139i, 22046i, 41382i, u_input.d)), var_0.x || (-13565i >= u_input.d))));
    var_0 = select(select(vec4<bool>(true, !func_4(vec3<i32>(var_1.b.b.x, 2147483647i, u_input.c), u_input.b.yyw, Struct_2(var_1.a, var_1.b)).x, true, true), select(!(!vec4<bool>(var_0.x, true, var_1.a.x, var_1.a.x)), vec4<bool>(var_1.a.x, u_input.b.x < 5868u, false, var_0.x), true), !all(var_0.xxx) && all(!vec3<bool>(var_0.x, false, var_1.a.x))), select(vec4<bool>(all(vec4<bool>(var_1.a.x, var_0.x, var_1.a.x, var_0.x)), var_0.x, var_0.x, true), select(func_5(~u_input.b.zx, Struct_1(var_1.b.a, vec4<i32>(-1i, 16930i, -2485i, var_1.b.a.x)), Struct_2(vec3<bool>(var_0.x, var_0.x, var_0.x), Struct_1(vec2<i32>(40638i, -2147483647i), var_1.b.b))), select(vec4<bool>(false, var_1.a.x, var_0.x, var_1.a.x), vec4<bool>(var_0.x, var_1.a.x, true, true), !vec4<bool>(var_0.x, var_1.a.x, false, true)), true), func_4(-countOneBits(vec3<i32>(1i, u_input.d, u_input.d)), u_input.b.yzy, Struct_2(vec3<bool>(true, true, var_0.x), var_1.b))), false);
    let var_2 = Struct_2(var_1.a, var_1.b);
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(1f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -575f))))) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(386f, -393f))))), vec2<f32>(_wgslsmith_f_op_f32(ceil(-255f)), _wgslsmith_f_op_f32(301f - -637f)), vec2<bool>(true, u_input.b.x < u_input.a))))));
    return StorageBuffer(firstTrailingBit(firstLeadingBit(u_input.d)), u_input.a, ~vec4<u32>(u_input.a, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, 31455u), select(u_input.b.wx, u_input.b.ww, true)), _wgslsmith_add_u32(u_input.a & u_input.b.x, u_input.a), ~u_input.b.x), firstLeadingBit(vec4<u32>((u_input.b.x | 0u) | u_input.b.x, u_input.b.x, ~(~u_input.b.x), 0u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 32>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
    let var_1 = abs(select(vec3<i32>(~(~2147483647i), -countOneBits(u_input.d), -2147483647i), firstLeadingBit(vec3<i32>(0i, u_input.d | 2147483647i, u_input.d)), false));
    global1 = 0u;
    let x = u_input.a;
    s_output = func_1();
}

