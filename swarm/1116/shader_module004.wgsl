struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: f32) -> i32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0)) + arg_0)))), _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -204f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(402f, -352f)))))), 1117f, -1000f);
    global0 = vec3<i32>(_wgslsmith_sub_i32(-reverseBits(8685i), _wgslsmith_dot_vec2_i32(global0.zz, -vec2<i32>(global0.x, global0.x)) << (~firstTrailingBit(4294967295u) % 32u)), -global0.x, reverseBits(-18587i));
    var var_1 = Struct_2(_wgslsmith_div_vec3_f32(vec3<f32>(1261f, 931f, var_0.x), var_0.zwy), Struct_1(595f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - 1000f)), vec3<i32>(global0.x, -1i, ~_wgslsmith_mod_i32(global0.x, global0.x))), Struct_1(-1733f, var_0.x, countOneBits(~vec3<i32>(-25991i, global0.x, global0.x) | _wgslsmith_mult_vec3_i32(vec3<i32>(global0.x, 0i, global0.x), vec3<i32>(-1i, global0.x, global0.x)))), firstTrailingBit(vec4<i32>(global0.x, 2147483647i, -26389i, _wgslsmith_clamp_i32(-global0.x, ~(-1i), -2147483647i))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0, arg_0)))), _wgslsmith_f_op_f32(f32(-1f) * -294f), ~(-(~vec3<i32>(global0.x, 13567i, 2147483647i)))));
    global0 = ~(~abs(_wgslsmith_add_vec3_i32(select(var_1.e.c, vec3<i32>(6823i, 3351i, var_1.e.c.x), true), -vec3<i32>(1i, 1i, -5006i))));
    let var_2 = _wgslsmith_mult_u32(_wgslsmith_add_u32(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(11830u, u_input.d, 1u, 54864u) >> (vec4<u32>(u_input.d, u_input.c, 4294967295u, 33605u) % vec4<u32>(32u)), reverseBits(vec4<u32>(0u, u_input.d, u_input.b, 22957u)))) ^ _wgslsmith_add_u32(u_input.c, u_input.c), u_input.c);
    return _wgslsmith_mult_i32(firstTrailingBit(~countOneBits(47823i)), 1i);
}

fn func_2() -> vec3<bool> {
    let var_0 = false;
    let var_1 = ~countOneBits(~(~vec4<i32>(1i, global0.x, 2183i, global0.x)));
    global0 = _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-34879i, global0.x | 15890i, firstLeadingBit(_wgslsmith_sub_i32(-1i, global0.x))), max(vec3<i32>(-1i) * -var_1.zxy, min(_wgslsmith_div_vec3_i32(vec3<i32>(-33283i, 0i, var_1.x), vec3<i32>(-1i, global0.x, -19255i)), var_1.www))), vec3<i32>(2147483647i, (func_3(-1729f) >> (~u_input.a % 32u)) ^ global0.x, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(i32(-1i) * -1i, _wgslsmith_add_i32(-2147483647i, global0.x), ~(-1263i)), ~2147483647i)));
    var var_2 = var_0;
    var var_3 = vec4<f32>(-231f, _wgslsmith_f_op_f32(f32(-1f) * -799f), 2380f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(414f - _wgslsmith_f_op_f32(-560f - -169f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -759f) - 1f))));
    return vec3<bool>(all(vec2<bool>(true, any(vec2<bool>(var_0, true)))), var_0 | var_0, !(!select(true, -2147483647i != global0.x, true)));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: vec4<f32>) -> vec3<i32> {
    var var_0 = Struct_2(arg_2.yzx, arg_1.e, Struct_1(-188f, -1000f, arg_1.d.zzw), _wgslsmith_div_vec4_i32(reverseBits(arg_1.d) & _wgslsmith_add_vec4_i32(vec4<i32>(1i, arg_1.e.c.x, -80024i, 0i) | arg_1.d, firstLeadingBit(vec4<i32>(-1i, arg_1.b.c.x, global0.x, -26674i))), countOneBits(-vec4<i32>(global0.x, global0.x, arg_1.d.x, -9738i))), Struct_1(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(arg_2.x)))), true)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-504f)) - _wgslsmith_f_op_f32(trunc(1591f))), all(!arg_0))), arg_1.c.c));
    let var_1 = firstTrailingBit(vec4<i32>(reverseBits(-6606i), max(_wgslsmith_div_i32(global0.x, -1i) | func_3(arg_2.x), -2679i), i32(-1i) * -(~(-3750i)), 1i));
    var var_2 = arg_2.x;
    var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(var_0.b.b)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1244f, var_0.a.x), _wgslsmith_f_op_f32(ceil(var_0.c.b))))))), select(any(!vec4<bool>(false, arg_0.x, arg_0.x, false)) & arg_0.x, true, (var_0.b.a != _wgslsmith_f_op_f32(round(-2072f))) | !arg_0.x)));
    var var_3 = 20484u & ~u_input.b;
    return vec3<i32>(~(-select(-48664i, 0i, false)), var_0.e.c.x, arg_1.b.c.x) & vec3<i32>(var_0.e.c.x, ~global0.x >> (_wgslsmith_sub_u32(u_input.a >> (u_input.d % 32u), 92283u) % 32u), -var_1.x);
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_add_vec3_i32(max(func_4(func_2(), Struct_2(vec3<f32>(210f, -1118f, -697f), Struct_1(419f, 3315f, vec3<i32>(global0.x, -25320i, global0.x)), Struct_1(682f, -2510f, vec3<i32>(global0.x, global0.x, 16309i)), vec4<i32>(-1i, -32642i, global0.x, 0i), Struct_1(-1357f, 2054f, vec3<i32>(global0.x, global0.x, global0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1071f, -387f, -191f, 1136f))), ~vec3<i32>(29822i, global0.x, -786i) << ((vec3<u32>(u_input.a, u_input.c, u_input.c) ^ vec3<u32>(u_input.a, 19464u, 4294967295u)) % vec3<u32>(32u))), _wgslsmith_sub_vec3_i32(vec3<i32>(0i, -65523i, global0.x) & _wgslsmith_sub_vec3_i32(vec3<i32>(-2828i, global0.x, global0.x), vec3<i32>(global0.x, -36757i, global0.x)), ~vec3<i32>(2147483647i, global0.x, global0.x) << (vec3<u32>(0u, 4294967295u, u_input.b) % vec3<u32>(32u)))) | vec3<i32>(_wgslsmith_clamp_i32(0i, min(global0.x, 19557i) | ~1i, -60571i), abs(_wgslsmith_mod_i32(-2147483647i | global0.x, global0.x)), -60380i);
    global0 = var_0;
    global0 = firstLeadingBit((abs(var_0) & -var_0) >> (firstLeadingBit(vec3<u32>(0u, 0u, 52806u)) % vec3<u32>(32u))) >> (vec3<u32>(1u, u_input.d, (u_input.c | ~u_input.d) & 4294967295u) % vec3<u32>(32u));
    return Struct_1(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1000f, 938f)), _wgslsmith_f_op_f32(ceil(-375f)))))), abs(var_0) & var_0);
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: i32, arg_3: Struct_1) -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(exp2(arg_3.a)), _wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_mult_vec3_i32(func_1().c, vec3<i32>(-66890i, arg_0.c.x, -abs(-2147483647i))));
    var var_1 = func_1();
    var_1 = Struct_1(-859f, _wgslsmith_f_op_f32(min(-1019f, -882f)), vec3<i32>(~arg_2, -2147483647i, 1i));
    var var_2 = 994f;
    var var_3 = -1071f;
    return reverseBits(36954u) < u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(all(vec3<bool>(true, true, true)), !select(false, func_5(func_1(), i32(-1i) * -1i, _wgslsmith_mod_i32(-2147483647i, global0.x), Struct_1(-778f, -354f, vec3<i32>(31799i, global0.x, 33332i))), any(vec4<bool>(true, true, true, true)) && true));
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-189f, 812f, 328f)) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1600f, 841f, 304f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1096f, 739f, -511f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1101f, -1000f, 1458f) + vec3<f32>(-1066f, -1093f, 1000f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-969f, -173f), _wgslsmith_f_op_f32(f32(-1f) * -739f), _wgslsmith_f_op_f32(trunc(1492f)))), vec3<bool>(true, true, true))), Struct_1(_wgslsmith_f_op_f32(step(547f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -656f), _wgslsmith_f_op_f32(f32(-1f) * -368f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(647f + 244f)))), reverseBits(reverseBits(vec3<i32>(-29136i, global0.x, -2147483647i)))), func_1(), ~max(countOneBits(vec4<i32>(global0.x, global0.x, 2147483647i, global0.x) ^ vec4<i32>(-4998i, global0.x, -1i, global0.x)), max(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, -14i, global0.x, global0.x), vec4<i32>(global0.x, 2147483647i, global0.x, 1i)), -vec4<i32>(7579i, 2147483647i, global0.x, -2147483647i))), func_1());
    var var_2 = var_1;
    global0 = vec3<i32>(~global0.x | (i32(-1i) * -(~(-13996i))), -2147483647i >> (1u % 32u), 7943i);
    var_2 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.b.a), -1866f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.a.x * _wgslsmith_f_op_f32(-var_2.b.a)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(var_1.c.a)), 1f))))), Struct_1(-847f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(var_1.e.a)))), ~func_1().c), var_2.b, _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(func_4(vec3<bool>(var_0.x, true, var_0.x), Struct_2(vec3<f32>(var_2.e.a, var_2.c.b, var_1.e.a), var_1.c, Struct_1(var_2.a.x, -1000f, vec3<i32>(39062i, global0.x, var_1.d.x)), vec4<i32>(global0.x, 0i, -1415i, -34868i), var_2.c), vec4<f32>(841f, var_2.b.a, var_2.c.a, var_2.a.x)).x, ~var_2.b.c.x, countOneBits(var_1.e.c.x), firstLeadingBit(-6003i)), ~(var_1.d ^ var_2.d)), var_2.d, countOneBits(vec4<i32>(global0.x, global0.x, _wgslsmith_clamp_i32(var_2.c.c.x, global0.x, global0.x), -21396i))), var_2.b);
    var var_3 = Struct_1(var_1.a.x, _wgslsmith_f_op_f32(-func_1().b), func_4(select(!(!vec3<bool>(true, false, var_0.x)), vec3<bool>(true, false, u_input.a <= u_input.b), select(select(vec3<bool>(true, true, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, true)), !vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, true, var_0.x))), Struct_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(var_2.a, var_2.a, vec3<bool>(false, true, true))), vec3<f32>(-465f, -1000f, var_1.a.x), !vec3<bool>(var_0.x, var_0.x, false))), Struct_1(var_1.e.a, _wgslsmith_f_op_f32(step(var_1.e.a, 189f)), var_1.e.c), var_2.c, countOneBits(var_1.d), var_2.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2.e.b, 152f, -1099f, 838f), vec4<f32>(var_1.b.a, var_2.e.b, var_1.b.b, var_2.b.a))) + vec4<f32>(var_2.b.a, var_1.b.a, var_2.c.a, 818f)))));
    var var_4 = var_2.e;
    let var_5 = func_1();
    var var_6 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-832f - -1831f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(abs(var_2.c.a)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-582f * -247f)))), func_1(), Struct_1(1167f, _wgslsmith_f_op_f32(f32(-1f) * -151f), vec3<i32>(-(~43931i), var_2.e.c.x, abs(var_2.b.c.x) << (1u % 32u))), var_2.d, func_1());
    let x = u_input.a;
    s_output = StorageBuffer(-(~max(~18270i, ~var_6.e.c.x)), vec2<i32>(~(-var_4.c.x) ^ global0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_5.c.x, _wgslsmith_sub_i32(0i, var_4.c.x), var_1.b.c.x), -max(var_6.e.c, var_6.b.c))));
}

