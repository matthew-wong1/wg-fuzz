struct Struct_1 {
    a: bool,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 25>;

var<private> global1: Struct_1 = Struct_1(false, vec2<f32>(507f, 352f));

var<private> global2: vec4<i32>;

var<private> global3: array<vec2<i32>, 13>;

var<private> global4: Struct_1 = Struct_1(false, vec2<f32>(-2116f, 330f));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3() -> vec2<f32> {
    let var_0 = ((min(~u_input.c.x, min(0u, 0u)) ^ countOneBits(u_input.a.x)) << (~u_input.a.x % 32u)) > 25216u;
    global4 = Struct_1(false, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global4.b.x, _wgslsmith_f_op_f32(-global1.b.x), false)) * -1153f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.b.x, global1.b.x))))));
    global2 = abs(-abs(-vec4<i32>(-2147483647i, u_input.d.x, u_input.d.x, 0i) | _wgslsmith_add_vec4_i32(vec4<i32>(-22060i, global2.x, 1i, -13675i), vec4<i32>(1391i, 1i, global2.x, u_input.d.x))));
    let var_1 = countOneBits(min(vec4<i32>(-1i) * -vec4<i32>(6653i, -66448i, -37178i, u_input.d.x), vec4<i32>(0i, _wgslsmith_mod_i32(_wgslsmith_sub_i32(global2.x, u_input.b), -u_input.b), firstLeadingBit(u_input.d.x), _wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.d.x, 57206i), -u_input.b))));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1068f, -1433f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(global1.b.x)), global4.b.x, !global1.a))))), -1761f);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.b));
}

fn func_2(arg_0: i32) -> vec2<f32> {
    let var_0 = -firstTrailingBit(-(~_wgslsmith_div_vec3_i32(vec3<i32>(1i, arg_0, arg_0), global2.yww)));
    let var_1 = _wgslsmith_div_vec2_i32(countOneBits(-(~(-vec2<i32>(u_input.d.x, 4702i)))), global2.xz);
    var var_2 = Struct_1(false, _wgslsmith_f_op_vec2_f32(func_3()));
    var var_3 = vec3<bool>(!(global1.b.x <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global4.b.x)) - _wgslsmith_f_op_f32(sign(global1.b.x)))), all(!select(select(vec2<bool>(var_2.a, false), vec2<bool>(true, false), var_2.a), vec2<bool>(true, true), 1597i != var_1.x)), true);
    var var_4 = Struct_1(var_0.x == 0i, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-666f + _wgslsmith_f_op_f32(step(421f, -512f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.x))))));
    return _wgslsmith_f_op_vec2_f32(-var_2.b);
}

fn func_1() -> i32 {
    global0 = array<vec3<u32>, 25>();
    global4 = Struct_1(true, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global4.b * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(func_2(global2.x)), _wgslsmith_f_op_vec2_f32(global4.b + global1.b)))), _wgslsmith_f_op_vec2_f32(trunc(global1.b))));
    global4 = Struct_1(global1.a && true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(min(-1000f, -393f)), 200f)))));
    global0 = array<vec3<u32>, 25>();
    var var_0 = vec2<bool>(true, true);
    return i32(-1i) * -1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.e.x | (select(_wgslsmith_add_u32(firstTrailingBit(0u), reverseBits(u_input.c.x)), reverseBits(u_input.a.x >> (u_input.c.x % 32u)), global4.a) ^ u_input.c.x);
    var var_1 = vec3<bool>(select(func_1() > ~0i, false, global4.a), min(69335u, 1u) != ~_wgslsmith_mod_u32(~u_input.e.x, ~u_input.e.x), true);
    var var_2 = global1.b.x;
    var var_3 = Struct_1(any(select(select(vec3<bool>(false, true, true), select(vec3<bool>(true, true, global4.a), vec3<bool>(var_1.x, true, global4.a), var_1.x), !global1.a), vec3<bool>(true, global4.a || global1.a, true), select(vec3<bool>(global1.a, false, var_1.x), select(vec3<bool>(global1.a, global4.a, var_1.x), vec3<bool>(global4.a, true, true), vec3<bool>(global1.a, false, global1.a)), var_1.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.b + global4.b))) * global4.b));
    let var_4 = _wgslsmith_mod_i32(global2.x, abs(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(global2.yxw, -global2.ywy), 0i)));
    var_3 = Struct_1(select(true, ~(-var_4) >= -_wgslsmith_dot_vec4_i32(vec4<i32>(global2.x, global2.x, -2147483647i, 1i), vec4<i32>(var_4, 16935i, -47804i, var_4)), true), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1108f), global1.b.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global4.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1330f)))));
    var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.b.x * global4.b.x)) >= 470f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.b.x, _wgslsmith_f_op_f32(-994f + global1.b.x))));
    var_3 = Struct_1(~select(_wgslsmith_sub_u32(9983u, 0u), _wgslsmith_div_u32(u_input.a.x, u_input.c.x), var_3.a) != _wgslsmith_dot_vec4_u32(~u_input.e, select(u_input.e | u_input.e, abs(vec4<u32>(u_input.a.x, 7291u, 1u, 77639u)), select(vec4<bool>(var_1.x, global1.a, true, var_1.x), vec4<bool>(global1.a, global4.a, global4.a, true), true))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_div_i32(-2147483647i, i32(-1i) * -10069i))))));
    let var_5 = Struct_1(any(vec4<bool>(true, true, true, true)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global4.b), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1756f, 829f), -1000f)), 260f)));
    let x = u_input.a;
    s_output = StorageBuffer(-1i);
}

