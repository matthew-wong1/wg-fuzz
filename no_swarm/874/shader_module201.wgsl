struct Struct_1 {
    a: u32,
    b: u32,
    c: u32,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: f32, arg_1: vec4<i32>, arg_2: vec2<u32>, arg_3: Struct_1) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2249f, _wgslsmith_f_op_f32(-arg_3.e), arg_0, _wgslsmith_f_op_f32(149f * arg_0))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0, _wgslsmith_f_op_f32(abs(1518f)), _wgslsmith_f_op_f32(min(arg_3.e, arg_3.e)), _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(909f, arg_0, 621f, 1547f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0, arg_0, arg_3.e, arg_0), vec4<f32>(-1184f, arg_0, -689f, arg_0))))))));
    let var_1 = !select(vec2<bool>(false, true), !vec2<bool>(true, arg_3.d), !(!all(vec3<bool>(true, false, arg_3.d))));
    let var_2 = Struct_1(arg_2.x, ~(arg_3.b << (~_wgslsmith_mod_u32(arg_3.c, 1u) % 32u)), u_input.a.x, true, _wgslsmith_f_op_f32(min(-516f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * 473f) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(arg_3.e)), _wgslsmith_f_op_f32(trunc(var_0.x))))))));
    let var_3 = select(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.b, arg_3.a), u_input.a.ww), _wgslsmith_add_u32(var_2.a, u_input.a.x)), abs(vec2<u32>(u_input.b, arg_2.x))) < ~(~arg_2.x), select(arg_3.d, true, true), var_2.d);
    var var_4 = any(vec3<bool>(_wgslsmith_div_f32(-1121f, _wgslsmith_div_f32(var_0.x, -1154f)) > var_2.e, false, any(select(!vec4<bool>(false, false, true, var_3), vec4<bool>(var_3, var_2.d, false, true), select(vec4<bool>(var_1.x, arg_3.d, arg_3.d, true), vec4<bool>(arg_3.d, var_1.x, true, false), false)))));
    return _wgslsmith_mult_vec3_i32(-(~vec3<i32>(arg_1.x, arg_1.x, arg_1.x) | _wgslsmith_div_vec3_i32(arg_1.wzw, vec3<i32>(20761i, arg_1.x, -50937i))), vec3<i32>(1i, _wgslsmith_sub_i32(~(-34680i), _wgslsmith_dot_vec2_i32(vec2<i32>(48212i, 18586i), _wgslsmith_mult_vec2_i32(arg_1.yy, vec2<i32>(17828i, -1i)))), select(arg_1.x, arg_1.x, select(true, all(vec2<bool>(true, var_1.x)), any(vec4<bool>(var_1.x, var_3, true, var_3))))));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1) -> bool {
    var var_0 = func_3(arg_1.e, ~vec4<i32>(abs(firstLeadingBit(1i)), 0i, ~1i, ~_wgslsmith_sub_i32(1i, 0i)), ~(~(~vec2<u32>(73644u, 20744u))), Struct_1(arg_1.b, 0u, 37206u, true, 1000f));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1379f), _wgslsmith_f_op_f32(ceil(arg_1.e)))))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-157f)), _wgslsmith_f_op_f32(-1134f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f + arg_1.e), -485f)))));
    var var_2 = ~0u;
    var_0 = vec3<i32>(2147483647i, countOneBits(_wgslsmith_mod_i32(var_0.x, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(var_0.zx, vec2<i32>(var_0.x, var_0.x)), ~(-5752i)))), ~(~firstLeadingBit(var_0.x)));
    var var_3 = arg_1;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.e, arg_1.e)))) < _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-712f)))));
}

fn func_1() -> Struct_1 {
    var var_0 = 1u | _wgslsmith_clamp_u32(~(~45974u) >> (u_input.b % 32u), 0u, _wgslsmith_mod_u32(1u, ~(~69067u)));
    let var_1 = !all(vec4<bool>(!(u_input.a.x != 4294967295u), all(vec3<bool>(true, true, false)) && func_2(vec2<u32>(u_input.b, 4294967295u), Struct_1(u_input.a.x, 4294967295u, 17174u, true, -686f)), true, all(vec3<bool>(true, true, false)) && false));
    let var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-419f, 196f, 1000f), vec3<f32>(-1000f, 855f, -779f), var_1)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(755f, -1274f, -759f) * vec3<f32>(692f, 437f, -514f)))) + vec3<f32>(_wgslsmith_div_f32(2287f, -818f), _wgslsmith_f_op_f32(sign(-1149f)), -715f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(1835f, 295f, 411f) - vec3<f32>(1160f, -1929f, 853f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1000f, -889f, 481f))), vec3<f32>(-542f, 111f, 1000f)) + vec3<f32>(_wgslsmith_f_op_f32(-1443f - -1000f), _wgslsmith_div_f32(1514f, 420f), _wgslsmith_f_op_f32(sign(-1197f)))))));
    let var_3 = ~u_input.a.wzy | _wgslsmith_mult_vec3_u32(select(u_input.a.zwy, vec3<u32>(u_input.b, ~4294967295u, u_input.a.x), select(vec3<bool>(true, true, true), !vec3<bool>(var_1, true, true), vec3<bool>(true, var_1, false))), _wgslsmith_div_vec3_u32(vec3<u32>(38811u | u_input.a.x, 71788u, u_input.a.x | 0u), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a.xxz)));
    var var_4 = var_2.x;
    return Struct_1(_wgslsmith_add_u32(u_input.a.x, 81940u), var_3.x, ~(~u_input.a.x << (~var_3.x % 32u)) << (4294967295u % 32u), !var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2151f * -183f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = Struct_1(~(1u << (_wgslsmith_clamp_u32(_wgslsmith_mod_u32(var_0.a, 1u), ~1u, var_0.a) % 32u)), abs(4294967295u << (_wgslsmith_clamp_u32(4294967295u, u_input.a.x, 54366u) % 32u)), u_input.a.x, any(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(-944f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.e - var_0.e))))));
    var_1 = Struct_1(min(firstLeadingBit(reverseBits(var_0.c)), reverseBits(1u)) & ~6396u, 19117u, 4294967295u, all(vec2<bool>(all(vec2<bool>(false, false)), var_1.d)), -991f);
    var_0 = func_1();
    let var_2 = Struct_1(var_0.a ^ ~(0u ^ _wgslsmith_clamp_u32(58958u, var_0.c, var_1.c)), abs(u_input.a.x), ~0u, any(select(vec2<bool>(true, true), vec2<bool>(var_1.d, true), var_1.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(var_1.e))))));
    var var_3 = !select(select(vec3<bool>(true, any(vec3<bool>(false, false, var_1.d)), !var_0.d), vec3<bool>(true, !var_0.d, var_1.d), !select(vec3<bool>(var_2.d, var_0.d, false), vec3<bool>(var_1.d, true, var_2.d), true)), select(!select(vec3<bool>(true, false, var_2.d), vec3<bool>(var_2.d, var_2.d, false), vec3<bool>(var_2.d, true, false)), !(!vec3<bool>(false, var_2.d, false)), true || var_1.d), !select(func_1().d, true, var_2.d));
    let var_4 = _wgslsmith_div_vec2_f32(vec2<f32>(1000f, _wgslsmith_f_op_f32(-var_1.e)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1278f)), var_1.e));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1236f - 1410f))))), _wgslsmith_f_op_f32(exp2(var_2.e)), var_4.x), abs(max(firstTrailingBit(vec3<i32>(21265i, -2147483647i, 922i) << (vec3<u32>(1u, var_1.b, 15482u) % vec3<u32>(32u))), vec3<i32>(1i, -23165i, _wgslsmith_dot_vec3_i32(vec3<i32>(-9101i, -1i, 17654i), vec3<i32>(-46619i, -2147483647i, 39244i))))));
}

