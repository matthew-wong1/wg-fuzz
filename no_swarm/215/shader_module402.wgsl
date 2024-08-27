struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<f32>,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
    c: vec2<bool>,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<bool>(false, true), -19543i, vec2<bool>(false, true), false, Struct_1(true, 2117f, vec4<f32>(1738f, -2197f, -2845f, 439f), vec2<i32>(2147483647i, -15577i), vec2<i32>(-1i, i32(-2147483648))));

var<private> global1: f32 = -2730f;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = global0.e.e.x;
    let var_1 = 4294967295u;
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1031f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f * global0.e.c.x), _wgslsmith_f_op_f32(-arg_0.c.x))))) - arg_0.c.x));
    let var_2 = Struct_3(false, var_1 | _wgslsmith_dot_vec4_u32(~(~vec4<u32>(var_1, var_1, 9824u, 6337u)), _wgslsmith_mod_vec4_u32(vec4<u32>(128754u, var_1, var_1, 12956u), min(vec4<u32>(var_1, var_1, 4294967295u, 72565u), vec4<u32>(var_1, 1u, 1u, 0u)))));
    var var_3 = var_2.a;
    return _wgslsmith_f_op_f32(-arg_0.b);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>) -> Struct_3 {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(global0.e)) + _wgslsmith_f_op_f32(trunc(-603f)));
    var var_0 = Struct_2(vec2<bool>(any(!vec4<bool>(arg_0.a, false, global0.a.x, arg_0.a)), global0.c.x), reverseBits(max(~(-2147483647i), _wgslsmith_mult_i32(~u_input.a, select(15383i, u_input.c.x, global0.d)))), select(global0.c, global0.c, !(!global0.c.x)), false, arg_0);
    var_0 = Struct_2(var_0.c, -45403i, vec2<bool>(select(var_0.a.x, var_0.e.a, global0.d), arg_0.a), var_0.c.x && true, Struct_1(all(!global0.c) && arg_0.a, _wgslsmith_f_op_f32(step(var_0.e.c.x, 135f)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.x)), var_0.e.c.x, var_0.e.c.x, -175f), arg_1.wx, select(reverseBits(u_input.d), max(vec2<i32>(15997i, -2147483647i), global0.e.e) ^ select(arg_0.e, u_input.d, global0.a), !(!var_0.d))));
    let var_1 = Struct_2(vec2<bool>(global0.d, false), ~u_input.c.x, !global0.a, false, Struct_1(false, _wgslsmith_f_op_f32(trunc(-505f)), global0.e.c, global0.e.d, vec2<i32>(global0.e.e.x, ~var_0.b)));
    var var_2 = vec4<bool>(true, true, arg_0.a, false);
    return Struct_3(true, 0u);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1) -> u32 {
    let var_0 = global0.e;
    let var_1 = global0.e;
    let var_2 = Struct_2(!vec2<bool>(!any(vec3<bool>(arg_0.a, false, var_1.a)), arg_1.a), 2147483647i, global0.a, true, arg_1);
    var var_3 = Struct_1(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(var_2.e))))) - var_1.b), vec4<f32>(var_0.c.x, var_1.c.x, var_1.c.x, -1228f), _wgslsmith_add_vec2_i32(vec2<i32>(-55158i, ~var_0.e.x), select(var_0.e, ~(~arg_1.d), func_2(Struct_1(false, -1814f, vec4<f32>(1033f, -1000f, 1615f, 601f), arg_1.e, var_1.e), select(vec4<i32>(1i, arg_1.e.x, 30542i, var_2.e.e.x), vec4<i32>(var_0.e.x, -25830i, -54060i, 55286i), vec4<bool>(global0.c.x, false, false, false))).a)), -global0.e.d);
    let var_4 = Struct_3(select(arg_0.a && true, any(vec2<bool>(true, var_0.a)), any(select(vec2<bool>(false, true), vec2<bool>(arg_0.a, var_0.a), true))) & (!(!global0.a.x) || var_0.a), _wgslsmith_add_u32(4294967295u << (arg_0.b % 32u), arg_0.b) << (_wgslsmith_sub_u32(1u, 1u) % 32u));
    return _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, ~(~4294967295u), ~_wgslsmith_div_u32(arg_0.b, arg_0.b)), max(vec3<u32>(~arg_0.b, _wgslsmith_mult_u32(49056u, var_4.b), firstLeadingBit(var_4.b)), ~firstLeadingBit(vec3<u32>(15027u, arg_0.b, arg_0.b)))), 1u << (((~var_4.b >> (3050u % 32u)) | arg_0.b) % 32u), ~4294967295u);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2) -> u32 {
    global1 = global0.e.b;
    global1 = 1000f;
    global1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.e.c.x) + arg_1.e.b)))));
    var var_0 = firstTrailingBit(1u) >= _wgslsmith_dot_vec3_u32(vec3<u32>(abs(1u), 1u, 0u), vec3<u32>(1u, select(1u, 1u, true) << (11577u % 32u), 121478u));
    var var_1 = ~(~vec4<u32>(1u, ~(~1u), func_4(func_2(arg_1.e, vec4<i32>(arg_1.e.e.x, arg_0.b, arg_0.b, 48897i)), arg_1.e), 46200u));
    return select(abs(var_1.x), 1u, global0.d || !any(vec3<bool>(global0.c.x, true, false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(vec3<u32>(select(func_1(Struct_2(vec2<bool>(false, global0.e.a), global0.b, vec2<bool>(global0.c.x, global0.e.a), global0.a.x, global0.e), Struct_2(vec2<bool>(false, false), global0.b, vec2<bool>(true, global0.c.x), false, Struct_1(global0.e.a, 1381f, global0.e.c, global0.e.d, vec2<i32>(1i, -2147483647i)))), ~23765u, all(vec3<bool>(global0.c.x, false, true))), _wgslsmith_add_u32(0u, 4268u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~(~vec2<u32>(9792u, 49032u)))), max(vec3<u32>(1u, 1u, 1u), vec3<u32>(~4294967295u, 1u, _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 0u, 13543u), vec3<u32>(1u, 1u, 1u)))));
    global0 = Struct_2(global0.a, _wgslsmith_dot_vec2_i32(abs(_wgslsmith_mult_vec2_i32(global0.e.d, ~global0.e.d)), vec2<i32>(global0.b >> (abs(76049u) % 32u), i32(-1i) * -60618i)), global0.a, false, global0.e);
    var_0 = vec3<u32>(0u, 20596u, var_0.x);
    global1 = _wgslsmith_f_op_f32(floor(1092f));
    let var_1 = select(global0.a, !(!(!(!vec2<bool>(global0.e.a, global0.c.x)))), global0.c);
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(var_0.x, ~var_0.x));
}

