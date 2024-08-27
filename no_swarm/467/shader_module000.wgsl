struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec2<i32> {
    let var_0 = !vec2<bool>(select(true, all(vec2<bool>(true, false)), true), true);
    var var_1 = Struct_3(1u, Struct_2(vec2<i32>(countOneBits(~(-1i)), ~1i), vec3<i32>(-1i) * -_wgslsmith_mult_vec3_i32(vec3<i32>(24281i, 16816i, 1i), vec3<i32>(-906i, 32702i, 28213i)), Struct_1(1f, true), -1671f), _wgslsmith_div_f32(821f, _wgslsmith_f_op_f32(f32(-1f) * -298f)));
    var var_2 = firstTrailingBit(_wgslsmith_mod_i32(i32(-1i) * -(~var_1.b.a.x), var_1.b.a.x));
    global0 = u_input.a.yz;
    var var_3 = var_1.b;
    return var_1.b.a;
}

fn func_2() -> vec2<u32> {
    let var_0 = Struct_3(abs(0u), Struct_2(-func_3(), vec3<i32>(2147483647i, -firstLeadingBit(-60333i), 2147483647i), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1994f, 1833f) - 350f), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(268f)) + -327f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(598f))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, 640f) - 261f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1684f * 743f)))));
    var var_1 = Struct_2(-vec2<i32>(-1i, 1i), vec3<i32>(~(-1i), -var_0.b.a.x, -_wgslsmith_sub_i32(var_0.b.b.x, var_0.b.a.x)), var_0.b.c, _wgslsmith_f_op_f32(var_0.c + _wgslsmith_f_op_f32(-611f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) - var_0.b.c.a))));
    var var_2 = 1741f;
    var var_3 = var_0.b.c;
    var var_4 = Struct_2(vec2<i32>(~(~0i ^ var_1.b.x), firstTrailingBit(_wgslsmith_div_i32(0i, var_0.b.b.x) & 1i)), var_1.b, var_1.c, 1229f);
    return u_input.a.yy;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: vec3<f32>) -> i32 {
    var var_0 = _wgslsmith_add_u32(select(_wgslsmith_dot_vec2_u32(select(u_input.a.zy, u_input.a.yx, true), u_input.a.yx), _wgslsmith_add_u32(u_input.a.x, 64404u) & max(37095u, u_input.a.x), true), 4294967295u) | ~max(~(~14987u), 21987u);
    global0 = _wgslsmith_clamp_vec2_u32(vec2<u32>(18469u, ~0u), arg_0, _wgslsmith_mult_vec2_u32(~arg_0, countOneBits(abs(vec2<u32>(1u, arg_0.x) ^ arg_0))));
    var var_1 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1.c.a, arg_2.x, _wgslsmith_f_op_f32(-arg_2.x), arg_2.x)));
    var var_2 = false;
    var_2 = true && all(!vec2<bool>(!arg_1.c.b, arg_1.c.b));
    return ~arg_1.a.x;
}

fn func_5(arg_0: Struct_2) -> Struct_3 {
    var var_0 = Struct_2(arg_0.b.yx, arg_0.b, Struct_1(_wgslsmith_f_op_f32(-912f + _wgslsmith_f_op_f32(-352f + -382f)), all(select(vec4<bool>(false, false, false, arg_0.c.b), vec4<bool>(arg_0.c.b, arg_0.c.b, arg_0.c.b, false), arg_0.c.b)) | !(false || arg_0.c.b)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(694f, arg_0.c.a)))))));
    var var_1 = 1u;
    let var_2 = !(!vec3<bool>(arg_0.c.b, !any(vec2<bool>(var_0.c.b, arg_0.c.b)), true));
    let var_3 = Struct_2(-vec2<i32>(~arg_0.a.x, func_4(~u_input.a.yy, arg_0, vec3<f32>(707f, arg_0.d, -1344f))), firstTrailingBit(_wgslsmith_mod_vec3_i32(~vec3<i32>(arg_0.b.x, -2147483647i, arg_0.a.x), arg_0.b) >> (u_input.a % vec3<u32>(32u))), Struct_1(var_0.c.a, firstLeadingBit(1u) > firstTrailingBit(_wgslsmith_mult_u32(u_input.a.x, 10825u))), -195f);
    global0 = ~_wgslsmith_add_vec2_u32(vec2<u32>(42125u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 62352u), u_input.a.zx)), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 46609u, global0.x), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 51091u), u_input.a))) >> (u_input.a.zy % vec2<u32>(32u));
    return Struct_3(_wgslsmith_add_u32(abs(~(~1u)), _wgslsmith_sub_u32(countOneBits(u_input.a.x), u_input.a.x & 0u)), var_3, -1483f);
}

fn func_1() -> Struct_2 {
    var var_0 = select(!vec2<bool>(19168u <= u_input.a.x, true), vec2<bool>(_wgslsmith_mult_u32(global0.x, 0u) > ~(~global0.x), true), true);
    var var_1 = func_5(Struct_2(~vec2<i32>(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 2147483647i), vec2<i32>(-35399i, 0i))), vec3<i32>(-13771i, func_4(func_2(), Struct_2(vec2<i32>(-12939i, -1i), vec3<i32>(-2147483647i, 2147483647i, 24811i), Struct_1(326f, false), 1203f), vec3<f32>(708f, -623f, 860f)), countOneBits(_wgslsmith_clamp_i32(28215i, -1i, -1i))), Struct_1(1f, !var_0.x), -1274f));
    var_1 = Struct_3(0u & ~u_input.a.x, Struct_2(vec2<i32>(-1i, 1i), var_1.b.b, Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.b.d * -467f), _wgslsmith_f_op_f32(-var_1.b.c.a)), !(global0.x <= u_input.a.x)), _wgslsmith_f_op_f32(-var_1.b.d)), _wgslsmith_f_op_f32(floor(var_1.c)));
    var_1 = Struct_3(var_1.a, Struct_2(_wgslsmith_mod_vec2_i32(-(~var_1.b.a), vec2<i32>(_wgslsmith_clamp_i32(var_1.b.b.x, -8480i, var_1.b.b.x), var_1.b.a.x << (47931u % 32u))), ~countOneBits(abs(var_1.b.b)), var_1.b.c, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(var_1.b.c.a, 1000f)), 142f))))), _wgslsmith_f_op_f32(min(var_1.b.c.a, 1051f)));
    var_0 = select(!(!vec2<bool>(var_1.b.a.x > -17482i, true)), select(select(vec2<bool>(true, true), vec2<bool>(-2147483647i < var_1.b.b.x, func_5(Struct_2(var_1.b.a, var_1.b.b, var_1.b.c, var_1.c)).b.c.b), vec2<bool>(!var_0.x, -28041i != var_1.b.b.x)), vec2<bool>(true, true), vec2<bool>(!(!var_0.x), 0i == ~var_1.b.a.x)), all(select(select(vec4<bool>(false, true, var_0.x, var_1.b.c.b), !vec4<bool>(true, false, var_1.b.c.b, false), false), select(vec4<bool>(var_1.b.c.b, var_0.x, true, true), select(vec4<bool>(true, var_1.b.c.b, var_1.b.c.b, true), vec4<bool>(var_1.b.c.b, true, false, var_1.b.c.b), true), var_1.a >= var_1.a), select(select(vec4<bool>(var_0.x, false, var_1.b.c.b, var_0.x), vec4<bool>(false, var_0.x, var_1.b.c.b, var_1.b.c.b), vec4<bool>(false, false, var_0.x, false)), select(vec4<bool>(true, false, true, false), vec4<bool>(var_0.x, var_1.b.c.b, false, true), vec4<bool>(false, var_1.b.c.b, var_0.x, var_1.b.c.b)), false))));
    return Struct_2(_wgslsmith_mod_vec2_i32(func_5(func_5(func_5(var_1.b).b).b).b.a, _wgslsmith_mult_vec2_i32((vec2<i32>(21416i, var_1.b.a.x) | var_1.b.b.yx) ^ (vec2<i32>(-2147483647i, -33083i) << (u_input.a.yy % vec2<u32>(32u))), _wgslsmith_mult_vec2_i32(var_1.b.b.yy, vec2<i32>(var_1.b.b.x, 13143i)))), ~_wgslsmith_sub_vec3_i32(vec3<i32>(~(-2147483647i), var_1.b.b.x, max(-68913i, var_1.b.a.x)), vec3<i32>(var_1.b.a.x, var_1.b.a.x, 1i) & _wgslsmith_add_vec3_i32(var_1.b.b, var_1.b.b)), func_5(var_1.b).b.c, -746f);
}

fn func_6(arg_0: Struct_2, arg_1: bool) -> f32 {
    global0 = u_input.a.zx;
    let var_0 = func_5(arg_0).b.c;
    var var_1 = func_5(arg_0).b.c;
    var_1 = func_1().c;
    var var_2 = func_3().x;
    return func_5(Struct_2(arg_0.a, vec3<i32>(0i, 36521i, countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.b.x, -25888i, arg_0.b.x, arg_0.b.x), vec4<i32>(-12054i, -2147483647i, 3464i, 1i)))), arg_0.c, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a + arg_0.d) * _wgslsmith_f_op_f32(sign(1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.d, -931f)) + _wgslsmith_f_op_f32(f32(-1f) * -134f)), any(!vec3<bool>(false, false, arg_1)))))).b.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(u_input.a.x, Struct_2(vec2<i32>(-1i) * -(~vec2<i32>(67257i, -8333i)), vec3<i32>(0i, ~1i, -_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -1i), vec2<i32>(372i, 4440i))), Struct_1(_wgslsmith_f_op_f32(func_6(func_1(), true)), !all(vec4<bool>(true, false, false, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -430f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1408f * 1f) * 359f))));
    var var_1 = var_0.b;
    var var_2 = _wgslsmith_div_vec2_u32(func_2(), vec2<u32>(_wgslsmith_mod_u32(max(u_input.a.x, abs(21228u)), _wgslsmith_div_u32(global0.x, u_input.a.x)), u_input.a.x));
    let var_3 = var_0;
    let var_4 = ~var_0.a;
    var_1 = Struct_2(vec2<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b.a.x, var_3.b.a.x), var_0.b.a), var_1.b.x ^ var_3.b.b.x, _wgslsmith_sub_i32(-15687i, var_0.b.a.x), var_3.b.b.x & var_0.b.a.x), ~(~vec4<i32>(var_1.b.x, 2064i, var_0.b.b.x, var_1.a.x)))), -abs(vec3<i32>(var_1.a.x, var_0.b.b.x << (u_input.a.x % 32u), var_3.b.b.x)), Struct_1(_wgslsmith_f_op_f32(step(var_0.c, _wgslsmith_f_op_f32(-var_3.c))), func_4(u_input.a.xz, Struct_2(vec2<i32>(1i, var_0.b.a.x), vec3<i32>(-1i, var_1.a.x, -1i), var_1.c, 217f), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-210f, 263f, var_3.c), vec3<f32>(var_0.b.d, 976f, -636f)))) != _wgslsmith_add_i32(var_1.b.x, var_3.b.b.x)), _wgslsmith_f_op_f32(max(var_0.c, var_1.c.a)));
    var var_5 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1649f, var_1.d) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.d, -1121f) - vec2<f32>(1118f, 1771f)) - vec2<f32>(-1000f, 284f)))));
    let var_6 = _wgslsmith_mod_u32(26348u, ~min(_wgslsmith_mult_u32(51135u, 1u), ~global0.x) >> (select(max(max(var_3.a, 0u), 1u), u_input.a.x, var_0.b.c.b) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_mult_vec3_u32(u_input.a, ~u_input.a)) << (abs(vec3<u32>(~59782u, countOneBits(36359u), abs(4294967295u))) % vec3<u32>(32u)));
}

