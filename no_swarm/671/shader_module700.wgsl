struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(0u, 72895u, 4294967295u);

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: bool, arg_3: i32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-arg_0.a);
    var var_1 = select(select(vec3<bool>(arg_3 < reverseBits(arg_1), !arg_2, false), vec3<bool>(!arg_2, !all(vec3<bool>(arg_2, arg_2, arg_2)), (arg_2 != arg_2) | (true & arg_2)), !(global0.x > 0u)), vec3<bool>(global0.x <= _wgslsmith_sub_u32(11432u, global0.x), select(false, _wgslsmith_f_op_f32(-var_0.x) == var_0.x, _wgslsmith_f_op_f32(arg_0.a.x - var_0.x) > var_0.x), true), true || arg_2);
    var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(arg_0.a)), _wgslsmith_f_op_vec4_f32(-arg_0.a));
    var var_2 = vec4<bool>(true, (-1633f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x * var_0.x) * _wgslsmith_f_op_f32(select(-1000f, arg_0.a.x, false)))) && any(!vec4<bool>(arg_2, false, false, arg_2)), true, !var_1.x);
    var_0 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x - var_0.x)), var_0.x), _wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(1031f - _wgslsmith_f_op_f32(f32(-1f) * -791f)))));
    return 0u;
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    global0 = vec3<u32>(~(~1u), global0.x, 4294967295u) << (~(~_wgslsmith_sub_vec3_u32(~vec3<u32>(5479u, arg_0.c, global0.x), vec3<u32>(arg_0.c, 1u, 44838u))) % vec3<u32>(32u));
    global0 = ~vec3<u32>(firstLeadingBit(global0.x) | (~1u & global0.x), _wgslsmith_mod_u32(global0.x, firstLeadingBit(global0.x) >> (global0.x % 32u)), _wgslsmith_clamp_u32(~arg_0.c, func_3(Struct_2(vec4<f32>(-796f, 121f, 1547f, 998f)), u_input.a.x, arg_0.b, u_input.c) ^ min(0u, 163669u), global0.x));
    var var_0 = Struct_2(vec4<f32>(1556f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1727f - 679f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1364f)) + 106f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-977f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -884f)))))));
    global0 = reverseBits(vec3<u32>(select(select(~1u, global0.x, arg_0.b), _wgslsmith_div_u32(1u, global0.x), global0.x > (43682u << (0u % 32u))), global0.x, 26975u));
    var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(var_0.a + vec4<f32>(var_0.a.x, var_0.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -772f), var_0.a.x, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x * var_0.a.x) + _wgslsmith_f_op_f32(151f + -224f)))));
    return Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-662f, -1465f, var_0.a.x, _wgslsmith_f_op_f32(var_0.a.x - 424f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a))), vec4<bool>(true, false, true, arg_0.b))));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_mult_vec2_u32(~(~(~global0.xy)), global0.xz >> ((~vec2<u32>(4294967295u, 0u) >> (firstLeadingBit(_wgslsmith_div_vec2_u32(global0.zx, vec2<u32>(global0.x, global0.x))) % vec2<u32>(32u))) % vec2<u32>(32u)));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(arg_2.a.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a.x + arg_2.a.x)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-332f, -719f) * -469f))), _wgslsmith_f_op_f32(-func_2(Struct_1(vec4<i32>(2147483647i, arg_1, -61732i, -8622i), select(true, false, true), var_0.x)).a.x));
    let var_2 = vec3<i32>((arg_1 << (~min(4294967295u, var_0.x) % 32u)) ^ reverseBits(~_wgslsmith_dot_vec3_i32(vec3<i32>(16465i, 12222i, arg_1), u_input.a.xyy)), i32(-1i) * -2147483647i, -47544i);
    var_1 = _wgslsmith_div_vec2_f32(arg_0.a.xw, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-315f - arg_2.a.x))), -651f)));
    global0 = vec3<u32>(0u, global0.x, firstLeadingBit(countOneBits(var_0.x)));
    return Struct_1(min(~max(u_input.a, select(vec4<i32>(arg_1, -2147483647i, arg_1, u_input.a.x), u_input.a, vec4<bool>(false, false, true, true))), select(u_input.a & u_input.a, ~min(vec4<i32>(u_input.a.x, -1i, u_input.c, u_input.b), vec4<i32>(1i, var_2.x, u_input.c, -2310i)), vec4<bool>(any(vec4<bool>(true, false, false, false)), 25986i > arg_1, true, true))), !any(vec2<bool>(true, true)), 0u);
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2, arg_3: bool) -> u32 {
    var var_0 = true;
    global0 = firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(~global0.x, 8046u, 1u) & ~_wgslsmith_add_vec3_u32(vec3<u32>(global0.x, global0.x, global0.x), vec3<u32>(1u, 0u, 33272u)), vec3<u32>(~4294967295u, firstTrailingBit(global0.x), 2524u)));
    let var_1 = func_4(arg_2, -36503i, func_2(Struct_1(u_input.a, select(true, all(vec2<bool>(false, arg_3)), arg_3), 1u)));
    var_0 = true;
    var_0 = true;
    return _wgslsmith_div_u32(~1u, ~49922u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~((_wgslsmith_mod_vec3_u32(abs(vec3<u32>(27058u, 4294967295u, 1u)), ~vec3<u32>(global0.x, 0u, global0.x)) ^ vec3<u32>(~global0.x, countOneBits(global0.x), global0.x << (global0.x % 32u))) ^ ~vec3<u32>(global0.x, ~19262u, func_1(Struct_2(vec4<f32>(451f, 274f, 922f, -1000f)), 0i, Struct_2(vec4<f32>(494f, -183f, -1883f, 1000f)), false)));
    global0 = ~vec3<u32>(max(~func_3(Struct_2(vec4<f32>(1947f, -839f, -2036f, -999f)), u_input.c, false, -35733i), global0.x), _wgslsmith_sub_u32(13769u, global0.x), ~(~global0.x));
    var var_0 = func_4(Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(929f)), 1f, _wgslsmith_div_f32(1485f, 144f), _wgslsmith_f_op_f32(max(-1316f, 2024f))))), abs(_wgslsmith_clamp_i32(-1i, u_input.c, -(~(-1i)))), func_2(func_4(Struct_2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-911f, -547f, 789f, -485f)))), _wgslsmith_add_i32(-2147483647i, u_input.c), func_2(func_4(Struct_2(vec4<f32>(-277f, -931f, -1035f, -1773f)), 45672i, Struct_2(vec4<f32>(-127f, 805f, -2600f, -614f)))))));
    var var_1 = vec2<i32>(-1i, var_0.a.x);
    global0 = vec3<u32>(_wgslsmith_clamp_u32(~global0.x, _wgslsmith_div_u32(min(~33032u, 13699u), ~global0.x), global0.x), global0.x, var_0.c);
    var var_2 = -1986f;
    let var_3 = vec2<bool>(any(select(select(!vec3<bool>(var_0.b, var_0.b, var_0.b), !vec3<bool>(false, false, var_0.b), vec3<bool>(false, var_0.b, var_0.b)), vec3<bool>(all(vec2<bool>(true, var_0.b)), 3917u <= global0.x, true), var_0.a.x <= _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, var_1.x), vec2<i32>(-723i, 34919i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-682f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f)))) != -206f);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(131f, -906f))) - _wgslsmith_f_op_f32(-301f * 1236f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-907f * -559f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(1936f)), _wgslsmith_f_op_f32(-1016f + 1000f)))), -553f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -384f))), ((vec3<u32>(46167u, 1u, var_0.c) << (max(vec3<u32>(var_0.c, var_0.c, global0.x), vec3<u32>(4294967295u, 0u, var_0.c)) % vec3<u32>(32u))) << (max(vec3<u32>(4294967295u, var_0.c, 67225u), vec3<u32>(56236u, 0u, global0.x)) % vec3<u32>(32u))) & _wgslsmith_sub_vec3_u32(countOneBits(firstLeadingBit(vec3<u32>(9356u, 1u, 11708u))), vec3<u32>(var_0.c, func_3(Struct_2(vec4<f32>(2549f, -338f, -1276f, -798f)), var_0.a.x, var_0.b, var_1.x), abs(4294967295u))), vec4<f32>(func_2(Struct_1(~u_input.a, any(vec2<bool>(true, var_0.b)), var_0.c)).a.x, _wgslsmith_f_op_f32(-1234f - 1482f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -915f)), 3037f)), _wgslsmith_f_op_f32(sign(820f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(271f + -439f), _wgslsmith_f_op_f32(f32(-1f) * -524f)))), 0u);
}

