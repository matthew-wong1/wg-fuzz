struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec4<f32>,
    d: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> f32 {
    var var_0 = Struct_1(vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)), ~_wgslsmith_dot_vec4_u32(select(vec4<u32>(4294967295u, 42274u, 14414u, 4294967295u), vec4<u32>(31309u, 2463u, 1u, 1u), false), vec4<u32>(1u, 1u, 1u, 1u)), ~abs(_wgslsmith_dot_vec4_u32(vec4<u32>(27989u, 4294967295u, 26647u, 25057u), vec4<u32>(26588u, 0u, 1686u, 59784u))), 1u), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-311f - _wgslsmith_div_f32(372f, 1629f)))), vec4<f32>(1261f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1648f))))), _wgslsmith_f_op_f32(sign(-378f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(ceil(1000f))) - _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(494f, -320f))))), -280f);
    let var_1 = 1f;
    var_0 = Struct_1(abs(vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(var_0.a.x, 60446u, var_0.a.x), reverseBits(0u)), ~var_0.a.x, 23674u, firstLeadingBit(_wgslsmith_clamp_u32(26019u, 0u, var_0.a.x)))), _wgslsmith_f_op_f32(var_1 * var_1), var_0.c, _wgslsmith_f_op_f32(round(-222f)));
    let var_2 = _wgslsmith_dot_vec3_u32(~(~var_0.a.zxz), _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(var_0.a.wx ^ vec2<u32>(var_0.a.x, var_0.a.x), _wgslsmith_clamp_vec2_u32(var_0.a.zx, vec2<u32>(var_0.a.x, 52499u), vec2<u32>(4294967295u, 18592u))), abs(1u), var_0.a.x), ~_wgslsmith_sub_vec3_u32(var_0.a.yzw, var_0.a.www) ^ ((var_0.a.xyy & vec3<u32>(var_0.a.x, var_0.a.x, var_0.a.x)) >> (var_0.a.xwy % vec3<u32>(32u)))));
    var var_3 = Struct_1(vec4<u32>(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.x, 4294967295u, var_0.a.x, 1u), var_0.a)) << ((max(var_2, 1u) << (~var_0.a.x % 32u)) % 32u), var_2, var_0.a.x, _wgslsmith_mult_u32(~var_0.a.x, var_2)), var_1, _wgslsmith_f_op_vec4_f32(exp2(var_0.c)), -1000f);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.d * var_3.c.x)))));
}

fn func_2(arg_0: vec2<i32>, arg_1: i32, arg_2: f32) -> f32 {
    let var_0 = true;
    var var_1 = Struct_1(vec4<u32>(4294967295u, firstTrailingBit(1u), 4294967295u, _wgslsmith_add_u32(~abs(1u), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(8726u, 28604u), vec2<u32>(47321u, 42656u)), vec2<u32>(1u, 1u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_2, 1005f, false)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2185f)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(140f, arg_2, -523f, arg_2)))))), _wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-484f)))));
    var var_2 = vec2<u32>(~1u, ~1u);
    var_1 = Struct_1(~(~select(var_1.a & var_1.a, ~vec4<u32>(1u, var_1.a.x, 58048u, var_1.a.x), vec4<bool>(true, var_0, var_0, true))), -391f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.c * vec4<f32>(var_1.c.x, var_1.c.x, -830f, 1489f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.c * vec4<f32>(1000f, var_1.b, var_1.b, -635f))))), arg_2);
    var var_3 = Struct_1(vec4<u32>(firstTrailingBit(_wgslsmith_mult_u32(0u, ~27983u)), var_1.a.x, 36938u, _wgslsmith_sub_u32(~var_2.x, ~countOneBits(0u))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) * 1f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -143f)), _wgslsmith_f_op_f32(step(var_1.b, -493f)), -1999f, _wgslsmith_f_op_f32(max(arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_2)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())));
    return arg_2;
}

fn func_1(arg_0: f32, arg_1: bool) -> bool {
    let var_0 = 4294967295u;
    let var_1 = Struct_1(~vec4<u32>(0u, firstTrailingBit(var_0), var_0, var_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1281f * _wgslsmith_f_op_f32(-arg_0)) - _wgslsmith_f_op_f32(f32(-1f) * -975f)) - -1072f), vec4<f32>(-1044f, arg_0, _wgslsmith_f_op_f32(func_2(~vec2<i32>(0i, u_input.a.x), -12008i, _wgslsmith_f_op_f32(-arg_0))), -283f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3())))));
    let var_2 = Struct_1(~(~vec4<u32>(~var_0, 1u, 35839u, var_1.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(257f, -529f)) - 835f), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1881f)) + _wgslsmith_f_op_f32(step(arg_0, arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1055f - 1000f)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.d, -1465f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3()), var_1.d, all(select(vec4<bool>(true, false, true, false), vec4<bool>(true, arg_1, arg_1, true), arg_1)))), _wgslsmith_f_op_f32(abs(arg_0))), _wgslsmith_f_op_f32(func_3()));
    let var_3 = _wgslsmith_mult_i32(countOneBits(-45581i), u_input.b.x);
    let var_4 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(266f))));
    return any(vec4<bool>(arg_1, true, !arg_1 || select(arg_1, var_2.c.x < 1410f, false), arg_1));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_f32(func_2(u_input.b.xx, u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    let var_1 = _wgslsmith_div_vec2_i32(u_input.a.zz, firstTrailingBit(reverseBits(min(vec2<i32>(-35543i, -2147483647i), vec2<i32>(-2147483647i, u_input.b.x)))));
    let var_2 = arg_1;
    let var_3 = Struct_1(vec4<u32>(countOneBits(4294967295u), 21751u, _wgslsmith_mod_u32(_wgslsmith_sub_u32(0u, ~arg_2.a.x), _wgslsmith_mod_u32(~4294967295u, var_2.a.x)), ~(~arg_3.a.x)), 220f, vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-246f, arg_1.d))), _wgslsmith_f_op_f32(f32(-1f) * -1197f), any(!vec2<bool>(arg_0, true)))), _wgslsmith_f_op_f32(round(var_0)), -775f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.b))), var_0);
    let var_4 = 0u;
    return ~vec3<u32>(~(~0u), arg_2.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(30177u, arg_2.a.x, 20713u, 50992u), var_3.a) | ~1994u) ^ ~arg_3.a.zwx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(select(vec2<u32>(1u, 1u), abs(~vec2<u32>(0u, 42909u)), vec2<bool>(true, true)), vec2<u32>(1u, countOneBits(1u))) ^ ~vec2<u32>(133055u, 1u);
    let var_1 = func_4(select(all(vec4<bool>(true, true, true, true)), !any(vec4<bool>(true, true, true, false)), false), Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 1u, max(51354u, var_0.x), 0u), _wgslsmith_div_vec4_u32(~vec4<u32>(var_0.x, var_0.x, 4294967295u, 0u), _wgslsmith_mod_vec4_u32(vec4<u32>(60907u, var_0.x, var_0.x, 1u), vec4<u32>(72128u, 1u, 4294967295u, var_0.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-311f, 252f)), _wgslsmith_f_op_f32(1701f * _wgslsmith_f_op_f32(-386f - 443f)), func_1(-663f, true))), vec4<f32>(920f, 1604f, _wgslsmith_f_op_f32(max(-1454f, 1000f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1885f), _wgslsmith_f_op_f32(-385f * 1392f), true))), _wgslsmith_f_op_f32(-726f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-1650f, -821f, true)))))), Struct_1(abs(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, var_0.x, var_0.x, var_0.x) ^ vec4<u32>(4294967295u, 0u, 64432u, var_0.x), vec4<u32>(34978u, var_0.x, 0u, var_0.x))), _wgslsmith_f_op_f32(round(-554f)), _wgslsmith_div_vec4_f32(vec4<f32>(-627f, _wgslsmith_f_op_f32(select(1445f, -828f, false)), _wgslsmith_f_op_f32(step(-389f, -741f)), _wgslsmith_f_op_f32(-683f - -969f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-767f, 242f, -1000f, 1009f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1159f, -1340f, 353f, -241f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-790f * 501f), 1341f))), Struct_1(~_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 0u, 1u, 0u), vec4<u32>(1u, 1u, var_0.x, var_0.x), vec4<u32>(0u, 59470u, 4294967295u, 0u)), ~vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x)), -1000f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-171f, -1000f, -673f, -996f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -116f)))));
    let var_2 = Struct_1(~select(min(min(vec4<u32>(4294967295u, 0u, 4294967295u, var_0.x), vec4<u32>(61101u, 37409u, var_1.x, var_1.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(50008u, 24566u, 0u, 4294967295u), vec4<u32>(0u, 24461u, 13610u, var_1.x))), ~vec4<u32>(var_1.x, var_0.x, 0u, 4294967295u), select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), false), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-634f, 1518f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(239f, _wgslsmith_f_op_f32(-1000f - -1091f), _wgslsmith_f_op_f32(select(2912f, 689f, true)), 1f) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(798f, 2226f, -887f, -661f), vec4<f32>(2071f, -1000f, -1143f, 1009f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1378f, -185f, -694f, 144f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -573f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(187f, -233f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1122f) + _wgslsmith_f_op_f32(trunc(-432f))))))));
    var var_3 = _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(firstTrailingBit(59239u), 104004u), ~var_1.xx >> (vec2<u32>(17720u, 46739u) % vec2<u32>(32u))), vec2<u32>(~(~44790u), var_0.x)), _wgslsmith_mod_vec2_u32(select(countOneBits(_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.x, 1u), vec2<u32>(4294967295u, var_1.x))), countOneBits(~var_1.yz), !select(false, true, true)), var_2.a.xz));
    var_3 = vec2<u32>(~(~28184u), ~23385u);
    let x = u_input.a;
    s_output = StorageBuffer(-27512i, _wgslsmith_add_i32(u_input.a.x, ~(i32(-1i) * -2147483647i)) & 1i, var_3.x, -u_input.b.x);
}

