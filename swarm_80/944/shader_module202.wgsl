struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: f32,
    d: vec4<f32>,
    e: f32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: i32,
    b: vec4<f32>,
    c: vec2<i32>,
}

struct Struct_5 {
    a: bool,
    b: vec2<f32>,
    c: Struct_4,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20>;

var<private> global1: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(vec4<i32>(i32(-2147483648), -15273i, -12700i, -1i)), Struct_2(vec4<i32>(12360i, 7591i, -14150i, 10557i)), Struct_2(vec4<i32>(-11143i, -1i, 2147483647i, -2004i)), Struct_2(vec4<i32>(1i, 38514i, 1i, i32(-2147483648))), Struct_2(vec4<i32>(12557i, 2147483647i, -1i, 1i)), Struct_2(vec4<i32>(28720i, -50746i, i32(-2147483648), -4400i)), Struct_2(vec4<i32>(i32(-2147483648), 0i, i32(-2147483648), i32(-2147483648))), Struct_2(vec4<i32>(1i, 2319i, -3737i, 6737i)), Struct_2(vec4<i32>(-14269i, -43538i, -47912i, -5511i)), Struct_2(vec4<i32>(58232i, -69345i, 17667i, -35316i)), Struct_2(vec4<i32>(-29609i, 1i, -2115i, -5232i)), Struct_2(vec4<i32>(-15477i, 501i, 0i, 2147483647i)), Struct_2(vec4<i32>(-27733i, -1i, 8457i, -24444i)), Struct_2(vec4<i32>(39904i, -66507i, i32(-2147483648), 1i)), Struct_2(vec4<i32>(i32(-2147483648), 43665i, 24346i, 1i)), Struct_2(vec4<i32>(i32(-2147483648), 25247i, -1i, i32(-2147483648))), Struct_2(vec4<i32>(-24488i, 1i, -36265i, 4636i)), Struct_2(vec4<i32>(1i, -1i, -28869i, -39689i)), Struct_2(vec4<i32>(0i, 2147483647i, 19515i, 49872i)), Struct_2(vec4<i32>(1i, 0i, 30589i, 27139i)), Struct_2(vec4<i32>(-1i, -2510i, -32369i, 2147483647i)), Struct_2(vec4<i32>(33908i, -10206i, 12289i, 0i)), Struct_2(vec4<i32>(1i, -1i, 1i, -52108i)), Struct_2(vec4<i32>(i32(-2147483648), 1i, 47280i, -1i)), Struct_2(vec4<i32>(59046i, -1i, i32(-2147483648), -1i)), Struct_2(vec4<i32>(1i, 1009i, 607i, 2147483647i)), Struct_2(vec4<i32>(-1i, -1i, -27926i, 16442i)), Struct_2(vec4<i32>(1i, 9258i, i32(-2147483648), -10761i)));

var<private> global2: Struct_5;

var<private> global3: array<vec3<bool>, 15>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2() -> Struct_1 {
    return global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(~abs(select(vec4<u32>(u_input.a, u_input.a, 3504u, 4294967295u), vec4<u32>(4294967295u, u_input.a, 60147u, 98209u), vec4<bool>(global2.a, global2.a, global2.a, false))), vec4<u32>(35824u, u_input.a, abs(~u_input.a), 65877u)), 20u)];
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec3<i32>) -> Struct_5 {
    let var_0 = Struct_1(~(abs(_wgslsmith_div_i32(global2.c.c.x, global2.c.c.x)) ^ -2147483647i), ~select(arg_0.b, arg_0.b, true), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(1954f)))) + _wgslsmith_f_op_f32(max(arg_0.c, arg_0.c))))), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.e * _wgslsmith_f_op_f32(f32(-1f) * -405f)), -368f)), arg_0.d.x, -1129f, _wgslsmith_f_op_f32(step(func_2().d.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.d.x)))))), arg_0.c);
    var var_1 = var_0.b;
    var var_2 = arg_1.x;
    var var_3 = var_0.b.x;
    let var_4 = var_0.c;
    return Struct_5(!global2.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(232f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1341f - -1000f), var_4)))), Struct_4(_wgslsmith_div_i32(firstLeadingBit(0i), select(~var_0.a, ~25964i, !global2.a)), arg_0.d, global2.c.c));
}

fn func_1(arg_0: vec4<f32>) -> f32 {
    let var_0 = -1766f;
    global2 = func_3(func_2(), firstTrailingBit(abs(_wgslsmith_div_vec2_u32(vec2<u32>(0u, 4294967295u), ~vec2<u32>(u_input.a, u_input.a)))), ~vec3<i32>(~0i, -global2.c.a, _wgslsmith_dot_vec3_i32(~vec3<i32>(40426i, global2.c.a, global2.c.a), ~vec3<i32>(2147483647i, global2.c.a, global2.c.a))));
    return -514f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(all(!select(vec3<bool>(global2.a, global2.a, false), vec3<bool>(false, global2.a, true), select(vec3<bool>(global2.a, global2.a, global2.a), vec3<bool>(true, false, true), vec3<bool>(true, global2.a, global2.a)))), !(false && global2.a));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec4_f32(-global2.c.b))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1525f))) * global2.b.x));
    let var_2 = _wgslsmith_div_f32(global2.b.x, func_2().e);
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1293f), -1352f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_2, 1826f, false)) + _wgslsmith_f_op_f32(-global2.c.b.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(global2.c.b.yyy * vec3<f32>(-433f, global2.c.b.x, -967f)), _wgslsmith_f_op_vec3_f32(-global2.c.b.wxw), select(global3[_wgslsmith_index_u32(1u, 15u)], vec3<bool>(var_0.x, global2.a, false), true))))));
    global3 = array<vec3<bool>, 15>();
    var var_4 = _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(~(~(-vec3<i32>(-49912i, 0i, -12604i))), _wgslsmith_div_vec3_i32(countOneBits(vec3<i32>(global2.c.c.x, -49252i, 0i)), vec3<i32>(1i, 2147483647i, -1i)) ^ func_2().b), vec3<i32>(-1i) * -vec3<i32>(1i, 15599i, countOneBits(55749i)));
    let var_5 = global2.a;
    global3 = array<vec3<bool>, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2.c.b), global2.c.b));
}

