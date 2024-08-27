struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<bool>) -> vec3<f32> {
    let var_0 = Struct_3(Struct_2(u_input.b.x, firstLeadingBit(_wgslsmith_sub_i32(firstLeadingBit(1i), -1i))), Struct_1(false), vec2<u32>(4257u, _wgslsmith_mod_u32(0u, u_input.d.x) | ~(u_input.b.x >> (44703u % 32u))));
    let var_1 = var_0.b;
    global0 = Struct_1(true);
    var var_2 = ~(select(_wgslsmith_sub_u32(4294967295u, _wgslsmith_sub_u32(u_input.a.x, 11604u)), var_0.c.x >> (4294967295u % 32u), true) << (u_input.d.x % 32u));
    let var_3 = !global0.a;
    return vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-2102f)) - _wgslsmith_f_op_f32(-808f - _wgslsmith_f_op_f32(f32(-1f) * -278f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-352f, 279f) + 1943f), -167f)), 417f);
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: vec2<i32>) -> vec3<f32> {
    global0 = Struct_1(!all(select(select(vec2<bool>(arg_1, global0.a), vec2<bool>(false, false), global0.a), vec2<bool>(arg_1, false), false)));
    global0 = Struct_1(arg_1);
    global0 = Struct_1(false);
    global0 = Struct_1(!arg_1);
    let var_0 = 1u;
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-289f + arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0, arg_0))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), arg_0)) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 660f, 535f) - _wgslsmith_f_op_vec3_f32(func_3(vec2<bool>(false, true))))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, 1454f, _wgslsmith_f_op_f32(round(arg_0))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1000f, arg_0) - vec3<f32>(579f, arg_0, 991f))), global0.a)))));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec2<f32>) -> i32 {
    global0 = Struct_1(true);
    global0 = arg_1;
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-498f, 1054f, _wgslsmith_div_f32(1000f, -730f)) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-208f, _wgslsmith_f_op_f32(-arg_2.x), 946f), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(-1458f, arg_0.b.a, vec2<i32>(arg_0.a.b, u_input.c)))))))));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(415f + 930f))), arg_2.x, -375f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.x, -1253f)), var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -118f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(-830f, var_0.x)), _wgslsmith_f_op_f32(abs(-142f)), _wgslsmith_f_op_f32(-var_0.x)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-172f, 1000f, var_0.x) + vec3<f32>(var_0.x, var_0.x, var_0.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 1787f, var_0.x) * vec3<f32>(-723f, -2048f, arg_2.x))))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(trunc(arg_2.x))), _wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_f32(366f + 1226f), arg_1.a, max(vec2<i32>(-1i, u_input.c), vec2<i32>(arg_0.a.b, arg_0.a.b)))).x, -672f) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(944f, arg_2.x)) + var_0.x), 1f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1206f * arg_2.x))))));
    return -abs(_wgslsmith_clamp_i32(_wgslsmith_add_i32(~8103i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -9011i, u_input.c, 36018i), vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c))), u_input.c, -8652i));
}

fn func_4(arg_0: Struct_2, arg_1: f32) -> f32 {
    global0 = Struct_1(any(vec3<bool>(true, global0.a, global0.a)));
    let var_0 = Struct_3(Struct_2(~abs(u_input.b.x), firstTrailingBit(firstLeadingBit(~46980i))), Struct_1(_wgslsmith_mod_u32(0u, firstTrailingBit(0u)) >= arg_0.a), ~abs(_wgslsmith_sub_vec2_u32(u_input.d.yz, u_input.d.xx)));
    global0 = var_0.b;
    global0 = var_0.b;
    var var_1 = var_0.b;
    return _wgslsmith_div_f32(242f, -788f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(func_4(Struct_2(_wgslsmith_add_u32(1u, ~abs(u_input.b.x)), func_1(Struct_3(Struct_2(27257u, -1i), Struct_1(global0.a), u_input.a), Struct_1(global0.a), _wgslsmith_div_vec2_f32(vec2<f32>(-899f, 689f), vec2<f32>(-385f, -924f))) >> ((_wgslsmith_sub_u32(36432u, 0u) & _wgslsmith_mod_u32(8902u, u_input.d.x)) % 32u)), -1338f));
    var var_1 = firstLeadingBit(min(vec2<u32>(u_input.d.x, 92140u), _wgslsmith_div_vec2_u32(abs(~vec2<u32>(u_input.b.x, u_input.b.x)), vec2<u32>(u_input.d.x, _wgslsmith_dot_vec2_u32(u_input.d.xy, vec2<u32>(u_input.d.x, 4294967295u))))));
    let var_2 = true;
    let var_3 = min(u_input.c, _wgslsmith_add_i32(2147483647i, func_1(Struct_3(Struct_2(var_1.x, u_input.c), Struct_1(false), vec2<u32>(u_input.b.x, 4294967295u)), Struct_1(any(vec2<bool>(true, false))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-702f, 344f)) * vec2<f32>(1000f, 1244f)))));
    let var_4 = Struct_3(Struct_2(~(4894u << (var_1.x % 32u)), i32(-1i) * -_wgslsmith_clamp_i32(-25326i, var_3, var_3)), Struct_1(!select(true, false, var_2 && global0.a)), countOneBits(vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(1u, 1u, u_input.b.x, u_input.a.x)), ~(~4294967295u))));
    var var_5 = _wgslsmith_f_op_f32(f32(-1f) * -442f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(~firstTrailingBit(~var_4.a.b), _wgslsmith_div_i32(1i, min(var_3, min(1i, -2147483647i)))), 523f, u_input.d.x, vec3<u32>(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, var_4.c.x, 1u, 1u), ~vec4<u32>(0u, var_1.x, u_input.a.x, 32645u))), 49058u, u_input.d.x));
}

