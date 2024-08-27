struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_1() -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(229f)))), -327f));
    global0 = u_input.c;
    let var_1 = ~abs(_wgslsmith_dot_vec3_i32(u_input.b, _wgslsmith_mod_vec3_i32(u_input.b, ~vec3<i32>(0i, u_input.a.x, -12153i))));
    var var_2 = all(!(!select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(false, true), all(vec2<bool>(false, false)))));
    var var_3 = ~0u;
    return var_1;
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = 1u;
    var var_1 = max(~arg_0.c, var_0);
    let var_2 = u_input.d.x;
    let var_3 = arg_0;
    var var_4 = countOneBits(~_wgslsmith_dot_vec3_u32(max(vec3<u32>(u_input.d.x, 27554u, 34935u) ^ vec3<u32>(var_2, 0u, arg_0.c), min(u_input.d, u_input.d)), vec3<u32>(var_2, select(0u, arg_0.c, var_3.b), var_3.c)));
    return -411f == _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -347f))) - -1457f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -663f))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: u32) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(1168f + arg_2.a.x), _wgslsmith_f_op_f32(step(arg_2.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_2.a.x)), -247f))), arg_0.a.x)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.xz) - vec2<f32>(-869f, arg_2.a.x)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.x, var_0.x)) + _wgslsmith_f_op_vec2_f32(-var_0.zy))))), arg_2.b, _wgslsmith_add_u32(2535u, 45220u));
    var_0 = vec3<f32>(var_1.a.x, arg_2.a.x, var_0.x);
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(floor(var_0.x))) - var_1.a), arg_0.b & (true || (4294967295u < arg_2.c)), ~(~arg_3));
    var_2 = arg_0;
    return any(!(!vec4<bool>(!arg_2.b, var_1.b, arg_2.b, true)));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: vec2<u32>) -> Struct_1 {
    let var_0 = true;
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(arg_1.a, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(arg_1.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0))))))), func_4(arg_1, !select(select(vec2<bool>(false, true), vec2<bool>(arg_1.b, arg_1.b), false), vec2<bool>(true, true), var_0 | true), Struct_1(_wgslsmith_f_op_vec2_f32(-arg_1.a), func_3(arg_1), ~arg_2.x << (_wgslsmith_div_u32(33320u, 1u) % 32u)), u_input.d.x >> (abs(0u) % 32u)), u_input.c);
    let var_2 = var_1.c;
    global0 = countOneBits(var_2);
    var var_3 = arg_1.a.x;
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.a)), !func_4(Struct_1(_wgslsmith_f_op_vec2_f32(var_1.a + var_1.a), func_4(arg_1, vec2<bool>(true, true), Struct_1(vec2<f32>(arg_1.a.x, arg_0), var_0, arg_2.x), 4294967295u), 38420u), select(vec2<bool>(var_1.b, true), select(vec2<bool>(true, false), vec2<bool>(var_0, var_0), vec2<bool>(var_1.b, var_0)), vec2<bool>(arg_1.b, true)), Struct_1(vec2<f32>(arg_1.a.x, arg_1.a.x), var_1.b, 1u & var_1.c), _wgslsmith_clamp_u32(69432u << (u_input.d.x % 32u), 10328u & var_1.c, ~var_2)), ~abs(countOneBits(arg_2.x) & firstLeadingBit(var_2)));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_1) -> vec3<bool> {
    global0 = u_input.d.x;
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -687f)), arg_0.x)), func_4(arg_1, !select(!vec2<bool>(true, arg_1.b), !vec2<bool>(arg_1.b, arg_1.b), select(vec2<bool>(true, false), vec2<bool>(arg_1.b, true), arg_1.b)), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1398f, arg_1.a.x))), true, select(arg_1.c | u_input.c, ~arg_1.c, arg_0.x < arg_1.a.x)), 50710u), _wgslsmith_div_u32(~abs(_wgslsmith_clamp_u32(u_input.c, 4294967295u, arg_1.c)), 28820u));
    var_0 = arg_1;
    global0 = firstLeadingBit(~(~var_0.c));
    global0 = _wgslsmith_mult_u32(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(~39237u, _wgslsmith_dot_vec2_u32(vec2<u32>(2096u, arg_1.c), u_input.d.yy)), ~(func_2(arg_1.a.x, arg_1, vec2<u32>(1u, var_0.c)).c | _wgslsmith_sub_u32(arg_1.c, arg_1.c)), ~firstLeadingBit(var_0.c)), 7983u);
    return !select(vec3<bool>(arg_1.b, !any(vec2<bool>(false, true)), any(vec4<bool>(false, false, true, true))), select(!vec3<bool>(var_0.b, false, var_0.b), select(vec3<bool>(true, true, true), select(vec3<bool>(true, arg_1.b, var_0.b), vec3<bool>(arg_1.b, false, false), arg_1.b), !arg_1.b), vec3<bool>(var_0.b, !arg_1.b, !var_0.b)), vec3<bool>(!arg_1.b, any(select(vec2<bool>(true, var_0.b), vec2<bool>(true, arg_1.b), vec2<bool>(var_0.b, false))), false));
}

fn func_6(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec2<i32>, arg_3: Struct_1) -> i32 {
    var var_0 = ~u_input.a.x;
    var var_1 = vec4<bool>(arg_0.b, arg_1.x, arg_1.x, true);
    var var_2 = Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(arg_3.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_3.a.x)))), _wgslsmith_f_op_vec2_f32(arg_3.a + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_3.a)))), (true && arg_1.x) || all(vec4<bool>(true, true, true, any(vec3<bool>(arg_0.b, arg_3.b, arg_0.b)))), max(~countOneBits(45105u), _wgslsmith_add_u32(~u_input.c, arg_0.c)));
    let var_3 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-1000f, -579f)), _wgslsmith_div_f32(var_2.a.x, arg_3.a.x))), var_2.a.x)), arg_0, min(firstLeadingBit(~u_input.d.yy), firstTrailingBit(u_input.d.yy)));
    var var_4 = -2168f;
    return max(abs(max(i32(-1i) * -1i, -2147483647i)), u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d.x;
    let var_1 = -func_1() > (min(u_input.b.x, u_input.b.x) & -(~(-1478i)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-390f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(207f * -652f), true))))));
    var var_3 = -343f;
    let var_4 = _wgslsmith_mod_vec2_i32(~(~vec2<i32>(-23673i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 26823i, u_input.b.x), u_input.a.wzx))), ~vec2<i32>(_wgslsmith_sub_i32(u_input.b.x, u_input.a.x), -2147483647i >> (u_input.d.x % 32u)));
    let var_5 = vec4<u32>(u_input.d.x >> ((u_input.c | ~reverseBits(u_input.d.x)) % 32u), min(4294967295u, abs(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d.x, 70996u, u_input.d.x, 4294967295u), vec4<u32>(4294967295u, u_input.d.x, 0u, u_input.c)), vec4<u32>(42692u, u_input.d.x, 9135u, 1u)))), ~(~u_input.c), ~u_input.d.x);
    var var_6 = func_6(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-985f)) - _wgslsmith_f_op_f32(338f + 520f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-715f + 297f))), var_1, min(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(var_5, var_5), var_5), ~var_5.x)), select(!(!select(vec3<bool>(var_1, true, true), vec3<bool>(var_1, false, false), false)), !func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1249f, 398f, 787f)), func_2(-677f, Struct_1(vec2<f32>(1489f, -595f), true, 4294967295u), vec2<u32>(var_5.x, u_input.c))), !vec3<bool>(func_5(vec3<f32>(-1000f, -336f, 670f), Struct_1(vec2<f32>(-1207f, -524f), var_1, 0u)).x, true, !var_1)), countOneBits(u_input.b.yz), func_2(1000f, func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(206f * -938f)), Struct_1(vec2<f32>(1158f, 1000f), !var_1, 55646u), vec2<u32>(abs(18186u), _wgslsmith_clamp_u32(43762u, 1u, 4294967295u))), vec2<u32>(63106u, _wgslsmith_mod_u32(4294967295u >> (var_5.x % 32u), var_5.x))));
    var var_7 = u_input.d;
    var_6 = -u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(1695f, ~u_input.d.x);
}

