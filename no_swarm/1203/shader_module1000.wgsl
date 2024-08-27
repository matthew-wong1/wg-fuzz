struct Struct_1 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
    d: bool,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: f32,
}

struct Struct_4 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 16>;

var<private> global1: array<vec2<i32>, 20>;

var<private> global2: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec3<u32>(0u, 4294967295u, 1u), vec2<i32>(0i, 14310i), -14580i, true, vec4<f32>(-1000f, 2186f, 1411f, -1000f)), Struct_1(vec3<u32>(53656u, 23377u, 0u), vec2<i32>(1i, -1i), -15983i, false, vec4<f32>(-1538f, 548f, 1988f, -171f)), Struct_1(vec3<u32>(57055u, 19310u, 0u), vec2<i32>(i32(-2147483648), i32(-2147483648)), -2039i, true, vec4<f32>(-124f, -175f, 273f, 3403f)), Struct_1(vec3<u32>(1u, 62461u, 110629u), vec2<i32>(26645i, 32634i), 0i, true, vec4<f32>(-859f, 591f, -917f, -167f)), Struct_1(vec3<u32>(1u, 0u, 1u), vec2<i32>(0i, -4377i), 4315i, true, vec4<f32>(1516f, 2105f, 910f, -858f)), Struct_1(vec3<u32>(0u, 37724u, 0u), vec2<i32>(42059i, 0i), -58339i, true, vec4<f32>(-1103f, 1050f, 1000f, 509f)), Struct_1(vec3<u32>(4294967295u, 0u, 86059u), vec2<i32>(i32(-2147483648), 0i), -1i, true, vec4<f32>(1000f, 1613f, -701f, 162f)), Struct_1(vec3<u32>(1u, 888u, 0u), vec2<i32>(1i, -6156i), -16829i, true, vec4<f32>(689f, 2073f, -161f, 1736f)), Struct_1(vec3<u32>(0u, 56899u, 53943u), vec2<i32>(-10643i, -54968i), 2147483647i, false, vec4<f32>(-943f, 284f, -220f, -1358f)), Struct_1(vec3<u32>(50493u, 3137u, 0u), vec2<i32>(1i, -39099i), 8518i, false, vec4<f32>(-690f, -1816f, 315f, -1437f)), Struct_1(vec3<u32>(136834u, 1u, 25554u), vec2<i32>(7659i, -14435i), -57075i, false, vec4<f32>(656f, 265f, -1000f, 1168f)), Struct_1(vec3<u32>(4294967295u, 1u, 8186u), vec2<i32>(-1i, 2147483647i), 43609i, true, vec4<f32>(1000f, -1331f, 320f, -1544f)), Struct_1(vec3<u32>(6169u, 20888u, 4294967295u), vec2<i32>(2147483647i, -25331i), -17592i, true, vec4<f32>(116f, -338f, -499f, -1569f)), Struct_1(vec3<u32>(38924u, 59710u, 26665u), vec2<i32>(-4115i, -55468i), -25776i, false, vec4<f32>(-1421f, 389f, 1511f, -366f)), Struct_1(vec3<u32>(46568u, 4294967295u, 83724u), vec2<i32>(74886i, 41416i), -36446i, false, vec4<f32>(649f, -936f, 182f, -1804f)), Struct_1(vec3<u32>(51862u, 0u, 1u), vec2<i32>(0i, -45117i), 2147483647i, true, vec4<f32>(-897f, 951f, 638f, 467f)), Struct_1(vec3<u32>(5569u, 4294967295u, 0u), vec2<i32>(2147483647i, 0i), 1i, false, vec4<f32>(1088f, 669f, -622f, 1538f)), Struct_1(vec3<u32>(0u, 4294967295u, 1u), vec2<i32>(1i, i32(-2147483648)), i32(-2147483648), true, vec4<f32>(619f, 199f, 975f, -542f)));

var<private> global3: vec3<f32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32, arg_1: vec2<bool>, arg_2: vec4<bool>, arg_3: f32) -> u32 {
    global3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global3.x, global3.x, 1000f), vec3<f32>(arg_3, -1435f, 1643f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3, 1268f, 1337f))) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-871f, global3.x, global3.x)))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(global3.x * global3.x), -402f, _wgslsmith_f_op_f32(823f + 239f)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(425f, 1150f, 723f))))))));
    var var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(397f, -200f, -1426f, -1000f), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(global3.x)), _wgslsmith_f_op_f32(step(global3.x, 768f))))), arg_3, 639f, global3.x), !(!select(select(arg_2, arg_2, arg_2), select(vec4<bool>(arg_2.x, true, true, arg_1.x), vec4<bool>(true, arg_2.x, arg_2.x, arg_2.x), false), arg_1.x))));
    global1 = array<vec2<i32>, 20>();
    var var_1 = false;
    let var_2 = Struct_1(~abs(u_input.a.zww), global1[_wgslsmith_index_u32(4294967295u, 20u)], i32(-1i) * -16538i, all(vec2<bool>(all(vec3<bool>(arg_2.x, arg_2.x, arg_2.x)) & any(arg_1), all(arg_2))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(448f, global3.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(-arg_3)))))));
    return _wgslsmith_add_u32(reverseBits(arg_0), _wgslsmith_sub_u32(71556u, ~(~58619u)));
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: vec3<i32>) -> f32 {
    let var_0 = firstTrailingBit(firstLeadingBit(u_input.b));
    global2 = array<Struct_1, 18>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global3.zy, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, 135f))))));
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(~_wgslsmith_dot_vec3_u32(u_input.a.xww, u_input.a.wxz), _wgslsmith_dot_vec2_u32(u_input.a.yx ^ vec2<u32>(u_input.a.x, 2934u), vec2<u32>(u_input.a.x, u_input.a.x))) >> (0u % 32u), u_input.a.x, _wgslsmith_add_u32(1u, ~abs(firstTrailingBit(u_input.a.x)))), 18u)];
    var var_3 = global0[_wgslsmith_index_u32(select(~func_3(u_input.a.x, select(!vec2<bool>(arg_1, true), !vec2<bool>(true, arg_1), arg_1), select(!vec4<bool>(var_2.d, false, false, true), select(vec4<bool>(arg_1, var_2.d, true, arg_1), vec4<bool>(arg_1, var_2.d, true, arg_1), true), vec4<bool>(var_2.d, arg_1, true, var_2.d)), _wgslsmith_f_op_f32(max(var_2.e.x, _wgslsmith_f_op_f32(var_1.x * global3.x)))), 46506u, false), 16u)];
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.a.e.x * var_3.a.e.x) - global3.x))) + var_1.x) * 1000f);
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1) -> Struct_3 {
    var var_0 = _wgslsmith_mod_u32(abs(~(~firstLeadingBit(u_input.a.x))), u_input.a.x);
    let var_1 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x + arg_0.x) * 1000f), global3.x);
    var var_2 = Struct_1(~arg_1.a, global1[_wgslsmith_index_u32(~(~4854u), 20u)], 0i ^ _wgslsmith_mod_i32(u_input.b, arg_1.b.x), false, _wgslsmith_f_op_vec4_f32(-arg_1.e));
    var var_3 = Struct_4(arg_1.e.x, 1000f);
    var var_4 = var_1;
    return Struct_3(Struct_1(~(~var_2.a ^ (var_2.a | u_input.a.zzz)), global1[_wgslsmith_index_u32(~(~1u), 20u)], -45530i | _wgslsmith_mult_i32(var_2.b.x, _wgslsmith_div_i32(8481i, -2147483647i)), true, arg_1.e), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(select(vec3<i32>(var_2.c, -51933i, arg_1.c), vec3<i32>(-2147483647i, -11190i, arg_1.c), vec3<bool>(var_2.d, var_2.d, true)), ~vec3<i32>(arg_1.c, u_input.b, 1i)), -1i) << (4294967295u % 32u), true, _wgslsmith_f_op_f32(sign(var_3.a)));
}

fn func_1() -> Struct_3 {
    global2 = array<Struct_1, 18>();
    let var_0 = _wgslsmith_sub_u32(min(4294967295u & u_input.a.x, ~(1u >> (u_input.a.x % 32u))), ~reverseBits(u_input.a.x));
    global1 = array<vec2<i32>, 20>();
    let var_1 = _wgslsmith_mult_i32(u_input.b, 1i) << (_wgslsmith_clamp_u32(0u, ~(~1u), u_input.a.x) % 32u);
    let var_2 = 727f > _wgslsmith_f_op_f32(-global3.x);
    return func_4(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1572f), _wgslsmith_f_op_f32(func_2(global3.x, var_2, max(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(u_input.b, var_1, -35830i)) << (vec3<u32>(u_input.a.x, 1u, var_0) % vec3<u32>(32u))))), Struct_1(u_input.a.ywx, global1[_wgslsmith_index_u32(u_input.a.x, 20u)], _wgslsmith_div_i32(23055i, u_input.b) >> (1u % 32u), true & var_2, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global3.x))), -347f, global3.x, -1287f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(~(_wgslsmith_sub_u32(61062u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 1u, u_input.a.x, 42711u), vec4<u32>(4506u, 1u, 38531u, 19729u))) | _wgslsmith_dot_vec2_u32(u_input.a.zz, ~vec2<u32>(u_input.a.x, u_input.a.x))) >> (10221u % 32u), 18u)];
    var var_1 = func_1();
    var_1 = func_1();
    global2 = array<Struct_1, 18>();
    global0 = array<Struct_2, 16>();
    global2 = array<Struct_1, 18>();
    global2 = array<Struct_1, 18>();
    global3 = _wgslsmith_f_op_vec3_f32(var_0.e.wxx * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.a.e.yxx) + vec3<f32>(1490f, global3.x, 759f)), var_0.e.xzw)));
    global1 = array<vec2<i32>, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-u_input.b, -17490i, -u_input.b), var_1.d, _wgslsmith_dot_vec3_i32(firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(15490i, 12560i, -14842i), vec3<i32>(31894i, var_1.b, -41492i))) | ~(-vec3<i32>(-14947i, -2147483647i, -61336i)), -vec3<i32>(abs(var_1.a.c), _wgslsmith_add_i32(4064i, u_input.b), -2147483647i)), -(~(-1i)) << (var_1.a.a.x % 32u), u_input.a);
}

