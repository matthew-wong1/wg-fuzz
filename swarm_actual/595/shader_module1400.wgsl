struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
    c: i32,
    d: vec4<f32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec2<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 21> = array<u32, 21>(0u, 13350u, 0u, 4294967295u, 46212u, 11565u, 4294967295u, 16795u, 53664u, 52168u, 1u, 3774u, 0u, 1u, 1u, 63150u, 1u, 3904u, 1u, 9320u, 1u);

var<private> global1: array<Struct_3, 17> = array<Struct_3, 17>(Struct_3(-481f, Struct_2(vec2<i32>(i32(-2147483648), 0i), 145f, -65518i, vec4<f32>(931f, 133f, -1000f, 236f)), vec2<f32>(-2060f, -1040f), Struct_1(vec2<bool>(false, false), 0u, vec2<bool>(true, true))), Struct_3(-1153f, Struct_2(vec2<i32>(i32(-2147483648), -34053i), 764f, -1i, vec4<f32>(342f, 185f, -1788f, -1209f)), vec2<f32>(-312f, 227f), Struct_1(vec2<bool>(false, true), 1u, vec2<bool>(false, true))), Struct_3(295f, Struct_2(vec2<i32>(i32(-2147483648), 0i), -399f, 24722i, vec4<f32>(1000f, -1282f, -491f, 159f)), vec2<f32>(629f, -245f), Struct_1(vec2<bool>(false, true), 1u, vec2<bool>(false, true))), Struct_3(1041f, Struct_2(vec2<i32>(-54669i, 25491i), 1266f, 2147483647i, vec4<f32>(448f, -1000f, 949f, -1109f)), vec2<f32>(-1000f, -289f), Struct_1(vec2<bool>(true, false), 26209u, vec2<bool>(false, true))), Struct_3(-276f, Struct_2(vec2<i32>(26628i, 44654i), -1000f, -10078i, vec4<f32>(-150f, 1063f, -384f, -706f)), vec2<f32>(-1000f, 1046f), Struct_1(vec2<bool>(true, true), 11486u, vec2<bool>(false, false))), Struct_3(-180f, Struct_2(vec2<i32>(17275i, i32(-2147483648)), 694f, 0i, vec4<f32>(1847f, -1000f, 2052f, -639f)), vec2<f32>(2787f, 800f), Struct_1(vec2<bool>(true, true), 1u, vec2<bool>(true, true))), Struct_3(-440f, Struct_2(vec2<i32>(0i, -78019i), 975f, -13158i, vec4<f32>(1046f, -741f, 372f, 1462f)), vec2<f32>(-507f, 408f), Struct_1(vec2<bool>(true, false), 4294967295u, vec2<bool>(true, false))), Struct_3(568f, Struct_2(vec2<i32>(-45916i, 0i), 544f, -607i, vec4<f32>(-307f, 1256f, -278f, 2146f)), vec2<f32>(-455f, -108f), Struct_1(vec2<bool>(false, false), 4294967295u, vec2<bool>(false, true))), Struct_3(-1173f, Struct_2(vec2<i32>(1i, 2147483647i), 1103f, 2147483647i, vec4<f32>(1000f, 633f, 983f, -1075f)), vec2<f32>(1632f, -1734f), Struct_1(vec2<bool>(true, false), 52009u, vec2<bool>(true, false))), Struct_3(-627f, Struct_2(vec2<i32>(46783i, -27114i), -375f, -45861i, vec4<f32>(-270f, -411f, 455f, -1213f)), vec2<f32>(-1408f, 979f), Struct_1(vec2<bool>(false, false), 4294967295u, vec2<bool>(false, true))), Struct_3(-456f, Struct_2(vec2<i32>(-48214i, 1i), 807f, 16643i, vec4<f32>(901f, -846f, -519f, 1196f)), vec2<f32>(-617f, -1697f), Struct_1(vec2<bool>(false, true), 4294967295u, vec2<bool>(false, true))), Struct_3(-556f, Struct_2(vec2<i32>(-21965i, 0i), 1484f, i32(-2147483648), vec4<f32>(443f, -851f, -958f, 514f)), vec2<f32>(1165f, -1000f), Struct_1(vec2<bool>(false, false), 42449u, vec2<bool>(false, false))), Struct_3(977f, Struct_2(vec2<i32>(2147483647i, -12600i), -1423f, i32(-2147483648), vec4<f32>(-1000f, -431f, -744f, 1000f)), vec2<f32>(1341f, 1000f), Struct_1(vec2<bool>(true, true), 47137u, vec2<bool>(true, false))), Struct_3(2096f, Struct_2(vec2<i32>(0i, -34489i), 730f, -54071i, vec4<f32>(-860f, -582f, -628f, 1382f)), vec2<f32>(-781f, -1114f), Struct_1(vec2<bool>(false, false), 0u, vec2<bool>(true, false))), Struct_3(941f, Struct_2(vec2<i32>(0i, -19431i), -105f, 28838i, vec4<f32>(970f, 181f, -116f, -1556f)), vec2<f32>(-1153f, -1000f), Struct_1(vec2<bool>(true, true), 38102u, vec2<bool>(true, false))), Struct_3(-1432f, Struct_2(vec2<i32>(i32(-2147483648), -60316i), -1046f, -1i, vec4<f32>(-1027f, -391f, -1000f, -1090f)), vec2<f32>(1358f, -1253f), Struct_1(vec2<bool>(true, false), 638u, vec2<bool>(true, true))), Struct_3(1284f, Struct_2(vec2<i32>(14962i, -44554i), -1312f, i32(-2147483648), vec4<f32>(-608f, -163f, -1463f, 127f)), vec2<f32>(644f, -1386f), Struct_1(vec2<bool>(true, false), 1u, vec2<bool>(false, false))));

var<private> global2: array<Struct_1, 15>;

var<private> global3: array<vec2<u32>, 7>;

var<private> global4: f32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: vec2<bool>) -> f32 {
    return -1520f;
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: Struct_3, arg_3: vec2<bool>) -> vec2<u32> {
    global2 = array<Struct_1, 15>();
    global4 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.c.x) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(arg_2.b.b, arg_2.b.d.x, arg_2.d.a.x))))), _wgslsmith_f_op_f32(123f - arg_2.a)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.c.x))))));
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b.d.x) - -343f) * _wgslsmith_f_op_f32(func_2(!vec2<bool>(true, arg_2.d.c.x)))) - _wgslsmith_f_op_f32(f32(-1f) * -117f)) * 1198f);
    global3 = array<vec2<u32>, 7>();
    global1 = array<Struct_3, 17>();
    return vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 21u)], _wgslsmith_mod_u32(~(~arg_2.d.b), arg_0));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<u32>) -> Struct_2 {
    var var_0 = Struct_1(select(select(vec2<bool>(all(vec4<bool>(true, false, false, true)), select(false, false, true)), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, false), !(false && select(true, true, false))), arg_1.x, select(select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), false), select(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true), u_input.b < 1i), select(vec2<bool>(true, true), vec2<bool>(true, true), false)));
    global3 = array<vec2<u32>, 7>();
    global1 = array<Struct_3, 17>();
    let var_1 = global1[_wgslsmith_index_u32(~14878u, 17u)];
    let var_2 = Struct_3(_wgslsmith_f_op_f32(-954f * -1367f), var_1.b, _wgslsmith_f_op_vec2_f32(var_1.c + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(var_1.b.d.xw, vec2<f32>(-736f, 310f)))), _wgslsmith_f_op_vec2_f32(-var_1.c)))), Struct_1(vec2<bool>(true, ~4294967295u == ~arg_0.x), _wgslsmith_mod_u32(83694u, 1u << (abs(u_input.c) % 32u)), !var_0.c));
    return var_2.b;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2) -> u32 {
    let var_0 = vec3<i32>(~1i, arg_1.c, arg_1.a.x);
    global4 = arg_1.d.x;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(exp2(arg_1.d.x))))), arg_1.b)), -1026f, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b) * _wgslsmith_f_op_f32(-arg_1.d.x))) - arg_1.d.x));
    let var_2 = false && arg_0.x;
    global2 = array<Struct_1, 15>();
    return _wgslsmith_div_u32(_wgslsmith_mult_u32(max(_wgslsmith_add_u32(u_input.c, 0u), ~1u), _wgslsmith_dot_vec4_u32(~vec4<u32>(9976u, global0[_wgslsmith_index_u32(u_input.c, 21u)], 4294967295u, 1u), vec4<u32>(global0[_wgslsmith_index_u32(u_input.c, 21u)], 71750u, u_input.c, 7524u) >> (vec4<u32>(u_input.c, 0u, u_input.c, global0[_wgslsmith_index_u32(89655u, 21u)]) % vec4<u32>(32u)))) >> (max(~(~0u), u_input.c) % 32u), u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(~(~global0[_wgslsmith_index_u32(func_4(vec4<bool>(true, true, true, u_input.a < u_input.a), func_3(func_1(16893u, 1i, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 21u)], 17u)], vec2<bool>(true, true)), select(vec3<u32>(0u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(40600u, 21u)], 21u)], 21u)], 21u)]), vec3<u32>(9464u, 0u, global0[_wgslsmith_index_u32(u_input.c, 21u)]), vec3<bool>(false, false, true)))), 21u)]), 17u)];
    global4 = var_0.b.d.x;
    let var_1 = 1250f;
    let var_2 = vec3<i32>(_wgslsmith_clamp_i32(i32(-1i) * -countOneBits(-54364i), -1i, u_input.b), 0i, 2147483647i);
    global4 = -1185f;
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1502f + _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(ceil(-699f)))) + _wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(ceil(var_0.a)))));
    global2 = array<Struct_1, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_i32(abs(min(-vec4<i32>(var_2.x, u_input.a, 5660i, var_0.b.c), _wgslsmith_add_vec4_i32(vec4<i32>(var_2.x, 3709i, 29944i, u_input.a), vec4<i32>(u_input.a, u_input.a, -2147483647i, u_input.b)))), vec4<i32>(_wgslsmith_add_i32(var_0.b.c, abs(-8765i)), _wgslsmith_add_i32(select(5883i, var_0.b.c, var_0.d.a.x), _wgslsmith_add_i32(1i, var_2.x)), -abs(23353i), _wgslsmith_div_i32(_wgslsmith_add_i32(var_0.b.c, var_2.x), func_3(global3[_wgslsmith_index_u32(1u, 7u)], vec3<u32>(28401u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(28492u, 21u)], 21u)], u_input.c)).a.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0.b.d.xwx, vec3<f32>(var_1, _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_div_f32(var_0.b.d.x, 671f)))), vec4<i32>(1i, var_2.x, var_2.x, 0i));
}

