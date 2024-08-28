struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec2<f32> = vec2<f32>(-464f, 627f);

var<private> global2: Struct_1;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec2<f32> {
    let var_0 = -1000f;
    global2 = Struct_1(select(global0.a.a, !global2.a, global0.a.a));
    global1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-1706f, 514f) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(239f, global1.x) * vec2<f32>(350f, global1.x)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-109f, -1784f), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(407f, 116f))), true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, 1586f) - vec2<f32>(var_0, -1000f))))));
    var var_1 = Struct_3(true, ~u_input.a.x);
    var var_2 = global0.a;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(253f, -187f)) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0, 296f))))))) * vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1471f - global1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.x)) - _wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.x)))));
}

fn func_2(arg_0: vec3<bool>, arg_1: f32, arg_2: Struct_2) -> vec2<bool> {
    global1 = _wgslsmith_f_op_vec2_f32(func_3());
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -600f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1121f)), arg_1) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1.x, 305f, 215f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, arg_1, -1008f))))));
    let var_1 = Struct_2(Struct_1(arg_0.yy));
    global1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.xy * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(var_0.yz, vec2<f32>(-502f, 519f))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, arg_1))), vec2<f32>(_wgslsmith_f_op_f32(min(853f, arg_1)), var_0.x), vec2<bool>(true, true))))));
    let var_2 = Struct_1(select(select(select(select(vec2<bool>(true, false), vec2<bool>(true, true), arg_2.a.a), select(global2.a, vec2<bool>(global2.a.x, arg_2.a.a.x), vec2<bool>(true, arg_0.x)), !global2.a), vec2<bool>(true, arg_0.x), any(global0.a.a) & false), select(select(select(vec2<bool>(global0.a.a.x, var_1.a.a.x), global0.a.a, arg_2.a.a.x), !vec2<bool>(var_1.a.a.x, global2.a.x), arg_2.a.a.x), !vec2<bool>(global2.a.x, false), true), vec2<bool>(false, false)));
    return select(arg_0.xz, !vec2<bool>(false, all(vec4<bool>(var_2.a.x, arg_2.a.a.x, true, true))), !(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-575f)))) != arg_1));
}

fn func_1() -> Struct_1 {
    global2 = Struct_1(!global0.a.a);
    global2 = Struct_1(vec2<bool>(any(vec3<bool>(true, any(vec4<bool>(global2.a.x, true, global0.a.a.x, global0.a.a.x)), true)), global1.x > global1.x));
    var var_0 = Struct_1(select(select(global0.a.a, select(vec2<bool>(false, false), vec2<bool>(global2.a.x, false), -1000f <= global1.x), any(select(vec3<bool>(false, true, false), vec3<bool>(false, true, global0.a.a.x), global2.a.x))), select(select(global2.a, global2.a, global0.a.a.x & true), vec2<bool>(true, global0.a.a.x), true), func_2(vec3<bool>(true, global0.a.a.x, true), -1551f, Struct_2(Struct_1(vec2<bool>(true, true))))));
    var var_1 = _wgslsmith_clamp_u32(_wgslsmith_add_u32(15339u, _wgslsmith_sub_u32(~u_input.a.x, ~firstTrailingBit(59851u))), 4294967295u, select(abs(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a.x, u_input.b.x), u_input.a.zzz), _wgslsmith_sub_u32(13035u, u_input.a.x))), u_input.a.x, true));
    var_1 = u_input.b.x;
    return Struct_1(func_2(select(vec3<bool>(false, global2.a.x, false), vec3<bool>(all(vec3<bool>(true, var_0.a.x, global2.a.x)), global2.a.x, true), vec3<bool>(true, !var_0.a.x, var_0.a.x)), _wgslsmith_f_op_f32(floor(-3240f)), Struct_2(Struct_1(vec2<bool>(var_0.a.x, global0.a.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global0.a;
    var var_0 = ~(~u_input.b.x);
    let var_1 = func_1();
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, -853f) + vec2<f32>(global1.x, -425f))))));
    global0 = Struct_2(func_1());
    global0 = Struct_2(Struct_1(!global0.a.a));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(var_2.x * var_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1195f)) * _wgslsmith_f_op_f32(-global1.x))), _wgslsmith_div_f32(-2508f, global1.x)), reverseBits(abs(min(~vec4<u32>(71894u, u_input.a.x, u_input.b.x, u_input.a.x), u_input.a))));
}

