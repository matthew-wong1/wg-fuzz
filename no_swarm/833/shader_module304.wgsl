struct Struct_1 {
    a: f32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 1> = array<f32, 1>(252f);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec3<f32>) -> f32 {
    let var_0 = Struct_1(379f, _wgslsmith_f_op_vec3_f32(ceil(arg_0)));
    global0 = array<f32, 1>();
    global0 = array<f32, 1>();
    global0 = array<f32, 1>();
    global0 = array<f32, 1>();
    return 264f;
}

fn func_1(arg_0: Struct_1) -> u32 {
    global0 = array<f32, 1>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(1000f * arg_0.a), vec3<f32>(arg_0.b.x, _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(arg_0.b, arg_0.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1713f, global0[_wgslsmith_index_u32(u_input.a.x, 1u)], 187f)))))), arg_0.b.x));
    var_0 = Struct_1(-316f, _wgslsmith_f_op_vec3_f32(arg_0.b + arg_0.b));
    let var_1 = arg_0;
    var_0 = arg_0;
    return u_input.a.x;
}

fn func_3(arg_0: bool) -> u32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(round(-1296f)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a.x, u_input.a.x), 1u)], -643f), global0[_wgslsmith_index_u32(~43937u, 1u)]), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(u_input.a.x, u_input.a.x) ^ vec2<u32>(4294967295u, 4294967295u)), 1u)]))), -321f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 1u)]))), global0[_wgslsmith_index_u32(~(~u_input.a.x), 1u)]))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1014f, _wgslsmith_div_f32(var_0.x, -151f), 1135f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(19187u, u_input.a.x, u_input.a.x), 1u)] * -742f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-701f, global0[_wgslsmith_index_u32(u_input.a.x, 1u)], -346f, var_0.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 1u)], 665f, 1458f, 979f) + vec4<f32>(-114f, global0[_wgslsmith_index_u32(u_input.a.x, 1u)], 843f, 304f))))));
    var var_2 = ~firstTrailingBit(_wgslsmith_dot_vec2_u32(~select(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(u_input.a.x, 13801u), vec2<bool>(false, true)), ~u_input.a.zy));
    let var_3 = 25121u;
    global0 = array<f32, 1>();
    return _wgslsmith_div_u32(_wgslsmith_div_u32(u_input.a.x, _wgslsmith_mult_u32(4294967295u, abs(u_input.a.x))), 1u) << (63295u % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_clamp_u32(~func_1(Struct_1(796f, vec3<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 1u)], global0[_wgslsmith_index_u32(u_input.a.x, 1u)], 429f))), ~u_input.a.x, u_input.a.x), _wgslsmith_add_u32(~4294967295u | ~u_input.a.x, func_3(true))), 0u);
}

