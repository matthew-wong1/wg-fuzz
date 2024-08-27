struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
    c: bool,
    d: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct Struct_5 {
    a: Struct_4,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(-9804i, Struct_1(vec2<f32>(836f, 442f), 1i, vec2<i32>(-14084i, 12379i))), Struct_2(-1i, Struct_1(vec2<f32>(666f, 812f), 7664i, vec2<i32>(2147483647i, -17546i))), Struct_2(27735i, Struct_1(vec2<f32>(-985f, -1000f), 2104i, vec2<i32>(0i, -61376i))), Struct_2(1616i, Struct_1(vec2<f32>(146f, -1699f), 42406i, vec2<i32>(-48011i, -55389i))), Struct_2(-35524i, Struct_1(vec2<f32>(-1226f, -827f), 1i, vec2<i32>(-10917i, i32(-2147483648)))), Struct_2(-16072i, Struct_1(vec2<f32>(-1577f, 665f), i32(-2147483648), vec2<i32>(0i, -22339i))), Struct_2(-1i, Struct_1(vec2<f32>(-1117f, -370f), 35091i, vec2<i32>(-555i, -9156i))), Struct_2(i32(-2147483648), Struct_1(vec2<f32>(1000f, 940f), 44740i, vec2<i32>(-1i, 2147483647i))), Struct_2(-21500i, Struct_1(vec2<f32>(-349f, 1168f), i32(-2147483648), vec2<i32>(2583i, 41855i))), Struct_2(-1i, Struct_1(vec2<f32>(-212f, -295f), 5015i, vec2<i32>(-25563i, 10008i))), Struct_2(2147483647i, Struct_1(vec2<f32>(1000f, 480f), 2147483647i, vec2<i32>(14742i, 0i))), Struct_2(-1479i, Struct_1(vec2<f32>(-258f, -126f), i32(-2147483648), vec2<i32>(27590i, -1i))), Struct_2(26824i, Struct_1(vec2<f32>(-2140f, -1356f), 5168i, vec2<i32>(-45849i, i32(-2147483648)))), Struct_2(5165i, Struct_1(vec2<f32>(-1126f, 604f), 1i, vec2<i32>(-14620i, -61230i))), Struct_2(15856i, Struct_1(vec2<f32>(407f, -380f), 1i, vec2<i32>(-66299i, -13107i))), Struct_2(-27225i, Struct_1(vec2<f32>(963f, -709f), 2147483647i, vec2<i32>(13427i, 0i))), Struct_2(-49794i, Struct_1(vec2<f32>(962f, 660f), 65688i, vec2<i32>(2147483647i, 14779i))), Struct_2(-1i, Struct_1(vec2<f32>(1387f, 233f), 1i, vec2<i32>(i32(-2147483648), 4006i))), Struct_2(51927i, Struct_1(vec2<f32>(-899f, 246f), 54973i, vec2<i32>(0i, -23932i))), Struct_2(25174i, Struct_1(vec2<f32>(634f, -220f), 42097i, vec2<i32>(1i, 1i))), Struct_2(0i, Struct_1(vec2<f32>(851f, -1139f), -1i, vec2<i32>(-1i, -13189i))), Struct_2(0i, Struct_1(vec2<f32>(-1193f, 592f), 42387i, vec2<i32>(25179i, i32(-2147483648)))), Struct_2(i32(-2147483648), Struct_1(vec2<f32>(-414f, -186f), -38768i, vec2<i32>(-1i, -1i))), Struct_2(-682i, Struct_1(vec2<f32>(-771f, 1093f), 0i, vec2<i32>(0i, -52532i))), Struct_2(39401i, Struct_1(vec2<f32>(769f, 1208f), -17905i, vec2<i32>(-34120i, 45192i))), Struct_2(-12364i, Struct_1(vec2<f32>(1000f, 1000f), 49061i, vec2<i32>(1i, 36270i))), Struct_2(-1i, Struct_1(vec2<f32>(283f, -997f), -5941i, vec2<i32>(33358i, -15211i))), Struct_2(1i, Struct_1(vec2<f32>(224f, 1092f), -30473i, vec2<i32>(20034i, 2147483647i))), Struct_2(0i, Struct_1(vec2<f32>(-1634f, 1000f), 24441i, vec2<i32>(2147483647i, -35597i))), Struct_2(-25585i, Struct_1(vec2<f32>(-225f, -430f), 14494i, vec2<i32>(74966i, -1i))), Struct_2(-21740i, Struct_1(vec2<f32>(1084f, 1781f), -65703i, vec2<i32>(2147483647i, 48822i))));

var<private> global1: array<Struct_4, 5>;

var<private> global2: array<u32, 3> = array<u32, 3>(64199u, 4294967295u, 4294967295u);

var<private> global3: u32;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<bool>) -> i32 {
    return 1i;
}

fn func_2() -> i32 {
    let var_0 = global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 3u)], 5u)];
    global2 = array<u32, 3>();
    let var_1 = vec2<bool>(true, true);
    var var_2 = (~func_3(!vec4<bool>(var_1.x, true, true, var_1.x)) << (var_0.b.x % 32u)) | u_input.c.x;
    global3 = _wgslsmith_add_u32(4294967295u, _wgslsmith_mult_u32(~firstTrailingBit(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 3u)], 3u)]), var_0.b.x) << (34128u % 32u));
    return u_input.b;
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<i32>) -> Struct_4 {
    global2 = array<u32, 3>();
    let var_0 = global1[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(1u, 3u)], 5u)];
    var var_1 = ~vec3<u32>(~global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(max(var_0.b, vec3<u32>(92858u, var_0.b.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 3u)], 3u)])), ~var_0.b), 3u)], var_0.b.x, 3008u);
    var var_2 = global0[_wgslsmith_index_u32(abs(2814u), 31u)];
    var var_3 = Struct_1(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.b.a.x - 2290f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(649f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1162f + 102f)))), _wgslsmith_mod_i32(~arg_0.x, max(u_input.b, 62823i)), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, firstTrailingBit(var_0.a.x)), -vec2<i32>(1i, 1i)) ^ min(vec2<i32>(var_0.a.x, -var_2.a), u_input.c));
    return Struct_4(countOneBits(vec2<i32>(-1i) * -(var_2.b.c & vec2<i32>(var_2.a, var_0.a.x))), min(~(~_wgslsmith_add_vec3_u32(vec3<u32>(var_1.x, var_0.b.x, 67080u), var_0.b)), _wgslsmith_mod_vec3_u32(vec3<u32>(48685u >> (global2[_wgslsmith_index_u32(var_0.b.x, 3u)] % 32u), ~0u, 4294967295u), var_0.b)));
}

fn func_1(arg_0: vec4<bool>) -> Struct_4 {
    let var_0 = arg_0.yw;
    let var_1 = 0u;
    let var_2 = u_input.c.x;
    return func_4(vec3<i32>(_wgslsmith_div_i32(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -2147483647i, u_input.b, u_input.a), vec4<i32>(41816i, var_2, 0i, -1i))), func_2(), -_wgslsmith_sub_i32(-1i, -2147483647i)) & vec3<i32>(74554i, ~(-2147483647i ^ var_2), 4081i), _wgslsmith_clamp_vec3_i32(~(~_wgslsmith_mult_vec3_i32(vec3<i32>(0i, -2147483647i, u_input.c.x), vec3<i32>(13655i, -16592i, var_2))), ~abs(-vec3<i32>(6300i, -1842i, var_2)), vec3<i32>(-1i) * -_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, u_input.c.x, u_input.c.x), vec3<i32>(u_input.a, u_input.a, 1i))));
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: u32) -> Struct_4 {
    let var_0 = abs(1u);
    global3 = _wgslsmith_mult_u32(abs(~(~(~30483u))), 0u);
    let var_1 = vec4<bool>(arg_0.x, any(!(!select(vec3<bool>(true, true, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, false), arg_0.x))), arg_0.x, !arg_0.x);
    global1 = array<Struct_4, 5>();
    var var_2 = any(!(!select(var_1, vec4<bool>(var_1.x, var_1.x, false, true), arg_0.x))) && (-8044i < _wgslsmith_div_i32(u_input.a, firstTrailingBit(countOneBits(6704i))));
    return func_1(select(var_1, !vec4<bool>(true, false, true && arg_0.x, arg_1.a.x > u_input.c.x), var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(func_5(vec2<bool>(true, true), func_1(vec4<bool>(all(vec3<bool>(false, false, true)), false, true, true)), ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~abs(4294967295u), 3u)], 3u)]), false);
    let var_1 = Struct_4(_wgslsmith_mult_vec2_i32(-(~vec2<i32>(2147483647i, u_input.a)), vec2<i32>(u_input.b << (1u % 32u), -1i)), func_1(vec4<bool>(!var_0.b, true, select(var_0.b, var_0.b, var_0.b), true)).b);
    let var_2 = var_0;
    var var_3 = _wgslsmith_add_u32(var_2.a.b.x, _wgslsmith_dot_vec4_u32((reverseBits(vec4<u32>(4294967295u, var_0.a.b.x, 1u, 48581u)) ^ vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(59642u, 3u)], 3u)], 3u)], 4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(45597u, 3u)], 3u)], 84249u)) << (vec4<u32>(var_1.b.x, 39501u, var_2.a.b.x | 3899u, ~var_1.b.x) % vec4<u32>(32u)), abs(vec4<u32>(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 9086u, 1u, 97678u), vec4<u32>(var_0.a.b.x, var_0.a.b.x, var_1.b.x, var_0.a.b.x)), ~var_2.a.b.x, _wgslsmith_dot_vec2_u32(var_1.b.zy, vec2<u32>(66130u, 88751u))))));
    global3 = var_1.b.x;
    var var_4 = Struct_5(Struct_4(u_input.c, abs(vec3<u32>(~var_1.b.x, global2[_wgslsmith_index_u32(var_2.a.b.x, 3u)] | 1u, ~18656u))), any(select(!(!vec4<bool>(false, var_0.b, var_2.b, var_0.b)), vec4<bool>(var_2.b, true, true, 26413u == var_1.b.x), !select(vec4<bool>(var_0.b, var_0.b, var_0.b, false), vec4<bool>(true, true, var_0.b, var_0.b), false))));
    global0 = array<Struct_2, 31>();
    global3 = ~var_2.a.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.xx, ~(~_wgslsmith_clamp_vec3_u32(~var_1.b, vec3<u32>(1u, global2[_wgslsmith_index_u32(var_2.a.b.x, 3u)], global2[_wgslsmith_index_u32(var_2.a.b.x, 3u)]), ~var_1.b)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(max(1422f, 112f)), -208f, 256f, 1f), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1731f), 583f, _wgslsmith_f_op_f32(f32(-1f) * -171f), -1141f))), vec4<f32>(1f, 1f, 1f, 1f)), global2[_wgslsmith_index_u32(min(var_0.a.b.x, _wgslsmith_div_u32(32459u, func_4(vec3<i32>(var_4.a.a.x, var_4.a.a.x, -13478i) >> (var_4.a.b % vec3<u32>(32u)), -vec3<i32>(23230i, var_4.a.a.x, -8154i)).b.x)), 3u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(721f, -1366f, 1162f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(706f, 1986f, 306f) + vec3<f32>(-189f, -1586f, 700f))))));
}

