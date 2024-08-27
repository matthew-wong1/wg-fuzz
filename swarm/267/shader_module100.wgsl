struct Struct_1 {
    a: u32,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: Struct_3,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec3<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: Struct_4) -> vec3<i32> {
    var var_0 = arg_2;
    var var_1 = vec4<bool>(true, false, !arg_1.x, any(arg_1.xyz));
    var var_2 = false;
    let var_3 = arg_2.c.d.a;
    var_2 = arg_1.x;
    return (abs(_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.b, vec3<i32>(-1i, var_0.c.b.b, -31586i)), arg_2.c.c)) | vec3<i32>(var_0.d.b, -2147483647i, -1i)) & arg_2.c.c;
}

fn func_2(arg_0: i32, arg_1: vec3<bool>, arg_2: f32, arg_3: vec4<f32>) -> Struct_3 {
    let var_0 = Struct_2(Struct_1(~(u_input.a.x & (u_input.a.x & u_input.a.x)), 0i, false), -2829f);
    let var_1 = Struct_4(var_0.a.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1652f - _wgslsmith_div_f32(-373f, -361f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_3.x, var_0.b))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.b * -1227f))))), Struct_3(1000f, Struct_1(7830u, u_input.b.x, !(!arg_1.x)), func_3(vec4<f32>(_wgslsmith_f_op_f32(select(-291f, 1139f, var_0.a.c)), -160f, -299f, _wgslsmith_f_op_f32(-arg_3.x)), select(select(vec4<bool>(false, false, true, arg_1.x), vec4<bool>(arg_1.x, false, false, var_0.a.c), vec4<bool>(false, arg_1.x, var_0.a.c, arg_1.x)), vec4<bool>(true, true, false, arg_1.x), any(vec4<bool>(false, var_0.a.c, true, true))), Struct_4(true, _wgslsmith_f_op_f32(step(229f, arg_3.x)), Struct_3(-815f, Struct_1(16213u, 2147483647i, arg_1.x), vec3<i32>(9875i, var_0.a.b, 0i), Struct_2(var_0.a, 1247f)), Struct_1(7780u, arg_0, arg_1.x))), var_0), Struct_1(var_0.a.a, var_0.a.b, true));
    let var_2 = vec3<u32>(var_0.a.a, reverseBits(~u_input.d.x), ~var_0.a.a);
    var var_3 = any(!vec4<bool>(var_0.a.c, true, true, select(false, false, all(vec3<bool>(true, false, arg_1.x)))));
    var_3 = 0u < ~var_2.x;
    return Struct_3(-953f, Struct_1(_wgslsmith_sub_u32(92265u, 0u), var_1.c.c.x, !var_0.a.c), ~u_input.c.yzz, var_1.c.d);
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: f32) -> Struct_4 {
    let var_0 = arg_0.b.b;
    var var_1 = 1u;
    var var_2 = Struct_3(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_2)), arg_2), _wgslsmith_f_op_f32(-arg_2))), arg_0.b, select(arg_0.c, _wgslsmith_div_vec3_i32(u_input.c.zwx, _wgslsmith_add_vec3_i32(arg_0.c, vec3<i32>(56239i, -1i, 0i)) | arg_0.c), any(select(select(vec3<bool>(arg_0.d.a.c, false, true), vec3<bool>(true, false, arg_0.d.a.c), vec3<bool>(arg_0.b.c, arg_0.b.c, true)), select(vec3<bool>(arg_0.b.c, true, true), vec3<bool>(arg_1, arg_0.d.a.c, true), false), arg_0.b.a <= 50492u))), func_2(abs(~var_0), select(select(!vec3<bool>(arg_1, false, false), !vec3<bool>(arg_0.b.c, arg_0.d.a.c, arg_0.d.a.c), true), select(vec3<bool>(arg_0.d.a.c, arg_0.b.c, arg_0.b.c), vec3<bool>(arg_1, arg_0.b.c, true), vec3<bool>(true, true, true)), select(!vec3<bool>(true, false, arg_1), vec3<bool>(arg_1, arg_0.b.c, arg_0.b.c), all(vec3<bool>(true, arg_0.d.a.c, arg_1)))), func_2(_wgslsmith_div_i32(1i, func_3(vec4<f32>(arg_2, 3113f, arg_0.d.b, -2656f), vec4<bool>(arg_0.b.c, true, true, arg_1), Struct_4(arg_0.d.a.c, -962f, Struct_3(arg_2, Struct_1(3585u, arg_0.d.a.b, true), vec3<i32>(-2147483647i, 30099i, -1i), Struct_2(Struct_1(62631u, -61833i, arg_0.b.c), arg_2)), Struct_1(u_input.d.x, 23171i, true))).x), vec3<bool>(true, 441i == var_0, false), arg_2, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, arg_0.a, -1467f, arg_0.d.b))))).d.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-376f, -633f, -1374f, -1475f) + vec4<f32>(-1230f, arg_2, arg_2, arg_0.a))))).d);
    var var_3 = 0u;
    let var_4 = func_2(_wgslsmith_dot_vec2_i32(-var_2.c.zz, firstTrailingBit(firstTrailingBit(vec2<i32>(var_0, 57839i)))), vec3<bool>(true, arg_1, true), var_2.d.b, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.a, -1287f, var_2.a, arg_0.d.b))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(856f, arg_2, var_2.a, arg_0.a)), false && var_2.d.a.c)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-839f, -616f, 711f, 563f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.d.b, arg_2, -924f, -470f))), select(!vec4<bool>(false, arg_1, arg_0.b.c, false), vec4<bool>(false, var_2.d.a.c, false, var_2.d.a.c), vec4<bool>(true, false, arg_1, true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.a, arg_0.d.b, 1000f, -428f), vec4<f32>(1095f, var_2.a, -463f, 1087f), vec4<bool>(arg_1, arg_1, true, false))) - vec4<f32>(-235f, arg_2, arg_2, 1000f)))))).c.xy;
    return Struct_4(!(arg_0.a > _wgslsmith_f_op_f32(arg_2 * arg_2)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a), arg_0.d.b), func_2(~(-firstTrailingBit(arg_0.c.x)), select(vec3<bool>(var_2.b.c, var_2.d.a.c & arg_0.b.c, true), !select(vec3<bool>(arg_0.b.c, arg_1, arg_1), vec3<bool>(true, var_2.b.c, arg_0.b.c), vec3<bool>(arg_1, false, arg_1)), select(!arg_1, var_2.d.a.c, arg_1)), -2576f, vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(310f)), -511f, arg_1)), 1348f, 151f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-1000f)))))), func_2(u_input.c.x, !(!vec3<bool>(false, true, var_2.b.c)), _wgslsmith_f_op_f32(-1825f - _wgslsmith_f_op_f32(-var_2.a)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, 482f, 161f, arg_0.a))))).b);
}

fn func_1(arg_0: bool) -> Struct_3 {
    var var_0 = func_4(func_2(u_input.b.x, !vec3<bool>(arg_0 != arg_0, arg_0, all(vec2<bool>(true, arg_0))), -2151f, vec4<f32>(1000f, -1236f, _wgslsmith_div_f32(1546f, 421f), _wgslsmith_f_op_f32(max(-252f, _wgslsmith_f_op_f32(select(-685f, 102f, true)))))), !arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1328f))));
    var_0 = func_4(func_4(func_4(Struct_3(var_0.b, Struct_1(u_input.d.x, u_input.c.x, var_0.d.c), vec3<i32>(-2147483647i, 0i, 2162i) | u_input.c.yzz, func_2(-1i, vec3<bool>(arg_0, var_0.d.c, arg_0), -1096f, vec4<f32>(var_0.c.a, var_0.b, var_0.b, var_0.c.a)).d), true, 159f).c, any(!vec2<bool>(arg_0, arg_0)) && any(!vec3<bool>(false, false, var_0.a)), var_0.c.a).c, (1u >> (~(~var_0.d.a) % 32u)) == _wgslsmith_add_u32(4294967295u, u_input.d.x), var_0.c.d.b);
    let var_1 = func_4(Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1080f)) - _wgslsmith_f_op_f32(-func_4(Struct_3(-987f, Struct_1(1u, -17991i, var_0.a), var_0.c.c, Struct_2(Struct_1(1u, 2147483647i, var_0.a), -1290f)), true, var_0.b).b)), var_0.c.b, select(~select(u_input.b, vec3<i32>(-42953i, -1i, u_input.c.x), arg_0), vec3<i32>(~u_input.c.x, var_0.d.b, ~var_0.c.b.b), var_0.d.c), var_0.c.d), all(!select(select(vec2<bool>(false, false), vec2<bool>(var_0.c.b.c, arg_0), vec2<bool>(var_0.d.c, var_0.a)), !vec2<bool>(var_0.a, false), vec2<bool>(arg_0, var_0.c.d.a.c))), 658f);
    var_0 = Struct_4(all(select(vec3<bool>(true, true, true), select(vec3<bool>(var_0.c.d.a.c, false, true), vec3<bool>(arg_0, var_1.a, arg_0), select(vec3<bool>(var_1.c.d.a.c, arg_0, false), vec3<bool>(arg_0, true, true), vec3<bool>(true, false, var_0.d.c))), var_1.c.b.c)), _wgslsmith_div_f32(103f, -334f), var_0.c, Struct_1(4294967295u, var_0.c.d.a.b, (u_input.b.x << (1u % 32u)) < var_0.d.b));
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.b * var_0.c.a)));
    return Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-313f + var_1.c.a)), 1000f)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1136f, _wgslsmith_f_op_f32(ceil(-511f))), var_0.b, !(var_1.c.d.a.a != 1u)))), func_2(21060i, vec3<bool>(arg_0, false, false), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(2718f, 585f))))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-765f, 1414f, _wgslsmith_f_op_f32(min(-1034f, 964f)), var_2)))).d.a, func_2(-1i | _wgslsmith_add_i32(-var_0.c.b.b, u_input.b.x), vec3<bool>(func_2(-1i, select(vec3<bool>(true, false, var_0.d.c), vec3<bool>(arg_0, true, arg_0), arg_0), 1f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1062f, -1000f, -1000f, -206f))).b.c, !(u_input.d.x < var_1.d.a), !all(vec4<bool>(true, arg_0, arg_0, true))), _wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1133f, var_0.c.a, var_2, -1000f) + vec4<f32>(-1429f, -559f, var_2, -376f))))).c, func_2(2147483647i, !vec3<bool>(any(vec4<bool>(true, var_0.a, arg_0, false)), true & var_1.a, arg_0), 1f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(192f, -612f, -1808f, -1000f) - vec4<f32>(var_0.c.d.b, var_2, var_2, 1931f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(544f, -1122f, -2324f, var_2) * vec4<f32>(var_2, var_1.b, var_0.c.a, -1343f))))).d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_u32(~u_input.d.x, ~(~((77200u << (u_input.a.x % 32u)) & ~26401u)));
    let var_1 = true;
    var var_2 = func_1(select((firstLeadingBit(0u) & var_0) > _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 72550u), ~vec2<u32>(var_0, 0u)), true, false));
    var var_3 = func_1(true).b;
    var_2 = func_2(firstLeadingBit(abs(u_input.b.x)), !select(vec3<bool>(true, var_1, var_2.d.a.c & var_3.c), !select(vec3<bool>(var_3.c, true, var_1), vec3<bool>(var_3.c, true, false), vec3<bool>(true, var_1, false)), select(!vec3<bool>(true, var_2.b.c, true), !vec3<bool>(false, false, var_2.b.c), any(vec2<bool>(false, var_1)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-717f)), -807f)) - func_2((var_2.d.a.b | u_input.c.x) | (63032i >> (u_input.a.x % 32u)), select(!vec3<bool>(var_3.c, true, true), vec3<bool>(var_3.c, var_2.b.c, var_2.b.c), vec3<bool>(var_1, var_3.c, false)), _wgslsmith_f_op_f32(abs(var_2.d.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1030f, -808f, -1000f, 1000f)))).d.b), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(941f, 846f, var_2.a, 651f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a, -1839f, var_2.d.b, 762f)), _wgslsmith_div_vec4_f32(vec4<f32>(-451f, var_2.d.b, var_2.d.b, var_2.d.b), vec4<f32>(var_2.d.b, 794f, -289f, 450f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-2337f, var_2.a, _wgslsmith_f_op_f32(round(var_2.a)), -681f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_2.d.b, 190f, 1303f, var_2.d.b), vec4<f32>(543f, 245f, var_2.a, var_2.d.b))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a, var_2.d.b, -793f, var_2.a)))), func_4(func_4(func_2(var_2.b.b, vec3<bool>(true, false, true), var_2.a, vec4<f32>(1353f, -1207f, -1505f, var_2.a)), var_2.d.a.c, _wgslsmith_f_op_f32(-1786f * var_2.d.b)).c, max(u_input.c.x, -2147483647i) != -30116i, func_2(select(var_2.b.b, u_input.b.x, false), select(vec3<bool>(false, true, var_2.d.a.c), vec3<bool>(false, false, var_2.d.a.c), vec3<bool>(var_3.c, false, var_1)), -386f, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-794f, var_2.d.b, 563f, var_2.d.b), vec4<f32>(var_2.d.b, 1639f, var_2.a, -1172f), vec4<bool>(var_2.b.c, var_3.c, var_1, true)))).d.b).c.d.a.c)));
    var var_4 = _wgslsmith_f_op_f32(f32(-1f) * -1023f);
    var var_5 = select(select(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(var_3.c, true, var_3.c, var_3.c), vec4<bool>(false, true, var_2.d.a.c, var_3.c), false), !vec4<bool>(var_2.b.c, true, var_1, false), !vec4<bool>(true, false, true, var_2.d.a.c)), true), !vec4<bool>(!var_3.c, true, true, any(vec4<bool>(true, true, true, true))), any(!vec2<bool>(var_1, false))), vec4<bool>(func_4(Struct_3(_wgslsmith_f_op_f32(max(649f, var_2.d.b)), var_2.b, vec3<i32>(18162i, 2147483647i, var_3.b), func_4(Struct_3(var_2.d.b, var_2.b, u_input.c.wyx, var_2.d), true, 1348f).c.d), !(!var_3.c), _wgslsmith_div_f32(var_2.a, var_2.a)).d.c, select(select(any(vec4<bool>(var_1, var_2.d.a.c, var_3.c, var_1)), var_3.c, func_2(-1i, vec3<bool>(true, var_2.b.c, var_1), 1651f, vec4<f32>(var_2.d.b, var_2.d.b, var_2.a, var_2.a)).b.c), true, var_2.d.a.c), var_1, false), vec4<bool>(func_2(~_wgslsmith_div_i32(var_3.b, -2147483647i), select(select(vec3<bool>(var_2.b.c, var_2.d.a.c, false), vec3<bool>(false, var_2.b.c, var_3.c), vec3<bool>(var_1, var_3.c, var_3.c)), select(vec3<bool>(false, var_2.b.c, var_2.b.c), vec3<bool>(true, true, false), vec3<bool>(var_2.b.c, var_1, var_1)), select(vec3<bool>(false, var_2.d.a.c, var_3.c), vec3<bool>(var_1, var_3.c, true), var_2.b.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) - _wgslsmith_f_op_f32(var_2.a * var_2.d.b)), vec4<f32>(var_2.a, var_2.d.b, _wgslsmith_div_f32(var_2.a, var_2.a), _wgslsmith_f_op_f32(f32(-1f) * -622f))).d.a.c, true, false, all(vec4<bool>(true, var_2.b.b >= -3555i, !var_1, any(vec3<bool>(var_1, false, false))))));
    let var_6 = !func_4(func_4(Struct_3(-565f, Struct_1(74461u, u_input.c.x, true), u_input.c.wxw, var_2.d), var_3.c, var_2.d.b).c, _wgslsmith_f_op_f32(449f + _wgslsmith_f_op_f32(-var_2.a)) >= var_2.a, -1204f).c.b.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-301f, var_2.d.b, var_2.d.b, var_2.d.b))), vec4<f32>(var_2.a, var_2.a, var_2.a, -820f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-950f, var_2.d.b, 1285f, var_2.a)))), _wgslsmith_f_op_f32(-556f - var_2.d.b), vec3<i32>(-_wgslsmith_mult_i32(u_input.b.x, var_3.b), abs(var_3.b), countOneBits(u_input.b.x)), vec3<i32>(func_3(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2.a, var_2.d.b, var_2.a, 178f), vec4<f32>(801f, -796f, 1000f, var_2.a))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1451f, var_2.a, var_2.a)))), select(select(vec4<bool>(var_5.x, var_5.x, true, false), vec4<bool>(var_2.d.a.c, true, false, false), false), vec4<bool>(var_5.x, var_5.x, var_2.d.a.c, var_3.c), !vec4<bool>(false, var_6, true, true)), Struct_4(all(vec4<bool>(true, false, false, false)), 512f, func_1(var_6), func_2(-2147483647i, vec3<bool>(var_6, true, var_5.x), var_2.d.b, vec4<f32>(-203f, -147f, var_2.a, 158f)).d.a)).x, var_2.d.a.b, u_input.c.x));
}

