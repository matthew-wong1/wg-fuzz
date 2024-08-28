struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 10>;

var<private> global1: array<Struct_3, 22> = array<Struct_3, 22>(Struct_3(Struct_2(1u, 23332u, i32(-2147483648), 40454i), false, Struct_1(vec4<bool>(true, false, true, true)), 0u, Struct_1(vec4<bool>(true, true, false, false))), Struct_3(Struct_2(1u, 54808u, 27648i, -3601i), true, Struct_1(vec4<bool>(true, false, false, false)), 7224u, Struct_1(vec4<bool>(true, false, true, true))), Struct_3(Struct_2(1u, 2477u, 74401i, -28122i), true, Struct_1(vec4<bool>(false, false, true, true)), 4294967295u, Struct_1(vec4<bool>(true, false, false, false))), Struct_3(Struct_2(4294967295u, 50493u, 1324i, -408i), false, Struct_1(vec4<bool>(false, false, true, true)), 1641u, Struct_1(vec4<bool>(false, false, true, true))), Struct_3(Struct_2(0u, 1u, 33452i, 2147483647i), true, Struct_1(vec4<bool>(true, false, false, false)), 4294967295u, Struct_1(vec4<bool>(false, true, true, false))), Struct_3(Struct_2(3979u, 0u, 1i, 14935i), false, Struct_1(vec4<bool>(true, true, true, true)), 4294967295u, Struct_1(vec4<bool>(false, false, true, true))), Struct_3(Struct_2(43073u, 0u, i32(-2147483648), -1i), false, Struct_1(vec4<bool>(false, false, true, false)), 0u, Struct_1(vec4<bool>(true, true, true, false))), Struct_3(Struct_2(4294967295u, 4294967295u, 100i, -8720i), true, Struct_1(vec4<bool>(false, true, false, true)), 92790u, Struct_1(vec4<bool>(true, false, false, true))), Struct_3(Struct_2(0u, 16395u, 35490i, 47993i), true, Struct_1(vec4<bool>(false, true, false, false)), 30012u, Struct_1(vec4<bool>(false, false, false, false))), Struct_3(Struct_2(4294967295u, 17770u, 2147483647i, 0i), true, Struct_1(vec4<bool>(false, false, false, true)), 17612u, Struct_1(vec4<bool>(false, true, false, false))), Struct_3(Struct_2(75001u, 39312u, 0i, -22367i), true, Struct_1(vec4<bool>(false, false, false, false)), 1u, Struct_1(vec4<bool>(true, true, false, true))), Struct_3(Struct_2(6860u, 4294967295u, -26334i, -16402i), true, Struct_1(vec4<bool>(true, true, false, true)), 1u, Struct_1(vec4<bool>(false, true, false, true))), Struct_3(Struct_2(4805u, 0u, 1i, -46234i), true, Struct_1(vec4<bool>(false, false, false, false)), 17656u, Struct_1(vec4<bool>(false, true, false, true))), Struct_3(Struct_2(1u, 9456u, 2147483647i, -1i), false, Struct_1(vec4<bool>(false, true, true, true)), 1u, Struct_1(vec4<bool>(false, true, true, true))), Struct_3(Struct_2(97458u, 23493u, 2147483647i, 2147483647i), false, Struct_1(vec4<bool>(true, true, false, true)), 78419u, Struct_1(vec4<bool>(false, false, false, true))), Struct_3(Struct_2(22069u, 58821u, 30626i, -54994i), false, Struct_1(vec4<bool>(true, true, false, false)), 14839u, Struct_1(vec4<bool>(true, false, true, true))), Struct_3(Struct_2(0u, 0u, -12044i, 9332i), false, Struct_1(vec4<bool>(true, false, false, false)), 22093u, Struct_1(vec4<bool>(true, true, true, true))), Struct_3(Struct_2(0u, 1u, 18782i, 0i), false, Struct_1(vec4<bool>(true, true, true, false)), 4294967295u, Struct_1(vec4<bool>(false, true, true, false))), Struct_3(Struct_2(19728u, 4294967295u, 31556i, 1i), true, Struct_1(vec4<bool>(false, false, false, false)), 0u, Struct_1(vec4<bool>(true, true, false, true))), Struct_3(Struct_2(1u, 0u, i32(-2147483648), 45272i), true, Struct_1(vec4<bool>(false, false, true, true)), 64926u, Struct_1(vec4<bool>(false, false, true, false))), Struct_3(Struct_2(87689u, 4294967295u, 1454i, -1i), true, Struct_1(vec4<bool>(false, false, true, false)), 54057u, Struct_1(vec4<bool>(false, true, true, true))), Struct_3(Struct_2(3253u, 4294967295u, 6760i, -42710i), false, Struct_1(vec4<bool>(false, true, false, false)), 26542u, Struct_1(vec4<bool>(true, false, false, false))));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = Struct_2(1u ^ ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(7088u, 1u), vec2<u32>(19946u, 4294967295u))), 10011u, _wgslsmith_clamp_i32(u_input.a, -_wgslsmith_div_i32(firstLeadingBit(u_input.c), u_input.b.x), _wgslsmith_sub_i32(-_wgslsmith_mult_i32(u_input.b.x, u_input.c), -2147483647i)), -33578i);
    var var_1 = Struct_2(var_0.a, _wgslsmith_add_u32(var_0.b | _wgslsmith_mod_u32(abs(var_0.a), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b, 1u), vec2<u32>(0u, var_0.b))), var_0.b), _wgslsmith_mult_i32(-1i, -(2147483647i | (var_0.c & var_0.c))), _wgslsmith_div_i32(43621i, 34445i));
    let var_2 = -reverseBits(firstLeadingBit(reverseBits(vec4<i32>(46465i, var_1.c, -2147483647i, var_1.d)) ^ vec4<i32>(1221i, var_1.c, u_input.b.x, 0i)));
    let var_3 = Struct_1(vec4<bool>(!any(select(vec2<bool>(true, false), vec2<bool>(false, true), false)), false, !any(vec3<bool>(true, true, true)), all(vec4<bool>(true, false, any(vec4<bool>(true, false, false, false)), select(false, false, false)))));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(2323f, 1179f)) - _wgslsmith_f_op_f32(ceil(-494f)))))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1000f, 769f))))))));
    return select(_wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(4272u, var_0.a), vec2<u32>(81622u, var_0.b)), ~vec2<u32>(1u, 1u), ~vec2<u32>(var_1.b, var_1.a)), ~select(vec2<u32>(77117u, var_1.b) ^ vec2<u32>(18257u, 0u), vec2<u32>(2558u, 0u), var_3.a.x & var_3.a.x)), 1u, any(!(!select(vec3<bool>(true, var_3.a.x, var_3.a.x), vec3<bool>(true, false, true), var_3.a.x))));
}

fn func_2() -> Struct_1 {
    let var_0 = vec4<u32>(60225u, abs(2841u), ~func_3(), _wgslsmith_mod_u32(_wgslsmith_mult_u32(~(~0u), reverseBits(_wgslsmith_clamp_u32(1u, 1u, 24569u))), ~(~1u)));
    return Struct_1(!vec4<bool>(true, true, any(vec4<bool>(true, true, true, true)), true));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: Struct_3) -> Struct_1 {
    global0 = array<vec3<i32>, 10>();
    var var_0 = vec3<bool>(arg_0, false, arg_3.b);
    var var_1 = arg_3.c;
    var var_2 = Struct_1(vec4<bool>(true, all(arg_1.a), func_2().a.x, arg_3.e.a.x));
    global1 = array<Struct_3, 22>();
    return Struct_1(vec4<bool>(false, true, !all(!vec3<bool>(false, arg_1.a.x, arg_3.e.a.x)), !var_0.x));
}

fn func_1(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: vec4<bool>) -> Struct_2 {
    global0 = array<vec3<i32>, 10>();
    var var_0 = !(!arg_0.c.a.yx);
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(arg_1.x)), _wgslsmith_f_op_f32(floor(2745f)))), vec2<f32>(600f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))));
    global0 = array<vec3<i32>, 10>();
    var var_2 = func_4(all(!select(select(vec3<bool>(false, true, arg_2.x), arg_0.c.a.yww, true), arg_0.e.a.zxz, !vec3<bool>(var_0.x, arg_2.x, true))), func_2(), vec3<f32>(var_1.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(arg_1.x)), _wgslsmith_div_f32(1000f, 1215f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1053f + -143f))) + arg_1.x)), Struct_3(Struct_2(4294967295u, arg_0.d, reverseBits(arg_0.a.c << (arg_0.d % 32u)), i32(-1i) * -4354i), arg_0.b, arg_0.e, arg_0.a.a, func_2()));
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global1[_wgslsmith_index_u32(0u, 22u)], _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1135f, 1799f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -511f)), -669f))), select(vec4<bool>(true, any(vec4<bool>(true, true, true, true)), all(vec2<bool>(true, true)), true), vec4<bool>(true, true, all(vec2<bool>(true, true)) && true, true), vec4<bool>(true, true, true, true)));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(888f)) - -2566f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -699f), _wgslsmith_f_op_f32(-1f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-136f, -1857f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-679f, -1285f)))) + -1763f) + -963f));
    var_0 = Struct_2(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, ~83590u), select(countOneBits(~vec2<u32>(var_0.a, var_0.b)), min(firstLeadingBit(vec2<u32>(var_0.a, var_0.a)), vec2<u32>(7546u, 0u)), all(vec2<bool>(true, true)))), _wgslsmith_mod_u32((var_0.a >> (_wgslsmith_clamp_u32(var_0.b, var_0.b, 0u) % 32u)) >> (abs(abs(10604u)) % 32u), var_0.b), u_input.c, u_input.a >> (0u % 32u));
    var var_2 = 67573u;
    var_2 = 120602u;
    let var_3 = select(!func_2().a.wy, vec2<bool>(true, true), !vec2<bool>(max(var_0.b, 4294967295u) < var_0.a, any(vec2<bool>(true, true))));
    global1 = array<Struct_3, 22>();
    var var_4 = 1u;
    let var_5 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(26835i);
}

