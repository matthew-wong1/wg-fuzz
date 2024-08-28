struct Struct_1 {
    a: f32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 27> = array<bool, 27>(false, false, true, false, false, false, false, true, true, false, true, true, true, true, true, false, true, false, false, false, false, true, true, true, true, true, true);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> vec2<bool> {
    global0 = array<bool, 27>();
    var var_0 = arg_1;
    let var_1 = arg_1;
    var_0 = arg_1;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(653f - _wgslsmith_f_op_f32(-1031f - -652f))))), var_0.b);
    return vec2<bool>(!(!any(vec2<bool>(true, false)) & select(false, false, global0[_wgslsmith_index_u32(~4294967295u, 27u)])), !select(!global0[_wgslsmith_index_u32(u_input.a.x, 27u)], true, true) && global0[_wgslsmith_index_u32(~31824u, 27u)]);
}

fn func_1() -> vec4<bool> {
    global0 = array<bool, 27>();
    global0 = array<bool, 27>();
    global0 = array<bool, 27>();
    let var_0 = !(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(139i, 1i), vec2<i32>(5519i, 0i))) == _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(9643i, -1i, 2147483647i, 0i), vec4<i32>(43484i, 0i, -2147483647i, -71225i)), countOneBits(0i))) & true;
    global0 = array<bool, 27>();
    return vec4<bool>(var_0, false, _wgslsmith_mod_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, -2147483647i), vec3<i32>(2147483647i, 25027i, -2147483647i)), 1i) > 2424i, !any(func_2(~u_input.a.x, Struct_1(889f, vec2<f32>(319f, -1000f)))));
}

fn func_3(arg_0: i32) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1119f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1841f, 1179f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-138f, 1519f) + vec2<f32>(411f, -505f)), select(vec2<bool>(false, true), func_2(u_input.b.x, Struct_1(-360f, vec2<f32>(-982f, 1774f))), true))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(218f * 1242f)), 1500f)));
    let var_1 = _wgslsmith_f_op_f32(-1000f + var_0.b.x);
    global0 = array<bool, 27>();
    global0 = array<bool, 27>();
    global0 = array<bool, 27>();
    return var_0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 27>();
    global0 = array<bool, 27>();
    let var_0 = func_1();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-1012f - _wgslsmith_f_op_f32(func_3(1i))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-858f, -312f)));
    var var_2 = select(all(vec3<bool>(true, !(!var_0.x), true)), any(!vec2<bool>(select(true, global0[_wgslsmith_index_u32(1u, 27u)], var_0.x), all(vec3<bool>(var_0.x, true, false)))), any(!select(vec4<bool>(var_0.x, false, global0[_wgslsmith_index_u32(u_input.a.x, 27u)], var_0.x), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 27u)], global0[_wgslsmith_index_u32(u_input.a.x, 27u)], true, global0[_wgslsmith_index_u32(4294967295u, 27u)]), vec4<bool>(global0[_wgslsmith_index_u32(5765u, 27u)], true, var_0.x, false))) | var_0.x);
    var_1 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(var_1.b.x)), var_1.a, false))), var_1.b.x)), var_1.b);
    var_1 = Struct_1(-653f, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1.b.x, _wgslsmith_f_op_f32(max(var_1.a, var_1.b.x))))))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(firstLeadingBit(u_input.a.x), min(_wgslsmith_add_u32(16913u, u_input.b.x), firstTrailingBit(u_input.a.x))), vec4<u32>(_wgslsmith_mod_u32(u_input.b.x, 66780u), max(82433u, _wgslsmith_dot_vec2_u32(u_input.a.xy, u_input.a.yy)), 4294967295u, u_input.b.x), u_input.a.x, -2147483647i);
}

