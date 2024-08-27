struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: vec2<i32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 2>;

var<private> global1: vec2<bool>;

var<private> global2: vec2<f32> = vec2<f32>(-1000f, 2875f);

var<private> global3: u32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<u32>, arg_1: u32, arg_2: Struct_1) -> u32 {
    return u_input.c.x ^ ~_wgslsmith_dot_vec2_u32(~select(arg_0.yz, vec2<u32>(0u, 1u), vec2<bool>(global1.x, true)), ~_wgslsmith_sub_vec2_u32(u_input.c.yz, u_input.c.xy));
}

fn func_2(arg_0: vec4<u32>) -> bool {
    var var_0 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(~func_3(vec4<u32>(0u, 4294967295u, 0u, arg_0.x), u_input.c.x, Struct_1(u_input.b, arg_0.x)), min(26356u, _wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, arg_0.x)), arg_0.x), ~vec3<u32>(u_input.c.x, 1u, ~u_input.c.x));
    let var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global2.x, -811f, global2.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2.x), 579f)))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-var_1.xw);
    global3 = 0u;
    let var_3 = !all(select(vec4<bool>(false, true, false, true), select(select(vec4<bool>(true, true, false, global1.x), vec4<bool>(false, global1.x, true, global1.x), true), !vec4<bool>(global1.x, true, global1.x, global1.x), !vec4<bool>(false, global1.x, global1.x, true)), !select(vec4<bool>(global1.x, true, true, global1.x), vec4<bool>(global1.x, false, global1.x, false), global1.x)));
    return true;
}

fn func_1(arg_0: Struct_3, arg_1: i32, arg_2: f32) -> bool {
    var var_0 = global1.x;
    let var_1 = Struct_2(vec2<bool>(!(false | func_2(vec4<u32>(1u, 0u, 1u, arg_0.d.b))), !arg_0.d.a.x), u_input.c.x);
    let var_2 = Struct_1(-16673i, min(83608u, ~_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(15451u, 9177u, arg_0.d.b, arg_0.d.b))) << (~(~min(var_1.b, 1u)) % 32u));
    var var_3 = Struct_2(select(arg_0.d.a, select(!(!var_1.a), select(select(var_1.a, var_1.a, vec2<bool>(var_1.a.x, global1.x)), !vec2<bool>(arg_0.d.a.x, arg_0.d.a.x), global1.x), !(false || var_1.a.x)), _wgslsmith_f_op_f32(global2.x * -971f) < _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global2.x + -244f)))), _wgslsmith_mod_u32(var_1.b, ~firstTrailingBit(~var_2.b)));
    let var_4 = !vec3<bool>(global1.x, true, !(1i > arg_0.c.x));
    return !func_2(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_3.b, u_input.c.x), u_input.c.zyz), _wgslsmith_mult_u32(select(u_input.c.x, 66474u, arg_0.d.a.x), ~1u), 0u, ~_wgslsmith_mod_u32(51584u, 27245u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!vec2<bool>(false, func_1(Struct_3(u_input.c.x, global2.x, vec2<i32>(1i, u_input.b), Struct_2(vec2<bool>(global1.x, global1.x), 74972u)), u_input.a, 853f)), vec2<bool>(true, !(global2.x <= 1031f) || !global1.x), true);
    let var_1 = ~(~u_input.c.zx);
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(ceil(-164f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.x), global2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x * -268f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(global2.x)))) + -532f), _wgslsmith_f_op_f32(global2.x + -834f));
    global3 = 66396u;
    var var_3 = Struct_2(vec2<bool>(false, false), 0u);
    var var_4 = Struct_2(var_3.a, 1u);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global2.x, 1000f)) + global2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.x))), _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(-1448f * var_2.x)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_div_f32(global2.x, -244f), 1302f, _wgslsmith_f_op_f32(global2.x - var_2.x)))), var_2.zwy)), min(firstLeadingBit(min(reverseBits(u_input.c.ywx), vec3<u32>(var_1.x, var_4.b, 4294967295u))), ~u_input.c.yzy));
}

