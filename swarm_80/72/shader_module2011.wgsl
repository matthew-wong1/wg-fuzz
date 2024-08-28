struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec4<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_1, arg_3: vec4<i32>) -> vec4<bool> {
    var var_0 = _wgslsmith_clamp_i32(u_input.b.x, _wgslsmith_sub_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(-1i, 1i), vec2<i32>(arg_2.d, 3859i) & vec2<i32>(u_input.b.x, u_input.a.x)), _wgslsmith_add_i32(_wgslsmith_mult_i32(arg_2.d, arg_2.d), firstTrailingBit(0i))), u_input.b.x), u_input.b.x);
    var_0 = ~u_input.b.x;
    var_0 = _wgslsmith_clamp_i32(-1i, 13594i, arg_3.x);
    let var_1 = 1u;
    var var_2 = firstTrailingBit(~abs(1u));
    return vec4<bool>(true & arg_0.x, false, !(~abs(-25221i) <= _wgslsmith_mod_i32(arg_3.x, u_input.a.x)), !arg_0.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec4<bool>) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-419f)) + -1112f) + -1000f), -588f));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    var var_0 = arg_2;
    var_0 = arg_0;
    var var_1 = Struct_1(26996u, _wgslsmith_div_vec2_f32(var_0.b, _wgslsmith_f_op_vec2_f32(-arg_0.b)), arg_1.x > ~(~_wgslsmith_add_u32(4294967295u, arg_2.a)), -var_0.d);
    let var_2 = firstTrailingBit(~firstTrailingBit(vec3<u32>(var_1.a | var_1.a, u_input.c.x, ~1u)));
    var var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(Struct_1(u_input.c.x, vec2<f32>(arg_3.b.x, -155f), !arg_0.c, -51399i), arg_1, func_3(vec4<bool>(true, false, false, arg_2.c), _wgslsmith_f_op_f32(sign(806f)), arg_2, -vec4<i32>(arg_0.d, -17485i, u_input.a.x, 46924i))))), _wgslsmith_f_op_vec2_f32(floor(var_1.b)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -393f)));
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: Struct_1) -> f32 {
    var var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-388f, arg_3.b.x, -881f))))));
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1218f)) - var_1.x) * arg_1.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, -1462f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-142f, arg_1.b.x) + _wgslsmith_f_op_f32(select(arg_3.b.x, _wgslsmith_f_op_f32(-1230f - 1045f), arg_1.c))));
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0, var_1.x, arg_1.b.x))))))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_1.b.x)))))));
    var_1 = vec3<f32>(2741f, arg_0, _wgslsmith_f_op_f32(floor(var_0.b.x)));
    return -1285f;
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_1(31496u, vec2<f32>(717f, -513f), false, u_input.b.x), vec4<u32>(0u, 28573u, 91006u, 0u), Struct_1(1u, vec2<f32>(-967f, 1013f), true, u_input.b.x), Struct_1(3044u, vec2<f32>(331f, 1000f), true, -21746i))) + -2091f), Struct_1(_wgslsmith_mod_u32(0u, 39542u), _wgslsmith_f_op_vec2_f32(vec2<f32>(844f, 1098f) + vec2<f32>(-182f, 517f)), true, _wgslsmith_clamp_i32(-1i, 38500i, -14758i)), _wgslsmith_mult_vec4_i32(firstTrailingBit(vec4<i32>(u_input.a.x, -51484i, u_input.a.x, u_input.b.x)), firstTrailingBit(vec4<i32>(u_input.a.x, -64354i, -11212i, 48158i))), Struct_1(u_input.c.x, vec2<f32>(479f, 675f), true, u_input.b.x << (1u % 32u)))), _wgslsmith_f_op_f32(abs(1f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(138f))), 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_5(-1095f, Struct_1(u_input.c.x, vec2<f32>(-1046f, -1165f), true, u_input.b.x), vec4<i32>(-2147483647i, -27288i, -25733i, 921i), Struct_1(20022u, vec2<f32>(1253f, 2042f), false, 0i))), _wgslsmith_f_op_f32(max(-175f, -920f)))) + _wgslsmith_f_op_f32(func_5(-145f, Struct_1(1u, vec2<f32>(466f, -228f), true, 52180i), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, -2147483647i, 38134i, u_input.b.x), vec4<i32>(0i, 2147483647i, 7028i, 1i), vec4<i32>(u_input.b.x, 0i, 1i, u_input.a.x)), Struct_1(u_input.c.x, vec2<f32>(652f, -1104f), false, u_input.b.x))))), vec4<f32>(1f, 1f, 1f, 1f), true));
    var var_1 = _wgslsmith_clamp_i32(min(-28645i, u_input.b.x), i32(-1i) * -(u_input.b.x << (u_input.c.x % 32u)), firstLeadingBit(2147483647i));
    let var_2 = ~(-33689i);
    let var_3 = var_0;
    var var_4 = Struct_1(select(~u_input.c.x, abs(~61879u), false) >> (1u % 32u), vec2<f32>(_wgslsmith_f_op_f32(763f - var_3.x), _wgslsmith_f_op_f32(-var_0.x)), !any(vec2<bool>(true, all(vec3<bool>(false, true, false)))), _wgslsmith_div_i32(1i, ~(var_2 ^ var_2)) ^ -12875i);
    return Struct_1(u_input.c.x, vec2<f32>(497f, _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.x, var_4.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1453f), var_4.b.x))), true, u_input.b.x);
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    return arg_0;
}

fn func_7(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    var var_0 = arg_1;
    var var_1 = arg_1.b.x;
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -479f);
    var var_2 = reverseBits(i32(-1i) * -_wgslsmith_mult_i32(3969i, -47434i));
    var_0 = arg_1;
    return func_6(func_6(func_6(arg_1)));
}

fn func_8(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    let var_0 = vec4<i32>(abs(-6708i), 1i, reverseBits(-1i), _wgslsmith_div_i32(_wgslsmith_sub_i32(min(arg_2.d, arg_2.d), 8504i), arg_0.d));
    let var_1 = arg_0;
    let var_2 = Struct_1(1u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-519f, -960f))), func_6(Struct_1(_wgslsmith_div_u32(func_6(Struct_1(0u, arg_2.b, arg_0.c, -2147483647i)).a, 4294967295u), _wgslsmith_f_op_vec2_f32(-var_1.b), any(vec2<bool>(true, true)) | !arg_2.c, 0i)).c, 2147483647i);
    return func_6(func_7(true, func_6(var_1)));
}

fn func_9(arg_0: Struct_1) -> Struct_1 {
    var var_0 = func_3(select(select(vec4<bool>(!arg_0.c, true, func_1().c, arg_0.c), vec4<bool>(true, !arg_0.c, any(vec3<bool>(arg_0.c, false, arg_0.c)), true), vec4<bool>(arg_0.c, func_7(arg_0.c, arg_0).c, !arg_0.c, arg_0.c & arg_0.c)), vec4<bool>(arg_0.c, arg_0.c, arg_0.c || (arg_0.b.x != arg_0.b.x), 0u > arg_0.a), vec4<bool>(false, func_7(25030u > arg_0.a, Struct_1(u_input.c.x, vec2<f32>(572f, arg_0.b.x), arg_0.c, u_input.b.x)).c, arg_0.c, false)), -536f, arg_0, _wgslsmith_div_vec4_i32(min(vec4<i32>(~(-24879i), -20265i, reverseBits(arg_0.d), u_input.a.x), vec4<i32>(-1i) * -vec4<i32>(-36086i, 9052i, 2147483647i, -20522i)), _wgslsmith_div_vec4_i32(abs(abs(vec4<i32>(-2147483647i, arg_0.d, 2147483647i, 2147483647i))), -(~vec4<i32>(arg_0.d, 1i, 1i, u_input.b.x)))));
    var var_1 = Struct_1(_wgslsmith_div_u32(func_8(func_7(!var_0.x, Struct_1(u_input.c.x, vec2<f32>(1599f, arg_0.b.x), true, 5116i)), var_0.x, arg_0).a, u_input.c.x), vec2<f32>(arg_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.b.x)))), true, arg_0.d);
    let var_2 = ~firstLeadingBit(func_6(arg_0).a);
    var var_3 = _wgslsmith_mod_u32(var_1.a, 0u);
    var_0 = select(vec4<bool>(true, var_0.x, -370f < _wgslsmith_div_f32(arg_0.b.x, arg_0.b.x), any(select(select(vec3<bool>(arg_0.c, true, var_1.c), vec3<bool>(var_0.x, arg_0.c, false), var_0.zyy), select(vec3<bool>(true, arg_0.c, true), vec3<bool>(arg_0.c, true, arg_0.c), var_0.wzw), arg_0.c && false))), vec4<bool>(any(vec3<bool>(true, true, false)), func_7(var_0.x, arg_0).c && !(u_input.c.x >= arg_0.a), any(!(!vec4<bool>(true, true, false, var_1.c))), -734f != _wgslsmith_f_op_f32(max(var_1.b.x, arg_0.b.x))), false);
    return func_8(func_8(arg_0, true, func_1()), true, func_6(arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.c.x << (~u_input.c.x % 32u);
    let var_1 = func_9(func_8(Struct_1(min(0u >> (1u % 32u), 1u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-429f, 806f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-859f, -1730f))), true, -_wgslsmith_div_i32(-2147483647i, -43069i)), false, func_7(true, func_6(func_1()))));
    let var_2 = !select(select(!vec3<bool>(true, var_1.c, var_1.c), !select(vec3<bool>(false, false, var_1.c), vec3<bool>(true, false, var_1.c), vec3<bool>(var_1.c, true, var_1.c)), true), vec3<bool>(true, 86418i >= var_1.d, false), var_1.c);
    var var_3 = var_1;
    let var_4 = vec4<u32>(var_1.a, 37177u, var_1.a, ~func_1().a);
    let var_5 = Struct_1(~(~_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 4294967295u), var_4.yy), var_4.x)), vec2<f32>(func_1().b.x, 1161f), false, 2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(24783u, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.b.x, var_1.b.x, _wgslsmith_f_op_f32(-var_3.b.x), _wgslsmith_f_op_vec2_f32(func_4(var_1, var_4, vec4<bool>(var_1.c, var_5.c, true, true))).x), vec4<f32>(var_1.b.x, _wgslsmith_f_op_f32(abs(var_1.b.x)), _wgslsmith_f_op_f32(round(var_5.b.x)), _wgslsmith_f_op_f32(min(442f, var_1.b.x))), select(vec4<bool>(true, true, true, true), func_3(vec4<bool>(false, true, true, false), 796f, Struct_1(21023u, vec2<f32>(322f, 811f), var_3.c, 4079i), vec4<i32>(3701i, 0i, 27801i, var_5.d)), u_input.c.x <= 4294967295u))))), ~vec4<u32>(var_0, var_3.a, ~(~var_3.a), var_3.a), vec3<i32>(var_3.d, u_input.b.x, var_3.d));
}

