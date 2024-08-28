struct Struct_1 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: i32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 22>;

var<private> global1: Struct_1 = Struct_1(vec4<f32>(-668f, -1584f, 1912f, 1493f), vec4<u32>(4294967295u, 71200u, 1u, 30375u), i32(-2147483648));

var<private> global2: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(vec4<f32>(-1810f, 210f, 1135f, -1197f), vec4<u32>(1u, 13776u, 4294967295u, 4294967295u), -44581i), Struct_1(vec4<f32>(139f, 927f, 254f, 332f), vec4<u32>(29650u, 1u, 62285u, 3385u), -26517i), Struct_1(vec4<f32>(503f, 1072f, -1671f, -1418f), vec4<u32>(0u, 50365u, 12183u, 31476u), -60092i), Struct_1(vec4<f32>(1131f, -492f, 495f, -117f), vec4<u32>(15977u, 26391u, 39845u, 42539u), 0i), Struct_1(vec4<f32>(-952f, 1000f, 280f, 475f), vec4<u32>(103393u, 13130u, 1u, 26763u), -26110i), Struct_1(vec4<f32>(-568f, -135f, -1504f, -1000f), vec4<u32>(1u, 30506u, 4294967295u, 4294967295u), -14276i), Struct_1(vec4<f32>(1082f, 955f, -884f, 754f), vec4<u32>(40833u, 1u, 44218u, 4294967295u), i32(-2147483648)), Struct_1(vec4<f32>(1862f, 456f, 423f, 441f), vec4<u32>(0u, 100082u, 6991u, 45466u), i32(-2147483648)), Struct_1(vec4<f32>(511f, -1953f, 1134f, 1067f), vec4<u32>(4294967295u, 17909u, 5717u, 3401u), 1i), Struct_1(vec4<f32>(1178f, 226f, -310f, -385f), vec4<u32>(0u, 59173u, 34289u, 38966u), -1i), Struct_1(vec4<f32>(-620f, 1343f, 518f, 945f), vec4<u32>(454u, 4294967295u, 1u, 0u), 2147483647i), Struct_1(vec4<f32>(897f, -137f, 1626f, -543f), vec4<u32>(4294967295u, 1u, 1u, 44058u), -1i), Struct_1(vec4<f32>(685f, 2532f, -1770f, 563f), vec4<u32>(11640u, 4356u, 4294967295u, 1u), 1i), Struct_1(vec4<f32>(512f, 184f, -1531f, -1000f), vec4<u32>(4294967295u, 7177u, 0u, 1u), -5169i), Struct_1(vec4<f32>(1000f, -1818f, -228f, 365f), vec4<u32>(1u, 37963u, 4294967295u, 0u), 28760i), Struct_1(vec4<f32>(-1033f, -2135f, 732f, -703f), vec4<u32>(4345u, 0u, 4294967295u, 4294967295u), -1i), Struct_1(vec4<f32>(-381f, 1233f, 2135f, -656f), vec4<u32>(1u, 4837u, 1u, 4294967295u), 10980i), Struct_1(vec4<f32>(-973f, 1594f, -116f, -165f), vec4<u32>(0u, 4294967295u, 82399u, 23430u), 0i), Struct_1(vec4<f32>(-589f, -1488f, -147f, -414f), vec4<u32>(4294967295u, 10213u, 4294967295u, 1u), -1212i), Struct_1(vec4<f32>(1216f, -1000f, 1053f, 727f), vec4<u32>(81905u, 1u, 64137u, 18474u), 0i), Struct_1(vec4<f32>(-1429f, -895f, 481f, 773f), vec4<u32>(0u, 75010u, 0u, 0u), 1i));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: f32, arg_1: f32) -> u32 {
    let var_0 = u_input.a.x;
    global0 = array<u32, 22>();
    global2 = array<Struct_1, 21>();
    var var_1 = 1u;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.a.zx - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1655f, 492f) + _wgslsmith_f_op_vec2_f32(round(global1.a.xw))))));
    return global0[_wgslsmith_index_u32(79045u, 22u)];
}

fn func_3() -> u32 {
    var var_0 = Struct_3(Struct_2(-1i), -531f);
    var var_1 = -1272f;
    var var_2 = Struct_2(global1.c);
    let var_3 = _wgslsmith_sub_i32(_wgslsmith_mult_i32(global1.c, 0i), var_2.a);
    global2 = array<Struct_1, 21>();
    return u_input.c.x;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<bool>) -> f32 {
    global0 = array<u32, 22>();
    var var_0 = -35059i;
    let var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_div_f32(-1000f, global1.a.x), _wgslsmith_f_op_f32(global1.a.x - -1097f), _wgslsmith_f_op_f32(step(-420f, -494f)))))));
    let var_2 = _wgslsmith_div_vec4_u32(~firstTrailingBit(u_input.c), vec4<u32>(firstLeadingBit(0u), ~_wgslsmith_sub_u32(~global1.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global1.b.x, 4294967295u, 8708u, global0[_wgslsmith_index_u32(u_input.c.x, 22u)]), u_input.c)), u_input.b.x, ~(func_3() | global1.b.x)));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.x * _wgslsmith_f_op_f32(floor(var_1.x))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-105f, var_1.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.a.x))), _wgslsmith_f_op_f32(step(-463f, _wgslsmith_f_op_f32(max(global1.a.x, 257f))))))), _wgslsmith_f_op_f32(f32(-1f) * -1003f));
    return var_1.x;
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: u32, arg_3: vec3<f32>) -> Struct_3 {
    global0 = array<u32, 22>();
    global1 = Struct_1(global1.a, vec4<u32>(arg_1, func_1(_wgslsmith_f_op_f32(arg_3.x + _wgslsmith_f_op_f32(max(1203f, global1.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1261f) - _wgslsmith_f_op_f32(floor(-904f)))), 73634u, _wgslsmith_mult_u32(4294967295u, firstLeadingBit(~global0[_wgslsmith_index_u32(24818u, 22u)]))), global1.c);
    global1 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.a.x, 244f, 356f, -972f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, _wgslsmith_f_op_f32(2192f - global1.a.x), -1517f, _wgslsmith_div_f32(-834f, 824f)))), u_input.c, -2147483647i);
    let var_0 = vec3<bool>(false, true, true);
    global2 = array<Struct_1, 21>();
    return Struct_3(Struct_2(_wgslsmith_dot_vec4_i32(-(~vec4<i32>(0i, u_input.a.x, global1.c, global1.c)), ~(vec4<i32>(0i, -1i, global1.c, global1.c) & vec4<i32>(u_input.a.x, -5017i, 6394i, u_input.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x)));
}

fn func_5(arg_0: bool, arg_1: Struct_3, arg_2: vec3<u32>, arg_3: vec2<i32>) -> Struct_1 {
    global2 = array<Struct_1, 21>();
    global2 = array<Struct_1, 21>();
    let var_0 = global2[_wgslsmith_index_u32(firstLeadingBit(func_1(func_4(-1338f, u_input.c.x, 71629u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(121f, 118f, global1.a.x), vec3<f32>(global1.a.x, global1.a.x, global1.a.x))) - _wgslsmith_f_op_vec3_f32(max(global1.a.zxy, vec3<f32>(arg_1.b, global1.a.x, -1014f))))).b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(false, arg_0, arg_0), true), select(vec4<bool>(true, false, true, true), vec4<bool>(arg_0, arg_0, false, arg_0), vec4<bool>(true, true, false, false))))))), 21u)];
    var var_1 = _wgslsmith_add_i32(abs(var_0.c), var_0.c);
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-944f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1382f + -938f))), global1.a.x)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-576f, arg_1.b, var_0.a.x))))))));
    return global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(~(~_wgslsmith_mult_u32(0u, arg_2.x)), 22u)], select(9316u, arg_2.x, _wgslsmith_f_op_f32(var_0.a.x - 341f) <= var_2.x)), 21u)];
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 21>();
    var var_0 = vec3<u32>(_wgslsmith_mod_u32(reverseBits(33304u) ^ global0[_wgslsmith_index_u32(4294967295u, 22u)], ~(~u_input.d)) << (~4294967295u % 32u), 1u << (global1.b.x % 32u), _wgslsmith_mod_u32(~func_1(_wgslsmith_f_op_f32(-971f + global1.a.x), global1.a.x), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(1u, u_input.c.x), 57669u, global0[_wgslsmith_index_u32(5449u, 22u)] << (u_input.c.x % 32u)) | ~_wgslsmith_mult_u32(35636u, 0u), 22u)]));
    let var_1 = func_5(false, func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec3<bool>(true, true, true), vec4<bool>(true, true, true, true))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.a.x)))), ~(~(~93393u)), u_input.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, global1.a.x, 1929f)) + _wgslsmith_f_op_vec3_f32(max(global1.a.xyy, global1.a.wwz))))), vec3<u32>(~var_0.x, 0u, 1u), -u_input.a.xx);
    var var_2 = _wgslsmith_mult_vec2_u32(global1.b.xy, vec2<u32>(func_3(), 84683u));
    global2 = array<Struct_1, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(max(0u, _wgslsmith_mult_u32(_wgslsmith_mod_u32(var_2.x, 4294967295u), u_input.b.x)), _wgslsmith_dot_vec3_u32(reverseBits(u_input.b), ~_wgslsmith_div_vec3_u32(vec3<u32>(var_2.x, 56357u, 1u), vec3<u32>(var_0.x, var_1.b.x, 21428u)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1435f, global1.a.x, global1.a.x))) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.a.x, 315f, 626f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-856f, var_1.a.x, var_1.a.x))) - global1.a.zzy))) * global1.a.xzy), vec2<u32>(countOneBits(_wgslsmith_add_u32(2796u, _wgslsmith_dot_vec2_u32(var_1.b.yz, vec2<u32>(4294967295u, 41807u)))), 45233u));
}

