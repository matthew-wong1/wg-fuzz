struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: f32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<bool>, arg_1: f32, arg_2: Struct_3, arg_3: Struct_4) -> vec2<i32> {
    var var_0 = 1u;
    let var_1 = _wgslsmith_div_u32(min(1u, ~(~(~4075u))), min(1u, 10194u));
    var_0 = 1u;
    var var_2 = max(var_1, ~var_1);
    var var_3 = Struct_3(_wgslsmith_add_i32(8156i, ~(i32(-1i) * -25949i)));
    return -max(vec2<i32>(max(u_input.a, i32(-1i) * -41094i), min(12674i, u_input.b)), select(firstLeadingBit(vec2<i32>(0i, -526i)) >> (firstTrailingBit(vec2<u32>(1u, var_1)) % vec2<u32>(32u)), max(~vec2<i32>(arg_3.a.a, 2549i), vec2<i32>(21936i, arg_3.a.a)), true));
}

fn func_2(arg_0: f32, arg_1: f32) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -140f), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(u_input.b, 0i), -u_input.b), func_3(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), -693f, Struct_3(-9277i), Struct_4(Struct_3(6341i)))) <= (u_input.a >> (~(~10758u) % 32u)), firstTrailingBit(-_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, -48936i, u_input.a), vec3<i32>(u_input.b, -2147483647i, u_input.a))), select(vec3<u32>(~_wgslsmith_mult_u32(59920u, 33986u), 1u, select(~96817u, 1u, all(vec4<bool>(false, true, true, false)))), vec3<u32>(1u, 1u, 1u), !(~u_input.a == u_input.a)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0))))));
    var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-394f, 1599f) * vec2<f32>(160f, 378f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-676f, arg_1), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(569f, var_0.a), vec2<f32>(1874f, 190f), var_0.b)), !vec2<bool>(false, var_0.b))))), vec2<f32>(var_0.a, 432f));
    var var_2 = false;
    let var_3 = Struct_3(0i);
    return Struct_1(arg_0, false, vec3<i32>(var_0.c.x, u_input.b >> (var_0.d.x % 32u), var_3.a), ~(countOneBits(var_0.d) & firstLeadingBit(vec3<u32>(4294967295u, 0u, 1u))));
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-2219f)) - _wgslsmith_f_op_f32(-global0.x))), 1000f, -1624f);
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a, 126f) - var_0.xy), _wgslsmith_f_op_vec2_f32(min(var_0.zy, var_0.yx))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a, 412f) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(794f, arg_1.a))))))));
    let var_1 = vec2<bool>(true, all(vec2<bool>(arg_1.b, true)));
    global0 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.x), -1498f))))));
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(func_2(_wgslsmith_f_op_f32(-var_0.x), var_0.x).a, -436f, !(!var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1.a)) + _wgslsmith_f_op_f32(f32(-1f) * -763f)) * _wgslsmith_f_op_f32(-362f * _wgslsmith_f_op_f32(trunc(548f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.x, var_0.x, var_1.x))))));
    return arg_1;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_4 {
    let var_0 = -291f;
    return Struct_4(Struct_3(-2147483647i >> (abs(arg_0.d.x) % 32u)));
}

fn func_1(arg_0: Struct_3) -> Struct_2 {
    let var_0 = func_5(func_4(u_input.b, func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1163f + -443f) + global0.x), _wgslsmith_f_op_f32(trunc(-861f)))), func_4(func_4(~(~u_input.b), func_4(arg_0.a, func_4(arg_0.a, Struct_1(global0.x, false, vec3<i32>(u_input.b, arg_0.a, u_input.a), vec3<u32>(0u, 1u, 0u))))).c.x, func_4(-13970i, Struct_1(-129f, true, ~vec3<i32>(u_input.a, u_input.b, arg_0.a), vec3<u32>(1u, 1u, 1u)))));
    var var_1 = Struct_3(_wgslsmith_div_i32(i32(-1i) * -_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -2147483647i), vec2<i32>(30605i, -34685i)), _wgslsmith_div_i32(abs(var_0.a.a), firstTrailingBit(u_input.b) | _wgslsmith_sub_i32(arg_0.a, 1i))));
    var var_2 = Struct_1(global0.x, true, _wgslsmith_sub_vec3_i32(-abs(vec3<i32>(u_input.a, arg_0.a, 0i)), ~(-vec3<i32>(34038i, var_0.a.a, var_0.a.a))) & vec3<i32>(firstTrailingBit(func_5(Struct_1(global0.x, false, vec3<i32>(u_input.a, 2147483647i, arg_0.a), vec3<u32>(1u, 4294967295u, 6506u)), Struct_1(global0.x, false, vec3<i32>(2147483647i, 1i, -2147483647i), vec3<u32>(1u, 81449u, 27466u))).a.a), arg_0.a, _wgslsmith_div_i32(-var_0.a.a, -var_1.a)), func_2(-151f, global0.x).d);
    let var_3 = func_5(func_4(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_f_op_f32(f32(-1f) * -304f)), global0.x).c.x, Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(var_2.a, var_2.a, var_2.b)))), _wgslsmith_f_op_f32(round(global0.x)) > 1f, var_2.c, func_2(-1576f, -791f).d)), Struct_1(738f, true, -var_2.c, ~vec3<u32>(~1u, ~var_2.d.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.d.x, var_2.d.x, var_2.d.x, var_2.d.x), vec4<u32>(var_2.d.x, 0u, var_2.d.x, var_2.d.x)))));
    var_1 = var_3.a;
    return Struct_2(func_4(~countOneBits(var_2.c.x), Struct_1(_wgslsmith_f_op_f32(trunc(-867f)), var_2.b, -_wgslsmith_mult_vec3_i32(var_2.c, vec3<i32>(-20368i, var_3.a.a, var_0.a.a)), select(var_2.d, var_2.d, select(vec3<bool>(true, var_2.b, true), vec3<bool>(false, false, true), true)))).c.x, 11763i, _wgslsmith_f_op_f32(-558f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - var_2.a)))));
}

fn func_6(arg_0: Struct_2, arg_1: f32, arg_2: vec4<f32>) -> StorageBuffer {
    let var_0 = ~_wgslsmith_div_u32(~0u, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(1970u, 40652u, 85176u), vec3<u32>(0u, 4294967295u, 99058u)));
    var var_1 = func_5(func_4(_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.b, u_input.a), ~vec2<i32>(arg_0.a, u_input.a)), func_4(max(i32(-1i) * -1i, -25055i >> (var_0 % 32u)), func_4(arg_0.b, func_2(arg_1, -1237f)))), Struct_1(func_2(1592f, arg_2.x).a, true, ~reverseBits(-vec3<i32>(arg_0.b, 0i, 45185i)), _wgslsmith_sub_vec3_u32(~(~vec3<u32>(15212u, var_0, 31258u)), vec3<u32>(~1u, min(79144u, var_0), min(var_0, 0u)))));
    global0 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(arg_2.xx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_2.x, -124f), vec2<f32>(arg_0.c, arg_0.c)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c, 1084f))))), vec2<f32>(_wgslsmith_f_op_f32(-arg_2.x), arg_0.c));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.x, arg_0.c)), _wgslsmith_f_op_f32(-236f * -1012f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(func_2(-692f, global0.x).a)) - _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_2.x)), _wgslsmith_f_op_f32(arg_2.x * arg_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(859f, -781f)) - _wgslsmith_f_op_f32(min(arg_2.x, -240f))), all(vec4<bool>(true, true, true, true))))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c, 287f, 1064f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))));
    return StorageBuffer(_wgslsmith_sub_vec4_i32(abs(min(vec4<i32>(18491i, -1i, 1i, var_1.a.a), select(vec4<i32>(2738i, u_input.a, arg_0.b, 23774i), vec4<i32>(var_1.a.a, 23678i, 44985i, 49327i), false))), ~select(vec4<i32>(u_input.b, u_input.a, -14453i, u_input.a), -vec4<i32>(1i, arg_0.b, u_input.b, var_1.a.a), true)), arg_0.c, firstLeadingBit(vec3<u32>(40487u ^ var_0, var_0 | 18221u, 10930u) | func_2(_wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(sign(arg_0.c))).d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, ~1u), reverseBits(vec2<u32>(4981u, 74286u))), ~_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(0u, 34919u, 44903u, 84996u)), vec4<u32>(~71154u, 24444u, max(16962u, 97091u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 4294967295u, 1u), vec4<u32>(4294967295u, 33733u, 75868u, 3299u)))), 56327u > firstTrailingBit(~1u));
    var var_1 = 33694u;
    let var_2 = ~max(~_wgslsmith_mult_i32(-1i, 5878i), ~9217i);
    let var_3 = firstTrailingBit(~(~(~var_0)));
    var_1 = 4294967295u;
    let var_4 = 955f;
    let x = u_input.a;
    s_output = func_6(func_1(Struct_3(u_input.a)), global0.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(-215f, _wgslsmith_f_op_f32(global0.x * var_4)), var_4) + _wgslsmith_div_vec4_f32(vec4<f32>(-593f, _wgslsmith_div_f32(100f, global0.x), -1799f, func_2(-565f, var_4).a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, var_4, 399f, -212f)) * vec4<f32>(var_4, 564f, -993f, global0.x)))));
}

