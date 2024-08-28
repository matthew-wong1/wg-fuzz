struct Struct_1 {
    a: u32,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: bool,
    d: Struct_2,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: i32 = 12722i;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
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

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_1(arg_0: bool, arg_1: vec3<bool>) -> f32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-432f, global0.a)) + global0.a))), 451f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(833f, _wgslsmith_f_op_f32(511f * global0.a))))));
    return global0.a;
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: bool) -> bool {
    let var_0 = _wgslsmith_mult_vec2_i32(-vec2<i32>(abs(33053i), -11000i) & vec2<i32>(global0.b.c, i32(-1i) * -1i), vec2<i32>(-1i, _wgslsmith_mod_i32(0i, _wgslsmith_dot_vec4_i32(~u_input.d, max(vec4<i32>(arg_1.c, 1i, global0.b.c, 31537i), vec4<i32>(arg_1.c, arg_1.c, -32237i, arg_1.c))))));
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.a - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.a))) + 947f))));
    global0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-782f * _wgslsmith_f_op_f32(select(global0.a, -1175f, all(vec2<bool>(false, false)))))), Struct_1(~0u, abs(_wgslsmith_dot_vec3_u32(abs(u_input.c.wwx), firstTrailingBit(u_input.c.wwy))), abs(var_0.x)));
    var var_2 = max(u_input.d.xyw, _wgslsmith_mod_vec3_i32(vec3<i32>(1i, 32467i, var_0.x), vec3<i32>(~(-6603i), ~(-2147483647i), global0.b.c ^ -22101i))) | u_input.d.zwx;
    let var_3 = !(!vec2<bool>(select(true, !arg_2, select(arg_2, arg_2, arg_2)), any(vec3<bool>(true, arg_2, arg_2))));
    return !all(select(!vec3<bool>(arg_2, false, arg_2), vec3<bool>(!arg_2, true, global0.a >= -1588f), arg_2));
}

fn func_4(arg_0: Struct_3) -> f32 {
    let var_0 = arg_0.d.b;
    let var_1 = _wgslsmith_clamp_i32(-_wgslsmith_sub_i32(abs(~u_input.b.x), firstLeadingBit(~(-32357i))), -(~(~var_0.c)), -_wgslsmith_mult_i32(u_input.b.x, 2147483647i));
    let var_2 = _wgslsmith_dot_vec4_i32(u_input.d, -(~u_input.d));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(trunc(global0.a)), Struct_1(u_input.c.x, _wgslsmith_mult_u32(0u, 4294967295u), global0.b.c));
    var var_4 = vec2<bool>(select(true, all(vec2<bool>(true, true)), func_3(abs(~18892u), var_0, arg_0.c)), arg_0.c);
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a))));
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_2(1f, Struct_1(_wgslsmith_dot_vec2_u32(select(u_input.c.wx, u_input.c.zw, vec2<bool>(true, true)), vec2<u32>(0u, ~global0.b.a)), 1u, -52340i));
    global1 = ~var_0.b.c;
    var_0 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a - 141f), global0.a)))), global0.b);
    var var_1 = ~(~(~global0.b.c));
    let var_2 = Struct_3(-213f, _wgslsmith_f_op_f32(func_4(Struct_3(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2272f)), !func_3(4294967295u, Struct_1(4294967295u, u_input.e, u_input.d.x), true), Struct_2(_wgslsmith_f_op_f32(-global0.a), Struct_1(u_input.c.x, 0u, var_0.b.c)), vec2<i32>(_wgslsmith_mod_i32(u_input.b.x, 57744i), ~global0.b.c)))), (1u <= global0.b.a) || true, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-802f + global0.a)), Struct_1(u_input.a, _wgslsmith_clamp_u32(var_0.b.a, u_input.c.x, var_0.b.b) & _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b.b, u_input.e), vec2<u32>(global0.b.a, 3778u)), global0.b.c)), _wgslsmith_div_vec2_i32(u_input.b, u_input.b));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(global0.a * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(global0.a, -855f)), _wgslsmith_f_op_f32(global0.a + 1063f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.a, global0.a)) + _wgslsmith_f_op_f32(min(-754f, global0.a)))), global0.a));
    let var_1 = ~_wgslsmith_sub_u32(global0.b.a, ~_wgslsmith_sub_u32(global0.b.a, 34388u));
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-720f, global0.a))), true)), _wgslsmith_f_op_f32(func_1(any(vec4<bool>(true, true, true, true)), vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0)))));
    let var_3 = func_2();
    var var_4 = select(!(!(!(!vec2<bool>(false, var_3.c)))), vec2<bool>(!var_3.c, ~_wgslsmith_dot_vec3_u32(vec3<u32>(global0.b.a, var_3.d.b.a, 28919u), u_input.c.wwx) >= _wgslsmith_mult_u32(_wgslsmith_mod_u32(28488u, global0.b.b), 4294967295u)), false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(-1208f)), _wgslsmith_dot_vec2_i32(vec2<i32>(~var_3.d.b.c, select(0i, -2147483647i, var_4.x)), vec2<i32>(_wgslsmith_sub_i32(u_input.b.x, 21933i), reverseBits(30699i))) ^ u_input.b.x, _wgslsmith_mod_u32(firstLeadingBit(_wgslsmith_dot_vec3_u32(~u_input.c.zxz, vec3<u32>(4294967295u, 47125u, 0u))), abs(_wgslsmith_mod_u32(~1u, 1u))));
}

