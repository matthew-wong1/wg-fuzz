struct Struct_1 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: vec3<f32>,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<i32>, arg_1: u32, arg_2: u32, arg_3: vec4<f32>) -> vec3<bool> {
    var var_0 = Struct_2(_wgslsmith_mod_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(4294967295u | arg_2, 54694u), u_input.a.x), ~countOneBits(arg_2)), Struct_1(arg_3.x, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(429f, 271f)) * _wgslsmith_f_op_vec2_f32(-arg_3.yx))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.x - arg_3.x) + -690f))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.x + arg_3.x) - 1f) + -139f), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(1689f)), _wgslsmith_f_op_f32(-arg_3.x)) * arg_3.zz)));
    var_0 = Struct_2(select(1u, arg_2, true), var_0.b, var_0.c, Struct_1(_wgslsmith_f_op_f32(ceil(arg_3.x)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c, arg_3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1155f)))));
    return vec3<bool>(any(!vec4<bool>(true, true, var_0.b.b.x < var_0.c, true)), select(true, true, true), true);
}

fn func_2(arg_0: vec3<bool>, arg_1: f32, arg_2: f32) -> vec4<bool> {
    let var_0 = vec2<bool>(arg_0.x, all(!func_3(countOneBits(vec2<i32>(1i, -48812i)), ~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u), vec4<u32>(15506u, 28392u, 4294967295u, u_input.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1141f, -726f, arg_2, 1840f)))));
    let var_1 = !(!(!select(false, true, true) | !var_0.x));
    let var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1, _wgslsmith_f_op_f32(max(arg_2, arg_1)), _wgslsmith_f_op_f32(ceil(arg_2))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(302f, -1197f, arg_1) * vec3<f32>(712f, arg_2, -331f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(145f, 852f, 388f)), true))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_2, -316f, arg_1))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, 542f, arg_1)))), vec3<bool>(any(arg_0) & arg_0.x, !(true != var_1) && !var_1, _wgslsmith_f_op_f32(-arg_2) <= arg_1), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(trunc(1020f))), _wgslsmith_f_op_f32(max(arg_2, _wgslsmith_f_op_f32(arg_1 - arg_2))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-370f - -143f), -203f))))), Struct_1(_wgslsmith_f_op_f32(ceil(313f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, -241f)) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_2, 434f)))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, 118f) + vec2<f32>(arg_2, arg_1)))))), ~vec2<u32>(~(u_input.a.x | 34761u), 4294967295u));
    var var_3 = Struct_2(~(reverseBits(u_input.a.x) & ~u_input.a.x), Struct_1(181f, vec2<f32>(arg_1, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.d.a))))), 873f, Struct_1(-486f, var_2.d.b));
    var_3 = Struct_2(0u, var_3.b, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(max(var_2.c.x, arg_2))), var_2.d);
    return !vec4<bool>(var_2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)) <= -1466f, true, !(var_3.b.b.x < -106f) & (select(false, true, var_2.b.x) | (var_2.b.x == true)));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_4, arg_2: i32, arg_3: vec4<bool>) -> f32 {
    var var_0 = ~(15308u << (_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.e.x, _wgslsmith_sub_u32(23393u, arg_1.e.x)), vec2<u32>(4294967295u, u_input.a.x) >> (vec2<u32>(4294967295u, 2997u) % vec2<u32>(32u))) % 32u));
    var_0 = arg_1.e.x;
    var var_1 = arg_1.b.x;
    let var_2 = Struct_3(select(select(select(!arg_3, !vec4<bool>(arg_3.x, arg_1.b.x, arg_1.b.x, false), select(vec4<bool>(arg_1.b.x, arg_1.b.x, arg_3.x, arg_1.b.x), arg_3, arg_3)), select(vec4<bool>(false, arg_1.b.x, true, true), vec4<bool>(false, arg_1.b.x, false, true), arg_3), all(vec3<bool>(arg_3.x, false, arg_1.b.x))), func_2(vec3<bool>(any(vec4<bool>(arg_1.b.x, arg_3.x, arg_3.x, false)), any(arg_3.wz), arg_1.d.a < -253f), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-359f, arg_1.d.a), arg_1.c.x)), _wgslsmith_f_op_f32(888f + arg_1.c.x)), arg_3));
    var_1 = var_2.a.x;
    return arg_1.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~4294967295u;
    var_0 = ~reverseBits(u_input.a.x);
    var var_1 = -2147483647i;
    var_1 = -24491i;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1180f, 403f)), _wgslsmith_f_op_f32(-1845f + 762f), true))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(198f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(u_input.c, Struct_4(vec3<f32>(123f, 1570f, -1000f), vec3<bool>(false, true, true), vec3<f32>(1000f, -982f, 127f), Struct_1(417f, vec2<f32>(1000f, 401f)), vec2<u32>(4294967295u, 3209u)), u_input.c.x, vec4<bool>(true, true, true, true)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a) * 942f)), max(firstLeadingBit(u_input.a.x), 41234u), firstTrailingBit(5552u));
}

