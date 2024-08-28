struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<u32>) -> f32 {
    let var_0 = Struct_4(4294967295u);
    let var_1 = _wgslsmith_div_u32(~4294967295u, u_input.b.x);
    var var_2 = Struct_1(select(vec4<i32>(-24434i | firstTrailingBit(u_input.c), -69373i, -2147483647i, 22487i), abs(vec4<i32>(u_input.e & -26762i, 50830i, u_input.e, u_input.e)), true));
    let var_3 = u_input.b;
    let var_4 = Struct_2(select(vec3<i32>(_wgslsmith_add_i32(u_input.c, u_input.a.x), _wgslsmith_dot_vec4_i32(~var_2.a, ~vec4<i32>(var_2.a.x, 0i, u_input.e, 0i)), 0i), vec3<i32>(u_input.c, _wgslsmith_mult_i32(~(-4918i), u_input.a.x), var_2.a.x), all(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1435f, _wgslsmith_f_op_f32(trunc(-886f))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1005f, -1214f), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-203f, 1778f)))))))), _wgslsmith_sub_vec4_u32(max(vec4<u32>(var_1, 67844u, 20425u, 0u), ~vec4<u32>(var_1, 2548u, u_input.d, var_3.x)), vec4<u32>(~var_0.a, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, u_input.d), u_input.b.yy), abs(9693u), 4294967295u << (arg_0.x % 32u))) >> (_wgslsmith_div_vec4_u32(countOneBits(abs(vec4<u32>(u_input.b.x, arg_0.x, 4294967295u, 3739u))), vec4<u32>(arg_0.x, u_input.d, var_0.a, 1u) | vec4<u32>(var_0.a, 30540u, var_1, 1u)) % vec4<u32>(32u)), _wgslsmith_mult_vec2_i32(var_2.a.wy, u_input.a.xy));
    return _wgslsmith_div_f32(var_4.b.x, -1000f);
}

fn func_2(arg_0: bool, arg_1: Struct_5, arg_2: vec3<bool>, arg_3: vec4<bool>) -> f32 {
    var var_0 = Struct_4(17635u);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -369f))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(countOneBits(~vec2<u32>(var_0.a, 35867u)))), arg_1.b.x)));
    var var_2 = _wgslsmith_clamp_vec4_u32(vec4<u32>(~_wgslsmith_add_u32(select(var_0.a, var_0.a, true), _wgslsmith_sub_u32(var_0.a, u_input.b.x)), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 1u, 0u, 0u), vec4<u32>(0u, 0u, 19571u, u_input.b.x))), _wgslsmith_add_u32(abs(u_input.d & var_0.a), 8575u), var_0.a), countOneBits(vec4<u32>(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, 1u)), vec4<u32>(var_0.a, 18108u, 0u, u_input.d)), _wgslsmith_clamp_u32(var_0.a, _wgslsmith_mod_u32(u_input.b.x, 53319u), 68562u), u_input.b.x << (29548u % 32u), var_0.a)), ~abs(~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, var_0.a, 1u, u_input.b.x), vec4<u32>(var_0.a, u_input.d, var_0.a, u_input.b.x))));
    var_1 = -974f;
    var_0 = Struct_4((reverseBits(var_2.x) << (reverseBits(0u) % 32u)) & var_0.a);
    return _wgslsmith_f_op_f32(arg_1.b.x * -1027f);
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_3) -> i32 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(119f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1000f, 665f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(131f + -1545f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(true, Struct_5(arg_1.a.a.zx, vec4<f32>(-181f, 357f, 377f, -2744f), arg_1.a.a), vec3<bool>(false, false, false), vec4<bool>(false, true, true, false))) + -629f))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-661f, _wgslsmith_f_op_f32(-103f - 908f))))), -174f)));
    global0 = -750f;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_div_f32(-1064f, 1000f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1442f, -1235f) * _wgslsmith_f_op_f32(1407f * 1000f))))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-742f * 1000f)));
    global0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1552f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -316f)))))));
    return reverseBits(u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 2147483647i;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -687f)) * _wgslsmith_f_op_f32(step(-833f, -428f))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1f - 800f), -1175f)));
    global0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-670f))));
    var_0 = func_1(vec3<i32>(1i, _wgslsmith_div_i32(~_wgslsmith_sub_i32(u_input.a.x, u_input.a.x), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(u_input.a.yz, vec2<i32>(0i, u_input.a.x)), u_input.e)), 1i), Struct_3(Struct_1(abs(select(vec4<i32>(u_input.c, u_input.e, 3633i, u_input.e), vec4<i32>(u_input.c, u_input.c, 1i, 66295i), vec4<bool>(false, true, true, false)))), i32(-1i) * -_wgslsmith_clamp_i32(u_input.e, u_input.a.x, u_input.c)));
    var_0 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(2147483647i) | u_input.e, min(~1u, u_input.d), _wgslsmith_mult_u32(16199u | u_input.b.x, 1u), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(418f, -287f, 105f), vec3<f32>(-1189f, -437f, -1319f)))))))));
}

