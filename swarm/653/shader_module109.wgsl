struct Struct_1 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
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

var<private> global0: array<vec3<u32>, 14>;

var<private> global1: bool = false;

var<private> global2: array<vec4<f32>, 29>;

var<private> global3: array<f32, 19> = array<f32, 19>(-980f, -721f, 1000f, -2169f, -1378f, 406f, 1086f, -1005f, -876f, -670f, -119f, 619f, -477f, 1648f, 943f, -130f, -444f, -994f, -719f);

var<private> global4: array<f32, 24>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: Struct_2, arg_3: Struct_2) -> bool {
    global4 = array<f32, 24>();
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1020f, 1110f))))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(279f, 806f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_3.a.a, global4[_wgslsmith_index_u32(0u, 24u)]), vec2<f32>(1084f, global4[_wgslsmith_index_u32(31211u, 24u)]), vec2<bool>(false, false))))))));
    global0 = array<vec3<u32>, 14>();
    global4 = array<f32, 24>();
    global3 = array<f32, 19>();
    return false;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<u32>, arg_2: vec3<i32>, arg_3: Struct_2) -> vec3<bool> {
    global2 = array<vec4<f32>, 29>();
    return select(vec3<bool>(all(vec3<bool>(false, false, true)) || true, ((arg_3.c != 10755i) & true) && false, any(!select(vec2<bool>(false, false), vec2<bool>(true, false), false))), !vec3<bool>(all(vec2<bool>(false, true)), true, !func_2(arg_2.x, 0i, arg_3, Struct_2(Struct_1(global4[_wgslsmith_index_u32(arg_1.x, 24u)], arg_3.a.b), arg_0.x, 657i))), true);
}

fn func_3(arg_0: vec4<u32>, arg_1: i32) -> vec3<u32> {
    global1 = ((arg_1 > ~(u_input.c ^ u_input.b)) || func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-212f, 1518f)) + vec2<f32>(global4[_wgslsmith_index_u32(arg_0.x, 24u)], global3[_wgslsmith_index_u32(arg_0.x, 19u)])), _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(24696u, u_input.a, arg_0.x, 21538u), vec4<u32>(arg_0.x, arg_0.x, 4294967295u, 0u)), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 0u, u_input.a, 4294967295u), vec4<u32>(1137u, u_input.a, 1u, 1u))), max(~vec3<i32>(u_input.b, arg_1, -1859i), ~vec3<i32>(arg_1, arg_1, 1i)), Struct_2(Struct_1(global4[_wgslsmith_index_u32(arg_0.x, 24u)], global0[_wgslsmith_index_u32(u_input.a, 14u)]), -387f, _wgslsmith_add_i32(0i, -2147483647i))).x) | false;
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(arg_0.x, 24u)]), vec3<u32>(_wgslsmith_mod_u32(~18931u, _wgslsmith_add_u32(u_input.a, arg_0.x)), 48918u, 4294967295u | u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(u_input.a, 24u)] - 1020f) * global3[_wgslsmith_index_u32(~u_input.a, 19u)]), _wgslsmith_f_op_f32(-567f * _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(arg_0.x, 19u)] + -1000f)))), -arg_1);
    let var_1 = var_0.a;
    let var_2 = -192f;
    var var_3 = !vec2<bool>(_wgslsmith_f_op_f32(-1000f * global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(37966u, 9862u), 24u)]) >= var_0.b, arg_0.x < (var_0.a.b.x | var_0.a.b.x));
    return _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.x, _wgslsmith_dot_vec3_u32(var_0.a.b, arg_0.xzz), min(u_input.a, var_1.b.x)), vec3<u32>(u_input.a, var_1.b.x, 4294967295u), var_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true && !any(func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-3483f, global4[_wgslsmith_index_u32(u_input.a, 24u)]) - vec2<f32>(global3[_wgslsmith_index_u32(u_input.a, 19u)], global3[_wgslsmith_index_u32(26928u, 19u)])), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec3<i32>(0i, u_input.c, u_input.b), Struct_2(Struct_1(global4[_wgslsmith_index_u32(u_input.a, 24u)], vec3<u32>(0u, u_input.a, 0u)), 130f, 0i)));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(~u_input.a, 19u)]), select(func_3(vec4<u32>(u_input.a, u_input.a, u_input.a, 88349u), 73918i) & ~vec3<u32>(0u, 1u, u_input.a), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a) >> (vec3<u32>(u_input.a, 66711u, 31410u) % vec3<u32>(32u)), vec3<u32>(1u, u_input.a, 25153u) | vec3<u32>(u_input.a, 0u, 1u)), !(!vec3<bool>(var_0, var_0, var_0)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-527f)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), ((firstTrailingBit(-1i) & ~(-1i)) & u_input.b) | u_input.b);
    global0 = array<vec3<u32>, 14>();
    global2 = array<vec4<f32>, 29>();
    var var_2 = vec2<u32>(_wgslsmith_mult_u32(~u_input.a, ~min(49792u, var_1.a.b.x) | ~9652u), ~func_3(~reverseBits(vec4<u32>(u_input.a, 22212u, u_input.a, 27118u)), _wgslsmith_add_i32(37175i, -2147483647i)).x);
    var var_3 = vec2<u32>(var_1.a.b.x, var_1.a.b.x);
    var var_4 = var_1;
    global1 = all(vec4<bool>(true, true, true, !func_1(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global3[_wgslsmith_index_u32(var_1.a.b.x, 19u)], global3[_wgslsmith_index_u32(27790u, 19u)]), vec2<f32>(global4[_wgslsmith_index_u32(1u, 24u)], global3[_wgslsmith_index_u32(1u, 19u)]))), ~vec4<u32>(var_4.a.b.x, var_3.x, u_input.a, 1u), vec3<i32>(var_1.c, -14872i, 13960i), var_1).x));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u);
}

