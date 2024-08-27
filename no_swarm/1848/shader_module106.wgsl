struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: u32,
    d: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: f32,
}

struct Struct_5 {
    a: u32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 5> = array<vec2<u32>, 5>(vec2<u32>(49406u, 12581u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 89843u), vec2<u32>(90201u, 60820u));

var<private> global1: array<vec3<i32>, 28> = array<vec3<i32>, 28>(vec3<i32>(2147483647i, 0i, 23064i), vec3<i32>(18267i, 1i, 25846i), vec3<i32>(58666i, i32(-2147483648), 34783i), vec3<i32>(-23141i, -30268i, -25445i), vec3<i32>(47286i, i32(-2147483648), 26107i), vec3<i32>(24796i, 0i, 27224i), vec3<i32>(29348i, 0i, i32(-2147483648)), vec3<i32>(0i, 1i, 1i), vec3<i32>(2147483647i, -8012i, -1i), vec3<i32>(2147483647i, i32(-2147483648), -1i), vec3<i32>(i32(-2147483648), 0i, 1i), vec3<i32>(29474i, 2147483647i, 19212i), vec3<i32>(36129i, 1054i, -3915i), vec3<i32>(0i, 14054i, 2147483647i), vec3<i32>(0i, -6345i, 0i), vec3<i32>(13869i, 2147483647i, 16552i), vec3<i32>(-1i, -18943i, 33763i), vec3<i32>(2147483647i, 2147483647i, 1i), vec3<i32>(29856i, 2147483647i, 1i), vec3<i32>(25798i, -1i, 0i), vec3<i32>(1052i, 68426i, i32(-2147483648)), vec3<i32>(1016i, 1i, -41202i), vec3<i32>(26715i, i32(-2147483648), -36199i), vec3<i32>(-1i, 22486i, 2147483647i), vec3<i32>(0i, -4959i, i32(-2147483648)), vec3<i32>(56436i, i32(-2147483648), -356i), vec3<i32>(1i, i32(-2147483648), 32722i), vec3<i32>(34666i, 1i, -15923i));

var<private> global2: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(Struct_1(vec4<u32>(1u, 4294967295u, 1u, 40470u), false, -517f), Struct_1(vec4<u32>(4294967295u, 1u, 6424u, 59974u), false, -501f)), Struct_2(Struct_1(vec4<u32>(73097u, 7415u, 8020u, 72u), false, -1291f), Struct_1(vec4<u32>(1u, 62113u, 1u, 28861u), false, -542f)), Struct_2(Struct_1(vec4<u32>(31471u, 5975u, 4294967295u, 4294967295u), false, -232f), Struct_1(vec4<u32>(1u, 4294967295u, 0u, 0u), false, 476f)), Struct_2(Struct_1(vec4<u32>(4294967295u, 37747u, 4294967295u, 0u), false, 538f), Struct_1(vec4<u32>(1u, 60537u, 0u, 10043u), false, -263f)), Struct_2(Struct_1(vec4<u32>(3313u, 28619u, 4643u, 1u), false, 1491f), Struct_1(vec4<u32>(4294967295u, 28557u, 4294967295u, 4294967295u), false, 114f)), Struct_2(Struct_1(vec4<u32>(29583u, 0u, 4294967295u, 19082u), true, -745f), Struct_1(vec4<u32>(4294967295u, 4294967295u, 0u, 1u), true, 2256f)), Struct_2(Struct_1(vec4<u32>(4294967295u, 1u, 1u, 0u), false, -188f), Struct_1(vec4<u32>(27053u, 0u, 29137u, 36186u), false, -383f)), Struct_2(Struct_1(vec4<u32>(1u, 68561u, 7343u, 1u), false, 275f), Struct_1(vec4<u32>(1u, 1u, 5050u, 0u), true, -603f)), Struct_2(Struct_1(vec4<u32>(36727u, 4294967295u, 78834u, 1u), false, -1399f), Struct_1(vec4<u32>(10221u, 4294967295u, 17512u, 25262u), false, -633f)), Struct_2(Struct_1(vec4<u32>(26919u, 4294967295u, 35604u, 18095u), false, 115f), Struct_1(vec4<u32>(17630u, 70086u, 177632u, 26867u), true, -1420f)), Struct_2(Struct_1(vec4<u32>(0u, 1u, 9776u, 0u), false, 248f), Struct_1(vec4<u32>(17751u, 0u, 1u, 81442u), true, -115f)), Struct_2(Struct_1(vec4<u32>(1504u, 0u, 4294967295u, 1u), false, 504f), Struct_1(vec4<u32>(3249u, 4294967295u, 4294967295u, 11019u), true, -777f)), Struct_2(Struct_1(vec4<u32>(4294967295u, 9528u, 8008u, 45850u), true, -199f), Struct_1(vec4<u32>(0u, 0u, 0u, 4294967295u), false, -414f)), Struct_2(Struct_1(vec4<u32>(4294967295u, 12453u, 11392u, 10059u), true, 755f), Struct_1(vec4<u32>(50381u, 1u, 10772u, 1u), false, 571f)), Struct_2(Struct_1(vec4<u32>(0u, 0u, 57879u, 33880u), false, -2021f), Struct_1(vec4<u32>(0u, 42835u, 0u, 0u), false, 1517f)), Struct_2(Struct_1(vec4<u32>(36080u, 1u, 1u, 25106u), false, 1187f), Struct_1(vec4<u32>(107866u, 4294967295u, 9919u, 1u), false, -1104f)), Struct_2(Struct_1(vec4<u32>(0u, 62529u, 0u, 1u), true, 435f), Struct_1(vec4<u32>(73454u, 4294967295u, 56552u, 10945u), false, -1028f)), Struct_2(Struct_1(vec4<u32>(73651u, 48356u, 1u, 4294967295u), false, 1000f), Struct_1(vec4<u32>(0u, 4294967295u, 60610u, 0u), true, 569f)), Struct_2(Struct_1(vec4<u32>(72951u, 14637u, 70945u, 4294967295u), false, -1769f), Struct_1(vec4<u32>(1u, 0u, 1u, 14619u), false, -1079f)), Struct_2(Struct_1(vec4<u32>(7792u, 0u, 4294967295u, 126858u), true, 149f), Struct_1(vec4<u32>(0u, 61722u, 32889u, 33357u), false, -867f)), Struct_2(Struct_1(vec4<u32>(0u, 3939u, 1u, 4294967295u), false, -1241f), Struct_1(vec4<u32>(0u, 18584u, 27847u, 4294967295u), false, 1190f)), Struct_2(Struct_1(vec4<u32>(3479u, 1u, 30646u, 1u), true, 1205f), Struct_1(vec4<u32>(24998u, 50636u, 55719u, 0u), true, 574f)), Struct_2(Struct_1(vec4<u32>(0u, 64295u, 91498u, 4670u), true, -1378f), Struct_1(vec4<u32>(3027u, 4294967295u, 1u, 4294967295u), false, -619f)));

var<private> global3: Struct_5;

var<private> global4: array<vec2<i32>, 25>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_5, arg_1: vec3<bool>, arg_2: i32) -> bool {
    let var_0 = arg_1.x;
    var var_1 = u_input.b & reverseBits(u_input.b);
    global1 = array<vec3<i32>, 28>();
    global3 = Struct_5(4294967295u, _wgslsmith_f_op_vec2_f32(max(arg_0.b, _wgslsmith_f_op_vec2_f32(-global3.b))));
    var_1 = _wgslsmith_mult_i32(-_wgslsmith_clamp_i32(firstTrailingBit(max(u_input.b, u_input.b)), u_input.b, -(~u_input.b)), abs(~((-60645i >> (arg_0.a % 32u)) | _wgslsmith_dot_vec2_i32(global4[_wgslsmith_index_u32(16314u, 25u)], global4[_wgslsmith_index_u32(u_input.c, 25u)]))));
    return var_0;
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.b.x, -2254f, -119f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.b.x, 1273f, -1346f) + vec3<f32>(-170f, global3.b.x, global3.b.x)), vec3<bool>(true, true, true))) + vec3<f32>(_wgslsmith_f_op_f32(-130f + global3.b.x), global3.b.x, global3.b.x)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.b.x, 1324f, 465f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1421f, 741f, global3.b.x) - vec3<f32>(global3.b.x, 517f, 1086f))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3.b.x, global3.b.x, -679f), vec3<f32>(-1089f, 592f, global3.b.x), vec3<bool>(false, false, true))), vec3<f32>(-653f, -166f, global3.b.x))), vec3<bool>(any(vec2<bool>(true, false)), u_input.b < u_input.b, any(vec3<bool>(false, true, false)))))) + _wgslsmith_div_vec3_f32(vec3<f32>(global3.b.x, global3.b.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(736f * global3.b.x)))), vec3<f32>(_wgslsmith_f_op_f32(global3.b.x + global3.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1474f * global3.b.x)), _wgslsmith_f_op_f32(-1057f + global3.b.x))));
    global2 = array<Struct_2, 23>();
    var var_1 = global3.a ^ 57355u;
    let var_2 = !select(!vec4<bool>(2147483647i > u_input.b, func_3(Struct_5(4294967295u, vec2<f32>(-1000f, global3.b.x)), vec3<bool>(true, true, false), 2147483647i), true, true), !select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true)), vec4<bool>(true, false, true, false), func_3(Struct_5(4294967295u, global3.b), vec3<bool>(false, false, true), u_input.b)), false && func_3(Struct_5(global3.a, global3.b), vec3<bool>(true, true, true), 1i));
    var var_3 = global2[_wgslsmith_index_u32(1107u, 23u)];
    return Struct_1(var_3.a.a, any(var_2), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-global3.b.x)) + _wgslsmith_f_op_f32(-583f - _wgslsmith_f_op_f32(floor(1320f)))) + -2820f));
}

fn func_1() -> Struct_4 {
    global0 = array<vec2<u32>, 5>();
    global4 = array<vec2<i32>, 25>();
    let var_0 = Struct_2(func_2(), func_2());
    global3 = Struct_5(func_2().a.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(global3.b, global3.b)) - vec2<f32>(var_0.a.c, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(var_0.a.c)), _wgslsmith_f_op_f32(-var_0.b.c))))));
    global0 = array<vec2<u32>, 5>();
    return Struct_4(Struct_3(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 246f)), global3.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(553f))), _wgslsmith_f_op_f32(f32(-1f) * -853f)), Struct_2(func_2(), var_0.b), ~4294967295u, 1251f), func_2(), 1f);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<i32>, 28>();
    var var_0 = func_1();
    let var_1 = all(!(!(!select(vec2<bool>(var_0.a.b.a.b, false), vec2<bool>(false, false), true))));
    let var_2 = (4294967295u | _wgslsmith_clamp_u32(global3.a, 46507u, 1u)) ^ var_0.b.a.x;
    var var_3 = var_0.b;
    let var_4 = Struct_5(46835u, global3.b);
    var var_5 = var_4;
    var var_6 = any(!(!select(vec3<bool>(true, var_1, var_1), select(vec3<bool>(true, var_0.a.b.b.b, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), select(vec3<bool>(var_1, var_3.b, var_0.a.b.b.b), vec3<bool>(false, var_0.a.b.a.b, var_0.a.b.b.b), vec3<bool>(true, true, true)))));
    global1 = array<vec3<i32>, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(28803u, var_5.a, var_0.b.a.x, var_5.b.x);
}

