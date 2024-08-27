struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: bool,
    d: bool,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1782f))), _wgslsmith_f_op_f32(-1741f + 969f), _wgslsmith_f_op_f32(f32(-1f) * -598f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(635f, 1464f, -1000f) - vec3<f32>(2415f, 530f, -235f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1000f, 346f, 868f)))))));
    let var_1 = ~(~vec4<u32>(~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 89433u, 13726u, 0u), vec4<u32>(23632u, 1u, 108687u, 4294967295u)), ~0u, 19052u)) << (countOneBits(~(firstTrailingBit(vec4<u32>(u_input.a.x, u_input.a.x, 0u, 26368u)) ^ max(vec4<u32>(4294967295u, u_input.a.x, 1u, 10505u), vec4<u32>(u_input.a.x, 1u, 4294967295u, u_input.a.x)))) % vec4<u32>(32u));
    var var_2 = Struct_1(vec4<bool>((-1i << (reverseBits(var_1.x) % 32u)) > 39750i, true, true, global0.x), true, all(!select(select(vec2<bool>(true, false), vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, false)), vec2<bool>(false, false), select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, false), vec2<bool>(global0.x, global0.x)))), global0.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-470f * _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1006f - -760f) * 221f), var_0.x)));
    let var_3 = 60506u;
    global0 = vec2<bool>(var_2.a.x, all(select(!var_2.a.xxw, select(vec3<bool>(var_2.c, false, true), var_2.a.yxx, true), !(!global0.x))));
    return -765f;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(vec4<bool>(select(true, true, false), true, _wgslsmith_f_op_f32(func_3()) <= -1000f, global0.x), global0.x, global0.x, all(vec2<bool>(all(vec3<bool>(global0.x, true, false)), global0.x)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(max(-638f, -1190f))) + _wgslsmith_f_op_f32(-719f - _wgslsmith_f_op_f32(trunc(1454f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -489f) * -1466f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3()), -780f)) + _wgslsmith_f_op_f32(sign(-742f)))));
    let var_1 = 1u;
    let var_2 = ~_wgslsmith_add_vec3_u32(vec3<u32>(47670u, 1u, 0u), vec3<u32>(u_input.a.x, _wgslsmith_mult_u32(select(var_1, 7309u, var_0.d), firstTrailingBit(1u)), firstTrailingBit(u_input.a.x)));
    var_0 = Struct_1(select(var_0.a, vec4<bool>(true, true, all(!vec4<bool>(var_0.c, false, false, false)), !(global0.x && var_0.c)), var_0.a), all(var_0.a.zyw), u_input.b > _wgslsmith_sub_i32(0i, -_wgslsmith_mod_i32(-1i, u_input.b)), (i32(-1i) * -countOneBits(u_input.b)) != -(i32(-1i) * -2719i), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e.x) + 881f), _wgslsmith_f_op_f32(var_0.e.x - _wgslsmith_f_op_f32(var_0.e.x - 1994f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.e.x * -228f)))) - _wgslsmith_div_vec3_f32(vec3<f32>(var_0.e.x, -1033f, _wgslsmith_div_f32(997f, var_0.e.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.e)))));
    var var_3 = Struct_1(!select(vec4<bool>(var_0.a.x | false, any(vec2<bool>(global0.x, var_0.c)), 12406u <= var_1, !var_0.c), var_0.a, !(-306f >= var_0.e.x)), true, global0.x, all(vec3<bool>(!all(vec3<bool>(false, false, var_0.c)), any(var_0.a.yzz), false)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(1312f, var_0.e.x), var_0.e.x, _wgslsmith_f_op_f32(max(-750f, var_0.e.x))), var_0.e)));
    return Struct_1(select(var_3.a, var_0.a, select(vec4<bool>(any(vec4<bool>(global0.x, false, var_3.a.x, var_0.b)), var_0.e.x == var_3.e.x, var_3.a.x, any(var_0.a.yww)), var_3.a, vec4<bool>(all(var_0.a.yxz), any(var_3.a.zxw), all(vec2<bool>(global0.x, false)), true))), -63413i <= u_input.b, true, var_3.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1090f - var_3.e.x), 965f, _wgslsmith_f_op_f32(floor(1257f))))));
}

fn func_1(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = func_2();
    var var_1 = Struct_1(arg_2.a, any(!vec4<bool>(select(arg_2.d, global0.x, true), arg_2.e.x >= arg_1.x, true & arg_2.a.x, all(arg_2.a.yxz))), false, arg_2.a.x, vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2.e.x, arg_2.e.x)))), arg_2.e.x));
    let var_2 = vec2<bool>(!var_0.d, !select(!any(arg_2.a.ywz), all(arg_2.a), !any(var_0.a.zzz)));
    var var_3 = arg_2;
    var_1 = arg_2;
    return arg_2;
}

fn func_4(arg_0: vec3<bool>, arg_1: u32, arg_2: Struct_1) -> bool {
    global0 = func_1(~(u_input.b & ~_wgslsmith_clamp_i32(-8151i, u_input.b, u_input.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1711f)), arg_2.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-511f * arg_2.e.x) - _wgslsmith_f_op_f32(ceil(arg_2.e.x))))), Struct_1(!(!(!vec4<bool>(global0.x, arg_2.c, true, arg_2.a.x))), false, true, arg_0.x, arg_2.e)).a.wz;
    global0 = !vec2<bool>(any(arg_2.a), any(vec4<bool>(all(vec3<bool>(false, arg_0.x, global0.x)), !global0.x, select(arg_0.x, arg_0.x, arg_0.x), true)));
    var var_0 = func_2().a.x;
    let var_1 = Struct_1(arg_2.a, true, 35893u <= ~_wgslsmith_clamp_u32(13138u, 41968u, arg_1), (u_input.a.x >> (countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, 53658u), vec2<u32>(0u, 82160u))) % 32u)) > min(115646u, _wgslsmith_mult_u32(27391u ^ arg_1, u_input.a.x)), _wgslsmith_f_op_vec3_f32(select(arg_2.e, arg_2.e, arg_2.a.xyy)));
    return any(select(select(vec3<bool>(func_2().d, all(vec2<bool>(arg_2.c, arg_0.x)), all(arg_0.xz)), vec3<bool>(true, any(arg_2.a), true), global0.x), func_2().a.xww, func_2().a.yxy));
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: f32, arg_3: vec2<i32>) -> vec2<u32> {
    let var_0 = func_2();
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.e.x, 1f)), _wgslsmith_f_op_vec2_f32(-var_0.e.yy));
    var var_2 = vec2<bool>(arg_0, any(vec3<bool>(all(vec4<bool>(true, false, arg_0, false)), all(!vec4<bool>(true, arg_0, global0.x, false)), u_input.a.x < 32734u)));
    let var_3 = !vec2<bool>(false, var_2.x);
    global0 = vec2<bool>(false, any(var_0.a));
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(!global0.x, Struct_1(vec4<bool>(any(select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(false, global0.x, true), false)), true, func_4(vec3<bool>(global0.x, true, false), reverseBits(u_input.a.x), func_1(u_input.b, vec3<f32>(915f, -2168f, -437f), Struct_1(vec4<bool>(false, false, true, false), global0.x, false, false, vec3<f32>(-1067f, -527f, -386f)))), true), global0.x, global0.x, ((1u | u_input.a.x) >> (1u % 32u)) < countOneBits(1u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(746f, -2753f, 587f), vec3<f32>(294f, -1750f, 1197f), vec3<bool>(global0.x, true, false))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-111f, -1180f, -969f))))), 733f, vec2<i32>(u_input.b, -2147483647i & -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, -3670i), vec4<i32>(u_input.b, u_input.b, u_input.b, -17726i))));
    let var_1 = func_1(~_wgslsmith_add_i32(2147483647i, -1i), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-2105f + -510f), -556f, _wgslsmith_f_op_f32(379f + 212f))))), Struct_1(func_2().a, global0.x, true, false, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-672f - 595f), func_1(-24103i, vec3<f32>(1246f, -555f, -1592f), Struct_1(vec4<bool>(false, false, global0.x, false), true, global0.x, global0.x, vec3<f32>(-840f, 1001f, 1431f))).e.x, -670f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1483f, -536f, -1022f) + vec3<f32>(-626f, -712f, 1085f))), select(vec3<bool>(false, true, global0.x), vec3<bool>(global0.x, true, false), global0.x || global0.x)))));
    var_0 = u_input.a;
    global0 = vec2<bool>(func_4(vec3<bool>(var_1.a.x, func_1(u_input.b, _wgslsmith_f_op_vec3_f32(max(var_1.e, var_1.e)), var_1).d, false), select(u_input.a.x, _wgslsmith_mult_u32(var_0.x, reverseBits(u_input.a.x)), var_1.a.x), Struct_1(func_2().a, false, global0.x, all(vec3<bool>(var_1.b, var_1.b, var_1.c)) & select(true, false, false), _wgslsmith_f_op_vec3_f32(-var_1.e))), true);
    var var_2 = 4294967295u;
    var var_3 = reverseBits(~(~firstLeadingBit(_wgslsmith_div_vec3_u32(vec3<u32>(25909u, var_0.x, u_input.a.x), vec3<u32>(31540u, var_0.x, 62095u)))));
    let var_4 = vec3<i32>(reverseBits(u_input.b), min(-2147483647i, u_input.b), reverseBits(u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, var_4);
}

