struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: bool,
    c: vec2<f32>,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 9> = array<u32, 9>(0u, 4076u, 3414u, 0u, 4294967295u, 31321u, 4294967295u, 4294967295u, 4294967295u);

var<private> global1: vec2<bool>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<i32>) -> bool {
    global1 = !(!select(vec2<bool>(true, true), vec2<bool>(false, global1.x), select(!vec2<bool>(global1.x, false), !vec2<bool>(global1.x, global1.x), vec2<bool>(global1.x, global1.x))));
    var var_0 = Struct_1(481f);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1642f));
    var var_2 = ~(~(~global0[_wgslsmith_index_u32(1u, 9u)]));
    var var_3 = Struct_1(-354f);
    return true;
}

fn func_2(arg_0: Struct_2) -> f32 {
    var var_0 = arg_0.e;
    var_0 = 57367i > arg_0.a.x;
    let var_1 = vec4<bool>(false, !(!func_3(-vec4<i32>(arg_0.a.x, u_input.d, 0i, arg_0.a.x))), false, arg_0.b);
    var var_2 = arg_0.a.yy ^ vec2<i32>(_wgslsmith_sub_i32(-1i, u_input.d), abs(46115i) & u_input.e);
    var var_3 = 20993u;
    return -1277f;
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: Struct_1) -> Struct_2 {
    global0 = array<u32, 9>();
    var var_0 = !all(vec2<bool>(u_input.d == ~u_input.e, false));
    global1 = vec2<bool>(u_input.d == 1i, all(select(!vec4<bool>(global1.x, global1.x, true, false), select(select(vec4<bool>(true, true, true, global1.x), vec4<bool>(false, global1.x, global1.x, false), vec4<bool>(global1.x, true, false, global1.x)), !vec4<bool>(false, global1.x, global1.x, false), u_input.d <= 47589i), !vec4<bool>(true, false, global1.x, global1.x))));
    let var_1 = vec3<u32>(0u, u_input.c, u_input.c);
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(floor(-1000f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + _wgslsmith_f_op_f32(727f * arg_2.a))), arg_2.a, _wgslsmith_f_op_f32(func_2(Struct_2(select(vec4<i32>(-1i, -37784i, u_input.d, -37619i), vec4<i32>(u_input.d, u_input.d, -1i, -1i), vec4<bool>(global1.x, global1.x, true, global1.x)), global1.x, vec2<f32>(arg_1, arg_0), global1.x, select(false, global1.x, global1.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + arg_2.a) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(arg_1)))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1, arg_1, -248f, arg_0))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_0, 430f, 196f)), !global1.x)), vec4<f32>(852f, _wgslsmith_f_op_f32(round(-969f)), arg_0, _wgslsmith_f_op_f32(abs(495f))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, arg_2.a, arg_0, arg_1), vec4<f32>(arg_2.a, -435f, 410f, -1180f))))))));
    return Struct_2(reverseBits(vec4<i32>(~u_input.e, _wgslsmith_div_i32(reverseBits(8684i), i32(-1i) * -2147483647i), _wgslsmith_dot_vec4_i32(-vec4<i32>(-53380i, -22550i, u_input.d, u_input.e), abs(vec4<i32>(u_input.e, -16398i, u_input.e, u_input.e))), select(~u_input.d, 2147483647i, any(vec2<bool>(false, true))))), all(vec4<bool>(false, false, true, _wgslsmith_f_op_f32(func_2(Struct_2(vec4<i32>(-1i, u_input.d, u_input.d, u_input.e), global1.x, vec2<f32>(1682f, -1018f), true, global1.x))) == _wgslsmith_div_f32(arg_0, arg_2.a))), var_2.zw, all(!vec2<bool>(all(vec3<bool>(true, true, false)), true)), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-576f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-712f, -423f))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-637f, -1000f))))), 290f, Struct_1(224f));
    var var_1 = global1.x;
    let var_2 = func_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_0.c.x, Struct_1(_wgslsmith_f_op_f32(func_2(Struct_2(-var_0.a, var_0.d, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-397f, var_0.c.x))), true, !global1.x)))));
    let var_3 = ~(-15542i);
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1653f, var_2.c.x, var_2.c.x, -1026f)))) - vec4<f32>(func_1(_wgslsmith_f_op_f32(select(var_2.c.x, 1268f, false)), -948f, Struct_1(-109f)).c.x, _wgslsmith_f_op_f32(-var_2.c.x), -651f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.c.x - 265f))))) * vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(var_2.c.x)), _wgslsmith_f_op_f32(var_0.c.x - _wgslsmith_f_op_f32(ceil(-1000f))))), _wgslsmith_f_op_f32(var_0.c.x + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f - var_2.c.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1790f)) + 1495f), var_0.c.x), -1481f));
    let var_5 = var_2.d;
    var var_6 = var_4.yx;
    var var_7 = -219f;
    global1 = vec2<bool>(~_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.b, 35744u, global0[_wgslsmith_index_u32(4294967295u, 9u)]), vec4<u32>(0u, global0[_wgslsmith_index_u32(1u, 9u)], u_input.c, global0[_wgslsmith_index_u32(1u, 9u)])), vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 9u)], u_input.c, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 9u)], 9u)], u_input.b) & vec4<u32>(u_input.c, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 9u)], 9u)], 9u)], u_input.c, u_input.c)) == _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, u_input.b), 9u)] >> (~global0[_wgslsmith_index_u32(50907u, 9u)] % 32u), firstTrailingBit(_wgslsmith_mod_u32(u_input.a, global0[_wgslsmith_index_u32(5534u, 9u)]))), global1.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(0u, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~reverseBits(u_input.a), 1u), 9u)]), _wgslsmith_div_vec4_i32(var_0.a, _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_3, var_3, -22511i, -2147483647i), vec4<i32>(-46069i, 26636i, var_2.a.x, var_3)) ^ _wgslsmith_sub_vec4_i32(var_0.a, vec4<i32>(var_0.a.x, u_input.e, 0i, var_3)), vec4<i32>(1i, -36959i, u_input.d, -2147483647i) ^ select(var_0.a, var_0.a, vec4<bool>(true, var_0.d, var_0.b, var_5)))), -_wgslsmith_mod_vec4_i32(max(var_2.a, -var_0.a), var_0.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -552f), var_6.x), var_0.c)) - vec2<f32>(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(ceil(var_2.c.x))), _wgslsmith_f_op_f32(select(var_6.x, _wgslsmith_f_op_f32(floor(var_4.x)), var_2.b)))));
}

