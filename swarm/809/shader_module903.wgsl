struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: Struct_2,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec4<i32>, arg_1: u32, arg_2: vec3<u32>) -> f32 {
    let var_0 = Struct_3(_wgslsmith_add_u32(0u, _wgslsmith_add_u32(abs(1u), arg_2.x)) & countOneBits(45582u), true, Struct_2(Struct_1(false, u_input.b, arg_0)), _wgslsmith_dot_vec2_i32(~(-vec2<i32>(arg_0.x, arg_0.x)), _wgslsmith_add_vec2_i32(firstLeadingBit(~arg_0.xw), arg_0.xx)));
    var var_1 = !vec3<bool>(true, true, !(u_input.a < ~u_input.b));
    let var_2 = u_input.b | ~_wgslsmith_div_u32(var_0.c.a.b, ~countOneBits(arg_2.x));
    let var_3 = 41664u;
    var var_4 = vec2<u32>(var_0.c.a.b, _wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(~vec3<u32>(var_0.c.a.b, 0u, arg_1), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_2, 0u, arg_1), vec3<u32>(0u, u_input.b, 0u), arg_2)), ~vec3<u32>(1u, ~0u, ~u_input.a)));
    return _wgslsmith_f_op_f32(f32(-1f) * -420f);
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(607f, _wgslsmith_f_op_f32(min(-302f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<i32>(-1928i, -16006i, 29452i, 1i), 1u, vec3<u32>(u_input.a, 47724u, 4294967295u)))))), true)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1329f, _wgslsmith_f_op_f32(round(1275f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-586f)) + _wgslsmith_f_op_f32(-1301f + -613f)))));
    var_0 = -701f;
    let var_1 = Struct_3(_wgslsmith_sub_u32(~14818u, _wgslsmith_dot_vec2_u32(min(vec2<u32>(u_input.a, u_input.b), vec2<u32>(u_input.b, 2139u)), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, u_input.a), vec2<u32>(118227u, u_input.a))) << (~(~66763u) % 32u)), !(!all(vec2<bool>(false, false))), Struct_2(Struct_1(any(vec4<bool>(false, false, true, true)), 81516u | _wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.b), vec4<i32>(-2941i, 1605i, -28172i, 0i) << (vec4<u32>(32242u, 0u, u_input.a, u_input.b) % vec4<u32>(32u)))), 1i);
    var_0 = _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(2400f + -1032f), _wgslsmith_f_op_f32(step(-593f, 365f))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(var_1.c.a.c, 4294967295u, vec3<u32>(u_input.a, var_1.c.a.b, var_1.a)))))), 816f)));
    var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(266f))), 831f));
    return var_1.c.a;
}

fn func_1(arg_0: vec4<bool>) -> Struct_1 {
    var var_0 = Struct_2(func_2());
    var_0 = Struct_2(func_2());
    let var_1 = var_0.a;
    var var_2 = firstLeadingBit(abs(0u));
    let var_3 = ~abs(vec4<u32>(var_1.b, 1u, max(27402u, reverseBits(u_input.a)), var_0.a.b & ~0u));
    return Struct_1(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(30874u, 4294967295u, u_input.a, 13320u)), vec4<u32>(22444u, var_3.x, 763u, var_1.b) >> (max(var_3, vec4<u32>(var_3.x, var_3.x, u_input.a, 4294967295u)) % vec4<u32>(32u))) > var_3.x, (_wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.a, var_1.b, 27871u), ~var_1.b) & ~(~u_input.a)) >> (var_1.b % 32u), min(abs(var_1.c), select(vec4<i32>(var_0.a.c.x, 23831i, 0i, var_1.c.x) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(var_1.c.x, var_0.a.c.x, 2147483647i, -65575i), var_0.a.c), vec4<i32>(1i, -2147483647i, -1i, -var_1.c.x), func_2().a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(!(!vec4<bool>(any(vec4<bool>(true, false, true, false)), u_input.b == 1u, select(true, false, false), true)));
    var_0 = Struct_1(all(vec4<bool>(true & (var_0.c.x < 15616i), true, all(vec2<bool>(true, true)) & !var_0.a, true)), u_input.b, min(countOneBits(var_0.c), var_0.c));
    var_0 = func_1(!vec4<bool>(!var_0.a, all(select(vec3<bool>(var_0.a, false, var_0.a), vec3<bool>(true, true, var_0.a), vec3<bool>(var_0.a, var_0.a, false))), true, true));
    let var_1 = 18232u;
    let var_2 = _wgslsmith_mult_i32(select(var_0.c.x, -var_0.c.x ^ 0i, var_0.a), 1i);
    var var_3 = Struct_1(var_1 < 4294967295u, 7129u, select(_wgslsmith_mod_vec4_i32(-(var_0.c | vec4<i32>(2147483647i, -2147483647i, var_0.c.x, var_0.c.x)), ~var_0.c), -func_2().c, any(select(vec3<bool>(true, var_0.a, false), vec3<bool>(false, false, true), true)) || var_0.a));
    let x = u_input.a;
    s_output = StorageBuffer(244f, _wgslsmith_mod_vec4_i32(~(-_wgslsmith_mod_vec4_i32(vec4<i32>(var_2, var_3.c.x, 0i, -1i), vec4<i32>(1i, var_2, var_2, var_0.c.x))), vec4<i32>(1i, var_3.c.x, i32(-1i) * -10599i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_3.c.x, var_2) & var_3.c.xw, firstLeadingBit(var_0.c.zw)))));
}

