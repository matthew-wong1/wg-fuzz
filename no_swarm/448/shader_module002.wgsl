struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec3<f32>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<f32>(1216f, -847f), 1124f, vec3<f32>(414f, -1888f, -2003f), -335f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2() -> f32 {
    return -595f;
}

fn func_1(arg_0: Struct_1) -> vec3<u32> {
    var var_0 = arg_0.c.x;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1544f - 1806f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.b + arg_0.a.x), 1055f))))));
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_div_f32(982f, arg_0.d), -591f))), global0.d, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.c) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(min(arg_0.b, global0.d)), _wgslsmith_f_op_f32(global0.a.x + arg_0.a.x), _wgslsmith_div_f32(arg_0.a.x, -745f)), arg_0.c))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_0.d, -182f))) + global0.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(390f, global0.a.x, false)))) + arg_0.d))));
    var var_1 = vec4<i32>(u_input.b.x, reverseBits(-abs(u_input.b.x | -2147483647i)), u_input.b.x, u_input.b.x);
    var_0 = _wgslsmith_f_op_f32(-170f - _wgslsmith_f_op_f32(step(global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -342f))))));
    return _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 1u, 1u), ~(~select(vec3<u32>(1u, 58887u, 24270u), vec3<u32>(u_input.a.x, 0u, 1u), vec3<bool>(true, true, true)))), ~countOneBits(select(~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), select(vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x), vec3<u32>(1u, 1u, 54785u), vec3<bool>(false, false, false)), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false))));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    let var_0 = 1000f;
    var var_1 = Struct_1(vec2<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -1671f)), -493f, vec3<f32>(_wgslsmith_f_op_f32(ceil(global0.a.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1725f), -1471f)), 1225f), _wgslsmith_f_op_f32(-arg_1.c.x));
    global0 = arg_1;
    let var_2 = vec2<bool>(u_input.a.x <= _wgslsmith_mult_u32(arg_0.x, min(select(arg_0.x, 23176u, true), 8962u)), true);
    var var_3 = select(~abs(_wgslsmith_sub_vec3_i32(u_input.b ^ u_input.b, _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, u_input.b.x, 0i), u_input.b))), min(vec3<i32>(reverseBits(-u_input.b.x), _wgslsmith_dot_vec2_i32(u_input.b.xy, u_input.b.yy) ^ (15629i & u_input.b.x), min(2147483647i, _wgslsmith_dot_vec2_i32(u_input.b.yx, vec2<i32>(-1i, 1533i)))), vec3<i32>(u_input.b.x, _wgslsmith_clamp_i32(-2147483647i, 21311i, 4204i >> (arg_0.x % 32u)), ~(u_input.b.x << (u_input.a.x % 32u)))), select(!(!select(vec3<bool>(var_2.x, var_2.x, true), vec3<bool>(true, var_2.x, var_2.x), vec3<bool>(var_2.x, var_2.x, var_2.x))), vec3<bool>(var_2.x | (var_2.x | true), true, true), false));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_3(_wgslsmith_mod_vec3_u32(~firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 0u, u_input.a.x), vec3<u32>(45025u, 6159u, u_input.a.x))), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, 65577u, ~0u), _wgslsmith_add_vec3_u32(func_1(Struct_1(global0.a, 1000f, global0.c, 339f)), vec3<u32>(u_input.a.x, 46933u, 32988u) & vec3<u32>(u_input.a.x, u_input.a.x, 12412u)))), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(-511f, global0.a.x)), _wgslsmith_f_op_f32(global0.b + -921f)) - _wgslsmith_div_vec2_f32(vec2<f32>(global0.d, -106f), global0.c.xx)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x))), global0.c, -519f), -136f);
    global0 = func_3(vec3<u32>(_wgslsmith_mult_u32(~(~u_input.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a.x), vec2<u32>(53983u, 0u)) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, 22134u))), ~u_input.a.x, u_input.a.x), func_3(vec3<u32>(~0u, firstTrailingBit(u_input.a.x), ~1u), Struct_1(global0.a, -539f, vec3<f32>(_wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_div_f32(667f, 1214f), func_3(vec3<u32>(9976u, 15372u, 22292u), Struct_1(global0.a, global0.a.x, global0.c, global0.a.x), global0.c.x).a.x), _wgslsmith_f_op_f32(global0.d - -655f)), global0.d), _wgslsmith_f_op_f32(-global0.b));
    global0 = func_3(vec3<u32>(~4294967295u, 50762u, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(18524u, 103809u, u_input.a.x), u_input.a.x, ~u_input.a.x), select(abs(vec3<u32>(u_input.a.x, 33013u, 68732u)), vec3<u32>(u_input.a.x, 12660u, 4294967295u), true))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.b - global0.d))), 303f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -959f), _wgslsmith_div_f32(154f, global0.b)) - -1285f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.b, -1644f, 622f), vec3<f32>(831f, 1767f, -790f), u_input.a.x == 42457u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1146f, -611f)) + _wgslsmith_div_f32(global0.c.x, -1122f)))), -478f);
    let var_0 = func_3(_wgslsmith_add_vec3_u32(~abs(~vec3<u32>(4294967295u, u_input.a.x, u_input.a.x)), vec3<u32>(1u, _wgslsmith_mod_u32(u_input.a.x, 24142u), u_input.a.x)), func_3(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, 35916u, u_input.a.x), vec3<u32>(u_input.a.x, 29730u, u_input.a.x) << (vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u) % vec3<u32>(32u))) >> (~vec3<u32>(u_input.a.x, 4294967295u, 0u) % vec3<u32>(32u)), func_3(vec3<u32>(u_input.a.x, ~12010u, 0u), Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.b, 486f), vec2<f32>(1147f, global0.a.x), true)), _wgslsmith_f_op_f32(floor(726f)), _wgslsmith_f_op_vec3_f32(sign(global0.c)), global0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-736f - -693f))), -2453f), global0.a.x);
    global0 = Struct_1(vec2<f32>(248f, -375f), 993f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1212f, 553f))), _wgslsmith_f_op_f32(abs(148f)), -1484f)), _wgslsmith_f_op_f32(-var_0.c.x));
    let var_1 = func_1(func_3(firstLeadingBit(vec3<u32>(~u_input.a.x, u_input.a.x, ~u_input.a.x)), var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2104f))));
    global0 = func_3(var_1, var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-769f * _wgslsmith_f_op_f32(-var_0.b)))));
    var var_2 = var_0;
    var_2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-global0.a.x), 1761f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b + global0.a.x) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1066f + var_2.d))))), vec3<f32>(var_2.b, _wgslsmith_f_op_f32(abs(var_0.a.x)), -2209f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c.x) - _wgslsmith_f_op_f32(trunc(-360f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1341f))), false)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.yx);
}

