struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<i32>,
    d: u32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 3> = array<i32, 3>(-9041i, 2147483647i, 0i);

var<private> global1: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(true, 1529f, vec3<i32>(2147483647i, 46692i, 53173i), 1u, vec4<i32>(15559i, 17104i, -43949i, 6603i)), Struct_1(true, -1458f, vec3<i32>(14639i, 2147483647i, 9748i), 0u, vec4<i32>(0i, 13385i, 34847i, 30293i)), Struct_1(false, -311f, vec3<i32>(-12703i, -1i, -37005i), 37183u, vec4<i32>(12476i, -1i, -22447i, -58315i)), Struct_1(false, 337f, vec3<i32>(-2851i, 3179i, 0i), 55344u, vec4<i32>(0i, 23331i, -1i, 1i)), Struct_1(true, -1380f, vec3<i32>(67990i, -1i, 14442i), 30660u, vec4<i32>(2147483647i, 1i, 1i, 0i)), Struct_1(false, 1000f, vec3<i32>(15555i, 2147483647i, i32(-2147483648)), 41142u, vec4<i32>(-1i, 2147483647i, 46128i, 1i)), Struct_1(false, 129f, vec3<i32>(-52060i, 1i, 7082i), 37414u, vec4<i32>(-1i, 23371i, -45462i, 23016i)), Struct_1(false, 1000f, vec3<i32>(-1i, 2147483647i, 0i), 34956u, vec4<i32>(i32(-2147483648), 33367i, -1i, -54812i)), Struct_1(false, -772f, vec3<i32>(27988i, 2147483647i, -1i), 27933u, vec4<i32>(i32(-2147483648), -80221i, -72669i, 0i)), Struct_1(false, -2111f, vec3<i32>(-10214i, 1i, 0i), 1u, vec4<i32>(-45627i, 0i, 0i, 1i)), Struct_1(true, 1513f, vec3<i32>(-1i, -1i, -18148i), 16492u, vec4<i32>(i32(-2147483648), i32(-2147483648), -19311i, -1i)), Struct_1(false, 1542f, vec3<i32>(49089i, 2147483647i, -69730i), 1u, vec4<i32>(1i, -13535i, 2147483647i, 1i)), Struct_1(true, 543f, vec3<i32>(-20628i, i32(-2147483648), 0i), 59591u, vec4<i32>(1i, 7019i, 19182i, -26583i)), Struct_1(false, -1152f, vec3<i32>(i32(-2147483648), i32(-2147483648), -1i), 33556u, vec4<i32>(0i, 0i, i32(-2147483648), -1i)), Struct_1(true, 405f, vec3<i32>(1i, i32(-2147483648), 25217i), 1u, vec4<i32>(i32(-2147483648), -29117i, 7023i, i32(-2147483648))), Struct_1(false, -593f, vec3<i32>(-32860i, i32(-2147483648), -6123i), 3148u, vec4<i32>(9185i, i32(-2147483648), -15026i, -28908i)), Struct_1(true, -1232f, vec3<i32>(36029i, -3053i, 10010i), 4294967295u, vec4<i32>(-1i, -4119i, 0i, -75814i)), Struct_1(false, 571f, vec3<i32>(33423i, -18359i, 23567i), 17984u, vec4<i32>(i32(-2147483648), i32(-2147483648), 1i, 0i)), Struct_1(true, 1421f, vec3<i32>(0i, 1i, 1i), 18232u, vec4<i32>(i32(-2147483648), -25175i, -7269i, 2147483647i)), Struct_1(true, -739f, vec3<i32>(-1i, 27311i, 7236i), 0u, vec4<i32>(13580i, 2147483647i, 2147483647i, 37460i)), Struct_1(false, 177f, vec3<i32>(-6238i, 1i, 57727i), 4294967295u, vec4<i32>(2147483647i, i32(-2147483648), 959i, i32(-2147483648))), Struct_1(false, 952f, vec3<i32>(31885i, 23276i, -1i), 0u, vec4<i32>(i32(-2147483648), 1i, -13031i, 2147483647i)), Struct_1(true, -580f, vec3<i32>(2147483647i, 31496i, i32(-2147483648)), 84975u, vec4<i32>(-15071i, 2147483647i, -16270i, -1147i)), Struct_1(true, -1202f, vec3<i32>(-56131i, -30314i, i32(-2147483648)), 1u, vec4<i32>(-1i, -52394i, 28188i, -37076i)), Struct_1(true, 928f, vec3<i32>(1i, 2147483647i, i32(-2147483648)), 1140u, vec4<i32>(-53012i, 43752i, 8870i, -12911i)), Struct_1(false, -505f, vec3<i32>(2147483647i, 1i, 1i), 1u, vec4<i32>(2147483647i, 1i, -1i, -1i)), Struct_1(false, -518f, vec3<i32>(1i, i32(-2147483648), i32(-2147483648)), 52825u, vec4<i32>(-53240i, -34714i, -6475i, 1i)), Struct_1(true, -382f, vec3<i32>(-6613i, 2147483647i, -15294i), 73710u, vec4<i32>(37862i, 23297i, -3648i, -25680i)), Struct_1(true, 1719f, vec3<i32>(i32(-2147483648), 6422i, 2147483647i), 4294967295u, vec4<i32>(1i, 0i, 37876i, 0i)), Struct_1(false, -783f, vec3<i32>(i32(-2147483648), 1i, -7294i), 0u, vec4<i32>(1i, 852i, 8174i, 18447i)), Struct_1(true, -755f, vec3<i32>(-1i, 74832i, 34636i), 7038u, vec4<i32>(i32(-2147483648), i32(-2147483648), 0i, -31014i)));

var<private> global2: array<bool, 3>;

var<private> global3: array<u32, 8> = array<u32, 8>(0u, 21536u, 0u, 4294967295u, 29576u, 22028u, 1u, 48682u);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> vec3<bool> {
    global1 = array<Struct_1, 31>();
    return vec3<bool>(global2[_wgslsmith_index_u32(1u, 3u)], false, !arg_1.a);
}

fn func_3(arg_0: i32) -> u32 {
    var var_0 = !global2[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a, 0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 8u)], 8u)], 0u), ~vec4<u32>(12250u, 66578u, 0u, u_input.a)), select(select(vec4<u32>(60116u, 0u, 65732u, 66518u), vec4<u32>(65320u, 4294967295u, 196u, u_input.a), vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 3u)], false, true, false)), vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 8u)], 8u)], global3[_wgslsmith_index_u32(u_input.a, 8u)], 4294967295u, global3[_wgslsmith_index_u32(1728u, 8u)]), select(vec4<bool>(true, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 8u)], 3u)], global2[_wgslsmith_index_u32(u_input.a, 3u)], false), vec4<bool>(true, false, global2[_wgslsmith_index_u32(48442u, 3u)], true), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 3u)], true, global2[_wgslsmith_index_u32(4294967295u, 3u)], global2[_wgslsmith_index_u32(13212u, 3u)]))))), 3u)];
    var var_1 = Struct_1(!(global3[_wgslsmith_index_u32(u_input.a >> (90020u % 32u), 8u)] <= firstTrailingBit(u_input.a | 0u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-489f)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-1781f))))), firstLeadingBit(firstTrailingBit(vec3<i32>(u_input.b, arg_0, -1505i))) | ~firstLeadingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_0, -2147483647i, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(8152u, 8u)], 3u)]), u_input.c.yxx)), 5485u, vec4<i32>(-1i, 0i, select(global0[_wgslsmith_index_u32(max(_wgslsmith_dot_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(u_input.a, 8u)], 0u), vec2<u32>(17781u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(43608u, 8u)], 8u)])), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, u_input.a), 8u)]), 3u)], _wgslsmith_clamp_i32(14048i, 2147483647i, -1i) & ~arg_0, false), u_input.c.x >> (52871u % 32u)));
    var var_2 = global1[_wgslsmith_index_u32(u_input.a, 31u)];
    let var_3 = _wgslsmith_div_u32(var_1.d, ~_wgslsmith_div_u32(u_input.a, firstLeadingBit(var_2.d)) ^ var_1.d);
    let var_4 = Struct_1(!all(select(vec2<bool>(true, true), !vec2<bool>(var_2.a, var_2.a), any(vec2<bool>(false, global2[_wgslsmith_index_u32(var_1.d, 3u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(474f + _wgslsmith_div_f32(var_2.b, _wgslsmith_f_op_f32(floor(var_2.b)))) - _wgslsmith_f_op_f32(-var_2.b)), ~vec3<i32>(min(_wgslsmith_dot_vec3_i32(u_input.c.zyz, vec3<i32>(var_2.c.x, -2147483647i, global0[_wgslsmith_index_u32(var_3, 3u)])), -2147483647i), var_2.e.x, 1i), global3[_wgslsmith_index_u32(~min(_wgslsmith_add_u32(_wgslsmith_sub_u32(1u, 1u), ~12755u), 2047u), 8u)], -var_1.e);
    return _wgslsmith_dot_vec2_u32(max(~(~vec2<u32>(19418u, global3[_wgslsmith_index_u32(u_input.a, 8u)])), _wgslsmith_sub_vec2_u32(vec2<u32>(17227u, var_2.d), ~firstLeadingBit(vec2<u32>(31540u, var_4.d)))), select(firstTrailingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(var_1.d, u_input.a), vec2<u32>(13789u, 1u)) ^ vec2<u32>(35781u, 0u)), min(vec2<u32>(min(67526u, 115786u), 0u), reverseBits(~vec2<u32>(7449u, 4294967295u))), func_1(_wgslsmith_f_op_f32(-var_4.b), Struct_1(var_1.a || false, _wgslsmith_div_f32(var_1.b, -810f), vec3<i32>(28398i, arg_0, arg_0), 13250u, abs(var_4.e))).zy));
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: vec3<i32>, arg_3: u32) -> vec4<u32> {
    let var_0 = Struct_1(!global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(global3[_wgslsmith_index_u32(arg_3, 8u)], 19462u, arg_3, u_input.a)), vec4<u32>(select(5738u, 1u, true), u_input.a << (25337u % 32u), 4294967295u, u_input.a)), 3u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(314f))))), _wgslsmith_div_vec3_i32(vec3<i32>(-global0[_wgslsmith_index_u32(~arg_3, 3u)], 0i, global0[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(1u, 8u)], 3u)] << (_wgslsmith_add_u32(u_input.a, 0u) % 32u)), vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(-10374i, u_input.c.x, -2147483647i), ~arg_0), 2147483647i, u_input.c.x)), _wgslsmith_add_u32(~_wgslsmith_div_u32(1u, ~0u), _wgslsmith_add_u32(_wgslsmith_div_u32(1u, 4294967295u), reverseBits(_wgslsmith_mod_u32(u_input.a, arg_3)))), u_input.c);
    var var_1 = global1[_wgslsmith_index_u32(func_3(_wgslsmith_add_i32(~arg_2.x, _wgslsmith_sub_i32(abs(arg_1), ~(22274i >> (var_0.d % 32u))))), 31u)];
    let var_2 = global1[_wgslsmith_index_u32(1u, 31u)];
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1483f);
    return vec4<u32>(~(~var_1.d), select(var_2.d, (var_0.d << (_wgslsmith_div_u32(1u, 24696u) % 32u)) | reverseBits(~0u), var_1.a), _wgslsmith_dot_vec3_u32(~vec3<u32>(reverseBits(u_input.a), ~var_1.d, u_input.a), vec3<u32>(11533u, var_0.d, select(_wgslsmith_sub_u32(var_0.d, var_2.d), ~u_input.a, var_0.a))), reverseBits(u_input.a) | var_0.d);
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<u32>) -> StorageBuffer {
    let var_0 = Struct_1(false, 930f, -abs(~u_input.c.zyy), max(44160u, ~arg_1.x), u_input.c);
    global0 = array<i32, 3>();
    var var_1 = Struct_1(var_0.a, _wgslsmith_f_op_f32(852f - _wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -269f))))), countOneBits(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 13797i, 17750i), vec3<i32>(var_0.e.x, 1i, -1609i)) & -1i, max(_wgslsmith_mult_i32(-2147483647i, u_input.c.x), firstLeadingBit(global0[_wgslsmith_index_u32(6450u, 3u)])), firstTrailingBit(global0[_wgslsmith_index_u32(34505u, 3u)]))), min(global3[_wgslsmith_index_u32(~(arg_1.x << (20532u % 32u)), 8u)], _wgslsmith_mult_u32(1u, var_0.d)) & 9627u, vec4<i32>(-2147483647i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -2147483647i), vec2<i32>(u_input.b, -2147483647i)), ~abs(-u_input.c.x), 2147483647i));
    let var_2 = global2[_wgslsmith_index_u32(~0u, 3u)];
    global3 = array<u32, 8>();
    return StorageBuffer(_wgslsmith_dot_vec2_u32(arg_1.xz, ~vec2<u32>(firstLeadingBit(global3[_wgslsmith_index_u32(0u, 8u)]), func_2(var_0.c.x, 2147483647i, vec3<i32>(33802i, -34173i, var_1.c.x), 4294967295u).x)), (_wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.a, arg_1.x), 0u & var_0.d) & ~_wgslsmith_mod_u32(1u, 1u)) << (~select(29122u ^ var_1.d, 4294967295u, true) % 32u), ~arg_1.yyz & firstLeadingBit(~countOneBits(vec3<u32>(arg_1.x, 4294967295u, 3236u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    global0 = array<i32, 3>();
    let var_1 = vec2<bool>(any(select(!func_1(-1725f, Struct_1(global2[_wgslsmith_index_u32(u_input.a, 3u)], 333f, u_input.c.ywy, 30863u, vec4<i32>(global0[_wgslsmith_index_u32(1u, 3u)], global0[_wgslsmith_index_u32(29268u, 3u)], global0[_wgslsmith_index_u32(var_0, 3u)], 0i))), select(!vec3<bool>(global2[_wgslsmith_index_u32(65446u, 3u)], global2[_wgslsmith_index_u32(88699u, 3u)], global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 8u)], 3u)]), !vec3<bool>(global2[_wgslsmith_index_u32(1u, 3u)], true, global2[_wgslsmith_index_u32(42848u, 3u)]), vec3<bool>(false, global2[_wgslsmith_index_u32(23389u, 3u)], global2[_wgslsmith_index_u32(var_0, 3u)])), !func_1(-301f, Struct_1(false, 988f, u_input.c.zwz, 9574u, vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 3u)], u_input.b, global0[_wgslsmith_index_u32(61192u, 3u)], global0[_wgslsmith_index_u32(46081u, 3u)]))))), global2[_wgslsmith_index_u32(~4294967295u, 3u)]);
    let x = u_input.a;
    s_output = func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-173f, 934f, -667f))))), ~func_2(-3665i, -_wgslsmith_mult_i32(u_input.b, -1i), vec3<i32>(reverseBits(global0[_wgslsmith_index_u32(u_input.a, 3u)]), _wgslsmith_dot_vec2_i32(u_input.c.ww, u_input.c.wy), _wgslsmith_div_i32(global0[_wgslsmith_index_u32(var_0, 3u)], 0i)), 1u));
}

