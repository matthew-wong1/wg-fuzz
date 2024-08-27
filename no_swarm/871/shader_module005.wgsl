struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_3 {
    a: bool,
    b: vec4<u32>,
    c: i32,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_4, 15>;

var<private> global2: array<Struct_3, 23> = array<Struct_3, 23>(Struct_3(true, vec4<u32>(4294967295u, 51704u, 12201u, 1u), 17160i, vec2<i32>(-1135i, 0i), Struct_1(vec4<f32>(820f, 793f, 742f, -379f), vec3<bool>(false, true, false), vec3<u32>(1u, 4294967295u, 61799u))), Struct_3(true, vec4<u32>(12228u, 2144u, 1920u, 0u), -10636i, vec2<i32>(i32(-2147483648), 34028i), Struct_1(vec4<f32>(638f, 972f, 742f, 1000f), vec3<bool>(false, false, false), vec3<u32>(1u, 1u, 18845u))), Struct_3(true, vec4<u32>(0u, 28338u, 1u, 44048u), 13669i, vec2<i32>(-55781i, 1i), Struct_1(vec4<f32>(-203f, 891f, -166f, 1115f), vec3<bool>(true, true, false), vec3<u32>(0u, 4294967295u, 1u))), Struct_3(true, vec4<u32>(0u, 4294967295u, 21218u, 17877u), -12767i, vec2<i32>(5507i, 5016i), Struct_1(vec4<f32>(-2160f, 1000f, 464f, -1788f), vec3<bool>(false, false, false), vec3<u32>(1368u, 12439u, 0u))), Struct_3(false, vec4<u32>(55304u, 4294967295u, 4233u, 4294967295u), i32(-2147483648), vec2<i32>(2147483647i, 0i), Struct_1(vec4<f32>(502f, 1247f, -1158f, 1395f), vec3<bool>(false, false, false), vec3<u32>(55139u, 4294967295u, 4294967295u))), Struct_3(true, vec4<u32>(4294967295u, 0u, 1u, 4294967295u), 33666i, vec2<i32>(i32(-2147483648), 20701i), Struct_1(vec4<f32>(-1308f, -2475f, 172f, -506f), vec3<bool>(true, true, false), vec3<u32>(74738u, 1u, 0u))), Struct_3(false, vec4<u32>(0u, 40070u, 1u, 86080u), 14463i, vec2<i32>(-23087i, -6531i), Struct_1(vec4<f32>(739f, -821f, -627f, -1534f), vec3<bool>(false, true, false), vec3<u32>(1u, 217u, 0u))), Struct_3(false, vec4<u32>(1u, 1u, 62184u, 47174u), 0i, vec2<i32>(2147483647i, -3320i), Struct_1(vec4<f32>(-214f, 1265f, 896f, 514f), vec3<bool>(true, true, true), vec3<u32>(0u, 23823u, 1u))), Struct_3(false, vec4<u32>(84313u, 0u, 43157u, 6227u), -4183i, vec2<i32>(-8589i, -81101i), Struct_1(vec4<f32>(841f, 485f, 798f, 282f), vec3<bool>(false, true, true), vec3<u32>(0u, 1u, 0u))), Struct_3(false, vec4<u32>(46971u, 42704u, 6489u, 0u), 2147483647i, vec2<i32>(0i, -57532i), Struct_1(vec4<f32>(1489f, 182f, 1114f, 2015f), vec3<bool>(true, true, false), vec3<u32>(0u, 5598u, 13170u))), Struct_3(true, vec4<u32>(64616u, 8793u, 14600u, 0u), -74027i, vec2<i32>(-21480i, 47026i), Struct_1(vec4<f32>(726f, 628f, -929f, -454f), vec3<bool>(true, true, false), vec3<u32>(21422u, 33110u, 1u))), Struct_3(true, vec4<u32>(3369u, 2124u, 0u, 13506u), 0i, vec2<i32>(i32(-2147483648), 0i), Struct_1(vec4<f32>(-149f, 1051f, -820f, -706f), vec3<bool>(true, true, true), vec3<u32>(96120u, 1u, 1u))), Struct_3(false, vec4<u32>(4294967295u, 0u, 98470u, 68746u), -42914i, vec2<i32>(-6531i, 8019i), Struct_1(vec4<f32>(-245f, -967f, 936f, 2740f), vec3<bool>(true, true, false), vec3<u32>(0u, 26908u, 9290u))), Struct_3(false, vec4<u32>(1u, 19822u, 77746u, 34099u), 1i, vec2<i32>(i32(-2147483648), 1i), Struct_1(vec4<f32>(1098f, -1000f, -1247f, 668f), vec3<bool>(true, true, false), vec3<u32>(4294967295u, 1u, 3545u))), Struct_3(true, vec4<u32>(0u, 19293u, 2770u, 29107u), -1i, vec2<i32>(-1i, -17462i), Struct_1(vec4<f32>(-619f, 1309f, 446f, -1000f), vec3<bool>(false, false, false), vec3<u32>(4294967295u, 0u, 4294967295u))), Struct_3(false, vec4<u32>(4294967295u, 17688u, 14846u, 62475u), -1i, vec2<i32>(1547i, 15515i), Struct_1(vec4<f32>(-357f, -1129f, -1368f, 1000f), vec3<bool>(false, false, false), vec3<u32>(56412u, 1u, 30590u))), Struct_3(true, vec4<u32>(1u, 0u, 62974u, 18223u), i32(-2147483648), vec2<i32>(-26646i, 0i), Struct_1(vec4<f32>(1274f, 1000f, -291f, -1000f), vec3<bool>(false, true, false), vec3<u32>(0u, 71187u, 1u))), Struct_3(true, vec4<u32>(4294967295u, 4294967295u, 44739u, 1u), 9154i, vec2<i32>(-1790i, -14902i), Struct_1(vec4<f32>(-273f, -821f, -1053f, 762f), vec3<bool>(false, false, false), vec3<u32>(32436u, 0u, 0u))), Struct_3(false, vec4<u32>(0u, 4675u, 1u, 1u), -28410i, vec2<i32>(-1i, 0i), Struct_1(vec4<f32>(380f, 1000f, 417f, -647f), vec3<bool>(false, true, false), vec3<u32>(28379u, 4978u, 12629u))), Struct_3(true, vec4<u32>(1u, 28508u, 52222u, 3475u), 38833i, vec2<i32>(0i, 997i), Struct_1(vec4<f32>(-737f, 982f, 592f, 1780f), vec3<bool>(true, false, false), vec3<u32>(12677u, 12671u, 4294967295u))), Struct_3(true, vec4<u32>(6116u, 1u, 52439u, 49745u), i32(-2147483648), vec2<i32>(-1i, 2147483647i), Struct_1(vec4<f32>(-464f, 2419f, -324f, 374f), vec3<bool>(true, true, true), vec3<u32>(4294967295u, 0u, 4294967295u))), Struct_3(false, vec4<u32>(1u, 1u, 53690u, 65637u), -2037i, vec2<i32>(-8417i, 0i), Struct_1(vec4<f32>(266f, -1825f, 218f, -1018f), vec3<bool>(true, false, false), vec3<u32>(9615u, 4294967295u, 5615u))), Struct_3(false, vec4<u32>(61418u, 69639u, 35797u, 0u), 54602i, vec2<i32>(i32(-2147483648), 1i), Struct_1(vec4<f32>(1613f, 744f, -1626f, 2834f), vec3<bool>(true, false, false), vec3<u32>(71921u, 4294967295u, 46796u))));

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_1(arg_0: vec4<u32>) -> bool {
    let var_0 = ~((select(_wgslsmith_div_vec2_u32(arg_0.zw, vec2<u32>(arg_0.x, 0u)), arg_0.yz, all(vec2<bool>(true, true))) << ((vec2<u32>(u_input.c, arg_0.x) & vec2<u32>(u_input.c, 0u)) % vec2<u32>(32u))) << (vec2<u32>(firstTrailingBit(1u), u_input.c) % vec2<u32>(32u)));
    var var_1 = max(u_input.a.x, _wgslsmith_mod_i32(~1i, 0i << (_wgslsmith_sub_u32(u_input.c, 24828u) % 32u))) >> (select(1u | (u_input.c & firstLeadingBit(39843u)), 1u, false) % 32u);
    global2 = array<Struct_3, 23>();
    global1 = array<Struct_4, 15>();
    global1 = array<Struct_4, 15>();
    return all(select(!vec2<bool>(any(vec2<bool>(false, false)), false), !select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), true));
}

fn func_2() -> vec3<bool> {
    let var_0 = Struct_4(Struct_3(true, _wgslsmith_clamp_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, 45079u, 24310u, u_input.c), vec4<u32>(u_input.c, u_input.c, 0u, 1u)), ~(~vec4<u32>(29093u, u_input.c, 0u, u_input.c)), countOneBits(abs(vec4<u32>(u_input.c, 1u, u_input.c, 22364u)))), u_input.b.x, abs(~vec2<i32>(u_input.b.x, -2147483647i) ^ -u_input.b), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1949f, -1800f, -668f, 388f)) + _wgslsmith_div_vec4_f32(vec4<f32>(469f, 746f, 170f, 1008f), vec4<f32>(921f, 411f, -701f, 1768f))), vec3<bool>(true, true, true), ~abs(vec3<u32>(u_input.c, u_input.c, 28099u)))), u_input.c, Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1193f, -816f, 1273f, 799f) * vec4<f32>(-1000f, -1164f, 2035f, -756f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1961f, 1316f, 1145f, 555f)), true)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1534f, 287f, -758f, -1130f) - vec4<f32>(741f, 267f, -989f, -600f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(509f, -1385f, 1183f, -214f)), all(vec4<bool>(true, false, false, false))))), select(vec3<bool>(true, any(vec4<bool>(false, true, true, true)), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), ~(~firstTrailingBit(vec3<u32>(1u, u_input.c, 1u)))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(121f, -624f, -498f, 100f)))), vec3<bool>(false, false, true), vec3<u32>(~_wgslsmith_div_u32(u_input.c, u_input.c), 4294967295u, u_input.c)));
    let var_1 = -u_input.a.x;
    let var_2 = global2[_wgslsmith_index_u32(var_0.b | u_input.c, 23u)];
    let var_3 = max(49019u, u_input.c);
    global1 = array<Struct_4, 15>();
    return vec3<bool>(true, -1240f > _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.c.a.x))), any(select(vec4<bool>(true, any(vec3<bool>(false, true, false)), var_2.e.b.x, true), !(!vec4<bool>(var_0.d.b.x, false, var_2.a, false)), !vec4<bool>(true, var_2.a, false, false))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: f32) -> Struct_2 {
    global2 = array<Struct_3, 23>();
    global1 = array<Struct_4, 15>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.a) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, arg_1.x, 1260f, 2123f)))))), vec3<bool>(false, true | !all(vec2<bool>(arg_0.b.x, arg_0.b.x)), arg_0.b.x), ~_wgslsmith_clamp_vec3_u32(firstLeadingBit(_wgslsmith_clamp_vec3_u32(arg_0.c, vec3<u32>(u_input.c, arg_0.c.x, 32175u), arg_0.c)), vec3<u32>(0u, 30813u, arg_0.c.x) >> ((vec3<u32>(arg_0.c.x, 18041u, 4294967295u) & vec3<u32>(1u, u_input.c, u_input.c)) % vec3<u32>(32u)), abs(_wgslsmith_mult_vec3_u32(arg_0.c, arg_0.c))));
    global0 = all(select(select(vec3<bool>(all(vec4<bool>(true, var_0.b.x, false, arg_0.b.x)), var_0.c.x <= var_0.c.x, func_1(vec4<u32>(u_input.c, 0u, 4294967295u, 51836u))), var_0.b, arg_1.x == _wgslsmith_f_op_f32(round(arg_2))), arg_0.b, vec3<bool>(all(select(arg_0.b.yx, var_0.b.yy, var_0.b.x)), true, true)));
    global0 = !func_1(reverseBits(~_wgslsmith_div_vec4_u32(vec4<u32>(35987u, 44239u, u_input.c, arg_0.c.x), vec4<u32>(0u, arg_0.c.x, 11943u, arg_0.c.x))));
    return Struct_2(_wgslsmith_mod_vec4_i32((~u_input.a << (firstTrailingBit(vec4<u32>(var_0.c.x, var_0.c.x, arg_0.c.x, var_0.c.x)) % vec4<u32>(32u))) ^ _wgslsmith_mod_vec4_i32(max(vec4<i32>(1i, u_input.a.x, u_input.a.x, u_input.b.x), u_input.a), u_input.a), -u_input.a), arg_0, Struct_1(arg_0.a, func_2(), _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(abs(vec3<u32>(arg_0.c.x, 4294967295u, arg_0.c.x)), _wgslsmith_add_vec3_u32(vec3<u32>(0u, var_0.c.x, 4294967295u), vec3<u32>(10558u, 1u, arg_0.c.x))), vec3<u32>(_wgslsmith_mod_u32(17494u, var_0.c.x), _wgslsmith_mult_u32(u_input.c, 0u), u_input.c))), abs(vec3<u32>(_wgslsmith_mod_u32(abs(u_input.c), _wgslsmith_add_u32(u_input.c, u_input.c)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 37849u), arg_0.c.xy), firstLeadingBit(arg_0.c.x) >> (5558u % 32u))));
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    global1 = array<Struct_4, 15>();
    let var_0 = select(22571u, firstTrailingBit(~_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(arg_0.d, vec3<u32>(u_input.c, 17977u, 4294967295u)), ~vec3<u32>(u_input.c, 35680u, 43296u))), func_3(arg_0.b, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.b.a.x), _wgslsmith_div_f32(-441f, arg_0.b.a.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(2033f, arg_0.c.a.x)), arg_0.c.b.x && arg_0.b.b.x)), _wgslsmith_f_op_f32(max(arg_0.c.a.x, _wgslsmith_f_op_f32(floor(1362f))))).c.b.x);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.b.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.a.x) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-155f - -585f), _wgslsmith_f_op_f32(-arg_0.c.a.x), true))))));
    var var_2 = false;
    global0 = func_3(func_3(func_3(Struct_1(vec4<f32>(arg_0.b.a.x, 132f, 270f, arg_0.c.a.x), select(arg_0.c.b, arg_0.b.b, vec3<bool>(false, true, true)), vec3<u32>(arg_0.b.c.x, 52162u, var_0)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c.a.x, 1000f))), func_3(func_3(arg_0.c, arg_0.b.a.xy, 832f).b, _wgslsmith_f_op_vec2_f32(floor(arg_0.b.a.yx)), -682f).c.a.x).c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.c.a.wx + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c.a.x, arg_0.b.a.x))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.a.x, 1000f)), _wgslsmith_f_op_vec2_f32(arg_0.b.a.yy * vec2<f32>(-747f, arg_0.b.a.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1006f, 2177f))))).b, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-424f, 536f), vec2<f32>(arg_0.b.a.x, arg_0.b.a.x)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(519f, arg_0.b.a.x))))))), _wgslsmith_f_op_f32(-1585f + _wgslsmith_f_op_f32(-1471f - _wgslsmith_f_op_f32(f32(-1f) * -1499f)))).c.b.x;
    return Struct_2(~(-arg_0.a ^ u_input.a), func_3(arg_0.b, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-func_3(arg_0.b, vec2<f32>(-215f, arg_0.b.a.x), arg_0.c.a.x).b.a.wy))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.c.a.x), _wgslsmith_f_op_f32(-arg_0.b.a.x)))).c, arg_0.b, _wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.d.x, ~arg_0.c.c.x, abs(1u)) | ~(~arg_0.c.c), ~reverseBits(min(arg_0.c.c, arg_0.c.c))));
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: vec3<i32>) -> Struct_4 {
    let var_0 = -arg_0.a.x;
    global2 = array<Struct_3, 23>();
    global2 = array<Struct_3, 23>();
    global1 = array<Struct_4, 15>();
    var var_1 = global1[_wgslsmith_index_u32(arg_0.d.x, 15u)];
    return Struct_4(Struct_3(false, select(vec4<u32>(_wgslsmith_sub_u32(4294967295u, var_1.b), arg_0.c.c.x, firstTrailingBit(15705u), u_input.c), abs(var_1.a.b), true), -var_0, vec2<i32>(_wgslsmith_mod_i32(~4409i, -var_1.a.d.x), arg_0.a.x), arg_0.c), ~_wgslsmith_add_u32(_wgslsmith_add_u32(~47752u, var_1.c.c.x), max(var_1.d.c.x, ~84046u)), Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.a.x, -1000f, var_1.d.a.x, arg_0.b.a.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d.a.x, -738f, 852f, var_1.c.a.x)))), !vec3<bool>(true, all(vec3<bool>(true, var_1.c.b.x, true)), arg_1), arg_0.b.c), func_3(func_4(arg_0).c, vec2<f32>(arg_0.c.a.x, 117f), -1000f).b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = (43293u <= ~u_input.c) | any(select(select(select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(true, true), all(vec3<bool>(false, true, true))), vec2<bool>(true, select(true, true, true)), true & all(vec2<bool>(true, true))));
    let var_0 = vec2<bool>(func_1(~abs(~vec4<u32>(u_input.c, 1u, 1u, 4294967295u))), all(!vec3<bool>(all(vec2<bool>(true, true)), false, true)));
    let var_1 = global1[_wgslsmith_index_u32(~15543u, 15u)];
    let var_2 = var_0.x;
    var var_3 = vec3<bool>(!(29317u == _wgslsmith_sub_u32(~u_input.c, ~4294967295u)), var_2, !var_0.x);
    global2 = array<Struct_3, 23>();
    let var_4 = func_5(func_4(func_3(Struct_1(vec4<f32>(var_1.d.a.x, var_1.a.e.a.x, var_1.a.e.a.x, -2361f), func_2(), vec3<u32>(4294967295u, var_1.d.c.x, 0u)), vec2<f32>(var_1.d.a.x, -465f), _wgslsmith_f_op_f32(-var_1.a.e.a.x))), var_2, reverseBits(countOneBits(firstLeadingBit(vec3<i32>(0i, -23707i, u_input.a.x)))));
    var_3 = !var_1.d.b;
    var var_5 = var_4.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.a.x, var_4.c.a.x, 637f, var_4.a.e.a.x))))), 54442u, vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + var_5.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-1307f))))), 906f, -434f));
}

