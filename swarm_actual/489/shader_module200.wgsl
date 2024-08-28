struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<i32>,
    c: vec3<f32>,
    d: bool,
    e: vec3<f32>,
}

struct Struct_5 {
    a: vec2<i32>,
    b: i32,
    c: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-584f, 317f, 586f, -1002f);

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> f32 {
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-1046f + global0.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -664f), _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(trunc(-968f)))) * 258f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -2178f))), 1845f);
    let var_0 = min(~(-firstTrailingBit(~vec2<i32>(u_input.a, 0i))), ~_wgslsmith_add_vec2_i32(~vec2<i32>(0i, u_input.b) & (vec2<i32>(u_input.b, -64684i) << (vec2<u32>(18463u, 47684u) % vec2<u32>(32u))), vec2<i32>(_wgslsmith_mult_i32(u_input.b, 5141i), -u_input.b)));
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, _wgslsmith_f_op_f32(-global0.x), 1336f, _wgslsmith_f_op_f32(-global0.x))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, -1000f))))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.x, 1000f, global0.x, -798f)))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.x, global0.x, global0.x, -2395f))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.x, global0.x, -918f, global0.x))), true))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1041f, global0.x, global0.x, global0.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-497f, 1713f, -1527f, 1102f) - vec4<f32>(1388f, global0.x, global0.x, global0.x)), false)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 1925f, -1038f, global0.x)))))), false)));
    var var_2 = all(vec3<bool>(true, true, true));
    var var_3 = Struct_5(_wgslsmith_clamp_vec2_i32(vec2<i32>(-(18516i & var_0.x), u_input.a), _wgslsmith_add_vec2_i32(abs(abs(var_0)), vec2<i32>(firstTrailingBit(u_input.a), 12695i)), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a >> (2234u % 32u), var_0.x), ~(-vec2<i32>(u_input.a, u_input.a)))), ~34810i, Struct_4(Struct_3(vec3<f32>(_wgslsmith_f_op_f32(var_1.x - global0.x), global0.x, _wgslsmith_f_op_f32(select(global0.x, global0.x, false)))), vec2<i32>(abs(_wgslsmith_sub_i32(u_input.a, var_0.x)), var_0.x), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(var_1.zxx + vec3<f32>(-735f, 644f, 1000f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, global0.x, 316f))))), !all(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.xxw))));
    return var_1.x;
}

fn func_2() -> Struct_4 {
    global0 = vec4<f32>(global0.x, -645f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.x, 566f)) * _wgslsmith_f_op_f32(func_3())))), global0.x);
    let var_0 = false;
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -498f);
    global0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -890f, 1912f, global0.x))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(672f, global0.x, global0.x, global0.x) + vec4<f32>(624f, 806f, global0.x, 1411f)), vec4<f32>(3541f, -1069f, 857f, global0.x), !vec4<bool>(false, true, var_0, false))), select(select(vec4<bool>(true, var_0, true, var_0), vec4<bool>(false, false, var_0, false), vec4<bool>(false, var_0, var_0, var_0)), !vec4<bool>(true, var_0, var_0, false), !vec4<bool>(true, true, var_0, false)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-197f + global0.x), _wgslsmith_f_op_f32(global0.x + global0.x), 806f, _wgslsmith_f_op_f32(max(global0.x, global0.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1591f, 1361f, global0.x, global0.x)))), vec4<bool>(!(!var_0), true, var_0, all(select(vec4<bool>(var_0, true, var_0, var_0), vec4<bool>(false, false, var_0, var_0), var_0)))))));
    var var_2 = Struct_2(_wgslsmith_sub_u32(firstLeadingBit(1u), u_input.c));
    return Struct_4(Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, 101f)), _wgslsmith_f_op_vec3_f32(-global0.zxy), vec3<bool>(true, true, false))))), -(~(_wgslsmith_mult_vec2_i32(vec2<i32>(49150i, -2147483647i), vec2<i32>(u_input.b, u_input.b)) << (~vec2<u32>(u_input.c, 4294967295u) % vec2<u32>(32u)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(global0.ywx - _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(global0.wxx, global0.xwy), global0.xzy)))), var_0, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + global0.x) + _wgslsmith_f_op_f32(floor(global0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + _wgslsmith_div_f32(global0.x, -672f)), _wgslsmith_f_op_f32(-1000f - -365f))));
}

fn func_4(arg_0: Struct_5) -> Struct_1 {
    let var_0 = firstLeadingBit(select(vec3<i32>(-1i, arg_0.a.x, ~0i), _wgslsmith_mod_vec3_i32(abs(min(vec3<i32>(arg_0.b, 9605i, 21818i), vec3<i32>(arg_0.c.b.x, -2147483647i, u_input.a))), vec3<i32>(arg_0.c.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.a.x, arg_0.b, arg_0.a.x), vec3<i32>(arg_0.b, arg_0.a.x, 0i)), _wgslsmith_mult_i32(u_input.b, u_input.b))), true));
    var var_1 = arg_0;
    var_1 = arg_0;
    var var_2 = Struct_5(_wgslsmith_mod_vec2_i32(~var_1.a, -(~arg_0.a | vec2<i32>(26054i, 0i))), _wgslsmith_add_i32(-25351i, abs(-19846i)), func_2());
    var_1 = arg_0;
    return Struct_1(u_input.c);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_5, arg_3: Struct_4) -> Struct_4 {
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a.a.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.x))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_2.c.e.x * -158f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.x, global0.x))))));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-221f - arg_2.c.a.a.x)))) + func_2().c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.e.x)))), _wgslsmith_f_op_f32(969f * _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(741f + 556f)), all(!vec3<bool>(arg_2.c.d, arg_3.d, true))))), -999f);
    let var_0 = 5572u;
    var var_1 = !(!select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, arg_2.c.d), false), select(!vec2<bool>(arg_3.d, false), select(vec2<bool>(false, arg_3.d), vec2<bool>(arg_2.c.d, arg_2.c.d), vec2<bool>(true, true)), arg_2.c.d)));
    var_1 = select(vec2<bool>(false && all(vec4<bool>(var_1.x, arg_2.c.d, var_1.x, false)), arg_3.d), vec2<bool>(arg_3.d, any(vec3<bool>(arg_2.c.d & arg_3.d, var_1.x, arg_2.c.d))), all(select(vec4<bool>(arg_2.c.d, true, var_1.x, arg_3.d), select(!vec4<bool>(arg_2.c.d, var_1.x, false, arg_2.c.d), select(vec4<bool>(true, arg_3.d, arg_3.d, arg_2.c.d), vec4<bool>(var_1.x, arg_2.c.d, arg_3.d, true), vec4<bool>(arg_3.d, var_1.x, true, true)), select(vec4<bool>(arg_3.d, true, true, true), vec4<bool>(arg_3.d, arg_2.c.d, arg_3.d, arg_3.d), arg_2.c.d)), true)));
    return Struct_4(arg_3.a, _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(select(vec2<i32>(arg_2.c.b.x, arg_3.b.x), arg_2.c.b, arg_2.c.d), arg_2.c.b), vec2<i32>(u_input.b, arg_3.b.x) | _wgslsmith_sub_vec2_i32(vec2<i32>(arg_3.b.x, arg_3.b.x), arg_3.b)), ~vec2<i32>(_wgslsmith_div_i32(u_input.b, 26984i), firstTrailingBit(11024i))), global0.xzz, false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_3.a.a, vec3<f32>(global0.x, arg_2.c.c.x, global0.x)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_2.c.e.x, 873f, -500f)))))));
}

fn func_1() -> bool {
    var var_0 = func_5(func_4(Struct_5(max(vec2<i32>(-2147483647i, u_input.b), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, -2147483647i), vec2<i32>(9798i, -2147483647i))), abs(1i) >> ((u_input.c << (1u % 32u)) % 32u), func_2())), Struct_2(1u), Struct_5(-func_2().b, firstTrailingBit(~(u_input.a | u_input.b)), func_2()), func_2());
    var var_1 = Struct_4(func_2().a, vec2<i32>(firstTrailingBit(~_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.b.x, 2147483647i, 6398i), vec3<i32>(u_input.b, 45382i, var_0.b.x))), -45945i), var_0.c, var_0.d, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(func_2().c)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_0.a.a, vec3<f32>(var_0.e.x, global0.x, -2293f)) * _wgslsmith_f_op_vec3_f32(global0.yyz - var_0.a.a)))));
    global0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(2357f, var_1.a.a.x, -904f, var_1.e.x), vec4<f32>(-1381f, 915f, var_0.c.x, -410f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(499f, var_1.a.a.x, var_1.a.a.x, 744f))) + vec4<f32>(-1175f, -652f, var_1.e.x, var_0.e.x)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1735f, global0.x, -1121f, -912f))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.e.x, -601f, var_1.e.x, -1000f), vec4<f32>(-433f, var_0.a.a.x, -582f, global0.x))))), select(select(vec4<bool>(false, var_1.d, true, true), vec4<bool>(var_1.d, false, var_1.d, var_1.d), false), vec4<bool>(var_1.d, true, var_1.d, false), !vec4<bool>(false, var_1.d, false, false)))))));
    var var_2 = select(vec2<bool>(true, true), vec2<bool>(var_0.d, all(!(!vec2<bool>(true, var_1.d)))), vec2<bool>(var_0.d, var_1.d));
    let var_3 = select(_wgslsmith_clamp_vec4_u32(~_wgslsmith_mult_vec4_u32(~vec4<u32>(1u, 1u, 14134u, u_input.c), ~vec4<u32>(1u, u_input.c, 22992u, u_input.c)), vec4<u32>(1u, u_input.c, 62157u & ~u_input.c, 1u), ~vec4<u32>(1u, u_input.c, 0u, 0u) | (reverseBits(vec4<u32>(u_input.c, u_input.c, 4294967295u, 1u)) >> (min(vec4<u32>(16397u, u_input.c, u_input.c, u_input.c), vec4<u32>(40485u, u_input.c, u_input.c, 6482u)) % vec4<u32>(32u)))), _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, u_input.c, _wgslsmith_mod_u32(u_input.c, u_input.c), func_4(Struct_5(vec2<i32>(var_0.b.x, var_0.b.x), -1550i, Struct_4(Struct_3(var_0.a.a), var_1.b, var_1.a.a, var_0.d, vec3<f32>(var_1.e.x, global0.x, global0.x)))).a), vec4<u32>(~u_input.c, countOneBits(u_input.c), 4294967295u, func_4(Struct_5(vec2<i32>(13966i, 11922i), -1i, Struct_4(Struct_3(vec3<f32>(-1166f, 494f, 351f)), vec2<i32>(u_input.a, var_0.b.x), vec3<f32>(790f, 585f, -955f), var_1.d, global0.xzx))).a), ~(vec4<u32>(0u, u_input.c, u_input.c, u_input.c) >> (vec4<u32>(1u, u_input.c, 5851u, u_input.c) % vec4<u32>(32u)))), ~select(vec4<u32>(33494u, u_input.c, u_input.c, u_input.c), ~vec4<u32>(u_input.c, 54198u, 13268u, 4294967295u), u_input.c == u_input.c)), !(!var_0.d));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global0.x * global0.x), _wgslsmith_f_op_f32(695f * global0.x), _wgslsmith_f_op_f32(global0.x - 378f), -280f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, 871f, global0.x) - vec4<f32>(-1579f, -717f, global0.x, global0.x)))), func_1())), _wgslsmith_f_op_vec4_f32(-vec4<f32>(func_5(Struct_1(1u), Struct_2(u_input.c), Struct_5(vec2<i32>(2147483647i, 1i), -1i, Struct_4(Struct_3(global0.yzx), vec2<i32>(u_input.a, -17026i), vec3<f32>(751f, global0.x, global0.x), var_0, global0.wyx)), Struct_4(Struct_3(vec3<f32>(global0.x, global0.x, 580f)), vec2<i32>(-1i, 1i), vec3<f32>(global0.x, global0.x, global0.x), var_0, vec3<f32>(global0.x, global0.x, -1315f))).a.a.x, global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1109f * global0.x) + -725f), global0.x)));
    global0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1070f, -1018f, -733f, global0.x)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, global0.x, 1438f, global0.x), vec4<f32>(global0.x, global0.x, 375f, global0.x), vec4<bool>(var_0, var_0, var_0, false)))) - vec4<f32>(_wgslsmith_div_f32(global0.x, global0.x), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-global0.x), func_5(Struct_1(39067u), Struct_2(16239u), Struct_5(vec2<i32>(-15339i, 60315i), u_input.a, Struct_4(Struct_3(vec3<f32>(1076f, 1000f, global0.x)), vec2<i32>(1i, u_input.b), vec3<f32>(global0.x, -823f, global0.x), false, global0.yww)), Struct_4(Struct_3(global0.xww), vec2<i32>(u_input.a, u_input.b), vec3<f32>(-873f, 888f, global0.x), false, vec3<f32>(612f, global0.x, global0.x))).e.x)))));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + -259f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), -1212f, 850f))));
    let var_1 = Struct_5(-(~abs(-vec2<i32>(u_input.a, -2147483647i))), ~_wgslsmith_mult_i32(abs(u_input.b), u_input.a) & u_input.b, func_2());
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1065f, 924f) * _wgslsmith_div_f32(-395f, func_2().c.x)), 1243f), ~(_wgslsmith_add_i32(-1i, u_input.b) >> (~23645u % 32u)) & u_input.b);
}

