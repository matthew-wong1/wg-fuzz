struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_4,
    d: Struct_1,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 5>;

var<private> global1: Struct_1;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec2<f32>) -> u32 {
    let var_0 = Struct_1(global1.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.b))), global1.b), ~select(-vec2<i32>(2147483647i, global1.c.x), global1.c, global1.a));
    var var_1 = ~abs(~vec2<u32>(4294967295u, u_input.a) & countOneBits(vec2<u32>(u_input.a, 12797u)));
    var_1 = _wgslsmith_add_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 0u) & vec2<u32>(u_input.a, 1u), vec2<u32>(1u, u_input.a) ^ vec2<u32>(var_1.x, 1u)) >> (vec2<u32>(~4294967295u, 4294967295u) % vec2<u32>(32u)), ~select(select(~vec2<u32>(var_1.x, 0u), vec2<u32>(1u, var_1.x), select(var_0.a, vec2<bool>(global1.a.x, var_0.a.x), true)), vec2<u32>(select(14201u, 0u, true), ~var_1.x), select(global1.a, global1.a, !vec2<bool>(global1.a.x, false))));
    var var_2 = 37147u;
    let var_3 = var_0.b;
    return _wgslsmith_mult_u32(u_input.a, _wgslsmith_mult_u32(_wgslsmith_mod_u32(min(~4294967295u, firstLeadingBit(0u)), ~9060u), ~u_input.a));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: i32, arg_3: Struct_5) -> u32 {
    let var_0 = vec4<bool>(arg_0.b.a.x, global1.a.x, global1.a.x, !any(!select(vec4<bool>(global1.a.x, arg_0.a.a.x, arg_0.c.a.x, global1.a.x), vec4<bool>(true, true, arg_0.b.a.x, false), arg_0.c.a.x)));
    let var_1 = func_3(!var_0.x, arg_0.b.b.yz);
    var var_2 = arg_3.c;
    let var_3 = global1.a.x;
    let var_4 = Struct_2(Struct_1(vec2<bool>(var_0.x, true), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-2013f, arg_0.c.b.x, global1.b.x, -2722f)))), vec4<f32>(_wgslsmith_f_op_f32(var_2.a + var_2.a), var_2.a, _wgslsmith_f_op_f32(-global1.b.x), -2408f), any(select(vec2<bool>(var_0.x, global1.a.x), arg_3.a.a, arg_3.d.a)))), vec2<i32>(arg_1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a.c.x, arg_3.d.c.x, arg_1.x, global1.c.x), arg_1))), arg_3.d, arg_0.b, var_2.a);
    return 1u;
}

fn func_4(arg_0: Struct_5, arg_1: bool, arg_2: Struct_5) -> Struct_1 {
    var var_0 = Struct_1(arg_0.a.a, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-arg_2.c.a), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(972f)))), -1082f, -449f))), (_wgslsmith_sub_vec2_i32(arg_0.a.c, -global1.c) ^ global1.c) >> (arg_2.b.xz % vec2<u32>(32u)));
    var var_1 = firstLeadingBit(1i);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-287f)))));
    var_0 = Struct_1(select(arg_2.a.a, global1.a, vec2<bool>(any(select(vec4<bool>(arg_2.d.a.x, true, global1.a.x, var_0.a.x), vec4<bool>(false, true, false, true), false)), all(vec2<bool>(true, true)))), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.a.b.x * 667f), _wgslsmith_f_op_f32(-2839f * 248f))), _wgslsmith_div_f32(var_0.b.x, var_2), (false & global1.a.x) & !arg_0.d.a.x)), global1.b.x, _wgslsmith_f_op_f32(select(arg_2.a.b.x, _wgslsmith_f_op_f32(ceil(arg_2.a.b.x)), true)), arg_0.d.b.x), firstLeadingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(-17566i, 49459i) | arg_2.d.c, vec2<i32>(arg_0.d.c.x, arg_2.d.c.x))) & (vec2<i32>(-arg_0.a.c.x, var_0.c.x) & ~global1.c));
    var_1 = -countOneBits(27931i);
    return arg_2.a;
}

fn func_1() -> bool {
    global1 = func_4(Struct_5(Struct_1(!(!global1.a), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.b.x, global1.b.x, global1.b.x, 317f))))), global1.c), _wgslsmith_div_vec3_u32(vec3<u32>(~4947u, 44008u, u_input.a), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a, u_input.a), vec3<u32>(u_input.a, 1u, u_input.a)), 1u << (u_input.a % 32u), func_2(Struct_2(Struct_1(global1.a, vec4<f32>(-830f, global1.b.x, -983f, -1467f), vec2<i32>(-1i, global1.c.x)), Struct_1(vec2<bool>(true, global1.a.x), vec4<f32>(global1.b.x, global1.b.x, global1.b.x, -831f), vec2<i32>(1i, -54691i)), Struct_1(global1.a, vec4<f32>(global1.b.x, global1.b.x, global1.b.x, -1000f), global1.c), global1.b.x), vec4<i32>(0i, global1.c.x, global1.c.x, -5155i), 37092i, Struct_5(Struct_1(global1.a, vec4<f32>(-425f, 350f, global1.b.x, global1.b.x), vec2<i32>(-7552i, -15942i)), vec3<u32>(u_input.a, 0u, u_input.a), Struct_4(global1.b.x), Struct_1(vec2<bool>(global1.a.x, false), vec4<f32>(global1.b.x, global1.b.x, global1.b.x, -460f), global1.c), vec4<f32>(-191f, 1983f, -346f, 194f))))), Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -697f)), Struct_1(vec2<bool>(global1.a.x, true), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(180f, 106f, global1.b.x, -588f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1.b.x, 569f, -634f, 832f))), global1.a.x & false)), select(_wgslsmith_div_vec2_i32(vec2<i32>(global1.c.x, global1.c.x), global1.c), min(global1.c, vec2<i32>(0i, -1i)), global1.a)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(402f, 641f, global1.b.x, global1.b.x)) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1112f, global1.b.x, global1.b.x, 198f), global1.b)))))), false, Struct_5(Struct_1(select(select(global1.a, vec2<bool>(global1.a.x, global1.a.x), vec2<bool>(true, false)), select(vec2<bool>(false, false), global1.a, vec2<bool>(true, false)), global1.a), vec4<f32>(_wgslsmith_f_op_f32(min(global1.b.x, global1.b.x)), global1.b.x, global1.b.x, global1.b.x), firstLeadingBit(-global1.c)), firstTrailingBit(select(vec3<u32>(u_input.a, u_input.a, 11251u), firstLeadingBit(vec3<u32>(0u, 58149u, u_input.a)), vec3<bool>(true, true, true))), Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.x) - -535f)), Struct_1(select(!global1.a, select(global1.a, global1.a, false), !global1.a), global1.b, ~(-vec2<i32>(global1.c.x, global1.c.x))), vec4<f32>(118f, 929f, global1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.b.x, global1.b.x, global1.a.x))))));
    let var_0 = Struct_2(Struct_1(vec2<bool>(true, any(vec3<bool>(true, true, true))), _wgslsmith_div_vec4_f32(vec4<f32>(833f, global1.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1840f), _wgslsmith_f_op_f32(-global1.b.x)), global1.b), global1.c), func_4(Struct_5(Struct_1(!global1.a, global1.b, vec2<i32>(-1i, global1.c.x)), select(_wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.a, u_input.a), vec3<u32>(54977u, u_input.a, 105846u)), ~vec3<u32>(u_input.a, 17216u, u_input.a), select(vec3<bool>(global1.a.x, false, true), vec3<bool>(true, global1.a.x, true), false)), Struct_4(_wgslsmith_f_op_f32(min(1231f, -1000f))), func_4(Struct_5(Struct_1(vec2<bool>(true, global1.a.x), vec4<f32>(global1.b.x, global1.b.x, 714f, global1.b.x), vec2<i32>(100064i, global1.c.x)), vec3<u32>(0u, u_input.a, 86713u), Struct_4(global1.b.x), Struct_1(global1.a, global1.b, global1.c), global1.b), true, Struct_5(Struct_1(global1.a, vec4<f32>(global1.b.x, 554f, global1.b.x, global1.b.x), vec2<i32>(global1.c.x, global1.c.x)), vec3<u32>(0u, u_input.a, 4294967295u), Struct_4(-451f), Struct_1(global1.a, global1.b, vec2<i32>(global1.c.x, global1.c.x)), vec4<f32>(575f, -286f, 255f, 1475f))), vec4<f32>(732f, global1.b.x, _wgslsmith_f_op_f32(max(global1.b.x, global1.b.x)), _wgslsmith_f_op_f32(sign(global1.b.x)))), any(!select(vec3<bool>(true, global1.a.x, false), vec3<bool>(false, true, true), true)), Struct_5(func_4(Struct_5(Struct_1(vec2<bool>(false, global1.a.x), global1.b, global1.c), vec3<u32>(12281u, u_input.a, u_input.a), Struct_4(-968f), Struct_1(vec2<bool>(false, global1.a.x), vec4<f32>(global1.b.x, 1000f, global1.b.x, global1.b.x), vec2<i32>(global1.c.x, global1.c.x)), vec4<f32>(-951f, global1.b.x, global1.b.x, 268f)), true, Struct_5(Struct_1(vec2<bool>(global1.a.x, true), global1.b, vec2<i32>(0i, global1.c.x)), vec3<u32>(1u, u_input.a, 1u), Struct_4(global1.b.x), Struct_1(global1.a, global1.b, global1.c), vec4<f32>(global1.b.x, 385f, 263f, global1.b.x))), ~vec3<u32>(u_input.a, u_input.a, 1u), Struct_4(-2213f), func_4(Struct_5(Struct_1(global1.a, vec4<f32>(926f, 2414f, 1000f, -919f), vec2<i32>(-47340i, global1.c.x)), vec3<u32>(u_input.a, 4294967295u, u_input.a), Struct_4(global1.b.x), Struct_1(global1.a, global1.b, vec2<i32>(-1i, 1i)), vec4<f32>(-643f, -159f, global1.b.x, 466f)), global1.a.x, Struct_5(Struct_1(global1.a, global1.b, vec2<i32>(-34044i, -1i)), vec3<u32>(u_input.a, u_input.a, u_input.a), Struct_4(-1554f), Struct_1(vec2<bool>(global1.a.x, global1.a.x), global1.b, global1.c), global1.b)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-global1.b))))), func_4(Struct_5(Struct_1(func_4(Struct_5(Struct_1(global1.a, global1.b, global1.c), vec3<u32>(4294967295u, 4294967295u, u_input.a), Struct_4(218f), Struct_1(global1.a, global1.b, global1.c), vec4<f32>(global1.b.x, 2047f, global1.b.x, global1.b.x)), false, Struct_5(Struct_1(vec2<bool>(global1.a.x, false), vec4<f32>(global1.b.x, -123f, 480f, global1.b.x), global1.c), vec3<u32>(u_input.a, 0u, 5150u), Struct_4(global1.b.x), Struct_1(global1.a, global1.b, global1.c), global1.b)).a, _wgslsmith_f_op_vec4_f32(min(global1.b, vec4<f32>(543f, 707f, 904f, 1227f))), vec2<i32>(global1.c.x, global1.c.x)), select(vec3<u32>(4294967295u, u_input.a, u_input.a), ~vec3<u32>(u_input.a, 15003u, u_input.a), vec3<bool>(true, true, true)), Struct_4(global1.b.x), Struct_1(global1.a, _wgslsmith_div_vec4_f32(global1.b, vec4<f32>(global1.b.x, -1476f, global1.b.x, 1026f)), select(vec2<i32>(global1.c.x, 2147483647i), global1.c, global1.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(global1.b)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(864f, global1.b.x, -2009f, global1.b.x)))), true, Struct_5(Struct_1(global1.a, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1017f, 1238f, global1.b.x, global1.b.x))), max(global1.c, vec2<i32>(global1.c.x, global1.c.x))), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.a, 0u) ^ vec3<u32>(8504u, u_input.a, u_input.a), ~vec3<u32>(u_input.a, u_input.a, u_input.a)), Struct_4(global1.b.x), Struct_1(global1.a, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1.b.x, -1457f, global1.b.x, global1.b.x))), vec2<i32>(-30973i, 24461i)), vec4<f32>(global1.b.x, _wgslsmith_f_op_f32(-global1.b.x), _wgslsmith_f_op_f32(global1.b.x + global1.b.x), global1.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-597f, global1.b.x))))));
    global0 = array<vec3<f32>, 5>();
    global1 = var_0.c;
    global0 = array<vec3<f32>, 5>();
    return !(!all(select(select(vec2<bool>(var_0.c.a.x, false), vec2<bool>(false, global1.a.x), true), global1.a, vec2<bool>(true, false))));
}

fn func_5(arg_0: vec4<f32>, arg_1: f32, arg_2: vec3<bool>, arg_3: u32) -> Struct_1 {
    global0 = array<vec3<f32>, 5>();
    var var_0 = ~(-(~vec2<i32>(0i, i32(-1i) * -84773i)));
    var_0 = max(~vec2<i32>(global1.c.x, global1.c.x), vec2<i32>(0i & ((i32(-1i) * -2147483647i) & _wgslsmith_sub_i32(2147483647i, var_0.x)), ~global1.c.x));
    let var_1 = select(!select(select(vec4<bool>(global1.a.x, true, true, global1.a.x), !vec4<bool>(true, true, global1.a.x, global1.a.x), arg_1 < -226f), select(vec4<bool>(global1.a.x, true, global1.a.x, arg_2.x), vec4<bool>(false, false, false, true), !vec4<bool>(true, arg_2.x, arg_2.x, global1.a.x)), all(vec4<bool>(arg_2.x, false, global1.a.x, arg_2.x)) || false), vec4<bool>(global1.a.x, !(753f >= _wgslsmith_f_op_f32(global1.b.x - global1.b.x)), true, true), vec4<bool>(all(global1.a), all(vec3<bool>(any(vec4<bool>(arg_2.x, false, global1.a.x, arg_2.x)), all(arg_2.xz), true)), true, true));
    var var_2 = vec4<u32>(_wgslsmith_add_u32(54547u, ~u_input.a), ~21505u, _wgslsmith_div_u32(u_input.a, arg_3), ~_wgslsmith_sub_u32(~4294967295u, ~arg_3 | _wgslsmith_clamp_u32(arg_3, 1u, 0u)));
    return Struct_1(func_4(Struct_5(Struct_1(!arg_2.zz, vec4<f32>(-350f, arg_1, global1.b.x, arg_0.x), vec2<i32>(global1.c.x, -7344i) | vec2<i32>(8603i, global1.c.x)), vec3<u32>(u_input.a, _wgslsmith_div_u32(u_input.a, 0u), firstLeadingBit(arg_3)), Struct_4(_wgslsmith_f_op_f32(select(global1.b.x, -405f, var_1.x))), Struct_1(!var_1.zz, _wgslsmith_f_op_vec4_f32(global1.b * vec4<f32>(-1877f, -1316f, arg_1, global1.b.x)), global1.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(-852f, arg_1, 148f, global1.b.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 1798f, arg_0.x, arg_0.x)))), !arg_2.x, Struct_5(Struct_1(var_1.yx, global1.b, ~global1.c), (vec3<u32>(4294967295u, 58410u, arg_3) | var_2.zxy) | var_2.ywz, Struct_4(arg_0.x), func_4(Struct_5(Struct_1(vec2<bool>(var_1.x, arg_2.x), vec4<f32>(873f, 833f, -1000f, global1.b.x), global1.c), var_2.wwy, Struct_4(global1.b.x), Struct_1(vec2<bool>(true, var_1.x), vec4<f32>(global1.b.x, -385f, -1000f, -1798f), global1.c), global1.b), !arg_2.x, Struct_5(Struct_1(arg_2.xx, global1.b, vec2<i32>(var_0.x, global1.c.x)), var_2.yyz, Struct_4(global1.b.x), Struct_1(vec2<bool>(arg_2.x, arg_2.x), vec4<f32>(arg_0.x, global1.b.x, 549f, -901f), vec2<i32>(global1.c.x, 18036i)), global1.b)), _wgslsmith_f_op_vec4_f32(global1.b * _wgslsmith_f_op_vec4_f32(-global1.b)))).a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(329f - 380f) + _wgslsmith_div_f32(global1.b.x, global1.b.x)), _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(max(arg_1, arg_0.x))), _wgslsmith_f_op_f32(ceil(arg_1)), -1000f)), firstLeadingBit(min(_wgslsmith_add_vec2_i32(vec2<i32>(17567i, 40829i), vec2<i32>(-2147483647i, global1.c.x)), global1.c)) >> (select(vec2<u32>(~var_2.x, reverseBits(arg_3)), vec2<u32>(~arg_3, ~4294967295u), arg_2.zy) % vec2<u32>(32u)));
}

fn func_6(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_2, arg_3: u32) -> Struct_5 {
    global1 = func_5(arg_2.c.b, func_4(Struct_5(arg_1, _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(4294967295u, 4294967295u, arg_3)) & ~vec3<u32>(u_input.a, u_input.a, arg_3), Struct_4(_wgslsmith_f_op_f32(global1.b.x + arg_2.d)), Struct_1(!arg_1.a, arg_1.b, _wgslsmith_clamp_vec2_i32(arg_1.c, vec2<i32>(global1.c.x, 10572i), vec2<i32>(42491i, arg_2.b.c.x))), vec4<f32>(-1000f, _wgslsmith_f_op_f32(653f - arg_1.b.x), 592f, _wgslsmith_f_op_f32(f32(-1f) * -894f))), any(arg_2.a.a), Struct_5(arg_1, firstLeadingBit(vec3<u32>(arg_3, 33536u, 25958u)) ^ (vec3<u32>(0u, arg_3, 4294967295u) >> (vec3<u32>(arg_3, arg_3, u_input.a) % vec3<u32>(32u))), Struct_4(_wgslsmith_f_op_f32(abs(-1048f))), func_4(Struct_5(Struct_1(arg_1.a, arg_1.b, vec2<i32>(global1.c.x, arg_2.a.c.x)), vec3<u32>(34171u, 21918u, u_input.a), Struct_4(-808f), Struct_1(arg_2.b.a, vec4<f32>(global1.b.x, arg_1.b.x, global1.b.x, -1180f), vec2<i32>(arg_2.b.c.x, global1.c.x)), global1.b), global1.c.x <= global1.c.x, Struct_5(arg_1, vec3<u32>(arg_3, arg_3, u_input.a), Struct_4(arg_1.b.x), arg_1, vec4<f32>(-2639f, 881f, global1.b.x, arg_1.b.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.x, arg_2.a.b.x, global1.b.x, 716f))))).b.x, select(vec3<bool>(true, true, true), vec3<bool>(select(true, !global1.a.x, global1.a.x), arg_2.c.a.x, func_1()), vec3<bool>((global1.c.x < 46194i) || arg_2.a.a.x, func_1(), arg_1.a.x)), arg_3);
    let var_0 = arg_2.a.b.x;
    let var_1 = global1.c.x;
    let var_2 = Struct_5(func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, 1315f, 445f, 1000f) - global1.b)) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.x, global1.b.x, var_0, -1454f)), _wgslsmith_f_op_vec4_f32(trunc(arg_2.b.b))))), _wgslsmith_f_op_f32(floor(282f)), !select(vec3<bool>(global1.a.x, false, arg_2.c.a.x), vec3<bool>(true, global1.a.x, global1.a.x), vec3<bool>(true, false, true)), 7855u), ~firstTrailingBit(firstLeadingBit(vec3<u32>(1u, u_input.a, 0u))), Struct_4(_wgslsmith_div_f32(-1367f, _wgslsmith_f_op_f32(floor(510f)))), arg_2.b, arg_2.c.b);
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(646f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(141f, 343f)), var_2.a.b.x), vec3<f32>(-1213f, _wgslsmith_f_op_f32(sign(arg_2.d)), _wgslsmith_f_op_f32(step(arg_2.d, _wgslsmith_f_op_f32(721f - -177f))))));
    return Struct_5(Struct_1(var_2.a.a, global1.b, _wgslsmith_mod_vec2_i32(var_2.a.c, firstLeadingBit(func_4(Struct_5(Struct_1(global1.a, vec4<f32>(var_2.e.x, arg_1.b.x, var_2.a.b.x, 529f), arg_1.c), var_2.b, Struct_4(-448f), arg_1, global1.b), var_2.a.a.x, var_2).c))), reverseBits(_wgslsmith_add_vec3_u32(~(vec3<u32>(4294967295u, var_2.b.x, arg_3) ^ var_2.b), _wgslsmith_sub_vec3_u32(var_2.b ^ var_2.b, select(var_2.b, vec3<u32>(34039u, arg_3, 22317u), arg_0.a)))), var_2.c, arg_2.a, _wgslsmith_f_op_vec4_f32(-global1.b));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 5>();
    let var_0 = func_6(Struct_3(true), func_5(global1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-183f))), vec3<bool>(all(vec2<bool>(true, false)), !func_1(), false), 1u), Struct_2(func_5(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1.b.x, global1.b.x, -266f, -1016f))), -142f, vec3<bool>(true, true, true), u_input.a), func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1647f, global1.b.x, global1.b.x, global1.b.x)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.b.x, -953f, 102f, -210f)))), 270f, select(vec3<bool>(global1.a.x, true, true), vec3<bool>(global1.a.x, global1.a.x, false), false), 4294967295u), func_4(Struct_5(func_4(Struct_5(Struct_1(global1.a, vec4<f32>(global1.b.x, -194f, 855f, 386f), vec2<i32>(-22199i, 1i)), vec3<u32>(51728u, u_input.a, u_input.a), Struct_4(-523f), Struct_1(global1.a, vec4<f32>(382f, global1.b.x, global1.b.x, 832f), global1.c), vec4<f32>(global1.b.x, -735f, global1.b.x, global1.b.x)), true, Struct_5(Struct_1(vec2<bool>(global1.a.x, global1.a.x), vec4<f32>(-1058f, global1.b.x, -389f, global1.b.x), vec2<i32>(2147483647i, 15416i)), vec3<u32>(u_input.a, u_input.a, u_input.a), Struct_4(global1.b.x), Struct_1(vec2<bool>(global1.a.x, true), global1.b, global1.c), vec4<f32>(686f, global1.b.x, -1000f, -774f))), ~vec3<u32>(4294967295u, 60588u, u_input.a), Struct_4(-136f), func_5(global1.b, -260f, vec3<bool>(false, false, global1.a.x), 32039u), vec4<f32>(global1.b.x, 1000f, global1.b.x, global1.b.x)), false, Struct_5(func_4(Struct_5(Struct_1(global1.a, global1.b, global1.c), vec3<u32>(11221u, u_input.a, 1u), Struct_4(global1.b.x), Struct_1(global1.a, vec4<f32>(553f, global1.b.x, global1.b.x, -835f), global1.c), vec4<f32>(global1.b.x, global1.b.x, 1000f, -285f)), global1.a.x, Struct_5(Struct_1(global1.a, vec4<f32>(-485f, global1.b.x, 144f, 1209f), global1.c), vec3<u32>(u_input.a, 44672u, 10660u), Struct_4(global1.b.x), Struct_1(global1.a, global1.b, vec2<i32>(global1.c.x, -1i)), vec4<f32>(global1.b.x, global1.b.x, 1285f, global1.b.x))), vec3<u32>(u_input.a, u_input.a, 4294967295u), Struct_4(286f), Struct_1(global1.a, vec4<f32>(global1.b.x, global1.b.x, 515f, -1000f), global1.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.x, -394f, global1.b.x, global1.b.x)))), _wgslsmith_div_f32(global1.b.x, -1000f)), ~(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 0u, u_input.a, 0u), vec4<u32>(u_input.a, 32363u, u_input.a, u_input.a)), abs(vec4<u32>(u_input.a, 10144u, 4294967295u, u_input.a))) >> (~(~u_input.a) % 32u)));
    global1 = Struct_1(vec2<bool>(var_0.a.a.x, global1.a.x), global1.b, firstTrailingBit(var_0.d.c ^ var_0.d.c));
    let var_1 = -318f;
    global1 = Struct_1(func_4(func_6(Struct_3(var_0.a.a.x), var_0.a, Struct_2(Struct_1(global1.a, var_0.a.b, global1.c), func_4(var_0, true, Struct_5(var_0.a, var_0.b, Struct_4(1584f), Struct_1(vec2<bool>(false, var_0.a.a.x), global1.b, vec2<i32>(global1.c.x, 45215i)), global1.b)), func_5(global1.b, -380f, vec3<bool>(true, true, var_0.a.a.x), var_0.b.x), var_0.a.b.x), 0u), !var_0.a.a.x, func_6(Struct_3(global1.c.x <= 0i), func_4(var_0, all(vec2<bool>(true, global1.a.x)), func_6(Struct_3(false), var_0.a, Struct_2(var_0.a, Struct_1(var_0.a.a, global1.b, var_0.d.c), var_0.d, var_1), var_0.b.x)), Struct_2(var_0.a, func_4(var_0, false, var_0), var_0.d, _wgslsmith_f_op_f32(max(var_0.c.a, global1.b.x))), 1u)).a, vec4<f32>(var_0.d.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-408f, 848f))), _wgslsmith_f_op_f32(min(var_0.a.b.x, -268f))), ~(vec2<i32>(-1i) * -(var_0.d.c ^ var_0.d.c)));
    let var_2 = _wgslsmith_f_op_f32(exp2(global1.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(~4479u, vec4<u32>(~48174u, ~(u_input.a << (u_input.a % 32u)) | 1u, firstLeadingBit(var_0.b.x), 1u), abs(_wgslsmith_add_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(var_0.a.c.x, -32089i, var_0.d.c.x), _wgslsmith_add_vec3_i32(vec3<i32>(global1.c.x, global1.c.x, var_0.d.c.x), vec3<i32>(global1.c.x, 1i, 0i)))));
}

