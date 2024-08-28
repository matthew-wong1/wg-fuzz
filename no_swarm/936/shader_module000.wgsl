struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
    c: vec4<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: f32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: i32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec3<i32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(251f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1550f * -1000f)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-932f)), -393f))))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-276f))) + _wgslsmith_f_op_f32(f32(-1f) * -1816f));
    var var_2 = Struct_1(1f, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(21619u, 4294967295u, 11685u, 58573u), vec4<u32>(18683u, 1u, arg_0, 0u)) >> (~36936u % 32u), arg_0), vec4<u32>(firstTrailingBit(~19134u >> (arg_0 % 32u)), min(59366u, _wgslsmith_div_u32(u_input.a & u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(11317u, 1u, 22u, 1u), vec4<u32>(u_input.a, u_input.a, 0u, 58946u)))), arg_0, 4294967295u));
    var_2 = Struct_1(_wgslsmith_div_f32(-1065f, -1134f), var_2.b, max(vec4<u32>(var_2.b, arg_0, ~_wgslsmith_div_u32(arg_0, var_2.b), 0u), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.a, 22962u, countOneBits(u_input.a)), ~vec4<u32>(13695u, arg_0, 4294967295u, 1u) >> (~vec4<u32>(68244u, arg_0, 1u, u_input.a) % vec4<u32>(32u)))));
    var var_3 = vec4<u32>(_wgslsmith_mod_u32(min(~abs(arg_0), 75714u), var_2.b), reverseBits(~_wgslsmith_dot_vec3_u32(var_2.c.yyz >> (vec3<u32>(0u, var_2.b, 0u) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0, 1u, 52364u), var_2.c.zwy, vec3<u32>(var_2.b, arg_0, u_input.a)))), _wgslsmith_dot_vec2_u32(abs(_wgslsmith_mod_vec2_u32(var_2.c.zy, var_2.c.yy)), var_2.c.zw), 0u);
    return _wgslsmith_div_f32(var_2.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-194f - var_2.a) * 1423f)), _wgslsmith_f_op_f32(-var_2.a), true)));
}

fn func_2() -> Struct_4 {
    var var_0 = vec3<bool>(_wgslsmith_f_op_f32(func_3(~25536u, ~vec3<i32>(0i, u_input.b, 32256i))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-601f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -684f), -394f)), false, all(!(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)))));
    var_0 = vec3<bool>(true, _wgslsmith_f_op_f32(step(-749f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-169f * 1000f)))) < _wgslsmith_f_op_f32(round(1f)), var_0.x);
    var_0 = select(vec3<bool>(true, all(!vec4<bool>(false, var_0.x, var_0.x, var_0.x)), all(select(vec2<bool>(var_0.x, true), var_0.zz, var_0.xx))), !(!(!select(vec3<bool>(true, true, true), vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, var_0.x, var_0.x)))), vec3<bool>(true, true, all(select(select(vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(var_0.x, var_0.x, false, var_0.x), var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), var_0.x != true))));
    var var_1 = u_input.a;
    var_1 = ~countOneBits(~(u_input.a & 0u));
    return Struct_4(select(vec4<bool>(true, (var_0.x && var_0.x) | all(var_0.zz), (0u >= u_input.a) == all(vec3<bool>(var_0.x, false, false)), true & var_0.x), vec4<bool>(!(var_0.x & var_0.x), false, true, !(!var_0.x)), var_0.x), vec4<bool>(select(true, select(true, !var_0.x, any(vec3<bool>(var_0.x, true, var_0.x))), any(vec3<bool>(var_0.x, true, var_0.x))), var_0.x | var_0.x, var_0.x, var_0.x), -1i ^ u_input.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1447f, 1925f, 1000f, 126f), vec4<f32>(350f, 213f, 647f, -1000f), vec4<bool>(true, false, true, true))), vec4<f32>(241f, 1414f, 912f, 2625f)))));
}

fn func_1(arg_0: vec4<f32>) -> vec4<bool> {
    var var_0 = func_2();
    var var_1 = _wgslsmith_f_op_vec4_f32(trunc(var_0.d));
    var var_2 = Struct_3(countOneBits(-2471i >> (max(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.a), vec3<u32>(18847u, 2772u, u_input.a)), u_input.a >> (17746u % 32u)) % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(f32(-1f) * -2812f)))));
    var_2 = Struct_3(var_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.x * -558f), var_1.x)) - _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(u_input.a, vec3<i32>(1i, u_input.b, -1i))), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    return select(var_0.a, !(!var_0.a), var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(vec4<bool>(select(true, true, true), !any(vec4<bool>(false, true, false, false)) || true, false, (_wgslsmith_mult_i32(2147483647i, u_input.b) < ~64941i) || true), !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), false), func_1(vec4<f32>(-1000f, 861f, -1208f, -1431f))), 80366i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(564f, 1f, _wgslsmith_f_op_f32(-716f - 1847f), _wgslsmith_f_op_f32(-1262f - -625f)), _wgslsmith_div_vec4_f32(vec4<f32>(-2287f, -535f, 504f, -266f), _wgslsmith_div_vec4_f32(vec4<f32>(1000f, -420f, -2106f, -135f), vec4<f32>(-1674f, 1624f, -733f, 597f))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-291f, _wgslsmith_f_op_f32(f32(-1f) * -847f), -676f, _wgslsmith_f_op_f32(-263f * -463f)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1179f, 1743f, 112f, 354f) + vec4<f32>(-1642f, -1727f, 266f, 725f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1257f, 830f, -1348f, 818f), vec4<f32>(116f, -1439f, -352f, -1000f)))))));
    let var_1 = Struct_2(var_0.b.zw, ~(~firstTrailingBit(func_2().c)), _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(~_wgslsmith_clamp_vec4_i32(vec4<i32>(51785i, -2147483647i, 70402i, var_0.c), vec4<i32>(var_0.c, var_0.c, 10385i, var_0.c), vec4<i32>(-33427i, 0i, var_0.c, 20341i)), ~abs(vec4<i32>(-28685i, 17926i, var_0.c, u_input.b))), -abs(abs(vec4<i32>(u_input.b, u_input.b, -2147483647i, var_0.c)))), Struct_1(1f, u_input.a, ~(vec4<u32>(u_input.a, 79053u, 4294967295u, 0u) << (_wgslsmith_add_vec4_u32(vec4<u32>(0u, 65358u, 0u, u_input.a), vec4<u32>(u_input.a, 30872u, 0u, u_input.a)) % vec4<u32>(32u)))), Struct_1(var_0.d.x, ~0u, select(abs(vec4<u32>(1u, 0u, 4294967295u, u_input.a)), vec4<u32>(abs(88316u), 0u | u_input.a, firstLeadingBit(18053u), u_input.a), vec4<bool>(var_0.a.x != var_0.b.x, any(vec4<bool>(var_0.a.x, true, true, true)), true, var_0.a.x))));
    let var_2 = _wgslsmith_mod_i32(31863i, abs(_wgslsmith_add_i32(~u_input.b, _wgslsmith_dot_vec4_i32(var_1.c, var_1.c))) << (var_1.e.c.x % 32u));
    var var_3 = var_0;
    let var_4 = var_0;
    var_3 = var_0;
    var var_5 = var_1.a.x;
    let var_6 = max(var_3.c, abs((var_3.c | var_0.c) ^ u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d.yyy);
}

