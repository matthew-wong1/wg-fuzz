struct Struct_1 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: i32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 12> = array<vec2<u32>, 12>(vec2<u32>(1u, 52088u), vec2<u32>(60839u, 1u), vec2<u32>(82220u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(27848u, 42627u), vec2<u32>(0u, 24071u), vec2<u32>(1u, 59943u), vec2<u32>(92154u, 6138u), vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 41426u), vec2<u32>(4294967295u, 1u));

var<private> global1: array<bool, 19> = array<bool, 19>(true, true, false, true, true, false, true, true, false, true, true, true, true, true, false, true, false, false, true);

var<private> global2: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(vec3<f32>(883f, -1174f, -440f), Struct_1(vec3<i32>(1i, 1i, 31058i), vec3<bool>(false, false, false), 766f)), Struct_2(vec3<f32>(1128f, -175f, -478f), Struct_1(vec3<i32>(-1i, 58092i, -1i), vec3<bool>(false, true, true), 739f)), Struct_2(vec3<f32>(489f, 176f, -1493f), Struct_1(vec3<i32>(0i, -31162i, 0i), vec3<bool>(true, false, true), -582f)), Struct_2(vec3<f32>(1291f, 680f, 960f), Struct_1(vec3<i32>(9077i, -59729i, 0i), vec3<bool>(true, false, true), 619f)), Struct_2(vec3<f32>(-443f, -382f, 851f), Struct_1(vec3<i32>(64034i, -1i, 2147483647i), vec3<bool>(true, false, true), 403f)), Struct_2(vec3<f32>(1000f, 1000f, -929f), Struct_1(vec3<i32>(1i, 10165i, 1i), vec3<bool>(true, true, true), 1838f)), Struct_2(vec3<f32>(186f, -401f, -777f), Struct_1(vec3<i32>(i32(-2147483648), -34354i, -37550i), vec3<bool>(false, false, false), -248f)), Struct_2(vec3<f32>(-1325f, -863f, 1550f), Struct_1(vec3<i32>(-7827i, i32(-2147483648), 1i), vec3<bool>(false, false, true), 1000f)), Struct_2(vec3<f32>(478f, 878f, -1091f), Struct_1(vec3<i32>(i32(-2147483648), -11489i, 1i), vec3<bool>(true, false, true), 1031f)), Struct_2(vec3<f32>(1052f, 1617f, -1396f), Struct_1(vec3<i32>(-26062i, -1i, 20291i), vec3<bool>(false, true, true), 380f)), Struct_2(vec3<f32>(531f, -1289f, -432f), Struct_1(vec3<i32>(-2220i, -1217i, 18669i), vec3<bool>(false, true, true), 1000f)), Struct_2(vec3<f32>(821f, -1510f, -1048f), Struct_1(vec3<i32>(-44508i, 32999i, 0i), vec3<bool>(true, true, true), -1613f)), Struct_2(vec3<f32>(282f, -1693f, 1167f), Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, -14047i), vec3<bool>(true, true, true), -441f)), Struct_2(vec3<f32>(1274f, -104f, 789f), Struct_1(vec3<i32>(-67380i, -52711i, 31752i), vec3<bool>(false, false, true), 1067f)), Struct_2(vec3<f32>(-871f, -101f, -1106f), Struct_1(vec3<i32>(-15597i, -39297i, 16985i), vec3<bool>(true, false, true), -116f)), Struct_2(vec3<f32>(-548f, -1069f, 1017f), Struct_1(vec3<i32>(-1i, -2153i, 5280i), vec3<bool>(true, false, true), -1927f)), Struct_2(vec3<f32>(-969f, -1326f, -1414f), Struct_1(vec3<i32>(2147483647i, i32(-2147483648), 2147483647i), vec3<bool>(false, true, false), -248f)), Struct_2(vec3<f32>(162f, -520f, -1391f), Struct_1(vec3<i32>(2147483647i, 1i, 2147483647i), vec3<bool>(false, true, false), -343f)), Struct_2(vec3<f32>(1202f, -1192f, -1000f), Struct_1(vec3<i32>(2147483647i, -17298i, -7961i), vec3<bool>(false, false, true), -156f)));

var<private> global3: array<vec4<bool>, 18> = array<vec4<bool>, 18>(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false));

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2() -> Struct_1 {
    return Struct_1(firstLeadingBit(-select(firstTrailingBit(vec3<i32>(-2147483647i, 2147483647i, u_input.b)), abs(vec3<i32>(u_input.b, -9255i, 31621i)), select(vec3<bool>(global1[_wgslsmith_index_u32(0u, 19u)], true, true), vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 19u)], global1[_wgslsmith_index_u32(12623u, 19u)], false), global1[_wgslsmith_index_u32(13924u, 19u)]))), !select(vec3<bool>(!global1[_wgslsmith_index_u32(u_input.d, 19u)], -16669i >= u_input.b, global1[_wgslsmith_index_u32(0u, 19u)]), vec3<bool>(false, true, global1[_wgslsmith_index_u32(u_input.c ^ u_input.d, 19u)]), select(vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.d, 19u)], false), !vec3<bool>(global1[_wgslsmith_index_u32(1u, 19u)], global1[_wgslsmith_index_u32(1u, 19u)], global1[_wgslsmith_index_u32(75367u, 19u)]), !global1[_wgslsmith_index_u32(62239u, 19u)])), _wgslsmith_f_op_f32(round(-1000f)));
}

fn func_1() -> i32 {
    global2 = array<Struct_2, 19>();
    global3 = array<vec4<bool>, 18>();
    global0 = array<vec2<u32>, 12>();
    let var_0 = global1[_wgslsmith_index_u32(u_input.c, 19u)];
    let var_1 = func_2();
    return ~_wgslsmith_dot_vec3_i32(firstLeadingBit(select(var_1.a, var_1.a >> (vec3<u32>(4294967295u, u_input.d, u_input.d) % vec3<u32>(32u)), !vec3<bool>(false, var_1.b.x, global1[_wgslsmith_index_u32(64526u, 19u)]))), vec3<i32>(-1i, max(var_1.a.x, _wgslsmith_mod_i32(15675i, var_1.a.x)), u_input.a));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>) -> vec4<i32> {
    let var_0 = vec2<u32>(u_input.c, u_input.d);
    let var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2064f, 847f, var_1.c)) * vec3<f32>(2202f, -455f, var_1.c)) + vec3<f32>(var_1.c, _wgslsmith_f_op_f32(exp2(var_1.c)), func_2().c)) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.c, 632f, arg_0.c), vec3<f32>(-125f, 795f, 2680f))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.c, 1000f, -507f), vec3<f32>(arg_0.c, -1000f, var_1.c))))))));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_1.c * -927f), _wgslsmith_f_op_f32(round(-2366f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(ceil(arg_0.c)))))));
    global3 = array<vec4<bool>, 18>();
    return ~firstTrailingBit(max(firstTrailingBit(vec4<i32>(-31002i, var_1.a.x, var_1.a.x, 0i)) | -vec4<i32>(2147483647i, var_1.a.x, -29515i, -58896i), firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(-18578i, 2147483647i, 53168i, u_input.a), vec4<i32>(var_1.a.x, 0i, u_input.a, -1i)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!(!vec3<bool>(true, false, true | global1[_wgslsmith_index_u32(1u, 19u)])), vec3<bool>(-firstLeadingBit(49271i) <= func_1(), true & func_2().b.x, u_input.a <= -2147483647i), !vec3<bool>(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.c, 1u), 19u)], global1[_wgslsmith_index_u32(1u, 19u)], true));
    global0 = array<vec2<u32>, 12>();
    var_0 = vec3<bool>(true, u_input.a < -1i, false & var_0.x);
    global2 = array<Struct_2, 19>();
    var var_1 = vec2<f32>(_wgslsmith_div_f32(-232f, 1f), -1741f);
    let x = u_input.a;
    s_output = StorageBuffer(func_3(func_2(), vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.a, u_input.b), u_input.a), reverseBits(countOneBits(-11626i)))), select(u_input.b, u_input.a, true), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-124f, -915f, var_1.x)))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(690f, var_1.x, var_1.x), vec3<f32>(634f, var_1.x, 1168f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.x, var_1.x, var_1.x), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.x, -134f, var_1.x)))))), all(global3[_wgslsmith_index_u32(4294967295u, 18u)]))));
}

