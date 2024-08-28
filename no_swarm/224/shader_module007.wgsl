struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<i32>,
    c: i32,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec3<u32>, 5>;

var<private> global2: Struct_3;

var<private> global3: Struct_4 = Struct_4(Struct_1(920f, i32(-2147483648), vec2<f32>(-1000f, 138f)), vec3<i32>(i32(-2147483648), 1i, 2147483647i), 1i, Struct_3(vec2<f32>(295f, -402f), Struct_2(vec3<i32>(-44509i, 2147483647i, 2147483647i), vec3<bool>(true, false, true)), Struct_2(vec3<i32>(-20482i, 2275i, -24770i), vec3<bool>(true, false, true))));

var<private> global4: array<Struct_4, 13> = array<Struct_4, 13>(Struct_4(Struct_1(-1131f, 2147483647i, vec2<f32>(-534f, 545f)), vec3<i32>(1i, -67858i, -16560i), 0i, Struct_3(vec2<f32>(1000f, 192f), Struct_2(vec3<i32>(-9428i, -1i, -39649i), vec3<bool>(true, false, false)), Struct_2(vec3<i32>(-700i, 18208i, -59368i), vec3<bool>(false, true, true)))), Struct_4(Struct_1(1075f, 2147483647i, vec2<f32>(1000f, 1199f)), vec3<i32>(i32(-2147483648), -26079i, 1i), i32(-2147483648), Struct_3(vec2<f32>(467f, 1442f), Struct_2(vec3<i32>(1i, -1i, 19695i), vec3<bool>(true, true, true)), Struct_2(vec3<i32>(24703i, -21796i, 1i), vec3<bool>(false, true, false)))), Struct_4(Struct_1(226f, 1781i, vec2<f32>(2420f, 615f)), vec3<i32>(-31821i, -15932i, 1i), -1i, Struct_3(vec2<f32>(708f, -510f), Struct_2(vec3<i32>(2147483647i, -19849i, -78441i), vec3<bool>(true, true, true)), Struct_2(vec3<i32>(44952i, 0i, 7803i), vec3<bool>(false, false, false)))), Struct_4(Struct_1(2055f, 6787i, vec2<f32>(-256f, 1000f)), vec3<i32>(-1i, 9617i, 35192i), -41607i, Struct_3(vec2<f32>(-1615f, 1728f), Struct_2(vec3<i32>(1i, 0i, -1i), vec3<bool>(false, false, true)), Struct_2(vec3<i32>(-17126i, -3092i, -14953i), vec3<bool>(false, false, false)))), Struct_4(Struct_1(336f, 0i, vec2<f32>(-910f, -1382f)), vec3<i32>(13145i, 21605i, -17838i), -6140i, Struct_3(vec2<f32>(-1430f, -1172f), Struct_2(vec3<i32>(32834i, 17122i, i32(-2147483648)), vec3<bool>(true, false, true)), Struct_2(vec3<i32>(-15775i, 0i, -19599i), vec3<bool>(false, true, true)))), Struct_4(Struct_1(748f, 2147483647i, vec2<f32>(1283f, 1311f)), vec3<i32>(0i, 57i, 2147483647i), 20171i, Struct_3(vec2<f32>(592f, 405f), Struct_2(vec3<i32>(1i, i32(-2147483648), 5965i), vec3<bool>(true, false, false)), Struct_2(vec3<i32>(-1i, 2147483647i, 26769i), vec3<bool>(true, false, true)))), Struct_4(Struct_1(-431f, 2147483647i, vec2<f32>(-554f, -1462f)), vec3<i32>(i32(-2147483648), 2147483647i, -36821i), 20877i, Struct_3(vec2<f32>(-361f, -530f), Struct_2(vec3<i32>(9379i, -83248i, 24613i), vec3<bool>(false, true, false)), Struct_2(vec3<i32>(43747i, -31317i, -8113i), vec3<bool>(false, true, false)))), Struct_4(Struct_1(481f, -17869i, vec2<f32>(171f, -1966f)), vec3<i32>(-1i, 3108i, 25425i), 13394i, Struct_3(vec2<f32>(-744f, -466f), Struct_2(vec3<i32>(0i, -7994i, 2259i), vec3<bool>(true, true, false)), Struct_2(vec3<i32>(i32(-2147483648), 0i, -1i), vec3<bool>(false, true, false)))), Struct_4(Struct_1(573f, 2147483647i, vec2<f32>(-1088f, -1000f)), vec3<i32>(-38386i, -13859i, -36848i), i32(-2147483648), Struct_3(vec2<f32>(-287f, 1220f), Struct_2(vec3<i32>(-1i, -31355i, i32(-2147483648)), vec3<bool>(true, true, true)), Struct_2(vec3<i32>(-31792i, 1i, i32(-2147483648)), vec3<bool>(true, false, false)))), Struct_4(Struct_1(1171f, i32(-2147483648), vec2<f32>(567f, -105f)), vec3<i32>(0i, 14374i, 11065i), i32(-2147483648), Struct_3(vec2<f32>(540f, 1000f), Struct_2(vec3<i32>(8257i, i32(-2147483648), 51449i), vec3<bool>(false, true, false)), Struct_2(vec3<i32>(i32(-2147483648), 2147483647i, 1619i), vec3<bool>(false, true, false)))), Struct_4(Struct_1(-146f, 1689i, vec2<f32>(-577f, 1560f)), vec3<i32>(9458i, 9462i, -30580i), -32126i, Struct_3(vec2<f32>(206f, -1586f), Struct_2(vec3<i32>(13807i, 2147483647i, -15242i), vec3<bool>(false, true, false)), Struct_2(vec3<i32>(-1i, 4245i, 20000i), vec3<bool>(true, true, false)))), Struct_4(Struct_1(665f, 5509i, vec2<f32>(-1143f, -1218f)), vec3<i32>(-1i, 5902i, 50578i), -12041i, Struct_3(vec2<f32>(-1023f, 1282f), Struct_2(vec3<i32>(i32(-2147483648), 43472i, -1i), vec3<bool>(true, false, false)), Struct_2(vec3<i32>(-1i, 24709i, 2147483647i), vec3<bool>(true, false, true)))), Struct_4(Struct_1(1299f, 6559i, vec2<f32>(-930f, -1510f)), vec3<i32>(2147483647i, 16007i, -1i), 6997i, Struct_3(vec2<f32>(-575f, 854f), Struct_2(vec3<i32>(1i, -1i, 17529i), vec3<bool>(false, false, false)), Struct_2(vec3<i32>(i32(-2147483648), i32(-2147483648), 0i), vec3<bool>(false, true, true)))));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-953f * arg_1.a.a))) < global2.a.x;
    let var_1 = arg_1.d;
    let var_2 = abs(_wgslsmith_add_u32(firstTrailingBit(~abs(4294967295u)), _wgslsmith_sub_u32(reverseBits(1u), ~min(4294967295u, 4294967295u))));
    return vec2<u32>(0u, _wgslsmith_mod_u32(var_2, var_2));
}

fn func_2(arg_0: vec3<u32>) -> u32 {
    let var_0 = global3.a;
    global0 = global3.d.b.b.x;
    var var_1 = global2.b.a.xy;
    var var_2 = global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_0.x, _wgslsmith_clamp_u32(arg_0.x, _wgslsmith_dot_vec2_u32(~func_3(global3.a, global4[_wgslsmith_index_u32(4294967295u, 13u)]), select(~arg_0.zx, arg_0.xz, !vec2<bool>(global3.d.c.b.x, global2.c.b.x))), arg_0.x)), 13u)];
    let var_3 = _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, _wgslsmith_div_i32(1i, 54406i), ~var_0.b, 1i) & (select(vec4<i32>(1i, var_2.d.c.a.x, var_1.x, var_0.b), vec4<i32>(var_0.b, 29450i, u_input.a, 2147483647i), global3.d.c.b.x) & vec4<i32>(global3.b.x, var_1.x, -55071i, var_2.c)), abs(vec4<i32>(var_0.b, var_2.c >> (30457u % 32u), 43359i, ~2147483647i)), _wgslsmith_mod_vec4_i32(vec4<i32>(0i, -2147483647i, -2147483647i, -24603i) >> (~vec4<u32>(arg_0.x, 10488u, arg_0.x, arg_0.x) % vec4<u32>(32u)), reverseBits(~vec4<i32>(var_0.b, var_1.x, 42676i, var_0.b)))) << (~vec4<u32>(~func_3(var_2.a, Struct_4(var_2.a, global2.c.a, var_1.x, Struct_3(vec2<f32>(global2.a.x, var_0.a), var_2.d.c, var_2.d.b))).x, firstTrailingBit(51636u) >> (arg_0.x % 32u), arg_0.x, ~_wgslsmith_div_u32(arg_0.x, 58884u)) % vec4<u32>(32u));
    return 18342u;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: vec2<u32>, arg_3: Struct_2) -> Struct_3 {
    global2 = arg_1;
    var var_0 = 25144u << ((17594u ^ ~func_2(vec3<u32>(arg_0.x, arg_0.x, arg_2.x))) % 32u);
    let var_1 = _wgslsmith_sub_u32(1u, arg_0.x) >> (arg_0.x % 32u);
    let var_2 = ~var_1;
    return arg_1;
}

fn func_1(arg_0: Struct_3) -> vec3<u32> {
    global2 = func_4(reverseBits(vec2<u32>(1u, 3639u << (func_2(global1[_wgslsmith_index_u32(20279u, 5u)]) % 32u))), Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.a) * vec2<f32>(global2.a.x, 1019f))), Struct_2(select(global3.b, vec3<i32>(-2147483647i, global2.b.a.x, global2.c.a.x), vec3<bool>(global2.c.b.x, global3.d.c.b.x, global2.c.b.x)) >> (global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(44438u, 29403u), vec2<u32>(113509u, 1u)), 5u)] % vec3<u32>(32u)), !vec3<bool>(arg_0.b.b.x, true, true)), Struct_2(~(global2.c.a ^ vec3<i32>(global3.d.c.a.x, global2.c.a.x, u_input.b)), vec3<bool>(true, true, arg_0.c.b.x))), vec2<u32>(0u, _wgslsmith_mod_u32(~func_2(global1[_wgslsmith_index_u32(1u, 5u)]), _wgslsmith_sub_u32(1u, 1u))), Struct_2(max(_wgslsmith_add_vec3_i32(-global3.b, ~vec3<i32>(global3.d.c.a.x, 2147483647i, 75610i)), vec3<i32>(_wgslsmith_add_i32(18312i, arg_0.b.a.x), _wgslsmith_div_i32(2147483647i, global3.d.b.a.x), _wgslsmith_clamp_i32(0i, -44018i, u_input.a))), arg_0.b.b));
    var var_0 = select(global3.d.b.b.x, global2.c.b.x, any(!(!select(vec4<bool>(global2.c.b.x, false, global3.d.b.b.x, true), vec4<bool>(arg_0.b.b.x, false, true, false), false))));
    let var_1 = global2.b;
    var var_2 = any(vec2<bool>(true, true));
    let var_3 = arg_0.c;
    return ~vec3<u32>(~abs(_wgslsmith_add_u32(4294967295u, 0u)), firstTrailingBit(6641u), firstTrailingBit(4294967295u));
}

fn func_5(arg_0: f32, arg_1: bool, arg_2: vec3<u32>) -> vec3<i32> {
    global1 = array<vec3<u32>, 5>();
    let var_0 = Struct_4(global3.a, -firstTrailingBit(~vec3<i32>(global3.d.c.a.x, u_input.a, 0i)), -8249i, global3.d);
    global1 = array<vec3<u32>, 5>();
    return reverseBits((abs(_wgslsmith_div_vec3_i32(vec3<i32>(-1i, var_0.a.b, global2.c.a.x), vec3<i32>(u_input.b, 43107i, global2.c.a.x))) | vec3<i32>(var_0.d.c.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 50562i, var_0.d.c.a.x), var_0.b), abs(-5956i))) >> (countOneBits(~vec3<u32>(arg_2.x, arg_2.x, 39973u)) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_4, 13>();
    var var_0 = _wgslsmith_mult_i32(firstLeadingBit(2147483647i), -15386i);
    global1 = array<vec3<u32>, 5>();
    var var_1 = Struct_2((func_5(1000f, true, func_1(Struct_3(global3.d.a, Struct_2(global2.c.a, global2.b.b), global2.c))) >> (~(~global1[_wgslsmith_index_u32(0u, 5u)]) % vec3<u32>(32u))) << (vec3<u32>(1u, max(_wgslsmith_mult_u32(2763u, 1u), countOneBits(20297u)), func_1(func_4(vec2<u32>(36225u, 37132u), Struct_3(global2.a, Struct_2(global3.b, global2.b.b), global2.b), vec2<u32>(29797u, 4294967295u), Struct_2(vec3<i32>(u_input.a, global3.b.x, 2147483647i), vec3<bool>(global2.c.b.x, global3.d.b.b.x, false)))).x) % vec3<u32>(32u)), global3.d.c.b);
    let var_2 = select(var_1.b.yy, !global2.b.b.xz, func_4(vec2<u32>(1u, 3375u), global3.d, vec2<u32>(93979u, countOneBits(firstTrailingBit(0u))), func_4(abs(~vec2<u32>(0u, 79700u)), global3.d, _wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 7137u), vec2<u32>(0u, 57148u), vec2<u32>(1u, 33774u)), vec2<u32>(1u, 1u)), Struct_2(vec3<i32>(-1i, var_1.a.x, -937i), !vec3<bool>(true, global2.c.b.x, global2.b.b.x))).c).b.b.x);
    var var_3 = false;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~func_3(Struct_1(global3.a.c.x, -33626i, vec2<f32>(1662f, global3.d.a.x)), Struct_4(global3.a, global2.c.a, 0i, global3.d)).x, ~(~countOneBits(1u)), abs(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(0u, 24374u)), vec2<u32>(0u, 52701u))), 0u));
}

