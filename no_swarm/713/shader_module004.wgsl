struct Struct_1 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -255f;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<u32>) -> u32 {
    global0 = -973f;
    global0 = _wgslsmith_f_op_f32(-1f);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1f), -960f))));
    let var_0 = !vec2<bool>(all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false), vec3<bool>(true, true, false))), false);
    let var_1 = abs(~firstLeadingBit(_wgslsmith_mult_u32(min(10198u, arg_1.x), ~42094u)));
    return max(var_1, 0u);
}

fn func_2(arg_0: vec2<u32>, arg_1: f32) -> Struct_1 {
    var var_0 = Struct_1(vec4<u32>(arg_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(870u, 1u), vec2<u32>(arg_0.x, 8581u)), ~0u, 1u & (u_input.b & 1u)) & max(~(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, arg_0.x)), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.b, 2821u, arg_0.x, u_input.b), countOneBits(vec4<u32>(u_input.a.x, arg_0.x, 1u, u_input.b)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, 951f, _wgslsmith_f_op_f32(arg_1 - 237f)))), _wgslsmith_div_vec3_u32(vec3<u32>(arg_0.x, u_input.a.x, u_input.a.x), ~(~max(vec3<u32>(arg_0.x, u_input.b, 4294967295u), vec3<u32>(4294967295u, u_input.a.x, 0u)))));
    let var_1 = Struct_2(!(!vec2<bool>(true, any(vec4<bool>(true, true, true, true)))), vec3<f32>(809f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(var_0.b.x)))))), _wgslsmith_f_op_f32(select(var_0.b.x, 2469f, true))), Struct_1(var_0.a, var_0.b, var_0.c));
    var var_2 = var_1;
    global0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1.b.x - -1000f), 1691f, all(select(vec3<bool>(var_1.a.x, !var_2.a.x, false), !(!vec3<bool>(true, var_1.a.x, var_1.a.x)), true))));
    var_2 = var_1;
    return Struct_1(var_0.a, var_0.b, vec3<u32>(_wgslsmith_add_u32(func_3(~vec4<i32>(u_input.c.x, u_input.c.x, 18462i, 32833i), var_0.a), var_0.a.x), func_3(vec4<i32>(29302i, _wgslsmith_div_i32(2147483647i, u_input.c.x), u_input.c.x, firstLeadingBit(u_input.c.x)), _wgslsmith_mult_vec4_u32(abs(vec4<u32>(var_1.c.a.x, var_1.c.c.x, 45649u, var_1.c.a.x)), vec4<u32>(49546u, arg_0.x, 27254u, var_0.a.x))), 4294967295u));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: i32) -> vec4<u32> {
    global0 = _wgslsmith_f_op_f32(-arg_1.b.x);
    let var_0 = false;
    let var_1 = func_2(u_input.a, arg_1.b.x);
    var var_2 = func_2(countOneBits(_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(1u, u_input.a.x), 1u), vec2<u32>(0u, reverseBits(39908u)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.b.x))));
    var var_3 = arg_1;
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~(~abs(~vec4<u32>(37989u, u_input.b, u_input.b, 76364u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(462f, 411f, 1117f) + vec3<f32>(-1000f, -1000f, -799f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1035f, -1217f, 1000f)), true)))), ~(~(vec3<u32>(34812u, u_input.b, u_input.b) >> (vec3<u32>(u_input.b, u_input.b, 0u) % vec3<u32>(32u)))) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(810u, _wgslsmith_sub_u32(49881u, u_input.a.x), _wgslsmith_mult_u32(u_input.a.x, u_input.a.x)), vec3<u32>(1u, ~34281u, reverseBits(13600u))) % vec3<u32>(32u)));
    global0 = 725f;
    let x = u_input.a;
    s_output = StorageBuffer(func_1(false, var_0, 1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) - var_0.b.x))));
}

