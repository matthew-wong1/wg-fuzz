struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec4<f32>,
    d: vec4<u32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 13>;

var<private> global1: Struct_2 = Struct_2(vec2<u32>(1u, 9504u), 321f);

var<private> global2: array<vec3<u32>, 1> = array<vec3<u32>, 1>(vec3<u32>(1u, 1u, 1u));

var<private> global3: array<f32, 27> = array<f32, 27>(-876f, 394f, -1316f, 1123f, -1323f, -1000f, 224f, 622f, -1401f, -402f, 557f, 1051f, -1329f, 558f, -503f, 1242f, 224f, 217f, -213f, 302f, 192f, -1478f, 1117f, 802f, 1361f, 583f, -289f);

var<private> global4: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec3<u32>(43762u, 4294967295u, 4294967295u), -1215f, vec4<f32>(-1412f, -2151f, 913f, -2527f), vec4<u32>(4294967295u, 4294967295u, 0u, 1u), vec4<bool>(true, true, true, true)), Struct_1(vec3<u32>(4294967295u, 25714u, 4294967295u), 294f, vec4<f32>(-1070f, 262f, -1947f, 1556f), vec4<u32>(71413u, 18786u, 44765u, 4294967295u), vec4<bool>(false, false, true, false)), Struct_1(vec3<u32>(7212u, 1u, 4294967295u), 152f, vec4<f32>(-943f, -1000f, 965f, -345f), vec4<u32>(0u, 8705u, 19804u, 4294967295u), vec4<bool>(true, true, false, false)), Struct_1(vec3<u32>(38804u, 22924u, 33292u), 900f, vec4<f32>(1347f, 1756f, -168f, 287f), vec4<u32>(0u, 4294967295u, 1u, 19329u), vec4<bool>(false, false, true, false)), Struct_1(vec3<u32>(4294967295u, 25863u, 4294967295u), -932f, vec4<f32>(-559f, -1282f, -392f, 646f), vec4<u32>(4294967295u, 1u, 4294967295u, 4246u), vec4<bool>(false, true, true, true)), Struct_1(vec3<u32>(43096u, 4294967295u, 4294967295u), -1964f, vec4<f32>(113f, -1118f, -398f, -1747f), vec4<u32>(4294967295u, 27857u, 374u, 4757u), vec4<bool>(false, false, false, true)), Struct_1(vec3<u32>(99458u, 0u, 9467u), -1070f, vec4<f32>(368f, 805f, -1939f, -231f), vec4<u32>(34707u, 24907u, 4294967295u, 0u), vec4<bool>(true, true, true, true)), Struct_1(vec3<u32>(39170u, 1u, 1u), -608f, vec4<f32>(-1163f, 901f, 1713f, -1000f), vec4<u32>(1u, 1u, 13962u, 4294967295u), vec4<bool>(false, false, false, false)), Struct_1(vec3<u32>(1u, 0u, 32816u), 312f, vec4<f32>(-2495f, 253f, -1435f, 551f), vec4<u32>(0u, 0u, 16567u, 0u), vec4<bool>(true, false, false, false)), Struct_1(vec3<u32>(712u, 18156u, 34518u), -336f, vec4<f32>(-220f, 997f, 318f, 166f), vec4<u32>(14934u, 4109u, 4294967295u, 0u), vec4<bool>(true, true, false, true)), Struct_1(vec3<u32>(13703u, 0u, 15345u), 329f, vec4<f32>(1680f, 821f, -331f, -779f), vec4<u32>(1108u, 0u, 12564u, 27799u), vec4<bool>(true, true, false, true)), Struct_1(vec3<u32>(0u, 0u, 57271u), 1674f, vec4<f32>(1754f, 589f, 946f, -636f), vec4<u32>(1u, 42995u, 0u, 0u), vec4<bool>(true, true, true, true)), Struct_1(vec3<u32>(4294967295u, 55895u, 1u), -1000f, vec4<f32>(-1506f, 1421f, -1000f, -1270f), vec4<u32>(0u, 0u, 1u, 4294967295u), vec4<bool>(false, true, false, false)), Struct_1(vec3<u32>(51990u, 0u, 4294967295u), 1267f, vec4<f32>(-191f, 1117f, 1561f, -2113f), vec4<u32>(1u, 4294967295u, 1u, 4294967295u), vec4<bool>(true, true, true, false)), Struct_1(vec3<u32>(0u, 0u, 15824u), 2463f, vec4<f32>(-822f, 1372f, -1138f, -131f), vec4<u32>(0u, 8324u, 38914u, 20352u), vec4<bool>(false, true, true, false)), Struct_1(vec3<u32>(21627u, 1u, 0u), -564f, vec4<f32>(1683f, -581f, 1000f, -875f), vec4<u32>(47066u, 21580u, 82059u, 25020u), vec4<bool>(true, true, true, false)), Struct_1(vec3<u32>(84675u, 1987u, 0u), 124f, vec4<f32>(-213f, 643f, -304f, -2279f), vec4<u32>(34813u, 25276u, 46772u, 4294967295u), vec4<bool>(true, false, true, false)), Struct_1(vec3<u32>(13049u, 47804u, 59527u), -1001f, vec4<f32>(-1427f, 1795f, 441f, -1328f), vec4<u32>(0u, 4294967295u, 4294967295u, 20626u), vec4<bool>(true, true, true, true)), Struct_1(vec3<u32>(6063u, 22853u, 13797u), 541f, vec4<f32>(-2224f, -409f, 1192f, 158f), vec4<u32>(4294967295u, 40992u, 20202u, 150764u), vec4<bool>(true, false, true, true)), Struct_1(vec3<u32>(4294967295u, 9698u, 4294967295u), 511f, vec4<f32>(-1151f, -221f, 290f, -490f), vec4<u32>(4294967295u, 1u, 15514u, 6195u), vec4<bool>(true, true, false, false)), Struct_1(vec3<u32>(29858u, 32010u, 4294967295u), 1542f, vec4<f32>(-274f, 379f, 1176f, -1895f), vec4<u32>(4294967295u, 0u, 1u, 48807u), vec4<bool>(true, false, true, false)), Struct_1(vec3<u32>(14829u, 0u, 36728u), -2678f, vec4<f32>(1000f, 672f, -499f, 435f), vec4<u32>(37584u, 1u, 27775u, 3728u), vec4<bool>(false, true, false, false)), Struct_1(vec3<u32>(20956u, 104423u, 4294967295u), -1290f, vec4<f32>(1200f, 945f, -1380f, -706f), vec4<u32>(116468u, 4294967295u, 1u, 65918u), vec4<bool>(true, false, false, true)), Struct_1(vec3<u32>(1192u, 66487u, 0u), -935f, vec4<f32>(-708f, 111f, 1267f, 609f), vec4<u32>(333u, 4294967295u, 0u, 0u), vec4<bool>(true, false, false, true)), Struct_1(vec3<u32>(1u, 4294967295u, 1u), -997f, vec4<f32>(1174f, -1178f, 152f, -1000f), vec4<u32>(0u, 4294967295u, 16145u, 0u), vec4<bool>(false, false, true, false)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: vec3<bool>, arg_3: bool) -> f32 {
    let var_0 = vec3<f32>(1051f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1.b)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-1506f * 136f))));
    var var_1 = global0[_wgslsmith_index_u32(global1.a.x & _wgslsmith_div_u32(reverseBits(global1.a.x), 40857u), 13u)];
    let var_2 = vec2<f32>(-1044f, _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(max(834f, _wgslsmith_f_op_f32(f32(-1f) * -854f)))));
    return 500f;
}

fn func_2(arg_0: f32, arg_1: Struct_2) -> vec2<bool> {
    let var_0 = Struct_1(~vec3<u32>(~0u, (global1.a.x >> (4294967295u % 32u)) >> (_wgslsmith_dot_vec3_u32(u_input.a.zxy, vec3<u32>(50070u, global1.a.x, 65191u)) % 32u), _wgslsmith_mod_u32(~4294967295u, arg_1.a.x)), global3[_wgslsmith_index_u32(max(global1.a.x, _wgslsmith_add_u32(arg_1.a.x, ~1u)), 27u)], _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-805f, -170f, 937f, _wgslsmith_f_op_f32(func_3(-712f, all(vec4<bool>(false, false, true, true)), vec3<bool>(true, false, true), true))))), ~(~select(vec4<u32>(1u, u_input.a.x, 23394u, 93345u), vec4<u32>(1u, 4294967295u, arg_1.a.x, 1u), vec4<bool>(true, true, true, true))), !select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), false), all(vec3<bool>(true, false, true))), select(vec4<bool>(true, true, false, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true)), true));
    var var_1 = Struct_1(u_input.a.yyz, 721f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 27u)], -1000f, -1130f, global3[_wgslsmith_index_u32(global1.a.x, 27u)]) - vec4<f32>(arg_1.b, -1421f, arg_1.b, global1.b)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_0.c, var_0.c) + _wgslsmith_div_vec4_f32(var_0.c, vec4<f32>(1623f, -336f, arg_1.b, global3[_wgslsmith_index_u32(arg_1.a.x, 27u)])))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.c), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-875f, global3[_wgslsmith_index_u32(arg_1.a.x, 27u)], -1166f, arg_0)), var_0.c)))), var_0.d, !vec4<bool>(var_0.e.x, false, !(!var_0.e.x), _wgslsmith_f_op_f32(floor(-1034f)) > _wgslsmith_f_op_f32(arg_1.b * 1000f)));
    return select(vec2<bool>(!var_0.e.x, false), vec2<bool>(any(!select(var_0.e, vec4<bool>(true, var_1.e.x, var_0.e.x, var_1.e.x), false)), !any(vec3<bool>(false, false, true))), var_1.e.wx);
}

fn func_1() -> u32 {
    var var_0 = select(!(!vec2<bool>(all(vec4<bool>(true, true, true, true)), any(vec2<bool>(false, false)))), !select(select(vec2<bool>(true, true), vec2<bool>(true, true), func_2(209f, Struct_2(global1.a, 2015f))), select(func_2(1833f, Struct_2(global1.a, global1.b)), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true))), select(vec2<bool>(all(vec3<bool>(true, true, true)), all(vec4<bool>(true, true, true, true))), vec2<bool>(true, true), true));
    global1 = Struct_2(abs(~global1.a), _wgslsmith_div_f32(global1.b, -485f));
    let var_1 = abs(vec3<u32>(~(~0u), u_input.a.x, 0u));
    global3 = array<f32, 27>();
    var var_2 = !all(!select(vec2<bool>(var_0.x, true), vec2<bool>(false, true), vec2<bool>(var_0.x, false))) || (_wgslsmith_f_op_f32(trunc(global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(1u, var_1.x, global1.a.x, u_input.a.x)), 27u)])) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global3[_wgslsmith_index_u32(global1.a.x, 27u)])) + global3[_wgslsmith_index_u32(~0u, 27u)])));
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_i32(~18874i, -48i);
    let var_1 = !vec3<bool>(any(vec3<bool>(true, true, true)), true, true);
    global0 = array<i32, 13>();
    global4 = array<Struct_1, 25>();
    let var_2 = _wgslsmith_f_op_f32(min(-1395f, global1.b));
    let var_3 = Struct_1(u_input.a.zwy ^ global2[_wgslsmith_index_u32(abs(func_1()), 1u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1319f, -846f))), vec4<f32>(776f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(global1.a.x | 25571u, 27u)], _wgslsmith_f_op_f32(f32(-1f) * -755f)), 1369f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-455f + var_2) - var_2), global1.b), u_input.a, select(!(!(!vec4<bool>(var_1.x, false, var_1.x, false))), !select(select(vec4<bool>(var_1.x, false, false, false), vec4<bool>(var_1.x, var_1.x, false, true), false), select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(true, var_1.x, true, true), vec4<bool>(false, var_1.x, var_1.x, true)), global0[_wgslsmith_index_u32(4294967295u, 13u)] != 1i), all(vec4<bool>(var_1.x, true, true, any(vec2<bool>(true, false))))));
    global2 = array<vec3<u32>, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(min(u_input.b.x | global0[_wgslsmith_index_u32(~6194u, 13u)], -global0[_wgslsmith_index_u32(77987u, 13u)] & ~1i), -39747i), _wgslsmith_f_op_vec2_f32(abs(var_3.c.wz)), 2147483647i, 0u);
}

