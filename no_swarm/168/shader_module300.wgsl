struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<bool>,
    d: vec4<i32>,
    e: bool,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec4<bool>,
    d: Struct_1,
    e: bool,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec4<u32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: i32, arg_1: vec2<i32>, arg_2: vec2<f32>, arg_3: u32) -> vec3<u32> {
    let var_0 = Struct_2(vec4<bool>(true, _wgslsmith_div_u32(u_input.b.x, 7037u) >= 7785u, false, !all(vec2<bool>(false, true)) || !all(vec4<bool>(false, false, false, true))));
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(760f, arg_2.x, 304f, -1172f), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1000f, arg_2.x, arg_2.x, arg_2.x))))))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_2.x - arg_2.x), _wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(arg_2.x - -933f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_2.x, -1000f)) + _wgslsmith_f_op_f32(round(arg_2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) + 1654f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(310f, -110f, arg_2.x, arg_2.x), vec4<f32>(121f, arg_2.x, 283f, arg_2.x)))))), all(vec3<bool>(false, false, false))));
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_2.x, -170f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1136f)))), arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1053f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x - arg_2.x), -1458f))));
    var var_2 = var_0.a.yx;
    var_2 = !(!select(select(select(vec2<bool>(var_0.a.x, var_2.x), vec2<bool>(true, var_0.a.x), var_0.a.zw), vec2<bool>(false, var_0.a.x), var_0.a.x), !(!var_0.a.wy), vec2<bool>(!var_0.a.x, true)));
    return u_input.b;
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: Struct_2, arg_3: i32) -> Struct_2 {
    let var_0 = func_3(select(~_wgslsmith_mult_i32(arg_3, 0i), ~(-2147483647i), arg_0.x), _wgslsmith_sub_vec2_i32(arg_1.d.d.wy << (vec2<u32>(26770u, arg_1.a.x) % vec2<u32>(32u)), vec2<i32>(_wgslsmith_sub_i32(-33258i, -1i), ~arg_1.d.d.x)), _wgslsmith_f_op_vec2_f32(-arg_1.b.ww), 1u) >> (~(~vec3<u32>(arg_1.a.x, select(arg_1.a.x, u_input.b.x, false), ~u_input.b.x)) % vec3<u32>(32u));
    var var_1 = -12456i;
    let var_2 = Struct_5(arg_1.b.x);
    let var_3 = Struct_3(Struct_2(!(!select(vec4<bool>(arg_0.x, true, arg_0.x, true), vec4<bool>(arg_2.a.x, arg_1.d.c.x, true, arg_0.x), arg_2.a.x))), vec3<u32>(~(~4294967295u | abs(var_0.x)), 0u, var_0.x), _wgslsmith_dot_vec2_u32(~var_0.xy, vec2<u32>(~_wgslsmith_sub_u32(arg_1.a.x, 737u), ~countOneBits(33686u))), -1581i);
    var var_4 = select(var_3.a.a.xx, select(vec2<bool>(!(4294967295u == arg_1.a.x), var_3.c <= arg_1.a.x), arg_1.c.xx, !arg_2.a.x), !arg_0.x);
    return var_3.a;
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: vec3<f32>) -> vec4<bool> {
    var var_0 = vec2<i32>(~814i, -reverseBits(10698i ^ select(arg_1.d, u_input.a, arg_1.a.a.x)));
    let var_1 = true;
    let var_2 = select(!select(func_2(arg_1.a.a.xz, Struct_4(vec4<u32>(76277u, u_input.b.x, 68198u, arg_0), vec4<f32>(1000f, 2210f, arg_2.x, arg_2.x), arg_1.a.a, Struct_1(arg_2.x, arg_2.x, arg_1.a.a, vec4<i32>(arg_1.d, -2147483647i, arg_1.d, -2185i), var_1), arg_1.a.a.x), arg_1.a, 41961i).a.yx, arg_1.a.a.wz, select(vec2<bool>(var_1, var_1), vec2<bool>(arg_1.a.a.x, var_1), var_1)), arg_1.a.a.zy, !(!(!arg_1.a.a.xx)));
    var_0 = vec2<i32>(-2147483647i, firstTrailingBit(var_0.x));
    var var_3 = firstLeadingBit(2147483647i) != (_wgslsmith_add_i32(firstTrailingBit(u_input.a ^ u_input.a), 2147483647i) | var_0.x);
    return arg_1.a.a;
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: u32) -> u32 {
    var var_0 = Struct_2(!func_4(~firstLeadingBit(arg_2), Struct_3(func_2(vec2<bool>(arg_1, false), Struct_4(vec4<u32>(arg_0, 1u, arg_2, 54072u), vec4<f32>(-113f, -1526f, -619f, 172f), vec4<bool>(false, false, false, false), Struct_1(954f, -750f, vec4<bool>(false, false, arg_1, false), vec4<i32>(-5445i, u_input.a, 1i, u_input.a), arg_1), arg_1), Struct_2(vec4<bool>(false, arg_1, arg_1, arg_1)), u_input.a), select(u_input.b, vec3<u32>(4294967295u, u_input.b.x, 1645u), vec3<bool>(arg_1, false, false)), 46900u, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.a), vec2<i32>(1i, -18393i))), vec3<f32>(-1000f, -612f, _wgslsmith_f_op_f32(-572f - -1559f))));
    var var_1 = Struct_5(-1435f);
    var var_2 = u_input.b.zy;
    var_2 = max(u_input.b.yx, firstLeadingBit(u_input.b.yx));
    var var_3 = abs(-70583i) >> (_wgslsmith_mult_u32(arg_0, arg_2) % 32u);
    return ~reverseBits(u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec2_i32((max(-vec2<i32>(-2304i, 34720i), -vec2<i32>(u_input.a, u_input.a)) >> (_wgslsmith_mult_vec2_u32(u_input.b.xz | vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(u_input.b.x, 4294967295u)) % vec2<u32>(32u))) >> (select(vec2<u32>(u_input.b.x & 4294967295u, ~52979u), u_input.b.zx, u_input.b.x > ~u_input.b.x) % vec2<u32>(32u)), select(-vec2<i32>(i32(-1i) * -2147483647i, 11567i), vec2<i32>(-(~17157i), -1i), false));
    var var_1 = u_input.b.x;
    let var_2 = firstTrailingBit(var_0.x) >> (abs(min(~u_input.b.x, u_input.b.x) >> (u_input.b.x % 32u)) % 32u);
    var var_3 = Struct_4(vec4<u32>(max(1u, 0u), u_input.b.x, abs(23971u), func_1(u_input.b.x, true, 58046u)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1016f, -1000f, 547f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-365f, 1274f, -1420f, 100f), vec4<f32>(165f, -837f, 777f, -707f), true)), true)))))), select(!select(vec4<bool>(false, true, true, true), func_4(58906u, Struct_3(Struct_2(vec4<bool>(false, false, false, true)), vec3<u32>(u_input.b.x, 1u, 4294967295u), u_input.b.x, -34664i), vec3<f32>(736f, 326f, 797f)), vec4<bool>(false, false, false, true)), !func_2(vec2<bool>(true, true), Struct_4(vec4<u32>(u_input.b.x, u_input.b.x, 1u, u_input.b.x), vec4<f32>(-1000f, -2313f, -722f, -1000f), vec4<bool>(true, false, true, true), Struct_1(3020f, 693f, vec4<bool>(false, true, false, true), vec4<i32>(-2147483647i, var_0.x, u_input.a, var_2), true), false), func_2(vec2<bool>(false, false), Struct_4(vec4<u32>(8992u, u_input.b.x, 21327u, 4294967295u), vec4<f32>(827f, 540f, 1000f, -537f), vec4<bool>(true, false, false, true), Struct_1(1221f, -719f, vec4<bool>(true, false, true, true), vec4<i32>(var_2, var_2, var_0.x, var_0.x), true), false), Struct_2(vec4<bool>(true, true, false, false)), 41497i), u_input.a).a, vec4<bool>(true, _wgslsmith_mult_u32(58151u, u_input.b.x) >= u_input.b.x, true, true)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1246f * 1597f), _wgslsmith_f_op_f32(2099f + 2286f))) * 326f), -730f, vec4<bool>(_wgslsmith_sub_i32(var_0.x, var_0.x) < (i32(-1i) * -7880i), !all(vec2<bool>(true, true)), true, false), ~_wgslsmith_sub_vec4_i32(-vec4<i32>(0i, var_0.x, 11390i, -1i), ~vec4<i32>(-49423i, u_input.a, var_0.x, -40241i)), true && !(var_0.x != var_0.x)), any(!func_2(vec2<bool>(false, true), Struct_4(vec4<u32>(67116u, u_input.b.x, 0u, u_input.b.x), vec4<f32>(-420f, 221f, -148f, 177f), vec4<bool>(false, true, false, false), Struct_1(1270f, -2320f, vec4<bool>(false, true, true, false), vec4<i32>(-1i, 2147483647i, 1i, 1i), true), false), func_2(vec2<bool>(false, true), Struct_4(vec4<u32>(u_input.b.x, 1u, u_input.b.x, 75201u), vec4<f32>(137f, -889f, -1521f, 2001f), vec4<bool>(true, false, true, true), Struct_1(-1000f, -1253f, vec4<bool>(false, true, false, false), vec4<i32>(var_0.x, var_2, 2147483647i, u_input.a), false), true), Struct_2(vec4<bool>(false, false, false, false)), u_input.a), u_input.a & -3586i).a.zy));
    var_3 = Struct_4(~select(select(reverseBits(var_3.a), _wgslsmith_mod_vec4_u32(var_3.a, vec4<u32>(var_3.a.x, u_input.b.x, var_3.a.x, var_3.a.x)), func_2(var_3.c.xy, Struct_4(var_3.a, var_3.b, var_3.c, var_3.d, false), Struct_2(vec4<bool>(false, var_3.e, false, var_3.d.e)), var_2).a), var_3.a >> (max(vec4<u32>(var_3.a.x, 62575u, u_input.b.x, var_3.a.x), vec4<u32>(4294967295u, var_3.a.x, u_input.b.x, u_input.b.x)) % vec4<u32>(32u)), vec4<bool>(var_3.c.x, var_3.d.c.x, var_3.b.x >= var_3.b.x, var_3.c.x)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-864f, var_3.d.a, var_3.d.b, -436f) + vec4<f32>(var_3.d.a, 2108f, -489f, -406f)), vec4<f32>(-1000f, -363f, var_3.d.a, -572f))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-553f, var_3.b.x, var_3.d.b, var_3.d.a) + var_3.b), vec4<f32>(198f, var_3.d.a, 1156f, -1000f), !var_3.e))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_3.d.b), _wgslsmith_f_op_f32(-var_3.b.x), _wgslsmith_f_op_f32(-var_3.d.a), _wgslsmith_f_op_f32(-var_3.b.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_3.b, vec4<f32>(-832f, 1789f, var_3.b.x, var_3.b.x), true)))))), func_4(_wgslsmith_mod_u32(abs(0u), 60962u), Struct_3(Struct_2(var_3.d.c), u_input.b, u_input.b.x | _wgslsmith_div_u32(var_3.a.x, var_3.a.x), _wgslsmith_sub_i32(select(var_0.x, 41773i, var_3.c.x), ~var_3.d.d.x)), var_3.b.zww), Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(422f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.b.x) - -945f))), vec4<bool>(true, true, any(var_3.c.wz), all(!vec4<bool>(var_3.c.x, var_3.c.x, var_3.d.e, false))), vec4<i32>(0i, _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(var_2, var_0.x, var_3.d.d.x)), var_3.d.d.zzy), -12902i, 44014i), u_input.a != ~_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, var_3.d.d.x, var_2), var_3.d.d.xwy)), true);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(0u << (~(~var_3.a.x) % 32u), _wgslsmith_mult_u32(var_3.a.x, abs(0u | u_input.b.x))), _wgslsmith_f_op_f32(var_3.b.x + -729f), var_3.a, _wgslsmith_f_op_f32(var_3.d.b * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-2200f)) * -698f)), _wgslsmith_f_op_f32(round(919f)));
}

