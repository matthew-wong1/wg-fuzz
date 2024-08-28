struct Struct_1 {
    a: f32,
    b: bool,
    c: bool,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<i32>,
    d: bool,
    e: bool,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: Struct_3,
    d: Struct_1,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, false);

var<private> global1: bool;

var<private> global2: u32;

var<private> global3: array<vec2<f32>, 8>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: Struct_2, arg_1: f32) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1 + -232f))))) * arg_1);
}

fn func_3(arg_0: i32, arg_1: vec4<u32>, arg_2: u32) -> u32 {
    let var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1744f * _wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(-1295f, global0.x, global0.x, vec2<f32>(430f, -901f)), arg_0, u_input.a, global0.x, true), -1015f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-963f)) + -1079f), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(step(235f, -974f))), firstLeadingBit(arg_0) < u_input.a.x))), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * -1018f) - _wgslsmith_f_op_f32(sign(-1027f))), -582f);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-329f * 1000f)) - var_0.x) + -262f), -179f, _wgslsmith_f_op_f32(-var_0.x));
    global0 = select(select(select(select(select(vec3<bool>(true, global0.x, false), vec3<bool>(global0.x, false, false), false), select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(false, global0.x, true), vec3<bool>(true, global0.x, false)), select(vec3<bool>(global0.x, true, false), vec3<bool>(true, true, global0.x), vec3<bool>(global0.x, false, global0.x))), vec3<bool>(true, any(vec4<bool>(global0.x, true, global0.x, global0.x)), global0.x), true), vec3<bool>(!global0.x, select(global0.x, global0.x, true), (var_1.x <= var_1.x) || !global0.x), !(!global0.x)), vec3<bool>(global0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(916f * var_0.x))) >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2033f))), any(select(select(vec2<bool>(true, global0.x), global0.xy, global0.zz), !global0.yy, true))), !select(select(vec3<bool>(true, false, true), !vec3<bool>(false, global0.x, global0.x), !global0.x), !(!vec3<bool>(global0.x, false, global0.x)), true));
    var var_2 = Struct_1(var_1.x, any(select(vec3<bool>(true, global0.x, true), vec3<bool>(select(true, true, true), true, any(vec3<bool>(global0.x, global0.x, global0.x))), select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(global0.x, global0.x, global0.x), select(vec3<bool>(false, global0.x, false), vec3<bool>(global0.x, true, global0.x), vec3<bool>(global0.x, false, true))))), !(!(_wgslsmith_f_op_f32(-var_1.x) >= _wgslsmith_f_op_f32(select(var_1.x, 214f, true)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(round(-285f)), var_0.x))))));
    let var_3 = !global0.x;
    return _wgslsmith_div_u32(_wgslsmith_mod_u32(arg_2, _wgslsmith_mult_u32(~_wgslsmith_mult_u32(4294967295u, 1u), _wgslsmith_dot_vec2_u32(~vec2<u32>(21990u, 51767u), vec2<u32>(1u, 17824u)))), ~arg_2);
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_4) -> f32 {
    global1 = !all(!vec3<bool>(2147483647i > arg_1.a, true, all(global0.xx)));
    var var_0 = 8459i;
    global2 = ~func_3(-1i << (1u % 32u), vec4<u32>(arg_1.b, ~_wgslsmith_div_u32(arg_1.b, 0u), ~select(1u, u_input.c.x, arg_1.d.c), ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 13019u, u_input.d.x, arg_1.b), vec4<u32>(u_input.c.x, u_input.c.x, u_input.b.x, 1u))), arg_1.b << (~u_input.b.x % 32u));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(555f + 1709f)));
    var var_2 = vec3<f32>(1483f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(381f, -880f)) - 947f)))), _wgslsmith_div_f32(-790f, _wgslsmith_f_op_f32(max(var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a, var_1.a))))));
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-914f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(-315f, false, global0.x, global3[_wgslsmith_index_u32(u_input.d.x, 8u)]), 68731i, u_input.a, false, global0.x), -322f)), _wgslsmith_f_op_f32(569f - 1000f), true)), global0.x))));
    let var_1 = Struct_5(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a - var_0.a)) + var_0.a), -1279f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1027f)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2(vec3<f32>(var_0.a, -332f, var_0.a), Struct_4(u_input.a.x, u_input.c.x, Struct_3(-288f), Struct_1(-1109f, global0.x, true, global3[_wgslsmith_index_u32(1u, 8u)]))))))), var_0.a), vec4<i32>(~2147483647i, u_input.a.x, u_input.a.x, ~(~_wgslsmith_add_i32(1i, 0i))), -(vec4<i32>(-1i) * -vec4<i32>(40455i, u_input.a.x, 12812i, u_input.a.x)) ^ (~vec4<i32>(u_input.a.x, u_input.a.x, -1i, u_input.a.x) ^ vec4<i32>(-2147483647i >> (u_input.c.x % 32u), u_input.a.x, _wgslsmith_clamp_i32(u_input.a.x, 1362i, -22201i), countOneBits(2147483647i))), 1117f);
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.a - var_1.d)));
    var var_3 = firstTrailingBit(36781u ^ _wgslsmith_add_u32(u_input.d.x, abs(u_input.c.x >> (u_input.b.x % 32u))));
    var var_4 = _wgslsmith_add_u32(countOneBits(_wgslsmith_mult_u32(u_input.b.x, _wgslsmith_sub_u32(42848u | u_input.d.x, countOneBits(0u)))), abs(70489u));
    global1 = any(select(vec4<bool>(all(!vec4<bool>(global0.x, global0.x, false, false)), global0.x, global0.x, true), vec4<bool>(global0.x, !global0.x && global0.x, !global0.x & false, false), all(!select(vec4<bool>(global0.x, global0.x, global0.x, false), vec4<bool>(false, global0.x, global0.x, global0.x), vec4<bool>(global0.x, true, global0.x, true)))));
    var var_5 = vec3<i32>(_wgslsmith_dot_vec2_i32(abs(u_input.a), abs(u_input.a)), countOneBits(_wgslsmith_clamp_i32(~min(u_input.a.x, u_input.a.x), _wgslsmith_mod_i32(u_input.a.x, -2147483647i) & -8750i, u_input.a.x)), -31894i);
    let var_6 = Struct_1(_wgslsmith_f_op_f32(var_1.d + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -730f)), 589f)), any(select(vec3<bool>(global0.x, false | global0.x, global0.x), vec3<bool>(!global0.x, global0.x, false), true)), global0.x, var_1.a.wx);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(255f)), _wgslsmith_f_op_f32(step(-157f, -2162f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(384f))), _wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(-var_1.d)))), countOneBits(u_input.b), -(~(~_wgslsmith_div_i32(2147483647i, var_1.b.x))), var_5.x, var_1.c.x);
}

