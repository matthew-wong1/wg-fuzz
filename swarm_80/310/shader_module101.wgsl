struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec4<f32>,
    d: Struct_1,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(53555i, 0i, 2147483647i, 2147483647i);

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>) -> u32 {
    global0 = select(min(firstLeadingBit(~abs(vec4<i32>(5929i, arg_1.x, -37768i, arg_0.d.a))), _wgslsmith_clamp_vec4_i32(select(vec4<i32>(-1i, global0.x, global0.x, 33987i), vec4<i32>(2147483647i, arg_1.x, 2147483647i, arg_0.b), true) ^ _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.b, arg_1.x, 29362i, global0.x), vec4<i32>(arg_0.b, global0.x, global0.x, 2147483647i), vec4<i32>(global0.x, arg_1.x, -21650i, arg_1.x)), ~vec4<i32>(global0.x, 1i, 9246i, arg_0.a.a), -(~vec4<i32>(arg_0.d.a, arg_1.x, arg_0.a.a, arg_0.a.a)))), vec4<i32>(abs(~(0i | global0.x)), 60252i, arg_1.x, -arg_1.x | _wgslsmith_div_i32(~(-2147483647i), _wgslsmith_mod_i32(arg_0.b, global0.x))), false);
    let var_0 = !select(vec2<bool>(true, select(true, arg_1.x <= 0i, true)), !select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(false, false), true), arg_0.e.x >= arg_0.c.x), select(vec2<bool>(true, true), vec2<bool>(true, all(vec4<bool>(true, false, false, true))), any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false))));
    let var_1 = Struct_2(arg_0.a, -abs(arg_1.x), vec4<f32>(arg_0.c.x, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(346f - arg_0.e.x)))), arg_0.c.x), arg_0.a, vec2<f32>(220f, _wgslsmith_f_op_f32(f32(-1f) * -331f)));
    global0 = ~abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.a.a >> (1u % 32u), -59698i, 1i, -14161i), _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(13470i, -1i, 1i, 2147483647i), vec4<i32>(arg_0.d.a, 44714i, 2147483647i, var_1.d.a), vec4<i32>(global0.x, -268i, arg_1.x, arg_0.b)), select(vec4<i32>(-2147483647i, var_1.a.a, global0.x, arg_0.a.a), vec4<i32>(arg_1.x, 0i, -14226i, 3712i), var_0.x)), abs(vec4<i32>(1i, 31365i, arg_1.x, arg_1.x))));
    let var_2 = Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, var_1.d.a, arg_1.x, -15913i) ^ vec4<i32>(-2147483647i, global0.x, var_1.b, arg_1.x), vec4<i32>(17546i, arg_0.d.a, global0.x, arg_0.a.a)), -31553i), -vec2<i32>(select(0i, arg_0.b, false), arg_1.x)));
    return _wgslsmith_div_u32(_wgslsmith_div_u32(u_input.b, 1412u) ^ _wgslsmith_mod_u32(~u_input.b, 22333u), u_input.a.x) & u_input.a.x;
}

fn func_4(arg_0: vec4<u32>) -> f32 {
    global0 = vec4<i32>(global0.x, global0.x, min(-global0.x, -global0.x), -42899i);
    var var_0 = -global0.yz;
    var var_1 = vec2<i32>(select(_wgslsmith_div_i32(select(var_0.x, var_0.x, arg_0.x > 30042u), global0.x), ~3767i, !any(vec4<bool>(true, true, true, true))), global0.x);
    global0 = select(~vec4<i32>(_wgslsmith_dot_vec3_i32(global0.www & global0.yxw, vec3<i32>(global0.x, global0.x, var_1.x)), select(var_0.x, -1i, all(vec3<bool>(true, true, false))), 0i ^ countOneBits(global0.x), i32(-1i) * -12210i), firstTrailingBit(-max(~vec4<i32>(var_0.x, 24743i, global0.x, var_1.x), -vec4<i32>(var_0.x, 7118i, var_0.x, var_1.x))), any(vec4<bool>(true | any(vec3<bool>(true, true, false)), true, select(true, true, true), (arg_0.x ^ 23965u) <= ~u_input.a.x)));
    let var_2 = ~_wgslsmith_dot_vec2_i32(~vec2<i32>(52933i, 2147483647i) & (vec2<i32>(-2147483647i, 18602i) << (u_input.a.zz % vec2<u32>(32u))), vec2<i32>(1i, ~2147483647i)) >> (_wgslsmith_div_u32(1u, ~(arg_0.x >> (~u_input.a.x % 32u))) % 32u);
    return -527f;
}

fn func_2(arg_0: bool) -> f32 {
    let var_0 = Struct_1(select(countOneBits(_wgslsmith_mult_i32(-7863i, global0.x)), max(firstLeadingBit(-16295i), _wgslsmith_dot_vec4_i32(vec4<i32>(27011i, global0.x, global0.x, -2147483647i), vec4<i32>(global0.x, global0.x, global0.x, 43523i) & vec4<i32>(-13339i, 2147483647i, 11933i, 2147483647i))), true));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, -616f)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-868f + 519f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(657f * _wgslsmith_f_op_f32(abs(382f)))), 911f));
    var_1 = _wgslsmith_f_op_f32(func_4(vec4<u32>(u_input.b, _wgslsmith_div_u32(~func_3(Struct_2(var_0, -36666i, vec4<f32>(-106f, -1264f, 1203f, var_2.x), Struct_1(var_0.a), vec2<f32>(289f, 716f)), vec2<i32>(var_0.a, global0.x)), reverseBits(1u)), u_input.b, reverseBits(0u))));
    global0 = vec4<i32>(-12593i, 0i, firstTrailingBit(~var_0.a), var_0.a);
    return var_2.x;
}

fn func_5(arg_0: bool, arg_1: u32, arg_2: vec2<f32>) -> vec4<i32> {
    let var_0 = all(!select(!(!vec3<bool>(false, arg_0, arg_0)), vec3<bool>(!arg_0, false && arg_0, false), select(!vec3<bool>(true, false, arg_0), select(vec3<bool>(false, arg_0, false), vec3<bool>(false, arg_0, arg_0), false), arg_2.x <= -867f)));
    var var_1 = vec3<bool>(arg_0, arg_0, all(!vec4<bool>(true, var_0 && false, u_input.b > u_input.b, true)));
    return abs(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(~(-vec4<i32>(18404i, global0.x, global0.x, -57472i)), vec4<i32>(-79999i, reverseBits(-1i), global0.x, _wgslsmith_sub_i32(global0.x, global0.x))), vec4<i32>(global0.x, -1i, -1i, -1i) >> (firstTrailingBit(reverseBits(vec4<u32>(27342u, 0u, u_input.b, 5457u))) % vec4<u32>(32u))));
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: bool) -> Struct_2 {
    var var_0 = any(select(!vec4<bool>(true, arg_2, all(vec2<bool>(false, arg_2)), true), vec4<bool>(arg_2, arg_2 | any(vec3<bool>(arg_2, true, arg_2)), all(vec3<bool>(arg_2, arg_2, arg_2)), !arg_2 && select(arg_2, arg_2, false)), select(select(!vec4<bool>(true, true, arg_2, false), !vec4<bool>(arg_2, arg_2, false, arg_2), true), !vec4<bool>(arg_2, arg_2, true, arg_2), (arg_2 || false) && !arg_2)));
    var var_1 = arg_0.a;
    let var_2 = 19533u << (~u_input.a.x % 32u);
    global0 = -func_5(true, max(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2, u_input.b, u_input.a.x, 28592u) & vec4<u32>(var_2, u_input.b, u_input.b, 1u), vec4<u32>(57855u, 1u, u_input.b, var_2) >> (vec4<u32>(u_input.a.x, var_2, 54580u, var_2) % vec4<u32>(32u))), 4294967295u), vec2<f32>(_wgslsmith_f_op_f32(func_2(true)), _wgslsmith_f_op_f32(f32(-1f) * -735f)));
    return Struct_2(arg_0.d, 0i, vec4<f32>(_wgslsmith_f_op_f32(939f - -1500f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(778f - -1000f)), _wgslsmith_f_op_f32(trunc(arg_1)), -2239f), arg_0.a, _wgslsmith_f_op_vec2_f32(floor(arg_0.e)));
}

fn func_6(arg_0: i32, arg_1: Struct_2) -> f32 {
    var var_0 = vec3<bool>(any(vec4<bool>(true, true, ~1u != _wgslsmith_add_u32(4294967295u, u_input.a.x), true)), select(any(!select(vec2<bool>(true, true), vec2<bool>(true, false), false)), true, any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), u_input.b == 21762u))), true);
    var_0 = vec3<bool>(~reverseBits(u_input.b) < u_input.b, true, !var_0.x);
    global0 = vec4<i32>(2431i, arg_1.d.a, max(~(~1i), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(8699i, arg_0), arg_0, -19981i, _wgslsmith_clamp_i32(arg_1.a.a, arg_1.a.a, arg_0)), vec4<i32>(arg_1.a.a, arg_1.b, -1i, 41283i) & ~vec4<i32>(arg_1.a.a, 2147483647i, -36279i, 35789i))), _wgslsmith_mod_i32(1i, abs(arg_0)));
    let var_1 = func_1(Struct_2(func_1(Struct_2(func_1(Struct_2(Struct_1(global0.x), -2147483647i, arg_1.c, Struct_1(arg_0), vec2<f32>(478f, -377f)), 2232f, var_0.x).d, reverseBits(arg_0), arg_1.c, func_1(arg_1, 954f, true).d, arg_1.e), -1000f, var_0.x).a, arg_0, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-683f, -1353f, arg_1.e.x, arg_1.e.x) * arg_1.c) - _wgslsmith_f_op_vec4_f32(-arg_1.c)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c.x, 406f, 1102f, arg_1.e.x)) + arg_1.c)), func_1(Struct_2(arg_1.a, _wgslsmith_dot_vec3_i32(global0.xwx, global0.yzw), _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, -658f, 168f, arg_1.c.x), arg_1.c), arg_1.d, _wgslsmith_div_vec2_f32(vec2<f32>(-484f, arg_1.e.x), arg_1.e)), func_1(arg_1, arg_1.c.x, any(vec3<bool>(false, var_0.x, true))).e.x, true).d, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.c.x, 1039f))), _wgslsmith_f_op_f32(182f - _wgslsmith_f_op_f32(1629f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.x)))), !any(!(!vec3<bool>(false, false, var_0.x)))).a;
    let var_2 = global0.xwy;
    return _wgslsmith_f_op_f32(func_4(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.b, _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 22036u), u_input.a.x) | _wgslsmith_div_vec4_u32(select(vec4<u32>(u_input.a.x, 48689u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 0u, 1u, 2565u), var_0.x), ~vec4<u32>(1u, 63356u, u_input.a.x, 5815u)), _wgslsmith_div_vec4_u32(vec4<u32>(74315u, 1u, ~u_input.a.x, abs(u_input.a.x)), vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.a, u_input.a), u_input.a.x, u_input.a.x, ~0u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = firstLeadingBit(~(~vec4<i32>(global0.x, 1i, 2147483647i, global0.x)) >> (max(vec4<u32>(u_input.a.x, 1u, abs(u_input.b), 1u), ~(~vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.a.x))) % vec4<u32>(32u)));
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-980f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -244f))));
    var var_1 = Struct_1(i32(-1i) * -global0.x);
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_6(-2147483647i, func_1(Struct_2(Struct_1(1i), -50333i, vec4<f32>(var_0.x, 1089f, var_0.x, -1531f), Struct_1(-38134i), vec2<f32>(var_0.x, 1589f)), var_0.x, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1028f, _wgslsmith_f_op_f32(step(-835f, -1862f)))) * var_0.x))), var_0.x);
    let var_2 = ~(~vec2<i32>(~_wgslsmith_dot_vec3_i32(global0.wzx, vec3<i32>(var_1.a, 1i, -56753i)), global0.x));
    var var_3 = vec3<u32>(1u, min(select(~u_input.b, 23718u, true) | firstTrailingBit(1u), 4294967295u), _wgslsmith_mod_u32(abs(63061u >> (u_input.b % 32u)), 6403u) & 65445u);
    global0 = abs(-vec4<i32>(-2147483647i, global0.x, _wgslsmith_dot_vec3_i32(func_5(false, 47055u, vec2<f32>(-1200f, -211f)).zyw, vec3<i32>(var_1.a, -23890i, var_1.a)), 2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(firstLeadingBit(var_3.xx) | countOneBits(_wgslsmith_add_vec2_u32(vec2<u32>(var_3.x, 4294967295u), var_3.zz))), _wgslsmith_f_op_f32(-var_0.x), var_3.yx);
}

