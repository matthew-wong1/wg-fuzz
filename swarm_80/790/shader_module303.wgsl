struct Struct_1 {
    a: vec2<u32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: u32,
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

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec4<i32>) -> bool {
    let var_0 = Struct_1(arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.b))));
    let var_1 = true;
    let var_2 = arg_0;
    var var_3 = arg_0;
    var var_4 = arg_0;
    return true;
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = _wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(~(67097u >> (u_input.d % 32u)), ~arg_0.a.x, firstLeadingBit(countOneBits(u_input.d)), max(1967u, firstLeadingBit(37683u)))), ~vec4<u32>(arg_0.a.x, min(~1u, _wgslsmith_sub_u32(10258u, arg_0.a.x)), u_input.d, _wgslsmith_sub_u32(abs(arg_0.a.x), _wgslsmith_mult_u32(u_input.d, 0u))), _wgslsmith_add_vec4_u32(select(vec4<u32>(_wgslsmith_add_u32(u_input.d, 0u), ~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 0u, u_input.d, 0u), vec4<u32>(u_input.d, u_input.d, 26996u, u_input.d)), ~u_input.d), vec4<u32>(arg_0.a.x, u_input.d, _wgslsmith_mod_u32(u_input.d, 67388u), _wgslsmith_sub_u32(25840u, u_input.d)), true), _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(arg_0.a.x, u_input.d, arg_0.a.x, u_input.d), vec4<u32>(0u, 0u, arg_0.a.x, arg_0.a.x) >> (vec4<u32>(0u, 50727u, u_input.d, arg_0.a.x) % vec4<u32>(32u))), countOneBits(~vec4<u32>(arg_0.a.x, arg_0.a.x, 52448u, 4294967295u)))));
    let var_1 = countOneBits(arg_0.a.x) & 0u;
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(361f, _wgslsmith_f_op_f32(arg_0.b - _wgslsmith_f_op_f32(min(arg_0.b, -2229f))), -364f, 272f));
    var var_3 = select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, any(vec3<bool>(true, true, true))), select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), false), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false), true)), select(vec3<bool>(true, arg_0.a.x > 4294967295u, true), vec3<bool>(true, true, true), !select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, var_2.x >= 267f))), vec3<bool>(true, 43026u > select(~4294967295u, 1u, true), !(true == all(vec4<bool>(true, true, true, false)))), vec3<bool>(all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true))), true, false));
    var_3 = select(!(!(!(!vec3<bool>(true, true, var_3.x)))), !vec3<bool>(any(vec3<bool>(var_3.x, true, true)), true, var_3.x), !select(vec3<bool>(any(var_3.xx), var_3.x, any(vec4<bool>(var_3.x, false, true, var_3.x))), !select(vec3<bool>(var_3.x, false, true), vec3<bool>(var_3.x, var_3.x, var_3.x), vec3<bool>(true, var_3.x, var_3.x)), !var_3.x));
    return u_input.d ^ u_input.d;
}

fn func_1(arg_0: Struct_1) -> vec3<u32> {
    let var_0 = vec4<bool>(false, select(!any(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true))), false, any(vec4<bool>(u_input.b != -1i, true, true, arg_0.b > arg_0.b))), false, any(vec2<bool>(!func_2(arg_0, vec3<u32>(0u, 0u, u_input.d), vec4<i32>(u_input.b, 22367i, 1748i, u_input.b)), !all(vec4<bool>(true, false, true, true)))));
    return max(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, func_3(arg_0), ~_wgslsmith_div_u32(u_input.d, arg_0.a.x)), ~_wgslsmith_mult_vec3_u32(vec3<u32>(304u, u_input.d, 11566u), vec3<u32>(22208u, 10210u, 1u)) & ~vec3<u32>(74465u, u_input.d, u_input.d)), firstTrailingBit(~_wgslsmith_mult_vec3_u32(~vec3<u32>(arg_0.a.x, arg_0.a.x, 1u), _wgslsmith_add_vec3_u32(vec3<u32>(arg_0.a.x, 1u, u_input.d), vec3<u32>(0u, arg_0.a.x, 13474u)))));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = ~u_input.d == _wgslsmith_div_u32(_wgslsmith_add_u32(~71206u ^ firstTrailingBit(u_input.d), ~(~17107u)), _wgslsmith_sub_u32(4294967295u, ~arg_0.x | abs(35262u)));
    let var_1 = 98278u;
    var var_2 = abs(u_input.a);
    var_2 = u_input.b;
    var var_3 = arg_1;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1330f;
    let var_1 = func_4(func_1(Struct_1(~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.d, 31031u), vec2<u32>(u_input.d, u_input.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1397f + -1000f)))), Struct_1(vec2<u32>(abs(~u_input.d), _wgslsmith_mult_u32(u_input.d, u_input.d)), _wgslsmith_f_op_f32(min(-632f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1377f, -631f)), -943f)))));
    var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(var_1.b))));
    let var_2 = var_1;
    var_0 = var_2.b;
    var var_3 = Struct_1(var_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b))));
    var_0 = -1000f;
    let var_4 = func_4(vec3<u32>(~68879u, var_3.a.x >> (func_3(var_1) % 32u), u_input.d), var_2);
    var var_5 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.b, var_4.b, 1031f, -212f), vec4<f32>(var_3.b, var_1.b, -599f, -321f), vec4<bool>(true, false, true, false))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1209f, var_5.b, 1640f, 104f), vec4<f32>(var_3.b, -1000f, 1856f, 378f))))))))), select(~_wgslsmith_mod_u32(1u, 12232u), 1u & _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 66894u), vec3<u32>(var_4.a.x, u_input.d, u_input.d)), true | (u_input.c.x < u_input.c.x)) >> (var_3.a.x % 32u), min(24429u, 50316u));
}

