struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(true, Struct_1(0u, vec3<u32>(77594u, 2189u, 58123u), vec4<i32>(-1i, -17690i, 31953i, 16383i), vec4<i32>(i32(-2147483648), -1i, 1i, i32(-2147483648))), Struct_1(1u, vec3<u32>(61899u, 30089u, 1u), vec4<i32>(14234i, 1i, 34725i, -1i), vec4<i32>(i32(-2147483648), 11394i, 1i, i32(-2147483648)))), Struct_2(false, Struct_1(7205u, vec3<u32>(4294967295u, 19946u, 6350u), vec4<i32>(1i, 1i, 50425i, 1i), vec4<i32>(-1i, -10373i, 92227i, 0i)), Struct_1(4425u, vec3<u32>(34447u, 79875u, 24794u), vec4<i32>(1i, -4979i, 5305i, 0i), vec4<i32>(2147483647i, i32(-2147483648), i32(-2147483648), 38285i))), Struct_2(false, Struct_1(30815u, vec3<u32>(1u, 70269u, 1u), vec4<i32>(-73083i, -1503i, 5908i, 39401i), vec4<i32>(1i, 21797i, -11866i, 1i)), Struct_1(8358u, vec3<u32>(1u, 29867u, 0u), vec4<i32>(1i, 16358i, -10133i, 1990i), vec4<i32>(1i, i32(-2147483648), 0i, 0i))), Struct_2(true, Struct_1(51682u, vec3<u32>(4294967295u, 1u, 1u), vec4<i32>(22567i, -36881i, 0i, 2147483647i), vec4<i32>(-34175i, -25623i, 38522i, -1i)), Struct_1(14831u, vec3<u32>(0u, 0u, 0u), vec4<i32>(0i, -30554i, 1090i, 1i), vec4<i32>(-38028i, 0i, -28366i, 6599i))), Struct_2(true, Struct_1(1u, vec3<u32>(1u, 1u, 1u), vec4<i32>(2147483647i, 5022i, -46345i, 10008i), vec4<i32>(-15691i, -1i, 1i, 29344i)), Struct_1(0u, vec3<u32>(1u, 18950u, 68192u), vec4<i32>(-1i, 0i, -13580i, 1i), vec4<i32>(2147483647i, 2574i, 0i, 45115i))), Struct_2(true, Struct_1(1u, vec3<u32>(1u, 4294967295u, 4294967295u), vec4<i32>(-9742i, -1i, 2147483647i, 9296i), vec4<i32>(-7984i, -53763i, -38136i, 3005i)), Struct_1(6425u, vec3<u32>(11340u, 4294967295u, 33926u), vec4<i32>(17494i, 8526i, 1i, -1i), vec4<i32>(-64837i, 0i, -3486i, 3815i))), Struct_2(false, Struct_1(1u, vec3<u32>(19790u, 1u, 4294967295u), vec4<i32>(5993i, -1i, 3786i, -10589i), vec4<i32>(-1i, i32(-2147483648), 0i, -1i)), Struct_1(4294967295u, vec3<u32>(43595u, 4294967295u, 88156u), vec4<i32>(-15720i, -9341i, 1i, -51583i), vec4<i32>(1i, i32(-2147483648), i32(-2147483648), -9870i))), Struct_2(true, Struct_1(17909u, vec3<u32>(19462u, 34853u, 0u), vec4<i32>(4786i, 1i, 4274i, 2147483647i), vec4<i32>(-35052i, 12692i, 21219i, 0i)), Struct_1(0u, vec3<u32>(2545u, 4294967295u, 24087u), vec4<i32>(0i, -1i, 15141i, -33858i), vec4<i32>(-1i, 14478i, -80421i, -1i))), Struct_2(false, Struct_1(36132u, vec3<u32>(16194u, 61195u, 0u), vec4<i32>(-1i, 0i, -20927i, 31643i), vec4<i32>(-1i, 1i, -49558i, 10292i)), Struct_1(1u, vec3<u32>(4294967295u, 4294967295u, 43723u), vec4<i32>(-1i, i32(-2147483648), -24554i, -6934i), vec4<i32>(-26532i, i32(-2147483648), 1i, 61i))), Struct_2(false, Struct_1(52000u, vec3<u32>(1u, 4294967295u, 4294967295u), vec4<i32>(-1i, 59645i, 2147483647i, 2147483647i), vec4<i32>(0i, -1i, 0i, -55525i)), Struct_1(1u, vec3<u32>(38819u, 4294967295u, 124080u), vec4<i32>(25471i, i32(-2147483648), 0i, 10513i), vec4<i32>(56093i, 1i, 2147483647i, 19742i))), Struct_2(false, Struct_1(1u, vec3<u32>(17265u, 4294967295u, 1u), vec4<i32>(2147483647i, i32(-2147483648), -42950i, 79919i), vec4<i32>(0i, 1i, -1i, -48258i)), Struct_1(11803u, vec3<u32>(9729u, 4294967295u, 39399u), vec4<i32>(-1i, 2418i, 20000i, 2972i), vec4<i32>(1i, 0i, 20531i, -1650i))), Struct_2(true, Struct_1(1u, vec3<u32>(1u, 4294967295u, 0u), vec4<i32>(0i, 2147483647i, -1i, -18063i), vec4<i32>(245i, -48277i, 1i, 2147483647i)), Struct_1(0u, vec3<u32>(0u, 4294967295u, 0u), vec4<i32>(1i, 0i, 46822i, 14670i), vec4<i32>(0i, 0i, 28121i, 0i))), Struct_2(true, Struct_1(0u, vec3<u32>(58313u, 8628u, 4294967295u), vec4<i32>(-12349i, -8208i, 2147483647i, 0i), vec4<i32>(21049i, 0i, 46703i, 16928i)), Struct_1(2889u, vec3<u32>(1u, 4294967295u, 4294967295u), vec4<i32>(0i, i32(-2147483648), 0i, 1i), vec4<i32>(-55434i, 1i, -49959i, 2147483647i))), Struct_2(true, Struct_1(57329u, vec3<u32>(4294967295u, 7434u, 47627u), vec4<i32>(-1i, -17406i, -1i, i32(-2147483648)), vec4<i32>(-486i, -1i, i32(-2147483648), 28059i)), Struct_1(4294967295u, vec3<u32>(52461u, 102891u, 39387u), vec4<i32>(-23990i, 0i, 52388i, 0i), vec4<i32>(105i, 39054i, 31299i, i32(-2147483648)))), Struct_2(false, Struct_1(44356u, vec3<u32>(1u, 4294967295u, 34851u), vec4<i32>(1i, -1i, -23634i, i32(-2147483648)), vec4<i32>(62834i, -13482i, -15642i, 0i)), Struct_1(4294967295u, vec3<u32>(14049u, 10645u, 68812u), vec4<i32>(-31373i, 2147483647i, 18351i, 0i), vec4<i32>(-27311i, 23418i, 0i, i32(-2147483648)))), Struct_2(true, Struct_1(4294967295u, vec3<u32>(0u, 1u, 30668u), vec4<i32>(0i, 0i, 18520i, 16959i), vec4<i32>(36839i, 10370i, 1i, 24012i)), Struct_1(16202u, vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec4<i32>(17968i, -13644i, -2573i, -5376i), vec4<i32>(9950i, -9071i, -11158i, -11547i))), Struct_2(true, Struct_1(46099u, vec3<u32>(69561u, 30337u, 1u), vec4<i32>(-15081i, 46565i, 1i, -3202i), vec4<i32>(-9174i, -4228i, 16658i, 0i)), Struct_1(0u, vec3<u32>(4294967295u, 50004u, 21417u), vec4<i32>(i32(-2147483648), 1i, 20229i, 1i), vec4<i32>(1i, 0i, -22964i, -1i))), Struct_2(true, Struct_1(1u, vec3<u32>(16501u, 63025u, 54609u), vec4<i32>(i32(-2147483648), 1i, i32(-2147483648), -52486i), vec4<i32>(46310i, 6298i, 0i, i32(-2147483648))), Struct_1(4294967295u, vec3<u32>(78413u, 5110u, 29898u), vec4<i32>(-47295i, -45716i, 10580i, 31417i), vec4<i32>(55205i, -8144i, i32(-2147483648), 1i))), Struct_2(false, Struct_1(4294967295u, vec3<u32>(56227u, 15892u, 4294967295u), vec4<i32>(-69151i, 1i, 36046i, 1i), vec4<i32>(-27365i, i32(-2147483648), 0i, 79494i)), Struct_1(0u, vec3<u32>(4294967295u, 33035u, 1u), vec4<i32>(44679i, 19279i, 9309i, 1i), vec4<i32>(15277i, -23645i, 13489i, -62096i))), Struct_2(true, Struct_1(36703u, vec3<u32>(0u, 1u, 38762u), vec4<i32>(-1i, 1i, 1i, -11254i), vec4<i32>(-1i, 8778i, 2147483647i, 0i)), Struct_1(7671u, vec3<u32>(49703u, 0u, 123033u), vec4<i32>(-26341i, -17968i, -1i, -1i), vec4<i32>(-1i, 29731i, -22770i, 590i))), Struct_2(false, Struct_1(9155u, vec3<u32>(4294967295u, 4294967295u, 20378u), vec4<i32>(48114i, 0i, 27373i, -4713i), vec4<i32>(9582i, -3269i, 56253i, -15936i)), Struct_1(1u, vec3<u32>(4294967295u, 1u, 29100u), vec4<i32>(-26162i, -17207i, -88427i, 0i), vec4<i32>(-19960i, -1i, 13881i, 1759i))), Struct_2(true, Struct_1(8674u, vec3<u32>(0u, 1u, 4294967295u), vec4<i32>(-61601i, -2241i, 1i, -17667i), vec4<i32>(1i, -1i, 32632i, 15394i)), Struct_1(0u, vec3<u32>(4294967295u, 32139u, 1u), vec4<i32>(30654i, 0i, 27813i, -74392i), vec4<i32>(5507i, 2147483647i, 7387i, i32(-2147483648)))), Struct_2(true, Struct_1(4294967295u, vec3<u32>(67124u, 0u, 13842u), vec4<i32>(i32(-2147483648), -10411i, 1i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 36137i, 1i, 29763i)), Struct_1(12713u, vec3<u32>(1u, 0u, 1u), vec4<i32>(i32(-2147483648), -21562i, i32(-2147483648), 1i), vec4<i32>(-25772i, -26924i, i32(-2147483648), i32(-2147483648)))), Struct_2(true, Struct_1(38235u, vec3<u32>(5633u, 4294967295u, 21478u), vec4<i32>(2147483647i, -28034i, 2147483647i, 42903i), vec4<i32>(-65116i, -32902i, -46440i, 1i)), Struct_1(34181u, vec3<u32>(1u, 80415u, 4246u), vec4<i32>(-10023i, i32(-2147483648), 3173i, 28846i), vec4<i32>(1394i, -34065i, -1i, 0i))), Struct_2(false, Struct_1(0u, vec3<u32>(0u, 0u, 4294967295u), vec4<i32>(i32(-2147483648), 80628i, -1i, 0i), vec4<i32>(-1i, 0i, 53106i, 18619i)), Struct_1(4294967295u, vec3<u32>(0u, 1u, 44822u), vec4<i32>(-67884i, 12238i, 1i, -25665i), vec4<i32>(2147483647i, 0i, 2147483647i, -33010i))), Struct_2(true, Struct_1(53102u, vec3<u32>(4294967295u, 8954u, 4294967295u), vec4<i32>(-1i, 0i, 1i, i32(-2147483648)), vec4<i32>(45869i, 0i, 24019i, -26396i)), Struct_1(8577u, vec3<u32>(0u, 4294967295u, 0u), vec4<i32>(0i, i32(-2147483648), -31357i, i32(-2147483648)), vec4<i32>(0i, 0i, -1i, 1i))), Struct_2(false, Struct_1(4294967295u, vec3<u32>(1u, 4294967295u, 4294967295u), vec4<i32>(84012i, 49376i, 0i, 3034i), vec4<i32>(2147483647i, 33698i, 2147483647i, 3720i)), Struct_1(92350u, vec3<u32>(51742u, 4294967295u, 1u), vec4<i32>(4008i, i32(-2147483648), i32(-2147483648), 1i), vec4<i32>(29583i, 0i, 26726i, i32(-2147483648)))));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: f32, arg_1: vec2<i32>, arg_2: u32, arg_3: bool) -> Struct_1 {
    global0 = array<Struct_2, 27>();
    var var_0 = global0[_wgslsmith_index_u32(arg_2, 27u)];
    let var_1 = select(!(!(!select(vec2<bool>(var_0.a, var_0.a), vec2<bool>(false, false), var_0.a))), vec2<bool>(!arg_3, (~arg_2 ^ var_0.c.a) != 4294967295u), !vec2<bool>(true, !(-1299f <= arg_0)));
    let var_2 = _wgslsmith_mult_i32(-u_input.a, ~firstTrailingBit(-62728i));
    global0 = array<Struct_2, 27>();
    return var_0.c;
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec2<i32>) -> vec4<u32> {
    var var_0 = Struct_2(arg_0.c.x > _wgslsmith_div_i32(arg_0.d.x ^ 1i, 2147483647i), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-770f, 1450f)))), arg_0.c.xy, firstLeadingBit(arg_0.a), true), arg_0);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1676f, -951f, -268f, 560f), vec4<f32>(113f, -1000f, 975f, -198f), vec4<bool>(var_0.a, var_0.a, var_0.a, true)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(224f, 886f, 1004f, -256f), vec4<f32>(313f, -2565f, -515f, -1000f), false)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1967f, 1000f, -1253f, 450f))), var_0.a)))) - vec4<f32>(1391f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-1121f)))), -658f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -142f))))));
    var var_2 = func_2(1000f, var_0.c.d.zw, arg_1.x, _wgslsmith_f_op_f32(-var_1.x) != _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(var_1.x + -752f))));
    var var_3 = global0[_wgslsmith_index_u32(~abs(_wgslsmith_dot_vec4_u32(min(~vec4<u32>(1u, var_2.b.x, 0u, arg_1.x), vec4<u32>(var_2.b.x, arg_0.b.x, 4294967295u, 88611u) & vec4<u32>(1u, 4294967295u, var_0.c.a, 87214u)), abs(vec4<u32>(var_0.b.a, var_0.b.a, var_0.c.a, 19313u)))), 27u)];
    var var_4 = !vec4<bool>(!all(vec4<bool>(var_3.a, false, var_0.a, true)), _wgslsmith_f_op_f32(-979f + 261f) == _wgslsmith_f_op_f32(trunc(var_1.x)), true, var_0.a);
    return abs(~_wgslsmith_add_vec4_u32(~select(vec4<u32>(1u, 3386u, 0u, 15714u), vec4<u32>(arg_0.b.x, 1u, arg_1.x, var_3.b.b.x), vec4<bool>(var_3.a, true, var_3.a, true)), firstTrailingBit(vec4<u32>(0u, 0u, 1435u, arg_0.a))));
}

fn func_1(arg_0: bool) -> f32 {
    let var_0 = i32(-1i) * -u_input.a;
    let var_1 = min(~(~vec4<u32>(~0u, 61623u, _wgslsmith_sub_u32(4294967295u, 1u), 131016u)), _wgslsmith_sub_vec4_u32(func_3(func_2(-424f, firstLeadingBit(vec2<i32>(var_0, u_input.a)), countOneBits(0u), !arg_0), ~vec3<u32>(4294967295u, 50036u, 1u), vec2<i32>(-24170i, 15200i | u_input.a)), abs(~vec4<u32>(1u, 1u, 1u, 1u))));
    var var_2 = -1370f;
    let var_3 = func_2(-1104f, reverseBits(firstTrailingBit(vec2<i32>(var_0, 15406i) >> (vec2<u32>(var_1.x, 89356u) % vec2<u32>(32u))) << (~var_1.zw % vec2<u32>(32u))), 1u, true).d;
    var_2 = _wgslsmith_f_op_f32(abs(-2147f));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(409f)));
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: vec3<bool>, arg_3: vec3<f32>) -> Struct_1 {
    global0 = array<Struct_2, 27>();
    global0 = array<Struct_2, 27>();
    var var_0 = ~select(~firstTrailingBit(vec3<u32>(1u, 1u, 1u)), max(~vec3<u32>(0u, 1u, 1u), ~vec3<u32>(113628u, 10187u, 1u)) >> (~func_3(Struct_1(1u, vec3<u32>(52792u, 0u, 24153u), vec4<i32>(2147483647i, 66451i, 25083i, arg_0), vec4<i32>(-14395i, 2147483647i, -10342i, -33401i)), vec3<u32>(0u, 4294967295u, 4294967295u), vec2<i32>(-2147483647i, u_input.a)).xxy % vec3<u32>(32u)), !vec3<bool>(true, true && arg_2.x, all(arg_2.yz)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, -1902f, arg_3.x, arg_1)) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(327f, arg_3.x, arg_1, -105f)))))));
    let var_2 = vec4<u32>(_wgslsmith_div_u32(~var_0.x, 16141u), 69596u, 0u, 74813u);
    return Struct_1(var_2.x, var_2.wyx, vec4<i32>(-abs(u_input.a), _wgslsmith_add_i32(firstLeadingBit(u_input.a), _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.a, 2147483647i), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, 2147483647i)))), _wgslsmith_div_i32(66995i, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, 0i), vec2<i32>(2147483647i, 1i)), _wgslsmith_add_vec2_i32(vec2<i32>(56697i, 1i), vec2<i32>(-2147483647i, -283i)))), i32(-1i) * -24378i), vec4<i32>(_wgslsmith_mod_i32(u_input.a, 0i), countOneBits(arg_0), 1i, u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 27>();
    var var_0 = func_4(i32(-1i) * -2147483647i, _wgslsmith_f_op_f32(ceil(110f)), vec3<bool>(false, false, !(!any(vec2<bool>(true, false)))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1512f, _wgslsmith_f_op_f32(func_1(true)), _wgslsmith_f_op_f32(select(-2968f, _wgslsmith_f_op_f32(max(1373f, 155f)), true))))));
    var var_1 = global0[_wgslsmith_index_u32(1u, 27u)];
    var var_2 = reverseBits(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2273f - _wgslsmith_div_f32(674f, -1820f))), -vec2<i32>(var_1.b.d.x, 1i), abs(var_1.c.b.x), true).d);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(func_1(var_1.a))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1015f)) * _wgslsmith_f_op_f32(f32(-1f) * -654f)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(793f)), _wgslsmith_f_op_f32(f32(-1f) * -1396f)))));
    var var_4 = _wgslsmith_add_vec3_u32(var_0.b, _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(func_4(8618i, -331f, vec3<bool>(var_1.a, var_1.a, true), vec3<f32>(var_3, 1140f, var_3)).a, var_1.c.a, 18883u), var_1.c.b | var_0.b), var_0.b));
    let x = u_input.a;
    s_output = StorageBuffer((i32(-1i) * -reverseBits(-18770i)) << (_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~var_1.c.b.zx, var_1.c.b.xz), ~vec2<u32>(var_0.b.x, 4294967295u)) % 32u));
}

