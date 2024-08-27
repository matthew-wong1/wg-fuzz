struct Struct_1 {
    a: f32,
    b: f32,
    c: u32,
    d: f32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: f32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-1000f, 1143f, 0u, 1000f, vec4<bool>(true, true, false, true));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2) -> u32 {
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)), 1935f, global0.c, _wgslsmith_div_f32(-1071f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global0.b)), _wgslsmith_f_op_f32(-181f + global0.d)) + _wgslsmith_div_f32(-1134f, _wgslsmith_f_op_f32(abs(global0.d))))), !(!vec4<bool>(true | global0.e.x, global0.e.x, global0.e.x, true)));
    global0 = Struct_1(global0.d, _wgslsmith_f_op_f32(exp2(global0.a)), ~43981u | global0.c, _wgslsmith_f_op_f32(min(163f, -217f)), vec4<bool>(true, any(vec2<bool>(all(vec3<bool>(global0.e.x, false, true)), global0.e.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.d * global0.d))) != global0.b, global0.d > 401f));
    var var_0 = _wgslsmith_add_u32(~global0.c, reverseBits(51036u));
    var var_1 = vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(44u, 1u, 95498u), vec3<u32>(1u | global0.c, ~u_input.d.x, reverseBits(0u)) | _wgslsmith_mod_vec3_u32(vec3<u32>(48618u, u_input.c, u_input.a), countOneBits(vec3<u32>(u_input.c, 1u, 1u)))), 4294967295u, 0u);
    let var_2 = arg_0;
    return _wgslsmith_mod_u32(var_1.x, 48810u);
}

fn func_2() -> vec2<u32> {
    let var_0 = Struct_2(_wgslsmith_dot_vec2_i32(u_input.b.xx, u_input.b.yy));
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), 1784f, ~(~global0.c), global0.a, vec4<bool>(true, global0.e.x, true, true));
    global0 = Struct_1(_wgslsmith_f_op_f32(-609f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-623f, -836f) * _wgslsmith_f_op_f32(f32(-1f) * -105f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.d, global0.b)))), -795f)), ~(~22905u), global0.d, !vec4<bool>(global0.e.x, false, global0.e.x, global0.e.x));
    let var_1 = Struct_2(-2147483647i);
    global0 = Struct_1(_wgslsmith_div_f32(global0.a, global0.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(161f)) * -474f), func_3(Struct_2(1i)), 137f, !global0.e);
    return vec2<u32>(u_input.d.x, firstTrailingBit(0u));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<i32>, arg_2: bool) -> bool {
    let var_0 = _wgslsmith_mod_vec2_u32(func_2(), vec2<u32>(35703u, ~(~min(57002u, u_input.a))));
    var var_1 = u_input.c;
    let var_2 = ~(~vec4<u32>(~4294967295u, _wgslsmith_dot_vec3_u32(arg_0, arg_0), arg_0.x, global0.c)) ^ vec4<u32>(~arg_0.x, _wgslsmith_div_u32(firstTrailingBit(~var_0.x), countOneBits(~global0.c)), 40714u, func_2().x | _wgslsmith_mod_u32(5466u, _wgslsmith_dot_vec2_u32(u_input.d, vec2<u32>(4294967295u, 9592u))));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.d, -1000f))), vec2<f32>(-2156f, _wgslsmith_f_op_f32(-global0.d)))) - vec2<f32>(1987f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2186f), global0.b, !arg_2)))));
    global0 = Struct_1(var_3.x, _wgslsmith_f_op_f32(-633f * 1540f), u_input.e.x, var_3.x, select(global0.e, global0.e, !global0.e));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.e.x;
    global0 = Struct_1(-1137f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2352f + _wgslsmith_f_op_f32(-global0.b)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d - global0.a)))), _wgslsmith_mult_u32(_wgslsmith_mod_u32(~37400u, ~(~global0.c)), reverseBits(global0.c)), 851f, vec4<bool>(true & global0.e.x, global0.e.x, func_1(~vec3<u32>(global0.c, 4294967295u, global0.c), vec2<i32>(0i, -29748i), global0.e.x) && !any(global0.e.yx), true));
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-337f - -899f))))));
    global0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -720f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1791f)))), firstLeadingBit(0u), _wgslsmith_f_op_f32(abs(global0.d)), !vec4<bool>(true, all(global0.e), global0.e.x, true));
    var var_2 = Struct_2(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(~u_input.b.x, u_input.b.x, 1i), -25196i, u_input.b.x), _wgslsmith_clamp_i32(16373i, i32(-1i) * -41782i, _wgslsmith_mult_i32(i32(-1i) * -1i, countOneBits(u_input.b.x)))));
    var_2 = Struct_2(reverseBits(_wgslsmith_div_i32(abs(0i), _wgslsmith_sub_i32(var_2.a, -16797i) | 14584i)));
    global0 = Struct_1(-662f, _wgslsmith_f_op_f32(1053f - _wgslsmith_f_op_f32(round(-381f))), func_2().x, _wgslsmith_f_op_f32(exp2(global0.d)), global0.e);
    let var_3 = vec2<bool>(any(global0.e.xwz), 369f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(global0.b, 436f)))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1, var_1))));
    global0 = Struct_1(var_1, global0.a, u_input.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(round(var_1))) - -169f) * 1423f), vec4<bool>(-1000f <= _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_1, 1112f))), var_3.x, any(global0.e.yz), !global0.e.x));
    let x = u_input.a;
    s_output = StorageBuffer(-abs(abs(~vec4<i32>(18884i, 1i, var_2.a, 1i))), vec3<i32>(select(_wgslsmith_div_i32(var_2.a, 0i) << (~global0.c % 32u), ~u_input.b.x << (global0.c % 32u), any(!global0.e.yww)), u_input.b.x, 2147483647i), _wgslsmith_f_op_f32(ceil(var_1)), firstLeadingBit(global0.c), var_2.a);
}

