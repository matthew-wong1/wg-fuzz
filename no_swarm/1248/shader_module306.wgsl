struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 19>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: bool) -> u32 {
    var var_0 = u_input.d;
    global0 = array<vec3<i32>, 19>();
    var_0 = u_input.d;
    let var_1 = !arg_2;
    let var_2 = ~(~(~firstTrailingBit(~vec4<u32>(arg_1, 1u, arg_1, u_input.d))));
    return var_2.x;
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1) -> u32 {
    global0 = array<vec3<i32>, 19>();
    let var_0 = arg_1.b.x;
    global0 = array<vec3<i32>, 19>();
    var var_1 = 1u;
    let var_2 = select(~4294967295u, ~_wgslsmith_clamp_u32(~arg_1.b.x, arg_1.b.x, ~var_0), !all(arg_0) && true) | 0u;
    return max(_wgslsmith_div_u32(abs(var_0) >> (~u_input.d % 32u), 34172u), ~1u);
}

fn func_1(arg_0: vec4<i32>) -> Struct_2 {
    var var_0 = firstTrailingBit(func_2(firstTrailingBit(u_input.e.x & (-1i << (u_input.d % 32u))), 4294967295u, true != all(vec4<bool>(true, true, true, true))));
    var var_1 = Struct_2(abs(u_input.d), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1511f - 1014f), _wgslsmith_f_op_f32(f32(-1f) * -1225f), _wgslsmith_f_op_f32(-1339f + _wgslsmith_div_f32(-141f, 736f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1733f)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-392f)), -607f, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-2178f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(2337f, 1480f))) * 647f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(351f, -289f), _wgslsmith_f_op_f32(min(-299f, 1000f)))), _wgslsmith_f_op_f32(-266f + -838f))));
    var_1 = Struct_2((~func_3(vec2<bool>(false, false), Struct_1(vec2<f32>(var_1.b.x, var_1.b.x), vec2<u32>(var_1.a, u_input.d))) & (9236u & max(u_input.d, u_input.d))) & ~firstTrailingBit(abs(u_input.d)), _wgslsmith_f_op_vec4_f32(var_1.b + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(281f, 381f, var_1.c.x, var_1.b.x)), vec4<f32>(365f, -775f, var_1.b.x, var_1.b.x)))))), vec4<f32>(-619f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(var_1.b.x + var_1.c.x)) + _wgslsmith_f_op_f32(f32(-1f) * -1300f)), 271f, _wgslsmith_f_op_f32(437f * var_1.b.x)));
    let var_2 = Struct_1(vec2<f32>(var_1.b.x, var_1.c.x), firstLeadingBit(abs(min(vec2<u32>(u_input.d, var_1.a) ^ vec2<u32>(36958u, u_input.d), ~vec2<u32>(33375u, 0u)))));
    var var_3 = !vec4<bool>(all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), any(vec2<bool>(true, true)))), (_wgslsmith_f_op_f32(f32(-1f) * -479f) != _wgslsmith_f_op_f32(-var_2.a.x)) && any(vec2<bool>(true, true)), false, true);
    return Struct_2(~firstLeadingBit(u_input.d), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(ceil(var_2.a.x)), _wgslsmith_f_op_f32(min(var_2.a.x, var_1.c.x)), _wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_f_op_f32(max(-1720f, var_2.a.x))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-675f, 1226f, 430f, -933f) - vec4<f32>(796f, var_1.c.x, var_1.b.x, var_1.b.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~((vec4<u32>(abs(u_input.d), 1u, u_input.d, ~2652u) & vec4<u32>(0u, _wgslsmith_mult_u32(4294967295u, u_input.d), ~4294967295u, ~u_input.d)) ^ firstTrailingBit(vec4<u32>(_wgslsmith_mult_u32(u_input.d, u_input.d), ~0u, 23562u, _wgslsmith_mult_u32(u_input.d, 107166u))));
    var var_1 = func_1(u_input.e);
    let var_2 = _wgslsmith_f_op_f32(1189f * _wgslsmith_f_op_f32(trunc(var_1.c.x)));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-277f, _wgslsmith_f_op_f32(-667f - var_2), var_1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(999f - 559f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.c)));
    global0 = array<vec3<i32>, 19>();
    var var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(ceil(var_1.c.zw)), _wgslsmith_mod_vec2_u32(vec2<u32>(~1u, 4518u) >> (~var_0.yy % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(countOneBits(vec2<u32>(var_0.x, u_input.d)), vec2<u32>(var_1.a, 49628u) ^ vec2<u32>(var_0.x, 4294967295u)) << (var_0.yy % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(10972i, -u_input.e.xx, select(~(~vec2<u32>(1u, 67065u)), vec2<u32>(~u_input.d, ~u_input.d), vec2<bool>(true, true)) & vec2<u32>(u_input.d, _wgslsmith_mod_u32(4294967295u, _wgslsmith_dot_vec3_u32(var_0.zxy, vec3<u32>(73360u, u_input.d, 89730u)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.x, _wgslsmith_f_op_f32(f32(-1f) * -945f), _wgslsmith_f_op_f32(f32(-1f) * -652f), _wgslsmith_f_op_f32(-650f - var_1.c.x)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_3) + _wgslsmith_f_op_vec4_f32(-var_1.c))) * var_1.b), ~u_input.a);
}

