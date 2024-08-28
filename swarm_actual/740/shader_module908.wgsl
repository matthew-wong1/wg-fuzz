struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(15222i, 1i, 25127i);

var<private> global1: Struct_2;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: bool, arg_3: vec3<bool>) -> f32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -268f), Struct_1(countOneBits(-select(vec2<i32>(30412i, -6145i), vec2<i32>(global0.x, -2147483647i), true)), 1507f, max(~arg_1.c, global1.b.c)), -25754i, any(vec3<bool>(true, global1.d, arg_3.x)));
    var var_1 = -1501f;
    var var_2 = -countOneBits(u_input.c);
    let var_3 = (any(select(vec4<bool>(arg_2, true, var_0.d, arg_3.x), select(vec4<bool>(arg_3.x, var_0.d, false, arg_3.x), vec4<bool>(false, global1.d, global1.d, false), vec4<bool>(false, var_0.d, var_0.d, arg_3.x)), !vec4<bool>(var_0.d, false, global1.d, global1.d))) || (select(true, arg_3.x || global1.d, arg_2 | arg_3.x) & false)) && true;
    let var_4 = Struct_1(vec2<i32>(_wgslsmith_mod_i32(-var_0.c, 18412i), select(_wgslsmith_mult_i32(var_2.x, 1i), _wgslsmith_mult_i32(global0.x, var_2.x), false & global1.d)) >> ((vec2<u32>(u_input.b & u_input.a, ~16726u) ^ global1.b.c.zy) % vec2<u32>(32u)), global1.b.b, var_0.b.c);
    return -102f;
}

fn func_4(arg_0: f32, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: Struct_2) -> vec2<u32> {
    var var_0 = vec4<bool>(true, arg_3.d, true, !(arg_3.d == false));
    let var_1 = reverseBits(_wgslsmith_sub_vec4_u32(~(~vec4<u32>(arg_3.b.c.x, arg_2.c.x, 0u, 0u)), ~select(max(global1.b.c, vec4<u32>(arg_2.c.x, 40424u, arg_2.c.x, u_input.b)), ~vec4<u32>(0u, global1.b.c.x, global1.b.c.x, 1u), global1.d)));
    return min(_wgslsmith_add_vec2_u32(var_1.wz, ~arg_2.c.ww), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, abs(u_input.b), 4294967295u, arg_2.c.x), firstTrailingBit(select(global1.b.c, global1.b.c, vec4<bool>(var_0.x, false, false, true)))), ~(~_wgslsmith_clamp_u32(81026u, var_1.x, global1.b.c.x))));
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_mult_u32(~global1.b.c.x, _wgslsmith_dot_vec4_u32(firstLeadingBit((vec4<u32>(0u, 7653u, 1u, global1.b.c.x) & vec4<u32>(u_input.b, u_input.a, 4294967295u, global1.b.c.x)) & vec4<u32>(1u, 1u, u_input.a, u_input.b)), ~vec4<u32>(select(global1.b.c.x, 43181u, true), 13221u, 0u >> (global1.b.c.x % 32u), _wgslsmith_add_u32(11876u, global1.b.c.x))));
    var_0 = _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(global1.b.c.wz, vec2<u32>(reverseBits(_wgslsmith_mult_u32(1u, 1u)), _wgslsmith_add_u32(countOneBits(u_input.b), ~1u))), func_4(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(vec3<f32>(global1.b.b, global1.a, 1327f), global1.b, global1.d, vec3<bool>(global1.d, false, global1.d))), _wgslsmith_f_op_f32(global1.b.b - global1.b.b))))), vec4<i32>(firstLeadingBit(_wgslsmith_dot_vec2_i32(global0.xx, vec2<i32>(-42459i, global0.x))), -38062i, _wgslsmith_dot_vec2_i32(global0.yx, global0.zy), 0i), Struct_1(min(vec2<i32>(-12660i, global0.x), vec2<i32>(-3512i, -51094i) & u_input.c.yy), -833f, vec4<u32>(35930u, global1.b.c.x, 7878u, global1.b.c.x | 21159u)), Struct_2(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(998f, -2075f, -1550f)), global1.b, true, select(vec3<bool>(true, global1.d, global1.d), vec3<bool>(false, true, global1.d), vec3<bool>(true, global1.d, false)))), global1.b, ~(-15327i), global1.d)));
    global1 = Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global1.b.b, -423f))), global1.b.b), global1.b.b)), global1.b, global0.x, !all(select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), global1.d), !vec3<bool>(global1.d, global1.d, global1.d), global1.d)));
    global0 = -_wgslsmith_mult_vec3_i32(firstLeadingBit(u_input.c.zwx), u_input.d);
    global1 = Struct_2(global1.a, Struct_1(vec2<i32>(u_input.c.x, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(global1.b.a, vec2<i32>(u_input.c.x, -54526i)), countOneBits(u_input.c.x))), _wgslsmith_f_op_f32(round(422f)), vec4<u32>(firstTrailingBit(global1.b.c.x), ~11466u, u_input.a, 4294967295u) >> (_wgslsmith_add_vec4_u32(max(vec4<u32>(61920u, 22387u, u_input.b, global1.b.c.x), global1.b.c), ~global1.b.c) % vec4<u32>(32u))), u_input.c.x, all(!vec3<bool>(global1.d, global1.d, global1.d)) & all(vec3<bool>(global1.d, all(vec4<bool>(global1.d, false, true, global1.d)), false)));
    return Struct_2(global1.b.b, global1.b, ~(~global0.x), global1.d);
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: f32, arg_3: bool) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(round(690f)), global1.b, arg_1.b.a.x, arg_0.x);
    let var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1.a, -451f, arg_2, arg_1.b.b))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a, arg_2, -1239f, 1283f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(107f, -1000f, 2312f, -997f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.b, arg_1.b.b, 819f, arg_2))))), vec4<f32>(798f, global1.b.b, 250f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.b.b))))));
    global1 = func_2();
    let var_2 = -2147483647i;
    let var_3 = vec2<f32>(func_2().a, _wgslsmith_f_op_f32(f32(-1f) * -592f));
    return var_0.b;
}

fn func_1(arg_0: bool) -> Struct_2 {
    var var_0 = func_5(vec4<bool>(global1.a >= 214f, true, false, all(select(vec2<bool>(global1.d, global1.d), vec2<bool>(true, true), global1.d))), func_2(), global1.a, global1.d);
    global1 = func_2();
    var_0 = Struct_1(-_wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(var_0.a, global0.xz), global1.b.a) >> (~var_0.c.yy % vec2<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.a))), 2325f)) * _wgslsmith_f_op_f32(global1.b.b + global1.a)), global1.b.c);
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b), -1282f)), var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-570f * -834f) * var_0.b))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(global1.a)))), _wgslsmith_div_f32(-284f, var_0.b), var_0.b) - vec3<f32>(_wgslsmith_f_op_f32(ceil(func_2().b.b)), -566f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)))));
    global0 = vec3<i32>(var_0.a.x, var_0.a.x, i32(-1i) * -firstTrailingBit(global1.b.a.x & 36876i));
    return Struct_2(_wgslsmith_f_op_f32(136f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-229f, _wgslsmith_div_f32(var_1.x, var_1.x))))), Struct_1(var_0.a, _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(sign(-418f))), vec4<u32>(var_0.c.x, reverseBits(reverseBits(var_0.c.x)), var_0.c.x, abs(u_input.b))), 0i, ~(~(~1u)) >= _wgslsmith_mult_u32(~u_input.a, var_0.c.x));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_div_f32(arg_1.b.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(245f, _wgslsmith_f_op_f32(f32(-1f) * -116f)))));
    var var_1 = any(vec4<bool>(true, true, true, all(!select(vec3<bool>(true, arg_1.d, false), vec3<bool>(false, arg_1.d, false), true))));
    var var_2 = Struct_1(vec2<i32>(global1.c, reverseBits(func_2().c)), _wgslsmith_f_op_f32(628f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.b) * -316f)))), global1.b.c);
    let var_3 = func_2().b;
    var_1 = all(vec3<bool>(true, !func_1(true).d, !arg_0.d));
    return arg_1.b;
}

fn func_7(arg_0: vec2<bool>, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: vec4<f32>) -> Struct_1 {
    global1 = Struct_2(_wgslsmith_f_op_f32(func_3(_wgslsmith_div_vec3_f32(arg_3.yxx, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_3.wyy) + _wgslsmith_f_op_vec3_f32(trunc(arg_3.zwz)))), Struct_1(func_5(!vec4<bool>(global1.d, false, false, global1.d), Struct_2(526f, arg_2, global0.x, global1.d), 393f, false).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(513f * -1000f)), vec4<u32>(global1.b.c.x & global1.b.c.x, 47803u, max(arg_1.x, global1.b.c.x), 1u)), global1.d, select(!(!vec3<bool>(global1.d, arg_0.x, false)), vec3<bool>(func_2().d, all(vec3<bool>(true, arg_0.x, false)), global1.b.c.x < 4294967295u), select(select(vec3<bool>(false, global1.d, global1.d), vec3<bool>(arg_0.x, false, true), true), vec3<bool>(arg_0.x, global1.d, global1.d), !vec3<bool>(true, global1.d, true))))), func_6(Struct_2(1490f, global1.b, -10458i, (arg_2.b <= global1.b.b) | arg_0.x), Struct_2(global1.a, global1.b, -36227i, true & !arg_0.x)), -24261i, arg_0.x);
    global1 = Struct_2(1728f, func_6(func_2(), Struct_2(721f, Struct_1(vec2<i32>(-1i, -24897i), _wgslsmith_f_op_f32(arg_3.x * -1415f), vec4<u32>(u_input.a, arg_2.c.x, 1u, u_input.b)), global1.c, !(arg_2.b >= -1000f))), _wgslsmith_div_i32(u_input.c.x, global0.x), global1.d);
    let var_0 = Struct_1(vec2<i32>(_wgslsmith_mult_i32(select(func_1(arg_0.x).c, ~u_input.c.x, !global1.d), u_input.d.x), _wgslsmith_add_i32(_wgslsmith_add_i32(countOneBits(1i), u_input.d.x), _wgslsmith_div_i32(~arg_2.a.x, _wgslsmith_add_i32(0i, u_input.c.x)))), _wgslsmith_div_f32(-262f, arg_2.b), func_1(!arg_0.x).b.c);
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_2.b))), Struct_1(global0.xx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(626f + -1326f))) - _wgslsmith_f_op_f32(global1.b.b * -875f)), vec4<u32>(firstTrailingBit(arg_2.c.x), ~(10433u >> (global1.b.c.x % 32u)), 0u, abs(var_0.c.x))), -arg_2.a.x, true);
    global0 = u_input.c.wzw;
    return Struct_1(var_1.b.a, 572f, global1.b.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(global1.b.a.x, -18640i);
    global1 = Struct_2(_wgslsmith_f_op_f32(select(-788f, _wgslsmith_f_op_f32(trunc(-219f)), false)), func_7(!select(vec2<bool>(false, global1.d), vec2<bool>(true, true), global1.d), vec2<u32>(~min(0u, 1u), ~1u), func_6(func_1(true), Struct_2(_wgslsmith_f_op_f32(round(global1.b.b)), Struct_1(vec2<i32>(0i, -10484i), global1.a, vec4<u32>(global1.b.c.x, u_input.a, 8098u, 28520u)), -2147483647i, false)), vec4<f32>(global1.a, 919f, _wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a + global1.b.b)))), firstTrailingBit(u_input.c.x), (global1.a <= _wgslsmith_f_op_f32(f32(-1f) * -1000f)) || false);
    var var_1 = firstTrailingBit(_wgslsmith_add_u32(global1.b.c.x, 63082u)) >> (~_wgslsmith_sub_u32(global1.b.c.x, 4294967295u) % 32u);
    let var_2 = vec3<i32>(firstLeadingBit(global1.c), u_input.d.x ^ -8970i, firstTrailingBit(_wgslsmith_mult_i32(-1126i, 13057i)));
    let var_3 = func_1(global1.d);
    global0 = min(~(~(~vec3<i32>(global1.b.a.x, global0.x, u_input.c.x))) ^ ~u_input.d, select(_wgslsmith_mult_vec3_i32(countOneBits(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, -2379i, 2147483647i), vec3<i32>(global0.x, u_input.d.x, 1i))), vec3<i32>(0i, _wgslsmith_sub_i32(0i, global1.b.a.x), 30703i >> (1u % 32u))), u_input.d, false));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.b.b, global1.a) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b.b, _wgslsmith_f_op_f32(sign(-1000f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.b.b, var_3.a, -1087f, var_3.b.b), _wgslsmith_div_vec4_f32(vec4<f32>(global1.b.b, 163f, 794f, 1514f), vec4<f32>(-2478f, -474f, 675f, -1950f))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1126f, global1.b.b, global1.a, -662f) * vec4<f32>(-102f, -1000f, var_3.a, -1818f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, var_3.a, -771f, -1341f) + vec4<f32>(var_3.a, global1.b.b, -224f, 1708f)), !vec4<bool>(true, false, global1.d, true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.b, global1.a, 2523f, var_3.a)), global1.d))), global1.b.c.xw, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(func_7(vec2<bool>(true, true), var_3.b.c.ww ^ vec2<u32>(global1.b.c.x, u_input.b), func_2().b, vec4<f32>(-673f, var_3.b.b, 322f, 690f)).b, var_3.b.b)))), -1500f);
}

