struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: f32,
    c: bool,
    d: vec4<bool>,
    e: i32,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: f32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: Struct_4) -> bool {
    let var_0 = vec3<i32>(-_wgslsmith_div_i32(17974i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -2147483647i, -2147483647i), _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, -16767i, 5490i), vec3<i32>(0i, 79478i, -31971i)))), _wgslsmith_mod_i32(-_wgslsmith_sub_i32(-1i, -2147483647i), -(firstLeadingBit(2147483647i) >> ((u_input.a << (u_input.a % 32u)) % 32u))), ~(-1i));
    global0 = true;
    return 1456f <= arg_0.a;
}

fn func_3() -> vec4<f32> {
    let var_0 = !(!vec4<bool>(true, all(vec3<bool>(true, true, true)), true, !select(true, false, false)));
    global0 = any(var_0);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(533f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-386f)) + 847f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(477f)) * 1f))))));
    let var_2 = vec4<bool>(var_0.x, any(select(var_0.wyy, var_0.xyw, var_0.www)), true, !var_0.x);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_1)), var_1));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-934f, _wgslsmith_f_op_f32(-var_3), var_3, _wgslsmith_f_op_f32(-var_3)))) * vec4<f32>(-583f, _wgslsmith_f_op_f32(-var_3), var_3, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-1136f, var_3, var_2.x)), 298f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1009f, var_3, var_3, 149f) - vec4<f32>(-625f, 254f, var_3, var_3)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(612f, 1500f, var_1, var_1))), var_0.x)), vec4<f32>(-224f, _wgslsmith_div_f32(1686f, var_1), var_3, -672f))));
}

fn func_1(arg_0: vec3<i32>) -> Struct_2 {
    let var_0 = Struct_1(vec4<bool>(true, true, false, !(!func_2(Struct_4(-429f, 28911u, Struct_1(vec4<bool>(true, true, true, true), 4294967295u, vec4<f32>(-821f, 1000f, 1474f, -499f)), Struct_2(u_input.a, u_input.b.yy))))), ~(~1u), _wgslsmith_f_op_vec4_f32(func_3()));
    global0 = false;
    global0 = select(true, var_0.a.x, !var_0.a.x);
    return Struct_2(abs(0u), abs(vec2<u32>(~(~36097u), var_0.b & 0u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(-611f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1273f)) - -579f))), select(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 0u, u_input.b.x), u_input.b) >> (46571u % 32u), any(vec2<bool>(true, true))), Struct_1(!select(vec4<bool>(false, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true))), _wgslsmith_mod_u32(4294967295u, u_input.b.x), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(567f, 1000f, -737f, -288f), vec4<f32>(280f, -1376f, 944f, 950f)))))), func_1(_wgslsmith_add_vec3_i32(vec3<i32>(1i, 1i, 1i), _wgslsmith_clamp_vec3_i32(vec3<i32>(24372i, -62964i, -2147483647i), firstLeadingBit(vec3<i32>(39471i, 1i, -1865i)), vec3<i32>(57135i, -19194i, 1i)))));
    var_0 = Struct_4(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_0.c.c.x), _wgslsmith_div_f32(var_0.c.c.x, _wgslsmith_f_op_f32(-498f + -892f))), abs(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 1u), func_1(vec3<i32>(61174i, -3946i, -2147483647i)).b)), Struct_1(select(var_0.c.a, select(vec4<bool>(true, var_0.c.a.x, false, var_0.c.a.x), var_0.c.a, vec4<bool>(false, true, false, true)), var_0.c.a.x), var_0.d.b.x, vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.c.c.x))), _wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(ceil(var_0.a))), _wgslsmith_f_op_f32(f32(-1f) * -713f), _wgslsmith_f_op_f32(round(-1339f)))), func_1(firstTrailingBit(_wgslsmith_clamp_vec3_i32(abs(vec3<i32>(1i, 43235i, 42435i)), vec3<i32>(1i, 1i, 1i), -vec3<i32>(0i, 38610i, 2147483647i)))));
    var var_1 = -min(37884i, -(~_wgslsmith_sub_i32(30349i, 1i)));
    var var_2 = Struct_4(_wgslsmith_div_f32(300f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.c.x) - -2670f)), 0u, Struct_1(vec4<bool>(true, false, var_0.c.a.x, var_0.c.a.x), _wgslsmith_clamp_u32(1u, func_1(vec3<i32>(-49615i, 22184i, 0i)).b.x, _wgslsmith_add_u32(_wgslsmith_sub_u32(43318u, var_0.c.b), 1u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(var_0.c.c)))), Struct_2(42441u, vec2<u32>(min(countOneBits(4294967295u), _wgslsmith_add_u32(4294967295u, 0u)), ~var_0.b)));
    var_1 = ~(~_wgslsmith_mod_i32(34530i, firstLeadingBit(firstLeadingBit(-2147483647i))));
    let var_3 = Struct_3(~(~vec2<u32>(abs(u_input.b.x), var_2.c.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.c.c.x + 1461f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.c.c.x, var_2.c.c.x) + var_0.a))), all(!select(select(var_0.c.a, vec4<bool>(false, var_0.c.a.x, false, var_2.c.a.x), false), select(var_0.c.a, var_0.c.a, vec4<bool>(var_2.c.a.x, var_2.c.a.x, var_0.c.a.x, var_0.c.a.x)), var_0.c.a)), vec4<bool>(~(~(-1i)) == -(-43992i >> (u_input.b.x % 32u)), all(var_2.c.a), select(true, !var_2.c.a.x, var_2.c.a.x), var_0.b < 4294967295u), -2147483647i);
    var_1 = var_3.e;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-175f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.a)) - var_2.c.c.x)), true)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.c.x + var_0.a)), 853f, _wgslsmith_f_op_f32(f32(-1f) * -682f), _wgslsmith_f_op_f32(var_3.b - var_2.c.c.x)))), _wgslsmith_f_op_f32(-var_3.b), reverseBits(~4294967295u), _wgslsmith_f_op_f32(select(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_3.b, 1640f)))), false)));
}

