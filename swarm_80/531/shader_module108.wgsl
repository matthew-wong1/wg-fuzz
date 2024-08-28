struct Struct_1 {
    a: u32,
    b: bool,
    c: vec3<f32>,
    d: f32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<f32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 9> = array<vec2<i32>, 9>(vec2<i32>(1i, 2147483647i), vec2<i32>(1i, 10771i), vec2<i32>(0i, -38503i), vec2<i32>(2147483647i, 1i), vec2<i32>(-46392i, 7681i), vec2<i32>(2147483647i, -1i), vec2<i32>(15409i, -33122i), vec2<i32>(22891i, -1i), vec2<i32>(-10768i, -31094i));

var<private> global1: Struct_2;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> bool {
    let var_0 = global1.d.a;
    return global1.c.e.x;
}

fn func_2() -> u32 {
    let var_0 = Struct_2(_wgslsmith_mod_vec3_u32(vec3<u32>(global1.b.a, 28802u, global1.c.a), vec3<u32>(u_input.b.x, global1.e.a, u_input.b.x)), global1.b, Struct_1(1u, !func_3(), global1.d.c, global1.d.c.x, vec4<bool>(true, _wgslsmith_f_op_f32(-global1.e.c.x) < global1.c.c.x, true, false)), Struct_1(global1.e.a, !(true != global1.e.e.x) || global1.e.e.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 561f, 230f))), global1.c.d, !(!select(vec4<bool>(true, global1.b.b, false, true), vec4<bool>(global1.e.e.x, true, global1.c.b, global1.d.e.x), false))), Struct_1(_wgslsmith_sub_u32(~max(1u, 46558u), abs(_wgslsmith_mod_u32(u_input.b.x, 0u))), true, vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(229f * global1.d.c.x))), _wgslsmith_f_op_f32(317f - global1.d.d), 1000f), global1.e.d, global1.b.e));
    let var_1 = u_input.a;
    let var_2 = var_0.c.d;
    let var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1286f)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(var_2, -793f)))))))));
    global0 = array<vec2<i32>, 9>();
    return max(~(~(~firstTrailingBit(global1.c.a))), ~firstLeadingBit(firstLeadingBit(~u_input.b.x)));
}

fn func_1(arg_0: u32, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: Struct_3) -> vec4<bool> {
    var var_0 = Struct_3(-arg_3.a, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2177f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_3.c.e.d))), _wgslsmith_f_op_f32(round(-1690f))))), arg_3.c);
    var_0 = arg_3;
    global0 = array<vec2<i32>, 9>();
    let var_1 = _wgslsmith_add_u32(~(~func_2()), 0u);
    global1 = var_0.c;
    return select(select(arg_3.c.d.e, vec4<bool>(arg_2.e.x, func_3(), select(false, false, true), true), all(select(!vec3<bool>(false, true, arg_2.b), !vec3<bool>(global1.e.e.x, global1.c.e.x, true), arg_2.e.x))), !var_0.c.b.e, !select(vec4<bool>(arg_3.c.e.b | arg_3.c.d.b, select(true, false, false), !arg_2.b, true), vec4<bool>(arg_2.e.x, true, true, 4294967295u <= var_0.c.c.a), var_0.c.b.b));
}

fn func_4(arg_0: Struct_1) -> vec4<bool> {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1.d.d)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.d, _wgslsmith_f_op_f32(arg_0.c.x * -1000f))) - -537f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global1.d.d, -1000f)) - _wgslsmith_f_op_f32(-367f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - arg_0.d), -1099f))));
    global0 = array<vec2<i32>, 9>();
    var var_1 = arg_0.c;
    global0 = array<vec2<i32>, 9>();
    var var_2 = -(countOneBits(-max(vec4<i32>(u_input.a, -46954i, 46657i, u_input.a), vec4<i32>(2147483647i, -1i, -1i, u_input.a))) & (firstLeadingBit(-vec4<i32>(u_input.a, 1i, u_input.a, u_input.a)) | ~(~vec4<i32>(u_input.a, 2147483647i, 55935i, 26959i))));
    return global1.e.e;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_u32(~(~u_input.b.x), 0u) << (33614u % 32u);
    var var_1 = global1.c.a;
    let var_2 = Struct_1(_wgslsmith_sub_u32(~_wgslsmith_mod_u32(firstTrailingBit(u_input.b.x), 78868u), 1u), false, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global1.e.c.x + -1867f), global1.c.c.x, -584f)) * global1.d.c), -857f, func_4(Struct_1(min(firstLeadingBit(32441u), global1.a.x), global1.d.e.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-972f, -222f, 625f) * global1.d.c) * global1.d.c), global1.e.c.x, select(select(global1.b.e, global1.d.e, vec4<bool>(false, global1.b.b, global1.b.e.x, true)), !global1.e.e, func_1(global1.b.a, vec4<f32>(global1.b.d, global1.b.d, global1.c.d, 1196f), Struct_1(15540u, global1.c.b, global1.c.c, -234f, vec4<bool>(global1.c.b, false, false, global1.d.e.x)), Struct_3(u_input.a, global1.c.c, Struct_2(vec3<u32>(u_input.b.x, u_input.b.x, 47132u), Struct_1(23358u, true, global1.c.c, 1576f, vec4<bool>(false, global1.d.e.x, true, global1.b.e.x)), Struct_1(global1.b.a, false, vec3<f32>(983f, global1.d.d, global1.c.d), 484f, vec4<bool>(global1.c.e.x, global1.b.e.x, true, global1.c.e.x)), Struct_1(31377u, global1.c.b, vec3<f32>(global1.c.c.x, global1.d.c.x, global1.d.c.x), 402f, vec4<bool>(global1.c.e.x, global1.b.b, true, global1.c.e.x)), Struct_1(u_input.b.x, global1.c.b, vec3<f32>(global1.b.c.x, global1.b.c.x, -1095f), 278f, vec4<bool>(global1.c.b, true, false, global1.d.e.x)))))))));
    let var_3 = true;
    var var_4 = Struct_2(global1.a, global1.b, Struct_1(select(0u, _wgslsmith_add_u32(u_input.b.x, u_input.b.x) | min(u_input.b.x, global1.d.a), global1.c.b), true | global1.d.e.x, global1.b.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-119f))), select(global1.e.e, !(!vec4<bool>(false, global1.c.b, true, true)), global1.b.e)), Struct_1(max(30322u | global1.d.a, var_2.a) >> (_wgslsmith_div_u32(0u, u_input.b.x) % 32u), !var_2.e.x, _wgslsmith_f_op_vec3_f32(-var_2.c), global1.b.c.x, global1.c.e), var_2);
    var var_5 = Struct_1(34916u, select(true, true, all(vec2<bool>(func_4(Struct_1(var_4.c.a, false, vec3<f32>(1698f, -1719f, var_4.d.d), 230f, vec4<bool>(var_3, var_2.b, false, var_2.e.x))).x, true))), var_2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_4.c.c.x - -561f)))))), func_4(var_2));
    var var_6 = vec2<i32>(u_input.a, u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.d.d);
}

