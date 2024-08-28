struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<f32>(866f, -468f, 265f), vec4<f32>(-497f, -118f, -1640f, -1395f));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec3<f32>) -> f32 {
    let var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(global0.b.x + arg_0.x), -481f, -575f), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.x, _wgslsmith_f_op_f32(-global0.b.x), global0.a.x, -1689f) + vec4<f32>(-143f, -672f, _wgslsmith_f_op_f32(-1588f - arg_0.x), _wgslsmith_f_op_f32(-arg_0.x))))));
    var var_1 = Struct_2(var_0, any(select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true))) & any(vec2<bool>(true, select(true, true, true))));
    var var_2 = vec4<i32>(u_input.a, u_input.c.x, _wgslsmith_add_i32(reverseBits(~(-54239i)), -u_input.c.x) >> (u_input.b % 32u), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 0i, _wgslsmith_dot_vec2_i32(u_input.c.xy, u_input.c.zx), -28812i), _wgslsmith_mod_vec4_i32(-vec4<i32>(1i, 2147483647i, -2147483647i, u_input.c.x), vec4<i32>(1i, u_input.c.x, u_input.c.x, 1i) >> (vec4<u32>(0u, u_input.b, u_input.b, u_input.b) % vec4<u32>(32u)))), -(~abs(15435i))));
    var_2 = _wgslsmith_clamp_vec4_i32(vec4<i32>(-_wgslsmith_mod_i32(~14993i, var_2.x), ~_wgslsmith_dot_vec3_i32(u_input.c ^ var_2.yzy, vec3<i32>(var_2.x, var_2.x, var_2.x)), u_input.a, -var_2.x), _wgslsmith_div_vec4_i32(vec4<i32>(i32(-1i) * -12758i, u_input.a << (u_input.b % 32u), var_2.x & u_input.a, _wgslsmith_mult_i32(var_2.x, u_input.c.x)), ~(~vec4<i32>(2147483647i, -388i, u_input.c.x, u_input.a))) & vec4<i32>(u_input.c.x, max(u_input.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-10433i, 0i), vec2<i32>(u_input.a, u_input.c.x))), -23323i, 1i), vec4<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(45566i, 25617i, -2147483647i), vec3<i32>(11058i, ~(-33141i), u_input.a)), -1i, min(2147483647i | var_2.x, ~firstLeadingBit(-5631i)), abs(-abs(var_2.x))));
    let var_3 = !select(select(vec3<bool>(var_1.b, true, false), vec3<bool>(true, any(vec3<bool>(false, true, false)), false || var_1.b), true), !(!select(vec3<bool>(var_1.b, false, var_1.b), vec3<bool>(var_1.b, var_1.b, false), vec3<bool>(false, true, false))), select(!vec3<bool>(var_1.b, var_1.b, true), !select(vec3<bool>(var_1.b, true, true), vec3<bool>(true, false, false), false), !vec3<bool>(false, true, var_1.b)));
    return _wgslsmith_f_op_f32(-var_1.a.a.x);
}

fn func_2() -> Struct_1 {
    global0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x * global0.b.x)))), 729f, _wgslsmith_f_op_f32(-global0.b.x)), _wgslsmith_div_vec4_f32(global0.b, vec4<f32>(407f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-603f, global0.b.x)))), global0.a.x, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(1566f, global0.b.x, global0.b.x) - vec3<f32>(1551f, 1000f, -1027f)))))));
    global0 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1806f, global0.b.x, 2675f) - vec3<f32>(global0.a.x, 868f, global0.a.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1512f, global0.b.x, global0.a.x)))), _wgslsmith_div_vec3_f32(vec3<f32>(global0.b.x, 445f, global0.b.x), _wgslsmith_f_op_vec3_f32(global0.a - global0.a)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1228f, global0.b.x, -981f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-831f, -228f, global0.a.x) - vec3<f32>(1000f, -353f, 963f)))) - global0.b.yyz)), global0.b);
    var var_0 = Struct_1(global0.b.zzy, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.x, _wgslsmith_f_op_f32(step(global0.a.x, global0.b.x)), _wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_div_f32(1797f, global0.a.x)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.a.x, -818f, global0.b.x, 2351f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.x, global0.b.x, 333f, global0.a.x)), vec4<bool>(true, true, true, true)))))));
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.a - global0.b.zyx) - var_0.b.wwy), _wgslsmith_f_op_vec4_f32(abs(var_0.b)));
    let var_1 = Struct_2(Struct_1(var_0.a, _wgslsmith_f_op_vec4_f32(-global0.b)), false);
    return Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1455f, var_0.b.x, global0.b.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.b.x, var_1.a.a.x, 668f) - vec3<f32>(var_0.a.x, var_1.a.b.x, -722f)))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(var_1.a.a + vec3<f32>(global0.b.x, 1673f, global0.a.x)), _wgslsmith_f_op_vec3_f32(exp2(var_1.a.a))))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, var_0.a.x, 415f, var_0.b.x)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-var_1.a.b)))))));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: vec3<u32>) -> u32 {
    global0 = func_2();
    let var_0 = Struct_2(arg_1, all(!vec3<bool>(arg_3.x > 15127u, any(vec2<bool>(true, arg_0.x)), !arg_0.x)));
    var var_1 = vec4<bool>(true, all(select(!arg_0, select(!arg_0, arg_0, !arg_0), select(arg_0, vec2<bool>(false, var_0.b), arg_0))), true, _wgslsmith_dot_vec3_u32(arg_3, ~vec3<u32>(26035u, 4294967295u, u_input.b)) > 43993u);
    var_1 = select(vec4<bool>(var_1.x && var_0.b, var_0.b, var_0.b, false), select(select(select(!vec4<bool>(arg_0.x, arg_0.x, false, var_1.x), !vec4<bool>(var_0.b, true, true, var_1.x), any(vec4<bool>(true, arg_0.x, arg_0.x, false))), select(select(vec4<bool>(var_1.x, true, arg_0.x, false), vec4<bool>(var_1.x, false, false, true), vec4<bool>(arg_0.x, var_0.b, false, var_1.x)), select(vec4<bool>(arg_0.x, true, true, var_1.x), vec4<bool>(var_1.x, true, var_1.x, arg_0.x), vec4<bool>(true, false, var_1.x, false)), vec4<bool>(arg_0.x, var_0.b, var_1.x, var_0.b)), !select(vec4<bool>(false, var_0.b, arg_0.x, true), vec4<bool>(var_1.x, false, arg_0.x, false), false)), !vec4<bool>(false, arg_2.x < 2147483647i, select(arg_0.x, false, var_0.b), any(vec3<bool>(var_0.b, arg_0.x, false))), !vec4<bool>(true, true, any(vec3<bool>(var_1.x, false, true)), !var_0.b)), !(arg_2.x == -(arg_2.x << (19096u % 32u))));
    var var_2 = firstTrailingBit(vec3<u32>(max(81762u, u_input.b) ^ u_input.b, ~u_input.b, arg_3.x) | ~abs(vec3<u32>(u_input.b, 1u, 94163u) ^ vec3<u32>(arg_3.x, u_input.b, arg_3.x)));
    return arg_3.x;
}

fn func_4(arg_0: u32, arg_1: vec2<bool>) -> bool {
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(sign(global0.a)), global0.b);
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.a) - global0.b.xyy), global0.b);
    global0 = func_2();
    var var_0 = firstLeadingBit(_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 43191i, -1i, u_input.c.x), -vec4<i32>(-1i, u_input.c.x, u_input.a, -1i)), countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, 2147483647i, -54362i, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, -20714i))), -reverseBits(vec4<i32>(u_input.c.x, u_input.c.x, 833i, u_input.c.x)))) ^ _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, -12538i), _wgslsmith_clamp_vec3_i32(vec3<i32>(0i, 31526i, u_input.a), vec3<i32>(u_input.c.x, 0i, -1i), vec3<i32>(u_input.c.x, u_input.c.x, -4278i))), ~1i, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(u_input.c.yz, vec2<i32>(48446i, u_input.c.x)), abs(u_input.c.x)), _wgslsmith_sub_i32(u_input.a | -2147483647i, 62576i)), vec4<i32>(-1i | _wgslsmith_dot_vec2_i32(u_input.c.yx, vec2<i32>(-47462i, -14261i)), u_input.c.x, (u_input.a | u_input.c.x) & 1i, u_input.a));
    let var_1 = arg_1.x;
    return arg_1.x;
}

fn func_5(arg_0: Struct_2) -> bool {
    let var_0 = (_wgslsmith_dot_vec4_u32(select(reverseBits(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)), vec4<u32>(1u, 11460u, 0u, u_input.b), true), vec4<u32>(0u, abs(u_input.b), u_input.b, select(27174u, u_input.b, true))) == ~(u_input.b >> (_wgslsmith_div_u32(u_input.b, 13636u) % 32u))) && any(vec3<bool>(!(u_input.a <= u_input.a), any(vec3<bool>(arg_0.b, arg_0.b, arg_0.b)), (u_input.c.x <= u_input.c.x) && !arg_0.b));
    let var_1 = _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(-(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, -3181i, -1i, u_input.a), vec4<i32>(16096i, u_input.c.x, u_input.a, 1i)) & max(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, 1i), vec4<i32>(u_input.c.x, 10811i, -45157i, u_input.a))), vec4<i32>(-1i, firstLeadingBit(_wgslsmith_clamp_i32(u_input.c.x, 2147483647i, 0i)), _wgslsmith_mult_i32(-u_input.a, _wgslsmith_div_i32(13266i, u_input.c.x)), u_input.a)), ~max(vec4<i32>(u_input.a, u_input.c.x, 0i, 40048i) ^ select(vec4<i32>(1i, u_input.a, u_input.c.x, u_input.c.x), vec4<i32>(u_input.c.x, 2147483647i, u_input.a, -72544i), vec4<bool>(true, arg_0.b, true, false)), vec4<i32>(_wgslsmith_clamp_i32(u_input.a, u_input.c.x, -1i), _wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(u_input.a, 0i, u_input.a)), ~u_input.c.x, u_input.a)));
    global0 = func_2();
    let var_2 = _wgslsmith_f_op_f32(ceil(-1486f));
    let var_3 = !vec3<bool>(!(~4294967295u == u_input.b), true, reverseBits(u_input.c.x) == 0i);
    return true;
}

fn func_6(arg_0: bool, arg_1: bool) -> Struct_2 {
    var var_0 = Struct_2(func_2(), all(vec3<bool>(global0.a.x <= global0.a.x, arg_1, func_5(Struct_2(Struct_1(vec3<f32>(global0.a.x, global0.a.x, global0.a.x), global0.b), true)))));
    let var_1 = select(u_input.a, max(-1i, u_input.a), arg_1);
    var var_2 = var_0.a;
    let var_3 = Struct_2(Struct_1(global0.b.xzx, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-783f, var_2.a.x, -1000f, -254f)))))), all(!vec3<bool>(!arg_1, false, any(vec3<bool>(false, true, false)))));
    var var_4 = select((max(-vec3<i32>(16257i, u_input.c.x, 1i), _wgslsmith_mod_vec3_i32(vec3<i32>(24589i, var_1, var_1), u_input.c)) ^ ~(vec3<i32>(var_1, u_input.c.x, -9179i) | u_input.c)) >> ((max(vec3<u32>(u_input.b, u_input.b, u_input.b) | vec3<u32>(u_input.b, 4294967295u, 4294967295u), vec3<u32>(1u, u_input.b, u_input.b)) >> (~_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 31088u, 6918u), vec3<u32>(u_input.b, 12529u, 4294967295u), vec3<u32>(u_input.b, 0u, 0u)) % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(u_input.c, _wgslsmith_clamp_vec3_i32(u_input.c, select(u_input.c, vec3<i32>(u_input.c.x, var_1, u_input.c.x), true), vec3<i32>(min(0i, 0i), 2147483647i, -47780i))), vec3<bool>(arg_0, !(!(!arg_1)), global0.b.x >= _wgslsmith_f_op_f32(min(1000f, _wgslsmith_div_f32(var_2.a.x, var_0.a.b.x)))));
    return Struct_2(func_2(), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec3<f32>(1106f, global0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1783f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global0.b.x), global0.a.x, _wgslsmith_f_op_f32(280f * global0.b.x), -155f) + global0.b)));
    let var_1 = (abs(vec4<u32>(~76911u, 48357u, u_input.b, _wgslsmith_sub_u32(4294967295u, 67257u))) | vec4<u32>(0u, firstLeadingBit(u_input.b), u_input.b, u_input.b)) & vec4<u32>(~4294967295u, ~min(select(u_input.b, u_input.b, true), 1u), ~u_input.b << (u_input.b % 32u), ~_wgslsmith_mult_u32(u_input.b, u_input.b));
    var var_2 = Struct_1(vec3<f32>(var_0.b.x, -452f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.b.x)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1023f)), global0.b.x))), vec4<f32>(-1497f, _wgslsmith_f_op_f32(trunc(310f)), 975f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1738f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(var_0.b.x, 2149f)), var_0.a.x, all(vec3<bool>(true, true, false))))))));
    let var_3 = func_6(func_5(Struct_2(var_0, func_4(func_1(vec2<bool>(true, true), var_0, vec4<i32>(u_input.c.x, 18978i, u_input.a, 0i), vec3<u32>(var_1.x, 31200u, u_input.b)), select(vec2<bool>(true, true), vec2<bool>(true, true), true)))), all(vec4<bool>(true, true, true, true)));
    var var_4 = func_6(any(!(!vec4<bool>(true, true, var_3.b, var_3.b))) || true, firstTrailingBit(4294967295u) >= abs(126136u));
    global0 = func_2();
    var_4 = func_6(max(var_1.x, 1u) < var_1.x, !func_5(Struct_2(func_6(var_3.b, var_4.b).a, var_0.a.x <= 315f)));
    let x = u_input.a;
    s_output = StorageBuffer(min(vec4<u32>(var_1.x, ~(~var_1.x), ~_wgslsmith_mult_u32(49451u, 31471u), u_input.b), select(~(~vec4<u32>(4294967295u, 0u, u_input.b, 24099u)), abs(var_1) >> (min(var_1, var_1) % vec4<u32>(32u)), !select(var_4.b, true, false))));
}

