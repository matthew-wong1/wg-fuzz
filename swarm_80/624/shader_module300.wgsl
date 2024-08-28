struct Struct_1 {
    a: vec2<f32>,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 18>;

var<private> global1: array<vec4<u32>, 6>;

var<private> global2: vec4<u32>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_mult_u32(~abs(global2.x), u_input.b.x);
    var var_1 = vec4<u32>(1u, ~abs(~0u) << (u_input.b.x % 32u), 0u & ~u_input.e.x, (14706u | ~_wgslsmith_dot_vec2_u32(vec2<u32>(6743u, 4294967295u), u_input.e.wx)) ^ firstLeadingBit(min(u_input.e.x, 0u)));
    global2 = vec4<u32>(~var_0, var_1.x, 11682u, 1u);
    var var_2 = ~0i;
    global0 = array<bool, 18>();
    return any(vec2<bool>(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, var_0 | firstTrailingBit(4294967295u), _wgslsmith_mod_u32(~1u, global2.x)), 18u)], !global0[_wgslsmith_index_u32(global2.x, 18u)]));
}

fn func_4(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_1) -> vec4<u32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(arg_2.a))), !arg_2.b);
    return u_input.b;
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: bool) -> f32 {
    global2 = func_4(arg_1.a.x, u_input.e.xzx, Struct_1(arg_1.a, !((arg_1.a.x != 932f) | func_3())));
    var var_0 = ~vec2<i32>(u_input.c.x, firstTrailingBit(abs(-1i)));
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.a.x)));
    global0 = array<bool, 18>();
    var var_2 = global2.yyy;
    return -678f;
}

fn func_1() -> vec2<f32> {
    global1 = array<vec4<u32>, 6>();
    let var_0 = global2.x;
    global1 = array<vec4<u32>, 6>();
    var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, _wgslsmith_f_op_f32(func_2(vec2<bool>(global0[_wgslsmith_index_u32(14710u, 18u)], global0[_wgslsmith_index_u32(u_input.e.x, 18u)]), Struct_1(vec2<f32>(-139f, -1000f), global0[_wgslsmith_index_u32(1u, 18u)]), false))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1694f, 225f) * vec2<f32>(-627f, -1393f)) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1288f, 961f), vec2<f32>(784f, 469f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-113f, -1000f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(145f, 1806f))))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(355f, -609f)) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-995f, -1174f), vec2<f32>(-1426f, -922f)))))), vec2<bool>(true, true))), true));
    var var_2 = var_1.x;
    return _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.x, var_1.x, global0[_wgslsmith_index_u32(1u, 18u)])) - _wgslsmith_f_op_f32(sign(-188f)))), -750f), vec2<f32>(var_1.x, 144f), select(select(vec2<bool>(!global0[_wgslsmith_index_u32(18762u, 18u)], global0[_wgslsmith_index_u32(~global2.x, 18u)]), !select(vec2<bool>(global0[_wgslsmith_index_u32(global2.x, 18u)], global0[_wgslsmith_index_u32(50281u, 18u)]), vec2<bool>(global0[_wgslsmith_index_u32(global2.x, 18u)], global0[_wgslsmith_index_u32(71210u, 18u)]), vec2<bool>(global0[_wgslsmith_index_u32(31490u, 18u)], false)), global0[_wgslsmith_index_u32(~(~78767u), 18u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 18u)], false), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0u;
    let var_1 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1())), vec2<f32>(1f, 1f)), true);
    var_0 = global2.x;
    var var_2 = ~func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) + 222f), global2.xwz, Struct_1(var_1.a, any(select(vec3<bool>(false, global0[_wgslsmith_index_u32(global2.x, 18u)], true), vec3<bool>(var_1.b, global0[_wgslsmith_index_u32(global2.x, 18u)], false), true)))).x;
    let var_3 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-238f, _wgslsmith_f_op_f32(-var_1.a.x)))), _wgslsmith_f_op_f32(var_1.a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-550f))))), true);
    var_2 = _wgslsmith_div_u32(global2.x, ~(~(~_wgslsmith_mult_u32(0u, u_input.e.x))));
    var var_4 = var_1;
    var var_5 = !vec2<bool>(func_3(), !(u_input.c.x > u_input.c.x) | var_3.b);
    let x = u_input.a;
    s_output = StorageBuffer(65068u);
}

