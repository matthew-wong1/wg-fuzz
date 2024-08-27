struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: f32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_3, arg_3: Struct_2) -> u32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-arg_3.a.d.x), _wgslsmith_f_op_f32(exp2(global0.d.x)), arg_2.b.c, -294f);
    var var_1 = !(!all(vec3<bool>(true, true, true)));
    var_1 = all(select(!(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false))), !select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec3<bool>(true, false, false))), !select(vec2<bool>(false, true), vec2<bool>(true, true), true)));
    let var_2 = vec3<bool>(true, true, all(vec2<bool>(!any(vec2<bool>(false, true)), false)));
    let var_3 = arg_1.a;
    return _wgslsmith_mod_u32(_wgslsmith_sub_u32(87929u, ~(~_wgslsmith_div_u32(15020u, arg_2.b.b.x))), _wgslsmith_add_u32(firstTrailingBit(select(42555u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_1.a.b.x, u_input.a.x), arg_1.a.b.wyy), true)), min(~arg_1.a.a | firstLeadingBit(0u), ~_wgslsmith_div_u32(19878u, 94845u))));
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: Struct_1, arg_3: Struct_2) -> u32 {
    global0 = arg_2;
    var var_0 = arg_2;
    global0 = Struct_1(abs(~arg_1.c.a.b.x), firstTrailingBit(vec4<u32>(~global0.a, 27613u, func_3(vec2<i32>(-2147483647i, -45357i), Struct_2(Struct_1(arg_1.c.a.b.x, vec4<u32>(var_0.a, arg_2.a, 4294967295u, global0.a), 1504f, arg_3.a.d)), arg_1, Struct_2(arg_3.a)), global0.b.x)), 1890f, vec3<f32>(-263f, -1376f, _wgslsmith_f_op_f32(484f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.c, arg_1.c.a.c, true)) - _wgslsmith_f_op_f32(round(arg_2.d.x))))));
    var_0 = arg_2;
    var_0 = Struct_1(arg_2.a, abs(var_0.b), arg_1.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.d - vec3<f32>(_wgslsmith_f_op_f32(floor(arg_1.b.d.x)), arg_3.a.c, _wgslsmith_f_op_f32(var_0.d.x + -526f)))));
    return arg_1.c.a.a;
}

fn func_2() -> Struct_1 {
    var var_0 = reverseBits(-56631i);
    var var_1 = true;
    var var_2 = _wgslsmith_dot_vec4_u32(global0.b, _wgslsmith_mod_vec4_u32(~(~global0.b), _wgslsmith_mod_vec4_u32(countOneBits(global0.b), _wgslsmith_clamp_vec4_u32(global0.b, global0.b, global0.b)))) | abs(24059u);
    let var_3 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.d) + _wgslsmith_div_vec3_f32(global0.d, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c, global0.c, global0.c) - global0.d), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c, global0.c, -2479f) + global0.d))))), vec3<f32>(374f, 625f, _wgslsmith_f_op_f32(-global0.c))));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d.x * global0.d.x));
    return Struct_1(~(~u_input.a.x), vec4<u32>(max(global0.a, func_4(func_3(vec2<i32>(-1i, -1i), Struct_2(Struct_1(48521u, vec4<u32>(4294967295u, 18935u, 1u, u_input.a.x), global0.d.x, global0.d)), Struct_3(global0.d.x, Struct_1(0u, global0.b, -115f, var_3), Struct_2(Struct_1(35846u, global0.b, 1597f, vec3<f32>(338f, global0.d.x, 207f)))), Struct_2(Struct_1(66695u, vec4<u32>(4294967295u, global0.a, u_input.a.x, u_input.a.x), var_3.x, vec3<f32>(635f, 682f, var_4)))), Struct_3(-1256f, Struct_1(global0.a, vec4<u32>(u_input.a.x, global0.b.x, 12824u, 60362u), var_4, vec3<f32>(global0.d.x, -1687f, -963f)), Struct_2(Struct_1(u_input.a.x, vec4<u32>(global0.b.x, u_input.a.x, u_input.a.x, u_input.a.x), global0.d.x, vec3<f32>(global0.c, var_3.x, global0.d.x)))), Struct_1(global0.a, vec4<u32>(global0.b.x, global0.a, 57802u, 4294967295u), 332f, var_3), Struct_2(Struct_1(0u, global0.b, global0.c, vec3<f32>(global0.d.x, -991f, 269f))))), u_input.a.x, 4002u, u_input.a.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4)))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - global0.d.x)), 346f), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_4, var_4, _wgslsmith_f_op_f32(trunc(-1090f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.d) + global0.d)))));
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec3<i32>) -> f32 {
    let var_0 = true;
    global0 = Struct_1(abs(_wgslsmith_add_u32(reverseBits(12802u | u_input.a.x), u_input.a.x)), ~(~firstLeadingBit(global0.b)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -596f), arg_0.x)), vec3<f32>(arg_1.d.x, _wgslsmith_f_op_f32(f32(-1f) * -476f), -1735f));
    var var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(reverseBits(arg_3.x), _wgslsmith_sub_i32(arg_3.x, arg_3.x), 33309i) | arg_3, ~arg_3) > max(max(22369i, _wgslsmith_mod_i32(~2147483647i, firstLeadingBit(arg_3.x))), arg_3.x);
    global0 = Struct_1(arg_1.a, _wgslsmith_mult_vec4_u32(abs(vec4<u32>(func_2().a, ~0u, max(16292u, arg_1.a), global0.a)), _wgslsmith_add_vec4_u32(min(arg_2.a.b & vec4<u32>(0u, arg_2.a.b.x, 1u, global0.b.x), arg_2.a.b), ~arg_2.a.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(517f)) + -190f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.d.x - arg_0.x) + _wgslsmith_div_f32(1628f, arg_0.x)))), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_2.a.d.x - -1436f))), _wgslsmith_f_op_f32(-arg_2.a.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.c))), _wgslsmith_f_op_f32(-global0.d.x))));
    var_1 = true;
    return arg_1.d.x;
}

fn func_6(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: Struct_3) -> Struct_1 {
    let var_0 = vec3<i32>(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-199i, 2147483647i, -21635i), vec3<i32>(1i, arg_1.x, arg_1.x) | vec3<i32>(arg_1.x, arg_1.x, 2147483647i))), abs(-(2147483647i | arg_1.x)), _wgslsmith_sub_i32(arg_1.x, 30341i)) | abs(_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(~vec3<i32>(5631i, -3543i, arg_1.x), _wgslsmith_div_vec3_i32(vec3<i32>(12838i, arg_1.x, arg_1.x), vec3<i32>(-1i, arg_1.x, 1i))), vec3<i32>(arg_1.x, _wgslsmith_div_i32(-21773i, 17015i), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 0i, 13283i, arg_1.x), vec4<i32>(-557i, arg_1.x, -49237i, -2147483647i)))));
    let var_1 = false;
    var var_2 = Struct_3(_wgslsmith_f_op_f32(exp2(global0.d.x)), arg_2.b, Struct_2(Struct_1(arg_2.b.b.x << (_wgslsmith_add_u32(arg_0.a.b.x, 1u) % 32u), ~vec4<u32>(50093u, arg_0.a.b.x, arg_0.a.a, 0u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1851f * 1000f) + _wgslsmith_div_f32(arg_0.a.d.x, global0.d.x)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(1185f, arg_0.a.c, -1061f) * vec3<f32>(arg_0.a.d.x, arg_2.b.d.x, global0.c)))))));
    let var_3 = arg_1.x;
    var var_4 = !vec3<bool>(var_1, any(vec2<bool>(true, true)), true);
    return func_2();
}

fn func_1() -> vec4<u32> {
    let var_0 = func_6(Struct_2(Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 0u, 1u, 4294967295u), global0.b) << (~global0.a % 32u), vec4<u32>(abs(27203u), ~u_input.a.x, countOneBits(u_input.a.x), ~global0.b.x), _wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-288f, global0.c)), func_2(), Struct_2(Struct_1(global0.a, global0.b, global0.d.x, vec3<f32>(global0.d.x, -372f, 1000f))), abs(vec3<i32>(-79309i, 47131i, 0i)))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(2384f, global0.c, global0.d.x), _wgslsmith_f_op_vec3_f32(global0.d - global0.d))))), -vec2<i32>(1i, 1i), Struct_3(global0.d.x, func_2(), Struct_2(Struct_1(~4294967295u, ~vec4<u32>(global0.b.x, global0.a, 4294967295u, 49867u), -1000f, _wgslsmith_f_op_vec3_f32(step(global0.d, vec3<f32>(global0.d.x, global0.d.x, -1000f)))))));
    let var_1 = !vec2<bool>(all(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true))), false);
    global0 = func_6(Struct_2(Struct_1(43137u, ~abs(global0.b), _wgslsmith_f_op_f32(var_0.c * _wgslsmith_f_op_f32(global0.d.x * global0.d.x)), vec3<f32>(_wgslsmith_f_op_f32(134f * global0.c), _wgslsmith_f_op_f32(-var_0.c), func_2().c))), _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-1i, _wgslsmith_mod_i32(0i, -37575i)), -(vec2<i32>(15502i, 1i) << (vec2<u32>(var_0.a, 4294967295u) % vec2<u32>(32u)))), ~(~(-vec2<i32>(-1i, 1i)))), Struct_3(-1408f, var_0, Struct_2(func_2())));
    let var_2 = !(var_1.x | select(any(!vec2<bool>(false, var_1.x)), any(select(vec4<bool>(false, var_1.x, var_1.x, true), vec4<bool>(var_1.x, var_1.x, true, var_1.x), var_1.x)), false));
    global0 = Struct_1(_wgslsmith_dot_vec4_u32(var_0.b, _wgslsmith_div_vec4_u32(~var_0.b, abs(vec4<u32>(u_input.a.x, u_input.a.x, 10962u, 4294967295u)))) & abs(u_input.a.x), max(vec4<u32>(_wgslsmith_add_u32(var_0.b.x ^ u_input.a.x, var_0.a), ~_wgslsmith_dot_vec4_u32(vec4<u32>(global0.a, 4294967295u, 4294967295u, u_input.a.x), var_0.b), ~(~81963u), 2190u), min(func_2().b, _wgslsmith_div_vec4_u32(global0.b, _wgslsmith_mod_vec4_u32(vec4<u32>(39831u, 1u, 9322u, 30544u), vec4<u32>(1u, 4294967295u, 73710u, u_input.a.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-124f))))) + 1f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -384f), var_0.d.x, func_6(Struct_2(var_0), vec2<i32>(-2147483647i, -1i) >> (global0.b.ww % vec2<u32>(32u)), Struct_3(var_0.d.x, Struct_1(u_input.a.x, global0.b, -118f, var_0.d), Struct_2(var_0))).d.x)));
    return global0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(919f, -1000f) * global0.c) <= 448f, true));
    var var_1 = global0.a;
    let var_2 = ~(-2147483647i);
    var_1 = abs(min(~abs(global0.a), ~(~global0.a)));
    var_1 = u_input.a.x;
    var var_3 = var_0;
    let var_4 = Struct_1(global0.b.x & ~33323u, func_1(), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-2475f)), _wgslsmith_f_op_f32(select(314f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1552f)) + _wgslsmith_f_op_f32(global0.c - global0.d.x)), var_0)))), _wgslsmith_f_op_vec3_f32(global0.d + _wgslsmith_f_op_vec3_f32(global0.d - func_2().d)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(-1000f, 604f)), _wgslsmith_div_vec4_f32(vec4<f32>(-584f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.d.x - var_4.d.x))), 323f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1083f, 456f)))), vec4<f32>(_wgslsmith_f_op_f32(trunc(533f)), -794f, _wgslsmith_f_op_f32(round(var_4.c)), func_6(Struct_2(var_4), _wgslsmith_sub_vec2_i32(vec2<i32>(var_2, -41274i), vec2<i32>(-58525i, 46144i)), Struct_3(-1000f, var_4, Struct_2(Struct_1(u_input.a.x, vec4<u32>(u_input.a.x, 42097u, 6005u, global0.a), var_4.d.x, vec3<f32>(-233f, -1371f, 1000f))))).c)), _wgslsmith_mult_vec2_i32(vec2<i32>(-1i, _wgslsmith_sub_i32(-24728i, var_2)), -vec2<i32>(var_2, 0i)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-func_6(Struct_2(Struct_1(global0.a, var_4.b, -1000f, global0.d)), vec2<i32>(var_2, var_2), Struct_3(858f, Struct_1(16592u, vec4<u32>(5741u, var_4.a, 16930u, 18226u), 1654f, vec3<f32>(var_4.c, global0.c, -704f)), Struct_2(Struct_1(0u, global0.b, 1571f, global0.d)))).d) + vec3<f32>(_wgslsmith_f_op_f32(1431f * -425f), var_4.c, _wgslsmith_div_f32(var_4.d.x, global0.c))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(var_4.d))) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-342f, 196f, 1866f), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.c, global0.c, -526f), vec3<f32>(-239f, 840f, var_4.c))))))));
}

