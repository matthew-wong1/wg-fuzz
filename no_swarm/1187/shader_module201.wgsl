struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: u32,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 123675u;

var<private> global1: Struct_4 = Struct_4(Struct_1(856f));

var<private> global2: vec4<u32>;

var<private> global3: array<Struct_2, 32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: u32, arg_3: Struct_4) -> bool {
    let var_0 = ~min(vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_0, 55778u), vec2<u32>(1u, arg_2)), ~_wgslsmith_add_u32(global2.x, arg_2), _wgslsmith_sub_u32(53025u, u_input.c.x ^ 12985u)), u_input.b.yyz);
    var var_1 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(838f, _wgslsmith_f_op_f32(max(arg_3.a.a, arg_3.a.a)))))), 2127f, _wgslsmith_f_op_f32(round(994f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(279f, _wgslsmith_f_op_f32(round(arg_3.a.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1673f), arg_1)))));
    var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_3.a.a, arg_1, -1084f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1196f, -251f, var_1.x) - vec3<f32>(-876f, 857f, arg_3.a.a)), true)), vec3<f32>(arg_1, _wgslsmith_f_op_f32(-arg_3.a.a), 1035f)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_3.a.a)) * arg_3.a.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.a.a), _wgslsmith_f_op_f32(floor(arg_3.a.a)))) - -772f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -535f), _wgslsmith_f_op_f32(-global1.a.a)))));
    global3 = array<Struct_2, 32>();
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-global1.a.a), _wgslsmith_f_op_f32(arg_3.a.a - -1971f), arg_3.a.a))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_1, _wgslsmith_f_op_f32(-arg_1), arg_3.a.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(1565f, var_1.x, 619f) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1000f, arg_1, 1000f))))))) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(1167f, _wgslsmith_f_op_f32(ceil(-338f)), _wgslsmith_f_op_f32(-var_1.x)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(172f, var_1.x, -384f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 797f, 575f)))))));
    return false | !select(select(u_input.c.x > arg_2, true, true), true, true);
}

fn func_2(arg_0: Struct_4, arg_1: bool, arg_2: f32, arg_3: f32) -> vec2<bool> {
    global0 = ~(~2938u);
    global0 = _wgslsmith_dot_vec2_u32(u_input.b.xy, vec2<u32>(global2.x, 16308u << (~(global2.x << (u_input.b.x % 32u)) % 32u)));
    var var_0 = Struct_3(~u_input.b, vec4<bool>(any(select(vec2<bool>(arg_1, arg_1), vec2<bool>(true, true), u_input.a <= 2147483647i)), func_3(_wgslsmith_mult_u32(4294967295u, ~u_input.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-205f)) + -448f), _wgslsmith_mod_u32(firstLeadingBit(4294967295u), _wgslsmith_div_u32(global2.x, global2.x)), arg_0), any(vec3<bool>(false, !arg_1, false)), true && any(vec4<bool>(arg_1, arg_1, false, arg_1))), ~(global2.x << (~42255u % 32u)));
    global3 = array<Struct_2, 32>();
    global1 = Struct_4(arg_0.a);
    return select(select(vec2<bool>(true, true), !(!(!var_0.b.zy)), vec2<bool>(var_0.b.x, false)), var_0.b.xw, any(select(!select(var_0.b.yx, vec2<bool>(false, false), false), vec2<bool>(!var_0.b.x, u_input.a <= -1i), any(select(var_0.b, var_0.b, var_0.b.x)))));
}

fn func_1(arg_0: Struct_2) -> vec2<bool> {
    return !select(select(select(func_2(Struct_4(global1.a), true, -960f, 169f), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), false), vec2<bool>(true, true), true), !select(vec2<bool>(true, false), func_2(Struct_4(Struct_1(global1.a.a)), true, -115f, arg_0.d.a), true), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec2<bool>(true, _wgslsmith_dot_vec4_i32(-vec4<i32>(-2147483647i, u_input.a, -1i, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)) <= _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -2147483647i) ^ vec2<i32>(1i, 13379i), ~vec2<i32>(u_input.a, u_input.a))), func_1(global3[_wgslsmith_index_u32(38959u, 32u)]), !(!func_2(Struct_4(Struct_1(global1.a.a)), false, -368f, global1.a.a)));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.a.a, 1f, _wgslsmith_f_op_f32(trunc(1036f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(711f + -577f))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-176f - global1.a.a), _wgslsmith_f_op_f32(trunc(global1.a.a)), global1.a.a, _wgslsmith_div_f32(-1722f, global1.a.a)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(ceil(global1.a.a)), global1.a.a, _wgslsmith_div_f32(1000f, global1.a.a), -1598f)))));
    global1 = Struct_4(global1.a);
    let var_2 = var_1.x;
    let var_3 = !(-2147483647i > (0i ^ _wgslsmith_div_i32(u_input.a, abs(1i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(303f, global1.a.a) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1809f, 1043f) * vec2<f32>(129f, var_2))))), countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.a) ^ vec2<i32>(u_input.a, u_input.a), ~vec2<i32>(u_input.a, u_input.a))) & (~max(-6044i, -17457i) & u_input.a));
}

