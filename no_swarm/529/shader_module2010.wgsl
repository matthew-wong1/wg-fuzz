struct Struct_1 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: f32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
    c: i32,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(vec4<bool>(false, false, false, true), -453f, i32(-2147483648), Struct_1(vec4<u32>(52149u, 0u, 13735u, 0u), vec3<f32>(589f, 440f, 1102f), 339f, vec4<f32>(151f, 310f, 1393f, -662f)), -332f), Struct_2(vec4<bool>(false, false, true, false), 1000f, 1i, Struct_1(vec4<u32>(4294967295u, 4294967295u, 68464u, 28842u), vec3<f32>(1634f, 619f, 807f), -785f, vec4<f32>(1240f, -642f, -357f, 552f)), -1239f), Struct_2(vec4<bool>(true, false, true, false), 343f, 75590i, Struct_1(vec4<u32>(4294967295u, 4294967295u, 4289u, 87465u), vec3<f32>(-2107f, 389f, 1942f), 466f, vec4<f32>(1000f, 1366f, -1000f, -541f)), -101f), Struct_2(vec4<bool>(false, true, true, false), 429f, 6638i, Struct_1(vec4<u32>(12895u, 4294967295u, 3294u, 1u), vec3<f32>(-255f, -1982f, 1582f), -353f, vec4<f32>(-693f, 1910f, -1324f, 617f)), 886f), Struct_2(vec4<bool>(false, false, true, false), 452f, 43039i, Struct_1(vec4<u32>(6639u, 3443u, 0u, 1u), vec3<f32>(2326f, -233f, 1365f), 226f, vec4<f32>(-1000f, 1036f, -442f, -218f)), -640f), Struct_2(vec4<bool>(false, false, true, true), 241f, 2487i, Struct_1(vec4<u32>(0u, 0u, 1u, 4294967295u), vec3<f32>(1408f, -1625f, 1635f), 1000f, vec4<f32>(-685f, -1360f, -1273f, -912f)), -607f), Struct_2(vec4<bool>(true, true, false, true), 575f, i32(-2147483648), Struct_1(vec4<u32>(12761u, 4294967295u, 1u, 4294967295u), vec3<f32>(-1702f, -872f, 893f), 1026f, vec4<f32>(-195f, -1049f, -875f, 1072f)), 887f), Struct_2(vec4<bool>(false, true, true, false), 1769f, -21589i, Struct_1(vec4<u32>(68634u, 4294967295u, 14810u, 4294967295u), vec3<f32>(224f, 836f, 1000f), -1131f, vec4<f32>(-674f, -1496f, -336f, 166f)), -731f), Struct_2(vec4<bool>(true, false, false, true), 120f, -1522i, Struct_1(vec4<u32>(0u, 13553u, 1u, 4294967295u), vec3<f32>(-664f, 500f, -1081f), 765f, vec4<f32>(727f, 1866f, 1488f, 1000f)), 550f), Struct_2(vec4<bool>(false, true, false, false), -165f, 0i, Struct_1(vec4<u32>(4294967295u, 4294967295u, 1u, 90161u), vec3<f32>(116f, -1115f, 683f), 1000f, vec4<f32>(972f, -1229f, 916f, 314f)), -132f), Struct_2(vec4<bool>(false, true, false, false), 1031f, i32(-2147483648), Struct_1(vec4<u32>(13719u, 10160u, 0u, 46296u), vec3<f32>(1333f, -1085f, 803f), -614f, vec4<f32>(197f, -2292f, -779f, -691f)), 666f), Struct_2(vec4<bool>(true, false, false, false), -774f, 2147483647i, Struct_1(vec4<u32>(0u, 0u, 7078u, 4294967295u), vec3<f32>(1728f, 885f, -496f), 108f, vec4<f32>(103f, -575f, -393f, -3039f)), 103f), Struct_2(vec4<bool>(true, true, false, true), 659f, -75026i, Struct_1(vec4<u32>(4294967295u, 0u, 1u, 43283u), vec3<f32>(946f, 2234f, -289f), 1820f, vec4<f32>(644f, 312f, 621f, 1863f)), -1252f), Struct_2(vec4<bool>(false, true, false, false), -758f, 43428i, Struct_1(vec4<u32>(16039u, 4294967295u, 1u, 58150u), vec3<f32>(1000f, 376f, -525f), 380f, vec4<f32>(308f, -395f, -883f, 865f)), -215f), Struct_2(vec4<bool>(false, true, true, false), 621f, 70743i, Struct_1(vec4<u32>(0u, 55726u, 41054u, 4294967295u), vec3<f32>(-2210f, 315f, 346f), 404f, vec4<f32>(-263f, 1410f, 166f, -475f)), 1526f), Struct_2(vec4<bool>(true, true, false, true), -1117f, 1i, Struct_1(vec4<u32>(53712u, 4294967295u, 12450u, 1u), vec3<f32>(-793f, 927f, -325f), -1323f, vec4<f32>(807f, -1747f, -1478f, -327f)), -1310f), Struct_2(vec4<bool>(false, false, true, true), -894f, i32(-2147483648), Struct_1(vec4<u32>(4420u, 64016u, 0u, 45531u), vec3<f32>(1660f, -2729f, 1114f), 675f, vec4<f32>(576f, 255f, -845f, 742f)), -773f), Struct_2(vec4<bool>(true, true, true, false), 886f, -33223i, Struct_1(vec4<u32>(22318u, 4294967295u, 13084u, 20922u), vec3<f32>(-297f, -1834f, -753f), 280f, vec4<f32>(1000f, -101f, -1000f, 415f)), -709f), Struct_2(vec4<bool>(false, false, true, false), -211f, 2147483647i, Struct_1(vec4<u32>(47568u, 74425u, 13126u, 1u), vec3<f32>(1105f, 158f, -352f), -492f, vec4<f32>(1432f, -1461f, 1000f, -187f)), -1000f), Struct_2(vec4<bool>(false, true, false, true), -2120f, 0i, Struct_1(vec4<u32>(0u, 4294967295u, 65513u, 47142u), vec3<f32>(-1000f, -672f, -1788f), -2472f, vec4<f32>(1746f, 1000f, 1067f, -229f)), -935f), Struct_2(vec4<bool>(false, false, true, false), -721f, i32(-2147483648), Struct_1(vec4<u32>(13943u, 2319u, 55362u, 17710u), vec3<f32>(-109f, 1000f, -114f), -448f, vec4<f32>(-2668f, 2235f, 552f, -1189f)), -395f), Struct_2(vec4<bool>(false, false, false, true), 1087f, 2147483647i, Struct_1(vec4<u32>(0u, 0u, 59153u, 1u), vec3<f32>(1872f, 1000f, -288f), 1140f, vec4<f32>(1238f, -206f, 1000f, -1048f)), -434f), Struct_2(vec4<bool>(false, true, true, true), -696f, 32965i, Struct_1(vec4<u32>(113167u, 0u, 4294967295u, 13663u), vec3<f32>(-617f, 361f, -2083f), 861f, vec4<f32>(-313f, -1390f, -329f, 773f)), 1220f), Struct_2(vec4<bool>(true, false, false, true), 231f, -4453i, Struct_1(vec4<u32>(4294967295u, 28769u, 0u, 1u), vec3<f32>(549f, -642f, 1233f), 1136f, vec4<f32>(820f, 886f, 391f, 516f)), -1427f), Struct_2(vec4<bool>(false, false, true, true), -2709f, 0i, Struct_1(vec4<u32>(23058u, 0u, 34913u, 49541u), vec3<f32>(-117f, 258f, 1000f), 2245f, vec4<f32>(-660f, 257f, 121f, -1332f)), -170f), Struct_2(vec4<bool>(false, false, true, true), -301f, 0i, Struct_1(vec4<u32>(0u, 74089u, 95084u, 78850u), vec3<f32>(-739f, 588f, 895f), -277f, vec4<f32>(1000f, 787f, -1000f, 1963f)), -1000f), Struct_2(vec4<bool>(false, true, true, false), 250f, 80971i, Struct_1(vec4<u32>(1u, 29826u, 1u, 9282u), vec3<f32>(-376f, 958f, -999f), 552f, vec4<f32>(-1000f, -618f, -1000f, -1000f)), -179f), Struct_2(vec4<bool>(false, false, true, true), 361f, 41201i, Struct_1(vec4<u32>(77648u, 1u, 8555u, 1u), vec3<f32>(1156f, 1000f, -816f), -1739f, vec4<f32>(-484f, 1939f, 1000f, -888f)), -1158f), Struct_2(vec4<bool>(true, false, false, true), 663f, 2147483647i, Struct_1(vec4<u32>(1u, 4294967295u, 1u, 78015u), vec3<f32>(-2083f, -1157f, 601f), 1389f, vec4<f32>(-1021f, 1446f, -433f, 1230f)), -717f), Struct_2(vec4<bool>(true, true, true, false), -838f, -1i, Struct_1(vec4<u32>(4294967295u, 50073u, 4294967295u, 14379u), vec3<f32>(1055f, 165f, -326f), 1012f, vec4<f32>(1177f, -261f, -920f, 489f)), 1724f));

var<private> global1: Struct_3;

var<private> global2: bool = true;

var<private> global3: array<vec4<bool>, 20>;

var<private> global4: Struct_2 = Struct_2(vec4<bool>(true, false, true, false), 1788f, -70764i, Struct_1(vec4<u32>(48755u, 39824u, 30839u, 4294967295u), vec3<f32>(550f, 1000f, -151f), -345f, vec4<f32>(1103f, 1240f, 303f, -1227f)), -1028f);

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32) -> i32 {
    return u_input.a.x;
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: vec4<bool>) -> Struct_3 {
    global4 = global0[_wgslsmith_index_u32(1u, 30u)];
    let var_0 = Struct_3(global4.a.wxy, global4.d.a.x);
    global1 = Struct_3(vec3<bool>(false, any(vec4<bool>(!global1.a.x, false, true, true)), false), _wgslsmith_mod_u32(~global1.b, ~47729u));
    let var_1 = global4.d;
    var var_2 = Struct_4(var_0, Struct_2(select(select(select(global3[_wgslsmith_index_u32(97582u, 20u)], vec4<bool>(true, true, var_0.a.x, global4.a.x), global1.a.x), vec4<bool>(arg_2.x, arg_2.x, arg_2.x, true), true), vec4<bool>(!arg_2.x, any(global3[_wgslsmith_index_u32(55277u, 20u)]), u_input.b.x == var_0.b, !arg_0), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b.x, 69229u, u_input.b.x, 0u), vec4<u32>(global4.d.a.x, var_0.b, var_0.b, var_0.b)), 20u)]), _wgslsmith_f_op_f32(var_1.d.x * var_1.d.x), func_3(_wgslsmith_add_u32(_wgslsmith_add_u32(var_0.b, 4294967295u), countOneBits(0u))), Struct_1(vec4<u32>(var_0.b, 0u, var_0.b, var_1.a.x) | vec4<u32>(1u, 29646u, var_1.a.x, u_input.b.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.b, 661f, -1946f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -218f), var_1.b.x)), _wgslsmith_f_op_vec4_f32(var_1.d * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-502f, 1111f, -311f, var_1.b.x)))), var_1.b.x), Struct_2(select(select(arg_2, vec4<bool>(global1.a.x, global1.a.x, false, false), true), !select(vec4<bool>(arg_1, global4.a.x, true, arg_2.x), vec4<bool>(false, arg_1, arg_2.x, arg_2.x), arg_1), select(vec4<bool>(false, arg_2.x, true, false), global4.a, select(vec4<bool>(arg_2.x, true, global4.a.x, global4.a.x), vec4<bool>(var_0.a.x, arg_1, false, false), arg_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-297f + -1875f)), _wgslsmith_sub_i32(min(u_input.a.x, global4.c) | _wgslsmith_sub_i32(global4.c, global4.c), select(u_input.a.x, 1i, true)), global4.d, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(1472f))))));
    return var_2.a;
}

fn func_1() -> Struct_4 {
    let var_0 = global1.a.x;
    global2 = !global4.a.x;
    let var_1 = false;
    var var_2 = _wgslsmith_add_i32((_wgslsmith_div_i32(u_input.a.x ^ global4.c, global4.c) << (_wgslsmith_clamp_u32(_wgslsmith_mod_u32(u_input.b.x, global1.b), 0u, 1u) % 32u)) ^ _wgslsmith_clamp_i32(firstTrailingBit(_wgslsmith_clamp_i32(-17365i, global4.c, 8515i)), u_input.a.x, _wgslsmith_mult_i32(2147483647i, global4.c)), global4.c);
    var var_3 = global4.d;
    return Struct_4(func_2(true, global4.a.x, !global4.a), global0[_wgslsmith_index_u32(func_2(global4.a.x, false, global3[_wgslsmith_index_u32(11619u, 20u)]).b, 30u)], Struct_2(vec4<bool>(!global4.a.x, min(global1.b, global1.b) == ~u_input.b.x, global4.a.x, true), global4.b, abs(-(-10803i >> (0u % 32u))), global4.d, _wgslsmith_f_op_f32(-var_3.c)));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_4, arg_2: vec4<u32>, arg_3: vec4<u32>) -> vec3<f32> {
    global0 = array<Struct_2, 30>();
    let var_0 = reverseBits(-(abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(30309i, global4.c, global4.c, global4.c), vec4<i32>(40078i, u_input.a.x, -32809i, 21546i), vec4<i32>(global4.c, 0i, 1i, global4.c))) >> (abs(firstTrailingBit(vec4<u32>(18263u, arg_1.c.d.a.x, arg_0.x, global1.b))) % vec4<u32>(32u))));
    global1 = Struct_3(vec3<bool>(!(~4294967295u != ~arg_1.c.d.a.x), false, false), 0u);
    var var_1 = func_1();
    var var_2 = func_1();
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.b.d.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(u_input.b.x >= 1u, true, select(global4.a.x, false, true), true);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(vec4<u32>(13576u, min(54632u, global1.b), u_input.b.x, _wgslsmith_sub_u32(u_input.b.x, 1u)), func_1(), _wgslsmith_add_vec4_u32(global4.d.a, vec4<u32>(global4.d.a.x, global1.b, global1.b, global4.d.a.x) << (global4.d.a % vec4<u32>(32u))), vec4<u32>(global1.b, u_input.b.x, 96199u, 1u) << (firstLeadingBit(vec4<u32>(u_input.b.x, 1u, global1.b, 0u)) % vec4<u32>(32u))))));
    var_1 = global4.d.b;
    var var_2 = var_0.x;
    global1 = Struct_3(vec3<bool>(false, global1.a.x, true), ~18841u);
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global4.d.d.zwz));
    global0 = array<Struct_2, 30>();
    var_1 = _wgslsmith_f_op_vec3_f32(-global4.d.b);
    let x = u_input.a;
    s_output = StorageBuffer(~select(~(~vec3<u32>(global4.d.a.x, global4.d.a.x, global4.d.a.x)), _wgslsmith_div_vec3_u32(~global4.d.a.zxz, _wgslsmith_sub_vec3_u32(global4.d.a.yxz, vec3<u32>(global4.d.a.x, 1u, global4.d.a.x))), global4.a.x), ~func_1().c.d.a.xyw);
}

