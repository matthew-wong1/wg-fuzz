struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: f32,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec3<bool>,
    c: Struct_3,
    d: f32,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: vec3<bool>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(-1022f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(-1649f + global0.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-766f)) - _wgslsmith_f_op_f32(sign(-553f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-243f, global0.x, global0.x), vec3<f32>(global0.x, -434f, 1003f)))))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.x, -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))));
    let var_1 = Struct_2(Struct_1(-reverseBits(~vec3<i32>(u_input.a, 15912i, -2147483647i)), global0.x, _wgslsmith_f_op_f32(f32(-1f) * -841f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_f32(floor(-342f)))), u_input.b.x));
    let var_2 = !(!select(any(global1.yx), true & global1.x, true) | any(global1.yz));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(-427f - _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(trunc(var_1.a.d)))), var_1.a.c);
    var var_3 = var_0.yx;
    return var_2;
}

fn func_2(arg_0: Struct_2) -> vec3<bool> {
    var var_0 = Struct_2(arg_0.a);
    var var_1 = _wgslsmith_dot_vec3_i32(~firstLeadingBit(var_0.a.a), _wgslsmith_mod_vec3_i32(vec3<i32>(var_0.a.a.x, reverseBits(arg_0.a.a.x), reverseBits(arg_0.a.a.x | -1i)), abs(~arg_0.a.a)));
    let var_2 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, var_0.a.b, global0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_0.a.c)), _wgslsmith_f_op_f32(-global0.x)), 112f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1222f, global0.x) + global0.x))), vec3<bool>(global1.x, all(!vec3<bool>(false, global1.x, global1.x)), true)));
    return select(select(!select(vec3<bool>(global1.x, global1.x, true), select(vec3<bool>(true, global1.x, global1.x), vec3<bool>(true, true, true), true), vec3<bool>(global1.x, global1.x, global1.x)), select(vec3<bool>(true, !global1.x, all(global1.yx)), vec3<bool>(true, true, true), global1.x), func_3() && (-1552f > global0.x)), !vec3<bool>(true, global1.x, false), !(arg_0.a.c > var_2.x));
}

fn func_1(arg_0: Struct_1) -> Struct_5 {
    global1 = vec3<bool>(u_input.a >= -(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 1i), arg_0.a.xz) & countOneBits(2147483647i)), !all(!func_2(Struct_2(Struct_1(arg_0.a, -1460f, global0.x, arg_0.d, 6131u)))), u_input.a > 1i);
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(726f, -1464f)), _wgslsmith_f_op_f32(ceil(arg_0.d))), vec2<f32>(_wgslsmith_f_op_f32(arg_0.c + -859f), _wgslsmith_f_op_f32(round(arg_0.d)))), vec2<f32>(-312f, _wgslsmith_div_f32(-1166f, _wgslsmith_f_op_f32(ceil(arg_0.d)))))));
    var var_1 = Struct_4(var_0.x, !vec3<bool>(!(arg_0.a.x >= arg_0.a.x), global1.x, !all(vec3<bool>(global1.x, global1.x, global1.x))), Struct_3(arg_0), global0.x);
    var var_2 = true;
    let var_3 = vec2<i32>(u_input.a, -2147483647i);
    return Struct_5(-12460i);
}

fn func_4(arg_0: Struct_5, arg_1: vec2<f32>, arg_2: u32) -> Struct_1 {
    var var_0 = 812f;
    var var_1 = ~(_wgslsmith_mult_vec4_i32(abs(~vec4<i32>(-2758i, 1i, 25054i, arg_0.a)), ~vec4<i32>(13337i, u_input.a, u_input.a, 1i) ^ -vec4<i32>(arg_0.a, -1i, arg_0.a, arg_0.a)) << (~vec4<u32>(~0u, u_input.b.x, arg_2, abs(4294967295u)) % vec4<u32>(32u)));
    let var_2 = u_input.b;
    let var_3 = Struct_1(-(_wgslsmith_clamp_vec3_i32(-vec3<i32>(-3214i, u_input.a, var_1.x), countOneBits(var_1.xzz), var_1.wxw) & vec3<i32>(countOneBits(-42253i), 1i, ~(-23306i))), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2088f), _wgslsmith_f_op_f32(-575f * arg_1.x)))), _wgslsmith_f_op_f32(floor(global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.x)))), _wgslsmith_dot_vec2_u32(select(~u_input.b.zw ^ ~vec2<u32>(54525u, 16539u), _wgslsmith_mod_vec2_u32(countOneBits(u_input.b.zz), ~vec2<u32>(0u, arg_2)), global1.yx), vec2<u32>(4294967295u, firstTrailingBit(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(3577u, u_input.b.x, 4294967295u, 0u))))));
    var_0 = global0.x;
    return Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(var_1.x, _wgslsmith_mult_i32(0i, var_1.x), arg_0.a), select(abs(var_1.xyy), _wgslsmith_add_vec3_i32(vec3<i32>(-1i, var_3.a.x, u_input.a), var_3.a), global0.x <= -576f)) >> (var_2.wyw % vec3<u32>(32u)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-817f + _wgslsmith_f_op_f32(342f - -1174f))), arg_1.x)), -1158f, arg_1.x, ~(~var_3.e));
}

fn func_5(arg_0: Struct_1) -> vec2<f32> {
    var var_0 = true;
    global1 = select(!vec3<bool>(global1.x, true, global1.x), vec3<bool>(true, any(select(vec3<bool>(true, global1.x, global1.x), select(vec3<bool>(false, true, false), vec3<bool>(global1.x, global1.x, true), true), arg_0.e > arg_0.e)), false), false);
    global1 = !(!vec3<bool>(any(vec2<bool>(true, false)), true, (arg_0.e <= 1u) || all(vec4<bool>(false, global1.x, false, global1.x))));
    let var_1 = func_1(func_4(Struct_5(_wgslsmith_mult_i32(max(u_input.a, u_input.a), 11895i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)), u_input.b.x));
    var var_2 = 0i == -reverseBits(arg_0.a.x);
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, _wgslsmith_f_op_f32(arg_0.b * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(step(arg_0.c, -754f))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(round(-301f))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.d, global0.x)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c, global0.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0.c, -239f), vec2<f32>(-482f, 171f)))), !any(vec4<bool>(false, true, global1.x, global1.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 1000f) * vec2<f32>(global0.x, global0.x))) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.x, 853f), vec2<f32>(-232f, global0.x), global1.yx))))))));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_5(func_4(func_1(Struct_1(vec3<i32>(-1870i, u_input.a, u_input.a), global0.x, -1658f, global0.x, 0u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 768f) + vec2<f32>(130f, global0.x)) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(342f, -2903f)))), u_input.b.x))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1447f + -329f)), -418f) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1514f, 148f)) - vec2<f32>(-349f, global0.x))))));
    var var_0 = ~(~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b.x, u_input.c) | vec2<u32>(1u, 0u), ~vec2<u32>(u_input.c, u_input.b.x))) ^ firstLeadingBit(abs(_wgslsmith_clamp_vec2_u32(~u_input.b.zz, u_input.b.yz, u_input.b.wy)));
    global0 = vec2<f32>(441f, -545f);
    global1 = select(!func_2(Struct_2(Struct_1(vec3<i32>(26973i, 2147483647i, u_input.a), -201f, global0.x, 453f, 4294967295u))), !vec3<bool>(global1.x, any(vec3<bool>(false, global1.x, true)), any(!vec3<bool>(false, global1.x, global1.x))), global1.x);
    var var_1 = _wgslsmith_mod_i32(-2147483647i, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.a, u_input.a, 2147483647i, 1i), max(vec4<i32>(-9253i, -36850i, 34573i, 2147483647i) & vec4<i32>(u_input.a, u_input.a, 0i, u_input.a), -vec4<i32>(1i, 33032i, u_input.a, 2147483647i))), select(~vec4<i32>(u_input.a, u_input.a, 0i, -27242i), max(vec4<i32>(-2147483647i, u_input.a, 26749i, u_input.a), vec4<i32>(u_input.a, u_input.a, 2147483647i, 0i)), global1.x) >> (vec4<u32>(u_input.c, firstLeadingBit(77233u), 31466u, 4294967295u) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -755f, -1000f, -386f) + vec4<f32>(207f, global0.x, -1434f, 582f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1592f, 674f, -766f, global0.x), vec4<f32>(global0.x, global0.x, 1752f, global0.x))), func_3())), vec4<f32>(_wgslsmith_div_f32(287f, 1293f), _wgslsmith_div_f32(global0.x, 1000f), _wgslsmith_f_op_f32(global0.x * 643f), -187f), all(select(vec4<bool>(false, false, global1.x, true), vec4<bool>(true, global1.x, true, true), vec4<bool>(global1.x, global1.x, false, global1.x))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -907f, -359f, global0.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1289f, -1000f, global0.x, 552f), vec4<f32>(global0.x, 305f, global0.x, 1045f)))))));
}

