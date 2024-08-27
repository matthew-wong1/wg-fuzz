struct Struct_1 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec4<f32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 3840u;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> u32 {
    global0 = min(4294967295u, u_input.a);
    let var_0 = all(vec2<bool>(all(vec3<bool>(true, false, false)), all(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true))))) && any(vec4<bool>(true, false, true, any(vec4<bool>(true, true, false, true)) & false));
    global0 = 1u;
    let var_1 = vec4<i32>(-2147483647i, ~0i, 1i, firstTrailingBit(-(-1i & select(-1i, 13812i, var_0))));
    global0 = ~u_input.a;
    return _wgslsmith_add_u32(u_input.a, u_input.a);
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: u32) -> vec3<bool> {
    global0 = max(~func_3(), ~99113u);
    return select(vec3<bool>(arg_1.d, !(arg_1.d && arg_1.d), !arg_0.x), select(vec3<bool>(any(!arg_0), arg_0.x | any(vec2<bool>(arg_1.d, arg_0.x)), !all(vec3<bool>(arg_1.d, false, arg_1.d))), !select(!vec3<bool>(true, arg_0.x, arg_1.d), vec3<bool>(arg_0.x, true, false), arg_0.x), true), !(select(~1u, func_3(), !arg_0.x) <= arg_2));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec3<f32>) -> Struct_1 {
    let var_0 = -136f;
    let var_1 = 34771u;
    let var_2 = arg_2.x;
    var var_3 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(777f + arg_2.x))))), arg_2.x, arg_2.x, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1164f, _wgslsmith_f_op_f32(trunc(var_2))), _wgslsmith_f_op_f32(-var_2), true))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.x, 363f)))), _wgslsmith_f_op_vec2_f32(-arg_1.a.xz))), _wgslsmith_f_op_vec4_f32(-arg_1.a), false);
    global0 = ~24287u;
    return arg_1;
}

fn func_5(arg_0: Struct_1) -> Struct_2 {
    var var_0 = Struct_2(arg_0);
    let var_1 = Struct_2(var_0.a);
    let var_2 = false;
    var var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c.x + -805f) * _wgslsmith_f_op_f32(min(var_1.a.a.x, var_0.a.b.x))), _wgslsmith_f_op_f32(arg_0.a.x - 1853f), true));
    var var_4 = -vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 0i), abs(vec2<i32>(-19508i, -1i))) & 1i, select(abs(_wgslsmith_mult_i32(35031i, 8171i)), _wgslsmith_sub_i32(2147483647i, i32(-1i) * -2147483647i), var_1.a.d));
    return var_1;
}

fn func_6(arg_0: vec4<bool>, arg_1: u32, arg_2: Struct_2) -> Struct_1 {
    var var_0 = func_5(func_4(vec3<bool>(arg_0.x, true, func_2(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(arg_2.a.d, arg_0.x)), func_4(arg_0.yww, arg_2.a, vec3<f32>(852f, 1006f, arg_2.a.c.x)), reverseBits(35031u)).x), func_4(select(arg_0.wyw, select(arg_0.yzw, arg_0.ywy, vec3<bool>(arg_0.x, false, false)), arg_0.zzy), arg_2.a, _wgslsmith_f_op_vec3_f32(-arg_2.a.c.wzx)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2.a.c.zyz) * vec3<f32>(1748f, 1001f, -1472f)))))).a;
    global0 = abs(arg_1);
    var_0 = func_5(func_5(arg_2.a).a).a;
    var var_1 = func_5(arg_2.a);
    let var_2 = Struct_2(func_4(vec3<bool>(!(arg_0.x | arg_2.a.d), true, true), Struct_1(var_1.a.c, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(724f, var_1.a.a.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_2.a.a.x, -260f, 703f, arg_2.a.a.x)))), true), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_2.a.a)), _wgslsmith_div_vec2_f32(vec2<f32>(var_2.a.a.x, var_1.a.c.x), _wgslsmith_f_op_vec2_f32(-var_1.a.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(var_1.a.c)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.b.x, -423f, var_0.a.x, _wgslsmith_f_op_f32(max(-1357f, 425f))))), true);
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: vec4<bool>, arg_3: u32) -> bool {
    let var_0 = 1f;
    global0 = u_input.a;
    var var_1 = ~vec4<i32>(1i, 1i, 1i, 1i);
    var var_2 = Struct_2(func_6(!vec4<bool>(true, true, all(arg_2.zw), arg_0 | arg_0), 40294u, func_5(func_4(func_2(arg_2.yz, Struct_1(vec4<f32>(var_0, arg_1, 881f, 428f), vec2<f32>(-1798f, var_0), vec4<f32>(arg_1, arg_1, var_0, 1000f), true), 3899u), Struct_1(vec4<f32>(arg_1, var_0, arg_1, arg_1), vec2<f32>(var_0, 901f), vec4<f32>(928f, 1000f, 769f, arg_1), arg_2.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1809f, -1000f, 168f))))));
    let var_3 = var_2.a;
    return false;
}

fn func_7(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: Struct_1) -> Struct_2 {
    global0 = _wgslsmith_dot_vec2_u32(vec2<u32>(~11293u, u_input.a), ~(~vec2<u32>(u_input.a, u_input.a | 4294967295u)));
    var var_0 = arg_2.d;
    var_0 = !arg_0.x;
    var var_1 = arg_2.a.x;
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-109f, arg_2.a.x, -1289f, -164f))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-339f, arg_2.c.x)))), _wgslsmith_f_op_vec2_f32(-arg_2.a.yw))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.c.x, func_5(func_6(vec4<bool>(arg_2.d, arg_1.a.d, arg_1.a.d, true), u_input.a, Struct_2(arg_1.a))).a.b.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1.a.b.x * arg_1.a.b.x), _wgslsmith_f_op_f32(round(-1277f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -547f), _wgslsmith_f_op_f32(floor(-761f)), !arg_2.d)))), arg_2.d);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(!(!vec3<bool>(false, func_1(true, -2231f, vec4<bool>(true, false, true, false), 2880u), true)), Struct_2(func_5(Struct_1(vec4<f32>(618f, 735f, -105f, -219f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(963f, -978f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-519f, 236f, 476f, 1785f), vec4<f32>(-1401f, 1213f, -1439f, 248f), vec4<bool>(false, false, false, true))), all(vec2<bool>(true, true)))).a), func_5(func_4(select(func_2(vec2<bool>(true, true), Struct_1(vec4<f32>(1038f, 1028f, 799f, -1396f), vec2<f32>(1000f, -968f), vec4<f32>(-1255f, -401f, 221f, 344f), true), 57249u), vec3<bool>(true, false, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true))), Struct_1(vec4<f32>(-268f, 1957f, 586f, -504f), vec2<f32>(694f, 198f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-2237f, -165f, -712f, 841f), vec4<f32>(-397f, -1152f, 1502f, 694f))), true), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(961f, 836f, 858f), _wgslsmith_f_op_vec3_f32(vec3<f32>(1122f, 591f, 2107f) - vec3<f32>(350f, -1091f, 625f)), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), true))))).a);
    let var_1 = _wgslsmith_f_op_vec2_f32(-var_0.a.c.yx);
    let var_2 = _wgslsmith_add_u32(2286u, u_input.a);
    var var_3 = var_0.a;
    var var_4 = ~vec3<u32>(u_input.a, 0u, ~1u);
    let var_5 = select(vec2<bool>(false, true), vec2<bool>(var_1.x == 129f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.b.x, -1143f)) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-188f - var_0.a.c.x))), false);
    var_3 = func_5(var_0.a).a;
    var var_6 = _wgslsmith_f_op_f32(func_6(select(vec4<bool>(true, true, true, true), select(vec4<bool>(var_0.a.d, var_5.x, var_0.a.d, true), vec4<bool>(var_0.a.d, false, false, true), select(vec4<bool>(var_3.d, var_0.a.d, var_0.a.d, var_3.d), vec4<bool>(var_5.x, var_3.d, false, var_5.x), vec4<bool>(false, true, false, false))), select(vec4<bool>(false, true, false, var_3.d), vec4<bool>(true, true, false, var_0.a.d), vec4<bool>(false, var_0.a.d, var_3.d, var_0.a.d))), ~(~u_input.a), func_7(!vec3<bool>(false, false, var_0.a.d), var_0, var_0.a)).b.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.c.x) - -1664f));
    global0 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x, _wgslsmith_add_i32(max(-24244i, select(_wgslsmith_div_i32(-3952i, 45804i), reverseBits(-2147483647i), var_3.d)), ~(-(i32(-1i) * -1i))), firstLeadingBit(u_input.a), vec4<f32>(-782f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a.x) + -696f), var_1.x, var_3.b.x), ~_wgslsmith_mult_i32(~max(17293i, -12095i), _wgslsmith_div_i32(_wgslsmith_div_i32(0i, -1i), _wgslsmith_dot_vec4_i32(vec4<i32>(22845i, -25945i, 18685i, -2147483647i), vec4<i32>(2147483647i, -30969i, -61817i, -37349i)))));
}

