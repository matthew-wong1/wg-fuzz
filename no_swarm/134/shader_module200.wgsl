struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: i32,
    d: vec2<bool>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    let var_0 = true;
    let var_1 = Struct_1(global0.xw, u_input.a, (firstLeadingBit(2147483647i) ^ firstTrailingBit(2147483647i)) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, ~u_input.d.x, u_input.e), u_input.b & (vec3<u32>(70364u, u_input.b.x, 4294967295u) << (vec3<u32>(u_input.e, 31283u, u_input.b.x) % vec3<u32>(32u)))) % 32u), select(!select(select(vec2<bool>(true, true), vec2<bool>(false, true), var_0), vec2<bool>(var_0, var_0), false), !vec2<bool>(var_0, var_0), !(!vec2<bool>(false, var_0))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -942f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1f))), global0.x));
    let var_2 = !(!(!vec4<bool>(!var_1.d.x, var_0, all(vec3<bool>(false, false, var_1.d.x)), var_1.d.x)));
    var var_3 = true;
    var var_4 = select(var_2.zz, vec2<bool>(true, all(vec4<bool>(any(var_2.zwx), any(vec4<bool>(false, true, false, true)), u_input.c >= 34761i, !var_0))), var_2.x);
    return ~0u;
}

fn func_2() -> Struct_1 {
    let var_0 = ~(vec3<i32>(u_input.c, 2147483647i, u_input.a ^ 19698i) & vec3<i32>(_wgslsmith_sub_i32(min(u_input.a, -14451i), 23471i), _wgslsmith_sub_i32(select(u_input.c, 27428i, true), _wgslsmith_mod_i32(1i, 33087i)), u_input.c));
    let var_1 = (59262u >> (func_3() % 32u)) > firstTrailingBit(u_input.d.x);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(865f - -191f), global0.x)));
    let var_3 = Struct_1(global0.yw, u_input.a, ~(-u_input.a), select(vec2<bool>(all(vec3<bool>(var_1, var_1, true)) & !var_1, true), select(vec2<bool>(select(var_1, var_1, var_1), true), select(select(vec2<bool>(var_1, var_1), vec2<bool>(var_1, false), var_1), !vec2<bool>(false, var_1), vec2<bool>(false, var_1)), false), !select(select(vec2<bool>(false, var_1), vec2<bool>(false, var_1), var_1), select(vec2<bool>(var_1, var_1), vec2<bool>(var_1, false), var_1), any(vec3<bool>(true, var_1, var_1)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-879f, global0.x, global0.x, global0.x)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.x, global0.x, var_2.x, global0.x), vec4<f32>(var_2.x, var_2.x, 716f, global0.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 1074f, var_2.x, global0.x)))))));
    let var_4 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(220f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(890f, var_2.x))))), -499f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -998f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_3.e) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-var_3.e)))), var_3.e, vec4<bool>(true, all(vec2<bool>(false, true)), !(u_input.c <= u_input.c), !all(vec3<bool>(var_1, var_1, false)))))));
    return var_3;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec3<bool>) -> vec2<f32> {
    global0 = _wgslsmith_f_op_vec4_f32(exp2(arg_1.e));
    var var_0 = func_2();
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(func_2().e)));
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global0.x, 602f))) - arg_0), -696f, _wgslsmith_f_op_f32(f32(-1f) * -825f), _wgslsmith_f_op_f32(floor(-458f))) - _wgslsmith_f_op_vec4_f32(-func_2().e));
    var_0 = func_2();
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(856f, -183f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-324f, global0.x))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-arg_1.e.xy))))), var_0.a)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(global0.zx * _wgslsmith_f_op_vec2_f32(vec2<f32>(2900f, arg_0) + vec2<f32>(-599f, 1600f))))))));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>) -> vec2<i32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1239f + _wgslsmith_f_op_f32(exp2(arg_0.a.x)))), func_2(), !vec3<bool>(!arg_1.x, arg_0.d.x, any(vec3<bool>(arg_0.d.x, arg_0.d.x, arg_0.d.x))))), arg_0.c, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, i32(-1i) * -17495i), -(-vec2<i32>(arg_0.c, 19973i) & _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(arg_0.b, u_input.a), vec2<i32>(2147483647i, u_input.c)))), func_2().d, _wgslsmith_f_op_vec4_f32(arg_0.e + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.e) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(496f, 701f, 2219f, -1977f))))));
    var var_1 = vec4<bool>(var_0.d.x, any(select(select(!vec3<bool>(false, arg_0.d.x, var_0.d.x), vec3<bool>(var_0.d.x, arg_1.x, var_0.d.x), select(vec3<bool>(true, arg_0.d.x, false), vec3<bool>(var_0.d.x, arg_0.d.x, arg_0.d.x), vec3<bool>(true, arg_0.d.x, arg_1.x))), !select(vec3<bool>(arg_0.d.x, arg_0.d.x, false), vec3<bool>(true, arg_1.x, false), vec3<bool>(var_0.d.x, var_0.d.x, true)), select(!vec3<bool>(arg_1.x, var_0.d.x, arg_1.x), vec3<bool>(false, arg_1.x, arg_0.d.x), vec3<bool>(true, true, true)))), var_0.a.x >= -1450f, all(select(!select(vec4<bool>(arg_0.d.x, true, arg_0.d.x, arg_0.d.x), vec4<bool>(true, true, true, arg_1.x), vec4<bool>(arg_1.x, false, arg_1.x, true)), vec4<bool>(arg_0.d.x, false, var_0.d.x & false, all(arg_0.d)), vec4<bool>(var_0.d.x, !arg_0.d.x, arg_0.d.x, all(vec3<bool>(true, arg_0.d.x, false))))));
    let var_2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x))), u_input.a, abs(func_2().c), func_2().d, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_0.e.x, 750f))), _wgslsmith_f_op_f32(f32(-1f) * -360f), arg_0.e.x, _wgslsmith_f_op_vec2_f32(func_4(arg_0.e.x, func_2(), vec3<bool>(arg_0.d.x, false, arg_1.x))).x))));
    global0 = arg_0.e;
    var_1 = select(!select(select(select(vec4<bool>(true, var_1.x, false, false), vec4<bool>(true, var_2.d.x, false, var_0.d.x), vec4<bool>(arg_1.x, false, var_1.x, var_2.d.x)), !vec4<bool>(arg_0.d.x, true, arg_1.x, false), vec4<bool>(false, false, true, false)), !vec4<bool>(false, true, true, var_1.x), !(!vec4<bool>(arg_0.d.x, true, arg_1.x, true))), !select(!select(vec4<bool>(true, true, arg_0.d.x, false), vec4<bool>(true, var_2.d.x, false, var_0.d.x), vec4<bool>(arg_0.d.x, arg_1.x, arg_0.d.x, false)), select(!vec4<bool>(true, var_2.d.x, false, arg_0.d.x), select(vec4<bool>(false, arg_0.d.x, true, false), vec4<bool>(arg_1.x, arg_1.x, var_0.d.x, var_2.d.x), vec4<bool>(false, var_2.d.x, false, true)), select(vec4<bool>(false, var_0.d.x, true, var_1.x), vec4<bool>(arg_0.d.x, false, false, arg_0.d.x), var_1.x)), (28045u << (u_input.d.x % 32u)) > reverseBits(1976u)), arg_1.x);
    return vec2<i32>(~(-2147483647i), ~((var_0.b >> (u_input.b.x % 32u)) ^ (var_2.c << (u_input.d.x % 32u))) & _wgslsmith_dot_vec2_i32((vec2<i32>(20487i, var_0.c) ^ vec2<i32>(0i, -1i)) << (u_input.b.zx % vec2<u32>(32u)), countOneBits(vec2<i32>(u_input.c, 92814i))));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<i32>) -> f32 {
    var var_0 = ~vec4<u32>(u_input.e, u_input.d.x, ~u_input.b.x, ~(~u_input.b.x));
    var var_1 = arg_0.a;
    let var_2 = ~vec4<i32>(1i, ~_wgslsmith_mult_i32(select(1i, arg_0.b, arg_0.d.x), -arg_1.x), _wgslsmith_add_i32(-15324i, -9633i), _wgslsmith_dot_vec4_i32(vec4<i32>(max(-38949i, u_input.c), 13423i, u_input.a, -1i), vec4<i32>(1i, 2147483647i & u_input.c, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -1i, u_input.a), vec3<i32>(1i, u_input.c, 12180i)), -1i)));
    global0 = vec4<f32>(272f, 676f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(2176f, arg_0.e.x)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(arg_0.e.x))))))), _wgslsmith_f_op_f32(floor(316f)));
    var_0 = vec4<u32>(_wgslsmith_sub_u32(~reverseBits(~var_0.x), abs(16035u >> (0u % 32u))), countOneBits(min(countOneBits(62654u ^ var_0.x), 4294967295u)), _wgslsmith_mod_u32(~_wgslsmith_clamp_u32(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 45638u, 0u, 505u), u_input.d), ~var_0.x), 4294967295u), ~var_0.x & var_0.x);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-521f)) - 1002f);
}

fn func_6(arg_0: vec3<f32>, arg_1: vec2<f32>, arg_2: vec3<f32>) -> vec2<f32> {
    let var_0 = vec4<u32>(~(~49464u), select(5030u, 4294967295u, (u_input.a <= -67i) || any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false)))), 0u, countOneBits(u_input.d.x));
    let var_1 = 714f;
    var var_2 = true;
    let var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(var_1, _wgslsmith_f_op_f32(arg_1.x * -363f), !select(true, any(vec4<bool>(true, true, true, true)), func_2().d.x)))));
    let var_4 = vec3<u32>(u_input.d.x, 0u, var_0.x);
    return _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0.x, 1000f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -2147483647i >= u_input.c;
    var var_1 = _wgslsmith_f_op_vec2_f32(func_6(vec3<f32>(-168f, _wgslsmith_f_op_f32(func_5(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, global0.x)), ~48408i, u_input.c, !vec2<bool>(var_0, var_0), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, -1593f, 1000f))), func_1(Struct_1(vec2<f32>(global0.x, 890f), u_input.a, 2147483647i, vec2<bool>(var_0, var_0), vec4<f32>(801f, global0.x, -192f, global0.x)), select(vec2<bool>(true, var_0), vec2<bool>(false, true), var_0)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-843f - 1141f))), -2018f))), vec2<f32>(_wgslsmith_f_op_f32(round(func_2().e.x)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-126f, 1075f), global0.x))), vec3<f32>(_wgslsmith_f_op_f32(func_5(Struct_1(global0.zy, 0i, abs(u_input.c), select(vec2<bool>(false, var_0), vec2<bool>(false, true), false), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1262f, 1806f, global0.x, global0.x) + vec4<f32>(-401f, 474f, global0.x, -673f))), _wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, u_input.a), vec2<i32>(0i, u_input.c)), ~vec2<i32>(-2147483647i, -2147483647i)))), func_2().a.x, _wgslsmith_f_op_f32(min(-858f, _wgslsmith_f_op_vec2_f32(func_4(-319f, Struct_1(global0.yw, -40619i, u_input.c, vec2<bool>(var_0, true), vec4<f32>(global0.x, -745f, global0.x, global0.x)), select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, var_0, var_0), var_0))).x)))));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-func_2().e.zw));
    let var_2 = !(!vec4<bool>(true, true, var_0, var_0));
    let var_3 = vec4<u32>(15957u, _wgslsmith_sub_u32(u_input.d.x, u_input.b.x), ~u_input.d.x, u_input.b.x);
    var var_4 = vec3<bool>(all(!var_2.zw), !(!select(!var_0, var_2.x, var_0 == false)), select(var_2.x, any(var_2), _wgslsmith_f_op_f32(1136f - 1000f) > global0.x));
    var var_5 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(327f, var_1.x))));
    let var_6 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(global0.zw, global0.wx)), global0.zz, any(vec2<bool>(true, var_4.x)))), global0.yz));
    let var_7 = _wgslsmith_sub_i32(max(_wgslsmith_sub_i32(~2664i, -u_input.c), _wgslsmith_mult_i32(u_input.c, 15486i) | ~(-1i)), u_input.c) ^ ~_wgslsmith_mod_i32(522i ^ (u_input.c & u_input.c), func_2().c);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(min(_wgslsmith_mod_vec2_i32(vec2<i32>(var_7, var_7), vec2<i32>(var_7, 1i)) ^ ~vec2<i32>(var_7, -90i), min(vec2<i32>(14610i, 37843i), -vec2<i32>(var_7, 0i)))));
}

