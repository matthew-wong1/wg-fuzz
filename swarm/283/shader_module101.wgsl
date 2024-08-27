struct Struct_1 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec3<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 3>;

var<private> global1: Struct_4;

var<private> global2: array<Struct_3, 18> = array<Struct_3, 18>(Struct_3(vec3<i32>(-24240i, 0i, -1i), vec2<i32>(-65601i, i32(-2147483648)), 2147483647i), Struct_3(vec3<i32>(i32(-2147483648), 7568i, 0i), vec2<i32>(i32(-2147483648), -51886i), 10351i), Struct_3(vec3<i32>(4668i, i32(-2147483648), 2147483647i), vec2<i32>(-46307i, 13945i), 11942i), Struct_3(vec3<i32>(2147483647i, 43997i, 15554i), vec2<i32>(i32(-2147483648), 6346i), 12699i), Struct_3(vec3<i32>(-1i, 0i, 1i), vec2<i32>(2147483647i, i32(-2147483648)), 0i), Struct_3(vec3<i32>(-44241i, 38255i, -14637i), vec2<i32>(7017i, 0i), 52275i), Struct_3(vec3<i32>(0i, 0i, -1i), vec2<i32>(5964i, 1i), -65942i), Struct_3(vec3<i32>(1i, -19802i, 31843i), vec2<i32>(-4298i, i32(-2147483648)), 2147483647i), Struct_3(vec3<i32>(2147483647i, 0i, 2147483647i), vec2<i32>(i32(-2147483648), 27938i), -39231i), Struct_3(vec3<i32>(0i, 2147483647i, 54201i), vec2<i32>(41798i, 0i), -327i), Struct_3(vec3<i32>(i32(-2147483648), i32(-2147483648), 13280i), vec2<i32>(2147483647i, 8408i), 33617i), Struct_3(vec3<i32>(-1i, i32(-2147483648), 0i), vec2<i32>(1i, -7998i), 45580i), Struct_3(vec3<i32>(i32(-2147483648), 2147483647i, 49356i), vec2<i32>(-28769i, -1i), 0i), Struct_3(vec3<i32>(4735i, i32(-2147483648), 2147483647i), vec2<i32>(35474i, 2147483647i), 37684i), Struct_3(vec3<i32>(-20526i, -24054i, 8299i), vec2<i32>(-3777i, 7774i), 1i), Struct_3(vec3<i32>(14557i, 2147483647i, -1018i), vec2<i32>(9957i, 28712i), 32479i), Struct_3(vec3<i32>(-11134i, -16132i, 1i), vec2<i32>(17921i, -1i), i32(-2147483648)), Struct_3(vec3<i32>(-1i, -30409i, -14427i), vec2<i32>(16763i, 1i), 0i));

var<private> global3: array<vec4<u32>, 27> = array<vec4<u32>, 27>(vec4<u32>(35306u, 31330u, 1u, 1u), vec4<u32>(4294967295u, 4294967295u, 1u, 1u), vec4<u32>(41199u, 0u, 15622u, 6708u), vec4<u32>(1u, 26075u, 1u, 1u), vec4<u32>(5241u, 64851u, 135836u, 1u), vec4<u32>(1u, 0u, 1u, 37846u), vec4<u32>(49024u, 37496u, 4294967295u, 0u), vec4<u32>(4450u, 37075u, 72429u, 1u), vec4<u32>(4294967295u, 4294967295u, 34075u, 53345u), vec4<u32>(6611u, 21996u, 31013u, 18957u), vec4<u32>(1u, 0u, 1u, 1843u), vec4<u32>(1u, 2924u, 0u, 50266u), vec4<u32>(53415u, 0u, 1u, 4294967295u), vec4<u32>(65730u, 0u, 52846u, 1u), vec4<u32>(60723u, 4294967295u, 33510u, 1348u), vec4<u32>(4294967295u, 4294967295u, 11850u, 4294967295u), vec4<u32>(1u, 34259u, 111797u, 878u), vec4<u32>(4294967295u, 5158u, 4294967295u, 4294967295u), vec4<u32>(6741u, 1u, 39661u, 51028u), vec4<u32>(44998u, 4294967295u, 0u, 1u), vec4<u32>(47019u, 18516u, 55467u, 107307u), vec4<u32>(15664u, 71797u, 0u, 33564u), vec4<u32>(13854u, 4294967295u, 0u, 1u), vec4<u32>(118481u, 32159u, 0u, 0u), vec4<u32>(29312u, 12058u, 1u, 23027u), vec4<u32>(4185u, 0u, 19093u, 12181u), vec4<u32>(21867u, 4294967295u, 68646u, 4294967295u));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: f32, arg_1: Struct_4, arg_2: Struct_2) -> vec4<f32> {
    global0 = array<Struct_4, 3>();
    global2 = array<Struct_3, 18>();
    var var_0 = arg_2.a.a.x;
    global0 = array<Struct_4, 3>();
    var var_1 = reverseBits(global1.a.yy | countOneBits(_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, 0i) & global1.a.yx, u_input.a.yx)));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(333f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0 + 596f), -201f, true)), arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1537f)) + arg_0)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, 1000f, arg_2.d.a.x, 562f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-128f, arg_0, arg_0, arg_0) - vec4<f32>(-672f, arg_0, arg_0, -1651f))))));
}

fn func_3(arg_0: vec4<u32>, arg_1: i32, arg_2: vec4<u32>, arg_3: Struct_5) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(-579f, -1000f)), _wgslsmith_div_f32(733f, -1000f), _wgslsmith_f_op_f32(f32(-1f) * -942f), _wgslsmith_f_op_f32(step(646f, -810f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1174f, -1563f, 193f, 2186f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2779f, -1013f, 1105f, -853f))))));
    let var_1 = !vec4<bool>(all(select(vec3<bool>(true, false, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true))), true, false, 4739u != ~select(arg_0.x, 28912u, false));
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)))))), !(!var_1), select(vec4<bool>(var_1.x, var_1.x, select(true, true, true), true), vec4<bool>(var_1.x, any(var_1), all(vec2<bool>(var_1.x, var_1.x)), false), false));
    let var_3 = var_2.b;
    var var_4 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.x, var_0.x, var_2.a.x))))) * var_0.xyw)));
    return var_1;
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: vec4<i32>) -> u32 {
    global1 = Struct_4(-vec3<i32>(i32(-1i) * -global1.a.x, 2147483647i, u_input.a.x));
    global2 = array<Struct_3, 18>();
    global3 = array<vec4<u32>, 27>();
    var var_0 = Struct_2(Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 1367f)), vec2<f32>(_wgslsmith_f_op_f32(739f + arg_0), -288f)), vec4<bool>(all(vec2<bool>(true, true)), any(vec2<bool>(true, true)), true, false), vec4<bool>(any(vec4<bool>(true, true, true, true)), false, true, true)), vec4<bool>(all(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true))), true | any(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false))), false | any(vec3<bool>(false, false, true)), all(vec3<bool>(false, true, true))), Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1631f, -816f))))), !func_3(_wgslsmith_sub_vec4_u32(vec4<u32>(4089u, 0u, 4294967295u, 54753u), global3[_wgslsmith_index_u32(29157u, 27u)]), arg_1, ~vec4<u32>(41260u, 1u, 4294967295u, 65453u), Struct_5(1945u)), func_3(~_wgslsmith_div_vec4_u32(global3[_wgslsmith_index_u32(42197u, 27u)], vec4<u32>(54906u, 46931u, 24837u, 31135u)), _wgslsmith_add_i32(-arg_2.x, select(arg_1, u_input.a.x, true)), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(19517u >> (0u % 32u), 23097u), 27u)], Struct_5(1u))), Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0, -1352f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0, arg_0), vec2<f32>(1592f, arg_0), vec2<bool>(false, false))))), !(!func_3(global3[_wgslsmith_index_u32(32556u, 27u)], -1i, global3[_wgslsmith_index_u32(57989u, 27u)], Struct_5(0u))), select(vec4<bool>(true, true, false, true), vec4<bool>(false, select(false, true, true), false, true), all(vec3<bool>(true, true, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(532f + _wgslsmith_f_op_f32(-1000f - 375f)) - _wgslsmith_f_op_f32(f32(-1f) * -1224f)));
    global1 = Struct_4(-vec3<i32>(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(2147483647i, 1i, -15141i, global1.a.x)), u_input.a), _wgslsmith_mod_i32(-1i, _wgslsmith_div_i32(arg_1, 2147483647i)), -(~(-1i))));
    return 4294967295u >> (_wgslsmith_dot_vec4_u32(global3[_wgslsmith_index_u32(~(~4294967295u) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 53660u, 1u), vec3<u32>(1u, 1u, 1u)) % 32u), 27u)], ~global3[_wgslsmith_index_u32(~(~0u), 27u)]) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(-392f, Struct_4(vec3<i32>(-2073i, 40664i, u_input.a.x)), Struct_2(Struct_1(vec2<f32>(-465f, 1147f), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true), Struct_1(vec2<f32>(397f, -306f), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false)), Struct_1(vec2<f32>(887f, -1212f), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false)), 925f)))) - vec4<f32>(-575f, 683f, -958f, -575f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-971f, 571f, -1319f, 1115f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))), true)), max(~firstLeadingBit(func_2(1246f, 1i, vec4<i32>(u_input.a.x, global1.a.x, -27986i, global1.a.x))), reverseBits(0u)), firstTrailingBit(countOneBits(vec3<u32>(1u, 1u, 1u))), firstLeadingBit(u_input.a));
}

