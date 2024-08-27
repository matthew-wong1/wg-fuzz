struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<f32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<bool>,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(307f, 2147483647i, vec3<f32>(804f, -1000f, -1722f), false);

var<private> global1: Struct_2 = Struct_2(Struct_1(496f, -32614i, vec3<f32>(1045f, 1000f, 544f), false), 1u, vec3<bool>(true, false, false), Struct_1(1427f, 1i, vec3<f32>(2336f, -1000f, 2034f), false), 4294967295u);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<u32>, arg_1: f32) -> u32 {
    global0 = Struct_1(369f, 2147483647i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(703f)), global0.a, _wgslsmith_f_op_f32(f32(-1f) * -511f)))), global1.a.d && (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -801f)) < _wgslsmith_f_op_f32(trunc(-501f))));
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1 + -1725f), -508f))), 23471i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.c)), global1.c.x);
    global0 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1))), ~(~global0.b), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(global1.a.c.x, _wgslsmith_f_op_f32(abs(arg_1))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.a.a - -908f), _wgslsmith_f_op_f32(-415f - 877f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.a)) - arg_1)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(arg_1, 2246f)), _wgslsmith_f_op_f32(-global0.c.x), -1080f) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1130f, arg_1, 1402f), vec3<f32>(1724f, 1000f, global0.c.x))), _wgslsmith_f_op_vec3_f32(-global1.a.c))))), global1.a.d);
    var var_0 = vec4<bool>(any(!vec3<bool>(false, true, !global1.d.d)), global0.d, global1.a.d, global0.d);
    var var_1 = 2147483647i >= global0.b;
    return global1.e >> (~u_input.b.x % 32u);
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-3413f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(global0.c.x, -696f))))) - _wgslsmith_f_op_vec2_f32(max(global1.a.c.xy, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -641f), _wgslsmith_f_op_f32(-global1.d.a))))));
    global1 = Struct_2(global1.a, 0u, select(vec3<bool>(func_3(u_input.b, -225f) > (global1.b << (4294967295u % 32u)), false, any(select(vec4<bool>(false, true, false, global1.d.d), vec4<bool>(global1.a.d, global1.d.d, global0.d, global0.d), false))), vec3<bool>(true, true || any(vec4<bool>(true, global0.d, global0.d, global0.d)), true), false), global1.d, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, 57575u, 18478u), u_input.b.wzy), ~vec3<u32>(8574u, global1.b, u_input.b.x))), ~firstTrailingBit(u_input.b.yw)));
    global1 = Struct_2(global1.a, _wgslsmith_add_u32(u_input.b.x, 4294967295u), !select(select(!global1.c, select(vec3<bool>(global1.c.x, global0.d, false), global1.c, vec3<bool>(true, global1.a.d, true)), select(global1.c, vec3<bool>(true, global1.d.d, false), true)), vec3<bool>(29548u < u_input.b.x, global1.d.d && true, true), vec3<bool>(global0.d, global1.a.d, global1.c.x)), global1.d, _wgslsmith_dot_vec4_u32(u_input.b ^ vec4<u32>(~u_input.b.x, global1.e, 374u, u_input.b.x), _wgslsmith_mult_vec4_u32(~(~u_input.b), select(u_input.b << (u_input.b % vec4<u32>(32u)), vec4<u32>(1u, u_input.b.x, 4294967295u, global1.e), select(vec4<bool>(true, true, false, global1.a.d), vec4<bool>(true, global1.c.x, global1.c.x, global1.a.d), false)))));
    let var_1 = global1.c.x;
    global0 = global1.d;
    return global1.d;
}

fn func_1() -> Struct_1 {
    var var_0 = func_2();
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_0.c.zx * global1.a.c.zz), vec2<f32>(631f, global1.d.c.x), var_0.d)), vec2<f32>(_wgslsmith_f_op_f32(-global1.a.c.x), _wgslsmith_f_op_f32(-global0.a)), select(global1.c.yz, select(global1.c.yz, vec2<bool>(var_0.d, false), false), false == var_0.d))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.c.x, -399f) + var_0.c.zx), _wgslsmith_f_op_vec2_f32(step(global1.d.c.xy, global1.a.c.yz))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a, global0.a))), select(vec2<bool>(true, true), global1.c.zy, !select(global1.c.zx, vec2<bool>(true, false), true)))));
    let var_2 = global0.d;
    var var_3 = max(0i, global1.a.b) << (~(~54731u) % 32u);
    let var_4 = func_2();
    return Struct_1(1429f, 1i, vec3<f32>(_wgslsmith_f_op_f32(global0.c.x + _wgslsmith_f_op_f32(floor(-1451f))), 742f, 812f), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.d;
    var var_1 = !(!global0.d);
    global1 = Struct_2(func_1(), 4294967295u | firstLeadingBit(_wgslsmith_sub_u32(select(41048u, 36727u, true), 19940u)), global1.c, func_2(), global1.b);
    global0 = func_1();
    let var_2 = ~global1.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.c.x, 1f, global0.d & var_0.d))), 1340f, _wgslsmith_f_op_f32(f32(-1f) * -574f)));
}

