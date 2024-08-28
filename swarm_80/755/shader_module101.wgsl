struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<i32>,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: vec2<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_5 {
    a: vec3<bool>,
    b: bool,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<bool>) -> vec4<u32> {
    global0 = Struct_3(global0.a);
    var var_0 = max(reverseBits(vec2<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(-26084i, 2130i), vec2<i32>(1378i, 0i)), -39488i)), vec2<i32>(1i, 1i));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var var_2 = 2931u;
    let var_3 = 50073u;
    return _wgslsmith_mod_vec4_u32(~vec4<u32>(~0u, _wgslsmith_add_u32(1u, 41988u), u_input.a & _wgslsmith_add_u32(u_input.a, u_input.a), 1u), min(~reverseBits(vec4<u32>(15386u, var_3, 0u, 64368u)), vec4<u32>(~1u, ~(0u << (var_3 % 32u)), 47260u, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(var_3, u_input.a)), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 55087u), vec2<u32>(99424u, var_3), vec2<u32>(u_input.a, u_input.a))))));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<i32>, arg_2: Struct_3) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(global0.a * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-global0.a))))));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_3) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_sub_vec4_u32(~firstLeadingBit(func_3(vec2<bool>(false, true))), vec4<u32>(41707u, abs(u_input.a), _wgslsmith_mult_u32(~u_input.a, 22727u ^ u_input.a), 34759u)), select(vec2<i32>(1i, 1i), abs(vec2<i32>(~(-24879i), firstTrailingBit(0i))), select(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(false, true))), Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1435f, arg_0.a.x)), _wgslsmith_f_op_vec2_f32(-global0.a)))));
    let var_1 = abs(~_wgslsmith_add_vec3_i32(select(countOneBits(vec3<i32>(1i, -30814i, 0i)), -vec3<i32>(23376i, -10865i, 2147483647i), all(vec2<bool>(false, true))), firstTrailingBit(-vec3<i32>(43507i, -35400i, 22507i))));
    let var_2 = abs(vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_mult_i32(_wgslsmith_div_i32(var_1.x, var_1.x), _wgslsmith_dot_vec3_i32(var_1, var_1)), -select(44487i, 2147483647i, false)), _wgslsmith_mod_i32(-var_1.x & var_1.x, var_1.x), ~(~(~var_1.x)), var_1.x));
    var var_3 = _wgslsmith_add_vec2_u32(func_3(vec2<bool>(any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))), !any(vec2<bool>(false, false)))).zx, _wgslsmith_clamp_vec2_u32(abs(firstLeadingBit(vec2<u32>(u_input.a, 4294967295u))), firstTrailingBit(max(vec2<u32>(43334u, 41248u), vec2<u32>(u_input.a, u_input.a))) | _wgslsmith_div_vec2_u32(abs(vec2<u32>(u_input.a, u_input.a)), ~vec2<u32>(75905u, u_input.a)), vec2<u32>(7528u, 8704u)));
    global0 = arg_1;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(vec4<u32>(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, u_input.a), vec3<u32>(var_3.x, var_3.x, var_3.x)), u_input.a & var_3.x, var_3.x), ~vec2<i32>(var_1.x, -27885i), arg_0)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(trunc(2309f)), _wgslsmith_f_op_f32(arg_0.a.x + 655f)), _wgslsmith_f_op_vec2_f32(ceil(global0.a)), vec2<bool>(false, true)))) * arg_1.a);
}

fn func_1(arg_0: vec4<u32>, arg_1: i32, arg_2: vec2<i32>, arg_3: Struct_5) -> Struct_2 {
    let var_0 = abs(arg_2.x);
    global0 = Struct_3(_wgslsmith_f_op_vec2_f32(arg_3.c.yx + _wgslsmith_f_op_vec2_f32(func_2(Struct_3(_wgslsmith_div_vec2_f32(arg_3.c.zx, arg_3.c.yz)), Struct_3(vec2<f32>(997f, 1259f))))));
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_3.c.xy, _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.x, 848f) - arg_3.c.xz), select(!(!arg_3.a.yy), arg_3.a.xx, !(!arg_3.a.xy)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(arg_3.c.xz)), vec2<f32>(_wgslsmith_f_op_f32(global0.a.x + _wgslsmith_f_op_f32(-193f + 554f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 1158f) + _wgslsmith_f_op_f32(-arg_3.c.x))))));
    global0 = Struct_3(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_1, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0.a.x, arg_3.c.x), var_1)))))));
    var var_2 = Struct_2(arg_2.x, Struct_1(firstLeadingBit(~arg_0.x), select(arg_1 == 2147483647i, 0u == (4294967295u << (arg_0.x % 32u)), select(false, 369f < global0.a.x, true)), firstLeadingBit(vec2<i32>(var_0, -2147483647i)), _wgslsmith_mult_i32(1i, ~_wgslsmith_div_i32(2147483647i, -1i))), Struct_1(_wgslsmith_div_u32(~4294967295u, _wgslsmith_dot_vec4_u32(arg_0 & vec4<u32>(u_input.a, 27778u, arg_0.x, arg_0.x), ~vec4<u32>(arg_0.x, u_input.a, u_input.a, u_input.a))), false, -arg_2, -37872i), u_input.a, arg_0.ww);
    return Struct_2(~_wgslsmith_dot_vec2_i32(vec2<i32>(5962i, ~arg_1), reverseBits(-var_2.c.c)), var_2.b, Struct_1(firstTrailingBit(u_input.a), false, vec2<i32>(_wgslsmith_add_i32(arg_1, 2147483647i), min(-2147483647i, 0i << (1u % 32u))), arg_2.x), 1u, vec2<u32>(arg_0.x, func_3(!vec2<bool>(arg_3.a.x, false)).x));
}

fn func_5(arg_0: Struct_2, arg_1: i32) -> Struct_4 {
    let var_0 = ~(~select(select(_wgslsmith_dot_vec2_u32(vec2<u32>(3563u, arg_0.c.a), vec2<u32>(66879u, 37194u)), u_input.a, arg_0.c.b), 26757u, (arg_0.b.d >= arg_0.a) && true));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.a.x, global0.a.x, global0.a.x, _wgslsmith_f_op_f32(global0.a.x * global0.a.x)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1159f - global0.a.x)), 924f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) + _wgslsmith_f_op_f32(f32(-1f) * -186f)), global0.a.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(377f, global0.a.x, _wgslsmith_f_op_f32(max(global0.a.x, global0.a.x)), _wgslsmith_f_op_f32(-global0.a.x)) + vec4<f32>(_wgslsmith_f_op_f32(-517f + global0.a.x), 2017f, _wgslsmith_div_f32(-829f, global0.a.x), 1000f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, global0.a.x, -174f, _wgslsmith_f_op_f32(-209f + -314f)))));
    var var_2 = !select(vec4<bool>(arg_0.b.b, !any(vec3<bool>(false, false, arg_0.c.b)), _wgslsmith_div_i32(arg_1, arg_1) != ~arg_0.b.c.x, true), !select(select(vec4<bool>(false, arg_0.b.b, false, false), vec4<bool>(arg_0.c.b, false, arg_0.b.b, arg_0.b.b), vec4<bool>(arg_0.b.b, false, false, true)), !vec4<bool>(arg_0.c.b, true, arg_0.c.b, true), arg_0.c.b), any(vec4<bool>(arg_0.b.b, func_1(vec4<u32>(var_0, 0u, u_input.a, u_input.a), arg_0.b.d, arg_0.c.c, Struct_5(vec3<bool>(arg_0.b.b, arg_0.b.b, arg_0.b.b), arg_0.c.b, vec3<f32>(-1113f, -121f, var_1.x))).b.b, all(vec2<bool>(arg_0.b.b, arg_0.c.b)), true)));
    var var_3 = Struct_1(1u, select(arg_0.c.a >= 4294967295u, var_2.x & (any(vec4<bool>(arg_0.c.b, true, true, false)) == (var_1.x != -711f)), true), -(vec2<i32>(arg_1, _wgslsmith_add_i32(arg_0.c.d, arg_1)) ^ -arg_0.c.c), _wgslsmith_sub_i32(-arg_1, arg_1));
    let var_4 = Struct_1(~arg_0.e.x, !all(select(select(vec4<bool>(false, false, var_2.x, arg_0.b.b), vec4<bool>(arg_0.b.b, false, true, var_2.x), vec4<bool>(arg_0.b.b, arg_0.c.b, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(arg_0.c.b, true, true, var_2.x))), select(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_3.c.x, -1i), max(vec2<i32>(arg_0.c.d, 13992i), vec2<i32>(1i, -35800i))), arg_0.a), vec2<i32>(reverseBits(var_3.d), arg_1) << (~vec2<u32>(var_0, 30871u) % vec2<u32>(32u)), true && any(!vec4<bool>(false, true, var_2.x, var_3.b))), -3247i);
    return Struct_4(var_2.x, var_1);
}

fn func_6(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: u32) -> Struct_3 {
    global0 = Struct_3(_wgslsmith_f_op_vec2_f32(trunc(global0.a)));
    let var_0 = func_5(Struct_2(1i, Struct_1(~(1331u >> (arg_2 % 32u)), arg_0.a, _wgslsmith_add_vec2_i32(min(vec2<i32>(-15423i, 0i), vec2<i32>(32362i, -2147483647i)), firstLeadingBit(vec2<i32>(0i, -21414i))), -(~1i)), func_1(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a, 1u, u_input.a, arg_2), select(vec4<u32>(arg_2, arg_2, 1u, 14919u), vec4<u32>(0u, arg_2, 35439u, arg_2), vec4<bool>(false, arg_0.a, arg_0.a, arg_0.a))), ~(1i << (u_input.a % 32u)), -(~vec2<i32>(-1i, -44606i)), Struct_5(vec3<bool>(arg_0.a, false, false), 983f >= arg_0.b.x, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_1.x, -1232f, 1304f))))).c, u_input.a, ~_wgslsmith_add_vec2_u32(vec2<u32>(0u, arg_2), vec2<u32>(arg_2, u_input.a)) << (vec2<u32>(_wgslsmith_add_u32(u_input.a, 0u), ~u_input.a) % vec2<u32>(32u))), -2147483647i);
    let var_1 = (-reverseBits(vec4<i32>(12121i, 42104i, 2147483647i, -30251i)) << (_wgslsmith_sub_vec4_u32(vec4<u32>(~17651u, u_input.a, ~0u, _wgslsmith_div_u32(u_input.a, arg_2)), vec4<u32>(23227u, ~0u, _wgslsmith_mod_u32(arg_2, u_input.a), 16059u)) % vec4<u32>(32u))) >> (~(firstTrailingBit(vec4<u32>(1u, u_input.a, u_input.a, u_input.a)) & ~vec4<u32>(17156u, arg_2, arg_2, 54265u)) % vec4<u32>(32u));
    let var_2 = func_1(min(select(vec4<u32>(u_input.a, u_input.a, u_input.a, 1u) ^ max(vec4<u32>(0u, arg_2, arg_2, arg_2), vec4<u32>(u_input.a, arg_2, arg_2, u_input.a)), vec4<u32>(39290u, u_input.a, 66931u, u_input.a) ^ vec4<u32>(1u, 0u, arg_2, arg_2), any(vec4<bool>(true, true, true, true))), vec4<u32>(~4294967295u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 0u, u_input.a), vec4<u32>(1u, 1u, arg_2, u_input.a)), 39380u, 1u)), _wgslsmith_div_i32(~countOneBits(0i), var_1.x), max(_wgslsmith_div_vec2_i32(var_1.wx << (vec2<u32>(0u, 0u) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(var_1.zw, vec2<i32>(var_1.x, -17716i))) ^ ~countOneBits(var_1.wy), _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(var_1.yx, var_1.xy), vec2<i32>(var_1.x, var_1.x)), firstLeadingBit(-var_1.xw))), Struct_5(!(!vec3<bool>(false, false, arg_0.a)), arg_0.a, arg_0.b.wyy)).b;
    global0 = Struct_3(_wgslsmith_f_op_vec2_f32(arg_0.b.xy * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, var_0.b.x) + vec2<f32>(-3704f, arg_0.b.x))), vec2<f32>(arg_0.b.x, var_0.b.x)))));
    return Struct_3(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-func_5(Struct_2(var_2.c.x, var_2, var_2, arg_2, vec2<u32>(20458u, u_input.a)), _wgslsmith_sub_i32(var_2.d, var_2.d)).b.zw))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_6(func_5(func_1(abs(vec4<u32>(u_input.a, u_input.a, u_input.a, 37554u)), ~(~2147483647i), vec2<i32>(1i, 1i), Struct_5(vec3<bool>(true, false, true), true, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1016f, -340f, global0.a.x) + vec3<f32>(395f, 905f, 1317f)))), -_wgslsmith_sub_i32(func_1(vec4<u32>(u_input.a, 4294967295u, u_input.a, 85590u), 4988i, vec2<i32>(0i, -2147483647i), Struct_5(vec3<bool>(true, true, false), true, vec3<f32>(global0.a.x, global0.a.x, global0.a.x))).a, select(0i, 0i, true))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.x, global0.a.x, _wgslsmith_f_op_f32(global0.a.x + global0.a.x)) - vec3<f32>(_wgslsmith_f_op_f32(-373f * global0.a.x), global0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), 37434u);
    global0 = func_6(Struct_4(true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.a.x, global0.a.x, global0.a.x, 298f), vec4<f32>(global0.a.x, global0.a.x, -185f, global0.a.x)))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-446f, global0.a.x, -1479f, -1000f), vec4<f32>(-2652f, 820f, global0.a.x, 1000f))))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0.a.x), func_5(Struct_2(1i, Struct_1(u_input.a, true, vec2<i32>(-1i, -1i), 0i), Struct_1(u_input.a, false, vec2<i32>(2147483647i, 37800i), -1i), u_input.a, vec2<u32>(u_input.a, u_input.a)), 23186i).b.x, 290f)))), 19611u);
    global0 = Struct_3(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)), 898f))));
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-899f, 201f, global0.a.x, 225f) + vec4<f32>(-431f, -108f, -432f, 475f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1552f, -432f, -165f, global0.a.x) - vec4<f32>(global0.a.x, -269f, -723f, global0.a.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.a.x, 255f, 484f, global0.a.x))) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1517f, global0.a.x, -588f, 1557f), vec4<f32>(-1469f, global0.a.x, global0.a.x, global0.a.x)))), true))) * _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)), global0.a.x, -2598f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-245f * -563f) * _wgslsmith_div_f32(global0.a.x, global0.a.x))), func_5(Struct_2(_wgslsmith_sub_i32(1i, -60609i), Struct_1(u_input.a, false, vec2<i32>(6495i, -7205i), -1i), func_1(vec4<u32>(1u, 38605u, 50092u, u_input.a), -1169i, vec2<i32>(-15548i, -2147483647i), Struct_5(vec3<bool>(true, false, true), false, vec3<f32>(global0.a.x, -2218f, global0.a.x))).b, u_input.a, vec2<u32>(1u, 1u)), -2147483647i).b));
    global0 = Struct_3(var_0.wy);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_sub_i32(-2147483647i, firstTrailingBit(-1i) & ~(-1i))), _wgslsmith_f_op_vec2_f32(func_2(Struct_3(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(global0.a, vec2<f32>(global0.a.x, -1089f))))), Struct_3(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1810f, var_0.x)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.a.x, var_0.x)))))))).x, firstLeadingBit(max(~countOneBits(vec2<u32>(37616u, 4046u)), select(vec2<u32>(53928u, 5482u), vec2<u32>(0u, u_input.a), vec2<bool>(false, true)) | select(vec2<u32>(u_input.a, 1u), vec2<u32>(0u, u_input.a), vec2<bool>(false, true)))), vec3<i32>(-29289i, _wgslsmith_add_i32(~(1i << (1u % 32u)), _wgslsmith_div_i32(_wgslsmith_add_i32(-5699i, 17648i), ~0i)), _wgslsmith_mult_i32(1881i, select(0i >> (u_input.a % 32u), reverseBits(-1i), select(false, true, false)))), u_input.a);
}

