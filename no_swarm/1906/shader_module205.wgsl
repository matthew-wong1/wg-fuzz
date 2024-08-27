struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 14> = array<vec3<bool>, 14>(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false));

var<private> global1: vec4<bool>;

var<private> global2: array<Struct_3, 14>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> i32 {
    global0 = array<vec3<bool>, 14>();
    let var_0 = u_input.b;
    global1 = !(!(!select(!vec4<bool>(true, global1.x, global1.x, global1.x), vec4<bool>(true, false, global1.x, global1.x), !vec4<bool>(global1.x, false, global1.x, true))));
    var var_1 = 0u;
    var var_2 = global2[_wgslsmith_index_u32(4294967295u, 14u)];
    return var_2.a.a;
}

fn func_3(arg_0: bool) -> bool {
    var var_0 = Struct_1(arg_0);
    var_0 = Struct_1(arg_0);
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(886f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(125f)) + -424f) - _wgslsmith_f_op_f32(sign(-549f))))));
    var var_2 = Struct_1(true);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -994f), _wgslsmith_f_op_f32(-var_1)))))));
    return global1.x;
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    let var_0 = func_2();
    global2 = array<Struct_3, 14>();
    var var_1 = all(select(global1.zz, select(vec2<bool>(true | global1.x, false), global1.zx, select(global1.ww, select(vec2<bool>(global1.x, false), global1.zy, global1.x), global1.x)), func_3(true)));
    let var_2 = _wgslsmith_f_op_f32(219f * _wgslsmith_f_op_f32(max(689f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 605f) * -1114f)))));
    let var_3 = Struct_1(global1.x);
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = func_1(vec2<i32>(-11616i, 2147483647i));
    let var_2 = Struct_2(~u_input.a.x);
    var var_3 = global1.x;
    global0 = array<vec3<bool>, 14>();
    let var_4 = firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(~_wgslsmith_add_u32(u_input.b.x, u_input.b.x), ~(~u_input.b.x), 20877u, u_input.b.x), (countOneBits(vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 1u)) & vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)) & vec4<u32>(_wgslsmith_mult_u32(u_input.b.x, u_input.b.x), ~33196u, ~u_input.b.x, 1u)));
    let var_5 = vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b.x, firstLeadingBit(var_4), var_4), ~vec3<u32>(abs(var_4), ~28025u, _wgslsmith_div_u32(var_4, var_4))), var_4, 0u);
    let var_6 = vec3<i32>(var_2.a, -87870i, i32(-1i) * -2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x & u_input.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1000f, -294f, -2035f) + vec4<f32>(1139f, 995f, -2330f, 1682f)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(592f, 558f, 2192f, -1329f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-653f, 479f, -1106f, -2196f))))));
}

