struct Struct_1 {
    a: bool,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: u32,
    b: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> f32 {
    let var_0 = true;
    var var_1 = select(true, false, var_0);
    var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(-982i, ~(12105i >> (u_input.a % 32u))), firstTrailingBit(select(vec2<i32>(-1i, 1i), select(vec2<i32>(-562i, 4848i), vec2<i32>(2147483647i, -44355i), var_0), false))) == -1i;
    var var_2 = 4294967295u;
    var_2 = abs(u_input.a);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(841f * global0.x))))));
}

fn func_2(arg_0: Struct_4, arg_1: i32) -> Struct_1 {
    global0 = vec4<f32>(_wgslsmith_f_op_f32(118f + -1705f), global0.x, _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.x))));
    var var_0 = Struct_4(any(vec3<bool>(true, false, arg_0.b.x)), !vec4<bool>(true, true, any(arg_0.b.wxw) && !arg_0.a, arg_0.a));
    let var_1 = Struct_2(105077u, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(359f)), _wgslsmith_div_f32(1252f, -348f)))), global0.x));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 982f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.b.x))))) - global0.wxz);
    var_2 = vec3<f32>(_wgslsmith_f_op_f32(-1240f + -1000f), _wgslsmith_f_op_f32(f32(-1f) * -375f), _wgslsmith_f_op_f32(var_1.b.x + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, var_2.x))));
    return Struct_1(arg_0.a, var_0.b.x, -abs(arg_1));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(548f)), -297f, global0.x, _wgslsmith_f_op_f32(step(127f, global0.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global0.x, global0.x, global0.x)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-170f, global0.x, -1490f, -1000f))))))));
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(942f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(f32(-1f) * -455f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.x, global0.x)) - -807f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.x, 1000f))), all(vec4<bool>(arg_0.d, true, arg_1.a, false)))), _wgslsmith_f_op_f32(sign(1039f))));
    var var_0 = Struct_2(_wgslsmith_sub_u32(~((u_input.a ^ 9057u) ^ _wgslsmith_add_u32(4294967295u, u_input.a)), 1u), vec2<f32>(-955f, _wgslsmith_f_op_f32(-377f + global0.x)));
    var_0 = Struct_2(~0u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(global0.zx)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-979f - global0.x), -1702f))));
    let var_1 = arg_0.b;
    return arg_1;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-526f - arg_1.b.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-190f - arg_1.b.x), global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1039f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(2777f - -672f), global0.x)))));
    global0 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(select(832f, arg_1.b.x, false)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1057f), _wgslsmith_div_f32(global0.x, -1126f))), _wgslsmith_div_f32(-1000f, 1335f), arg_1.b.x)));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(417f, -1764f, arg_1.b.x, -148f), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, global0.x, global0.x, arg_1.b.x), vec4<f32>(368f, arg_1.b.x, -706f, -448f))), !vec4<bool>(false, true, true, arg_0.a))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(602f, -1039f, 2333f, global0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.x, 527f, global0.x, arg_1.b.x))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(147f + arg_1.b.x), -588f, _wgslsmith_f_op_f32(f32(-1f) * -1264f), _wgslsmith_f_op_f32(-global0.x))))));
    var var_0 = 1u;
    global0 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.x, global0.x, 1f, 2885f)));
    return func_2(Struct_4(any(!(!vec4<bool>(arg_0.a, arg_0.a, arg_0.b, false))), !vec4<bool>(all(vec4<bool>(true, arg_0.a, arg_0.a, arg_0.b)), !arg_0.b, false && arg_0.a, arg_0.a && arg_0.b)), arg_0.c);
}

fn func_1() -> Struct_1 {
    global0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + global0.x)), _wgslsmith_f_op_f32(min(global0.x, 871f)), _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(global0.x - global0.x)), global0.x))));
    var var_0 = func_5(func_4(Struct_3(func_2(Struct_4(true, vec4<bool>(false, false, true, true)), i32(-1i) * -1i), vec2<i32>(2147483647i, 2147483647i) >> (~vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)), func_2(Struct_4(false, vec4<bool>(true, false, true, true)), _wgslsmith_div_i32(-12341i, 2147483647i)), false, func_2(Struct_4(false, vec4<bool>(true, false, true, false)), i32(-1i) * -34356i)), Struct_1(~1u > u_input.a, func_2(Struct_4(true, vec4<bool>(true, false, false, true)), 1i).a, abs(~0i)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(48534u, 1u, 48284u, 29730u), vec4<u32>(u_input.a, 4294967295u, 84578u, 18113u)) >> (~1u % 32u)), Struct_2(17960u, global0.yy));
    var_0 = func_4(Struct_3(Struct_1(!all(vec4<bool>(true, false, false, false)), true, _wgslsmith_mod_i32(var_0.c, var_0.c)), ~vec2<i32>(35829i, var_0.c) ^ vec2<i32>(_wgslsmith_div_i32(var_0.c, 1i), abs(11237i)), Struct_1(any(!vec2<bool>(var_0.a, false)), all(select(vec4<bool>(true, var_0.b, true, var_0.a), vec4<bool>(var_0.a, false, true, false), true)), _wgslsmith_div_i32(var_0.c, var_0.c) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.c, var_0.c, var_0.c), vec3<i32>(-337i, 2147483647i, var_0.c))), var_0.b, func_5(Struct_1(var_0.a, u_input.a == u_input.a, -40057i << (u_input.a % 32u)), Struct_2(~u_input.a, _wgslsmith_f_op_vec2_f32(step(global0.zy, global0.yx))))), func_5(Struct_1(func_4(Struct_3(Struct_1(false, true, var_0.c), vec2<i32>(var_0.c, var_0.c), Struct_1(var_0.b, var_0.b, var_0.c), var_0.a, Struct_1(true, var_0.b, -1i)), Struct_1(false, var_0.b, 2147483647i), 47963u).b && (true || var_0.b), _wgslsmith_f_op_f32(global0.x * global0.x) >= 828f, _wgslsmith_clamp_i32(var_0.c, var_0.c, var_0.c)), Struct_2(u_input.a, vec2<f32>(_wgslsmith_f_op_f32(855f * global0.x), _wgslsmith_f_op_f32(round(global0.x))))), ~(~11004u));
    var_0 = func_4(Struct_3(Struct_1(!(!var_0.a), !any(vec4<bool>(var_0.a, false, var_0.b, var_0.a)), var_0.c & _wgslsmith_div_i32(var_0.c, -21845i)), abs(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(6766i, 16104i, var_0.c), vec3<i32>(var_0.c, 23149i, -14932i)), abs(-1i))), func_2(Struct_4(func_5(Struct_1(var_0.b, true, var_0.c), Struct_2(u_input.a, global0.zy)).a, !vec4<bool>(true, var_0.b, false, var_0.a)), ~1i), var_0.b || all(!vec2<bool>(var_0.a, false)), Struct_1(false, true, 40956i)), Struct_1(true, false || var_0.b, var_0.c), ~((37845u << (u_input.a % 32u)) | 1u));
    var var_1 = countOneBits(var_0.c ^ var_0.c);
    return Struct_1(~var_0.c >= 1i, true, -(~(-1i)) | _wgslsmith_clamp_i32(i32(-1i) * -var_0.c, 52831i, _wgslsmith_sub_i32(var_0.c, -11150i & var_0.c)));
}

fn func_6(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec2<u32>) -> Struct_1 {
    let var_0 = Struct_4(arg_0.a.b, vec4<bool>(arg_0.d, ((arg_1.c << (u_input.a % 32u)) < 0i) && select(false, select(arg_0.c.b, true, false), true), false, arg_1.b));
    let var_1 = Struct_2(~u_input.a & 4294967295u, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global0.x + -2463f), _wgslsmith_div_f32(global0.x, global0.x)) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(188f, global0.x))))))));
    let var_2 = 29737u;
    let var_3 = max(vec3<i32>(arg_0.c.c >> (1u % 32u), ~(arg_1.c & 0i), _wgslsmith_div_i32(arg_0.b.x, -2147483647i)), vec3<i32>(reverseBits(arg_0.a.c), arg_0.b.x >> (33205u % 32u), 1i) << (vec3<u32>(var_1.a, firstTrailingBit(1u), u_input.a) % vec3<u32>(32u))) << (~firstTrailingBit(~_wgslsmith_sub_vec3_u32(vec3<u32>(12303u, arg_2.x, 3777u), vec3<u32>(4494u, 1u, u_input.a))) % vec3<u32>(32u));
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, _wgslsmith_div_f32(var_1.b.x, _wgslsmith_f_op_f32(abs(588f))), 1332f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-237f + -1000f) - -775f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(global0.x)), _wgslsmith_f_op_f32(exp2(global0.x)))), _wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(f32(-1f) * -499f))), _wgslsmith_f_op_f32(max(1407f, global0.x))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, var_1.b.x, -260f, 1536f)))))));
    return Struct_1(arg_1.b, true, ~var_3.x);
}

fn func_7(arg_0: bool, arg_1: Struct_1, arg_2: vec2<u32>) -> Struct_2 {
    global0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1890f)) * _wgslsmith_f_op_f32(abs(global0.x))), 1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_div_f32(_wgslsmith_div_f32(global0.x, global0.x), -281f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(min(global0.x, global0.x)), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(585f + global0.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -401f, global0.x, global0.x))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-126f, global0.x, global0.x, 127f), vec4<f32>(global0.x, -515f, 266f, 973f), vec4<bool>(arg_1.b, arg_0, true, arg_0))))))))));
    global0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 1228f, global0.x, -283f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.x, 1633f, -909f, global0.x), vec4<f32>(global0.x, global0.x, global0.x, -721f))), select(vec4<bool>(arg_0, arg_0, arg_0, true), vec4<bool>(arg_1.a, true, arg_0, false), vec4<bool>(arg_0, arg_0, true, false)))) * vec4<f32>(_wgslsmith_f_op_f32(trunc(global0.x)), _wgslsmith_f_op_f32(global0.x + 1075f), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(global0.x - global0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 2446f, global0.x, -1684f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(541f, global0.x, global0.x, global0.x) * vec4<f32>(-242f, global0.x, -254f, -962f)))))));
    var var_0 = Struct_3(func_2(Struct_4(!(!arg_1.a), vec4<bool>(global0.x >= global0.x, true, !arg_0, true)), func_1().c), ~max(abs(reverseBits(vec2<i32>(arg_1.c, -2147483647i))), vec2<i32>(_wgslsmith_div_i32(-1i, -1i), -9379i)), Struct_1(arg_1.b && (func_6(Struct_3(arg_1, vec2<i32>(arg_1.c, 0i), arg_1, false, Struct_1(arg_1.b, true, arg_1.c)), Struct_1(false, arg_0, arg_1.c), arg_2).c >= arg_1.c), func_5(func_4(Struct_3(arg_1, vec2<i32>(0i, arg_1.c), Struct_1(arg_0, true, arg_1.c), false, arg_1), Struct_1(arg_0, arg_0, -31124i), u_input.a), Struct_2(66123u, vec2<f32>(-550f, -352f))).a || arg_1.b, ~_wgslsmith_mod_i32(33901i, -24309i)), true, func_6(Struct_3(Struct_1(arg_1.b, 24619u > arg_2.x, 1i << (1u % 32u)), select(~vec2<i32>(19872i, -1i), -vec2<i32>(arg_1.c, arg_1.c), select(vec2<bool>(false, arg_1.b), vec2<bool>(true, arg_0), arg_1.a)), arg_1, !arg_0, Struct_1(arg_0, arg_1.b, -1i)), Struct_1(true, true, 0i ^ (arg_1.c | arg_1.c)), _wgslsmith_mod_vec2_u32(arg_2, arg_2)));
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.yx)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1420f * -343f), _wgslsmith_f_op_f32(398f + 624f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(global0.yy)))));
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -142f), -312f, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(var_1.x))))));
    return Struct_2(firstLeadingBit(55989u), global0.xw);
}

fn func_8(arg_0: Struct_2) -> StorageBuffer {
    var var_0 = ~_wgslsmith_dot_vec4_u32(select(vec4<u32>(~u_input.a, arg_0.a, arg_0.a, 22310u), ~select(vec4<u32>(u_input.a, 0u, arg_0.a, u_input.a), vec4<u32>(arg_0.a, u_input.a, u_input.a, arg_0.a), true), any(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false))), vec4<u32>(~u_input.a, arg_0.a, _wgslsmith_add_u32(u_input.a, u_input.a), ~96829u) & (abs(vec4<u32>(1u, u_input.a, 59262u, u_input.a)) << (~vec4<u32>(u_input.a, arg_0.a, arg_0.a, 54682u) % vec4<u32>(32u))));
    var var_1 = global0.zxw;
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1849f, arg_0.b.x, global0.x, 1594f) + vec4<f32>(252f, arg_0.b.x, global0.x, 1309f))))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.b.x, global0.x, 795f, arg_0.b.x), vec4<f32>(var_1.x, -1427f, -1895f, 1104f))))))));
    let var_3 = func_7(false, func_5(Struct_1(true, true, select(-222i, 1i, func_2(Struct_4(false, vec4<bool>(true, false, false, true)), 0i).b)), Struct_2(1u, vec2<f32>(_wgslsmith_f_op_f32(var_1.x * -3155f), _wgslsmith_f_op_f32(ceil(269f))))), vec2<u32>(_wgslsmith_sub_u32(u_input.a, abs(_wgslsmith_div_u32(arg_0.a, 61413u))), arg_0.a));
    return StorageBuffer((vec2<u32>(~90480u, 4294967295u) >> (vec2<u32>(u_input.a, _wgslsmith_div_u32(53294u, 4294967295u)) % vec2<u32>(32u))) & vec2<u32>(var_3.a, firstLeadingBit(u_input.a)), func_2(Struct_4(false, vec4<bool>(all(vec4<bool>(true, false, false, false)), true, all(vec3<bool>(false, false, true)), false)), (i32(-1i) * -4132i) >> (max(~arg_0.a, arg_0.a) % 32u)).c, abs(reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(78307u, arg_0.a), vec2<u32>(29623u, arg_0.a))) ^ (min(vec2<u32>(14914u, 1u), vec2<u32>(89309u, u_input.a)) & ~vec2<u32>(arg_0.a, 4294967295u))), _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(44528i, reverseBits(-66378i), -24533i >> (u_input.a % 32u)), ~45138i, countOneBits(-39633i)), -firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, 1i, 0i), vec3<i32>(2147483647i, 59073i, -2147483647i), vec3<i32>(-40360i, 1i, 18597i)))), -1784f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.x;
    let var_1 = !(u_input.a <= u_input.a);
    let x = u_input.a;
    s_output = func_8(func_7(any(!vec3<bool>(var_1, false, var_1)) || all(!vec3<bool>(var_1, false, true)), func_6(Struct_3(func_1(), select(vec2<i32>(-37878i, -38437i), vec2<i32>(4049i, 0i), vec2<bool>(true, var_1)), func_4(Struct_3(Struct_1(true, true, 23881i), vec2<i32>(-50202i, 2147483647i), Struct_1(false, var_1, 0i), var_1, Struct_1(var_1, true, -54761i)), Struct_1(var_1, false, 67849i), u_input.a), var_1, Struct_1(var_1, true, -2147483647i)), func_5(func_4(Struct_3(Struct_1(false, var_1, 31268i), vec2<i32>(2147483647i, -16576i), Struct_1(true, var_1, -3734i), var_1, Struct_1(var_1, var_1, -2147483647i)), Struct_1(false, true, 1i), u_input.a), Struct_2(u_input.a, global0.yx)), _wgslsmith_mod_vec2_u32(~vec2<u32>(62889u, u_input.a), ~vec2<u32>(u_input.a, u_input.a))), ~vec2<u32>(max(u_input.a, u_input.a), 0u)));
}

