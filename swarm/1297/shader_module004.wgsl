struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec3<f32>,
    d: vec3<f32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: vec2<bool>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: f32,
    d: i32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: Struct_3,
    d: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_2,
    c: vec4<bool>,
    d: f32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1064f;

var<private> global1: array<Struct_3, 27> = array<Struct_3, 27>(Struct_3(36846i, Struct_2(vec4<bool>(false, true, true, false), vec3<u32>(0u, 4294967295u, 0u), vec2<bool>(true, false), Struct_1(-1i, vec4<u32>(1u, 1u, 0u, 19687u), vec3<f32>(-1059f, 2345f, 1413f), vec3<f32>(1332f, -479f, 362f), vec3<i32>(9725i, 1259i, 1i)), 20166u), -1006f, -34492i), Struct_3(2147483647i, Struct_2(vec4<bool>(false, false, false, false), vec3<u32>(1u, 1u, 1u), vec2<bool>(false, true), Struct_1(-28567i, vec4<u32>(0u, 0u, 20699u, 4294967295u), vec3<f32>(-230f, -1738f, -686f), vec3<f32>(-327f, -502f, -1748f), vec3<i32>(61472i, 7442i, 0i)), 0u), -592f, -57192i), Struct_3(15753i, Struct_2(vec4<bool>(true, true, false, true), vec3<u32>(43094u, 545u, 66661u), vec2<bool>(false, false), Struct_1(330i, vec4<u32>(4294967295u, 0u, 20149u, 1u), vec3<f32>(-1404f, -571f, 1265f), vec3<f32>(144f, -855f, 421f), vec3<i32>(-1i, -18270i, -46182i)), 55393u), -1569f, -5904i), Struct_3(4028i, Struct_2(vec4<bool>(true, true, true, false), vec3<u32>(1u, 38929u, 29748u), vec2<bool>(true, true), Struct_1(-13522i, vec4<u32>(0u, 59696u, 1u, 60269u), vec3<f32>(1000f, 306f, -345f), vec3<f32>(-910f, 203f, 1354f), vec3<i32>(30579i, 0i, 71901i)), 11160u), -1240f, -20939i), Struct_3(53439i, Struct_2(vec4<bool>(true, true, false, true), vec3<u32>(11196u, 0u, 19909u), vec2<bool>(false, true), Struct_1(0i, vec4<u32>(4294967295u, 49698u, 0u, 27268u), vec3<f32>(-154f, -400f, -124f), vec3<f32>(-495f, 822f, -820f), vec3<i32>(0i, -18261i, -25638i)), 1u), 183f, 2147483647i), Struct_3(1i, Struct_2(vec4<bool>(true, true, false, true), vec3<u32>(34728u, 0u, 17601u), vec2<bool>(false, true), Struct_1(-13003i, vec4<u32>(11827u, 72176u, 0u, 25339u), vec3<f32>(1000f, 1085f, 991f), vec3<f32>(-1977f, -1974f, 1842f), vec3<i32>(i32(-2147483648), -12974i, -55557i)), 9519u), 264f, -21056i), Struct_3(9480i, Struct_2(vec4<bool>(false, true, true, false), vec3<u32>(17129u, 4294967295u, 1906u), vec2<bool>(true, false), Struct_1(-1i, vec4<u32>(2321u, 55564u, 70927u, 4294967295u), vec3<f32>(-548f, 258f, 373f), vec3<f32>(-1869f, 916f, 1032f), vec3<i32>(0i, 0i, -13618i)), 1u), -462f, -40365i), Struct_3(2147483647i, Struct_2(vec4<bool>(true, false, false, true), vec3<u32>(1u, 1u, 1u), vec2<bool>(true, false), Struct_1(40383i, vec4<u32>(35878u, 1u, 34538u, 43461u), vec3<f32>(-1442f, 1456f, 1000f), vec3<f32>(597f, -364f, 1929f), vec3<i32>(7367i, -1i, 0i)), 1u), -334f, 3254i), Struct_3(13512i, Struct_2(vec4<bool>(true, false, true, false), vec3<u32>(0u, 4294967295u, 1u), vec2<bool>(false, true), Struct_1(1i, vec4<u32>(1u, 65901u, 6686u, 33568u), vec3<f32>(129f, -804f, -1961f), vec3<f32>(-242f, 1000f, 797f), vec3<i32>(26637i, -12130i, 63228i)), 4294967295u), 963f, -1i), Struct_3(17352i, Struct_2(vec4<bool>(false, false, true, false), vec3<u32>(2921u, 0u, 4294967295u), vec2<bool>(false, false), Struct_1(0i, vec4<u32>(0u, 123188u, 1148u, 57109u), vec3<f32>(892f, 133f, -432f), vec3<f32>(166f, 883f, 1414f), vec3<i32>(i32(-2147483648), 0i, -49471i)), 4294967295u), 1659f, 2147483647i), Struct_3(1i, Struct_2(vec4<bool>(false, false, true, true), vec3<u32>(1u, 1u, 4294967295u), vec2<bool>(false, true), Struct_1(0i, vec4<u32>(1u, 4294967295u, 35438u, 39036u), vec3<f32>(621f, -1224f, 346f), vec3<f32>(218f, 235f, 690f), vec3<i32>(i32(-2147483648), 16322i, 13451i)), 30021u), 1322f, 0i), Struct_3(-2923i, Struct_2(vec4<bool>(false, false, false, true), vec3<u32>(4294967295u, 1u, 96063u), vec2<bool>(false, false), Struct_1(-1i, vec4<u32>(48109u, 4294967295u, 61050u, 42917u), vec3<f32>(-141f, -1000f, 472f), vec3<f32>(1035f, -1000f, -1000f), vec3<i32>(25120i, 38066i, -18335i)), 1u), -1634f, -942i), Struct_3(1i, Struct_2(vec4<bool>(false, true, false, true), vec3<u32>(4294967295u, 4294967295u, 0u), vec2<bool>(true, false), Struct_1(2147483647i, vec4<u32>(0u, 46256u, 0u, 4294967295u), vec3<f32>(1288f, -864f, -751f), vec3<f32>(-1054f, -1081f, 1127f), vec3<i32>(21846i, i32(-2147483648), 1i)), 7201u), 676f, -18252i), Struct_3(2147483647i, Struct_2(vec4<bool>(false, false, true, true), vec3<u32>(70225u, 24582u, 4294967295u), vec2<bool>(true, true), Struct_1(100154i, vec4<u32>(0u, 4294967295u, 48557u, 47499u), vec3<f32>(-1334f, 895f, 598f), vec3<f32>(195f, 1593f, 969f), vec3<i32>(16076i, -15909i, 1i)), 1u), 852f, 12552i), Struct_3(-6517i, Struct_2(vec4<bool>(false, false, true, false), vec3<u32>(0u, 4294967295u, 1u), vec2<bool>(true, true), Struct_1(-9227i, vec4<u32>(22672u, 0u, 0u, 53639u), vec3<f32>(-805f, -145f, -288f), vec3<f32>(1350f, 867f, 1015f), vec3<i32>(-14636i, 33116i, -26837i)), 51566u), 268f, -16656i), Struct_3(-1i, Struct_2(vec4<bool>(true, false, false, true), vec3<u32>(4294967295u, 30637u, 4294967295u), vec2<bool>(true, true), Struct_1(30949i, vec4<u32>(4294967295u, 74668u, 6903u, 1u), vec3<f32>(-244f, -387f, 357f), vec3<f32>(-384f, -1192f, -201f), vec3<i32>(0i, -695i, -33997i)), 0u), 481f, 14078i), Struct_3(-54254i, Struct_2(vec4<bool>(true, false, false, true), vec3<u32>(17764u, 22606u, 4294967295u), vec2<bool>(false, false), Struct_1(i32(-2147483648), vec4<u32>(11808u, 29497u, 1u, 0u), vec3<f32>(-1235f, -346f, 921f), vec3<f32>(-181f, -277f, -1028f), vec3<i32>(0i, i32(-2147483648), 17260i)), 952u), -148f, -9508i), Struct_3(i32(-2147483648), Struct_2(vec4<bool>(false, true, true, false), vec3<u32>(4428u, 0u, 42430u), vec2<bool>(true, false), Struct_1(0i, vec4<u32>(17146u, 1u, 98704u, 34178u), vec3<f32>(-1420f, -847f, 559f), vec3<f32>(967f, 150f, 1908f), vec3<i32>(-25137i, i32(-2147483648), 1i)), 35848u), -1096f, -21241i), Struct_3(-433i, Struct_2(vec4<bool>(true, true, false, false), vec3<u32>(106252u, 2724u, 1u), vec2<bool>(true, false), Struct_1(-29563i, vec4<u32>(0u, 0u, 25899u, 62762u), vec3<f32>(-322f, 337f, 995f), vec3<f32>(-1287f, -1000f, 298f), vec3<i32>(i32(-2147483648), -1i, -1i)), 103574u), -435f, 0i), Struct_3(8986i, Struct_2(vec4<bool>(false, false, true, true), vec3<u32>(0u, 58880u, 56798u), vec2<bool>(false, true), Struct_1(32748i, vec4<u32>(88794u, 4294967295u, 0u, 13446u), vec3<f32>(320f, -430f, -483f), vec3<f32>(-439f, 884f, -1450f), vec3<i32>(-1i, -29244i, 25693i)), 11481u), -183f, 37052i), Struct_3(53445i, Struct_2(vec4<bool>(true, true, false, false), vec3<u32>(0u, 0u, 7615u), vec2<bool>(false, true), Struct_1(-15259i, vec4<u32>(1u, 0u, 1u, 37068u), vec3<f32>(-1000f, 338f, 534f), vec3<f32>(-1095f, -777f, -519f), vec3<i32>(0i, 0i, 2147483647i)), 25358u), -1182f, i32(-2147483648)), Struct_3(1i, Struct_2(vec4<bool>(false, false, true, false), vec3<u32>(0u, 0u, 4294967295u), vec2<bool>(false, true), Struct_1(1i, vec4<u32>(4294967295u, 13331u, 0u, 4294967295u), vec3<f32>(-1000f, 145f, 851f), vec3<f32>(-993f, 1352f, -156f), vec3<i32>(9231i, 0i, 0i)), 84529u), -1952f, 2147483647i), Struct_3(2147483647i, Struct_2(vec4<bool>(false, false, false, true), vec3<u32>(21659u, 4294967295u, 4294967295u), vec2<bool>(true, true), Struct_1(-69111i, vec4<u32>(111435u, 92746u, 0u, 4294967295u), vec3<f32>(-569f, 521f, 1620f), vec3<f32>(-268f, -944f, -633f), vec3<i32>(1i, 33540i, 2147483647i)), 10287u), -1862f, -8516i), Struct_3(-1i, Struct_2(vec4<bool>(false, true, true, true), vec3<u32>(0u, 8773u, 4294967295u), vec2<bool>(false, true), Struct_1(0i, vec4<u32>(11407u, 5077u, 41063u, 12645u), vec3<f32>(1199f, -724f, 812f), vec3<f32>(-775f, 523f, -1716f), vec3<i32>(1i, 2147483647i, i32(-2147483648))), 4294967295u), -1967f, 0i), Struct_3(i32(-2147483648), Struct_2(vec4<bool>(true, false, false, true), vec3<u32>(1u, 54629u, 61005u), vec2<bool>(true, true), Struct_1(18978i, vec4<u32>(4294967295u, 0u, 1u, 0u), vec3<f32>(-904f, -745f, -903f), vec3<f32>(-512f, 722f, -787f), vec3<i32>(0i, 2147483647i, 96311i)), 75965u), -415f, 0i), Struct_3(i32(-2147483648), Struct_2(vec4<bool>(true, true, false, false), vec3<u32>(1u, 0u, 48362u), vec2<bool>(true, true), Struct_1(i32(-2147483648), vec4<u32>(0u, 11370u, 38385u, 0u), vec3<f32>(-227f, -669f, -250f), vec3<f32>(-194f, -1000f, 2940f), vec3<i32>(2147483647i, -1619i, i32(-2147483648))), 21221u), -383f, -45534i), Struct_3(i32(-2147483648), Struct_2(vec4<bool>(true, true, false, true), vec3<u32>(1u, 0u, 4294967295u), vec2<bool>(false, true), Struct_1(-86538i, vec4<u32>(0u, 4294967295u, 116720u, 4294967295u), vec3<f32>(846f, -1239f, 687f), vec3<f32>(-654f, -2245f, -1148f), vec3<i32>(0i, 6321i, 46156i)), 0u), -310f, -1i));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32, arg_1: vec3<bool>) -> i32 {
    global1 = array<Struct_3, 27>();
    var var_0 = 47637u < min(u_input.d, 4294967295u);
    global1 = array<Struct_3, 27>();
    let var_1 = Struct_5(Struct_3(-(u_input.a.x | ~arg_0), Struct_2(vec4<bool>(false, arg_1.x, u_input.d != u_input.d, true), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d, u_input.d, u_input.d), vec3<u32>(4294967295u, u_input.d, 21420u), vec3<u32>(u_input.d, 1u, 8207u)) >> ((vec3<u32>(u_input.d, u_input.d, 1u) << (vec3<u32>(11258u, 4294967295u, 4294967295u) % vec3<u32>(32u))) % vec3<u32>(32u)), vec2<bool>(select(true, false, arg_1.x), true), Struct_1(1i, vec4<u32>(0u, 2308u, 36339u, u_input.d), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-785f, -133f, 762f), vec3<f32>(1062f, 246f, 1000f), arg_1)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-327f, -994f, -680f) * vec3<f32>(103f, 2156f, 1549f)), vec3<i32>(arg_0, 38650i, arg_0)), ~u_input.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))), 1i), Struct_2(select(!select(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true), vec4<bool>(arg_1.x, arg_1.x, true, false), vec4<bool>(false, arg_1.x, arg_1.x, arg_1.x)), !vec4<bool>(arg_1.x, true, true, true), !(!vec4<bool>(true, true, true, arg_1.x))), reverseBits((vec3<u32>(1u, 41289u, 47273u) >> (vec3<u32>(803u, 75543u, u_input.d) % vec3<u32>(32u))) | reverseBits(vec3<u32>(u_input.d, u_input.d, u_input.d))), !(!(!arg_1.yy)), Struct_1(1i, firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.d, u_input.d, u_input.d), vec4<u32>(u_input.d, u_input.d, 14726u, u_input.d))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1967f, 844f, 479f), vec3<f32>(881f, -1574f, 514f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-520f, 1146f, 301f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(934f, -2486f, -650f))), abs(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.c.x, u_input.a.x, -22466i), vec3<i32>(51683i, arg_0, 41977i)))), ~(u_input.d | u_input.d)), !vec4<bool>(all(arg_1.yy), arg_1.x, any(arg_1.yy), any(!vec4<bool>(arg_1.x, false, arg_1.x, true))), 1000f, vec4<bool>(any(select(vec3<bool>(arg_1.x, arg_1.x, false), arg_1, vec3<bool>(arg_1.x, arg_1.x, false))), !arg_1.x, arg_1.x, select(12546u, 4294967295u, false) <= countOneBits(~72916u)));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-493f, 757f, arg_1.x)), _wgslsmith_f_op_f32(-var_1.a.b.d.c.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(206f * var_1.a.c), -1497f)))), -962f, _wgslsmith_f_op_f32(257f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d * _wgslsmith_f_op_f32(exp2(var_1.d))) * var_1.a.b.d.c.x)), var_1.d);
    return 25844i;
}

fn func_4(arg_0: Struct_5) -> f32 {
    let var_0 = Struct_4(select(arg_0.c.yyy, arg_0.e.yyy, true), vec3<u32>(arg_0.b.b.x, 1u, _wgslsmith_mod_u32(~arg_0.a.b.e, _wgslsmith_add_u32(1u, ~6314u))), Struct_3(-arg_0.a.b.d.e.x, arg_0.a.b, _wgslsmith_f_op_f32(arg_0.d - _wgslsmith_f_op_f32(-267f - _wgslsmith_f_op_f32(f32(-1f) * -549f))), 2147483647i), ~min(u_input.b.x ^ 27460i, -arg_0.b.d.e.x) >> (_wgslsmith_clamp_u32(~(~u_input.d), firstTrailingBit(arg_0.b.b.x & 1u), firstLeadingBit(52513u)) % 32u));
    return 1300f;
}

fn func_2(arg_0: vec2<f32>) -> i32 {
    global0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_4(Struct_5(Struct_3(u_input.c.x, Struct_2(vec4<bool>(true, true, false, true), vec3<u32>(64913u, 7963u, u_input.d), vec2<bool>(true, false), Struct_1(u_input.e, vec4<u32>(u_input.d, 0u, u_input.d, 1u), vec3<f32>(-170f, 346f, 1184f), vec3<f32>(-539f, -1679f, arg_0.x), vec3<i32>(u_input.e, u_input.b.x, u_input.a.x)), 4294967295u), arg_0.x, func_3(1i, vec3<bool>(false, true, true))), Struct_2(vec4<bool>(false, true, true, true), ~vec3<u32>(51078u, u_input.d, u_input.d), select(vec2<bool>(false, true), vec2<bool>(true, true), true), Struct_1(10763i, vec4<u32>(u_input.d, 78750u, u_input.d, 56581u), vec3<f32>(arg_0.x, -1249f, arg_0.x), vec3<f32>(350f, arg_0.x, arg_0.x), vec3<i32>(u_input.e, u_input.e, -16561i)), ~u_input.d), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1300f - 1000f)), select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true)), vec4<bool>(false, true, false, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-539f * _wgslsmith_f_op_f32(-arg_0.x)))));
    let var_0 = abs(select(vec3<i32>(2147483647i, -12092i, u_input.e) << (~select(vec3<u32>(4294967295u, 0u, 24655u), vec3<u32>(u_input.d, u_input.d, u_input.d), vec3<bool>(false, true, false)) % vec3<u32>(32u)), vec3<i32>(u_input.c.x, u_input.a.x << (29809u % 32u), reverseBits(_wgslsmith_mult_i32(u_input.b.x, u_input.c.x))), all(vec2<bool>(true, u_input.d > 4294967295u))));
    global1 = array<Struct_3, 27>();
    global0 = 913f;
    let var_1 = Struct_5(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~55240u, 27958u), 27u)], Struct_2(select(select(vec4<bool>(true, true, false, false), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false))), vec4<bool>(true, true, any(vec2<bool>(false, false)), true), any(vec4<bool>(true, true, true, false)) && all(vec3<bool>(false, true, true))), vec3<u32>(~0u, 38295u, 44976u), !select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false))), Struct_1(-2147483647i, ~vec4<u32>(u_input.d, u_input.d, u_input.d, 1u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, -167f, -328f) * vec3<f32>(arg_0.x, arg_0.x, -349f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(777f, arg_0.x, 334f) + vec3<f32>(arg_0.x, 1298f, -1000f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, 1000f))), select(var_0, vec3<i32>(1i, 1i, 1i), true)), 49900u), select(vec4<bool>(true, true, true, true), vec4<bool>(var_0.x > ~(-35350i), !any(vec2<bool>(true, true)), all(vec2<bool>(false, true)), (u_input.d << (u_input.d % 32u)) != u_input.d), vec4<bool>(true, true, true, true)), arg_0.x, !select(vec4<bool>(any(vec3<bool>(false, true, true)), true, all(vec4<bool>(false, true, true, true)), all(vec2<bool>(false, true))), vec4<bool>(false, u_input.b.x > 30876i, select(false, true, false), any(vec3<bool>(false, true, false))), false));
    return ~var_0.x;
}

fn func_1() -> vec3<f32> {
    global0 = _wgslsmith_f_op_f32(trunc(-878f));
    global1 = array<Struct_3, 27>();
    var var_0 = Struct_4(!vec3<bool>(any(vec2<bool>(false, true)), all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false))), any(vec2<bool>(true, true)) & false), ~(~max(vec3<u32>(u_input.d, u_input.d, 40834u) << (vec3<u32>(20761u, 5799u, u_input.d) % vec3<u32>(32u)), min(vec3<u32>(u_input.d, 1u, u_input.d), vec3<u32>(11146u, 9653u, u_input.d)))), global1[_wgslsmith_index_u32(1u, 27u)], ~min(u_input.a.x, 13011i & u_input.b.x));
    var var_1 = Struct_5(Struct_3(_wgslsmith_mod_i32(12935i, ~func_2(vec2<f32>(674f, 1191f))), Struct_2(vec4<bool>(true, var_0.c.b.c.x, false, all(var_0.a.xy)), vec3<u32>(_wgslsmith_div_u32(0u, 37973u), var_0.c.b.e, _wgslsmith_mult_u32(4294967295u, u_input.d)), !vec2<bool>(false, var_0.c.b.a.x), Struct_1(2147483647i, vec4<u32>(var_0.b.x, u_input.d, 0u, 1u), _wgslsmith_f_op_vec3_f32(var_0.c.b.d.c - vec3<f32>(var_0.c.b.d.d.x, var_0.c.c, 1000f)), var_0.c.b.d.c, var_0.c.b.d.e ^ vec3<i32>(u_input.a.x, -40938i, -30005i)), ~67729u << ((u_input.d ^ u_input.d) % 32u)), -370f, var_0.d), var_0.c.b, var_0.c.b.a, -1106f, var_0.c.b.a);
    var var_2 = var_0.c;
    return vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_0.c.c)), -878f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c))))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-268f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-589f, var_1.d, var_1.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_2.c, _wgslsmith_f_op_f32(1265f * -514f), !var_2.b.c.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -329f))), any(select(var_2.b.a.zwz, var_2.b.a.xxy, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.c + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -462f), _wgslsmith_f_op_f32(1353f + -917f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(0u, 27u)];
    var_0 = global1[_wgslsmith_index_u32(u_input.d, 27u)];
    var_0 = Struct_3(236i, Struct_2(var_0.b.a, ~_wgslsmith_add_vec3_u32(~var_0.b.b, _wgslsmith_clamp_vec3_u32(var_0.b.d.b.zww, var_0.b.b, var_0.b.d.b.zww)), !vec2<bool>(var_0.b.a.x || true, !var_0.b.a.x), Struct_1((var_0.b.d.a ^ u_input.a.x) | var_0.d, _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(var_0.b.d.b, var_0.b.d.b), var_0.b.d.b), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_0.b.d.c), vec3<f32>(-965f, var_0.c, 1000f), var_0.b.a.xyw)), _wgslsmith_f_op_vec3_f32(func_1()), -vec3<i32>(-2147483647i, -2147483647i, u_input.c.x) >> (vec3<u32>(var_0.b.b.x, 4294967295u, var_0.b.d.b.x) % vec3<u32>(32u))), var_0.b.e), _wgslsmith_f_op_f32(exp2(var_0.b.d.d.x)), _wgslsmith_dot_vec3_i32(((u_input.c << (var_0.b.b % vec3<u32>(32u))) >> (_wgslsmith_div_vec3_u32(var_0.b.d.b.xzz, vec3<u32>(48695u, u_input.d, var_0.b.d.b.x)) % vec3<u32>(32u))) | ~u_input.c, reverseBits(vec3<i32>(_wgslsmith_dot_vec4_i32(u_input.a, u_input.a), select(-1i, 19172i, false), u_input.b.x))));
    var var_1 = var_0.b;
    let var_2 = 1600f;
    var var_3 = i32(-1i) * -1i;
    var_0 = global1[_wgslsmith_index_u32(min(_wgslsmith_dot_vec3_u32(var_1.d.b.xyz, _wgslsmith_add_vec3_u32(var_0.b.d.b.wxy << (vec3<u32>(29736u, 0u, 16441u) % vec3<u32>(32u)), var_0.b.d.b.wxw)), 28804u) & max(19200u, var_0.b.d.b.x), 27u)];
    var var_4 = _wgslsmith_mult_i32(u_input.a.x, -2147483647i);
    let var_5 = ~_wgslsmith_div_u32(~37343u, u_input.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -680f));
}

