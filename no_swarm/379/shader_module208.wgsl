struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_2() -> f32 {
    return -349f;
}

fn func_3(arg_0: vec3<f32>) -> bool {
    let var_0 = arg_0.x;
    var var_1 = Struct_1(select(select(vec3<bool>(any(vec3<bool>(true, true, true)), true, any(vec2<bool>(false, true))), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)));
    let var_2 = Struct_2(Struct_1(!vec3<bool>(var_1.a.x, true, true)), Struct_1(select(!vec3<bool>(var_1.a.x, var_1.a.x, var_1.a.x), select(!var_1.a, !vec3<bool>(true, var_1.a.x, var_1.a.x), !var_1.a), var_1.a)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, -521f, 1814f, -1664f) * vec4<f32>(arg_0.x, var_0, -1580f, 255f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, arg_0.x, 934f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, -976f, arg_0.x, var_0)))))));
    let var_3 = var_2;
    var_1 = var_2.b;
    return all(vec2<bool>(false, true));
}

fn func_1() -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()));
    var var_1 = Struct_2(Struct_1(vec3<bool>(true, !func_3(vec3<f32>(-1000f, 1725f, var_0)), func_3(vec3<f32>(var_0, 1343f, var_0)))), Struct_1(select(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false), vec3<bool>(false, true, false), true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-456f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, var_0, false)) * _wgslsmith_f_op_f32(trunc(-121f))), _wgslsmith_f_op_f32(var_0 * -706f), _wgslsmith_f_op_f32(var_0 - -794f))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-var_1.c.xx);
    let var_3 = any(!select(vec4<bool>(var_1.b.a.x, var_1.a.a.x, true, true), select(vec4<bool>(var_1.b.a.x, var_1.a.a.x, true, var_1.b.a.x), vec4<bool>(var_1.a.a.x, var_1.a.a.x, var_1.a.a.x, var_1.b.a.x), var_1.b.a.x), !vec4<bool>(false, false, true, var_1.a.a.x))) || !(var_0 < 1f);
    let var_4 = _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(select(vec3<u32>(19885u, 48892u, u_input.c.x) | vec3<u32>(u_input.c.x, 4294967295u, u_input.d), vec3<u32>(18172u, 0u, u_input.d) ^ vec3<u32>(u_input.d, 0u, 4294967295u), var_1.b.a), vec3<u32>(28262u, 64807u, u_input.d)), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 1u), vec2<u32>(1u, 1u)), abs(u_input.c.x), u_input.c.x) | _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(35042u, 1u, 4294967295u), vec3<u32>(0u, u_input.d, u_input.d)), select(vec3<u32>(4294967295u, u_input.c.x, 1u), vec3<u32>(25208u, u_input.d, u_input.d), vec3<bool>(true, true, var_3)))), reverseBits(reverseBits(vec3<u32>(_wgslsmith_mult_u32(u_input.c.x, 18264u), ~63681u, 4294967295u))), _wgslsmith_div_vec3_u32(~(~vec3<u32>(4294967295u, 0u, u_input.d)), vec3<u32>(17280u, ~87876u >> ((0u | u_input.c.x) % 32u), 66781u)));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = !all(vec2<bool>(any(!vec3<bool>(true, var_0, var_0)), true));
    var_1 = var_0 | func_1();
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -134f))))));
    var var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1119f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1067f + 847f))))));
    var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1557f, 611f)), _wgslsmith_div_f32(-570f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-581f, -1491f))));
    let var_4 = ~(~_wgslsmith_mod_vec3_u32(~(~vec3<u32>(u_input.c.x, u_input.c.x, 0u)), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(70751u, 42558u, u_input.c.x, u_input.c.x), vec4<u32>(u_input.c.x, u_input.d, 0u, 0u)), 1u, 0u)));
    var var_5 = Struct_1(vec3<bool>(var_0, ~_wgslsmith_mult_u32(var_4.x, 1u) < ~var_4.x, select(var_0, var_0, any(vec4<bool>(false, var_0, true, var_0)))));
    let var_6 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(153f - _wgslsmith_f_op_f32(-877f + 1114f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(976f + _wgslsmith_f_op_f32(func_2()))));
    let x = u_input.a;
    s_output = StorageBuffer(var_6, var_6);
}

