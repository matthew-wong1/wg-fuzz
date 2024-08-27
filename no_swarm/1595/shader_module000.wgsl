struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> Struct_1 {
    let var_0 = -2417f;
    return Struct_1(abs(~(~global0.a)) >> (vec4<u32>(global0.a.x, ~(~63216u), ~global1.a.x >> (~60370u % 32u), ~firstLeadingBit(global1.a.x)) % vec4<u32>(32u)), !global0.b);
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    let var_0 = arg_1;
    let var_1 = ~(~_wgslsmith_dot_vec3_u32(min(~global1.a.zxx, vec3<u32>(0u, arg_1.a.x, arg_1.a.x)), global1.a.wzz));
    let var_2 = ~(-1i);
    let var_3 = Struct_1(global1.a, vec4<bool>(all(global0.b.yx), !global0.b.x, true, false));
    let var_4 = var_0;
    return -(i32(-1i) * -_wgslsmith_div_i32(var_2, var_2)) | ~(var_2 ^ u_input.a);
}

fn func_1() -> f32 {
    global1 = func_2();
    let var_0 = func_2().b;
    let var_1 = reverseBits(-(~(-2147483647i)) | func_3(vec4<f32>(_wgslsmith_f_op_f32(680f + -1050f), _wgslsmith_f_op_f32(min(-756f, -1462f)), _wgslsmith_div_f32(302f, -1699f), -651f), func_2(), Struct_1(vec4<u32>(global0.a.x, global0.a.x, 1u, global1.a.x), vec4<bool>(var_0.x, global0.b.x, true, true))));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1094f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(316f, 131f))), 1f))) - vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-357f, _wgslsmith_f_op_f32(-275f + 588f)))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -292f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(521f)))), true || !global0.b.x))));
    let var_3 = Struct_1(~vec4<u32>(global0.a.x, global0.a.x, ~_wgslsmith_sub_u32(global1.a.x, global0.a.x), _wgslsmith_div_u32(_wgslsmith_mod_u32(12172u, global1.a.x), global0.a.x)), global0.b);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(-640f, _wgslsmith_f_op_f32(func_1()));
    let var_1 = func_2();
    var var_2 = ~vec3<u32>(reverseBits(~(~60616u)), select(~5252u, global0.a.x, !global0.b.x), _wgslsmith_clamp_u32(global0.a.x, 18060u, 65834u));
    var var_3 = ~(~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(var_2.x, 4294967295u, 4294967295u), global1.a.yzw, vec3<u32>(var_2.x, global0.a.x, global1.a.x))) ^ ~(var_1.a.xwy >> (~vec3<u32>(42564u, var_2.x, var_2.x) % vec3<u32>(32u))));
    var_2 = ~global0.a.wyw;
    let x = u_input.a;
    s_output = StorageBuffer(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-309f)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, _wgslsmith_f_op_f32(var_0 + var_0))) + vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(var_0)), _wgslsmith_f_op_f32(var_0 - 2490f))), var_0)), -22612i);
}

