struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec4<bool>,
    d: i32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<bool, 7>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + _wgslsmith_f_op_f32(f32(-1f) * -769f)))) + 111f), vec4<u32>(u_input.a.x, ~46601u, _wgslsmith_mult_u32(~max(u_input.a.x, u_input.a.x), countOneBits(~u_input.a.x)), 1u), !vec4<bool>(any(arg_0.c.yzw), global1[_wgslsmith_index_u32(abs(_wgslsmith_mult_u32(u_input.a.x, arg_0.b.x)), 7u)], arg_0.c.x, false), i32(-1i) * -arg_0.d, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, global0.x, arg_0.e.x) - arg_0.e)))));
    let var_1 = arg_0;
    var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1763f), var_0.b, select(var_0.c, !var_1.c, var_1.c.x), var_0.d, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1411f, 757f, global0.x)), vec3<f32>(_wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(-var_1.e.x), _wgslsmith_f_op_f32(-var_0.a))))));
    var var_2 = firstLeadingBit(var_1.b.wzx);
    let var_3 = vec4<i32>(_wgslsmith_div_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, var_0.d, 0i, 13140i), vec4<i32>(-28427i, -2147483647i, arg_0.d, arg_0.d) << (vec4<u32>(arg_0.b.x, 26520u, 4294967295u, 1u) % vec4<u32>(32u))), -2147483647i), u_input.c.x, -_wgslsmith_dot_vec2_i32(-u_input.c.yz, vec2<i32>(firstTrailingBit(arg_0.d), -1i)), var_0.d);
    return !(!var_1.c.wy);
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec2<bool>, arg_3: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.a, -903f, 1017f, 465f));
    var var_1 = ~abs(abs(arg_0.b.yx) ^ ~(vec2<u32>(u_input.e, u_input.a.x) ^ u_input.a));
    var var_2 = arg_3.c.x;
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * -256f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.e.x + 1290f) + _wgslsmith_f_op_f32(-1254f - -1257f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(arg_3.e.x)), _wgslsmith_f_op_f32(exp2(arg_3.e.x)))))), arg_0.a, global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(615f - global0.x))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(789f)))))));
    var_1 = u_input.a;
    return -24689i;
}

fn func_2() -> bool {
    return !(_wgslsmith_add_i32(-2147483647i, func_4(Struct_1(1055f, vec4<u32>(1u, 1u, u_input.e, 0u), vec4<bool>(true, false, global1[_wgslsmith_index_u32(1u, 7u)], true), u_input.d, vec3<f32>(global0.x, 643f, -216f)), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.e, u_input.e), 7u)], func_3(Struct_1(-1162f, vec4<u32>(35107u, 96503u, u_input.e, u_input.a.x), vec4<bool>(false, true, false, global1[_wgslsmith_index_u32(u_input.e, 7u)]), -28170i, vec3<f32>(global0.x, -428f, global0.x))), Struct_1(315f, vec4<u32>(0u, u_input.a.x, 1u, 1u), vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.e, 7u)], global1[_wgslsmith_index_u32(1u, 7u)], global1[_wgslsmith_index_u32(4294967295u, 7u)]), u_input.c.x, vec3<f32>(-2137f, 386f, global0.x)))) <= _wgslsmith_dot_vec2_i32(-vec2<i32>(1i, 0i), ~vec2<i32>(-45576i, 31857i) << (u_input.a % vec2<u32>(32u))));
}

fn func_5(arg_0: u32, arg_1: bool, arg_2: bool) -> vec2<u32> {
    let var_0 = firstTrailingBit(~(abs(~vec4<u32>(24494u, u_input.e, 70119u, 1u)) << (vec4<u32>(0u, ~122301u, ~u_input.e, arg_0) % vec4<u32>(32u))));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, global0.x) + vec2<f32>(-685f, -747f)) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(513f, -967f), vec2<f32>(1000f, global0.x)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(383f, 283f) + vec2<f32>(global0.x, -740f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(820f, global0.x)))))) - vec2<f32>(_wgslsmith_f_op_f32(exp2(global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + global0.x))));
    var var_1 = arg_0 | ~(~_wgslsmith_dot_vec4_u32(~var_0, vec4<u32>(0u, 4294967295u, u_input.a.x, u_input.a.x)));
    global1 = array<bool, 7>();
    var_1 = select(_wgslsmith_sub_u32(~0u, u_input.e), abs(var_0.x), select(arg_1, ((i32(-1i) * -20445i) | ~u_input.c.x) == u_input.b, true));
    return ~u_input.a;
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec4<i32>) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_div_f32(450f, arg_0.x)))))) - arg_1.e.yz);
    let var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a - -239f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a))));
    var var_2 = ~u_input.d;
    let var_3 = var_0.b.x >> (_wgslsmith_dot_vec2_u32(abs(_wgslsmith_mult_vec2_u32(vec2<u32>(7094u, var_0.b.x), vec2<u32>(4294967295u, arg_1.b.x))), func_5(~var_0.b.x, select(global0.x < -1012f, func_2(), arg_1.c.x), arg_1.c.x | select(false, true, false))) % 32u);
    return arg_1;
}

fn func_6(arg_0: vec4<bool>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = arg_1.b.x ^ 0u;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + global0.x));
    let var_2 = func_1(arg_1.e.yy, arg_1, vec4<i32>(countOneBits(arg_1.d), ~firstTrailingBit(arg_1.d), -max(arg_1.d, 2147483647i), func_1(_wgslsmith_div_vec2_f32(vec2<f32>(global0.x, -1809f), arg_1.e.zx), func_1(vec2<f32>(-1697f, 364f), Struct_1(arg_1.a, vec4<u32>(15122u, 32753u, u_input.e, 4091u), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 7u)], arg_0.x, true, false), -3630i, vec3<f32>(global0.x, global0.x, arg_1.e.x)), vec4<i32>(-18864i, -19933i, arg_1.d, -31982i)), -vec4<i32>(-1i, -8422i, -1i, -7197i)).d) << (vec4<u32>(_wgslsmith_clamp_u32(1u, ~u_input.a.x, 1u), 0u, ~75764u, arg_1.b.x) % vec4<u32>(32u)));
    global1 = array<bool, 7>();
    let var_3 = u_input.a.x;
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-281f, -362f))), vec4<u32>(var_3, 23544u, _wgslsmith_add_u32(~(1u | arg_1.b.x), 8781u), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(16886u, arg_1.b.x), ~u_input.a.x), var_2.b.yw)), select(vec4<bool>(true, global1[_wgslsmith_index_u32(var_3, 7u)], !arg_1.c.x, func_2()), vec4<bool>(false, arg_0.x, !(var_2.a > -705f), (arg_1.c.x & var_2.c.x) != arg_1.c.x), !(!vec4<bool>(false, arg_1.c.x, arg_0.x, arg_1.c.x))), func_4(var_2, global1[_wgslsmith_index_u32(max(func_5(select(1u, 3881u, arg_0.x), any(var_2.c), any(vec4<bool>(var_2.c.x, arg_0.x, arg_1.c.x, global1[_wgslsmith_index_u32(u_input.a.x, 7u)]))).x, 66889u), 7u)], var_2.c.yz, arg_1), _wgslsmith_f_op_vec3_f32(var_2.e * vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.e.x))), arg_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.x))))));
}

fn func_7(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = countOneBits((vec4<i32>(arg_1.d, max(arg_1.d, arg_1.d), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 11459i), vec2<i32>(0i, -37198i)), -24059i) ^ vec4<i32>(arg_1.d, 2147483647i, _wgslsmith_add_i32(33831i, -4182i), func_1(vec2<f32>(arg_1.a, -150f), Struct_1(global0.x, vec4<u32>(u_input.a.x, arg_0.b.x, 78773u, arg_0.b.x), arg_0.c, arg_1.d, vec3<f32>(global0.x, -556f, -176f)), vec4<i32>(arg_0.d, arg_1.d, u_input.d, arg_1.d)).d)) << (_wgslsmith_mult_vec4_u32(vec4<u32>(17926u, 0u, ~arg_1.b.x, ~arg_0.b.x), ~(~vec4<u32>(arg_1.b.x, arg_0.b.x, u_input.e, arg_1.b.x))) % vec4<u32>(32u)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x));
    let var_2 = func_5(func_6(func_6(!arg_0.c, arg_0).c, func_1(_wgslsmith_f_op_vec2_f32(ceil(arg_1.e.zx)), func_1(_wgslsmith_f_op_vec2_f32(ceil(arg_1.e.xz)), func_1(vec2<f32>(var_1, 630f), Struct_1(var_1, vec4<u32>(4294967295u, 40797u, 0u, 28198u), vec4<bool>(global1[_wgslsmith_index_u32(0u, 7u)], true, false, global1[_wgslsmith_index_u32(arg_1.b.x, 7u)]), arg_0.d, arg_1.e), vec4<i32>(2147483647i, var_0.x, -11870i, 11363i)), select(vec4<i32>(2147483647i, 2147483647i, 25715i, 2147483647i), vec4<i32>(1i, arg_1.d, arg_1.d, -71607i), false)), vec4<i32>(var_0.x, var_0.x, abs(50894i), 1i))).b.x, any(!select(select(vec3<bool>(arg_1.c.x, global1[_wgslsmith_index_u32(u_input.a.x, 7u)], true), vec3<bool>(global1[_wgslsmith_index_u32(arg_0.b.x, 7u)], arg_1.c.x, arg_0.c.x), vec3<bool>(true, global1[_wgslsmith_index_u32(arg_0.b.x, 7u)], false)), arg_1.c.zyz, true)), abs(select(_wgslsmith_mult_i32(var_0.x, var_0.x), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, arg_0.d, 59005i, 19168i), vec4<i32>(arg_0.d, u_input.b, 1i, -37959i)), false)) < (-10458i >> (u_input.e % 32u))).x;
    let var_3 = _wgslsmith_dot_vec2_i32(-vec2<i32>(-max(2147483647i, -2147483647i), arg_0.d), ~min(select(u_input.c.yz, -u_input.c.zy, !arg_0.c.x), -countOneBits(u_input.c.yy)));
    global0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0.x, 1291f), _wgslsmith_f_op_vec2_f32(max(arg_1.e.zx, arg_0.e.xz)))), func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, var_1)), Struct_1(-334f, arg_0.b, arg_0.c, arg_0.d, vec3<f32>(-1325f, 124f, arg_0.a)), ~vec4<i32>(arg_1.d, 2147483647i, arg_0.d, arg_1.d)).e.yz, func_1(arg_1.e.xy, Struct_1(var_1, arg_1.b, vec4<bool>(arg_0.c.x, false, true, true), -2147483647i, vec3<f32>(738f, 545f, -660f)), vec4<i32>(0i, var_3, 1i, var_0.x)).a != _wgslsmith_div_f32(1000f, arg_0.e.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_0.e.yy, arg_1.e.zz) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(402f, 179f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(arg_1.e.zy)) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0.a, arg_1.a), arg_1.e.xx)))), false || func_6(select(vec4<bool>(arg_1.c.x, arg_1.c.x, arg_0.c.x, false), vec4<bool>(false, global1[_wgslsmith_index_u32(arg_1.b.x, 7u)], true, global1[_wgslsmith_index_u32(u_input.a.x, 7u)]), arg_1.c.x), func_1(vec2<f32>(2309f, var_1), Struct_1(global0.x, arg_0.b, arg_1.c, u_input.d, vec3<f32>(-1855f, 425f, -228f)), vec4<i32>(1i, -2147483647i, 2147483647i, 2147483647i))).c.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(arg_1.a + 906f), _wgslsmith_div_f32(var_1, var_1)))) - arg_0.e.xx)));
    return func_6(vec4<bool>(global1[_wgslsmith_index_u32(~arg_1.b.x, 7u)], arg_1.c.x, false, func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-429f, var_1) * vec2<f32>(1002f, -361f)), func_1(vec2<f32>(arg_1.a, arg_0.e.x), arg_0, vec4<i32>(arg_0.d, var_0.x, -1i, arg_1.d)), vec4<i32>(0i, 2147483647i, arg_1.d, u_input.b) ^ vec4<i32>(arg_1.d, u_input.d, -44405i, 0i)).a >= var_1), arg_1);
}

fn func_8(arg_0: Struct_1, arg_1: f32, arg_2: vec3<u32>) -> Struct_1 {
    global1 = array<bool, 7>();
    var var_0 = arg_0.e.x > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1811f)), -1000f)));
    let var_1 = Struct_1(arg_1, func_7(Struct_1(arg_0.a, arg_0.b, arg_0.c, ~(arg_0.d ^ 2147483647i), _wgslsmith_f_op_vec3_f32(func_1(vec2<f32>(548f, 2338f), arg_0, vec4<i32>(-1i, u_input.b, u_input.c.x, arg_0.d)).e * _wgslsmith_div_vec3_f32(arg_0.e, arg_0.e))), arg_0).b, !vec4<bool>(global1[_wgslsmith_index_u32(reverseBits(21762u), 7u)], any(select(vec4<bool>(arg_0.c.x, global1[_wgslsmith_index_u32(0u, 7u)], global1[_wgslsmith_index_u32(arg_2.x, 7u)], false), arg_0.c, arg_0.c)), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.e, arg_0.b.x), func_5(arg_2.x, global1[_wgslsmith_index_u32(u_input.e, 7u)], false).x), 7u)], true), _wgslsmith_sub_i32(0i, 46630i), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(func_6(vec4<bool>(arg_0.c.x, true, global1[_wgslsmith_index_u32(u_input.a.x, 7u)], true), arg_0).e))))));
    var_0 = false;
    global0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(f32(-1f) * -304f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))), arg_0.e.x);
    return func_7(var_1, var_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_8(func_7(func_6(!vec4<bool>(true, true, global1[_wgslsmith_index_u32(0u, 7u)], global1[_wgslsmith_index_u32(u_input.a.x, 7u)]), func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 211f) - vec2<f32>(2563f, 1000f)), Struct_1(global0.x, vec4<u32>(24050u, 22954u, u_input.a.x, u_input.e), vec4<bool>(false, false, global1[_wgslsmith_index_u32(29210u, 7u)], global1[_wgslsmith_index_u32(u_input.e, 7u)]), u_input.d, vec3<f32>(global0.x, 1271f, global0.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(0i, -1i, u_input.b, -1i), vec4<i32>(u_input.d, 15516i, u_input.d, u_input.b)))), func_6(vec4<bool>(global1[_wgslsmith_index_u32(1u, 7u)] | false, !global1[_wgslsmith_index_u32(1u, 7u)], !global1[_wgslsmith_index_u32(130088u, 7u)], 1i < u_input.b), Struct_1(_wgslsmith_f_op_f32(-786f * global0.x), ~vec4<u32>(4294967295u, 0u, u_input.a.x, u_input.a.x), !vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 7u)], global1[_wgslsmith_index_u32(u_input.e, 7u)], global1[_wgslsmith_index_u32(1u, 7u)], true), ~u_input.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(-438f, -286f, global0.x) * vec3<f32>(global0.x, global0.x, global0.x))))), func_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(global0.x, 2246f), vec2<f32>(-1091f, global0.x)))))), func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1417f, 139f), vec2<f32>(global0.x, 1123f)) + vec2<f32>(global0.x, global0.x)), func_7(func_6(vec4<bool>(global1[_wgslsmith_index_u32(1u, 7u)], true, true, global1[_wgslsmith_index_u32(4294967295u, 7u)]), Struct_1(global0.x, vec4<u32>(1u, u_input.a.x, u_input.e, 0u), vec4<bool>(false, global1[_wgslsmith_index_u32(22845u, 7u)], false, true), u_input.b, vec3<f32>(678f, -1000f, global0.x))), Struct_1(global0.x, vec4<u32>(1u, 23537u, u_input.a.x, 4294967295u), vec4<bool>(global1[_wgslsmith_index_u32(u_input.e, 7u)], false, false, global1[_wgslsmith_index_u32(29708u, 7u)]), 12309i, vec3<f32>(global0.x, global0.x, 163f))), vec4<i32>(-1i) * -vec4<i32>(u_input.c.x, u_input.d, 2147483647i, u_input.c.x)), _wgslsmith_clamp_vec4_i32(firstTrailingBit(~vec4<i32>(u_input.c.x, u_input.b, u_input.c.x, -1i)), _wgslsmith_div_vec4_i32(-vec4<i32>(u_input.b, -9548i, u_input.b, 2147483647i), ~vec4<i32>(u_input.c.x, -1i, u_input.c.x, u_input.c.x)), abs(_wgslsmith_mult_vec4_i32(vec4<i32>(2132i, 0i, 2147483647i, u_input.b), vec4<i32>(u_input.b, 28360i, -4066i, u_input.c.x))))).a, ~(~_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.e, 61655u, u_input.e), vec3<u32>(u_input.a.x, 4294967295u, u_input.e)), vec3<u32>(u_input.e, u_input.a.x, u_input.e))));
    global1 = array<bool, 7>();
    global0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-959f)) * global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1669f) + _wgslsmith_f_op_f32(trunc(497f)))) - vec2<f32>(func_7(Struct_1(global0.x, var_0.b, var_0.c, var_0.d, vec3<f32>(569f, global0.x, var_0.e.x)), var_0).a, var_0.a)), func_8(var_0, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.a)) + 1f))), countOneBits(vec3<u32>(~0u, 16005u, _wgslsmith_div_u32(39378u, var_0.b.x)))).e.xz);
    var var_1 = func_1(_wgslsmith_f_op_vec2_f32(var_0.e.zx * _wgslsmith_f_op_vec2_f32(-vec2<f32>(func_1(vec2<f32>(global0.x, var_0.e.x), var_0, vec4<i32>(var_0.d, -62384i, 2147483647i, -1i)).a, var_0.e.x))), var_0, reverseBits(~(~vec4<i32>(var_0.d, 2147483647i, 31272i, u_input.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-247f, var_1.e.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.e.x, -221f) * var_0.e.yy), vec2<bool>(var_1.c.x, var_0.c.x)))) * func_6(func_6(var_0.c, var_0).c, var_0).e.xy));
}

