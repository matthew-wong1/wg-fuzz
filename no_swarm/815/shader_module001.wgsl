struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, false, true);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_2) -> bool {
    var var_0 = arg_0.a.b.x;
    global0 = vec4<bool>(true, arg_0.c, all(select(select(vec3<bool>(arg_0.c, true, arg_0.b), vec3<bool>(false, arg_0.c, true), any(global0.wz)), select(global0.wzy, !global0.xww, -641f <= arg_0.a.c.x), arg_0.a.a.x > -517f)), true);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1627f + -863f))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_0.a.b.x)), _wgslsmith_f_op_f32(-arg_0.a.b.x)))));
    let var_1 = Struct_2(Struct_1(vec4<f32>(-1132f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-136f))), _wgslsmith_f_op_f32(sign(arg_0.a.b.x)), -1954f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(-316f, arg_0.a.c.x)), _wgslsmith_f_op_f32(650f - arg_0.a.c.x), arg_0.a.b.x, _wgslsmith_f_op_f32(max(arg_0.a.a.x, arg_0.a.c.x)))), _wgslsmith_f_op_vec2_f32(select(arg_0.a.a.wz, vec2<f32>(-1826f, arg_0.a.c.x), global0.zw))), global0.x, all(select(vec4<bool>(true, u_input.e.x <= 46112u, true, !arg_0.c), vec4<bool>(false, all(vec3<bool>(false, global0.x, false)), true, false), select(!vec4<bool>(global0.x, global0.x, arg_0.c, false), vec4<bool>(true, false, false, global0.x), false))));
    return any(global0.xy);
}

fn func_2(arg_0: vec4<i32>) -> vec4<bool> {
    global0 = !vec4<bool>(global0.x, func_3(Struct_2(Struct_1(vec4<f32>(-550f, 644f, -586f, -1000f), vec4<f32>(416f, 1015f, -107f, -476f), vec2<f32>(360f, -534f)), true, !global0.x)), false, true);
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(303f, 260f, -1609f, -129f)))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1443f, 653f, -480f, 1072f), vec4<f32>(782f, 820f, -386f, -458f), global0.x)) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(946f, 1213f, -255f, -678f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1006f, -1000f))))), !(~_wgslsmith_sub_i32(-2147483647i, u_input.a.x) <= ~select(-1i, 2627i, true)), false);
    let var_1 = -14192i;
    var var_2 = vec4<u32>(~(~1u), abs(1u) & u_input.e.x, firstLeadingBit(~_wgslsmith_dot_vec2_u32(~u_input.e.xz, firstTrailingBit(u_input.b))), abs(~u_input.b.x));
    var var_3 = ~(~firstTrailingBit(~var_2.x)) >> (1u % 32u);
    return select(select(vec4<bool>(false, !all(vec3<bool>(false, global0.x, var_0.c)), any(vec2<bool>(true, var_0.c)) & true, any(!vec4<bool>(var_0.b, false, global0.x, false))), !(!(!vec4<bool>(true, global0.x, true, global0.x))), var_0.b), select(select(select(vec4<bool>(true, var_0.b, global0.x, true), vec4<bool>(false, var_0.c, true, global0.x), vec4<bool>(false, true, true, true)), !select(vec4<bool>(var_0.c, global0.x, false, true), vec4<bool>(global0.x, false, var_0.c, false), var_0.b), select(!vec4<bool>(false, var_0.b, var_0.c, true), vec4<bool>(false, false, false, true), all(vec2<bool>(var_0.b, true)))), vec4<bool>(!(!global0.x), var_0.b, global0.x, global0.x), vec4<bool>(true, ~(-7925i) != ~u_input.a.x, true, var_0.c)), !select(select(select(vec4<bool>(var_0.b, var_0.c, true, var_0.b), vec4<bool>(false, global0.x, true, true), vec4<bool>(global0.x, true, false, false)), select(vec4<bool>(true, global0.x, true, var_0.c), vec4<bool>(var_0.c, false, true, var_0.b), var_0.b), !vec4<bool>(true, false, global0.x, false)), !(!vec4<bool>(global0.x, false, var_0.b, var_0.b)), vec4<bool>(true, true, true, 59389u >= u_input.e.x)));
}

fn func_1(arg_0: Struct_2) -> u32 {
    global0 = select(!vec4<bool>(true, global0.x, all(select(vec2<bool>(arg_0.b, false), vec2<bool>(true, true), false)), !(u_input.a.x >= -1i)), select(!(!func_2(vec4<i32>(u_input.a.x, 1i, 0i, 2147483647i))), vec4<bool>(!select(false, global0.x, false), !(global0.x && false), func_2(vec4<i32>(-2147483647i, u_input.a.x, -25183i, 44639i) ^ vec4<i32>(-13261i, -13691i, u_input.a.x, u_input.a.x)).x, true), select(!(!vec4<bool>(arg_0.b, arg_0.c, false, false)), select(select(vec4<bool>(arg_0.c, false, false, arg_0.b), vec4<bool>(true, arg_0.c, arg_0.b, arg_0.c), false), !vec4<bool>(true, false, arg_0.b, false), true), arg_0.b)), !(!func_2(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, 1i, u_input.a.x, u_input.a.x), vec4<i32>(-41256i, 2147483647i, 0i, u_input.a.x)))));
    let var_0 = Struct_2(Struct_1(arg_0.a.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.b.x, arg_0.a.c.x, -334f, arg_0.a.c.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-217f, 552f, arg_0.a.c.x, arg_0.a.a.x)) + arg_0.a.b)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-435f + arg_0.a.b.x), arg_0.a.a.x)))), select(true, -1056f < _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(arg_0.a.b.x)))), false), false);
    var var_1 = arg_0.c;
    global0 = vec4<bool>(var_0.b, select(!arg_0.b, any(global0.yxy), true), false, arg_0.b);
    var var_2 = func_2(vec4<i32>(~u_input.a.x, 1i, -10884i, _wgslsmith_add_i32(u_input.a.x ^ (u_input.a.x | u_input.a.x), _wgslsmith_div_i32(u_input.a.x, 0i)))).x;
    return 33112u;
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: vec4<u32>) -> Struct_1 {
    return Struct_1(vec4<f32>(748f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-711f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-363f)) - 219f)), _wgslsmith_f_op_f32(round(-2887f)), 1000f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -478f), _wgslsmith_f_op_f32(abs(1492f)), -770f, -1000f) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-581f, 458f, -603f, 683f) - vec4<f32>(-643f, 833f, -806f, 296f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1603f, 718f, 679f, -347f))))), vec2<f32>(_wgslsmith_div_f32(1025f, _wgslsmith_f_op_f32(floor(-472f))), 691f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(vec3<u32>(~26776u >> (func_1(Struct_2(Struct_1(vec4<f32>(1270f, -1000f, -1070f, 611f), vec4<f32>(-1390f, -172f, -1000f, 1041f), vec2<f32>(1952f, -204f)), true, global0.x)) % 32u), u_input.c, 0u), _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.a, u_input.a), vec2<i32>(u_input.a.x, 1i)), i32(-1i) * -u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(0i, u_input.a.x, ~1i, _wgslsmith_mult_i32(u_input.a.x, u_input.a.x)), -reverseBits(vec4<i32>(u_input.a.x, u_input.a.x, 0i, u_input.a.x))), vec4<u32>(1u, u_input.c, func_1(Struct_2(Struct_1(vec4<f32>(-149f, -463f, -2009f, -859f), vec4<f32>(220f, 710f, -611f, -343f), vec2<f32>(-1819f, 556f)), global0.x, any(vec3<bool>(true, global0.x, global0.x)))), u_input.c));
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.b)) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-var_0.a)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-762f, var_0.a.x, -1813f, var_0.a.x))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(2554f, -448f, 736f, -1530f) * vec4<f32>(190f, var_0.c.x, -659f, 190f)) * _wgslsmith_f_op_vec4_f32(abs(var_0.b)))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -181f), -162f, var_0.a.x)), _wgslsmith_f_op_vec4_f32(exp2(var_0.a)))), _wgslsmith_f_op_vec2_f32(-var_0.b.xy));
    global0 = !(!select(select(func_2(vec4<i32>(-7032i, u_input.a.x, u_input.a.x, 1i)), select(vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(global0.x, false, global0.x, false), vec4<bool>(false, global0.x, false, global0.x)), vec4<bool>(true, false, global0.x, global0.x)), vec4<bool>(false, true, global0.x, false || global0.x), vec4<bool>(global0.x, true, false, u_input.d.x <= u_input.d.x)));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, var_0.b.x, 822f, var_0.b.x) - vec4<f32>(717f, var_0.c.x, -580f, var_0.b.x))), vec4<f32>(360f, var_0.c.x, _wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x * var_0.a.x))), vec2<f32>(-358f, _wgslsmith_f_op_f32(-1213f + var_0.b.x))), !(!select(u_input.a.x >= u_input.a.x, true, true)), all(vec4<bool>(true, true, true, true)) | any(!(!vec3<bool>(true, false, global0.x))));
    var_0 = func_4(reverseBits(u_input.e), vec4<i32>(6230i, -_wgslsmith_sub_i32(~u_input.a.x, 20547i), 2147483647i, 84225i), max(vec4<u32>(63138u, _wgslsmith_mod_u32(abs(78647u), u_input.b.x), u_input.b.x, _wgslsmith_add_u32(_wgslsmith_clamp_u32(4294967295u, u_input.e.x, 4294967295u), u_input.b.x)), vec4<u32>(1u, u_input.c, u_input.c, _wgslsmith_div_u32(0u, u_input.e.x)) >> (select(vec4<u32>(1u, 4294967295u, 4294967295u, 12248u) ^ u_input.d, _wgslsmith_sub_vec4_u32(vec4<u32>(17573u, 4294967295u, 0u, u_input.b.x), u_input.d), true) % vec4<u32>(32u))));
    let var_2 = max(_wgslsmith_dot_vec4_i32(select(max(vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, -4801i), -vec4<i32>(u_input.a.x, -45685i, u_input.a.x, -21175i)), (vec4<i32>(u_input.a.x, u_input.a.x, 1i, 62892i) & vec4<i32>(64192i, u_input.a.x, 60288i, -24568i)) & _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -1i), vec4<i32>(u_input.a.x, -75979i, -1i, u_input.a.x)), vec4<bool>(!global0.x, global0.x, func_2(vec4<i32>(1i, -2147483647i, u_input.a.x, 32950i)).x, var_1.b)), select(abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, -33221i, 43598i, -1i), vec4<i32>(u_input.a.x, -37311i, u_input.a.x, u_input.a.x), vec4<i32>(-35643i, 3189i, 46715i, -1i))), -(vec4<i32>(-39809i, -13032i, u_input.a.x, -13205i) >> (u_input.d % vec4<u32>(32u))), select(func_2(vec4<i32>(45680i, u_input.a.x, u_input.a.x, u_input.a.x)), select(vec4<bool>(global0.x, global0.x, false, var_1.c), vec4<bool>(true, var_1.b, global0.x, false), var_1.b), select(vec4<bool>(true, false, false, global0.x), vec4<bool>(global0.x, var_1.c, true, true), vec4<bool>(false, global0.x, global0.x, true))))), ~u_input.a.x);
    let var_3 = var_1.a;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x + var_1.a.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(~min(1u ^ u_input.c, _wgslsmith_sub_u32(30199u, 1u) & u_input.c));
}

