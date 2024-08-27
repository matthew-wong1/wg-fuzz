struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_2,
    d: u32,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>) -> bool {
    var var_0 = u_input.a.x;
    var_0 = 1u;
    var var_1 = Struct_4(abs(~vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, arg_0.a.x), arg_0.a), arg_0.a.x)), _wgslsmith_mult_u32(u_input.b, abs(_wgslsmith_clamp_u32(~u_input.a.x, u_input.a.x, ~u_input.a.x))));
    var_1 = Struct_4(arg_0.a, var_1.b);
    var var_2 = Struct_2(Struct_1(_wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(4029i, arg_0.a.x, 0i, var_1.a.x), vec4<i32>(80302i, arg_0.a.x, arg_0.a.x, var_1.a.x)), abs(-2147483647i)), var_1.a)));
    return -10893i == var_2.a.a.x;
}

fn func_4(arg_0: u32, arg_1: vec3<bool>, arg_2: Struct_3, arg_3: vec4<u32>) -> vec4<f32> {
    var var_0 = Struct_4(vec2<i32>(abs(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-8002i, -1i, 2147483647i), vec3<i32>(5199i, arg_2.a.a.a.x, -1i)), min(vec3<i32>(0i, arg_2.c.a.a.x, -24448i), vec3<i32>(-32444i, arg_2.a.a.a.x, 41265i)))), _wgslsmith_div_i32(~(-34948i), -1i)), 0u);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1943f, 1226f, -664f, 570f)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(883f, -1000f) + _wgslsmith_f_op_f32(round(111f))), _wgslsmith_f_op_f32(round(-364f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-250f, 2227f) + _wgslsmith_f_op_f32(1042f + -2578f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(184f, -670f))), all(!vec4<bool>(true, arg_1.x, arg_1.x, false)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1367f, -742f, -1000f, -642f))))), vec4<f32>(_wgslsmith_f_op_f32(572f - -366f), 934f, _wgslsmith_f_op_f32(f32(-1f) * -156f), _wgslsmith_f_op_f32(round(204f))), true)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-922f, _wgslsmith_f_op_f32(max(-527f, -1434f)), -928f, _wgslsmith_f_op_f32(select(-975f, -1419f, arg_1.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1683f, 1722f, 1308f, -362f)))));
}

fn func_2(arg_0: Struct_4, arg_1: i32) -> Struct_2 {
    let var_0 = _wgslsmith_add_vec2_u32(~(vec2<u32>(1u, reverseBits(arg_0.b)) & u_input.a), ~u_input.a);
    let var_1 = Struct_4(vec2<i32>(_wgslsmith_add_i32(arg_0.a.x, arg_1), select(-10131i, -1i, all(vec3<bool>(true, true, false))) ^ -1659i), arg_0.b);
    let var_2 = Struct_1(var_1.a);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(func_4(~(46733u << (u_input.a.x % 32u)), vec3<bool>(true, func_3(var_2, vec3<f32>(-987f, -644f, 816f)), true), Struct_3(Struct_2(var_2), _wgslsmith_dot_vec3_i32(vec3<i32>(-18035i, arg_0.a.x, 2147483647i), vec3<i32>(-1i, -1i, 2147483647i)), Struct_2(Struct_1(var_2.a)), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 4294967295u, 7579u), vec3<u32>(57489u, var_1.b, u_input.a.x)), Struct_2(Struct_1(var_2.a))), _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(39217u, var_1.b, 1u, 20062u), vec4<u32>(arg_0.b, 9338u, 18358u, var_0.x)), ~vec4<u32>(1u, 4294967295u, 19771u, 34815u)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(216f * 731f)), _wgslsmith_f_op_vec4_f32(func_4(u_input.a.x, vec3<bool>(false, false, true), Struct_3(Struct_2(Struct_1(vec2<i32>(var_1.a.x, var_2.a.x))), -2147483647i, Struct_2(Struct_1(var_1.a)), var_1.b, Struct_2(var_2)), vec4<u32>(14161u, 41993u, var_1.b, 50713u))).x, _wgslsmith_f_op_f32(-689f - -917f), -1244f))));
    var var_4 = 22703u;
    return Struct_2(Struct_1(vec2<i32>(countOneBits(var_2.a.x) | _wgslsmith_add_i32(-55850i, var_1.a.x), arg_0.a.x)));
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_2) -> u32 {
    var var_0 = select(select(vec3<i32>(func_2(Struct_4(vec2<i32>(arg_1.a.a.x, -1i), 1u), ~33987i).a.a.x, ~_wgslsmith_mod_i32(arg_3.a.a.x, 1i), -(arg_2.a.a.x ^ -1i)), vec3<i32>(1i, ~(-24770i), arg_2.a.a.x), vec3<bool>(any(vec3<bool>(false, false, true)), any(select(vec2<bool>(false, false), vec2<bool>(true, false), false)), true)), vec3<i32>(i32(-1i) * -20503i, max(arg_1.a.a.x, _wgslsmith_div_i32(arg_1.a.a.x, -3560i)) & 0i, -_wgslsmith_add_i32(0i, firstTrailingBit(1i))), !vec3<bool>(all(vec4<bool>(true, true, true, true)), all(vec4<bool>(true, true, false, true)), true));
    let var_1 = Struct_4(_wgslsmith_sub_vec2_i32(var_0.zy, reverseBits(max(arg_1.a.a, arg_1.a.a) >> (~u_input.a % vec2<u32>(32u)))), select(_wgslsmith_clamp_u32(arg_0, select(arg_0, _wgslsmith_mult_u32(u_input.b, 22500u), true), 4294967295u >> ((4294967295u & arg_0) % 32u)), reverseBits(~_wgslsmith_dot_vec2_u32(u_input.a, u_input.a)), true));
    var var_2 = func_2(Struct_4(~vec2<i32>(firstTrailingBit(var_0.x), -arg_3.a.a.x), 7603u), _wgslsmith_div_i32(-3429i, abs(-34979i))).a;
    var var_3 = func_2(Struct_4(arg_3.a.a, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, 30695u), u_input.a), abs(u_input.a.x), arg_0 ^ 0u, arg_0), vec4<u32>(~2652u, max(u_input.b, var_1.b), abs(arg_0), _wgslsmith_add_u32(34137u, 55644u)))), -41785i).a;
    let var_4 = Struct_3(func_2(var_1, ~(arg_2.a.a.x & var_2.a.x) & (reverseBits(var_3.a.x) << (u_input.b % 32u))), ~(-49722i), func_2(Struct_4(abs(vec2<i32>(-1i, -1i)), ~71791u), 1i), 1u, func_2(Struct_4(~vec2<i32>(2147483647i, -2147483647i), _wgslsmith_mult_u32(~52410u, u_input.a.x)), 1i));
    return 4294967295u;
}

fn func_6(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: vec3<bool>, arg_3: i32) -> u32 {
    var var_0 = Struct_4(vec2<i32>(firstLeadingBit(arg_3), -arg_1.x), firstLeadingBit(46186u));
    var_0 = Struct_4(vec2<i32>((8825i | arg_3) ^ _wgslsmith_dot_vec3_i32(~vec3<i32>(25959i, var_0.a.x, arg_3), vec3<i32>(arg_1.x, var_0.a.x, arg_3) & vec3<i32>(-17285i, var_0.a.x, 2147483647i)), _wgslsmith_dot_vec4_i32(firstLeadingBit(_wgslsmith_mult_vec4_i32(arg_1, arg_1)), vec4<i32>(var_0.a.x >> (u_input.b % 32u), _wgslsmith_sub_i32(3935i, arg_3), -23319i, ~5334i))), arg_0.x);
    var_0 = Struct_4(var_0.a, 1u);
    var var_1 = (_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(1518f)), _wgslsmith_f_op_f32(min(-441f, -2238f)))))) <= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_vec4_f32(func_4(var_0.b, arg_2, Struct_3(Struct_2(Struct_1(var_0.a)), -2147483647i, Struct_2(Struct_1(arg_1.yz)), u_input.a.x, Struct_2(Struct_1(vec2<i32>(arg_1.x, -6218i)))), vec4<u32>(1u, u_input.b, 24287u, u_input.a.x))).x, _wgslsmith_f_op_f32(step(-484f, -942f))))) && (_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a.x, -1i), arg_1.ww) | (arg_3 << (1u % 32u)), -_wgslsmith_sub_i32(arg_1.x, arg_1.x)) < arg_3);
    var_0 = Struct_4(firstLeadingBit(vec2<i32>(~(i32(-1i) * -1i), _wgslsmith_dot_vec4_i32(arg_1, _wgslsmith_mod_vec4_i32(arg_1, vec4<i32>(arg_3, 0i, arg_3, -1i))))), reverseBits(var_0.b));
    return max(1u, 28627u);
}

fn func_1() -> vec4<i32> {
    var var_0 = Struct_4(_wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(~select(vec2<i32>(13630i, 0i), vec2<i32>(1i, 2147483647i), vec2<bool>(false, true)), vec2<i32>(-1i) * -vec2<i32>(-1i, 0i)), vec2<i32>(-2147483647i, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2998i, 1i), vec2<i32>(-1866i, -2147483647i)), 5500i)), _wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(7922i, 2147483647i), abs(vec2<i32>(2147483647i, 15349i))), firstTrailingBit(abs(vec2<i32>(1i, -2147483647i))))), func_6(vec4<u32>(u_input.b, func_5(4294967295u, func_2(Struct_4(vec2<i32>(1i, 15570i), u_input.a.x), 39267i), func_2(Struct_4(vec2<i32>(2147483647i, -19624i), u_input.b), -33613i), func_2(Struct_4(vec2<i32>(-4773i, 1i), u_input.b), -1i)), reverseBits(4294967295u << (u_input.a.x % 32u)), ~_wgslsmith_clamp_u32(13096u, u_input.b, u_input.a.x)), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 0i), vec2<i32>(-11316i, -1i)) & (i32(-1i) * -2147483647i), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -5049i, -49633i, 11439i), vec4<i32>(0i, -7061i, -27831i, 1i)), _wgslsmith_mult_i32(1i, 1i)), -12544i, 1i << (u_input.a.x % 32u)), !select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), 1i));
    var var_1 = Struct_4(_wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(abs(-vec2<i32>(var_0.a.x, -36831i)), ~vec2<i32>(31380i, -33595i)), var_0.a ^ firstTrailingBit(vec2<i32>(-39827i, -9340i))), ~(_wgslsmith_clamp_u32(1u, 1u, max(1u, var_0.b)) << (47513u % 32u)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(754f)));
    let var_3 = Struct_1(var_1.a);
    var_0 = Struct_4(var_0.a, (countOneBits(~u_input.a.x) | ~max(var_1.b, var_0.b)) >> ((~_wgslsmith_sub_u32(29374u, 19697u) >> (min(0u << (u_input.a.x % 32u), countOneBits(var_1.b)) % 32u)) % 32u));
    return vec4<i32>(_wgslsmith_sub_i32(firstTrailingBit(-var_0.a.x), var_3.a.x), var_0.a.x, ~(-38035i), -2147483647i) << (_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(4933u, 0u, var_0.b), u_input.b, ~var_1.b, ~var_1.b), vec4<u32>(~13206u, var_1.b, 32103u, select(var_1.b, var_0.b, true))), ~(vec4<u32>(var_0.b, var_0.b, u_input.b, 18023u) | vec4<u32>(56777u, 22433u, 4294967295u, 7982u)) << (~vec4<u32>(var_0.b, var_0.b, var_0.b, var_1.b) % vec4<u32>(32u))) % vec4<u32>(32u));
}

fn func_7(arg_0: vec4<i32>) -> Struct_1 {
    var var_0 = Struct_3(Struct_2(Struct_1(vec2<i32>(_wgslsmith_add_i32(arg_0.x, arg_0.x), arg_0.x))), 0i ^ firstLeadingBit(arg_0.x), Struct_2(Struct_1(firstTrailingBit(_wgslsmith_div_vec2_i32(arg_0.xy, vec2<i32>(arg_0.x, -2147483647i))))), _wgslsmith_mult_u32(~u_input.a.x, ~u_input.a.x), Struct_2(Struct_1(vec2<i32>(arg_0.x, _wgslsmith_add_i32(-46553i, arg_0.x)))));
    let var_1 = Struct_1(var_0.c.a.a);
    let var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-355f, -1768f, -317f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1791f, 1196f, 292f) - vec3<f32>(578f, 238f, -1467f))), vec3<f32>(_wgslsmith_div_f32(-1000f, -1436f), 593f, _wgslsmith_f_op_f32(step(2391f, 2286f))), _wgslsmith_add_i32(arg_0.x, var_0.e.a.a.x) < -24065i)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(1812f)), _wgslsmith_f_op_f32(abs(571f)), -1000f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(923f, -631f, 295f), vec3<f32>(-110f, 1575f, 1330f))))))));
    var_0 = Struct_3(var_0.e, -12307i, var_0.a, u_input.a.x, Struct_2(var_0.c.a));
    var_0 = Struct_3(var_0.c, -(i32(-1i) * -1i), func_2(Struct_4(_wgslsmith_add_vec2_i32(arg_0.xx & vec2<i32>(-1i, 0i), _wgslsmith_mult_vec2_i32(var_1.a, vec2<i32>(var_1.a.x, 0i))), u_input.a.x), 15280i), ~var_0.d, func_2(Struct_4(-_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0.x, var_1.a.x), vec2<i32>(-1i, 38933i), vec2<i32>(arg_0.x, var_0.e.a.a.x)), ~(~0u)), firstTrailingBit(-47770i)));
    return func_2(Struct_4(vec2<i32>(6769i, -57543i), ~_wgslsmith_dot_vec3_u32(select(vec3<u32>(27192u, var_0.d, 59784u), vec3<u32>(var_0.d, u_input.b, 16853u), vec3<bool>(false, true, true)), vec3<u32>(0u, 1u, 1u))), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, var_0.c.a.a.x), vec2<i32>(-23596i, var_0.e.a.a.x) >> (u_input.a % vec2<u32>(32u))), var_1.a.x) | (-arg_0.x & _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(var_0.c.a.a.x, 0i, var_1.a.x)), reverseBits(vec3<i32>(var_1.a.x, arg_0.x, -2147483647i))))).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-countOneBits(abs(vec2<i32>(-2147483647i, -51000i))));
    var var_1 = func_7(~_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(func_1(), ~vec4<i32>(32030i, 1i, -1i, -2147483647i)), _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-2182i, var_0.a.x, var_0.a.x, 6073i), vec4<i32>(-2147483647i, var_0.a.x, var_0.a.x, 19606i)), vec4<i32>(var_0.a.x, 2147483647i, var_0.a.x, var_0.a.x)), -(~vec4<i32>(17672i, -40467i, -2030i, 34940i))));
    var var_2 = var_0;
    var var_3 = func_2(Struct_4(countOneBits(vec2<i32>(var_2.a.x, var_1.a.x | -31678i)), 15832u), var_0.a.x);
    var_3 = func_2(Struct_4(-_wgslsmith_mod_vec2_i32(-vec2<i32>(var_3.a.a.x, var_3.a.a.x), select(var_1.a, var_2.a, true)), ~4294967295u), 33271i);
    var var_4 = vec2<u32>(~_wgslsmith_div_u32(~u_input.a.x, _wgslsmith_dot_vec4_u32(max(vec4<u32>(58014u, 75706u, 4294967295u, u_input.b), vec4<u32>(52280u, 30493u, 24144u, u_input.a.x)), ~vec4<u32>(u_input.b, 7763u, u_input.b, u_input.a.x))), min(_wgslsmith_mod_u32(_wgslsmith_mod_u32(19205u, 24672u) & u_input.a.x, ~firstTrailingBit(1u)), func_5(func_6(vec4<u32>(u_input.a.x, 14609u, u_input.a.x, 53112u), vec4<i32>(var_0.a.x, var_1.a.x, var_2.a.x, var_3.a.a.x), vec3<bool>(false, true, false), -2147483647i), Struct_2(Struct_1(vec2<i32>(var_0.a.x, 29952i))), Struct_2(var_3.a), func_2(Struct_4(vec2<i32>(2147483647i, var_1.a.x), u_input.b), 1i)) >> (u_input.a.x % 32u)));
    var var_5 = func_2(Struct_4(vec2<i32>(var_0.a.x & 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-19799i, var_3.a.a.x, var_2.a.x, -2980i) | vec4<i32>(46672i, -33545i, 0i, var_0.a.x), reverseBits(vec4<i32>(-1i, -9310i, 0i, var_0.a.x)))), _wgslsmith_mod_u32(min(func_5(var_4.x, Struct_2(var_3.a), Struct_2(var_0), Struct_2(var_0)), _wgslsmith_sub_u32(var_4.x, u_input.b)), ~_wgslsmith_div_u32(u_input.b, var_4.x))), ~(-26805i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1404f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1300f - 1076f) + -2191f))), 0i);
}

