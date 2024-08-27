struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec4<u32>,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec4<f32>(1381f, 304f, 451f, -349f), -762f, vec4<i32>(-43203i, -16898i, -1i, 58132i), 4294967295u, 9565u), vec4<f32>(-1006f, 399f, 2137f, 737f), vec4<u32>(4294967295u, 1u, 4294967295u, 4294967295u), Struct_1(vec4<f32>(-1120f, 636f, 1366f, -1349f), -1000f, vec4<i32>(43654i, i32(-2147483648), 1i, -19934i), 0u, 0u), 17320i);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec3<bool>) -> f32 {
    global0 = Struct_2(global0.d, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.b - global0.a.b)), global0.b.x), global0.d.a.x, global0.a.b, global0.d.b), vec4<u32>(_wgslsmith_clamp_u32(15139u, 34156u, firstTrailingBit(global0.c.x)), ~1u, _wgslsmith_mult_u32(global0.a.e, ~(1u << (global0.a.d % 32u))), abs(firstTrailingBit(1u))), global0.d, u_input.a);
    var var_0 = Struct_2(global0.d, global0.d.a, reverseBits(reverseBits(vec4<u32>(24694u ^ global0.c.x, global0.a.d, u_input.b & 0u, 4294967295u))), global0.d, u_input.a);
    let var_1 = Struct_3(Struct_2(global0.d, global0.b, _wgslsmith_mult_vec4_u32(~(~var_0.c), vec4<u32>(69633u, firstLeadingBit(var_0.d.d), ~18882u, max(46695u, u_input.b))), global0.a, -13313i));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_0.d.a.x * -105f), 765f, _wgslsmith_f_op_f32(f32(-1f) * -301f)) - var_0.a.a.zyw)));
    var var_3 = var_1;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_3.a.a.a.x, var_1.a.a.b), var_1.a.d.a.x)));
}

fn func_2() -> u32 {
    var var_0 = u_input.a ^ (i32(-1i) * -1i);
    global0 = Struct_2(global0.d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.b, 309f, _wgslsmith_f_op_f32(func_3(vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1230f))))), global0.c, Struct_1(_wgslsmith_f_op_vec4_f32(-global0.b), _wgslsmith_f_op_f32(func_3(vec3<bool>(true, true, true))), min(-global0.d.c, global0.d.c), ~(~u_input.b) & 43706u, 18019u), global0.e);
    let var_1 = min(countOneBits(global0.d.c.x) | 0i, ~(-(-global0.d.c.x ^ _wgslsmith_sub_i32(global0.d.c.x, -1i))));
    var var_2 = Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-304f - _wgslsmith_f_op_f32(1717f * 507f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x)), 430f), _wgslsmith_f_op_f32(-global0.d.b), -u_input.c, 33179u, _wgslsmith_div_u32(global0.d.e, abs(global0.c.x ^ global0.a.d))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.a.a)), global0.c, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -208f), global0.d.a.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-808f)), _wgslsmith_f_op_f32(floor(global0.a.b)))), _wgslsmith_f_op_f32(global0.d.b * 696f)), _wgslsmith_f_op_f32(-907f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) * global0.d.b)), -u_input.c, ~min(firstTrailingBit(13636u), reverseBits(u_input.b)), 9391u), 0i);
    var_2 = Struct_2(var_2.d, vec4<f32>(_wgslsmith_f_op_f32(var_2.d.a.x - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_2.a.a.x * var_2.a.a.x)))), global0.a.a.x, 1f, var_2.b.x), var_2.c, var_2.a, u_input.c.x);
    return global0.a.d;
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: vec2<i32>) -> Struct_1 {
    global0 = Struct_2(global0.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(global0.d.a - vec4<f32>(-352f, global0.d.a.x, 159f, global0.a.a.x)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -432f), arg_1.a.b, _wgslsmith_f_op_f32(-668f * 872f), 1331f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.a.x, -1000f, arg_1.d.b, -399f) + arg_1.d.a))))), ~(vec4<u32>(~u_input.b, global0.a.d, 1u, _wgslsmith_mod_u32(0u, 43280u)) << (~global0.c % vec4<u32>(32u))), Struct_1(vec4<f32>(-1428f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-545f, -1415f) * global0.a.b), -394f, _wgslsmith_f_op_f32(select(global0.b.x, _wgslsmith_f_op_f32(max(770f, 438f)), false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -585f) - _wgslsmith_div_f32(arg_1.b.x, -729f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d.a.x))), vec4<i32>(22560i, _wgslsmith_div_i32(0i, arg_1.a.c.x) ^ min(global0.a.c.x, 0i), -1i, 3271i), func_2(), ~13525u), u_input.a);
    var var_0 = 42459u;
    var_0 = firstLeadingBit(max(u_input.b, _wgslsmith_dot_vec3_u32(~reverseBits(arg_1.c.xyx), global0.c.zww)));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global0.b.x), 888f, _wgslsmith_div_f32(global0.b.x, 1000f), _wgslsmith_f_op_f32(f32(-1f) * -2749f)) + _wgslsmith_f_op_vec4_f32(-global0.d.a)), -2573f, _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(global0.a.c, ~vec4<i32>(u_input.a, 1i, 14293i, arg_2.x)), max(u_input.c ^ vec4<i32>(-2147483647i, u_input.c.x, u_input.a, arg_1.d.c.x), global0.d.c)), ~(~_wgslsmith_dot_vec2_u32(global0.c.yz, vec2<u32>(u_input.b, 4294967295u))), _wgslsmith_sub_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, arg_1.c.x, 6852u), vec3<u32>(u_input.b, arg_1.c.x, u_input.b)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.d.a) + vec4<f32>(-1000f, global0.a.b, -1093f, arg_1.a.a.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.b, -320f, arg_1.b.x, arg_1.d.b)), vec4<f32>(591f, 528f, global0.a.b, 1729f)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.b), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1.b.x, global0.a.b, global0.b.x, -1519f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(global0.d.a)))))), vec4<u32>(_wgslsmith_mult_u32(reverseBits(reverseBits(global0.d.d)), 1u), 0u, max(~(u_input.b ^ 1u), ~arg_1.d.d >> (4294967295u % 32u)), 4294967295u), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(195f, -116f, 241f, -859f))))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(784f, -1837f, -168f, -360f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1001f, arg_1.a.a.x, -1265f, global0.d.b) * vec4<f32>(-1000f, 945f, -1395f, global0.a.a.x)), select(vec4<bool>(false, false, false, true), vec4<bool>(false, arg_0, false, arg_0), vec4<bool>(true, arg_0, arg_0, false))))), -718f, _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, arg_2.x, u_input.a, -1i) | select(vec4<i32>(arg_1.a.c.x, 0i, -30839i, u_input.c.x), vec4<i32>(0i, global0.e, global0.d.c.x, 0i), vec4<bool>(true, arg_0, arg_0, arg_0)), select(global0.d.c, arg_1.a.c, vec4<bool>(false, false, true, arg_0)) & vec4<i32>(-16889i, 1i, -65608i, -2147483647i)), firstLeadingBit(78418u), 4294967295u), _wgslsmith_dot_vec2_i32(reverseBits(_wgslsmith_clamp_vec2_i32(u_input.c.wx, arg_2, vec2<i32>(u_input.a, -1i) & arg_2)), vec2<i32>(-1i) * -(arg_2 << (vec2<u32>(29140u, global0.d.e) % vec2<u32>(32u)))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-var_1.b.zyx);
    return Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f * -376f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.a.a.x))), arg_1.a.b) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, 774f, var_1.d.b, global0.a.b) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.b, 670f, -1000f, 1038f) - var_1.b))))), -342f, global0.d.c, ~(_wgslsmith_dot_vec4_u32(reverseBits(arg_1.c), arg_1.c) << (4294967295u % 32u)), 1u);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: i32, arg_3: vec2<u32>) -> u32 {
    global0 = Struct_2(global0.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(global0.d.a)), global0.a.a) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.a - arg_0.a)), _wgslsmith_f_op_vec4_f32(sign(global0.d.a)))), _wgslsmith_sub_vec4_u32(abs(vec4<u32>(48096u, ~global0.c.x, 39825u, abs(1845u))), vec4<u32>(_wgslsmith_mod_u32(arg_0.d, max(u_input.b, arg_0.d)), global0.d.e, _wgslsmith_sub_u32(28793u, global0.d.e), func_2())), Struct_1(arg_0.a, global0.b.x, vec4<i32>(_wgslsmith_div_i32(arg_2 | global0.a.c.x, _wgslsmith_mult_i32(-55045i, u_input.a)), u_input.c.x << (0u % 32u), 2240i, i32(-1i) * -global0.d.c.x), _wgslsmith_dot_vec2_u32(countOneBits(max(vec2<u32>(arg_1.x, arg_3.x), vec2<u32>(arg_3.x, 12322u))), ~arg_1.wz), ~func_1(select(false, true, true), Struct_2(Struct_1(vec4<f32>(global0.a.a.x, -406f, 837f, -857f), 706f, vec4<i32>(arg_0.c.x, arg_0.c.x, -17001i, u_input.c.x), u_input.b, arg_1.x), arg_0.a, vec4<u32>(global0.c.x, 1u, arg_0.e, arg_0.e), global0.a, arg_2), vec2<i32>(1i, arg_2)).e), global0.a.c.x);
    var var_0 = global0.a;
    let var_1 = -global0.a.c.yxy;
    var var_2 = Struct_3(Struct_2(global0.d, arg_0.a, ~vec4<u32>(1u, 4294967295u, global0.a.d, var_0.d) | _wgslsmith_div_vec4_u32(~global0.c, max(global0.c, vec4<u32>(global0.d.d, 53249u, arg_0.d, 4294967295u))), func_1(true, Struct_2(arg_0, var_0.a, _wgslsmith_mod_vec4_u32(global0.c, arg_1), Struct_1(vec4<f32>(arg_0.b, 519f, -1144f, -358f), 3227f, u_input.c, var_0.e, arg_1.x), 2147483647i), _wgslsmith_div_vec2_i32(select(arg_0.c.yz, arg_0.c.yz, vec2<bool>(false, false)), global0.a.c.wx << (arg_3 % vec2<u32>(32u)))), var_0.c.x));
    var var_3 = Struct_3(Struct_2(Struct_1(global0.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.d.a.x) - _wgslsmith_f_op_f32(trunc(2146f))), _wgslsmith_sub_vec4_i32(var_0.c ^ vec4<i32>(-1i, 29906i, -1i, var_2.a.d.c.x), arg_0.c >> (vec4<u32>(u_input.b, 12288u, 15281u, 15195u) % vec4<u32>(32u))), ~arg_0.d, arg_0.e), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(571f, 575f, var_0.b, -609f)))) - vec4<f32>(_wgslsmith_f_op_f32(abs(-333f)), 916f, _wgslsmith_f_op_f32(min(2341f, global0.b.x)), arg_0.b)), global0.c, func_1((var_0.a.x >= -1034f) | false, Struct_2(Struct_1(arg_0.a, var_2.a.d.a.x, vec4<i32>(arg_2, 2147483647i, arg_0.c.x, u_input.a), global0.a.d, arg_1.x), vec4<f32>(-371f, var_0.b, arg_0.b, var_0.b), _wgslsmith_mod_vec4_u32(vec4<u32>(48841u, 38157u, arg_3.x, 21521u), vec4<u32>(0u, arg_3.x, arg_3.x, var_2.a.a.d)), func_1(false, Struct_2(global0.a, vec4<f32>(400f, -1915f, -1379f, arg_0.a.x), global0.c, global0.d, var_1.x), global0.d.c.ww), 2147483647i), -var_2.a.d.c.wx), u_input.c.x));
    return ~(~var_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -25504i < -firstTrailingBit(u_input.c.x ^ 1i);
    var var_1 = global0.a.a.yy;
    var_1 = global0.d.a.yy;
    let var_2 = vec2<u32>(u_input.b, _wgslsmith_mult_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, global0.c.x) & global0.c.xwz, global0.c.zyy), _wgslsmith_mult_u32(u_input.b & global0.c.x, func_4(func_1(false, Struct_2(Struct_1(vec4<f32>(756f, -844f, var_1.x, var_1.x), -1193f, global0.d.c, 0u, global0.c.x), vec4<f32>(var_1.x, var_1.x, global0.a.b, -1000f), global0.c, Struct_1(global0.b, -509f, global0.d.c, 10421u, 4294967295u), 2147483647i), u_input.c.xz), _wgslsmith_add_vec4_u32(vec4<u32>(global0.d.e, 5534u, global0.d.e, global0.d.e), global0.c), abs(-18584i), select(vec2<u32>(u_input.b, 68669u), global0.c.zw, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(166f, global0.a.c.yy >> (vec2<u32>(1u, 9921u) % vec2<u32>(32u)), vec4<i32>(global0.d.c.x, 34300i, firstLeadingBit(_wgslsmith_add_i32(37251i, u_input.a)), _wgslsmith_clamp_i32(-(i32(-1i) * -1i), _wgslsmith_dot_vec4_i32(global0.d.c >> (global0.c % vec4<u32>(32u)), ~vec4<i32>(2147483647i, u_input.c.x, u_input.a, global0.d.c.x)), -41776i)));
}

