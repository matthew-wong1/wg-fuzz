struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: u32,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> f32 {
    global0 = arg_0;
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.a)))));
    var var_0 = ~vec4<i32>(_wgslsmith_sub_i32(~u_input.a, 74508i), 0i, i32(-1i) * -2147483647i, ~(-u_input.a | 42966i));
    let var_1 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(global0.a.x)))), global0.a.x, arg_0.a.x, 104f)));
    var_0 = max(select(max(vec4<i32>(u_input.a, u_input.a, -4659i, -3494i), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, var_0.x, 0i, -1i), vec4<i32>(-2147483647i, 2147483647i, -47519i, u_input.a))), _wgslsmith_mult_vec4_i32(max(vec4<i32>(u_input.a, u_input.a, var_0.x, 2147483647i), vec4<i32>(var_0.x, -2147483647i, -1i, u_input.a)), vec4<i32>(-2147483647i, -2147483647i, u_input.a, var_0.x)), vec4<bool>(true, true, true, true)) >> (~(~(vec4<u32>(64192u, 1u, 0u, 9160u) << (vec4<u32>(9038u, 29987u, arg_1, 4294967295u) % vec4<u32>(32u)))) % vec4<u32>(32u)), -vec4<i32>(u_input.a, countOneBits(-33137i), 538i, u_input.a));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -125f), _wgslsmith_f_op_f32(arg_0.a.x - -232f))) * 649f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec2<i32>, arg_3: u32) -> vec4<f32> {
    return global0.a;
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: Struct_1) -> vec2<bool> {
    let var_0 = _wgslsmith_mult_vec4_u32(~vec4<u32>(max(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 0u), u_input.c), 4294967295u | u_input.b), ~1u, arg_1, (u_input.c.x & arg_1) ^ u_input.b), abs(~(~vec4<u32>(4294967295u, u_input.b, 95306u, 0u))) ^ _wgslsmith_mod_vec4_u32(firstLeadingBit(~vec4<u32>(23960u, 5201u, u_input.c.x, u_input.c.x)), vec4<u32>(4294967295u, 4294967295u, abs(u_input.c.x), ~4294967295u)));
    global0 = Struct_1(vec4<f32>(-286f, arg_2.a.x, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.a.x), -1307f), -1207f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(vec4<f32>(-734f, -1681f, global0.a.x, arg_0)), 23500u)))));
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-103f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0)) - _wgslsmith_f_op_f32(floor(arg_2.a.x))), 1741f, _wgslsmith_div_f32(1276f, _wgslsmith_f_op_f32(ceil(-292f)))), _wgslsmith_f_op_vec4_f32(func_3(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, arg_2.a.x, global0.a.x, 958f) - vec4<f32>(global0.a.x, -826f, -1722f, arg_0))), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, -889i, 48550i)), vec2<i32>(-1i, u_input.a), _wgslsmith_clamp_u32(~1u, 4294967295u, u_input.b))))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, 572f, arg_2.a.x, global0.a.x) - vec4<f32>(343f, -252f, global0.a.x, arg_2.a.x)) - vec4<f32>(2561f, -725f, 1000f, arg_0)))))));
    var_1 = Struct_1(var_1.a);
    return !(!vec2<bool>(select(true, false, all(vec3<bool>(false, false, false))), true));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec3<bool>) -> Struct_1 {
    var var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(abs(global0.a.x)), global0.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -620f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1231f - global0.a.x), _wgslsmith_f_op_f32(ceil(global0.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-942f, global0.a.x))))));
    let var_1 = select(select(vec4<bool>((u_input.a != -2147483647i) && all(arg_1.yx), any(select(vec4<bool>(false, true, arg_1.x, true), vec4<bool>(arg_1.x, true, true, false), true)), true, true), vec4<bool>(all(select(vec4<bool>(false, true, arg_1.x, false), vec4<bool>(true, true, arg_1.x, arg_1.x), vec4<bool>(true, true, false, arg_1.x))), true, true, arg_1.x), true), select(select(vec4<bool>(arg_1.x, true, true, false), !select(vec4<bool>(false, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, false, true, arg_1.x), false), arg_1.x), vec4<bool>(arg_1.x, true, true, false), true), func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -797f) * global0.a.x), _wgslsmith_dot_vec2_u32(u_input.c, ~u_input.c), Struct_1(_wgslsmith_f_op_vec4_f32(var_0.a * _wgslsmith_f_op_vec4_f32(vec4<f32>(-783f, var_0.a.x, 126f, 1000f) + var_0.a)))).x);
    let var_2 = true;
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-138f)), global0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(433f, 822f) + -1799f), _wgslsmith_f_op_f32(-var_0.a.x)), var_0.a)));
    let var_3 = ~(~u_input.c);
    return Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, global0.a.x, var_0.a.x, global0.a.x) - var_0.a))) * var_0.a));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global0.a.x * _wgslsmith_f_op_f32(sign(global0.a.x))), _wgslsmith_f_op_f32(round(1026f)), global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.a.x))))));
    global0 = func_4(vec2<u32>(2173u, u_input.c.x), vec3<bool>(true, !all(func_1(-338f, 0u, Struct_1(vec4<f32>(global0.a.x, 1352f, global0.a.x, global0.a.x)))), all(vec2<bool>(any(vec2<bool>(false, true)), any(vec2<bool>(true, true))))));
    let var_0 = 1u;
    var var_1 = 38710u;
    var_1 = 1u;
    var_1 = _wgslsmith_div_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(~4294967295u, ~var_0), ~u_input.c), 4294967295u);
    var var_2 = ~min(vec4<i32>(_wgslsmith_dot_vec2_i32(max(vec2<i32>(u_input.a, u_input.a), vec2<i32>(1i, u_input.a)), -vec2<i32>(u_input.a, 0i)), 48072i, u_input.a, -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a))), (~vec4<i32>(u_input.a, u_input.a, 41063i, -29514i) & (vec4<i32>(u_input.a, u_input.a, u_input.a, 1i) | vec4<i32>(u_input.a, 7132i, u_input.a, u_input.a))) >> (countOneBits(vec4<u32>(var_0, var_0, 1u, u_input.b)) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(12712u, u_input.b, u_input.c.x)), ~firstTrailingBit(vec3<u32>(var_0, u_input.c.x, var_0))), vec3<f32>(_wgslsmith_f_op_f32(select(global0.a.x, -501f, select(u_input.a > var_2.x, true, any(vec3<bool>(false, false, true))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x + global0.a.x)), global0.a.x), 1f), firstLeadingBit(var_0), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global0.a.yzy, global0.a.xww) - global0.a.xwx), global0.a.x);
}

