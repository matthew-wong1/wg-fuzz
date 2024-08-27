struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 19>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: bool, arg_2: Struct_1) -> f32 {
    let var_0 = -1i;
    let var_1 = arg_2;
    global0 = array<i32, 19>();
    global0 = array<i32, 19>();
    var var_2 = select(select(select(vec4<bool>(all(vec3<bool>(arg_1, arg_1, true)), all(vec3<bool>(arg_1, arg_1, arg_1)), false, any(vec3<bool>(arg_1, arg_1, arg_1))), select(!vec4<bool>(arg_1, arg_1, true, arg_1), vec4<bool>(arg_1, arg_1, arg_1, true), any(vec3<bool>(false, true, arg_1))), all(select(vec3<bool>(false, true, arg_1), vec3<bool>(arg_1, arg_1, false), arg_1))), !(!vec4<bool>(arg_1, arg_1, arg_1, arg_1)), -410f >= var_1.a), !(!select(vec4<bool>(false, false, true, false), select(vec4<bool>(false, true, true, arg_1), vec4<bool>(arg_1, true, arg_1, true), vec4<bool>(arg_1, arg_1, arg_1, arg_1)), !vec4<bool>(arg_1, false, true, arg_1))), !select(select(!vec4<bool>(false, arg_1, arg_1, arg_1), select(vec4<bool>(arg_1, false, arg_1, true), vec4<bool>(false, arg_1, false, true), arg_1), vec4<bool>(arg_1, arg_1, arg_1, true)), select(!vec4<bool>(arg_1, false, true, true), vec4<bool>(true, arg_1, arg_1, false), select(vec4<bool>(arg_1, true, arg_1, arg_1), vec4<bool>(false, true, false, false), vec4<bool>(arg_1, arg_1, true, arg_1))), false));
    return -722f;
}

fn func_2() -> Struct_1 {
    var var_0 = firstTrailingBit(~(~1u)) < u_input.a;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1460f, 570f, -1284f, 369f) * vec4<f32>(1f, 1f, 1f, 1f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -729f, 1206f, 1081f)) * vec4<f32>(_wgslsmith_f_op_f32(-1741f - -718f), _wgslsmith_f_op_f32(-1075f * 469f), 1415f, _wgslsmith_f_op_f32(func_3(vec3<f32>(1499f, -250f, 370f), false, Struct_1(-635f)))))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(401f, -653f, 334f, 1220f) + vec4<f32>(222f, 328f, 1583f, 633f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-226f, -712f, 602f, -1000f))) + vec4<f32>(217f, _wgslsmith_f_op_f32(floor(282f)), _wgslsmith_f_op_f32(500f + -1483f), _wgslsmith_f_op_f32(round(-937f)))))));
    let var_2 = !select(select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(u_input.d == 19654u, true)), select(vec2<bool>(any(vec4<bool>(true, true, true, false)), true), vec2<bool>(true, true), any(vec4<bool>(false, true, true, true))), !(true & all(vec3<bool>(false, false, false))));
    let var_3 = !(!(!vec4<bool>(any(vec3<bool>(true, var_2.x, var_2.x)), false, var_2.x || true, true)));
    var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, var_1.x) + var_1.x) * 1000f), _wgslsmith_f_op_f32(-923f + _wgslsmith_f_op_f32(step(-527f, _wgslsmith_f_op_f32(var_1.x * -1042f))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1025f, 495f, 1024f, 607f))), vec4<f32>(_wgslsmith_f_op_f32(2370f - var_1.x), 353f, _wgslsmith_f_op_f32(floor(var_1.x)), var_1.x)), vec4<f32>(var_1.x, var_1.x, _wgslsmith_f_op_f32(exp2(var_1.x)), _wgslsmith_f_op_f32(sign(863f))))));
    return Struct_1(var_1.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>) -> Struct_1 {
    global0 = array<i32, 19>();
    global0 = array<i32, 19>();
    global0 = array<i32, 19>();
    let var_0 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1653f, 566f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-2312f, arg_0.a)) - -1264f), arg_0.a), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_div_f32(-1288f, arg_0.a), arg_0.a), 2509f)))));
    global0 = array<i32, 19>();
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(742f - -567f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-124f, 1278f, true)))))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>) -> Struct_1 {
    global0 = array<i32, 19>();
    global0 = array<i32, 19>();
    var var_0 = select(false, true, any(vec4<bool>(min(u_input.d, 24429u) >= u_input.c, all(vec4<bool>(true, true, true, false)), !all(vec4<bool>(true, false, false, false)), true)));
    var var_1 = vec4<u32>(select(abs(~52044u), u_input.c, any(vec2<bool>(true, false)) & true) >> (abs(abs(abs(u_input.c))) % 32u), u_input.a, 29084u, select(abs(28043u), u_input.d, true));
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) + _wgslsmith_f_op_f32(-arg_1.a))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1082f, arg_1.a), vec2<f32>(279f, arg_1.a))) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_1.a, arg_0.a))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, arg_0.a))))));
    return arg_0;
}

fn func_6(arg_0: bool, arg_1: Struct_1) -> bool {
    var var_0 = firstTrailingBit(~(select(vec3<u32>(0u, 19845u, 65790u) & vec3<u32>(u_input.c, u_input.c, 0u), ~vec3<u32>(51981u, 69354u, 46337u), !vec3<bool>(true, arg_0, false)) | ~vec3<u32>(u_input.d, 64178u, 0u)));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(ceil(1168f)));
    let var_2 = -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e, global0[_wgslsmith_index_u32(~(~var_0.x), 19u)], _wgslsmith_dot_vec2_i32(u_input.b.xz, firstTrailingBit(u_input.b.yz))), u_input.b ^ firstLeadingBit(firstTrailingBit(vec3<i32>(-2550i, global0[_wgslsmith_index_u32(var_0.x, 19u)], u_input.b.x))));
    var_0 = vec3<u32>(_wgslsmith_mod_u32(~var_0.x << (countOneBits(1u) % 32u), max(var_0.x, var_0.x >> (6992u % 32u))) & ~_wgslsmith_dot_vec2_u32(var_0.yy, countOneBits(var_0.zz)), min(var_0.x << (0u % 32u), var_0.x), reverseBits(min(~(~40722u), _wgslsmith_clamp_u32(1u, 4294967295u, 3115u) << (_wgslsmith_clamp_u32(0u, var_0.x, u_input.d) % 32u))));
    let var_3 = ~17772i;
    return true;
}

fn func_1() -> vec4<bool> {
    global0 = array<i32, 19>();
    global0 = array<i32, 19>();
    let var_0 = !func_6(true, func_5(func_4(func_2(), vec3<i32>(global0[_wgslsmith_index_u32(u_input.c, 19u)], 2147483647i, global0[_wgslsmith_index_u32(1u, 19u)])), Struct_1(func_2().a), ~firstLeadingBit(vec3<i32>(4711i, u_input.e, -2147483647i))));
    global0 = array<i32, 19>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1f, 1f, 1f), vec3<f32>(1426f, 118f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec3<f32>(2082f, 926f, -1214f), var_0, Struct_1(1033f))) + 345f))));
    return vec4<bool>((_wgslsmith_f_op_f32(ceil(var_1.x)) == _wgslsmith_f_op_f32(f32(-1f) * -291f)) == !var_0, any(!(!vec2<bool>(false, var_0))), var_0, all(vec3<bool>(!(!var_0), all(vec3<bool>(false, false, var_0)), false)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true))), !(!vec4<bool>(u_input.c < u_input.d, true, any(vec2<bool>(true, true)), true)), !func_1());
    global0 = array<i32, 19>();
    var var_1 = func_2();
    var_1 = Struct_1(_wgslsmith_div_f32(var_1.a, 251f));
    let var_2 = !all(!vec3<bool>(var_0.x, -872f < var_1.a, var_0.x));
    var var_3 = Struct_1(-140f);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-29646i, _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(~u_input.c | select(u_input.a, u_input.a, false), 19u)], reverseBits(-1i) >> (u_input.a % 32u))), u_input.d);
}

