struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -767f;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec3<i32>) -> u32 {
    var var_0 = vec4<i32>(~select(select(-22596i, -2147483647i, any(vec4<bool>(false, false, true, arg_1.a.x))), _wgslsmith_sub_i32(-arg_2.x, u_input.d), !(0u < u_input.b)), -arg_2.x, 20044i, 32279i);
    let var_1 = _wgslsmith_sub_i32(arg_2.x, var_0.x);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1193f)));
    var var_3 = abs(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, ~(~arg_0.x)), arg_0.xy));
    return 1u;
}

fn func_2() -> f32 {
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -1492f);
    global0 = -1247f;
    var var_0 = Struct_1(!(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false)));
    var var_1 = ~_wgslsmith_add_u32(_wgslsmith_add_u32(~_wgslsmith_div_u32(u_input.b, u_input.a), _wgslsmith_sub_u32(u_input.b, abs(u_input.a))), func_3(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(34256u, 68205u, 0u)), Struct_1(vec3<bool>(false, var_0.a.x, false)), vec3<i32>(0i, u_input.d, u_input.d)) | 4294967295u);
    global0 = _wgslsmith_f_op_f32(sign(721f));
    return 1000f;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    let var_0 = all(arg_0.a);
    var var_1 = select(arg_0.a.zx, vec2<bool>(false, all(select(arg_0.a, !vec3<bool>(arg_0.a.x, false, var_0), false))), select(vec2<bool>(true, _wgslsmith_f_op_f32(173f * 336f) <= _wgslsmith_f_op_f32(func_2())), vec2<bool>(!(var_0 | arg_0.a.x), false), !(!arg_1.a.zx)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2240f), _wgslsmith_div_f32(-465f, -1000f), 1f, -1000f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(195f, -920f, 1725f, 210f)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(950f, 2533f, 422f, -537f), vec4<f32>(-1792f, 915f, 865f, 369f))))))), vec4<bool>(any(vec4<bool>(true, arg_0.a.x, arg_1.a.x, arg_0.a.x)), var_0, var_0, false))));
    let var_3 = -1407f;
    let var_4 = _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(~(47586u | u_input.b), func_3(vec3<u32>(18943u, 0u, u_input.b) & vec3<u32>(16038u, u_input.a, 1u), Struct_1(arg_1.a), firstLeadingBit(vec3<i32>(0i, u_input.d, u_input.c.x))), 57889u), select(vec3<u32>(26451u, 4294967295u, 43152u) ^ countOneBits(vec3<u32>(u_input.a, u_input.b, 1u)), reverseBits(vec3<u32>(u_input.a, 15649u, 10139u) << (vec3<u32>(0u, 1u, u_input.b) % vec3<u32>(32u))), true)), vec3<u32>((1u & (u_input.b >> (u_input.b % 32u))) >> (u_input.a % 32u), u_input.b, 57473u));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + var_3)))) - _wgslsmith_div_f32(var_3, 1000f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -1675f);
    global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -966f) + _wgslsmith_f_op_f32(f32(-1f) * -852f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -200f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -542f) * -1827f))));
    global0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2818f) + _wgslsmith_f_op_f32(f32(-1f) * -2415f)))) - _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(f32(-1f) * -2107f))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1831f * _wgslsmith_f_op_f32(1000f - 386f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1275f + -1359f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1952f))), true))));
    let var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(223f))), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(true, true, false)))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(1689f)), 640f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1734f * 1000f) + _wgslsmith_f_op_f32(abs(-1034f))), ~12594u != u_input.a))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-332f, -1150f, -1073f))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(828f))), 947f, _wgslsmith_f_op_f32(169f - _wgslsmith_div_f32(2189f, -872f))), true)));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1053f, _wgslsmith_f_op_f32(max(var_0.x, -560f))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1684f + var_0.x)) + _wgslsmith_f_op_f32(abs(448f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(-693f * var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(404f, var_0.x))), var_0.x));
    let var_2 = vec2<u32>(u_input.a, ~_wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 8875u, 4294967295u), vec3<u32>(67794u, u_input.a, 52665u)), ~vec3<u32>(27262u, 37768u, 10295u)));
    var var_3 = Struct_1(select(vec3<bool>(false, ~2817u != (u_input.b | 0u), var_1.x < _wgslsmith_div_f32(2006f, var_0.x)), vec3<bool>(false, true, any(vec4<bool>(true, true, true, true))), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true))));
    let x = u_input.a;
    s_output = StorageBuffer(0u);
}

