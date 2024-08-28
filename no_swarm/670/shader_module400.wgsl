struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec3<f32>,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 5>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: vec2<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_div_f32(-490f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * 147f))), _wgslsmith_f_op_f32(f32(-1f) * -328f)));
    var var_1 = vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.c, max(vec2<i32>(-2147483647i, 323i), firstTrailingBit(vec2<i32>(40615i, u_input.c.x)))) & u_input.c.x, 22373i, min(-35878i, _wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.c.x, 26260i) | u_input.c.x, -u_input.c.x)));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1208f);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-561f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(786f, 1175f))))) + _wgslsmith_f_op_f32(f32(-1f) * -176f)));
    global0 = array<vec2<f32>, 5>();
    return Struct_1(_wgslsmith_div_vec4_u32(~(~min(vec4<u32>(arg_0.x, u_input.b, 0u, arg_0.x), vec4<u32>(u_input.a.x, 0u, arg_0.x, arg_0.x))), vec4<u32>(arg_0.x, 4294967295u, firstLeadingBit(_wgslsmith_clamp_u32(arg_0.x, arg_0.x, arg_0.x)), u_input.a.x)), -2147483647i, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(500f, var_2, var_2)))))))), _wgslsmith_f_op_f32(min(-217f, 874f)));
}

fn func_2(arg_0: Struct_1) -> f32 {
    let var_0 = ~u_input.a.zy;
    let var_1 = var_0.x;
    global0 = array<vec2<f32>, 5>();
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.c) - _wgslsmith_f_op_vec3_f32(step(arg_0.c, vec3<f32>(-945f, _wgslsmith_f_op_f32(abs(arg_0.c.x)), arg_0.d))));
    global0 = array<vec2<f32>, 5>();
    return _wgslsmith_f_op_f32(-973f * var_2.x);
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = true;
    var_1 = arg_2.d <= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.c.x)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(1671f, arg_0.d, false))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-788f, _wgslsmith_f_op_f32(-arg_2.d))))), true));
    var var_2 = vec4<i32>(_wgslsmith_sub_i32(~arg_2.b, min(~(var_0.b | u_input.c.x), _wgslsmith_sub_i32(arg_2.b, -32962i))), u_input.c.x, u_input.c.x, -((_wgslsmith_mult_i32(-14373i, 22645i) << (u_input.a.x % 32u)) >> (~_wgslsmith_sub_u32(arg_0.a.x, 1u) % 32u)));
    let var_3 = Struct_1(abs(vec4<u32>(var_0.a.x, min(4294967295u, var_0.a.x), _wgslsmith_mod_u32(95182u, 4294967295u), firstTrailingBit(50741u)) | _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, arg_2.a.x, u_input.a.x, 1u), _wgslsmith_add_vec4_u32(vec4<u32>(1u, arg_2.a.x, arg_2.a.x, 1u), vec4<u32>(1u, var_0.a.x, arg_2.a.x, var_0.a.x)))), 1i, vec3<f32>(_wgslsmith_f_op_f32(174f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1153f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_2.c.x))), -765f), 873f);
    return func_1(_wgslsmith_add_vec2_u32(vec2<u32>(78510u, ~(~0u)), vec2<u32>(_wgslsmith_mult_u32(arg_0.a.x, 1u & u_input.b), var_0.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_3(func_1(~(~vec2<u32>(1u, u_input.a.x)) ^ ~(~vec2<u32>(u_input.b, 0u))), u_input.c.x, Struct_1(vec4<u32>(u_input.a.x, ~u_input.a.x, 17453u, u_input.b) ^ ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 90253u, 0u, 61626u), vec4<u32>(4294967295u, 125057u, u_input.a.x, 0u)), 4963i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-305f, -977f, -1850f) * vec3<f32>(557f, -1588f, 329f)), vec3<f32>(880f, 706f, -120f), true)) - vec3<f32>(_wgslsmith_f_op_f32(round(-625f)), _wgslsmith_f_op_f32(f32(-1f) * -862f), _wgslsmith_div_f32(-566f, 110f))), 1f), !(378f <= _wgslsmith_f_op_f32(func_2(Struct_1(vec4<u32>(u_input.b, u_input.a.x, 37777u, 0u), u_input.c.x, vec3<f32>(-2432f, 228f, 952f), 2013f)))));
    global0 = array<vec2<f32>, 5>();
    global0 = array<vec2<f32>, 5>();
    var var_1 = Struct_1(~var_0.a, ~(-_wgslsmith_add_i32(var_0.b, -2147483647i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1406f - _wgslsmith_f_op_f32(1000f * var_0.c.x)), var_0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.d))))), _wgslsmith_f_op_f32(abs(var_0.c.x)));
    let var_2 = Struct_1(var_0.a, var_1.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.d, -951f))), _wgslsmith_f_op_f32(f32(-1f) * -951f), -1010f) * vec3<f32>(func_1(~vec2<u32>(var_1.a.x, 48927u)).d, _wgslsmith_f_op_f32(1000f - func_1(vec2<u32>(var_0.a.x, var_0.a.x)).c.x), 360f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-991f - var_0.d), 527f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.x, var_0.a, _wgslsmith_div_vec3_u32(~var_2.a.yyw ^ _wgslsmith_add_vec3_u32(~vec3<u32>(19479u, 5123u, var_2.a.x), ~vec3<u32>(0u, 3962u, 44889u)), ~firstLeadingBit(vec3<u32>(57995u, var_1.a.x, var_1.a.x))));
}

