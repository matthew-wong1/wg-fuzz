struct Struct_1 {
    a: bool,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: i32,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: Struct_3) -> f32 {
    var var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_f32(floor(451f)) >= -1000f;
    let var_2 = max(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(41878u, arg_2.b.d), arg_2.e.a.xz) ^ max(72145u, 1u), 18769u, _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_1.e.a.x, arg_2.e.a.x, 3165u), _wgslsmith_div_vec3_u32(vec3<u32>(1u, 31369u, arg_2.e.a.x), arg_1.e.a)), 0u), _wgslsmith_clamp_vec4_u32(min(vec4<u32>(arg_1.a.d, 4294967295u, 48840u, arg_1.e.a.x), vec4<u32>(arg_2.a.d, arg_1.e.a.x, 4294967295u, arg_1.e.a.x)) ^ vec4<u32>(1u, 0u, 32911u, 30484u), vec4<u32>(arg_2.e.a.x, ~arg_1.a.d, arg_1.b.d, firstLeadingBit(60466u)), select(vec4<u32>(4294967295u, arg_2.e.a.x, 1u, 1175u), vec4<u32>(arg_1.a.d, 4294967295u, arg_2.b.d, arg_2.b.d), true))), abs(arg_1.e.a.x));
    var var_3 = arg_2.a.a;
    let var_4 = Struct_5(any(select(select(!vec4<bool>(var_1, arg_1.e.b, arg_2.a.a, false), select(vec4<bool>(var_1, arg_1.b.a, arg_2.b.a, true), vec4<bool>(false, arg_1.b.a, arg_1.a.a, false), vec4<bool>(false, arg_2.e.b, var_1, true)), true), select(select(vec4<bool>(true, arg_1.e.b, arg_1.b.a, arg_2.a.a), vec4<bool>(var_1, false, true, arg_2.b.a), true), !vec4<bool>(arg_1.e.b, true, arg_2.e.b, arg_2.a.a), !vec4<bool>(arg_1.a.a, var_1, var_1, var_1)), !var_1)));
    return arg_0;
}

fn func_2() -> u32 {
    var var_0 = any(vec2<bool>(true, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1854f + 1084f))) < _wgslsmith_f_op_f32(func_3(_wgslsmith_div_f32(-370f, -433f), Struct_3(Struct_1(true, global0.a.x, vec3<i32>(u_input.a.x, -1i, u_input.b.x), 1u), Struct_1(true, 14095i, vec3<i32>(global0.a.x, u_input.a.x, global0.a.x), 4294967295u), vec3<i32>(51931i, -8743i, 1i), 1i, Struct_2(vec3<u32>(6678u, 4294967295u, 4294967295u), false, -82708i)), Struct_3(Struct_1(false, -17484i, vec3<i32>(29533i, -1i, u_input.a.x), 4294967295u), Struct_1(false, u_input.b.x, vec3<i32>(u_input.a.x, 1i, 2147483647i), 4619u), vec3<i32>(u_input.b.x, 1i, 0i), u_input.a.x, Struct_2(vec3<u32>(47221u, 1u, 4294967295u), true, global0.a.x))))));
    var_0 = select(true | select(true, !any(vec4<bool>(true, true, false, true)), !any(vec3<bool>(true, true, true))), !(!((u_input.b.x < 1i) && true)), any(vec2<bool>(any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true))), true)));
    global0 = Struct_4(global0.a);
    global0 = Struct_4(-vec2<i32>(countOneBits(global0.a.x), max(global0.a.x, -18766i)));
    let var_1 = true;
    return max(0u, ~0u) & firstTrailingBit(~1u);
}

fn func_4(arg_0: i32, arg_1: vec4<u32>, arg_2: f32) -> Struct_5 {
    let var_0 = true;
    var var_1 = _wgslsmith_mult_vec4_u32(~reverseBits(firstTrailingBit(abs(vec4<u32>(13115u, 77702u, arg_1.x, arg_1.x)))), ~firstTrailingBit(vec4<u32>(reverseBits(33265u), select(1u, 5547u, var_0), 0u, ~0u)));
    var var_2 = Struct_4(global0.a);
    var var_3 = _wgslsmith_dot_vec3_u32(arg_1.ywx | vec3<u32>(_wgslsmith_mod_u32(var_1.x >> (var_1.x % 32u), _wgslsmith_div_u32(var_1.x, arg_1.x)), var_1.x, ~var_1.x), vec3<u32>(33395u, ~firstLeadingBit(1u), ~(~(arg_1.x | var_1.x))));
    let var_4 = ~(vec3<i32>(abs(u_input.a.x), -2147483647i, _wgslsmith_clamp_i32(global0.a.x, 1i, 72174i)) & vec3<i32>(24161i, global0.a.x, 9279i)) | -_wgslsmith_div_vec3_i32(-select(vec3<i32>(global0.a.x, 2147483647i, u_input.a.x), vec3<i32>(-2147483647i, -1303i, 2600i), vec3<bool>(true, true, var_0)), countOneBits(-vec3<i32>(var_2.a.x, arg_0, 5488i)));
    return Struct_5(true);
}

fn func_1(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: Struct_2) -> Struct_1 {
    var var_0 = Struct_5(abs(86481u) != select(~_wgslsmith_mult_u32(arg_2.a.x, arg_1.x), ~arg_0.b.d, arg_0.a.a | false));
    var var_1 = func_4(abs(0i), vec4<u32>(50711u, ~(~1u), func_2(), 72399u) << (~abs(vec4<u32>(1u, 0u, arg_0.e.a.x, arg_1.x) | vec4<u32>(4294967295u, 1u, 4294967295u, 31798u)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1f))) * _wgslsmith_f_op_f32(abs(-377f))));
    var var_2 = !(!vec3<bool>(true, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.d, 0i, global0.a.x, u_input.a.x), vec4<i32>(u_input.a.x, global0.a.x, 1i, 2147483647i)) <= _wgslsmith_dot_vec2_i32(arg_0.c.xy, vec2<i32>(arg_0.e.c, arg_0.d)), all(select(vec4<bool>(false, false, var_1.a, true), vec4<bool>(arg_0.a.a, var_0.a, false, true), arg_2.b))));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * -778f) + _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(647f)), _wgslsmith_f_op_f32(1000f - -216f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-1866f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(1000f, 1106f)), _wgslsmith_f_op_f32(f32(-1f) * -1190f))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -363f), _wgslsmith_f_op_f32(ceil(-2126f))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1078f, -1342f) + _wgslsmith_f_op_f32(round(-1000f))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(105f)))))));
    let var_4 = select(all(vec4<bool>(true, true, true, true)), func_4(_wgslsmith_mod_i32(u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.c, 2147483647i, arg_2.c, 21723i), firstTrailingBit(vec4<i32>(-9345i, u_input.b.x, arg_2.c, arg_2.c)))), vec4<u32>(~(~66791u), ~34581u >> (arg_0.a.d % 32u), arg_0.b.d, arg_1.x), var_3.x).a, !all(vec3<bool>(func_4(-5457i, vec4<u32>(4294967295u, 4134u, arg_2.a.x, arg_2.a.x), -265f).a, !arg_0.e.b, false)));
    return Struct_1(var_1.a || !(!select(var_2.x, arg_0.b.a, true)), arg_0.a.c.x, arg_0.a.c, arg_1.x);
}

fn func_5(arg_0: vec4<i32>, arg_1: bool, arg_2: Struct_3, arg_3: f32) -> u32 {
    var var_0 = arg_2;
    var var_1 = select(!select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, arg_1), arg_1)), select(!select(vec2<bool>(true, arg_1), !vec2<bool>(arg_1, var_0.e.b), var_0.e.b), vec2<bool>(true, arg_2.b.a), true), false);
    var var_2 = Struct_2(~vec3<u32>(func_1(Struct_3(Struct_1(var_1.x, 2504i, vec3<i32>(7326i, 16637i, global0.a.x), 64607u), arg_2.b, vec3<i32>(arg_2.b.b, 30570i, arg_2.e.c), 1404i, Struct_2(vec3<u32>(4294967295u, 1u, arg_2.b.d), true, u_input.b.x)), var_0.e.a, Struct_2(vec3<u32>(14900u, var_0.a.d, var_0.a.d), var_0.e.b, -51441i)).d, 0u, ~arg_2.a.d) & ~(~select(arg_2.e.a, var_0.e.a, arg_2.e.b)), arg_1, arg_2.d);
    var var_3 = -vec2<i32>(firstLeadingBit(_wgslsmith_div_i32(var_0.d, -43342i)), ~(~var_2.c)) ^ global0.a;
    var var_4 = ~15205u;
    return var_2.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-1352f + _wgslsmith_f_op_f32(sign(1768f)));
    var var_1 = 24403i;
    let var_2 = Struct_2(vec3<u32>(func_5(vec4<i32>(_wgslsmith_div_i32(0i, 10070i), global0.a.x, -u_input.a.x, firstLeadingBit(u_input.b.x)), false, Struct_3(func_1(Struct_3(Struct_1(false, 1i, vec3<i32>(0i, 1i, global0.a.x), 4294967295u), Struct_1(true, global0.a.x, vec3<i32>(-2147483647i, global0.a.x, 1i), 59220u), vec3<i32>(-12665i, 2147483647i, global0.a.x), global0.a.x, Struct_2(vec3<u32>(50932u, 2411u, 21383u), true, -50305i)), vec3<u32>(1u, 4294967295u, 18396u), Struct_2(vec3<u32>(19222u, 86754u, 1u), true, 0i)), func_1(Struct_3(Struct_1(false, -32658i, vec3<i32>(u_input.a.x, -58079i, 4029i), 0u), Struct_1(true, u_input.b.x, vec3<i32>(global0.a.x, 2147483647i, global0.a.x), 4294967295u), vec3<i32>(u_input.a.x, 2147483647i, 1i), u_input.a.x, Struct_2(vec3<u32>(5466u, 47139u, 51343u), true, u_input.a.x)), vec3<u32>(104381u, 32215u, 6295u), Struct_2(vec3<u32>(61071u, 101986u, 1u), true, 2004i)), select(vec3<i32>(0i, u_input.b.x, 18340i), vec3<i32>(56228i, global0.a.x, global0.a.x), false), min(u_input.b.x, global0.a.x), Struct_2(vec3<u32>(1u, 0u, 23506u), true, -17398i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * _wgslsmith_f_op_f32(1000f - var_0))), 1u, ~58627u), true, global0.a.x);
    let var_3 = var_2;
    var var_4 = _wgslsmith_add_u32(36813u, ~_wgslsmith_dot_vec4_u32(firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(0u, var_3.a.x, var_3.a.x, 4294967295u), vec4<u32>(0u, var_3.a.x, var_2.a.x, 15005u))), vec4<u32>(0u, var_2.a.x, var_2.a.x, 4294967295u) << (min(vec4<u32>(var_2.a.x, 0u, var_2.a.x, 0u), vec4<u32>(var_3.a.x, 1u, var_3.a.x, var_3.a.x)) % vec4<u32>(32u))));
    let var_5 = Struct_3(Struct_1(global0.a.x < ~var_3.c, 34539i, select(vec3<i32>(u_input.b.x << (4294967295u % 32u), _wgslsmith_div_i32(-55301i, global0.a.x), -2147483647i), _wgslsmith_sub_vec3_i32(firstLeadingBit(vec3<i32>(-2147483647i, -24343i, global0.a.x)), vec3<i32>(u_input.a.x, var_3.c, global0.a.x)), select(vec3<bool>(false, var_3.b, false), !vec3<bool>(false, var_2.b, var_2.b), all(vec2<bool>(var_3.b, var_3.b)))), _wgslsmith_sub_u32(abs(_wgslsmith_mod_u32(var_3.a.x, var_3.a.x)), ~(4294967295u & var_3.a.x))), Struct_1(select(true, !(var_2.b | true), true), ~_wgslsmith_dot_vec4_i32(max(vec4<i32>(2147483647i, u_input.a.x, 13746i, -1i), vec4<i32>(global0.a.x, var_3.c, global0.a.x, -1i)), ~vec4<i32>(u_input.b.x, -1i, 41440i, -1i)), vec3<i32>(-10956i, _wgslsmith_add_i32(u_input.a.x, _wgslsmith_mult_i32(0i, -38408i)), 1i), var_3.a.x), -_wgslsmith_mult_vec3_i32(func_1(Struct_3(Struct_1(true, u_input.b.x, vec3<i32>(u_input.b.x, -49718i, 25941i), var_2.a.x), Struct_1(var_2.b, global0.a.x, vec3<i32>(2147483647i, -1i, u_input.b.x), 1u), vec3<i32>(920i, 20465i, var_2.c), -46367i, var_3), ~var_3.a, var_3).c, vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -1i, var_2.c, var_2.c), vec4<i32>(global0.a.x, -2147483647i, u_input.b.x, -2147483647i)), u_input.a.x, ~(-4916i))), -(i32(-1i) * -(~u_input.a.x)), Struct_2(countOneBits(~firstTrailingBit(var_3.a)), !var_2.b, ~2147483647i));
    var_4 = firstTrailingBit(var_2.a.x);
    var var_6 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(103f, var_0));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(var_5.e.a.x, countOneBits(~53933u)), _wgslsmith_div_i32(var_5.b.c.x, (u_input.b.x >> (0u % 32u)) & ~var_2.c) ^ 64832i);
}

