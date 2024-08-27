struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec4<bool>(false, false, false, false));

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: f32) -> vec4<bool> {
    global0 = Struct_3(!(!global0.a));
    global0 = Struct_3(vec4<bool>(_wgslsmith_f_op_f32(f32(-1f) * -549f) > _wgslsmith_f_op_f32(floor(arg_0)), all(global0.a), true, !((global0.a.x & true) || true)));
    let var_0 = Struct_2(-vec2<i32>(u_input.c, _wgslsmith_div_i32(u_input.c, u_input.b)) << (~vec2<u32>(~u_input.d, ~46438u) % vec2<u32>(32u)), arg_0);
    let var_1 = abs(_wgslsmith_add_u32(u_input.d, ~_wgslsmith_dot_vec4_u32(min(vec4<u32>(7655u, 26874u, u_input.d, 1u), vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.d, 1487u, u_input.d, u_input.d), vec4<u32>(35901u, 9870u, u_input.d, 4294967295u)))));
    let var_2 = vec2<u32>(countOneBits(~1u), _wgslsmith_mult_u32(_wgslsmith_add_u32(4294967295u, ~4294967295u ^ (u_input.d & 0u)), var_1));
    return vec4<bool>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0), -599f)) >= var_0.b, global0.a.x, any(!vec2<bool>(var_2.x >= 49377u, !global0.a.x)), !(_wgslsmith_f_op_f32(floor(-469f)) != _wgslsmith_f_op_f32(arg_0 * var_0.b)) || !global0.a.x);
}

fn func_2(arg_0: bool, arg_1: vec3<f32>) -> Struct_2 {
    global0 = Struct_3(select(select(vec4<bool>(true, true, true, true), vec4<bool>(any(vec4<bool>(arg_0, arg_0, global0.a.x, global0.a.x)), true, arg_0, !arg_0), vec4<bool>(global0.a.x, arg_1.x <= arg_1.x, false, u_input.d <= 9672u)), func_3(1f), !(!select(vec4<bool>(true, false, false, global0.a.x), global0.a, arg_0))));
    var var_0 = _wgslsmith_mult_vec2_i32(-_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(u_input.b, u_input.b)) & -vec2<i32>(1583i, -15931i), vec2<i32>(-u_input.b, -1i)), _wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, reverseBits(~u_input.e)), firstLeadingBit(abs(firstLeadingBit(vec2<i32>(u_input.a, -1i))))));
    global0 = Struct_3(vec4<bool>(true || func_3(_wgslsmith_f_op_f32(ceil(arg_1.x))).x, true, any(global0.a), global0.a.x));
    var var_1 = -vec2<i32>(1i, u_input.c);
    var var_2 = Struct_2(-abs(~vec2<i32>(1i, 1i)), 906f);
    return Struct_2(vec2<i32>(-1i) * -select(-var_2.a, vec2<i32>(-13555i, 4716i), true), _wgslsmith_f_op_f32(f32(-1f) * -211f));
}

fn func_1() -> Struct_2 {
    global0 = Struct_3(global0.a);
    var var_0 = func_2(global0.a.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2453f, 1565f, -425f)) * vec3<f32>(-1741f, -434f, 272f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(153f, 1000f, -1689f)))));
    var var_1 = _wgslsmith_f_op_f32(var_0.b + var_0.b);
    var var_2 = var_0.a.x;
    let var_3 = func_2(any(!vec4<bool>(!global0.a.x, false, true, false)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(var_0.b, var_0.b), -342f, _wgslsmith_f_op_f32(557f - 1489f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, -2101f, var_0.b) - vec3<f32>(var_0.b, var_0.b, var_0.b))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(var_0.b, var_0.b)), _wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(f32(-1f) * -683f)))));
    return Struct_2(vec2<i32>(~(-9129i), 42284i), 264f);
}

fn func_4(arg_0: Struct_2) -> vec3<u32> {
    global0 = Struct_3(global0.a);
    var var_0 = _wgslsmith_f_op_f32(step(830f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.b, arg_0.b, global0.a.x && true)))));
    let var_1 = Struct_1(-((vec3<i32>(u_input.b, 13114i, arg_0.a.x) >> ((vec3<u32>(0u, u_input.d, u_input.d) | vec3<u32>(0u, 30286u, 4980u)) % vec3<u32>(32u))) >> (~(~vec3<u32>(u_input.d, 17198u, 1u)) % vec3<u32>(32u))), global0.a.x, true);
    var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.b), arg_0.b)))))));
    var_0 = arg_0.b;
    return ~vec3<u32>(select(~1127u, firstTrailingBit(u_input.d), false), 24652u, _wgslsmith_sub_u32(u_input.d, _wgslsmith_sub_u32(u_input.d, u_input.d))) >> (~(~(_wgslsmith_clamp_vec3_u32(vec3<u32>(13200u, 0u, 1u), vec3<u32>(52139u, 1u, 1u), vec3<u32>(u_input.d, 1u, u_input.d)) ^ _wgslsmith_div_vec3_u32(vec3<u32>(u_input.d, 58388u, u_input.d), vec3<u32>(35725u, u_input.d, u_input.d)))) % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_mod_i32(max(u_input.c, -26210i), -6789i), ~(u_input.c ^ _wgslsmith_clamp_i32(u_input.a, -32793i, -2147483647i))), -2147483647i);
    let var_1 = (_wgslsmith_sub_vec3_u32(func_4(func_1()), ~(~vec3<u32>(u_input.d, u_input.d, 10699u))) >> (select(~vec3<u32>(86280u, u_input.d, 4294967295u) | vec3<u32>(1u, u_input.d, u_input.d), countOneBits(vec3<u32>(4294967295u, u_input.d, 0u) << (vec3<u32>(0u, 55276u, 1706u) % vec3<u32>(32u))), true) % vec3<u32>(32u))) | ~(~(~max(vec3<u32>(u_input.d, 70276u, u_input.d), vec3<u32>(u_input.d, 103861u, u_input.d))));
    global0 = Struct_3(!select(select(global0.a, select(vec4<bool>(false, false, global0.a.x, true), global0.a, false), func_3(-967f)), global0.a, global0.a));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_2(true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1457f, 1439f, 1995f))).b) - _wgslsmith_f_op_f32(914f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -988f) - _wgslsmith_f_op_f32(min(-1680f, 1289f))))), -765f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -919f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(288f)) * _wgslsmith_f_op_f32(sign(-1366f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1843f, -165f)) + _wgslsmith_f_op_f32(f32(-1f) * -575f)), _wgslsmith_f_op_f32(abs(617f))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-288f, -527f))))));
    global0 = Struct_3(vec4<bool>(!(select(true, global0.a.x, global0.a.x) & true), true, global0.a.x, !(_wgslsmith_div_f32(var_2.x, -1282f) <= _wgslsmith_f_op_f32(abs(-1636f)))));
    var_0 = vec2<i32>(var_0.x, 15953i);
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(var_0.x, -u_input.b, func_2(any(global0.a), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_2.x, var_2.x, 510f)))).a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + var_2.x)))));
}

