struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: bool,
    d: vec3<u32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1() -> f32 {
    return -602f;
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec2<u32>, arg_3: vec4<u32>) -> bool {
    global0 = any(select(vec2<bool>(false, arg_0.c), select(!select(vec2<bool>(arg_0.c, true), vec2<bool>(true, arg_0.c), true), select(vec2<bool>(true, arg_0.c), !vec2<bool>(arg_0.c, true), vec2<bool>(true, true)), !select(vec2<bool>(arg_0.c, false), vec2<bool>(arg_0.c, arg_0.c), true)), !vec2<bool>(false || arg_0.c, true)));
    global0 = false;
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1()), 167f)), true));
    var var_1 = 17849u;
    global0 = arg_0.c;
    return !(_wgslsmith_add_u32(~(~arg_3.x), ~u_input.a) != u_input.a);
}

fn func_2(arg_0: vec2<i32>, arg_1: u32) -> Struct_1 {
    var var_0 = -1i;
    var var_1 = select(select(!vec4<bool>(all(vec4<bool>(false, false, true, false)), true, true, func_3(Struct_1(vec4<f32>(774f, -590f, 434f, 340f), 1000f, true, vec3<u32>(arg_1, arg_1, arg_1), u_input.a), -36490i, vec2<u32>(18013u, 67290u), vec4<u32>(0u, u_input.a, 4294967295u, 1u))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(45345u, arg_1, 4294967295u, 12318u), vec4<u32>(u_input.a, arg_1, arg_1, u_input.a)) < countOneBits(abs(u_input.a))), select(vec4<bool>(func_3(Struct_1(vec4<f32>(-781f, -388f, -1224f, 456f), -973f, true, vec3<u32>(u_input.a, 1u, 24940u), arg_1), max(-43177i, u_input.b.x), ~vec2<u32>(4294967295u, 7405u), min(vec4<u32>(u_input.a, 25747u, u_input.a, arg_1), vec4<u32>(u_input.a, 18743u, 7559u, u_input.a))), select(any(vec2<bool>(true, false)), all(vec3<bool>(true, false, false)), true), true, false), select(vec4<bool>(true, any(vec2<bool>(true, false)), all(vec3<bool>(true, false, false)), select(true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true))), select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), false), vec4<bool>(true, false, true, false), true)), true), select(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), false), false), vec4<bool>(1190f == _wgslsmith_f_op_f32(step(1000f, 397f)), false, true, false), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), true)));
    var var_2 = ~firstLeadingBit(arg_1);
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1024f - 966f), -573f, _wgslsmith_f_op_f32(-165f * 1938f), _wgslsmith_f_op_f32(min(883f, -1161f)))) - vec4<f32>(1f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1260f + -829f), _wgslsmith_f_op_f32(min(-1000f, 233f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1213f, -223f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1153f - -242f) + _wgslsmith_div_f32(-1257f, -772f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-465f - _wgslsmith_f_op_f32(select(-1539f, _wgslsmith_f_op_f32(trunc(1103f)), var_1.x))) + 417f), true, vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, u_input.a) & vec2<u32>(arg_1, 4294967295u), max(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(52503u, 63730u))) ^ arg_1, 20786u, ~countOneBits(arg_1)), 1u);
    var var_4 = 60739u;
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = false && (_wgslsmith_f_op_f32(func_1()) == _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(799f * -740f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(967f))))));
    var var_0 = func_2(vec2<i32>(1i, u_input.b.x << (u_input.a % 32u)), ~u_input.a ^ (u_input.a >> (u_input.a % 32u)));
    global0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d.x & var_0.d.x, 660f);
}

