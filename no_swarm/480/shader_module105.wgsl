struct Struct_1 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: u32,
    d: vec2<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-1000f, arg_0.b.x, any(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true))))))), vec2<f32>(-1963f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1031f, arg_3.b.x) * arg_0.b.x) - -1633f)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.b * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(arg_3.b)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_3.b)))));
    var_0 = Struct_1(1587f, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x * _wgslsmith_f_op_f32(arg_0.a * 446f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    let var_2 = firstLeadingBit(_wgslsmith_div_u32(~_wgslsmith_mod_u32(_wgslsmith_mult_u32(0u, 54880u), ~27441u), 1u));
    var var_3 = arg_2;
    return -1000f;
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = vec2<f32>(434f, _wgslsmith_div_f32(arg_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1074f * _wgslsmith_f_op_f32(exp2(arg_0.a))))));
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.a + -976f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1013f), arg_0.b.x)))), _wgslsmith_f_op_f32(round(353f))));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1088f, var_0.x), 614f, any(vec4<bool>(all(vec2<bool>(true, false)), select(true, true, false), true, true)))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a - var_0.x) * _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(-var_0.x)))), 1582f);
    let var_3 = Struct_2(true, ~reverseBits(u_input.b.x) == _wgslsmith_dot_vec4_i32(vec4<i32>(-55869i, 3053i, u_input.b.x, u_input.a.x) ^ (vec4<i32>(u_input.b.x, u_input.b.x, -1i, u_input.a.x) & vec4<i32>(u_input.a.x, u_input.a.x, -24554i, u_input.a.x)), vec4<i32>(u_input.a.x, u_input.a.x, _wgslsmith_mult_i32(11636i, u_input.a.x), u_input.a.x)), u_input.b);
    var_1 = _wgslsmith_f_op_f32(570f - var_0.x);
    return _wgslsmith_f_op_f32(exp2(arg_0.a));
}

fn func_1() -> bool {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(min(-1058f, 614f)), 1752f, _wgslsmith_f_op_f32(-558f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(286f, 400f), _wgslsmith_f_op_f32(func_2(Struct_1(-207f, vec2<f32>(-1944f, 587f)), vec2<i32>(u_input.a.x, u_input.a.x), Struct_1(231f, vec2<f32>(833f, -1000f)), Struct_1(348f, vec2<f32>(-1345f, -483f))))))), -640f);
    var var_1 = vec3<u32>(0u, firstTrailingBit(~max(~91503u, 0u)), 5436u);
    var_0 = vec4<f32>(var_0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.x * 253f), _wgslsmith_div_f32(var_0.x, 119f), true)), _wgslsmith_f_op_f32(-340f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -668f), var_0.x))), _wgslsmith_f_op_f32(func_3(Struct_1(var_0.x, var_0.yy))));
    var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, -332f, -1226f) - vec4<f32>(var_0.x, var_0.x, 238f, var_0.x))))), vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(-979f, vec2<f32>(var_0.x, var_0.x)), vec2<i32>(u_input.b.x, 2147483647i), Struct_1(1372f, vec2<f32>(var_0.x, var_0.x)), Struct_1(647f, vec2<f32>(var_0.x, 629f))))), var_0.x, var_0.x), false != (_wgslsmith_div_i32(-2147483647i, 1i) >= _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.b.x, u_input.a.x, -1i), u_input.b))))));
    let var_2 = Struct_2(false, all(!(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false)))), vec4<i32>(i32(-1i) * -u_input.b.x, u_input.a.x, u_input.a.x, -32506i));
    return false != var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(vec3<bool>(all(vec4<bool>(false, true, false, false)), func_1(), false), vec3<bool>(true, true, true), any(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), false)));
    let var_1 = _wgslsmith_add_u32(~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(72536u, 47205u), vec2<u32>(4294967295u, 10610u)), ~vec2<u32>(2256u, 4294967295u)) >> (34938u % 32u), 1u);
    let var_2 = Struct_2(any(var_0.yz) & (!(!var_0.x) == all(var_0)), var_0.x, vec4<i32>(2147483647i, 0i, 24521i, _wgslsmith_clamp_i32(-1i, min(-u_input.b.x, min(u_input.b.x, -2866i)), u_input.a.x)));
    let var_3 = select(vec2<bool>(!var_2.a, false), vec2<bool>(any(!select(vec3<bool>(false, var_0.x, false), var_0, vec3<bool>(false, var_2.a, var_2.a))), var_2.b), true);
    var var_4 = Struct_2(false, any(vec4<bool>(var_2.b, true, true, var_0.x)), var_2.c);
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_div_vec4_u32(abs(vec4<u32>(var_1, var_1, var_1, 4294967295u)), firstTrailingBit(vec4<u32>(63790u, 17985u, var_1, 4294967295u))), ~(vec4<u32>(var_1, 16296u, var_1, var_1) | vec4<u32>(44370u, 0u, 2566u, var_1))) << (vec4<u32>(4294967295u & firstTrailingBit(var_1), ~1u, 4294967295u, 4294967295u ^ firstTrailingBit(var_1)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-461f - 338f))) + 1f), _wgslsmith_add_u32(0u, _wgslsmith_mod_u32(0u, 31890u)), var_2.c.yx | -vec2<i32>(~u_input.a.x, var_4.c.x >> (var_1 % 32u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(-212f, 1006f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -321f))), _wgslsmith_f_op_f32(sign(-1097f)), _wgslsmith_f_op_f32(min(-108f, _wgslsmith_f_op_f32(sign(-1114f))))) + vec4<f32>(_wgslsmith_f_op_f32(trunc(-1867f)), _wgslsmith_f_op_f32(ceil(720f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(980f - 735f))), _wgslsmith_f_op_f32(func_2(Struct_1(-1000f, vec2<f32>(-1248f, -245f)), -u_input.b.zy, Struct_1(-762f, vec2<f32>(1000f, 1360f)), Struct_1(1091f, vec2<f32>(558f, -2465f)))))));
}

