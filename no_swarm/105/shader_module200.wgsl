struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec4<i32>,
    d: i32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 29>;

var<private> global1: array<vec2<u32>, 12> = array<vec2<u32>, 12>(vec2<u32>(1u, 67289u), vec2<u32>(1u, 33993u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 1u), vec2<u32>(14185u, 1u), vec2<u32>(1u, 72014u), vec2<u32>(1u, 7197u), vec2<u32>(0u, 99u), vec2<u32>(4294967295u, 18924u), vec2<u32>(7041u, 2380u), vec2<u32>(1950u, 40793u), vec2<u32>(1u, 0u));

var<private> global2: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(31955i, vec3<f32>(1610f, 1175f, 759f), vec4<i32>(-41445i, -1i, 2147483647i, -22194i), 1i, vec2<u32>(0u, 12621u)), Struct_1(44006i, vec3<f32>(-150f, -967f, -1000f), vec4<i32>(-1821i, -1i, 33466i, 0i), -1i, vec2<u32>(4294967295u, 4294967295u)), Struct_1(0i, vec3<f32>(585f, -1276f, 425f), vec4<i32>(2147483647i, -71299i, i32(-2147483648), 0i), -12995i, vec2<u32>(1u, 0u)), Struct_1(42505i, vec3<f32>(-1351f, -2460f, 562f), vec4<i32>(1i, -1i, 0i, 13381i), 22010i, vec2<u32>(1u, 12968u)), Struct_1(-9271i, vec3<f32>(-1464f, 505f, 210f), vec4<i32>(1i, -24692i, 2147483647i, 1i), i32(-2147483648), vec2<u32>(77648u, 98256u)), Struct_1(-12836i, vec3<f32>(-551f, 2218f, -1849f), vec4<i32>(-1i, 1i, -7111i, 0i), -459i, vec2<u32>(0u, 11265u)), Struct_1(-1i, vec3<f32>(321f, 822f, -1338f), vec4<i32>(29922i, 2147483647i, 62333i, i32(-2147483648)), 48136i, vec2<u32>(10149u, 30783u)), Struct_1(1i, vec3<f32>(-716f, 862f, 340f), vec4<i32>(-1i, 5808i, -14973i, 0i), i32(-2147483648), vec2<u32>(4294967295u, 1u)), Struct_1(19972i, vec3<f32>(520f, -426f, -160f), vec4<i32>(-1i, -17083i, 3296i, -1i), 20499i, vec2<u32>(4294967295u, 0u)), Struct_1(8474i, vec3<f32>(-551f, 382f, 1160f), vec4<i32>(2147483647i, -26440i, i32(-2147483648), 1i), 1i, vec2<u32>(4294967295u, 26718u)), Struct_1(14394i, vec3<f32>(1323f, 1174f, 297f), vec4<i32>(1i, -21283i, 0i, 1i), 19951i, vec2<u32>(0u, 60447u)), Struct_1(2147483647i, vec3<f32>(-555f, 638f, -609f), vec4<i32>(17936i, 2147483647i, 2147483647i, i32(-2147483648)), -1i, vec2<u32>(20852u, 0u)), Struct_1(i32(-2147483648), vec3<f32>(1511f, 310f, -295f), vec4<i32>(-13021i, 39843i, 1020i, 0i), 21872i, vec2<u32>(69286u, 25263u)), Struct_1(0i, vec3<f32>(-678f, 650f, 1472f), vec4<i32>(-1i, 2147483647i, 2147483647i, 6573i), -50418i, vec2<u32>(65396u, 4294967295u)), Struct_1(-35716i, vec3<f32>(-334f, -931f, -1887f), vec4<i32>(35783i, -1i, 2147483647i, 1i), -1750i, vec2<u32>(42444u, 1u)), Struct_1(-2407i, vec3<f32>(-1811f, 1215f, -1314f), vec4<i32>(26397i, 2147483647i, 46484i, 24305i), i32(-2147483648), vec2<u32>(12801u, 0u)), Struct_1(-1i, vec3<f32>(1087f, 1512f, 640f), vec4<i32>(-21708i, -1i, 0i, 68834i), 1i, vec2<u32>(0u, 4294967295u)), Struct_1(1i, vec3<f32>(-315f, -764f, 650f), vec4<i32>(1i, 79357i, 1i, -1i), 10002i, vec2<u32>(1390u, 0u)), Struct_1(0i, vec3<f32>(-169f, 2143f, 882f), vec4<i32>(12312i, 0i, 65814i, 2147483647i), 27336i, vec2<u32>(1u, 1u)), Struct_1(-1i, vec3<f32>(-1110f, 569f, 289f), vec4<i32>(64815i, 1i, 12034i, 1i), 2147483647i, vec2<u32>(4294967295u, 4294967295u)), Struct_1(16992i, vec3<f32>(-389f, -1000f, -1190f), vec4<i32>(1i, 9772i, 1i, 2147483647i), 13434i, vec2<u32>(4294967295u, 0u)), Struct_1(2147483647i, vec3<f32>(740f, 300f, -410f), vec4<i32>(24630i, -34557i, -1204i, 1998i), -59911i, vec2<u32>(47548u, 0u)), Struct_1(-8449i, vec3<f32>(1000f, 754f, -787f), vec4<i32>(-1i, 1i, 0i, -3983i), 84154i, vec2<u32>(25887u, 2752u)), Struct_1(-15112i, vec3<f32>(131f, -1297f, -732f), vec4<i32>(1i, i32(-2147483648), -9201i, i32(-2147483648)), -17799i, vec2<u32>(1u, 1u)), Struct_1(1i, vec3<f32>(-539f, -753f, -880f), vec4<i32>(1i, 1i, 2147483647i, 29759i), 37622i, vec2<u32>(12452u, 48461u)), Struct_1(-25276i, vec3<f32>(162f, -1039f, -797f), vec4<i32>(0i, -70334i, -49872i, 21276i), -72679i, vec2<u32>(29712u, 28703u)), Struct_1(33145i, vec3<f32>(878f, 1382f, 1539f), vec4<i32>(2147483647i, 0i, 2147483647i, 16725i), -35429i, vec2<u32>(15190u, 17883u)), Struct_1(-3759i, vec3<f32>(-643f, 180f, 985f), vec4<i32>(-31350i, 2347i, 24575i, -3820i), -1i, vec2<u32>(1u, 88807u)), Struct_1(13312i, vec3<f32>(-1795f, -1793f, 268f), vec4<i32>(i32(-2147483648), -14329i, 0i, -1i), 2147483647i, vec2<u32>(4294967295u, 0u)), Struct_1(i32(-2147483648), vec3<f32>(168f, 949f, 783f), vec4<i32>(-822i, -14005i, 2147483647i, 31023i), 20969i, vec2<u32>(37309u, 48655u)), Struct_1(-17771i, vec3<f32>(-404f, -556f, 880f), vec4<i32>(12108i, -39662i, -33158i, 2885i), -32430i, vec2<u32>(0u, 24354u)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: f32, arg_1: vec2<i32>, arg_2: u32) -> u32 {
    let var_0 = Struct_1(1i, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0, arg_0, arg_0), _wgslsmith_f_op_vec3_f32(-vec3<f32>(384f, -517f, arg_0)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(666f, -903f, arg_0)))))), -vec4<i32>(63013i, arg_1.x ^ ~arg_1.x, 55032i, ~66448i), -(~_wgslsmith_dot_vec2_i32(firstTrailingBit(arg_1), vec2<i32>(-2147483647i, arg_1.x))), ~_wgslsmith_mod_vec2_u32(~(~global1[_wgslsmith_index_u32(7166u, 12u)]), u_input.a));
    let var_1 = arg_0;
    return _wgslsmith_mult_u32(abs(_wgslsmith_sub_u32(~4294967295u, abs(select(u_input.a.x, var_0.e.x, true)))), ~1u);
}

fn func_2(arg_0: i32) -> i32 {
    let var_0 = select(vec3<bool>(false, true, all(global0[_wgslsmith_index_u32(67368u, 29u)])), !(!(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false)))), false);
    global2 = array<Struct_1, 31>();
    var var_1 = ~u_input.a;
    global1 = array<vec2<u32>, 12>();
    var var_2 = 49143i;
    return _wgslsmith_sub_i32(_wgslsmith_sub_i32(-_wgslsmith_mod_i32(-1i, -2147483647i), arg_0) << (_wgslsmith_sub_u32(func_3(-1690f, ~vec2<i32>(1i, arg_0), u_input.a.x), 11688u) % 32u), -8268i);
}

fn func_1() -> vec2<u32> {
    let var_0 = !all(vec4<bool>(false, any(vec4<bool>(false, true, true, true)), true, false));
    let var_1 = Struct_1(-2147483647i, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-663f + -169f), _wgslsmith_div_f32(310f, -1135f))), _wgslsmith_f_op_f32(min(-1917f, _wgslsmith_f_op_f32(f32(-1f) * -1390f))), -1199f) * vec3<f32>(1f, 1f, 1f)), countOneBits(vec4<i32>(-58531i, min(_wgslsmith_add_i32(1i, 1i), 0i), abs(-1i), func_2(1i))), _wgslsmith_add_i32(min(_wgslsmith_dot_vec2_i32(-vec2<i32>(15833i, 1i), ~vec2<i32>(-21974i, -2147483647i)), i32(-1i) * -33801i), _wgslsmith_mod_i32(firstTrailingBit(_wgslsmith_mult_i32(22971i, -33710i)), -1i)), u_input.a);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.b.x, 202f) * 1010f);
    global2 = array<Struct_1, 31>();
    let var_3 = ~vec2<i32>(-2147483647i, -(~var_1.c.x));
    return vec2<u32>(u_input.a.x ^ max(u_input.a.x, min(u_input.a.x, _wgslsmith_mod_u32(0u, var_1.e.x))), ~firstTrailingBit(4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    let var_1 = Struct_1(1i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(869f, 2085f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1007f + -2493f)))), reverseBits(~vec4<i32>(~0i, _wgslsmith_div_i32(6586i, -52928i), i32(-1i) * -24132i, _wgslsmith_sub_i32(-24383i, 22117i))), reverseBits(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(2147483647i, 0i, -2147483647i, -2147483647i)), -abs(vec4<i32>(2147483647i, 0i, -2147483647i, 16370i)))), func_1() ^ max(reverseBits(vec2<u32>(u_input.a.x, var_0)), abs(abs(vec2<u32>(u_input.a.x, 51666u)))));
    global1 = array<vec2<u32>, 12>();
    global2 = array<Struct_1, 31>();
    var var_2 = -var_1.c.yzz;
    let var_3 = _wgslsmith_f_op_f32(-210f + var_1.b.x);
    var_2 = -(~(-abs(vec3<i32>(1i, -2147483647i, var_2.x))));
    global0 = array<vec4<bool>, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.x, ~var_1.e.x, vec4<u32>(_wgslsmith_mult_u32(var_1.e.x, var_0), firstLeadingBit(~32424u), ~(~var_1.e.x) & max(_wgslsmith_add_u32(1u, var_1.e.x), var_0), reverseBits(abs(~u_input.a.x))));
}

