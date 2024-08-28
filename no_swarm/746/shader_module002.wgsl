struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(vec3<bool>(true, false, false), false, vec4<f32>(-1228f, 2158f, -933f, 483f)), Struct_1(vec3<bool>(false, false, false), true, vec4<f32>(-214f, -1000f, -1778f, 1325f)), Struct_1(vec3<bool>(false, true, false), false, vec4<f32>(1058f, 1597f, 663f, -677f)), Struct_1(vec3<bool>(false, true, false), false, vec4<f32>(1895f, 1273f, -812f, -329f)), Struct_1(vec3<bool>(true, true, true), false, vec4<f32>(-2435f, 122f, 691f, -421f)), Struct_1(vec3<bool>(true, true, false), false, vec4<f32>(707f, -1486f, 995f, 405f)), Struct_1(vec3<bool>(false, false, true), true, vec4<f32>(-248f, 674f, 156f, -1000f)), Struct_1(vec3<bool>(true, true, false), false, vec4<f32>(865f, 1210f, 164f, 499f)), Struct_1(vec3<bool>(false, false, true), true, vec4<f32>(-226f, -673f, 1283f, -498f)), Struct_1(vec3<bool>(true, false, true), false, vec4<f32>(-760f, -992f, -631f, -1021f)));

var<private> global1: array<i32, 18> = array<i32, 18>(-1i, -31631i, -17399i, 17150i, 2147483647i, -1i, i32(-2147483648), -41420i, i32(-2147483648), 1i, 0i, -1i, -50684i, -6613i, 1i, i32(-2147483648), 1i, -1i);

var<private> global2: f32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: Struct_3) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(max(arg_0.a, arg_0.a));
    global0 = array<Struct_1, 10>();
    let var_1 = _wgslsmith_add_u32(~(~(~1u)), arg_0.b) >> (u_input.d % 32u);
    global1 = array<i32, 18>();
    global1 = array<i32, 18>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(609f, _wgslsmith_f_op_f32(arg_0.a * arg_0.a))))));
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> bool {
    global2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.c.c.x, -718f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1.e.c.x)) + _wgslsmith_f_op_f32(sign(arg_1.c.c.x))))))));
    global1 = array<i32, 18>();
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -478f)) * _wgslsmith_f_op_f32(-175f - -1028f))));
    global1 = array<i32, 18>();
    global1 = array<i32, 18>();
    return (-(~_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.d, 2147483647i, arg_1.d, global1[_wgslsmith_index_u32(u_input.c.x, 18u)]), vec4<i32>(12116i, u_input.e, 42642i, 2147483647i))) & _wgslsmith_mult_i32(104536i, arg_1.d)) == (arg_1.d | -2147483647i);
}

fn func_1(arg_0: i32) -> u32 {
    var var_0 = !(!vec3<bool>(true, true, func_3(_wgslsmith_f_op_f32(func_2(Struct_3(-1106f, u_input.d))), Struct_2(15566u, true, Struct_1(vec3<bool>(false, false, false), true, vec4<f32>(1153f, -1354f, -1579f, -516f)), -36663i, global0[_wgslsmith_index_u32(u_input.d, 10u)]))));
    var var_1 = Struct_2(~u_input.d, !(!var_0.x), global0[_wgslsmith_index_u32(~(~firstLeadingBit(u_input.c.x)), 10u)], u_input.a.x, global0[_wgslsmith_index_u32(u_input.b, 10u)]);
    var var_2 = u_input.a.zw;
    let var_3 = select(vec2<bool>(var_0.x, true), var_0.xy, -(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(-13274i, var_1.d, var_2.x, global1[_wgslsmith_index_u32(u_input.c.x, 18u)])) >> (~101124u % 32u)) == arg_0);
    var_0 = var_1.c.a;
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 18>();
    let var_0 = ~(reverseBits(func_1(u_input.e)) >> (abs(u_input.b & u_input.c.x) % 32u)) >> (~(abs(firstTrailingBit(u_input.b)) << (33974u % 32u)) % 32u);
    var var_1 = !select(vec2<bool>(u_input.a.x < u_input.a.x, false | any(vec4<bool>(true, false, true, false))), vec2<bool>(true, true), (_wgslsmith_f_op_f32(func_2(Struct_3(827f, u_input.c.x))) <= -467f) && true);
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1180f - -295f))) - _wgslsmith_f_op_f32(step(630f, -113f))));
    global2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(1051f, -355f))))))))));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-185f - -1000f), _wgslsmith_f_op_f32(-274f * 402f))))), _wgslsmith_f_op_f32(-285f - 2584f))), firstLeadingBit(~u_input.d));
    let var_3 = _wgslsmith_div_f32(var_2.a, var_2.a);
    global2 = _wgslsmith_f_op_f32(floor(var_2.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1000f, var_3), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_3, 1301f) * vec2<f32>(var_3, -359f))))) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(sign(var_3)), _wgslsmith_f_op_f32(f32(-1f) * -2939f))))), u_input.a.yw, _wgslsmith_f_op_f32(f32(-1f) * -124f), select(_wgslsmith_div_u32(_wgslsmith_mod_u32(~1u, u_input.c.x & 0u), 0u), min(func_1(1i), 4294967295u), var_1.x));
}

