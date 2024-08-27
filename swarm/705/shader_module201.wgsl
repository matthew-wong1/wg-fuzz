struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: u32,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_4,
    c: f32,
    d: vec2<u32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(true, vec2<bool>(true, true), 1u, -569i), Struct_1(true, vec2<bool>(true, false), 9796u, -17006i), Struct_1(true, vec2<bool>(true, true), 4294967295u, i32(-2147483648)), Struct_1(true, vec2<bool>(false, false), 36236u, -1i), Struct_1(false, vec2<bool>(false, false), 2814u, -1i), Struct_1(true, vec2<bool>(false, false), 4294967295u, 59860i), Struct_1(true, vec2<bool>(true, false), 11350u, i32(-2147483648)), Struct_1(true, vec2<bool>(false, true), 14155u, 1i), Struct_1(true, vec2<bool>(false, false), 0u, -25266i), Struct_1(false, vec2<bool>(true, true), 1u, 1i));

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    global0 = array<Struct_1, 10>();
    return select(vec3<bool>(arg_0.a, arg_0.a, !any(!vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.a, arg_0.a))), vec3<bool>(true, true, true), select(vec3<bool>(true, arg_0.b.x, true), !vec3<bool>(false, true, !arg_0.a), -_wgslsmith_mod_i32(-3463i, arg_0.d) > select(i32(-1i) * -2147483647i, ~arg_0.d, !arg_0.b.x)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec3<i32>, arg_3: vec2<bool>) -> Struct_4 {
    let var_0 = Struct_1(true, vec2<bool>(arg_0.b.x, !arg_3.x), min(1u, 2261u), 1i);
    global0 = array<Struct_1, 10>();
    global0 = array<Struct_1, 10>();
    var var_1 = -(select(arg_2, _wgslsmith_add_vec3_i32(vec3<i32>(27178i, 1i, arg_2.x), arg_2 | arg_2), select(func_3(var_0), func_3(arg_0), vec3<bool>(false, var_0.b.x, true))) & -_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(arg_2, vec3<i32>(63893i, arg_0.d, var_0.d)), ~vec3<i32>(var_0.d, -1i, 28949i)));
    global0 = array<Struct_1, 10>();
    return Struct_4(Struct_2(Struct_1(_wgslsmith_add_u32(44460u, 3704u) <= ~var_0.c, arg_0.b, ~(92985u >> (1u % 32u)), var_0.d), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1645f, arg_1.a, -817f, arg_1.a), vec4<f32>(arg_1.a, -143f, arg_1.a, 1263f)))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.a, arg_1.a, arg_1.a, 939f), vec4<f32>(arg_1.a, arg_1.a, arg_1.a, arg_1.a))))), u_input.a, u_input.d, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -856f) < arg_1.a, arg_0.b, ~select(arg_0.c, u_input.b.x, arg_0.a), 57001i)));
}

fn func_4(arg_0: vec4<bool>, arg_1: u32, arg_2: i32, arg_3: Struct_4) -> Struct_4 {
    global0 = array<Struct_1, 10>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_3.a.b.x))) * -230f);
    var var_1 = ~(~vec4<u32>(_wgslsmith_mod_u32(func_2(Struct_1(true, arg_3.a.a.b, 0u, arg_2), Struct_3(arg_3.a.b.x), vec3<i32>(2147483647i, arg_2, -46089i), arg_3.a.a.b).a.a.c, reverseBits(arg_3.a.c)), ~7818u, ~0u, ~0u));
    let var_2 = Struct_3(arg_3.a.b.x);
    var var_3 = vec4<i32>(0i, countOneBits(arg_3.a.a.d), ~1i, arg_2);
    return func_2(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(arg_3.a.e.c, 0u, var_1.x), var_1.xwz), ~u_input.c.xxy) | firstLeadingBit(firstTrailingBit(~0u)), 10u)], var_2, var_3.xyy, !func_2(Struct_1(arg_3.a.a.a, vec2<bool>(arg_3.a.e.b.x, false), 4294967295u, -1i), var_2, vec3<i32>(0i, arg_2, -1i << (arg_3.a.c % 32u)), arg_0.zw).a.a.b);
}

fn func_5(arg_0: i32, arg_1: Struct_4, arg_2: Struct_3) -> f32 {
    global0 = array<Struct_1, 10>();
    let var_0 = ~arg_1.a.a.d;
    let var_1 = 2147483647i;
    global0 = array<Struct_1, 10>();
    var var_2 = func_4(!vec4<bool>(select(true, false, arg_1.a.a.a), any(vec3<bool>(false, arg_1.a.a.b.x, false)), all(vec2<bool>(true, true)), all(vec4<bool>(true, true, true, false))), arg_1.a.e.c ^ arg_1.a.d.x, -2147483647i, Struct_4(arg_1.a));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1294f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(arg_2.a)))) + var_2.a.b.x))), arg_1.a.b.x);
}

fn func_6(arg_0: f32, arg_1: i32, arg_2: f32) -> Struct_1 {
    var var_0 = ~select(vec3<u32>(func_4(vec4<bool>(false, true, true, true), abs(u_input.d.x), ~arg_1, Struct_4(Struct_2(global0[_wgslsmith_index_u32(37271u, 10u)], vec4<f32>(arg_0, arg_2, arg_2, -584f), 63517u, u_input.d, global0[_wgslsmith_index_u32(u_input.e, 10u)]))).a.d.x, ~(~13804u), 42643u), ~vec3<u32>(_wgslsmith_mod_u32(7044u, u_input.e), u_input.d.x, _wgslsmith_add_u32(0u, 16051u)), false);
    var var_1 = Struct_5(vec4<u32>(17652u, var_0.x, 1u, var_0.x >> ((var_0.x ^ 0u) % 32u)), func_4(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true)), all(vec3<bool>(true, false, false))), 22269u, 2147483647i, Struct_4(Struct_2(Struct_1(true, vec2<bool>(false, true), 0u, arg_1), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_2, -1934f, 828f, 734f))), 1u, select(vec2<u32>(var_0.x, 50165u), vec2<u32>(var_0.x, 1u), vec2<bool>(true, false)), global0[_wgslsmith_index_u32(u_input.e, 10u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(-2147483647i, func_2(Struct_1(true, vec2<bool>(false, false), 1u, 6060i), Struct_3(arg_2), ~vec3<i32>(arg_1, arg_1, arg_1), vec2<bool>(false, true)), Struct_3(_wgslsmith_f_op_f32(exp2(arg_2)))))), min(abs(~vec2<u32>(4294967295u, u_input.c.x)) ^ func_4(vec4<bool>(true, true, true, true), u_input.c.x, arg_1, Struct_4(Struct_2(global0[_wgslsmith_index_u32(28103u, 10u)], vec4<f32>(514f, 362f, 1327f, arg_2), var_0.x, var_0.xx, global0[_wgslsmith_index_u32(var_0.x, 10u)]))).a.d, select(min(u_input.b, u_input.d), _wgslsmith_sub_vec2_u32(u_input.d, vec2<u32>(22867u, u_input.b.x)), all(vec2<bool>(false, false))) >> (abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, u_input.d.x), vec2<u32>(var_0.x, u_input.c.x), vec2<u32>(var_0.x, var_0.x))) % vec2<u32>(32u))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_2, arg_0, _wgslsmith_f_op_f32(-1000f * -981f), _wgslsmith_f_op_f32(-arg_2)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -314f, -1233f, arg_2)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(914f, -496f, arg_0, -1000f))))), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), false))));
    let var_2 = func_2(Struct_1(func_2(global0[_wgslsmith_index_u32(~14594u, 10u)], Struct_3(arg_0), _wgslsmith_div_vec3_i32(~vec3<i32>(36863i, var_1.b.a.a.d, -43100i), ~vec3<i32>(-13279i, var_1.b.a.e.d, 20481i)), !(!var_1.b.a.a.b)).a.e.b.x, !var_1.b.a.e.b, reverseBits(abs(39346u)), -4626i), Struct_3(_wgslsmith_f_op_f32(func_5(min(-43065i, ~arg_1), func_2(Struct_1(false, var_1.b.a.a.b, 1684u, arg_1), Struct_3(var_1.e.x), max(vec3<i32>(arg_1, arg_1, 14894i), vec3<i32>(var_1.b.a.a.d, var_1.b.a.e.d, arg_1)), select(vec2<bool>(var_1.b.a.e.a, var_1.b.a.a.b.x), var_1.b.a.e.b, var_1.b.a.a.a)), Struct_3(_wgslsmith_f_op_f32(-var_1.e.x))))), _wgslsmith_sub_vec3_i32(vec3<i32>(-func_2(Struct_1(true, var_1.b.a.a.b, 8934u, arg_1), Struct_3(-489f), vec3<i32>(19687i, 1i, -2147483647i), var_1.b.a.e.b).a.a.d, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.b.a.e.d, 2147483647i), ~vec2<i32>(arg_1, arg_1)), ~0i), vec3<i32>(arg_1, (arg_1 << (4294967295u % 32u)) << (var_0.x % 32u), arg_1)), vec2<bool>(true, var_1.b.a.e.b.x));
    let var_3 = !any(var_2.a.e.b);
    var_1 = Struct_5(_wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(var_0.x, var_2.a.a.c, var_1.b.a.c, 7062u)) | _wgslsmith_add_vec4_u32(vec4<u32>(var_2.a.d.x, var_1.b.a.c, 4294967295u, 0u) ^ vec4<u32>(4294967295u, 30142u, 4294967295u, u_input.a), select(u_input.c, vec4<u32>(0u, 21121u, 59988u, 0u), vec4<bool>(var_3, false, var_3, var_1.b.a.e.a))), ~u_input.c), var_1.b, -180f, var_1.b.a.d, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-148f, var_2.a.b.x, var_2.a.b.x, 210f)) + _wgslsmith_div_vec4_f32(vec4<f32>(1199f, -407f, 1026f, var_2.a.b.x), vec4<f32>(var_2.a.b.x, -1000f, 1611f, arg_0))))));
    return var_2.a.e;
}

fn func_7(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32) -> Struct_2 {
    var var_0 = func_3(func_6(_wgslsmith_f_op_f32(-1042f - 1009f), arg_0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1018f) - arg_1.b.x)))).yy;
    let var_1 = max(vec4<u32>(6886u, ~_wgslsmith_clamp_u32(27939u, 4294967295u, arg_2), u_input.c.x, func_4(select(vec4<bool>(true, false, var_0.x, true), vec4<bool>(var_0.x, false, false, arg_1.a.b.x), vec4<bool>(arg_1.a.b.x, arg_0.b.x, arg_0.a, true)), ~arg_0.c, arg_0.d, func_4(vec4<bool>(true, arg_0.a, false, false), 4294967295u, 2474i, Struct_4(Struct_2(Struct_1(var_0.x, vec2<bool>(false, true), u_input.c.x, -59204i), arg_1.b, 0u, vec2<u32>(4294967295u, arg_0.c), arg_0)))).a.c) & vec4<u32>(arg_2, 4294967295u, 57706u, ~u_input.b.x), countOneBits(firstLeadingBit(_wgslsmith_mult_vec4_u32(u_input.c, vec4<u32>(29243u, 4294967295u, 28287u, arg_0.c)))));
    var_0 = select(!vec2<bool>(!var_0.x, !all(vec4<bool>(var_0.x, arg_1.a.a, false, true))), arg_0.b, func_4(!(!select(vec4<bool>(false, arg_1.e.a, arg_1.a.a, arg_1.e.b.x), vec4<bool>(arg_1.a.a, var_0.x, arg_0.b.x, true), false)), ~(~var_1.x), firstTrailingBit(func_6(_wgslsmith_div_f32(arg_1.b.x, -1485f), arg_0.d, _wgslsmith_div_f32(617f, 1265f)).d), func_2(Struct_1(arg_1.a.a, vec2<bool>(true, true), 89127u, arg_0.d), Struct_3(-382f), -vec3<i32>(0i, arg_1.e.d, arg_0.d) & -vec3<i32>(arg_1.a.d, arg_1.a.d, arg_1.e.d), arg_1.e.b)).a.e.a);
    var var_2 = _wgslsmith_f_op_f32(arg_1.b.x + -837f);
    var var_3 = arg_1;
    return arg_1;
}

fn func_1(arg_0: vec3<u32>, arg_1: u32) -> Struct_2 {
    global0 = array<Struct_1, 10>();
    var var_0 = 1i;
    let var_1 = ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(36129u, ~u_input.c.x, arg_0.x), countOneBits(~vec3<u32>(arg_0.x, arg_1, 0u))));
    return func_7(func_6(_wgslsmith_f_op_f32(func_5(countOneBits(reverseBits(0i)), func_4(vec4<bool>(true, true, true, true), 1u, 1i, func_2(Struct_1(true, vec2<bool>(true, false), arg_1, -1i), Struct_3(-715f), vec3<i32>(-21158i, -14138i, 13824i), vec2<bool>(false, false))), Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -859f)))), select(_wgslsmith_mult_i32(_wgslsmith_sub_i32(3340i, 15662i), 1i), ~1i, false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(178f, 289f, false))))), Struct_2(func_2(func_2(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(var_1, var_1), 10u)], Struct_3(-435f), vec3<i32>(-1i, 2147483647i, -2147483647i), vec2<bool>(true, true)).a.e, Struct_3(_wgslsmith_f_op_f32(-1245f + 134f)), ~select(vec3<i32>(-2147483647i, 40592i, 2147483647i), vec3<i32>(-17305i, 41304i, 1i), vec3<bool>(false, false, false)), vec2<bool>(true, true)).a.e, vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-2342f, -338f), _wgslsmith_f_op_f32(f32(-1f) * -818f))), _wgslsmith_f_op_f32(select(-834f, 113f, true)), _wgslsmith_f_op_f32(func_5(-12722i, func_2(Struct_1(true, vec2<bool>(false, true), 32242u, 1i), Struct_3(1043f), vec3<i32>(-1i, -48548i, -12611i), vec2<bool>(true, true)), Struct_3(742f))), _wgslsmith_f_op_f32(f32(-1f) * -305f)), _wgslsmith_mult_u32(arg_0.x << (arg_0.x % 32u), _wgslsmith_add_u32(u_input.e, u_input.b.x) ^ ~u_input.a), arg_0.xz, Struct_1(select(any(vec2<bool>(true, true)), arg_1 <= 4294967295u, true), vec2<bool>(true, true), min(4294967295u, u_input.c.x) ^ min(1u, 38850u), min(firstTrailingBit(-56913i), -2147483647i))), u_input.d.x);
}

fn func_8(arg_0: Struct_1, arg_1: Struct_4, arg_2: vec2<f32>, arg_3: vec4<i32>) -> Struct_2 {
    let var_0 = abs(vec4<u32>(51873u, reverseBits(31144u) ^ ~(u_input.b.x ^ 33598u), 28576u, arg_1.a.d.x));
    var var_1 = Struct_1(!func_1(_wgslsmith_add_vec3_u32(abs(var_0.yxx), firstTrailingBit(vec3<u32>(var_0.x, 67121u, arg_0.c))), 1u).e.a, select(vec2<bool>(true, true), arg_1.a.e.b, !(!(!arg_1.a.a.b))), ~u_input.a, countOneBits(min(max(arg_3.x | arg_0.d, -343i), _wgslsmith_add_i32(func_7(Struct_1(arg_0.b.x, vec2<bool>(arg_1.a.a.b.x, arg_0.b.x), 1u, arg_3.x), Struct_2(Struct_1(true, arg_0.b, 4294967295u, 2147483647i), vec4<f32>(arg_1.a.b.x, arg_1.a.b.x, arg_2.x, 170f), 21798u, var_0.wx, Struct_1(arg_1.a.a.b.x, vec2<bool>(arg_1.a.a.a, true), u_input.d.x, arg_0.d)), 4294967295u).e.d, _wgslsmith_div_i32(1i, arg_1.a.a.d)))));
    global0 = array<Struct_1, 10>();
    let var_2 = arg_2.x;
    global0 = array<Struct_1, 10>();
    return arg_1.a;
}

fn func_9(arg_0: vec2<u32>, arg_1: u32, arg_2: Struct_2, arg_3: vec3<i32>) -> Struct_3 {
    var var_0 = Struct_2(func_8(func_2(arg_2.e, Struct_3(_wgslsmith_f_op_f32(select(arg_2.b.x, arg_2.b.x, true))), arg_3 >> (u_input.c.yyz % vec3<u32>(32u)), select(!vec2<bool>(true, arg_2.a.a), arg_2.e.b, arg_2.e.b)).a.a, Struct_4(Struct_2(Struct_1(arg_2.a.a, vec2<bool>(arg_2.e.a, true), 29812u, arg_3.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b.x, -229f, arg_2.b.x, 797f) - arg_2.b), 1u, ~vec2<u32>(u_input.d.x, u_input.d.x), Struct_1(arg_2.a.b.x, vec2<bool>(true, arg_2.e.a), 6327u, -1122i))), arg_2.b.zz, vec4<i32>(arg_2.e.d, countOneBits(arg_3.x) ^ -1i, i32(-1i) * -2147483647i, abs(arg_2.e.d))).e, _wgslsmith_f_op_vec4_f32(-arg_2.b), _wgslsmith_dot_vec4_u32(vec4<u32>(~(u_input.b.x >> (arg_1 % 32u)), _wgslsmith_mult_u32(69260u, u_input.b.x), ~abs(arg_0.x), _wgslsmith_div_u32(arg_0.x, ~34485u)), u_input.c), u_input.c.wx, global0[_wgslsmith_index_u32(u_input.b.x, 10u)]);
    let var_1 = func_4(select(!select(select(vec4<bool>(false, arg_2.a.a, var_0.a.b.x, var_0.e.b.x), vec4<bool>(var_0.a.b.x, false, true, false), true), !vec4<bool>(var_0.a.b.x, false, false, var_0.e.a), 29465u >= arg_1), !select(vec4<bool>(true, arg_2.e.b.x, false, true), select(vec4<bool>(false, var_0.a.b.x, true, var_0.a.b.x), vec4<bool>(true, arg_2.a.a, false, false), true), !vec4<bool>(arg_2.a.b.x, arg_2.a.a, arg_2.e.a, var_0.a.a)), true), _wgslsmith_mult_u32(~(~func_8(Struct_1(arg_2.a.a, vec2<bool>(var_0.e.b.x, var_0.e.b.x), arg_1, 2147483647i), Struct_4(Struct_2(Struct_1(arg_2.e.b.x, vec2<bool>(arg_2.e.b.x, arg_2.a.b.x), 37658u, arg_3.x), arg_2.b, 40795u, arg_2.d, Struct_1(var_0.e.b.x, vec2<bool>(arg_2.e.a, var_0.a.a), 13485u, -19243i))), vec2<f32>(527f, -1328f), vec4<i32>(-34656i, -2147483647i, -17904i, -49044i)).d.x), _wgslsmith_div_u32(0u, ~u_input.e | ~35894u)), func_4(vec4<bool>(true, true, true, true), var_0.e.c, 13604i, func_2(func_7(Struct_1(false, var_0.e.b, 68807u, 26117i), Struct_2(global0[_wgslsmith_index_u32(1u, 10u)], var_0.b, 75482u, vec2<u32>(var_0.c, var_0.c), Struct_1(true, vec2<bool>(var_0.e.a, false), 2773u, -1i)), 0u).a, Struct_3(-736f), -arg_3, var_0.a.b)).a.e.d, func_2(func_4(vec4<bool>(true, func_1(u_input.c.wxw, u_input.d.x).a.b.x, !arg_2.a.a, var_0.a.d > 12357i), 1u, func_6(820f, 13899i >> (1u % 32u), func_7(Struct_1(arg_2.a.a, vec2<bool>(var_0.e.b.x, var_0.a.b.x), 70366u, var_0.a.d), arg_2, 0u).b.x).d, func_2(Struct_1(var_0.a.a, vec2<bool>(arg_2.e.b.x, true), arg_1, arg_3.x), Struct_3(arg_2.b.x), arg_3, vec2<bool>(var_0.a.b.x, false))).a.a, Struct_3(arg_2.b.x), arg_3, func_2(Struct_1(var_0.e.b.x | var_0.a.b.x, !var_0.e.b, func_1(u_input.c.wzx, arg_0.x).d.x, var_0.a.d), Struct_3(-1070f), arg_3 & arg_3, arg_2.a.b).a.a.b)).a;
    var var_2 = ~(~(~vec3<u32>(~u_input.b.x, _wgslsmith_mod_u32(arg_0.x, var_1.c), 8032u)));
    var var_3 = arg_3.zy;
    var_0 = Struct_2(func_1(vec3<u32>(arg_1, var_0.e.c >> (func_7(Struct_1(true, var_0.e.b, arg_1, -1i), Struct_2(arg_2.a, arg_2.b, var_0.c, arg_2.d, Struct_1(true, var_0.e.b, 4294967295u, var_0.a.d)), var_0.c).c % 32u), 41655u), ~40068u).e, func_1(vec3<u32>(arg_2.a.c, 33262u, var_2.x) >> (max(u_input.c.xzz, ~vec3<u32>(19525u, var_0.c, 4294967295u)) % vec3<u32>(32u)), ~arg_2.d.x).b, ~_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(68827u, arg_2.a.c, 1u, var_1.d.x) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, var_0.e.c, 21798u, 31123u), u_input.c, vec4<u32>(48889u, var_1.c, 1u, arg_2.c))), abs(~select(~arg_2.d, arg_2.d | vec2<u32>(1u, u_input.b.x), !arg_2.a.a)), arg_2.a);
    return Struct_3(var_0.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -661f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-988f)))));
    var var_1 = var_0;
    var_1 = func_9(~(u_input.c.yw & vec2<u32>(u_input.a, u_input.e)), u_input.c.x, func_8(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(reverseBits(firstLeadingBit(vec3<u32>(1u, u_input.c.x, u_input.c.x))), u_input.c.yww | ~u_input.c.yxw), 10u)], Struct_4(func_1(max(vec3<u32>(4294967295u, u_input.c.x, 4294967295u), vec3<u32>(29078u, u_input.a, u_input.d.x)), u_input.b.x & 17534u)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.a, 478f))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -897f), _wgslsmith_f_op_f32(abs(var_0.a))), func_4(vec4<bool>(false, false, true, true), 4294967295u, 89660i, Struct_4(Struct_2(global0[_wgslsmith_index_u32(0u, 10u)], vec4<f32>(var_0.a, -1028f, var_1.a, var_0.a), u_input.b.x, u_input.c.yw, global0[_wgslsmith_index_u32(52950u, 10u)]))).a.b.x != var_0.a)), vec4<i32>(~max(-7057i, -1i), func_6(func_2(global0[_wgslsmith_index_u32(u_input.c.x, 10u)], Struct_3(762f), vec3<i32>(30918i, -33339i, -33404i), vec2<bool>(false, true)).a.b.x, i32(-1i) * -30251i, func_4(vec4<bool>(false, false, true, true), 4294967295u, -18330i, Struct_4(Struct_2(Struct_1(false, vec2<bool>(false, true), u_input.a, 24125i), vec4<f32>(-750f, var_1.a, var_0.a, var_1.a), u_input.c.x, u_input.d, global0[_wgslsmith_index_u32(22890u, 10u)]))).a.b.x).d, -1i, func_1(vec3<u32>(1u, u_input.d.x, u_input.e), ~u_input.c.x).a.d)), vec3<i32>(abs(countOneBits(-2147483647i)), 37752i & func_6(383f, -2147483647i, 1954f).d, ~abs(19970i)));
    var_1 = Struct_3(_wgslsmith_f_op_f32(func_9(~_wgslsmith_mod_vec2_u32(u_input.b, vec2<u32>(19920u, 4294967295u)), reverseBits(4294967295u), func_7(func_4(vec4<bool>(true, true, true, false), u_input.c.x, 0i, Struct_4(Struct_2(Struct_1(false, vec2<bool>(true, false), u_input.e, 1234i), vec4<f32>(var_0.a, 409f, -1256f, var_1.a), 4294967295u, vec2<u32>(u_input.a, u_input.e), Struct_1(true, vec2<bool>(false, true), 4294967295u, 42546i)))).a.e, Struct_2(Struct_1(true, vec2<bool>(false, false), 2289u, -2147483647i), vec4<f32>(1003f, 340f, var_0.a, var_0.a), 2635u, u_input.d, Struct_1(true, vec2<bool>(false, false), 51847u, 0i)), ~43929u), select(vec3<i32>(39713i, -1966i, 0i), vec3<i32>(2147483647i, 0i, 1i), vec3<bool>(false, true, true))).a * var_0.a));
    var var_2 = true;
    let var_3 = Struct_5(select(select(_wgslsmith_add_vec4_u32(u_input.c, u_input.c), vec4<u32>(u_input.c.x, 1u, 3990u, 42938u), func_4(vec4<bool>(true, false, false, false), u_input.e, -1i, Struct_4(Struct_2(Struct_1(false, vec2<bool>(false, false), 4199u, 70794i), vec4<f32>(var_0.a, -2049f, -807f, var_0.a), u_input.c.x, u_input.c.zw, global0[_wgslsmith_index_u32(47189u, 10u)]))).a.e.a) >> (u_input.c % vec4<u32>(32u)), (~vec4<u32>(1u, u_input.b.x, 19166u, u_input.d.x) & min(vec4<u32>(1u, 4833u, u_input.d.x, 1u), vec4<u32>(30606u, u_input.d.x, u_input.a, u_input.c.x))) ^ vec4<u32>(_wgslsmith_div_u32(26474u, 49329u), ~35593u, ~1u, u_input.e | 4294967295u), select(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true), firstTrailingBit(u_input.b.x) >= 14312u)), Struct_4(func_8(func_4(vec4<bool>(true, true, true, true), 4294967295u, min(2147483647i, -7142i), func_2(global0[_wgslsmith_index_u32(11304u, 10u)], Struct_3(290f), vec3<i32>(1i, 2147483647i, 426i), vec2<bool>(true, false))).a.a, Struct_4(Struct_2(Struct_1(true, vec2<bool>(false, true), 4294967295u, 2147483647i), vec4<f32>(var_0.a, -648f, var_0.a, 942f), 4294967295u, u_input.c.xx, Struct_1(false, vec2<bool>(false, false), u_input.d.x, -2147483647i))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-905f, var_1.a) * func_2(global0[_wgslsmith_index_u32(u_input.b.x, 10u)], var_0, vec3<i32>(30323i, 23723i, -2147483647i), vec2<bool>(true, false)).a.b.xz), ~vec4<i32>(-1i, 11191i, 1i, 0i))), 486f, _wgslsmith_mult_vec2_u32(vec2<u32>(abs(1u), ~(u_input.c.x << (1u % 32u))), u_input.c.xy), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, 672f, func_2(global0[_wgslsmith_index_u32(~u_input.c.x, 10u)], Struct_3(var_0.a), ~vec3<i32>(-34376i, 6654i, 0i), vec2<bool>(false, false)).a.b.x, func_9(~u_input.b, u_input.a, func_2(Struct_1(false, vec2<bool>(true, false), u_input.a, 20417i), Struct_3(-125f), vec3<i32>(30029i, -40032i, 2147483647i), vec2<bool>(false, false)).a, min(vec3<i32>(28633i, -42244i, -18936i), vec3<i32>(0i, 40094i, 23962i))).a)));
    let x = u_input.a;
    s_output = StorageBuffer(min(~_wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(1i, var_3.b.a.a.d, var_3.b.a.a.d)), -vec3<i32>(var_3.b.a.a.d, var_3.b.a.e.d, -18511i)), vec3<i32>(-1i) * -(vec3<i32>(1i, var_3.b.a.a.d, 1i) << (u_input.c.wyz % vec3<u32>(32u)))), min(reverseBits(firstTrailingBit(~vec4<i32>(0i, var_3.b.a.a.d, var_3.b.a.e.d, var_3.b.a.e.d))), -vec4<i32>(var_3.b.a.a.d, 1i, ~var_3.b.a.a.d, select(var_3.b.a.a.d, -22591i, var_3.b.a.a.b.x))));
}

