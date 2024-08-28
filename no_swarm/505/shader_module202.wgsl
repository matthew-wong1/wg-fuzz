struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec4<f32>,
    d: bool,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: f32, arg_1: vec2<u32>, arg_2: f32) -> f32 {
    var var_0 = Struct_1(u_input.c.x, vec2<f32>(_wgslsmith_f_op_f32(min(332f, 2026f)), 131f), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(ceil(arg_2))), -545f, arg_2, 408f))), any(vec2<bool>(all(vec2<bool>(false, true)), !all(vec3<bool>(true, false, false)))), vec4<f32>(arg_2, arg_2, _wgslsmith_f_op_f32(1043f - _wgslsmith_f_op_f32(-arg_2)), -231f));
    var var_1 = select(vec3<bool>(all(select(vec4<bool>(var_0.d, var_0.d, true, true), vec4<bool>(var_0.d, var_0.d, var_0.d, true), vec4<bool>(false, false, false, var_0.d))) != !all(vec2<bool>(var_0.d, false)), true, !(_wgslsmith_f_op_f32(arg_2 * 1177f) > _wgslsmith_f_op_f32(sign(arg_0)))), !select(select(!vec3<bool>(var_0.d, false, false), vec3<bool>(false, true, var_0.d), select(vec3<bool>(var_0.d, var_0.d, var_0.d), vec3<bool>(var_0.d, false, var_0.d), false)), select(select(vec3<bool>(true, var_0.d, true), vec3<bool>(true, false, var_0.d), false), !vec3<bool>(var_0.d, false, true), vec3<bool>(false, true, var_0.d)), !vec3<bool>(var_0.d, var_0.d, var_0.d)), select(select(vec3<bool>(var_0.d, any(vec3<bool>(var_0.d, false, false)), false), select(!vec3<bool>(false, false, var_0.d), vec3<bool>(true, true, true), vec3<bool>(var_0.d, var_0.d, true)), firstTrailingBit(14879u) > _wgslsmith_clamp_u32(u_input.b, 1u, 84841u)), select(vec3<bool>(var_0.d, arg_0 < arg_2, var_0.c.x >= -1555f), !(!vec3<bool>(false, var_0.d, false)), false), any(!vec3<bool>(var_0.d, false, true)) || false));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(max(-2435f, arg_0)), arg_2, 147f), _wgslsmith_f_op_vec3_f32(var_0.e.ywz - _wgslsmith_f_op_vec3_f32(-var_0.e.ywx))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_0.e.wyz, var_0.e.wxz, var_0.d))));
    let var_3 = ~(~_wgslsmith_mod_u32(~(arg_1.x | arg_1.x), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.b, u_input.b, 0u), 4294967295u)));
    let var_4 = Struct_1(firstTrailingBit(u_input.c.x >> (4294967295u % 32u)), vec2<f32>(_wgslsmith_f_op_f32(-arg_0), var_2.x), _wgslsmith_f_op_vec4_f32(var_0.c - _wgslsmith_f_op_vec4_f32(-var_0.e)), true, _wgslsmith_f_op_vec4_f32(-var_0.e));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * arg_0) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-568f * _wgslsmith_f_op_f32(var_4.e.x + 779f))))), var_4.d));
}

fn func_2() -> bool {
    var var_0 = Struct_1(min(u_input.c.x, -_wgslsmith_dot_vec3_i32(u_input.c & u_input.c, vec3<i32>(2147483647i, -20424i, 5608i))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1037f, _wgslsmith_f_op_f32(-338f - _wgslsmith_f_op_f32(step(272f, 817f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-954f, -1022f))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1110f, -145f, 1425f, 291f)))), true, vec4<f32>(1212f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2566f), _wgslsmith_f_op_f32(f32(-1f) * -956f)), _wgslsmith_f_op_f32(189f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(-1841f, vec2<u32>(u_input.b, u_input.b), 1000f)) - 114f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(541f * 1369f))))));
    var var_1 = vec4<bool>(true, all(select(vec2<bool>(all(vec4<bool>(var_0.d, var_0.d, false, var_0.d)), true), vec2<bool>(var_0.d, all(vec2<bool>(true, false))), select(select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(var_0.d, var_0.d), u_input.c.x <= -24881i))), !any(!select(vec3<bool>(false, true, var_0.d), vec3<bool>(var_0.d, var_0.d, false), var_0.d)), _wgslsmith_mod_i32(2147483647i, abs(abs(var_0.a))) > 2147483647i);
    let var_2 = !var_1.xyy;
    var var_3 = -vec3<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(firstTrailingBit(max(vec4<i32>(var_0.a, u_input.c.x, var_0.a, -2147483647i), vec4<i32>(u_input.c.x, -2147483647i, 27536i, -1i))), firstLeadingBit(-vec4<i32>(0i, u_input.a, var_0.a, -6548i))), -6069i);
    let var_4 = var_0.e.wz;
    return var_1.x || !var_0.d;
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: i32, arg_3: vec2<u32>) -> f32 {
    let var_0 = arg_1.b.x;
    let var_1 = select(~(~select(abs(vec4<u32>(41960u, 1u, arg_3.x, 41598u)), abs(vec4<u32>(4294967295u, arg_3.x, arg_3.x, 0u)), -1i != arg_1.a)), _wgslsmith_div_vec4_u32(select(~vec4<u32>(3056u, u_input.b, 0u, 1u), ~(vec4<u32>(49019u, 4294967295u, u_input.b, 31228u) >> (vec4<u32>(0u, 0u, u_input.b, 1u) % vec4<u32>(32u))), vec4<bool>(arg_1.d && true, func_2(), true, arg_2 > 42538i)), vec4<u32>(16971u, _wgslsmith_sub_u32(1u, arg_3.x), ~max(73716u, 4294967295u), ~(~1u))), arg_1.d);
    var var_2 = arg_1;
    let var_3 = Struct_1(0i, vec2<f32>(var_2.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -424f) - 1209f))), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(-141f, min(arg_3, vec2<u32>(32838u, arg_3.x)), _wgslsmith_f_op_f32(-arg_1.c.x))))), _wgslsmith_f_op_f32(-var_0), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.x)), var_0), var_0), !var_2.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2.c.x, var_0, var_0, arg_1.e.x))) - vec4<f32>(var_0, _wgslsmith_div_f32(var_2.c.x, var_2.c.x), arg_1.e.x, 260f))));
    let var_4 = arg_1;
    return -267f;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>) -> Struct_1 {
    let var_0 = ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, u_input.b, firstTrailingBit(40068u), ~(u_input.b | u_input.b)), _wgslsmith_mult_vec4_u32(~(vec4<u32>(u_input.b, u_input.b, u_input.b, 0u) | vec4<u32>(55814u, u_input.b, 1u, u_input.b)), vec4<u32>(7958u, u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 3812u, 30283u), vec3<u32>(15200u, 34507u, 114021u)), max(0u, u_input.b))));
    var var_1 = vec4<u32>(var_0.x, 21373u, ~reverseBits(~4294967295u), 59083u);
    let var_2 = Struct_2(Struct_1(-1i, _wgslsmith_f_op_vec2_f32(arg_0.e.wy - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0.c.x, arg_0.c.x))), arg_0.e.wz))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.x, 1159f, 1681f, -245f)), !(arg_0.b.x == arg_0.c.x), arg_0.e), max(vec4<i32>(u_input.a ^ arg_0.a, arg_0.a & -1i, arg_0.a, select(arg_0.a, arg_0.a, true)) | max(vec4<i32>(u_input.c.x, arg_0.a, 1i, arg_0.a), vec4<i32>(arg_0.a, arg_0.a, u_input.a, u_input.c.x) >> (var_0 % vec4<u32>(32u))), ~countOneBits(vec4<i32>(-1i, 402i, arg_0.a, arg_0.a))));
    var_1 = select(vec4<u32>(4294967295u, 79067u, abs(7369u), ~firstLeadingBit(1u)), abs(vec4<u32>(_wgslsmith_sub_u32(4294967295u, u_input.b) & _wgslsmith_dot_vec2_u32(var_1.yw, var_1.xx), ~reverseBits(39906u), var_0.x, ~_wgslsmith_sub_u32(0u, var_1.x))), vec4<bool>(abs(38606u) != ~abs(var_1.x), false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1117f)) * arg_0.c.x) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.c.x)), any(select(!vec3<bool>(true, false, arg_1.x), select(vec3<bool>(false, true, true), vec3<bool>(arg_1.x, arg_0.d, false), arg_1.x), vec3<bool>(true, true, arg_1.x)))));
    var var_3 = firstLeadingBit(var_1.wz);
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_1(-2147483647i, vec2<f32>(482f, _wgslsmith_f_op_f32(func_1(0i, Struct_1(0i, vec2<f32>(-1283f, -140f), vec4<f32>(637f, -157f, -238f, 175f), true, vec4<f32>(-831f, 1065f, 1191f, -1000f)), ~(-2147483647i), vec2<u32>(u_input.b, 1u)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -138f, -1000f, _wgslsmith_f_op_f32(f32(-1f) * -932f))), false, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(936f + -1327f), _wgslsmith_f_op_f32(trunc(235f)), -1155f, _wgslsmith_f_op_f32(-1686f + -652f)))), !select(vec2<bool>(true, all(vec4<bool>(true, true, true, false))), select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), false)), all(select(vec2<bool>(false, false), vec2<bool>(false, true), true))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_0.b.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.b.x))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b.x, _wgslsmith_f_op_f32(func_1(84669i, func_4(Struct_1(var_0.a, var_0.e.yw, vec4<f32>(var_0.b.x, var_0.e.x, -730f, var_0.b.x), false, var_0.e), vec2<bool>(false, var_0.d)), _wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(var_0.a, var_0.a, var_0.a)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, 1u), vec2<u32>(24268u, 45184u)))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(max(var_0.e, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, -124f, -430f, 1137f)), _wgslsmith_f_op_vec4_f32(ceil(var_0.c))))));
    var var_3 = func_4(func_4(Struct_1(var_0.a, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-647f, 391f) * var_0.b))), vec4<f32>(_wgslsmith_f_op_f32(round(var_0.c.x)), -1423f, _wgslsmith_f_op_f32(max(-1000f, var_2.x)), _wgslsmith_f_op_f32(floor(153f))), false, vec4<f32>(var_1, _wgslsmith_f_op_f32(f32(-1f) * -245f), _wgslsmith_f_op_f32(min(var_1, var_2.x)), _wgslsmith_f_op_f32(592f * var_0.c.x))), vec2<bool>(true, true)), !vec2<bool>(true, !(!var_0.d)));
    let var_4 = var_3.e.x;
    var var_5 = true;
    let var_6 = Struct_2(Struct_1(-1i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.x, var_3.e.x))), var_0.e, false, vec4<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1837f, -663f)), -559f, _wgslsmith_f_op_f32(max(var_1, var_2.x)))), abs(vec4<i32>(var_3.a, countOneBits(_wgslsmith_div_i32(var_0.a, var_0.a)), var_0.a, abs(-u_input.a))));
    var var_7 = var_3.a;
    var var_8 = _wgslsmith_f_op_vec3_f32(var_3.c.yzy * var_2.wwy);
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b, vec3<u32>(countOneBits(u_input.b), (~19882u << (~u_input.b % 32u)) ^ (_wgslsmith_dot_vec3_u32(vec3<u32>(3000u, 1u, 67603u), vec3<u32>(u_input.b, u_input.b, 4294967295u)) | (u_input.b & u_input.b)), _wgslsmith_clamp_u32(min(select(u_input.b, 4294967295u, false), ~u_input.b), max(22070u, u_input.b) ^ ~13173u, _wgslsmith_sub_u32(u_input.b, u_input.b))), ~var_6.b.yww, u_input.b & firstTrailingBit(~4294967295u));
}

