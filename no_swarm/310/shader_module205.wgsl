struct Struct_1 {
    a: i32,
    b: bool,
    c: i32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: u32,
    c: Struct_1,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 32> = array<u32, 32>(57726u, 0u, 1u, 1u, 37785u, 4294967295u, 106445u, 1u, 26267u, 0u, 24918u, 13084u, 0u, 1u, 4294967295u, 0u, 4294967295u, 106780u, 58155u, 1u, 18936u, 115542u, 0u, 0u, 4294967295u, 0u, 4294967295u, 1u, 1u, 0u, 61797u, 1u);

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec4<i32>) -> u32 {
    var var_0 = firstTrailingBit(_wgslsmith_clamp_i32(-arg_1.x, 0i, _wgslsmith_clamp_i32(0i, 0i, 1i))) >= arg_2.x;
    var var_1 = !select(select(select(vec2<bool>(arg_0.b, true), !vec2<bool>(true, arg_0.b), !arg_0.b), vec2<bool>(arg_0.b, true), arg_0.b), vec2<bool>(false, _wgslsmith_f_op_f32(f32(-1f) * -1797f) <= _wgslsmith_f_op_f32(min(arg_0.d.x, 1698f))), select(select(select(vec2<bool>(arg_0.b, true), vec2<bool>(arg_0.b, false), vec2<bool>(true, arg_0.b)), vec2<bool>(arg_0.b, false), vec2<bool>(false, true)), !select(vec2<bool>(true, true), vec2<bool>(true, arg_0.b), vec2<bool>(true, false)), arg_0.b));
    var var_2 = -1510f;
    var_1 = vec2<bool>(!all(select(vec2<bool>(var_1.x, var_1.x), !vec2<bool>(arg_0.b, false), all(vec2<bool>(true, false)))), var_1.x);
    global0 = array<u32, 32>();
    return global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, u_input.a, 0u), vec3<u32>(0u, u_input.b, 50333u)), abs(vec3<u32>(u_input.b, 0u, 1u))), vec3<u32>(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(0u, 32u)], 41866u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.b, u_input.a, 57861u), vec4<u32>(global0[_wgslsmith_index_u32(u_input.a, 32u)], u_input.b, 33160u, u_input.a)), abs(1u))), _wgslsmith_dot_vec3_u32(vec3<u32>(18091u, global0[_wgslsmith_index_u32(16382u, 32u)], global0[_wgslsmith_index_u32(u_input.b, 32u)]) >> (~vec3<u32>(23460u, 36599u, global0[_wgslsmith_index_u32(26876u, 32u)]) % vec3<u32>(32u)), ~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, u_input.b, 4294967295u), vec3<u32>(13381u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(22113u, 32u)], 32u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 32u)], 32u)], 32u)])))), 32u)] | global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~_wgslsmith_mult_u32(u_input.b, max(1u, 105245u)), abs(u_input.c)), 32u)], 32u)];
}

fn func_4(arg_0: vec3<f32>, arg_1: u32, arg_2: Struct_3, arg_3: Struct_3) -> vec3<i32> {
    let var_0 = !(!(!select(!vec3<bool>(arg_3.c.b, arg_2.c.b, arg_2.c.b), !vec3<bool>(arg_3.c.b, false, arg_2.c.b), select(vec3<bool>(true, arg_2.c.b, arg_2.c.b), vec3<bool>(arg_2.c.b, arg_2.c.b, false), arg_3.c.b))));
    var var_1 = Struct_2(arg_2.c);
    var var_2 = Struct_1(-_wgslsmith_mult_i32(~arg_3.d, _wgslsmith_sub_i32(24172i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_3.c.c, 3485i, 1i), vec3<i32>(-1i, var_1.a.a, arg_3.d)))), arg_2.c.b, -firstLeadingBit(arg_3.d), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-670f)), _wgslsmith_f_op_f32(-911f - 1332f)))), _wgslsmith_f_op_f32(step(arg_2.c.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-130f - var_1.a.d.x) * _wgslsmith_f_op_f32(-434f - var_1.a.d.x)))), arg_0.x));
    var var_3 = _wgslsmith_mod_u32(4294967295u, func_3(arg_3.c, vec3<i32>(_wgslsmith_mod_i32(-2147483647i, 76507i), _wgslsmith_add_i32(var_2.a, 32503i), ~var_1.a.a), vec4<i32>(24682i, var_1.a.c, var_2.a, -2147483647i) | (vec4<i32>(1i, arg_3.c.a, var_1.a.c, var_1.a.c) | vec4<i32>(arg_2.d, 74228i, 0i, 48703i))) & _wgslsmith_add_u32(arg_3.b, ~func_3(Struct_1(-2147483647i, arg_2.c.b, var_1.a.a, vec3<f32>(116f, arg_2.c.d.x, arg_0.x)), vec3<i32>(var_1.a.a, var_1.a.c, var_1.a.c), vec4<i32>(arg_3.c.c, 26087i, var_1.a.a, -1i))));
    var var_4 = -firstTrailingBit((firstLeadingBit(vec2<i32>(var_2.a, 66356i)) & vec2<i32>(0i, var_2.c)) >> (vec2<u32>(u_input.b & 50571u, arg_3.e) % vec2<u32>(32u)));
    return vec3<i32>(var_4.x, var_4.x, -var_2.a >> (1u % 32u));
}

fn func_2() -> i32 {
    let var_0 = vec3<i32>(58404i, firstLeadingBit(-2147483647i), _wgslsmith_dot_vec3_i32(func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-875f, -2199f, -1215f)) - vec3<f32>(1454f, -250f, -141f)), select(1u, func_3(Struct_1(1i, true, -10452i, vec3<f32>(-820f, -742f, -1996f)), vec3<i32>(0i, -1i, 2147483647i), vec4<i32>(-2147483647i, -1i, -17766i, -2999i)), true), Struct_3(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(806f, 2887f, -2188f, 2355f), vec4<f32>(-168f, 571f, -846f, 201f), false)), u_input.b >> (u_input.c % 32u), Struct_1(-2147483647i, true, 7646i, vec3<f32>(290f, -805f, 635f)), firstTrailingBit(0i), ~4294967295u), Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(364f, 135f, -888f, 1027f) + vec4<f32>(-540f, -1358f, 1089f, 1425f)), _wgslsmith_mod_u32(1u, u_input.b), Struct_1(20035i, true, 25528i, vec3<f32>(184f, -589f, 664f)), firstTrailingBit(-1i), u_input.a)), -(func_4(vec3<f32>(242f, -2050f, 439f), u_input.c, Struct_3(vec4<f32>(-1475f, 583f, -607f, -1183f), global0[_wgslsmith_index_u32(u_input.b, 32u)], Struct_1(-1i, true, 0i, vec3<f32>(1000f, -1775f, -187f)), 0i, global0[_wgslsmith_index_u32(19544u, 32u)]), Struct_3(vec4<f32>(-365f, -247f, 588f, -451f), 56675u, Struct_1(0i, true, -1588i, vec3<f32>(-1908f, 655f, -562f)), 0i, 31346u)) | vec3<i32>(2147483647i, 0i, -33080i))));
    global0 = array<u32, 32>();
    global0 = array<u32, 32>();
    global0 = array<u32, 32>();
    var var_1 = Struct_1(-_wgslsmith_dot_vec2_i32(-var_0.yy, ~min(var_0.zx, var_0.zz)), true, min(var_0.x, 1i), vec3<f32>(_wgslsmith_f_op_f32(floor(-758f)), _wgslsmith_f_op_f32(264f - -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-247f * 165f) * _wgslsmith_f_op_f32(f32(-1f) * -310f)) - _wgslsmith_f_op_f32(-740f * -611f))));
    return func_4(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(179f, var_1.d.x, true)), 1f, _wgslsmith_f_op_f32(f32(-1f) * -703f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-415f, var_1.d.x, var_1.d.x))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d.x) * _wgslsmith_div_f32(-1029f, var_1.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.d.x)) * var_1.d.x), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_1.d.x, var_1.d.x), var_1.d.x, var_1.b || var_1.b)))), min(global0[_wgslsmith_index_u32(0u, 32u)], 11224u), Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(474f, var_1.d.x, -625f, var_1.d.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d.x, var_1.d.x, var_1.d.x, -1217f))), 14062u, Struct_1(max(-39124i, -1i & var_0.x), !any(vec2<bool>(true, true)), var_1.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(498f, var_1.d.x, var_1.d.x))))), -1i, _wgslsmith_clamp_u32(min(0u, ~1u), 35328u, 40233u)), Struct_3(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(1573f * 744f), _wgslsmith_f_op_f32(trunc(-1248f)), var_1.d.x, var_1.d.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-986f, var_1.d.x, 331f, var_1.d.x) * vec4<f32>(1191f, var_1.d.x, -869f, -2357f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.d.x, var_1.d.x, 1000f, -1293f) + vec4<f32>(var_1.d.x, var_1.d.x, var_1.d.x, var_1.d.x))), var_1.b)), _wgslsmith_mult_u32(~38530u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u | u_input.a, 32u)], 32u)]) & (1u | (10998u ^ global0[_wgslsmith_index_u32(97378u, 32u)])), Struct_1(_wgslsmith_clamp_i32(~var_1.c, countOneBits(-4608i), -var_0.x), !var_1.b != true, var_0.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1936f, var_1.d.x, 158f) - _wgslsmith_f_op_vec3_f32(var_1.d - vec3<f32>(-491f, -1096f, -1356f)))), -(var_0.x & 1i), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 32u)], 32u)], 32u)], global0[_wgslsmith_index_u32(u_input.b, 32u)], 24415u), vec4<u32>(4294967295u, 4294967295u, u_input.c, u_input.c)), u_input.b, global0[_wgslsmith_index_u32(u_input.a, 32u)] & 92048u), ~min(vec3<u32>(global0[_wgslsmith_index_u32(10361u, 32u)], u_input.b, global0[_wgslsmith_index_u32(u_input.c, 32u)]), vec3<u32>(30138u, 13060u, 4294967295u))))).x;
}

fn func_1() -> Struct_1 {
    global0 = array<u32, 32>();
    var var_0 = ~reverseBits(vec2<i32>(1439i, min(i32(-1i) * -10606i, ~2147483647i)));
    global0 = array<u32, 32>();
    let var_1 = -vec2<i32>(_wgslsmith_mod_i32(var_0.x, 26421i), _wgslsmith_add_i32(func_2(), _wgslsmith_clamp_i32(-34602i, -33641i, var_0.x)) >> (_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, 0u), vec3<u32>(u_input.a, u_input.a, global0[_wgslsmith_index_u32(4294967295u, 32u)])), ~vec3<u32>(38778u, global0[_wgslsmith_index_u32(1u, 32u)], 48972u)) % 32u));
    let var_2 = true;
    return Struct_1(-(i32(-1i) * -1i), select(!(!var_2), any(vec3<bool>(var_2, 28964u <= global0[_wgslsmith_index_u32(u_input.a, 32u)], all(vec2<bool>(true, true)))), false), var_1.x, vec3<f32>(-1592f, _wgslsmith_f_op_f32(f32(-1f) * -1220f), -1637f));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec4<bool>) -> Struct_2 {
    var var_0 = all(vec3<bool>(!func_1().b, arg_0.c.b, any(select(vec2<bool>(true, arg_2.b), select(vec2<bool>(arg_2.b, true), vec2<bool>(arg_2.b, arg_1.a.b), vec2<bool>(arg_2.b, arg_0.c.b)), vec2<bool>(arg_0.c.b, arg_1.a.b)))));
    let var_1 = Struct_1(arg_0.c.c, false, arg_2.c, _wgslsmith_f_op_vec3_f32(arg_2.d + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.d.x) + _wgslsmith_f_op_f32(-arg_1.a.d.x)), -1111f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) + _wgslsmith_f_op_f32(select(1037f, arg_1.a.d.x, arg_3.x))))));
    let var_2 = true;
    var_0 = var_2;
    var var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(arg_0.a, vec4<f32>(arg_2.d.x, arg_2.d.x, 1388f, arg_2.d.x))) + vec4<f32>(arg_1.a.d.x, arg_1.a.d.x, 1000f, -1184f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.d.x, 346f, 897f, arg_0.c.d.x)))), arg_0.a, vec4<bool>(!(!arg_2.b), !(true & arg_0.c.b), 1000f != _wgslsmith_f_op_f32(sign(arg_1.a.d.x)), true))), 59525u, var_1, var_1.a & arg_1.a.c, 24316u);
    return Struct_2(var_3.c);
}

fn func_6(arg_0: Struct_2) -> Struct_3 {
    global0 = array<u32, 32>();
    var var_0 = vec2<i32>(arg_0.a.a, ~_wgslsmith_mult_i32(_wgslsmith_div_i32(2147483647i ^ arg_0.a.a, arg_0.a.c), -(~(-2147483647i))));
    var var_1 = firstLeadingBit(vec2<u32>(~global0[_wgslsmith_index_u32(4294967295u ^ ~u_input.b, 32u)], ~95743u >> (select(1u, 41760u, true) % 32u)));
    global0 = array<u32, 32>();
    var_0 = _wgslsmith_add_vec2_i32(~vec2<i32>(-(~var_0.x), i32(-1i) * -23563i), _wgslsmith_mod_vec2_i32(vec2<i32>(~arg_0.a.c, _wgslsmith_mult_i32(arg_0.a.a, arg_0.a.c)), -vec2<i32>(arg_0.a.a, _wgslsmith_mult_i32(-72529i, 28337i))));
    return Struct_3(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-319f, arg_0.a.d.x, arg_0.a.d.x, arg_0.a.d.x)))))))), ~_wgslsmith_clamp_u32(~(~global0[_wgslsmith_index_u32(u_input.a, 32u)]), global0[_wgslsmith_index_u32(u_input.a, 32u)], reverseBits(6634u) & _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.b, u_input.c), vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 32u)], 14087u, 10040u))), arg_0.a, 0i, countOneBits(_wgslsmith_sub_u32(~4294967295u ^ abs(global0[_wgslsmith_index_u32(var_1.x, 32u)]), 11830u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(global0[_wgslsmith_index_u32(~0u, 32u)], u_input.c);
    let var_1 = reverseBits(~abs(countOneBits(global0[_wgslsmith_index_u32(62521u, 32u)]))) <= (_wgslsmith_div_u32(u_input.c, ~_wgslsmith_add_u32(13030u, 32051u)) << (~global0[_wgslsmith_index_u32(u_input.a, 32u)] % 32u));
    var var_2 = func_6(func_5(Struct_3(vec4<f32>(-1391f, _wgslsmith_f_op_f32(-233f * -1000f), -1796f, _wgslsmith_f_op_f32(trunc(-838f))), 1u | ~global0[_wgslsmith_index_u32(0u, 32u)], func_1(), 20438i, 5281u), Struct_2(func_1()), Struct_1(_wgslsmith_mult_i32(0i, select(-40366i, -1i, var_1)), false, 0i, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-494f, -1095f, 261f), vec3<f32>(-472f, 505f, 959f)) * vec3<f32>(-118f, -1225f, 1138f))), vec4<bool>(all(select(vec2<bool>(true, var_1), vec2<bool>(true, var_1), vec2<bool>(true, var_1))), false, var_1, true)));
    var var_3 = vec2<f32>(-411f, -1856f);
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)))) * 748f);
    let var_5 = var_2.c;
    let x = u_input.a;
    s_output = StorageBuffer(-var_5.c, ~(~(~0u)));
}

