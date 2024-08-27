struct Struct_1 {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: i32,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 22>;

var<private> global1: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(Struct_1(1u, 4294967295u, 68480u, 2147483647i), -1000f, Struct_1(1u, 9079u, 18368u, 48114i), Struct_1(25369u, 29351u, 0u, 1i)), Struct_2(Struct_1(16470u, 4294967295u, 13302u, 1i), -164f, Struct_1(55973u, 98485u, 33884u, 1i), Struct_1(20634u, 25549u, 5800u, 0i)), Struct_2(Struct_1(0u, 14253u, 0u, 2147483647i), -1000f, Struct_1(0u, 0u, 25219u, 10294i), Struct_1(51794u, 27740u, 4294967295u, -28634i)), Struct_2(Struct_1(21738u, 24611u, 26014u, 1i), 636f, Struct_1(0u, 18195u, 8076u, 0i), Struct_1(4294967295u, 21681u, 32291u, -1i)), Struct_2(Struct_1(4294967295u, 1u, 35340u, -29042i), 1428f, Struct_1(49876u, 9893u, 1u, 1i), Struct_1(1u, 0u, 0u, -823i)), Struct_2(Struct_1(48398u, 71454u, 0u, 15345i), 1868f, Struct_1(1u, 1u, 92877u, -5295i), Struct_1(59201u, 4294967295u, 1u, -1i)), Struct_2(Struct_1(0u, 0u, 1u, 5741i), 298f, Struct_1(4294967295u, 1u, 78177u, 2147483647i), Struct_1(55138u, 44507u, 25718u, i32(-2147483648))), Struct_2(Struct_1(18855u, 4294967295u, 20420u, 22083i), 901f, Struct_1(19927u, 1u, 15810u, 4283i), Struct_1(0u, 24422u, 68367u, -21683i)), Struct_2(Struct_1(0u, 1u, 0u, 1i), 1602f, Struct_1(4294967295u, 77398u, 1u, -45525i), Struct_1(20841u, 344u, 0u, 1i)), Struct_2(Struct_1(12993u, 56555u, 33957u, -1075i), 728f, Struct_1(34889u, 0u, 41455u, 2147483647i), Struct_1(1u, 4294967295u, 1u, 18099i)), Struct_2(Struct_1(102656u, 0u, 11664u, 0i), -199f, Struct_1(0u, 4294967295u, 4294967295u, -60715i), Struct_1(4294967295u, 4294967295u, 41687u, -1i)), Struct_2(Struct_1(16626u, 1u, 944u, 1i), -1072f, Struct_1(54618u, 4294967295u, 4294967295u, i32(-2147483648)), Struct_1(0u, 54230u, 3578u, 6321i)), Struct_2(Struct_1(60025u, 0u, 1u, 1301i), -253f, Struct_1(4294967295u, 4294967295u, 18526u, i32(-2147483648)), Struct_1(7299u, 0u, 0u, 2147483647i)), Struct_2(Struct_1(74567u, 1u, 4095u, i32(-2147483648)), 1411f, Struct_1(0u, 0u, 1u, -1i), Struct_1(76982u, 4294967295u, 92225u, -50562i)), Struct_2(Struct_1(34333u, 1u, 0u, 17150i), 528f, Struct_1(0u, 0u, 0u, 2147483647i), Struct_1(45652u, 37324u, 5310u, -342i)), Struct_2(Struct_1(0u, 28688u, 4294967295u, 2147483647i), -300f, Struct_1(35903u, 0u, 64491u, 86i), Struct_1(4294967295u, 1u, 16975u, 2147483647i)), Struct_2(Struct_1(449u, 4294967295u, 44518u, i32(-2147483648)), 404f, Struct_1(53191u, 30958u, 38245u, -11912i), Struct_1(8714u, 49927u, 14536u, -7661i)), Struct_2(Struct_1(4294967295u, 814u, 1u, -48229i), 1156f, Struct_1(1u, 0u, 0u, 0i), Struct_1(50658u, 43460u, 32530u, -12373i)), Struct_2(Struct_1(49736u, 4294967295u, 0u, -9870i), 208f, Struct_1(0u, 18715u, 4294967295u, 10624i), Struct_1(27842u, 4294967295u, 4294967295u, 0i)), Struct_2(Struct_1(0u, 10805u, 4294967295u, 0i), -1414f, Struct_1(19043u, 4294967295u, 1u, -9270i), Struct_1(14651u, 7119u, 4294967295u, -23226i)), Struct_2(Struct_1(4294967295u, 5650u, 2559u, -1i), -1000f, Struct_1(0u, 10u, 1u, -34857i), Struct_1(6595u, 4294967295u, 4294967295u, -21893i)), Struct_2(Struct_1(4294967295u, 0u, 57194u, 5363i), 706f, Struct_1(0u, 21823u, 48322u, -21600i), Struct_1(1u, 0u, 38698u, -1i)), Struct_2(Struct_1(4294967295u, 0u, 4294967295u, i32(-2147483648)), -629f, Struct_1(0u, 88284u, 46939u, 19596i), Struct_1(4294967295u, 0u, 0u, -19330i)), Struct_2(Struct_1(0u, 0u, 1u, i32(-2147483648)), 469f, Struct_1(0u, 18499u, 64218u, 2147483647i), Struct_1(8988u, 3368u, 4294967295u, i32(-2147483648))), Struct_2(Struct_1(1u, 0u, 4294967295u, 24225i), 1000f, Struct_1(8784u, 0u, 28557u, 1i), Struct_1(1u, 98592u, 9177u, i32(-2147483648))), Struct_2(Struct_1(16813u, 0u, 4294967295u, 37029i), 386f, Struct_1(0u, 46213u, 1u, 6687i), Struct_1(4294967295u, 121751u, 0u, -1i)), Struct_2(Struct_1(16229u, 0u, 4294967295u, 71702i), -263f, Struct_1(4294967295u, 8581u, 4294967295u, -1i), Struct_1(0u, 81632u, 49299u, 23162i)));

var<private> global2: array<Struct_2, 25>;

var<private> global3: bool = false;

var<private> global4: i32 = 13757i;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = select(vec2<bool>(true, true), vec2<bool>(false, any(select(vec2<bool>(true, true), vec2<bool>(true, false), true))), all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, false, true, false))));
    let var_1 = Struct_2(arg_0, -1178f, arg_0, arg_0);
    return u_input.c;
}

fn func_2(arg_0: f32) -> Struct_1 {
    global4 = firstLeadingBit(-u_input.b.x) << (0u % 32u);
    let var_0 = Struct_2(Struct_1(1689u, u_input.c, u_input.c, abs(72378i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_0)), 205f), Struct_1(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(4294967295u, u_input.c, u_input.c, 47013u)), abs(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, 19517u, 12874u, u_input.c), vec4<u32>(18411u, 1u, 14703u, 35059u)))), 27932u, 0u, -14930i), Struct_1(firstTrailingBit(~_wgslsmith_sub_u32(51812u, 0u)), ~_wgslsmith_mod_u32(24659u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.c, 4294967295u), vec3<u32>(4294967295u, 4294967295u, u_input.c))), ~u_input.c, abs(u_input.d.x)));
    let var_1 = Struct_2(Struct_1(u_input.c, u_input.c, 1u, var_0.d.d), arg_0, Struct_1(u_input.c, u_input.c, u_input.c, _wgslsmith_dot_vec3_i32(u_input.d.xxw, _wgslsmith_clamp_vec3_i32(u_input.d.yww, u_input.d.xwx, vec3<i32>(24267i, var_0.c.d, 8958i) & vec3<i32>(0i, 19881i, u_input.a)))), var_0.d);
    let var_2 = Struct_1((func_3(var_0.d) | ~25060u) >> (abs(reverseBits(4294967295u)) % 32u), (u_input.c << (_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(var_1.d.c, u_input.c, var_0.d.c, 1u)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, 1u, u_input.c, 37016u), vec4<u32>(var_0.a.a, 18874u, 76149u, var_1.a.b))) % 32u)) ^ ~4842u, ~7812u, _wgslsmith_add_i32(u_input.e, u_input.a));
    var var_3 = var_2;
    return var_2;
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: bool, arg_3: bool) -> vec3<i32> {
    global0 = array<vec2<i32>, 22>();
    global2 = array<Struct_2, 25>();
    global4 = -u_input.b.x;
    var var_0 = countOneBits(countOneBits(_wgslsmith_mult_vec2_u32(~vec2<u32>(arg_0.c, 0u), ~vec2<u32>(u_input.c, u_input.c)) >> ((vec2<u32>(15544u, arg_0.c) ^ vec2<u32>(arg_0.c, arg_0.b)) % vec2<u32>(32u))));
    let var_1 = func_2(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1145f, 189f))));
    return vec3<i32>(reverseBits(~_wgslsmith_sub_i32(-u_input.b.x, _wgslsmith_mult_i32(38580i, 30641i))), arg_0.d, -(arg_0.d << ((firstLeadingBit(var_0.x) | _wgslsmith_clamp_u32(u_input.c, arg_0.c, arg_0.a)) % 32u)));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<i32>, arg_2: bool) -> i32 {
    global2 = array<Struct_2, 25>();
    var var_0 = Struct_2(func_2(_wgslsmith_f_op_f32(-arg_0.x)), 1622f, Struct_1(firstLeadingBit(4294967295u), 1u ^ u_input.c, _wgslsmith_dot_vec2_u32(countOneBits(countOneBits(vec2<u32>(u_input.c, u_input.c))), ~(vec2<u32>(6428u, u_input.c) | vec2<u32>(4892u, u_input.c))), -12542i), Struct_1(u_input.c, func_2(271f).a, u_input.c, -_wgslsmith_div_i32(arg_1.x >> (1u % 32u), firstLeadingBit(arg_1.x))));
    let var_1 = global2[_wgslsmith_index_u32(firstTrailingBit(select(_wgslsmith_clamp_u32(abs(abs(0u)), ~0u, var_0.a.c), ~u_input.c, true)), 25u)];
    global0 = array<vec2<i32>, 22>();
    let var_2 = (any(!vec4<bool>(arg_2, arg_2, true, false)) | false) && true;
    return -func_1(func_2(var_0.b), arg_2, all(vec3<bool>(true, !var_2, var_2)), all(vec4<bool>(true, all(vec3<bool>(arg_2, var_2, var_2)), var_2, select(false, false, false)))).x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec3<bool>(false, !(firstLeadingBit(7044i) >= u_input.d.x), func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(2725f, 1289f, -329f, -178f) + vec4<f32>(-1963f, -611f, 317f, -1000f)), func_1(Struct_1(8014u, 10747u, 53248u, 25933i), false, true, false), true) >= -u_input.a);
    let var_1 = var_0.x;
    let var_2 = false;
    global3 = any(!(!vec2<bool>(false, any(vec4<bool>(var_1, var_2, true, var_0.x)))));
    var var_3 = ~(~firstTrailingBit(vec2<u32>(u_input.c, 4294967295u)) << (vec2<u32>(12960u, ~abs(68761u)) % vec2<u32>(32u)));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1509f, _wgslsmith_f_op_f32(ceil(-455f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1269f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-1709f)), -1000f)) + -1718f)));
    var var_5 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(countOneBits(func_2(_wgslsmith_f_op_f32(select(1000f, -3426f, var_2))).d), u_input.b.x), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_4, var_4, var_4), vec3<f32>(2189f, 1000f, -1314f))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_4, var_4, var_4)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1545f), _wgslsmith_f_op_f32(-var_4), var_4), select(vec3<bool>(true, var_1, var_1), !var_0, vec3<bool>(true, var_1, true)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4, var_4, var_4)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(664f, -1056f, var_4) + vec3<f32>(var_4, var_4, -1011f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1786f, var_4, 913f)))), !var_0)), _wgslsmith_add_i32(min(i32(-1i) * -19316i, _wgslsmith_dot_vec3_i32(select(u_input.d.zww, vec3<i32>(u_input.a, u_input.a, 15811i), vec3<bool>(var_2, var_0.x, false)), ~u_input.d.www)), 2147483647i >> (~func_3(Struct_1(46209u, 0u, 66547u, -29344i)) % 32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4, var_4, var_4))))), _wgslsmith_sub_u32(min(u_input.c, ~(~0u)), 4294967295u));
}

