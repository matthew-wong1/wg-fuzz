struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: i32,
    d: u32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: u32,
    d: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: Struct_3,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 16> = array<vec3<f32>, 16>(vec3<f32>(111f, 1130f, 1264f), vec3<f32>(-1063f, -628f, -1401f), vec3<f32>(980f, 1169f, -164f), vec3<f32>(579f, -1000f, 366f), vec3<f32>(-1134f, -1008f, 348f), vec3<f32>(346f, -1565f, -368f), vec3<f32>(-1572f, 856f, -697f), vec3<f32>(-321f, -1826f, -473f), vec3<f32>(-1000f, -850f, 1524f), vec3<f32>(749f, 1061f, -408f), vec3<f32>(-1502f, -458f, 722f), vec3<f32>(-1000f, 536f, -821f), vec3<f32>(-2800f, -351f, -145f), vec3<f32>(973f, 721f, 947f), vec3<f32>(-667f, -413f, -712f), vec3<f32>(-944f, 648f, -2900f));

var<private> global1: vec4<f32>;

var<private> global2: Struct_5 = Struct_5(vec4<u32>(59882u, 42046u, 26135u, 0u), vec2<u32>(3469u, 0u), Struct_3(vec2<f32>(-860f, 969f), Struct_2(vec3<i32>(-1654i, 0i, -4200i), Struct_1(vec4<i32>(2147483647i, 11364i, 1i, 53650i), 14332i, vec2<bool>(true, true)), 41771i, 46347u), 23954u, true), vec2<bool>(false, true));

var<private> global3: Struct_3;

var<private> global4: array<Struct_5, 21> = array<Struct_5, 21>(Struct_5(vec4<u32>(99322u, 33664u, 0u, 0u), vec2<u32>(67552u, 55403u), Struct_3(vec2<f32>(-401f, 192f), Struct_2(vec3<i32>(27071i, 1i, i32(-2147483648)), Struct_1(vec4<i32>(1i, 0i, 9336i, 1i), -28317i, vec2<bool>(true, false)), 740i, 0u), 69746u, false), vec2<bool>(true, false)), Struct_5(vec4<u32>(9869u, 4294967295u, 0u, 1u), vec2<u32>(20512u, 0u), Struct_3(vec2<f32>(-790f, -1000f), Struct_2(vec3<i32>(4707i, 1i, -5854i), Struct_1(vec4<i32>(0i, 3331i, 1i, -38739i), 0i, vec2<bool>(true, false)), -1i, 21650u), 418u, true), vec2<bool>(false, true)), Struct_5(vec4<u32>(4294967295u, 64872u, 37362u, 1u), vec2<u32>(1u, 0u), Struct_3(vec2<f32>(-1241f, 215f), Struct_2(vec3<i32>(17793i, 1i, -1i), Struct_1(vec4<i32>(16042i, 0i, -1i, -1i), 2147483647i, vec2<bool>(false, false)), 21535i, 1u), 1u, false), vec2<bool>(false, true)), Struct_5(vec4<u32>(0u, 1857u, 4294967295u, 50190u), vec2<u32>(0u, 16344u), Struct_3(vec2<f32>(-712f, 1030f), Struct_2(vec3<i32>(1i, 2147483647i, 1i), Struct_1(vec4<i32>(12798i, i32(-2147483648), 4923i, 1990i), 1i, vec2<bool>(true, false)), 1i, 6204u), 1u, true), vec2<bool>(false, false)), Struct_5(vec4<u32>(17935u, 1u, 0u, 1u), vec2<u32>(111229u, 0u), Struct_3(vec2<f32>(1095f, 1810f), Struct_2(vec3<i32>(0i, 12713i, 4143i), Struct_1(vec4<i32>(18136i, 2147483647i, -28594i, -1i), -1i, vec2<bool>(false, false)), -42734i, 53033u), 22596u, true), vec2<bool>(true, false)), Struct_5(vec4<u32>(1u, 0u, 1u, 61554u), vec2<u32>(0u, 0u), Struct_3(vec2<f32>(-1479f, 1211f), Struct_2(vec3<i32>(-34585i, -1i, -1i), Struct_1(vec4<i32>(0i, i32(-2147483648), 2147483647i, -1i), i32(-2147483648), vec2<bool>(false, false)), i32(-2147483648), 22708u), 0u, false), vec2<bool>(true, false)), Struct_5(vec4<u32>(9114u, 4294967295u, 17799u, 20618u), vec2<u32>(33535u, 1005u), Struct_3(vec2<f32>(343f, -1000f), Struct_2(vec3<i32>(i32(-2147483648), 27456i, 65150i), Struct_1(vec4<i32>(-19086i, 0i, 11887i, -2538i), 0i, vec2<bool>(false, false)), 1i, 23109u), 1u, true), vec2<bool>(false, false)), Struct_5(vec4<u32>(18094u, 4294967295u, 0u, 50829u), vec2<u32>(14320u, 4294967295u), Struct_3(vec2<f32>(1000f, -897f), Struct_2(vec3<i32>(1i, i32(-2147483648), 2147483647i), Struct_1(vec4<i32>(9696i, 9696i, 2147483647i, -25388i), -19321i, vec2<bool>(false, true)), i32(-2147483648), 4294967295u), 3424u, false), vec2<bool>(true, true)), Struct_5(vec4<u32>(0u, 20697u, 41978u, 4294967295u), vec2<u32>(0u, 4294967295u), Struct_3(vec2<f32>(776f, 233f), Struct_2(vec3<i32>(3615i, 1i, i32(-2147483648)), Struct_1(vec4<i32>(26083i, -5024i, -26077i, 1i), 1i, vec2<bool>(false, false)), 0i, 0u), 4294967295u, false), vec2<bool>(true, true)), Struct_5(vec4<u32>(46267u, 1u, 4294967295u, 4294967295u), vec2<u32>(0u, 3307u), Struct_3(vec2<f32>(153f, -596f), Struct_2(vec3<i32>(0i, -18612i, 10368i), Struct_1(vec4<i32>(i32(-2147483648), 0i, 0i, -20171i), 4858i, vec2<bool>(true, true)), -16595i, 15997u), 30649u, true), vec2<bool>(false, false)), Struct_5(vec4<u32>(1u, 0u, 23838u, 0u), vec2<u32>(4058u, 0u), Struct_3(vec2<f32>(-655f, 348f), Struct_2(vec3<i32>(1i, -67694i, 2147483647i), Struct_1(vec4<i32>(12246i, 0i, -3588i, 1i), 37066i, vec2<bool>(false, false)), -1i, 89434u), 4294967295u, true), vec2<bool>(true, true)), Struct_5(vec4<u32>(8640u, 25807u, 12595u, 17754u), vec2<u32>(10799u, 24596u), Struct_3(vec2<f32>(-1000f, -1473f), Struct_2(vec3<i32>(-35157i, 0i, i32(-2147483648)), Struct_1(vec4<i32>(36597i, 29140i, 0i, 1414i), -49697i, vec2<bool>(true, true)), 16009i, 0u), 1u, true), vec2<bool>(true, true)), Struct_5(vec4<u32>(32596u, 1u, 4294967295u, 4294967295u), vec2<u32>(42151u, 4294967295u), Struct_3(vec2<f32>(368f, -1063f), Struct_2(vec3<i32>(-49810i, 2147483647i, i32(-2147483648)), Struct_1(vec4<i32>(4018i, -19781i, 2147483647i, -1i), 15893i, vec2<bool>(false, true)), -39899i, 957u), 23330u, false), vec2<bool>(false, false)), Struct_5(vec4<u32>(65548u, 1u, 1u, 8293u), vec2<u32>(38776u, 4294967295u), Struct_3(vec2<f32>(-672f, -498f), Struct_2(vec3<i32>(i32(-2147483648), 1i, -16109i), Struct_1(vec4<i32>(-1i, 1i, -13350i, 6479i), 0i, vec2<bool>(true, true)), 0i, 1u), 45544u, true), vec2<bool>(false, false)), Struct_5(vec4<u32>(24111u, 0u, 18177u, 1u), vec2<u32>(59148u, 0u), Struct_3(vec2<f32>(-334f, -1000f), Struct_2(vec3<i32>(44898i, -24497i, -13799i), Struct_1(vec4<i32>(29946i, 1i, -32714i, -55917i), 29523i, vec2<bool>(true, false)), -51861i, 4294967295u), 46287u, false), vec2<bool>(true, false)), Struct_5(vec4<u32>(0u, 4294967295u, 4294967295u, 87021u), vec2<u32>(42643u, 3700u), Struct_3(vec2<f32>(1168f, -220f), Struct_2(vec3<i32>(17440i, 2147483647i, 59502i), Struct_1(vec4<i32>(-9713i, 61393i, 2147483647i, 22372i), 1i, vec2<bool>(true, false)), 2147483647i, 1u), 1u, false), vec2<bool>(true, false)), Struct_5(vec4<u32>(0u, 4294967295u, 1u, 10842u), vec2<u32>(38270u, 4294967295u), Struct_3(vec2<f32>(789f, 416f), Struct_2(vec3<i32>(-1i, 36446i, -5839i), Struct_1(vec4<i32>(0i, -1i, 1i, -45405i), 10102i, vec2<bool>(false, true)), 0i, 0u), 4294967295u, false), vec2<bool>(true, true)), Struct_5(vec4<u32>(82997u, 13060u, 99039u, 21373u), vec2<u32>(0u, 27325u), Struct_3(vec2<f32>(-2092f, -163f), Struct_2(vec3<i32>(36188i, 0i, 31564i), Struct_1(vec4<i32>(0i, 16277i, -28949i, -9345i), 20951i, vec2<bool>(true, true)), -1i, 4294967295u), 44290u, true), vec2<bool>(true, true)), Struct_5(vec4<u32>(71607u, 4294967295u, 20959u, 202u), vec2<u32>(9195u, 15279u), Struct_3(vec2<f32>(1034f, 512f), Struct_2(vec3<i32>(0i, -4184i, 0i), Struct_1(vec4<i32>(-6511i, -45174i, 2147483647i, 16725i), 233i, vec2<bool>(true, false)), 68178i, 20686u), 1u, true), vec2<bool>(false, true)), Struct_5(vec4<u32>(4294967295u, 23483u, 66413u, 4294967295u), vec2<u32>(13804u, 42971u), Struct_3(vec2<f32>(-451f, -2314f), Struct_2(vec3<i32>(26202i, 0i, -1i), Struct_1(vec4<i32>(2147483647i, -33218i, -1i, -4011i), 2147483647i, vec2<bool>(false, false)), -76228i, 1u), 0u, false), vec2<bool>(true, true)), Struct_5(vec4<u32>(4294967295u, 70477u, 1u, 50804u), vec2<u32>(67327u, 1u), Struct_3(vec2<f32>(-1000f, -445f), Struct_2(vec3<i32>(-23199i, -12891i, -19630i), Struct_1(vec4<i32>(-24884i, 0i, -38109i, -14455i), 33875i, vec2<bool>(true, true)), i32(-2147483648), 25783u), 4294967295u, false), vec2<bool>(false, true)));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: Struct_5) -> vec4<u32> {
    global2 = global4[_wgslsmith_index_u32(41090u, 21u)];
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(427f, -1632f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_3.c.a - global3.a) - vec2<f32>(arg_0.x, global2.c.a.x))), global3.a, !global2.d)), Struct_2(select(vec3<i32>(-52867i, global2.c.b.b.a.x, -2147483647i), arg_1.a, select(global3.d, global2.d.x, true)) | vec3<i32>(~(-2147483647i), -24096i, -23594i), Struct_1(vec4<i32>(arg_2.x, _wgslsmith_div_i32(arg_1.b.a.x, -11221i), 0i, global3.b.a.x), ~(-22597i), global3.b.b.c), ~(-1i), global2.b.x), _wgslsmith_sub_u32(_wgslsmith_add_u32(arg_1.d, ~global3.b.d), abs(arg_1.d)), all(!(!select(vec3<bool>(false, global2.d.x, global2.c.d), vec3<bool>(arg_1.b.c.x, global2.d.x, global3.d), true))));
    return global2.a;
}

fn func_2(arg_0: vec3<i32>, arg_1: f32, arg_2: vec2<i32>) -> u32 {
    let var_0 = _wgslsmith_div_f32(global3.a.x, 1315f);
    let var_1 = Struct_5(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(min(vec4<u32>(14720u, 4294967295u, 65374u, global2.b.x), func_3(vec4<f32>(global3.a.x, global3.a.x, 157f, 171f), global3.b, global3.b.b.a, global4[_wgslsmith_index_u32(1u, 21u)])), global2.a ^ vec4<u32>(global3.c, 3572u, 337u, 0u)), global2.a), _wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(select(global3.c, global3.b.d, false), _wgslsmith_clamp_u32(global2.b.x, global3.c, global2.a.x)), ~(~global2.a.zy)), _wgslsmith_add_vec2_u32(global2.b, vec2<u32>(global3.c, func_3(vec4<f32>(var_0, 1000f, global3.a.x, global3.a.x), global3.b, global3.b.b.a, Struct_5(vec4<u32>(45800u, global3.b.d, 2242u, 49677u), global2.a.xy, Struct_3(vec2<f32>(var_0, global1.x), Struct_2(global3.b.a, global2.c.b.b, -5232i, 5493u), global2.a.x, false), vec2<bool>(false, global2.d.x))).x))), Struct_3(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(1452f, -2714f) + _wgslsmith_f_op_vec2_f32(-global1.yz)))), global2.c.b, global2.a.x, false), select(select(vec2<bool>(global2.c.b.b.c.x, global3.d), !global2.c.b.b.c, select(global3.b.b.c, vec2<bool>(true, global3.d), vec2<bool>(true, global3.b.b.c.x))), select(select(vec2<bool>(global3.b.b.c.x, false), vec2<bool>(false, true), true), global2.d, !global3.d), vec2<bool>(true, firstTrailingBit(0i) == ~arg_2.x)));
    let var_2 = 16122u;
    global4 = array<Struct_5, 21>();
    var var_3 = Struct_4(Struct_1(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(global3.b.b.a, _wgslsmith_add_vec4_i32(vec4<i32>(global3.b.b.b, global2.c.b.a.x, 20331i, var_1.c.b.b.b), global3.b.b.a)), firstLeadingBit(vec4<i32>(73779i, -2147483647i, arg_0.x, 0i))), ~_wgslsmith_mult_i32(global2.c.b.b.a.x, arg_0.x ^ arg_2.x), !(!(!var_1.d))), vec4<u32>(1u, global3.c, var_1.a.x, 25902u | global3.c));
    return global3.c;
}

fn func_4(arg_0: u32) -> vec4<u32> {
    var var_0 = global3.b.a.x;
    var var_1 = global2.c.b.b.a.xwz;
    global4 = array<Struct_5, 21>();
    let var_2 = _wgslsmith_sub_vec2_i32(~select(u_input.a, vec2<i32>(-21431i, var_1.x), true) | global3.b.b.a.xz, vec2<i32>(abs(_wgslsmith_add_i32(-2147483647i, 35866i)), _wgslsmith_mult_i32(select(global2.c.b.a.x, 1i, true), ~(-1709i))) >> (global2.b % vec2<u32>(32u)));
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1036f, 142f, 824f, -824f), vec4<f32>(global1.x, -381f, global3.a.x, global1.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global2.c.a.x, global1.x, 1655f, global2.c.a.x))) + _wgslsmith_div_vec4_f32(vec4<f32>(-1318f, global3.a.x, global2.c.a.x, -609f), vec4<f32>(-178f, 1387f, global1.x, global1.x)))), true)));
    return func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(924f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-280f, global1.x) + 655f), -255f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2.c.a.x))))), Struct_2(global3.b.b.a.www, global2.c.b.b, 97192i, (~arg_0 >> (~0u % 32u)) ^ 29616u), countOneBits(vec4<i32>(global2.c.b.a.x, _wgslsmith_add_i32(firstTrailingBit(21114i), abs(34100i)), ~var_2.x ^ ~var_1.x, global3.b.b.a.x & ~u_input.b)), global4[_wgslsmith_index_u32(arg_0, 21u)]);
}

fn func_1(arg_0: u32) -> vec4<bool> {
    global0 = array<vec3<f32>, 16>();
    global0 = array<vec3<f32>, 16>();
    var var_0 = Struct_4(Struct_1(~vec4<i32>(global2.c.b.c, u_input.b, global3.b.a.x, u_input.a.x), 1i, select(global3.b.b.c, !(!vec2<bool>(global2.c.b.b.c.x, global3.d)), global2.d.x)), max(global2.a, func_4(func_2(vec3<i32>(-47201i, global3.b.c, -14912i) ^ vec3<i32>(12759i, global2.c.b.b.a.x, -2147483647i), _wgslsmith_f_op_f32(round(132f)), vec2<i32>(global2.c.b.b.b, global3.b.c)))));
    var var_1 = max(0i, ~var_0.a.a.x);
    let var_2 = var_0.a;
    return !vec4<bool>(all(var_0.a.c), true, true && all(!vec2<bool>(global3.b.b.c.x, true)), any(!vec4<bool>(true, true, var_0.a.c.x, global3.b.b.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_3(_wgslsmith_f_op_vec2_f32(select(global2.c.a, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global1.x, global3.a.x))))), false)), global2.c.b, _wgslsmith_dot_vec4_u32(~(~countOneBits(global2.a)), vec4<u32>(94422u, 1u, 0u, global3.b.d)), any(func_1(reverseBits(4294967295u))));
    let var_0 = Struct_5(select(firstTrailingBit((global2.a ^ global2.a) >> (vec4<u32>(global3.b.d, 42672u, global2.a.x, 1u) % vec4<u32>(32u))), select(~(~global2.a), _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(global2.a, global2.a), global2.a), !(!vec4<bool>(global3.b.b.c.x, global2.c.b.b.c.x, true, global2.c.d))), vec4<bool>(true, !(!global2.c.d), false, any(global3.b.b.c))), global2.a.xy, global2.c, global3.b.b.c);
    global0 = array<vec3<f32>, 16>();
    var var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(~1u | global2.a.x, select(global3.b.d, _wgslsmith_mult_u32(global3.c, 0u), true)), vec2<u32>(global2.c.b.d ^ var_0.c.b.d, 1u) >> ((var_0.a.yw & _wgslsmith_mod_vec2_u32(global2.b, var_0.a.ww)) % vec2<u32>(32u))) << (global3.c % 32u);
    global0 = array<vec3<f32>, 16>();
    var_1 = var_0.c.c;
    var var_2 = Struct_4(Struct_1(vec4<i32>(8318i, global3.b.b.b, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.c.b.c, 17031i, u_input.a.x) ^ global3.b.a, global3.b.a), 2147483647i), u_input.b, !var_0.c.b.b.c), _wgslsmith_div_vec4_u32(~vec4<u32>(min(global2.b.x, 4294967295u), 0u, 4294967295u, global3.c), var_0.a >> (global2.a % vec4<u32>(32u))));
    var var_3 = 0i & -(~min(~global3.b.a.x, i32(-1i) * -70464i));
    var_3 = -_wgslsmith_mod_i32(countOneBits(~(~global3.b.a.x)), var_2.a.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(global2.a.wwz, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1738f, _wgslsmith_f_op_f32(-global1.x))));
}

