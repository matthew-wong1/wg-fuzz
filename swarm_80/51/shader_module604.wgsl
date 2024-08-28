struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 30>;

var<private> global1: vec4<u32> = vec4<u32>(4294967295u, 62263u, 53063u, 74215u);

var<private> global2: f32;

var<private> global3: array<u32, 32>;

var<private> global4: array<vec2<u32>, 5>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32) -> bool {
    let var_0 = ~(~(global1.x << (_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(global1.x, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(68816u, 30u)], 32u)], 1u), countOneBits(0u), global3[_wgslsmith_index_u32(14628u, 32u)] | 1u) % 32u)));
    global0 = array<u32, 30>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(1946f)), -592f, -1080f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-586f, 252f, -780f)))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-822f, -1089f, -758f)))))), vec3<bool>(any(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false))), ~(-1i) == max(arg_0, 60867i), false))));
    global3 = array<u32, 32>();
    global0 = array<u32, 30>();
    return !any(!vec4<bool>(u_input.d.x < arg_0, true, true, false));
}

fn func_2() -> Struct_1 {
    global4 = array<vec2<u32>, 5>();
    global0 = array<u32, 30>();
    let var_0 = !(!vec2<bool>(func_3(select(u_input.a.x, -2147483647i, true)), all(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)))));
    var var_1 = any(!(!select(vec2<bool>(false, var_0.x), !vec2<bool>(var_0.x, var_0.x), false)));
    global4 = array<vec2<u32>, 5>();
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(984f, -1135f, -1166f) * vec3<f32>(1000f, -320f, -500f)))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(559f)) + -209f), _wgslsmith_f_op_f32(round(-610f)), _wgslsmith_f_op_f32(f32(-1f) * -2478f))));
}

fn func_1(arg_0: u32, arg_1: u32) -> Struct_1 {
    global4 = array<vec2<u32>, 5>();
    let var_0 = true;
    global1 = abs(min(_wgslsmith_mult_vec4_u32(~max(vec4<u32>(76261u, global0[_wgslsmith_index_u32(24729u, 30u)], global1.x, global1.x), vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 32u)], 18786u, global0[_wgslsmith_index_u32(global1.x, 30u)], 7611u)), select(reverseBits(vec4<u32>(30994u, arg_0, u_input.e, u_input.e)), ~vec4<u32>(1u, arg_1, arg_0, global3[_wgslsmith_index_u32(27948u, 32u)]), !vec4<bool>(false, false, true, var_0))), firstTrailingBit(~vec4<u32>(0u, global1.x, global1.x, global1.x))));
    let var_1 = select((_wgslsmith_f_op_f32(f32(-1f) * -395f) != _wgslsmith_f_op_f32(round(-1649f))) && true, var_0, var_0);
    var var_2 = func_2();
    return Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.a.x, 272f)), 1000f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.e, _wgslsmith_div_u32(global1.x, 32040u)), ~(~53984u))), 30u)], ~u_input.b.x);
    global0 = array<u32, 30>();
    let var_1 = (reverseBits(abs(max(global1.wyy, global1.zxy))) ^ vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(36702u, global1.x, 72404u, global3[_wgslsmith_index_u32(0u, 32u)]), vec4<u32>(3101u, global1.x, u_input.b.x, 0u)), ~(~global1.x), ~countOneBits(0u))) & _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(global1.wyw, global1.yxw), _wgslsmith_sub_vec3_u32(global1.yyz, global1.xyx)), vec3<u32>(60615u, _wgslsmith_mult_u32(u_input.e, u_input.e), u_input.b.x << (1u % 32u))), firstLeadingBit(_wgslsmith_div_vec3_u32(~vec3<u32>(global1.x, u_input.b.x, global1.x), global1.xxz)));
    var var_2 = func_1(global1.x, ~34540u);
    let var_3 = Struct_2(~global1.x);
    let var_4 = -u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, var_0.a.x, 698f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1171f, var_0.a.x, var_2.a.x) + vec3<f32>(var_2.a.x, -1160f, var_2.a.x)), vec3<f32>(var_2.a.x, -268f, var_0.a.x))) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_2.a.x, var_2.a.x, -2367f)))), false)));
}

