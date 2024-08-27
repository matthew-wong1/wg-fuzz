struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: bool,
    c: u32,
    d: vec3<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = ~vec2<u32>(~4294967295u, ~firstLeadingBit(~74873u));
    var var_1 = 38724i;
    var var_2 = -1000f;
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -484f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-403f, 105f, false))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(383f)) - -1236f))));
    let var_3 = _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, _wgslsmith_add_i32(u_input.c.x, ~0i) >> (1u % 32u), -1i), vec3<i32>(u_input.c.x, 27932i, _wgslsmith_mod_i32(u_input.c.x, -1i)));
    return ~(~0u);
}

fn func_2(arg_0: f32) -> Struct_2 {
    var var_0 = u_input.c;
    var_0 = min(reverseBits(vec2<i32>(_wgslsmith_mult_i32(u_input.c.x, abs(-1i)), ~(~2147483647i))), u_input.c);
    var_0 = select(u_input.c ^ u_input.c, u_input.c, !select(!select(vec2<bool>(true, false), vec2<bool>(false, false), true), select(vec2<bool>(true, false), vec2<bool>(true, true), true), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), false), any(vec4<bool>(true, true, true, true)))));
    var_0 = u_input.c;
    var var_1 = select(vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * 109f) > -2171f, any(vec3<bool>(true, true, true)), any(vec3<bool>(true, true, true))), vec3<bool>(4294967295u != _wgslsmith_div_u32(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 4294967295u), vec4<u32>(u_input.a, u_input.b.x, 4294967295u, u_input.a))), true, any(vec4<bool>(true, true, false, true))), u_input.a != _wgslsmith_mult_u32(0u, _wgslsmith_mod_u32(1u, func_3())));
    return Struct_2(abs(-vec2<i32>(~var_0.x, 1i)));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: Struct_2) -> Struct_1 {
    let var_0 = max((_wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.b.x, 31330u), ~55175u) | ~u_input.a) << (u_input.a % 32u), (4294967295u | ~u_input.b.x) & firstLeadingBit(~1981u));
    var var_1 = 1i;
    var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_div_i32(_wgslsmith_div_i32(-arg_0.x, arg_2.a.x >> (u_input.a % 32u)), arg_0.x), abs(select(~u_input.c.x, arg_0.x, arg_0.x >= -2147483647i)), -10324i, u_input.c.x), vec4<i32>(arg_0.x & ~_wgslsmith_add_i32(-32411i, arg_0.x), firstLeadingBit(_wgslsmith_clamp_i32(u_input.c.x, 1i, 37531i) >> (u_input.b.x % 32u)), arg_2.a.x, arg_2.a.x));
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1), _wgslsmith_div_vec2_f32(arg_1, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(-744f, arg_1.x)), arg_1.x) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, arg_1.x) + arg_1)))));
    var_1 = -(arg_0.x | 1i);
    return Struct_1(any(select(select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), false), all(vec4<bool>(false, true, true, true))), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), true)));
}

fn func_1() -> i32 {
    let var_0 = func_4(vec3<i32>(u_input.c.x, u_input.c.x, _wgslsmith_clamp_i32(u_input.c.x << (38903u % 32u), -u_input.c.x, _wgslsmith_add_i32(max(-2147483647i, u_input.c.x), u_input.c.x))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2296f, -2589f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(925f, -674f), vec2<f32>(1100f, -1800f)))))), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(958f, _wgslsmith_div_f32(364f, -1000f), true)) + _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1424f, -1268f), -1407f)))));
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(-43055i);
    var var_1 = _wgslsmith_sub_i32(_wgslsmith_div_i32(-(~u_input.c.x), i32(-1i) * -2147483647i), ~2147483647i);
    var var_2 = -vec2<i32>(i32(-1i) * -64328i, 13338i) | vec2<i32>(~func_1(), u_input.c.x);
    var_2 = ~u_input.c | (vec2<i32>(-1i) * -_wgslsmith_mult_vec2_i32(u_input.c ^ u_input.c, func_2(523f).a));
    var_1 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-229f + -666f))))), abs(select(select(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) & vec4<u32>(u_input.a, 1u, 1u, u_input.a), ~vec4<u32>(11174u, 70369u, 88150u, u_input.a), vec4<bool>(false, true, false, true)), vec4<u32>(0u, 1644u, 40731u, 45462u) << (~vec4<u32>(82033u, u_input.b.x, u_input.b.x, 0u) % vec4<u32>(32u)), true)), 14772i);
}

