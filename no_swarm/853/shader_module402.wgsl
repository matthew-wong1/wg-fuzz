struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: i32) -> vec2<bool> {
    var var_0 = !select(vec3<bool>(true, any(vec2<bool>(true, true)), any(vec3<bool>(true, true, true))), vec3<bool>(true, true, true), select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), vec3<bool>(false, false, true), any(vec4<bool>(true, false, true, true))), vec3<bool>(true, true, true), true));
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(-572f)), _wgslsmith_div_f32(-1107f, -317f), _wgslsmith_f_op_f32(min(431f, -498f)), _wgslsmith_f_op_f32(-1000f + 1928f)) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1352f, 1000f, 301f, 776f)))), vec4<f32>(_wgslsmith_f_op_f32(-187f - -116f), _wgslsmith_f_op_f32(f32(-1f) * -325f), _wgslsmith_f_op_f32(-1000f + 1199f), _wgslsmith_div_f32(1246f, 1000f))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1384f - _wgslsmith_f_op_f32(234f + -1539f))), -172f, 809f, _wgslsmith_f_op_f32(abs(1f))));
    var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.x))), _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(select(2262f, -1000f, true))))), -1291f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(var_1.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * var_1.x) - var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), true && all(var_0.yy)))));
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -272f, var_1.x, -187f) * vec4<f32>(-504f, var_1.x, var_1.x, var_1.x)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_1.x + var_1.x), 888f, var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -1090f)))) - vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(var_1.x)))), var_1.x), 1344f, var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1026f * var_1.x)))));
    let var_2 = u_input.a != u_input.a;
    return !(!select(var_0.xz, var_0.zx, vec2<bool>(true, true)));
}

fn func_2() -> f32 {
    var var_0 = vec2<bool>((u_input.c.x & 0i) >= 208i, true);
    var_0 = !(!vec2<bool>(true, var_0.x));
    var var_1 = 1i;
    var_0 = !func_3(u_input.c.x);
    var_1 = -firstLeadingBit(-firstTrailingBit(-u_input.c.x));
    return _wgslsmith_f_op_f32(f32(-1f) * -1000f);
}

fn func_4(arg_0: bool, arg_1: Struct_4, arg_2: vec2<i32>, arg_3: i32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-413f, 1000f, -785f, arg_1.a.b.a)), vec4<f32>(-270f, _wgslsmith_f_op_f32(abs(arg_1.a.a.x)), _wgslsmith_f_op_f32(-arg_1.a.a.x), _wgslsmith_f_op_f32(1017f + arg_1.a.a.x))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-605f, arg_1.a.a.x, arg_1.a.b.a, arg_1.a.b.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(692f, arg_1.a.b.a, arg_1.a.b.a, arg_1.a.b.a) - vec4<f32>(3137f, -272f, -2214f, -1163f)))))));
    var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-198f, -587f, -446f, -1357f) - vec4<f32>(arg_1.a.a.x, -380f, var_0.x, 180f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(805f, var_0.x, -1000f, -1252f) + vec4<f32>(573f, arg_1.a.b.a, -801f, -836f)))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(round(var_0.x)), var_0.x, -319f, 625f))), select(select(select(vec4<bool>(arg_0, arg_0, false, false), vec4<bool>(arg_0, arg_0, false, arg_0), true), select(vec4<bool>(arg_0, true, true, arg_0), vec4<bool>(arg_0, arg_0, arg_0, false), vec4<bool>(true, true, false, arg_0)), !vec4<bool>(false, true, true, arg_0)), select(select(vec4<bool>(false, true, true, arg_0), vec4<bool>(true, true, arg_0, false), arg_0), !vec4<bool>(arg_0, true, false, false), false), false)))));
    var_0 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.a.x - _wgslsmith_f_op_f32(max(1000f, 1432f))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.a.a.x)))), var_0.x, 1594f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1.a.b.a - arg_1.a.b.a), _wgslsmith_f_op_f32(f32(-1f) * -2508f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(787f))), true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -1000f, var_0.x, arg_1.a.b.a)) * _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.a.b.a, var_0.x, 864f, arg_1.a.b.a), vec4<f32>(arg_1.a.a.x, arg_1.a.b.a, var_0.x, 1362f))))))));
    let var_1 = arg_1.a;
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, var_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -827f))) + var_1.b.a), _wgslsmith_f_op_f32(1565f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.b.a)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1145f, 1073f, 1136f, 240f) * vec4<f32>(-700f, -1317f, -258f, var_0.x)))))));
    return Struct_2(select(vec3<bool>(true, false, true), !select(vec3<bool>(false, false, arg_0), !vec3<bool>(arg_0, true, arg_0), true), !arg_0), !vec4<bool>(all(vec2<bool>(true, arg_0)), 1u == u_input.a, true & (arg_0 || arg_0), true));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_mult_u32(u_input.a, _wgslsmith_dot_vec3_u32(~vec3<u32>(25650u, select(1u, u_input.a, arg_1.b.x), u_input.a), ~(~_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 0u, 910u), vec3<u32>(u_input.a, u_input.a, u_input.a)))));
    var var_1 = arg_1.a.zz;
    return func_4(arg_0.x < 1000f, Struct_4(Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, -1022f) - vec2<f32>(arg_0.x, 801f))), Struct_1(_wgslsmith_f_op_f32(-arg_0.x))), u_input.a), vec2<i32>(~3784i, -29516i), u_input.c.x);
}

fn func_1() -> i32 {
    var var_0 = func_5(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -142f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1238f - 269f) + 1356f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1191f - 396f) * 1195f), _wgslsmith_f_op_f32(f32(-1f) * -1144f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-292f, -1506f), _wgslsmith_f_op_f32(-811f * 595f))))), func_4(_wgslsmith_f_op_f32(func_2()) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1552f, -298f))), Struct_4(Struct_3(vec2<f32>(-369f, 1543f), Struct_1(752f)), reverseBits(35765u)), u_input.c, _wgslsmith_add_i32(i32(-1i) * -u_input.b.x, u_input.b.x)));
    var var_1 = u_input.a;
    let var_2 = select(!select(vec2<bool>(false, any(var_0.b)), var_0.b.zz, var_0.b.ww), !(!select(vec2<bool>(var_0.b.x, var_0.a.x), func_5(vec4<f32>(246f, 281f, 1726f, -298f), Struct_2(vec3<bool>(true, var_0.b.x, true), vec4<bool>(false, false, false, false))).a.zz, func_4(var_0.b.x, Struct_4(Struct_3(vec2<f32>(1558f, -1049f), Struct_1(-310f)), u_input.a), u_input.c, u_input.b.x).a.yx)), var_0.a.x);
    var_1 = u_input.a;
    var_0 = func_5(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(max(-271f, 808f)), 221f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-850f, 2496f, 1658f, 2023f) + vec4<f32>(-967f, 746f, -224f, -416f))))), Struct_2(vec3<bool>(true || !var_0.a.x, select(true, false, true), -7106i >= abs(u_input.b.x)), vec4<bool>(true, var_0.a.x, (u_input.a | 36563u) < ~4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4841u), vec2<u32>(4294967295u, 1u)) <= u_input.a)));
    return _wgslsmith_dot_vec4_i32(~(~(~vec4<i32>(u_input.c.x, -54235i, 0i, u_input.c.x) | abs(vec4<i32>(-1i, u_input.b.x, 2147483647i, -13390i)))), ~min(-vec4<i32>(-2147483647i, u_input.b.x, 40692i, u_input.c.x), vec4<i32>(u_input.c.x, 1i, 2147483647i, u_input.c.x)) & -vec4<i32>(countOneBits(8441i), u_input.c.x, u_input.b.x, -u_input.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -713f), _wgslsmith_f_op_f32(f32(-1f) * -652f), true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-320f))) * 471f)));
    let var_2 = _wgslsmith_add_u32(1u << (_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, u_input.a, 14640u, u_input.a), ~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 61218u, u_input.a, u_input.a), vec4<u32>(9163u, 4294967295u, u_input.a, 1u))) % 32u), 49145u);
    let var_3 = vec3<u32>(countOneBits(80115u), 29992u, var_2) >> (~vec3<u32>(var_2, countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(var_2, var_2), vec2<u32>(84840u, 93862u))), countOneBits(u_input.a)) % vec3<u32>(32u));
    var var_4 = true;
    var var_5 = _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(~_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_2, var_3.x, 0u, 6303u), vec4<u32>(var_3.x, 0u, 84390u, 0u)), vec4<u32>(var_3.x, 0u, 27027u, 19311u)), ~max(_wgslsmith_add_vec4_u32(vec4<u32>(28713u, var_3.x, var_2, u_input.a), vec4<u32>(4294967295u, 1u, 22577u, 26755u)), ~vec4<u32>(u_input.a, 4294967295u, var_3.x, 4294967295u))), vec4<u32>(_wgslsmith_mod_u32(min(var_3.x, _wgslsmith_div_u32(var_3.x, u_input.a)), 1u), abs(min(reverseBits(u_input.a), ~53743u)), var_2, firstTrailingBit(_wgslsmith_dot_vec2_u32(var_3.yz, var_3.yz) | (1u >> (u_input.a % 32u)))));
    let var_6 = var_2;
    var_5 = ~_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(var_3, var_5.xxy), var_5.wyx), var_2, abs(u_input.a) & 65725u, 4294967295u), vec4<u32>(max(var_2, var_2), ~1u, ~(~var_2), _wgslsmith_add_u32(~var_5.x, var_5.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-313f, var_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -513f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2264f) - var_1.x), var_1.x), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_1.x, 788f) + vec3<f32>(var_1.x, var_1.x, var_1.x))))))), var_1.x);
}

