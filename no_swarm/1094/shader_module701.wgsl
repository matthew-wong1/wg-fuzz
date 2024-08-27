struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec4<i32>,
    d: u32,
    e: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
    b: u32,
    c: i32,
    d: vec2<f32>,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
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

var<private> global0: Struct_4 = Struct_4(false, Struct_1(false, true));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<bool>, arg_1: f32, arg_2: vec2<f32>, arg_3: Struct_1) -> f32 {
    let var_0 = !vec4<bool>(1i <= ~select(u_input.b.x, u_input.b.x, arg_0.x), all(arg_0), arg_0.x, !(_wgslsmith_f_op_f32(-arg_2.x) > _wgslsmith_f_op_f32(arg_1 * 1935f)));
    var var_1 = Struct_3(arg_2.x, global0.b, ~u_input.b, _wgslsmith_add_u32(23544u, max(20639u, 1u)), Struct_2(select(arg_0.zz, var_0.zy, true), u_input.b.yz, 79045u, arg_3));
    let var_2 = true;
    let var_3 = abs(vec3<u32>(4294967295u, _wgslsmith_clamp_u32(var_1.e.c, var_1.e.c, var_1.d), 0u));
    let var_4 = ~_wgslsmith_clamp_vec2_u32(abs(var_3.yx), ~countOneBits(select(vec2<u32>(var_3.x, var_3.x), vec2<u32>(var_1.d, var_3.x), global0.b.a)), _wgslsmith_div_vec2_u32(reverseBits(_wgslsmith_mod_vec2_u32(vec2<u32>(34166u, 107247u), var_3.yy)), ~select(vec2<u32>(98047u, var_3.x), vec2<u32>(1u, 8382u), true)));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(949f, 461f)) - _wgslsmith_f_op_f32(round(408f))), -167f);
}

fn func_2(arg_0: Struct_4) -> vec3<u32> {
    global0 = arg_0;
    let var_0 = !vec4<bool>(arg_0.b.b, true, global0.b.a, true);
    var var_1 = Struct_5(arg_0, ~_wgslsmith_add_u32(25100u, _wgslsmith_add_u32(_wgslsmith_div_u32(58043u, 61914u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 48287u, 12672u), vec3<u32>(0u, 498u, 24945u)))), min(i32(-1i) * -u_input.b.x, -(u_input.a.x << (43760u % 32u)) | u_input.a.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -211f), -1928f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-537f + 165f), _wgslsmith_f_op_f32(func_3(vec3<bool>(arg_0.a, global0.a, true), -1694f, vec2<f32>(-1000f, 2643f), Struct_1(false, arg_0.b.a)))))), u_input.b.x);
    var var_2 = Struct_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(164f, var_1.d.x, any(var_0.wz) && true)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1425f - _wgslsmith_f_op_f32(var_1.d.x * 1815f)), 596f)))), arg_0.b, ~(-u_input.b), 30598u, Struct_2(!select(vec2<bool>(true, true), !vec2<bool>(true, var_0.x), select(arg_0.a, false, false)), -vec2<i32>(_wgslsmith_clamp_i32(1i, u_input.b.x, -2147483647i), -30800i), min(firstLeadingBit(_wgslsmith_clamp_u32(1u, var_1.b, 0u)), max(1u, countOneBits(48376u))), Struct_1(arg_0.b.b, select(false, arg_0.a, true || arg_0.b.b))));
    var var_3 = var_1.b >> (~54452u % 32u);
    return vec3<u32>(~32692u, 0u | ~var_2.d, var_2.e.c);
}

fn func_4(arg_0: bool, arg_1: vec3<u32>) -> vec4<bool> {
    let var_0 = _wgslsmith_div_u32(0u, max(_wgslsmith_div_u32(76136u, select(1u, 1u, true)), ~(~arg_1.x)) | ~arg_1.x);
    var var_1 = 1000f;
    var var_2 = ~(~(~countOneBits(_wgslsmith_div_vec3_u32(vec3<u32>(var_0, 4294967295u, var_0), vec3<u32>(14967u, arg_1.x, 0u)))));
    global0 = Struct_4(all(select(vec3<bool>(false, false, arg_0), select(vec3<bool>(true, false, global0.a), vec3<bool>(arg_0, true, global0.b.a), true), select(!arg_0, all(vec3<bool>(false, false, true)), all(vec4<bool>(true, global0.b.b, true, true))))), Struct_1(!(_wgslsmith_f_op_f32(ceil(1378f)) > _wgslsmith_f_op_f32(select(1097f, -562f, false))), select(false, !(u_input.a.x < u_input.a.x), all(select(vec3<bool>(global0.b.b, true, false), vec3<bool>(global0.b.b, global0.a, global0.b.b), global0.a)))));
    var_1 = 516f;
    return vec4<bool>(all(vec2<bool>(true, any(select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(false, global0.a, global0.b.b, true), global0.a)))), true, arg_0, any(select(vec2<bool>(!global0.b.a, true), !vec2<bool>(false, arg_0), !(!vec2<bool>(false, global0.a)))));
}

fn func_5(arg_0: bool, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: bool) -> Struct_4 {
    var var_0 = ~(~(select(arg_2.c, arg_2.c, any(arg_1.wz)) & 63436u));
    var var_1 = all(vec2<bool>(all(func_4(true | arg_0, vec3<u32>(arg_2.c, arg_2.c, arg_2.c)).yx), arg_1.x));
    var var_2 = _wgslsmith_dot_vec3_i32(~u_input.b.wwy, u_input.b.zwy);
    let var_3 = arg_1.x;
    var_1 = !var_3;
    return Struct_4(all(select(!vec2<bool>(arg_1.x, true), arg_2.a, vec2<bool>(all(vec4<bool>(true, arg_0, true, true)), arg_2.a.x))), Struct_1(!any(select(arg_1, vec4<bool>(false, true, true, var_3), vec4<bool>(true, global0.b.a, true, false))), true));
}

fn func_6(arg_0: Struct_4) -> Struct_4 {
    let var_0 = Struct_5(Struct_4(!global0.b.a, func_5(all(vec3<bool>(global0.b.b, false, arg_0.a)), !(!vec4<bool>(arg_0.b.b, global0.a, arg_0.b.a, false)), Struct_2(vec2<bool>(arg_0.a, false), select(vec2<i32>(u_input.b.x, u_input.a.x), u_input.a, vec2<bool>(false, false)), abs(1u), arg_0.b), _wgslsmith_div_f32(255f, -431f) != _wgslsmith_f_op_f32(sign(532f))).b), ~_wgslsmith_clamp_u32(max(~1u, _wgslsmith_div_u32(53077u, 10629u)), 1u, abs(12219u)), max(55910i << (_wgslsmith_sub_u32(1u, 1u) % 32u), 29830i), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(304f + 960f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -871f))), -2003f), countOneBits(18043i & u_input.a.x));
    global0 = arg_0;
    let var_1 = _wgslsmith_f_op_f32(max(var_0.d.x, var_0.d.x));
    var var_2 = select(!(!select(func_4(var_0.a.b.a, vec3<u32>(var_0.b, var_0.b, var_0.b)).yyx, select(vec3<bool>(true, arg_0.a, false), vec3<bool>(true, global0.b.b, true), global0.b.a), select(vec3<bool>(false, arg_0.a, global0.b.b), vec3<bool>(false, false, var_0.a.a), vec3<bool>(var_0.a.b.b, var_0.a.b.a, false)))), !vec3<bool>(all(vec2<bool>(arg_0.a, true)) & any(vec3<bool>(global0.a, true, false)), global0.b.b && true, true != !var_0.a.a), arg_0.a);
    var var_3 = select(!(!(!func_4(arg_0.a, vec3<u32>(15471u, 4294967295u, var_0.b)).ww)), select(select(var_2.xz, var_2.zx, var_2.zx), !(!vec2<bool>(global0.b.b, false)), select((1u >> (var_0.b % 32u)) == 1u, select(var_0.d.x >= -114f, true, false), true)), !(var_0.a.b.b & !global0.b.a));
    return func_5(func_4(all(func_4(true, vec3<u32>(4294967295u, 4294967295u, 13411u)).wxx), select(abs(vec3<u32>(var_0.b, var_0.b, 21703u)) | _wgslsmith_sub_vec3_u32(vec3<u32>(30961u, 0u, var_0.b), vec3<u32>(var_0.b, var_0.b, var_0.b)), vec3<u32>(var_0.b, _wgslsmith_div_u32(var_0.b, var_0.b), countOneBits(4412u)), !vec3<bool>(var_0.a.a, var_2.x, true))).x, select(vec4<bool>(global0.b.b, var_0.c > _wgslsmith_div_i32(var_0.e, u_input.b.x), !(var_1 >= -738f), true), !vec4<bool>(arg_0.a, true, any(vec2<bool>(arg_0.a, true)), true), !vec4<bool>(true, true, false, arg_0.a)), Struct_2(vec2<bool>(!(u_input.b.x <= u_input.b.x), global0.a), ~vec2<i32>(18921i, 17596i) << (~(~vec2<u32>(0u, var_0.b)) % vec2<u32>(32u)), select(~_wgslsmith_div_u32(var_0.b, var_0.b), ~(~0u), false), func_5(!select(var_3.x, var_3.x, false), vec4<bool>(any(vec4<bool>(var_0.a.a, var_0.a.b.a, false, global0.a)), true | global0.a, global0.b.b, arg_0.b.a), Struct_2(select(vec2<bool>(true, arg_0.a), var_2.xx, false), vec2<i32>(-6995i, -2147483647i), 25781u, Struct_1(false, true)), select(func_5(var_3.x, vec4<bool>(false, var_2.x, var_3.x, false), Struct_2(var_2.xx, vec2<i32>(0i, u_input.a.x), var_0.b, Struct_1(arg_0.a, arg_0.a)), true).b.a, global0.a, !var_0.a.a)).b), func_2(func_5(false, !vec4<bool>(var_2.x, arg_0.a, false, arg_0.a), Struct_2(var_2.zy, u_input.b.wx, var_0.b, var_0.a.b), -37126i < var_0.c)).x >= _wgslsmith_add_u32(firstTrailingBit(~var_0.b), var_0.b));
}

fn func_7(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_3, arg_3: i32) -> Struct_4 {
    var var_0 = true;
    var var_1 = ~_wgslsmith_mult_u32(arg_2.e.c, ~(~arg_2.d) ^ 15527u);
    global0 = Struct_4(arg_1.a, func_5(func_5(arg_0.b.a, !(!vec4<bool>(false, false, arg_0.a, global0.a)), Struct_2(func_4(arg_0.b.b, vec3<u32>(1u, 0u, arg_2.d)).zy, ~vec2<i32>(-1i, 38986i), 42215u, arg_2.b), 4294967295u >= (arg_2.e.c ^ arg_2.e.c)).b.b, select(select(vec4<bool>(true, arg_2.e.d.b, arg_2.e.a.x, false), select(vec4<bool>(arg_1.b, false, arg_0.a, arg_1.a), vec4<bool>(true, arg_1.b, false, arg_1.b), vec4<bool>(false, arg_0.a, true, arg_2.e.a.x)), !vec4<bool>(arg_2.b.b, true, arg_1.a, false)), !(!vec4<bool>(true, true, arg_2.b.a, arg_1.a)), arg_1.a), arg_2.e, _wgslsmith_f_op_f32(f32(-1f) * -1054f) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(638f)) + _wgslsmith_f_op_f32(arg_2.a + -158f))).b);
    var var_2 = -vec4<i32>(abs(u_input.a.x), -1i, ~arg_2.e.b.x, -1i) & firstLeadingBit(u_input.b);
    var_1 = ~firstLeadingBit(abs(~18955u) << (arg_2.d % 32u));
    return func_5(all(vec2<bool>(any(vec2<bool>(arg_2.b.b, arg_1.a)), func_4(global0.a, vec3<u32>(4294967295u, arg_2.d, 4294967295u) | vec3<u32>(1u, 46321u, 20944u)).x)), vec4<bool>(!any(vec4<bool>(arg_1.a, arg_0.b.b, arg_0.b.b, false)), true, !(_wgslsmith_f_op_f32(f32(-1f) * -339f) < arg_2.a), !arg_1.a), arg_2.e, ~(~2424i >> (_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.e.c, 4294967295u, 1u), vec3<u32>(7212u, arg_2.d, arg_2.d)) % 32u)) < (_wgslsmith_mod_i32(_wgslsmith_clamp_i32(arg_3, 5402i, var_2.x), _wgslsmith_dot_vec4_i32(u_input.b, u_input.b)) >> (_wgslsmith_sub_u32(0u >> (1u % 32u), arg_2.e.c) % 32u)));
}

fn func_1(arg_0: f32) -> vec4<u32> {
    global0 = func_7(func_6(func_5(!any(vec3<bool>(false, global0.b.b, global0.b.a)), func_4(true, func_2(Struct_4(global0.a, Struct_1(true, true)))), Struct_2(!vec2<bool>(global0.b.b, true), ~vec2<i32>(u_input.b.x, -1i), _wgslsmith_div_u32(10662u, 5662u), global0.b), true)), global0.b, Struct_3(arg_0, func_5(global0.b.b, !func_4(true, vec3<u32>(0u, 19928u, 38565u)), Struct_2(select(vec2<bool>(global0.a, global0.a), vec2<bool>(global0.a, global0.b.b), false), abs(vec2<i32>(1i, u_input.b.x)), _wgslsmith_div_u32(4294967295u, 4294967295u), Struct_1(global0.b.a, global0.b.b)), any(select(vec4<bool>(true, global0.b.b, false, false), vec4<bool>(global0.a, global0.a, global0.a, global0.a), false))).b, u_input.b, 23684u, Struct_2(vec2<bool>(global0.a, global0.b.a), u_input.b.ww, func_2(func_6(Struct_4(global0.a, global0.b))).x, Struct_1(func_4(global0.b.a, vec3<u32>(1u, 0u, 14879u)).x, any(vec2<bool>(global0.b.b, true))))), u_input.b.x);
    let var_0 = Struct_5(Struct_4(any(vec3<bool>(false, false, false == global0.b.a)), global0.b), ~1u, _wgslsmith_div_i32(select((u_input.a.x >> (6520u % 32u)) | min(u_input.a.x, u_input.a.x), 2147483647i, !global0.b.b), _wgslsmith_dot_vec2_i32(u_input.a, ~u_input.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(138f, 2769f), vec2<f32>(arg_0, arg_0), false))))))), _wgslsmith_div_i32(max(abs(43907i), 1i), _wgslsmith_mult_i32(u_input.a.x, -2147483647i)));
    global0 = func_7(Struct_4(global0.a, Struct_1(func_6(Struct_4(global0.a, var_0.a.b)).b.a, true)), Struct_1(true, false), Struct_3(arg_0, Struct_1(var_0.a.a, all(!vec3<bool>(var_0.a.b.a, true, false))), u_input.b, 0u, Struct_2(func_4(true, abs(vec3<u32>(var_0.b, 10350u, var_0.b))).xz, _wgslsmith_mult_vec2_i32(u_input.b.wx & vec2<i32>(1i, 1i), vec2<i32>(u_input.a.x, var_0.c)), var_0.b, Struct_1(!global0.a, func_5(global0.b.b, vec4<bool>(true, true, var_0.a.a, true), Struct_2(vec2<bool>(var_0.a.b.a, false), vec2<i32>(u_input.b.x, var_0.c), 1u, Struct_1(var_0.a.a, global0.a)), true).a))), max(-(var_0.e | 1i) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -1i), ~u_input.a), select(var_0.c, 2147483647i, false) << (var_0.b % 32u)));
    var var_1 = Struct_5(var_0.a, 0u, _wgslsmith_dot_vec4_i32((vec4<i32>(-1i) * -vec4<i32>(2147483647i, 54555i, u_input.b.x, var_0.c)) | ~max(vec4<i32>(2147483647i, var_0.e, u_input.b.x, -21236i), vec4<i32>(-2147483647i, var_0.e, var_0.e, 2319i)), countOneBits(~firstLeadingBit(u_input.b))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(var_0.d + _wgslsmith_f_op_vec2_f32(-var_0.d)), var_0.d)), -7487i);
    var var_2 = u_input.a.x >> (_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_add_u32(5542u, _wgslsmith_mod_u32(var_1.b, var_0.b)), _wgslsmith_sub_u32(~0u, abs(var_0.b))), vec2<u32>(countOneBits(36148u) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(39478u, var_1.b), vec2<u32>(4294967295u, var_1.b)), _wgslsmith_mult_u32(firstLeadingBit(1u), var_1.b))) % 32u);
    return vec4<u32>(~(~25702u), ~min(4294967295u | (var_0.b >> (33008u % 32u)), 4294967295u), _wgslsmith_mult_u32(countOneBits(var_0.b), var_1.b), ~_wgslsmith_add_u32(var_1.b ^ var_0.b, max(0u, 0u)) | var_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 4802u, 23580u, 1u), vec4<u32>(4294967295u, 36258u, 46844u, 1u)), vec4<u32>(13709u, 4294967295u, 10951u, 32337u)), func_1(-2444f) ^ vec4<u32>(14463u, 4294967295u, 40592u, 0u)), reverseBits(1u)));
    let var_1 = ~(select(vec3<i32>(u_input.a.x, ~u_input.b.x, -1i), _wgslsmith_mult_vec3_i32(-vec3<i32>(17386i, u_input.b.x, 11355i), vec3<i32>(u_input.a.x, 20736i, u_input.b.x) & vec3<i32>(u_input.a.x, u_input.b.x, 2147483647i)), func_5(true, func_4(false, vec3<u32>(4294967295u, 1u, 66268u)), Struct_2(vec2<bool>(true, global0.b.b), vec2<i32>(u_input.b.x, 0i), var_0.x, global0.b), !global0.b.b).a) & vec3<i32>((i32(-1i) * -2571i) >> (1u % 32u), ~(-21541i), u_input.a.x));
    let var_2 = func_7(func_5(true, vec4<bool>(global0.a, func_6(Struct_4(true, global0.b)).b.b, global0.a, global0.a), Struct_2(vec2<bool>(true, true), var_1.yy, ~select(45219u, var_0.x, true), global0.b), global0.b.b), func_6(Struct_4(global0.a, Struct_1(global0.b.b, global0.b.a))).b, Struct_3(1775f, func_5(true, func_4(true != global0.b.b, countOneBits(vec3<u32>(var_0.x, var_0.x, 27347u))), Struct_2(!vec2<bool>(global0.b.a, global0.a), ~vec2<i32>(var_1.x, u_input.b.x), abs(8690u), Struct_1(global0.b.a, global0.a)), global0.a).b, -u_input.b, var_0.x, Struct_2(select(!vec2<bool>(true, global0.a), select(vec2<bool>(global0.b.a, global0.b.a), vec2<bool>(true, global0.b.b), false), !vec2<bool>(false, global0.a)), min(select(vec2<i32>(var_1.x, u_input.a.x), vec2<i32>(1i, -13975i), vec2<bool>(false, global0.b.b)), -var_1.yz), reverseBits(var_0.x), Struct_1(func_5(global0.a, vec4<bool>(global0.a, true, global0.a, true), Struct_2(vec2<bool>(false, global0.a), var_1.yx, var_0.x, global0.b), false).a, global0.a & true))), _wgslsmith_sub_i32(0i, var_1.x)).b;
    global0 = Struct_4(global0.a, func_5(!((u_input.a.x << (var_0.x % 32u)) == countOneBits(0i)), vec4<bool>(true, false, var_2.b, global0.b.b), Struct_2(func_4(true, vec3<u32>(var_0.x, 0u, var_0.x)).yy, vec2<i32>(_wgslsmith_mult_i32(2147483647i, u_input.a.x), -var_1.x), 94778u << (~var_0.x % 32u), func_6(func_7(Struct_4(global0.a, var_2), Struct_1(global0.a, false), Struct_3(370f, Struct_1(true, global0.a), vec4<i32>(var_1.x, 0i, 0i, u_input.a.x), 48733u, Struct_2(vec2<bool>(false, false), var_1.yz, 117100u, Struct_1(var_2.b, var_2.a))), 2147483647i)).b), func_6(Struct_4(true, func_7(Struct_4(var_2.a, var_2), var_2, Struct_3(-632f, var_2, u_input.b, 57761u, Struct_2(vec2<bool>(false, global0.b.a), var_1.xy, 4974u, Struct_1(false, false))), u_input.b.x).b)).a).b);
    var var_3 = vec4<bool>(true, global0.a, true, true);
    var_3 = !select(vec4<bool>(var_3.x, var_2.a, any(vec4<bool>(global0.b.a, true, true, var_2.b)), global0.a), vec4<bool>(select(global0.b.b, global0.a, var_2.b || var_2.a), true, !(!var_2.a), true), true);
    let x = u_input.a;
    s_output = StorageBuffer(-90273i, ~1u);
}

