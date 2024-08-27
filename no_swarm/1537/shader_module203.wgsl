struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec3<bool>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: f32,
    d: Struct_2,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<i32, 24>;

var<private> global2: array<Struct_5, 9> = array<Struct_5, 9>(Struct_5(vec2<f32>(-783f, -197f), Struct_1(vec2<bool>(false, false)), vec2<bool>(true, false), Struct_4(Struct_3(vec4<bool>(true, false, true, false)), true, -867f, Struct_2(vec3<u32>(15282u, 11686u, 4294967295u), vec2<i32>(-1i, 0i), vec4<u32>(9274u, 79379u, 32841u, 4659u), vec3<bool>(false, false, false)))), Struct_5(vec2<f32>(-318f, 184f), Struct_1(vec2<bool>(false, true)), vec2<bool>(false, false), Struct_4(Struct_3(vec4<bool>(true, false, true, false)), true, 729f, Struct_2(vec3<u32>(17789u, 0u, 45970u), vec2<i32>(i32(-2147483648), 2147483647i), vec4<u32>(28868u, 4294967295u, 49183u, 12095u), vec3<bool>(false, false, false)))), Struct_5(vec2<f32>(-1807f, -549f), Struct_1(vec2<bool>(true, true)), vec2<bool>(true, true), Struct_4(Struct_3(vec4<bool>(false, true, false, false)), true, -788f, Struct_2(vec3<u32>(67766u, 1u, 126649u), vec2<i32>(2147483647i, 2147483647i), vec4<u32>(0u, 31133u, 54338u, 13057u), vec3<bool>(true, false, false)))), Struct_5(vec2<f32>(-345f, 1978f), Struct_1(vec2<bool>(true, true)), vec2<bool>(false, false), Struct_4(Struct_3(vec4<bool>(true, true, true, false)), false, 635f, Struct_2(vec3<u32>(3197u, 41970u, 1u), vec2<i32>(-24452i, 1i), vec4<u32>(85108u, 36137u, 44377u, 5956u), vec3<bool>(false, true, true)))), Struct_5(vec2<f32>(-819f, 232f), Struct_1(vec2<bool>(false, false)), vec2<bool>(true, true), Struct_4(Struct_3(vec4<bool>(true, false, false, false)), true, -432f, Struct_2(vec3<u32>(60677u, 1u, 57144u), vec2<i32>(-6372i, 1i), vec4<u32>(15324u, 1u, 4294967295u, 52526u), vec3<bool>(true, false, true)))), Struct_5(vec2<f32>(288f, -915f), Struct_1(vec2<bool>(true, true)), vec2<bool>(false, true), Struct_4(Struct_3(vec4<bool>(true, true, true, false)), true, -1000f, Struct_2(vec3<u32>(33466u, 45222u, 4294967295u), vec2<i32>(-1i, -43164i), vec4<u32>(30309u, 4294967295u, 58108u, 32140u), vec3<bool>(false, true, false)))), Struct_5(vec2<f32>(-649f, -1000f), Struct_1(vec2<bool>(true, true)), vec2<bool>(false, true), Struct_4(Struct_3(vec4<bool>(true, true, false, false)), false, -1000f, Struct_2(vec3<u32>(93572u, 0u, 57501u), vec2<i32>(-1i, -24424i), vec4<u32>(4294967295u, 0u, 4294967295u, 4294967295u), vec3<bool>(true, true, false)))), Struct_5(vec2<f32>(1291f, 101f), Struct_1(vec2<bool>(false, true)), vec2<bool>(false, true), Struct_4(Struct_3(vec4<bool>(false, false, false, true)), true, -191f, Struct_2(vec3<u32>(17261u, 15842u, 4294967295u), vec2<i32>(29087i, i32(-2147483648)), vec4<u32>(82401u, 1u, 6056u, 65559u), vec3<bool>(false, true, false)))), Struct_5(vec2<f32>(1213f, 740f), Struct_1(vec2<bool>(false, false)), vec2<bool>(true, true), Struct_4(Struct_3(vec4<bool>(false, false, true, false)), false, -807f, Struct_2(vec3<u32>(0u, 3238u, 1u), vec2<i32>(0i, 0i), vec4<u32>(4048u, 4294967295u, 0u, 1u), vec3<bool>(false, true, true)))));

var<private> global3: Struct_4;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> Struct_2 {
    let var_0 = ~vec2<i32>(~(-13937i) >> (reverseBits(global3.d.a.x) % 32u), min(1i, global1[_wgslsmith_index_u32(4294967295u ^ global3.d.c.x, 24u)])) & vec2<i32>(_wgslsmith_add_i32(_wgslsmith_sub_i32(global3.d.b.x, global1[_wgslsmith_index_u32(17534u, 24u)]), abs(global1[_wgslsmith_index_u32(select(15531u, u_input.c, global3.d.d.x), 24u)])), _wgslsmith_sub_i32(1i, _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(u_input.d, 24u)], global3.d.b.x)) | global1[_wgslsmith_index_u32(66313u, 24u)]);
    global1 = array<i32, 24>();
    return Struct_2(vec3<u32>(u_input.a.x, u_input.d, _wgslsmith_dot_vec3_u32(global3.d.a, vec3<u32>(~24612u, 1u, 68090u ^ u_input.c))), global3.d.b, abs(global3.d.c), vec3<bool>(true, !all(vec3<bool>(global3.b, true, global3.d.d.x)) && select(false, global3.b | false, true), global3.d.d.x));
}

fn func_3() -> bool {
    return true;
}

fn func_1(arg_0: f32, arg_1: vec2<u32>) -> vec3<f32> {
    let var_0 = func_2();
    global2 = array<Struct_5, 9>();
    global2 = array<Struct_5, 9>();
    var var_1 = Struct_3(select(vec4<bool>(select(arg_1.x == u_input.a.x, true, global3.b), true, select(var_0.d.x, false, global3.a.a.x) && true, !(!global3.b)), vec4<bool>(global3.d.d.x, !func_3(), !func_2().d.x, !select(false, true, global3.a.a.x)), all(func_2().d)));
    var var_2 = -2086f;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-303f + _wgslsmith_f_op_f32(round(-698f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.c - 1340f) * global3.c), 507f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-645f - 1656f), _wgslsmith_div_f32(arg_0, 1576f), global3.c))) * vec3<f32>(-1012f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1563f, -312f)), _wgslsmith_f_op_f32(724f + arg_0)))), global3.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3.a;
    var var_1 = _wgslsmith_f_op_f32(-global3.c);
    var var_2 = 4294967295u;
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 329f, global3.c) * _wgslsmith_f_op_vec3_f32(func_1(global3.c, vec2<u32>(u_input.a.x, 1u))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global3.c * 1384f), -450f, _wgslsmith_div_f32(-2967f, 812f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(880f, global3.c, global3.c) + vec3<f32>(-550f, global3.c, global3.c)) - _wgslsmith_div_vec3_f32(vec3<f32>(146f, global3.c, global3.c), vec3<f32>(global3.c, 1647f, -1000f))))));
    global1 = array<i32, 24>();
    let var_4 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-222f))));
    var_0 = Struct_3(vec4<bool>(u_input.c > ~_wgslsmith_div_u32(91675u, 4294967295u), true, all(select(vec3<bool>(global3.b, global3.d.d.x, false), vec3<bool>(global3.d.d.x, global3.b, false), vec3<bool>(var_0.a.x, global3.d.d.x, true))), true));
    let var_5 = global3.d.d.yy;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(-1326f, _wgslsmith_f_op_f32(max(-1197f, -140f)), _wgslsmith_f_op_f32(-var_3.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_3.x)) + 2371f));
}

