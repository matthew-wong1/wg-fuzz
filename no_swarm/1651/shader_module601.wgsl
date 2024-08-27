struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: bool,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<vec2<bool>, 17>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<bool> {
    let var_0 = -38897i;
    return !vec3<bool>(!(!any(vec2<bool>(true, true))), false, false);
}

fn func_2() -> f32 {
    let var_0 = func_3();
    let var_1 = !(func_3().x || var_0.x);
    var var_2 = Struct_1(u_input.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1665f)) - -398f), !(u_input.d >= _wgslsmith_sub_i32(u_input.d, -u_input.d)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1100f))), _wgslsmith_f_op_f32(-107f + _wgslsmith_f_op_f32(591f * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1377f, -196f) - _wgslsmith_f_op_f32(select(-627f, 480f, var_1)))) + vec3<f32>(-2362f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(636f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(747f)) + -178f))));
    var var_3 = _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.e, 42613u, 55583u, _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 72319u, 31940u, u_input.a.x), vec4<u32>(global0.x, var_2.a.x, var_2.a.x, var_2.a.x))), select(max(vec4<u32>(var_2.a.x, 37444u, 4294967295u, global0.x), vec4<u32>(76099u, var_2.a.x, 4294967295u, u_input.c.x)), min(vec4<u32>(3354u, global0.x, 0u, 24202u), vec4<u32>(global0.x, 44846u, var_2.a.x, 54196u)), true) & _wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.a.x, global0.x, 1u, global0.x), vec4<u32>(u_input.b, 4294967295u, 55574u, 0u) >> (vec4<u32>(1u, 11531u, 5851u, var_2.a.x) % vec4<u32>(32u)), firstTrailingBit(vec4<u32>(u_input.e, global0.x, 27321u, 16624u)))), vec4<u32>(var_2.a.x, 4294967295u, countOneBits(global0.x), var_2.a.x));
    var_3 = vec4<u32>(_wgslsmith_dot_vec3_u32(~abs(var_2.a & vec3<u32>(4294967295u, var_2.a.x, global0.x)), vec3<u32>(~u_input.c.x, 60847u ^ global0.x, _wgslsmith_mult_u32(65204u, var_3.x)) << (var_2.a % vec3<u32>(32u))), global0.x, 4294967295u, ~(~u_input.e));
    return var_2.b;
}

fn func_1(arg_0: bool, arg_1: f32) -> Struct_1 {
    var var_0 = Struct_1(~(vec3<u32>(111034u, global0.x, ~72596u) ^ vec3<u32>(60935u, 126429u, countOneBits(29486u))), 411f, false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(108f, arg_1, arg_1)) - vec3<f32>(arg_1, arg_1, -344f)) * vec3<f32>(164f, _wgslsmith_f_op_f32(trunc(1281f)), arg_1))));
    var var_1 = !var_0.c;
    var_1 = arg_0;
    var_1 = false;
    var var_2 = Struct_1(vec3<u32>(var_0.a.x, ~u_input.e, 1439u), arg_1, arg_0, var_0.d);
    return Struct_1(vec3<u32>(51149u, var_0.a.x, 1u), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - _wgslsmith_f_op_f32(step(-451f, -820f))), _wgslsmith_f_op_f32(-var_0.b))), all(vec3<bool>(arg_0, var_0.c, true || var_2.c)), var_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = countOneBits(select(vec2<u32>(~4294967295u, _wgslsmith_mult_u32(85151u, u_input.a.x)), ~min(vec2<u32>(50302u, 39683u), u_input.c.xz), false) & vec2<u32>(4294967295u, ~(~u_input.e)));
    let var_0 = func_1(false, -418f);
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -1i, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(exp2(var_0.d.x)))), 643f, 1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.b * 271f), _wgslsmith_f_op_f32(func_2()), false))), ~select(abs(vec4<u32>(1u, u_input.a.x, 4294967295u, var_0.a.x)) ^ _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, global0.x, var_0.a.x, 4294967295u), vec4<u32>(global0.x, 0u, 51309u, 52894u)), _wgslsmith_mod_vec4_u32(vec4<u32>(19731u, 45037u, global0.x, u_input.b), max(vec4<u32>(31148u, 4294967295u, 4294967295u, var_0.a.x), vec4<u32>(1u, global0.x, var_0.a.x, 0u))), var_0.c));
}

