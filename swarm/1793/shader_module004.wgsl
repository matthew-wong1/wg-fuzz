struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<f32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -22079i;

var<private> global1: vec2<i32>;

var<private> global2: f32 = -849f;

var<private> global3: Struct_2 = Struct_2(Struct_1(167f, true, vec3<f32>(-984f, -1335f, 1611f), 1i), Struct_1(983f, false, vec3<f32>(-602f, 157f, -471f), -58588i), Struct_1(787f, true, vec3<f32>(-1173f, -1072f, 1000f), 2147483647i), Struct_1(-145f, false, vec3<f32>(761f, -468f, -1393f), 2147483647i));

var<private> global4: i32;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: vec3<i32>) -> bool {
    var var_0 = firstLeadingBit(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(u_input.a.x, ~4294967295u, 0u, 0u)), vec4<u32>(firstLeadingBit(u_input.a.x << (94670u % 32u)), min(0u, ~u_input.a.x), u_input.a.x, u_input.a.x)));
    var var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(abs(-398f))))), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(33317u, var_0.x), 0u, ~22280u) > u_input.a.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global3.d.c, global3.b.c) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.a.a, -442f, -855f)))), ~reverseBits(i32(-1i) * -1i)), ~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(5046u, 4294967295u, 59679u), firstLeadingBit(vec3<u32>(var_0.x, u_input.a.x, 4294967295u))), var_0.x, ~u_input.a.x, var_0.x));
    global3 = Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.d.c.x) * _wgslsmith_f_op_f32(2208f - global3.b.c.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(global3.c.a))))), var_1.a.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.a.a, 533f, var_1.a.a) + vec3<f32>(596f, global3.c.c.x, global3.d.a)) - _wgslsmith_f_op_vec3_f32(ceil(global3.a.c))) * global3.a.c), arg_0.x), Struct_1(_wgslsmith_f_op_f32(var_1.a.c.x + -1000f), _wgslsmith_dot_vec4_u32(select(vec4<u32>(28591u, 52808u, 1u, 0u), var_1.b, vec4<bool>(global3.b.b, false, global3.c.b, global3.d.b)), ~var_1.b) > u_input.a.x, vec3<f32>(_wgslsmith_f_op_f32(trunc(var_1.a.a)), _wgslsmith_f_op_f32(floor(-1457f)), _wgslsmith_f_op_f32(select(global3.a.a, _wgslsmith_f_op_f32(var_1.a.c.x * global3.b.a), true & global3.d.b))), 6633i), Struct_1(global3.c.c.x, var_1.a.b, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.a, var_1.a.a, var_1.a.c.x)))), arg_0.x), Struct_1(_wgslsmith_div_f32(1259f, global3.c.c.x), any(!(!vec4<bool>(var_1.a.b, false, false, var_1.a.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, global3.c.a, var_1.a.c.x) - var_1.a.c), vec3<f32>(1000f, var_1.a.c.x, 572f)))), global1.x));
    let var_2 = Struct_2(Struct_1(1796f, !(!(global3.d.c.x < global3.b.a)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-324f * global3.c.c.x)), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.a) + _wgslsmith_f_op_f32(select(-496f, global3.c.c.x, global3.b.b)))), _wgslsmith_add_i32(-2147483647i, var_1.a.d)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-1000f, -861f)))) * -320f), true, _wgslsmith_f_op_vec3_f32(-var_1.a.c), global1.x), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_1.a.a, global3.b.a), _wgslsmith_f_op_f32(-global3.b.a), global3.b.b)))), all(select(vec2<bool>(var_1.a.b, global3.c.b), select(vec2<bool>(var_1.a.b, var_1.a.b), vec2<bool>(true, true), false), u_input.a.x >= var_0.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-360f, global3.a.a, -1054f))) * vec3<f32>(1f, 1f, 1f)) + _wgslsmith_f_op_vec3_f32(-global3.b.c)), arg_0.x), var_1.a);
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -364f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -591f))) + _wgslsmith_f_op_f32(f32(-1f) * -884f)));
    return var_1.a.b && false;
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: vec4<u32>) -> u32 {
    global4 = global1.x;
    var var_0 = _wgslsmith_mod_vec2_i32(vec2<i32>(-1i, -_wgslsmith_add_i32(global1.x, 2147483647i)), ~(~reverseBits(~vec2<i32>(global1.x, 0i))));
    var_0 = vec2<i32>(-1i) * -vec2<i32>(~(~global3.d.d), -1i | _wgslsmith_mod_i32(1i, global3.a.d));
    global3 = Struct_2(Struct_1(global3.a.c.x, !(arg_2.x <= 4294967295u), _wgslsmith_f_op_vec3_f32(-arg_0.a.c), _wgslsmith_sub_i32(1i, global3.c.d)), global3.d, Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.a.a))), any(vec4<bool>(true, !arg_0.a.b, !arg_1, true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.a.c + vec3<f32>(1000f, global3.b.c.x, arg_0.a.c.x)), _wgslsmith_f_op_vec3_f32(exp2(global3.b.c))) * global3.d.c), 1i), arg_0.a);
    let var_1 = Struct_3(global3.b, arg_2 << (vec4<u32>(28209u, arg_0.b.x, u_input.a.x & _wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_2.x, 0u), arg_0.b.wyx), 0u) % vec4<u32>(32u)));
    return firstLeadingBit(reverseBits(~max(17713u ^ u_input.a.x, u_input.a.x)));
}

fn func_2(arg_0: vec4<i32>, arg_1: i32) -> vec4<u32> {
    var var_0 = Struct_2(global3.d, global3.c, global3.c, Struct_1(_wgslsmith_f_op_f32(trunc(-1163f)), select(true, all(vec3<bool>(false, global3.b.b, global3.b.b)) || true, true), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(2440f, global3.d.c.x), global3.b.a)), 784f, _wgslsmith_f_op_f32(global3.a.a - _wgslsmith_f_op_f32(max(1000f, global3.a.c.x)))), -2147483647i));
    global4 = global3.d.d;
    var var_1 = false;
    let var_2 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global3.b.a))), true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(2941f, -186f, -477f) + global3.b.c), vec3<f32>(-1140f, -710f, -1982f)))), max(global1.x, reverseBits(abs(global1.x)))), ~vec4<u32>(30390u, u_input.a.x, 4294967295u, u_input.a.x));
    var var_3 = !var_2.a.b | true;
    return _wgslsmith_clamp_vec4_u32(vec4<u32>(~u_input.a.x, _wgslsmith_dot_vec4_u32(var_2.b, var_2.b), ~23451u, ~var_2.b.x), ~(~var_2.b ^ vec4<u32>(0u, 3590u, _wgslsmith_add_u32(u_input.a.x, 111094u), ~0u)), vec4<u32>(func_4(var_2, func_3(-arg_0.zzy), vec4<u32>(98817u, _wgslsmith_mult_u32(0u, 1u), ~38086u, _wgslsmith_dot_vec2_u32(var_2.b.yy, vec2<u32>(u_input.a.x, u_input.a.x)))), min(_wgslsmith_add_u32(~4294967295u, min(u_input.a.x, 22191u)), var_2.b.x), ~countOneBits(var_2.b.x << (var_2.b.x % 32u)), _wgslsmith_sub_u32(1u | var_2.b.x, func_4(Struct_3(var_0.a, var_2.b), false, _wgslsmith_add_vec4_u32(vec4<u32>(60626u, 56931u, var_2.b.x, u_input.a.x), vec4<u32>(var_2.b.x, 1u, u_input.a.x, 4294967295u))))));
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: u32, arg_3: vec2<bool>) -> u32 {
    var var_0 = vec2<bool>(!arg_3.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, _wgslsmith_sub_u32(30508u, 1u)), ~abs(u_input.a)) < ~(42469u & ~u_input.a.x));
    var var_1 = _wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(func_2(_wgslsmith_div_vec4_i32(vec4<i32>(global1.x, -24100i, 1i, 2147483647i), vec4<i32>(global1.x, arg_0.d, 29300i, arg_0.d)), _wgslsmith_add_i32(0i, -12830i)), vec4<u32>(~u_input.a.x, 4294967295u, ~arg_2, 1u)), _wgslsmith_div_vec4_u32(~abs(_wgslsmith_add_vec4_u32(vec4<u32>(0u, arg_2, 5479u, 47036u), vec4<u32>(51575u, 57902u, 15101u, 6781u))), vec4<u32>(abs(_wgslsmith_add_u32(arg_2, 40568u)), _wgslsmith_mod_u32(3978u, arg_2), abs(183u), 4294967295u)));
    let var_2 = ~max(global3.a.d, -9290i);
    var var_3 = _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(4294967295u, arg_1 >> (arg_2 % 32u), ~arg_1, ~u_input.a.x), vec4<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(18351u, u_input.a.x), ~arg_2), ~1u, arg_2, firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 0u, u_input.a.x, arg_2), vec4<u32>(1u, arg_2, arg_1, 1u))))), firstTrailingBit(select(_wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(3954u, 9584u, arg_2, u_input.a.x)), ~vec4<u32>(654u, 15636u, arg_2, 46188u)), reverseBits(select(vec4<u32>(u_input.a.x, arg_1, 6832u, 1u), vec4<u32>(u_input.a.x, arg_1, u_input.a.x, 5114u), arg_0.b)), select(vec4<bool>(arg_0.b, global3.b.b, true, var_0.x), select(vec4<bool>(true, arg_0.b, arg_3.x, global3.c.b), vec4<bool>(true, global3.d.b, arg_0.b, false), arg_0.b), vec4<bool>(true, false, false, false)))), select(max(vec4<u32>(~arg_2, 4294967295u, ~u_input.a.x, countOneBits(arg_2)), vec4<u32>(~1u, ~16582u, _wgslsmith_div_u32(arg_2, 2885u), 4294967295u)), ~_wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, 4294967295u, u_input.a.x, 19325u), vec4<u32>(1u, arg_1, 74187u, arg_1) << (vec4<u32>(1u, 0u, 0u, 41238u) % vec4<u32>(32u))), vec4<bool>(all(!vec4<bool>(global3.a.b, true, false, true)), arg_0.b, global3.d.b || global3.c.b, true)));
    var var_4 = countOneBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(global3.a.d, var_2, ~var_2, 91716i), firstTrailingBit(vec4<i32>(arg_0.d, global3.b.d, global3.a.d, -19975i)) | reverseBits(vec4<i32>(var_2, var_2, -103147i, global3.b.d)), min(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, var_2, var_2, -12454i), vec4<i32>(-23326i, -20401i, global3.d.d, 0i)), vec4<i32>(15218i, 7689i, -16235i, -2147483647i) & vec4<i32>(65553i, global1.x, -19168i, 0i))) << ((~(vec4<u32>(arg_2, arg_2, 50786u, u_input.a.x) >> (vec4<u32>(arg_2, u_input.a.x, 0u, arg_2) % vec4<u32>(32u))) >> (~min(vec4<u32>(arg_1, 4992u, arg_1, 35531u), vec4<u32>(arg_2, 156u, 12516u, arg_2)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    return 1u;
}

fn func_5(arg_0: vec4<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1232f, global3.d.a, global3.a.a, 776f)))))));
    let var_1 = Struct_2(global3.c, global3.d, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(global3.a.a - global3.a.c.x)))), !(_wgslsmith_clamp_i32(-14881i, 1968i, global3.a.d) < (i32(-1i) * -2147483647i)), _wgslsmith_div_vec3_f32(vec3<f32>(-317f, 538f, _wgslsmith_f_op_f32(global3.c.a * 1395f)), _wgslsmith_div_vec3_f32(vec3<f32>(global3.b.c.x, -1000f, 1016f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(607f, 1426f, -1227f)))), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(max(vec4<i32>(global1.x, global1.x, global3.b.d, global1.x), vec4<i32>(global1.x, global1.x, global1.x, global3.b.d)), -vec4<i32>(5386i, 5873i, global3.c.d, global3.b.d)), vec4<i32>(global1.x, global3.d.d >> (arg_0.x % 32u), _wgslsmith_sub_i32(-52600i, 27401i), max(global1.x, global1.x)))), global3.c);
    var var_2 = !select(select(select(select(vec2<bool>(false, global3.a.b), vec2<bool>(true, true), true), select(vec2<bool>(var_1.b.b, global3.b.b), vec2<bool>(false, var_1.b.b), vec2<bool>(true, global3.d.b)), vec2<bool>(false, false)), !(!vec2<bool>(global3.d.b, false)), select(select(vec2<bool>(global3.a.b, true), vec2<bool>(global3.d.b, false), true), select(vec2<bool>(true, false), vec2<bool>(true, global3.a.b), false), !vec2<bool>(true, var_1.c.b))), vec2<bool>(global3.d.b, global3.d.b), false);
    let var_3 = vec3<f32>(var_1.c.a, _wgslsmith_f_op_f32(-1f), -643f);
    var var_4 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(var_3, vec3<f32>(var_1.d.a, -1000f, 281f)))))));
    return Struct_1(global3.b.a, all(!(!select(vec3<bool>(true, false, global3.d.b), vec3<bool>(var_2.x, global3.c.b, true), var_2.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(global3.b.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_3.x, 1041f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.b.c))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.d.c.x, global3.d.c.x, var_0.x), var_3)))), var_3, false))), abs(abs(max(_wgslsmith_mod_i32(-2147483647i, global3.a.d), global3.a.d))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.c.x))), !all(!vec3<bool>(false, false, global3.b.b)), vec3<f32>(-493f, 1582f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global3.d.a)))), ~global1.x), func_5(vec4<u32>(u_input.a.x, _wgslsmith_clamp_u32(39495u, func_1(Struct_1(-1000f, global3.d.b, global3.d.c, -2147483647i), 4294967295u, 0u, vec2<bool>(global3.d.b, true)), ~66066u), 4294967295u, ~4294967295u)), Struct_1(global3.b.c.x, all(select(vec3<bool>(global3.d.b, true, global3.b.b), vec3<bool>(global3.b.b, false, true), global3.a.b)) == !global3.d.b, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-376f, global3.c.a, 1000f) + vec3<f32>(global3.a.a, global3.d.a, -341f))), vec3<f32>(global3.d.a, -597f, _wgslsmith_f_op_f32(-global3.d.c.x))), ~_wgslsmith_add_i32(firstTrailingBit(0i), global1.x)), global3.b);
    global3 = Struct_2(func_5(_wgslsmith_mult_vec4_u32(~firstTrailingBit(vec4<u32>(1u, u_input.a.x, 4294967295u, u_input.a.x)), ~(~vec4<u32>(21837u, u_input.a.x, u_input.a.x, 1u)))), global3.b, func_5(vec4<u32>(u_input.a.x << (37195u % 32u), 4294967295u, func_4(Struct_3(global3.d, vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 105957u)), !global3.c.b, vec4<u32>(u_input.a.x, u_input.a.x, 58208u, 1u)), u_input.a.x)), global3.d);
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.a.c.x - global3.c.c.x), 766f)), true, global3.c.c, _wgslsmith_div_i32(global3.a.d, -(global1.x & global1.x))), Struct_1(_wgslsmith_f_op_f32(floor(364f)), global3.b.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global3.d.c)) * _wgslsmith_div_vec3_f32(global3.b.c, _wgslsmith_f_op_vec3_f32(select(global3.a.c, global3.c.c, true)))), abs(~firstTrailingBit(global3.a.d))), Struct_1(global3.c.c.x, global3.c.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(360f, global3.a.c.x, -621f)), vec3<f32>(global3.b.c.x, 114f, global3.d.a))), global3.c.d), global3.c);
    let var_1 = _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, _wgslsmith_clamp_i32(1i, 2147483647i, -2147483647i), global1.x), select(vec3<i32>(14933i, 1i, 25111i), max(vec3<i32>(-15777i, 2147483647i, global1.x), vec3<i32>(global1.x, 0i, -13454i)), !var_0.d.b)), _wgslsmith_mult_i32(_wgslsmith_sub_i32(global3.c.d, select(var_0.b.d, global1.x, false)), var_0.d.d), _wgslsmith_mult_i32(_wgslsmith_mod_i32(-2147483647i, global1.x >> (4294967295u % 32u)), func_5(vec4<u32>(22557u, 0u, u_input.a.x, u_input.a.x)).d), abs(1i)), max(max(vec4<i32>(global1.x, global3.a.d ^ -1i, _wgslsmith_sub_i32(-13090i, 21892i), global1.x >> (1u % 32u)), reverseBits(-vec4<i32>(1i, -26491i, global3.a.d, global3.c.d))), vec4<i32>(var_0.a.d, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -1i) >> (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u)), vec2<i32>(var_0.c.d, global1.x)), global3.a.d & firstTrailingBit(1i), ~max(30638i, global1.x))));
    global1 = _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(abs(vec2<i32>(var_0.a.d, abs(global3.c.d))), select(var_1.zy, var_1.xy, func_5(~vec4<u32>(u_input.a.x, 61292u, 0u, u_input.a.x)).b)), ~abs(var_1.wy));
    var var_2 = global3.b;
    let var_3 = any(vec3<bool>(!all(vec2<bool>(var_0.b.b, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a.a * 184f)) == 922f, ~firstTrailingBit(34657u) > ~_wgslsmith_sub_u32(35464u, 1u)));
    let var_4 = max(var_1, var_1);
    let var_5 = Struct_3(func_5(vec4<u32>(0u, _wgslsmith_div_u32(u_input.a.x, 25411u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 0u, u_input.a.x), vec3<u32>(4294967295u, 10116u, u_input.a.x)), 4294967295u)), ~(~firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.a.x, u_input.a.x, 0u), vec4<u32>(4294967295u, 53155u, u_input.a.x, u_input.a.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(-(func_5(firstTrailingBit(var_5.b)).d >> (~var_5.b.x % 32u)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(1f)))), reverseBits(select(-var_4.wy, var_1.xy, select(vec2<bool>(true, var_2.b), select(vec2<bool>(global3.a.b, true), vec2<bool>(false, var_3), true), 0i < var_4.x))));
}

