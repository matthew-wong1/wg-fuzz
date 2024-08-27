struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<f32>;

var<private> global2: vec4<bool>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-1000f))));
    let var_1 = !all(global0.b.ww);
    return Struct_1((vec4<u32>(_wgslsmith_mult_u32(0u, global0.e.x), _wgslsmith_add_u32(global0.d, global0.a.x), countOneBits(global0.a.x), _wgslsmith_dot_vec3_u32(u_input.c, u_input.c)) | vec4<u32>(global0.d, ~global0.a.x, 4294967295u, u_input.d & u_input.d)) << (abs(vec4<u32>(~0u, ~2989u, 1u | u_input.d, _wgslsmith_add_u32(global0.e.x, 1u))) % vec4<u32>(32u)), select(!vec4<bool>(global2.x, true, global2.x == global2.x, true), global0.b, global0.b), ~(-16664i ^ -firstTrailingBit(u_input.a)), global0.d, _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(global0.a, global0.a), u_input.c.x) & vec2<u32>(global0.d, u_input.d | 1u), select(vec2<u32>(~u_input.b, ~u_input.b), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 26165u, u_input.b, 35408u), global0.a), reverseBits(global0.e.x)), vec2<bool>(false, global2.x))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec4<i32>, arg_3: i32) -> vec4<bool> {
    global2 = select(func_2().b, global0.b, !(!vec4<bool>(false, false & global0.b.x, global0.b.x || global0.b.x, global1.x < global1.x)));
    global1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(global1.x, global1.x), _wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(-global1.x)), global1.x, 503f));
    var var_0 = ~(~_wgslsmith_clamp_i32(~0i, select(arg_0.c, -2147483647i, true), ~(-45059i)) << ((_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_0.e.x, 1u), u_input.c.zx ^ global0.e) ^ countOneBits(~arg_1.x)) % 32u));
    var var_1 = ~(~(~_wgslsmith_add_vec3_u32(arg_0.a.wxy, countOneBits(u_input.c))));
    let var_2 = _wgslsmith_div_u32(4294967295u, var_1.x);
    return func_2().b;
}

fn func_1(arg_0: i32, arg_1: vec4<f32>, arg_2: f32) -> Struct_1 {
    var var_0 = vec3<bool>(select(false, any(global0.b), true), _wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(4294967295u, global0.e.x), 1u), 52146u) >= global0.d, global2.x);
    global2 = !(!select(select(!global0.b, global0.b, all(vec2<bool>(false, true))), func_3(func_2(), u_input.c.xx, -vec4<i32>(13419i, arg_0, -12357i, -46186i), min(-2147483647i, global0.c)), global0.b));
    var_0 = !global0.b.zzz;
    let var_1 = !func_2().b.x;
    let var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(global1.xxx + global1.wwx)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_1.x * arg_2), _wgslsmith_f_op_f32(f32(-1f) * -123f), arg_1.x)), vec3<bool>(true, (u_input.a | global0.c) > ~global0.c, 1u != u_input.d)))));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global0.b;
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))) * global1.x) > _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(step(559f, -2067f)))))));
    var var_1 = func_1(u_input.a, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, _wgslsmith_f_op_f32(f32(-1f) * -1716f), global1.x, _wgslsmith_f_op_f32(-global1.x))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, 487f))), -396f)));
    let x = u_input.a;
    s_output = StorageBuffer(16928u, reverseBits(firstTrailingBit(~vec4<u32>(460u, global0.a.x, global0.a.x, 0u))) | (var_1.a ^ _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, global0.e.x, u_input.d, var_1.a.x), global0.a)));
}

