struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(19225u, i32(-2147483648), vec3<u32>(0u, 33003u, 1u), 608f, 1297f), Struct_1(1512u, -15069i, vec3<u32>(18601u, 1u, 28518u), 238f, 497f), Struct_1(4294967295u, 12454i, vec3<u32>(1u, 26072u, 58055u), 1155f, -258f), Struct_1(1u, -30017i, vec3<u32>(0u, 7299u, 0u), -462f, 725f), Struct_1(1u, 12695i, vec3<u32>(1u, 1u, 23517u), 1708f, -719f), Struct_1(17076u, 2147483647i, vec3<u32>(12u, 13079u, 4294967295u), -1000f, -147f), Struct_1(54519u, 37460i, vec3<u32>(0u, 0u, 0u), -1654f, 2069f), Struct_1(78577u, 2147483647i, vec3<u32>(14890u, 37410u, 5390u), 444f, 558f), Struct_1(28483u, -1i, vec3<u32>(1u, 23934u, 1u), 1725f, 273f), Struct_1(4294967295u, i32(-2147483648), vec3<u32>(69572u, 0u, 48907u), -623f, -1584f), Struct_1(187u, -3801i, vec3<u32>(4294967295u, 21438u, 59574u), -1115f, 145f), Struct_1(0u, 0i, vec3<u32>(0u, 35088u, 56583u), -2093f, -1000f), Struct_1(4294967295u, 1i, vec3<u32>(23763u, 0u, 0u), 340f, 475f), Struct_1(64839u, -8435i, vec3<u32>(1u, 1u, 82835u), -1000f, 464f), Struct_1(0u, 40341i, vec3<u32>(87250u, 11664u, 6038u), -207f, 267f), Struct_1(29417u, 2147483647i, vec3<u32>(0u, 0u, 30527u), -750f, -1388f), Struct_1(4294967295u, 1i, vec3<u32>(1u, 4294967295u, 0u), -1308f, -587f), Struct_1(4294967295u, i32(-2147483648), vec3<u32>(0u, 20473u, 1u), 315f, -628f), Struct_1(37731u, 9873i, vec3<u32>(6771u, 0u, 13924u), 492f, -256f));

var<private> global1: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(1u, -33731i, vec3<u32>(4294967295u, 1u, 41766u), 375f, -1437f), Struct_1(53605u, -1i, vec3<u32>(4294967295u, 23441u, 29759u), 257f, 586f), Struct_1(0u, -1454i, vec3<u32>(4294967295u, 30216u, 52152u), 409f, 382f), Struct_1(1u, -14151i, vec3<u32>(24997u, 4912u, 29444u), 1729f, -2137f), Struct_1(0u, 1i, vec3<u32>(26451u, 0u, 76198u), 1052f, 202f), Struct_1(0u, 0i, vec3<u32>(99100u, 18645u, 4294967295u), -875f, -577f), Struct_1(32346u, 1i, vec3<u32>(0u, 1u, 90144u), -640f, 398f), Struct_1(0u, -1i, vec3<u32>(13723u, 4294967295u, 59675u), -138f, -597f), Struct_1(10492u, -1i, vec3<u32>(0u, 66672u, 3932u), 1124f, -1861f), Struct_1(2941u, 2147483647i, vec3<u32>(118384u, 4294967295u, 26253u), -1448f, 682f), Struct_1(0u, -7918i, vec3<u32>(0u, 4294967295u, 4294967295u), -1271f, 194f), Struct_1(16762u, 2147483647i, vec3<u32>(80471u, 40661u, 24963u), 885f, -1143f), Struct_1(6006u, -9601i, vec3<u32>(90722u, 20646u, 1u), -704f, 142f), Struct_1(58510u, 5177i, vec3<u32>(4294967295u, 25647u, 4294967295u), -1713f, 361f), Struct_1(4294967295u, 49615i, vec3<u32>(0u, 34153u, 10495u), 1000f, -1735f), Struct_1(1u, -123i, vec3<u32>(4294967295u, 31894u, 4294967295u), -1051f, 303f), Struct_1(1u, 2147483647i, vec3<u32>(34643u, 1u, 80737u), -1000f, -1000f), Struct_1(1u, -13538i, vec3<u32>(64859u, 1u, 4294967295u), 876f, -1126f), Struct_1(1u, i32(-2147483648), vec3<u32>(38253u, 4294967295u, 4294967295u), -2109f, 262f), Struct_1(1854u, 1i, vec3<u32>(26643u, 0u, 1u), 1385f, -404f), Struct_1(0u, 2147483647i, vec3<u32>(0u, 4294967295u, 112891u), -1160f, -440f), Struct_1(4294967295u, -61245i, vec3<u32>(6516u, 31169u, 8805u), -1000f, -509f), Struct_1(0u, i32(-2147483648), vec3<u32>(0u, 1u, 1u), 408f, -759f), Struct_1(10334u, 0i, vec3<u32>(0u, 4294967295u, 43732u), -277f, 612f), Struct_1(5817u, 25676i, vec3<u32>(48221u, 1u, 4410u), 838f, 712f));

var<private> global2: bool = true;

var<private> global3: u32 = 4294967295u;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec3<f32>, arg_1: u32, arg_2: vec2<u32>) -> vec2<bool> {
    var var_0 = Struct_2(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(select(vec4<u32>(31432u, arg_2.x, 0u, arg_2.x) << (vec4<u32>(arg_2.x, arg_2.x, 0u, arg_1) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(23697u, 4294967295u, arg_2.x, 76930u), vec4<u32>(0u, arg_1, 0u, 4294967295u)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), false)), ~vec4<u32>(26202u, 45420u, arg_1, 0u)), 25u)]);
    var var_1 = _wgslsmith_add_i32(reverseBits(-288i), firstTrailingBit(abs(1i) ^ (~var_0.a.b >> (select(0u, arg_1, false) % 32u))));
    global0 = array<Struct_1, 19>();
    var_0 = Struct_2(Struct_1(18970u, -(~u_input.b.x) << (45081u % 32u), _wgslsmith_mod_vec3_u32(abs(~vec3<u32>(var_0.a.c.x, arg_1, var_0.a.a)), firstLeadingBit(max(vec3<u32>(var_0.a.a, var_0.a.a, 1u), var_0.a.c))), var_0.a.e, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -888f), 961f))))));
    var var_2 = !(!(var_0.a.b == var_0.a.b));
    return vec2<bool>(true, true);
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_2) -> f32 {
    let var_0 = 1000f;
    global3 = arg_1.a.c.x;
    let var_1 = vec4<bool>(false, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(779f)))) > _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1078f + 221f), _wgslsmith_f_op_f32(round(arg_1.a.e))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1822f)) - _wgslsmith_f_op_f32(-var_0))), all(select(func_3(_wgslsmith_f_op_vec3_f32(-arg_0), arg_1.a.c.x, arg_1.a.c.xy), select(vec2<bool>(true, true), func_3(vec3<f32>(-1825f, 633f, var_0), arg_1.a.a, vec2<u32>(arg_1.a.c.x, arg_1.a.a)), vec2<bool>(false, true)), true)));
    global1 = array<Struct_1, 25>();
    global0 = array<Struct_1, 19>();
    return arg_0.x;
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: u32) -> Struct_2 {
    global0 = array<Struct_1, 19>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_2(vec3<f32>(arg_1, -630f, arg_1), arg_0)), 1264f, _wgslsmith_div_f32(arg_0.a.e, -103f), _wgslsmith_f_op_f32(-arg_0.a.d)) * vec4<f32>(_wgslsmith_f_op_f32(-arg_1), 293f, arg_0.a.e, arg_1))));
    let var_1 = Struct_1(arg_0.a.a, 0i, ~(~_wgslsmith_clamp_vec3_u32(~vec3<u32>(arg_0.a.c.x, 1u, 49551u), arg_0.a.c, _wgslsmith_div_vec3_u32(arg_0.a.c, vec3<u32>(arg_0.a.c.x, arg_0.a.c.x, 65765u)))), arg_1, var_0.x);
    let var_2 = vec3<bool>(select(true & !all(vec4<bool>(false, true, true, false)), -var_1.b < u_input.b.x, true), all(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false), !select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), all(vec4<bool>(true, true, true, true)))), !any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    let var_3 = var_1;
    return arg_0;
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    var var_0 = -(reverseBits(vec3<i32>(~u_input.b.x, u_input.a.x >> (arg_0.a.a % 32u), ~arg_0.a.b)) << (select(min(_wgslsmith_sub_vec3_u32(vec3<u32>(23175u, arg_0.a.c.x, arg_0.a.a), arg_0.a.c), min(arg_0.a.c, arg_0.a.c)), abs(~vec3<u32>(1u, arg_0.a.c.x, 0u)), true) % vec3<u32>(32u)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(531f, arg_0.a.e))))) * _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0.a.d, arg_0.a.d))), vec2<f32>(arg_0.a.e, arg_0.a.e)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0.a.e, arg_0.a.e))))))));
    let var_2 = false;
    var var_3 = vec4<f32>(-1482f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -715f), var_1.x, var_2)), _wgslsmith_f_op_f32(max(arg_0.a.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-882f)), _wgslsmith_f_op_f32(var_1.x + -907f))))), -887f);
    var_0 = u_input.b.zyw;
    return global1[_wgslsmith_index_u32(firstLeadingBit(arg_0.a.c.x), 25u)];
}

fn func_5(arg_0: Struct_2, arg_1: f32) -> Struct_2 {
    var var_0 = all(!vec3<bool>(any(vec2<bool>(true, true)), -2147483647i <= (1i >> (arg_0.a.c.x % 32u)), true));
    global0 = array<Struct_1, 19>();
    global0 = array<Struct_1, 19>();
    global2 = all(vec3<bool>(true, true, true));
    let var_1 = arg_0;
    return func_1(Struct_2(func_1(func_1(arg_0, _wgslsmith_f_op_f32(arg_1 + -782f), 1u), _wgslsmith_div_f32(550f, -227f), var_1.a.a).a), -369f, 18040u);
}

fn func_6(arg_0: Struct_2, arg_1: bool) -> Struct_1 {
    let var_0 = !(abs(_wgslsmith_sub_u32(arg_0.a.a, ~arg_0.a.c.x)) <= arg_0.a.a);
    var var_1 = _wgslsmith_f_op_f32(-arg_0.a.d);
    global3 = arg_0.a.c.x;
    var_1 = -1000f;
    global1 = array<Struct_1, 25>();
    return func_5(func_5(Struct_2(func_4(arg_0)), arg_0.a.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.d)), -1315f)))).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(Struct_2(func_4(func_1(Struct_2(Struct_1(1u, u_input.b.x, vec3<u32>(41060u, 1u, 32989u), 807f, -338f)), 296f, 1u))), func_1(func_1(func_1(Struct_2(global0[_wgslsmith_index_u32(0u, 19u)]), 859f, 75681u), 1f, 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -994f)), firstTrailingBit(_wgslsmith_div_u32(4294967295u, 33786u))).a.d), any(vec4<bool>(true, all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true))), true, true)));
    global0 = array<Struct_1, 19>();
    global2 = u_input.b.x > u_input.a.x;
    var var_1 = vec2<bool>(true, true);
    let var_2 = _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(max(1u, 1u), _wgslsmith_dot_vec2_u32(var_0.c.zy, vec2<u32>(var_0.c.x, 74834u)), func_4(Struct_2(global1[_wgslsmith_index_u32(var_0.a, 25u)])).a, abs(83072u)), max(vec4<u32>(var_0.c.x, 0u, 1u, 50337u), ~vec4<u32>(var_0.c.x, var_0.a, var_0.a, var_0.c.x)), vec4<u32>(0u, 1u, ~57316u, 9944u)), vec4<u32>(57504u, _wgslsmith_sub_u32(4294967295u, ~var_0.a), 1u, _wgslsmith_div_u32(4294967295u, var_0.a))), vec4<u32>(_wgslsmith_mult_u32(~63672u, ~var_0.c.x) & (_wgslsmith_dot_vec3_u32(var_0.c, var_0.c) ^ func_5(Struct_2(global1[_wgslsmith_index_u32(23782u, 25u)]), -733f).a.a), var_0.c.x << (var_0.a % 32u), _wgslsmith_clamp_u32(~var_0.c.x, firstLeadingBit(~var_0.c.x), ~(~var_0.a)), 19590u));
    let var_3 = func_1(func_5(func_5(func_1(func_5(Struct_2(global0[_wgslsmith_index_u32(var_2.x, 19u)]), 3127f), -239f, var_2.x << (var_0.c.x % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.d)))), 620f), _wgslsmith_f_op_f32(var_0.d * 240f), 53898u).a;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, 1i, 18738i);
}

