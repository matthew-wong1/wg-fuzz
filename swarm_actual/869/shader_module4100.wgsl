struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    let var_0 = ~34462u;
    let var_1 = !(!any(arg_0.a.yy));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-294f)))), 1563f)), Struct_1(!select(arg_0.a, !arg_0.a, !vec3<bool>(arg_0.a.x, var_1, false)), var_1, ~(~(~13225i))), !vec4<bool>(var_1, (arg_0.c | 1i) > u_input.c, var_1, false));
    var var_3 = ~_wgslsmith_mod_i32(_wgslsmith_div_i32(~8930i, _wgslsmith_mult_i32(-1i, 2147483647i)), arg_0.c) >= 23274i;
    var var_4 = vec3<bool>(all(select(!select(vec3<bool>(var_1, var_2.b.b, var_2.c.x), arg_0.a, true), !vec3<bool>(var_2.c.x, false, true), true)), arg_0.b, false);
    return !(!select(!vec3<bool>(var_2.c.x, arg_0.b, var_4.x), !select(arg_0.a, vec3<bool>(true, true, true), true), true));
}

fn func_2(arg_0: vec3<f32>, arg_1: f32, arg_2: u32) -> Struct_1 {
    let var_0 = _wgslsmith_dot_vec3_i32(firstLeadingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(0i, u_input.c), _wgslsmith_clamp_i32(-2147483647i, 2147483647i, u_input.c), abs(u_input.c)), _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, u_input.c, u_input.c), vec3<i32>(u_input.c, u_input.c, 0i)), vec3<i32>(-29608i, u_input.c, u_input.c) & vec3<i32>(u_input.c, -2147483647i, u_input.c)))), vec3<i32>(2147483647i, -2147483647i, (firstLeadingBit(0i) & -u_input.c) >> (12514u % 32u)));
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(1755f, arg_1, select(0u, u_input.a, true) > _wgslsmith_add_u32(u_input.b.x, u_input.a)))))));
    var_1 = _wgslsmith_f_op_f32(-arg_1);
    var_1 = arg_0.x;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1756f, arg_1)) - _wgslsmith_f_op_f32(max(arg_0.x, arg_0.x))), arg_0.x) - 241f);
    return Struct_1(!func_3(Struct_1(vec3<bool>(true, true, true), true, _wgslsmith_sub_i32(-39282i, 0i))), true & (_wgslsmith_div_i32(var_0, var_0 & 35183i) > u_input.c), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0, u_input.c, u_input.c), vec3<i32>(17165i, var_0, 2147483647i) >> (vec3<u32>(31834u, 33960u, arg_2) % vec3<u32>(32u))), -1i, firstTrailingBit(select(0i, 28049i, false)), var_0), vec4<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.c, 48686i), vec2<i32>(0i, var_0)), 20446i, 2147483647i, var_0 >> ((arg_2 & arg_2) % 32u))));
}

fn func_1(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: u32, arg_3: Struct_1) -> vec4<f32> {
    var var_0 = func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1128f), arg_0.a, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-440f, -1014f)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-166f, _wgslsmith_f_op_f32(select(-763f, -171f, arg_3.a.x)), _wgslsmith_f_op_f32(-arg_0.a)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1445f, -324f, arg_0.a))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a, -567f)), 1u);
    var var_1 = vec2<i32>(-1i) * -(~(-vec2<i32>(arg_0.b.c, -41896i)));
    var var_2 = Struct_1(select(!var_0.a, var_0.a, true), false, 1i);
    var_0 = func_2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-901f, arg_0.a, -835f) - vec3<f32>(-232f, 629f, arg_0.a)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1126f - -187f) * _wgslsmith_f_op_f32(sign(arg_0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -442f)), arg_0.a))), _wgslsmith_f_op_f32(-277f + _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_0.a, _wgslsmith_f_op_f32(-461f * 873f))))), ~firstLeadingBit(_wgslsmith_mult_u32(countOneBits(0u), arg_2)));
    var_0 = func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1685f, arg_0.a, arg_0.a))) - vec3<f32>(_wgslsmith_div_f32(-584f, 1000f), _wgslsmith_div_f32(-533f, arg_0.a), -909f))), arg_0.a, u_input.b.x);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(386f, arg_0.a, _wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_div_f32(-215f, arg_0.a)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, arg_0.a, -762f, 492f))))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.a, -271f, arg_0.a, -519f)))))));
}

fn func_4(arg_0: vec4<f32>) -> i32 {
    let var_0 = Struct_1(vec3<bool>(true, 1u >= u_input.b.x, false), false, u_input.c);
    var var_1 = ~vec4<i32>(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(531f, 762f, arg_0.x))), _wgslsmith_f_op_f32(-arg_0.x), ~u_input.b.x).c, ~2147483647i, func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec4_f32(func_1(Struct_2(-836f, var_0, vec4<bool>(var_0.a.x, false, false, true)), vec3<u32>(u_input.b.x, 0u, 4294967295u), u_input.b.x, Struct_1(vec3<bool>(var_0.b, false, true), true, u_input.c))).wwx), -123f, 46103u).c, _wgslsmith_clamp_i32(-1i, select(var_0.c, 9425i, true), _wgslsmith_mult_i32(2147483647i, u_input.c)) >> ((_wgslsmith_add_u32(492u, u_input.b.x) >> (~u_input.a % 32u)) % 32u));
    let var_2 = min(~u_input.c, var_1.x);
    var var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2909f - _wgslsmith_f_op_f32(f32(-1f) * -214f))), var_0, !(!(!(!vec4<bool>(var_0.b, true, true, true)))));
    var var_4 = Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(arg_0.x, -941f, var_3.c.x)))), func_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_3.a, -1000f, var_3.a))), _wgslsmith_f_op_vec3_f32(-arg_0.yxy)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-526f * _wgslsmith_f_op_f32(round(arg_0.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -178f) * 960f)), _wgslsmith_div_u32(~u_input.b.x, u_input.b.x) >> (_wgslsmith_clamp_u32(u_input.b.x, 0u, ~21138u) % 32u)), select(select(vec4<bool>(!var_0.b, !var_3.c.x, all(var_3.c), var_3.c.x), vec4<bool>(any(vec3<bool>(var_0.b, var_3.c.x, true)), var_0.b, all(vec2<bool>(true, true)), true), var_3.c), select(var_3.c, var_3.c, select(var_3.c, var_3.c, !var_0.b)), !var_0.b));
    return reverseBits(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(71094i, var_2, -1i, 25690i), vec4<i32>(var_4.b.c, var_0.c, -1i, 0i)) | (vec4<i32>(var_3.b.c, 14753i, -1i, 1i) | reverseBits(vec4<i32>(-2147483647i, var_3.b.c, var_2, var_0.c))), vec4<i32>(55706i, ~(var_1.x >> (u_input.b.x % 32u)), 33066i, 1i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1757f, -218f, -2335f, 1138f)), _wgslsmith_f_op_vec4_f32(func_1(Struct_2(218f, Struct_1(vec3<bool>(false, true, true), true, u_input.c), vec4<bool>(false, true, false, true)), vec3<u32>(u_input.b.x, 32499u, 34769u), 1u, Struct_1(vec3<bool>(true, true, true), false, 62906i)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-277f, -1029f, -1000f, 193f), vec4<f32>(-1086f, 1259f, -1208f, 1019f))) + vec4<f32>(1092f, -994f, -612f, -551f)))));
    let var_1 = _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-453f, 1189f)) + 1288f));
    var var_2 = 65618i;
    var var_3 = Struct_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1661f, var_1)) * _wgslsmith_div_f32(-110f, -267f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_1)), -759f), select(all(vec2<bool>(false, true)), false, all(vec3<bool>(false, false, false))))))), func_2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_1, var_1))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-540f, var_1, -516f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, var_1, 104f) + vec3<f32>(var_1, var_1, var_1))))), _wgslsmith_f_op_f32(f32(-1f) * -112f), _wgslsmith_clamp_u32(u_input.a, min(u_input.a, u_input.b.x), u_input.a)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec2<bool>(true, true))), select(vec4<bool>(true, any(vec2<bool>(true, false)), false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)));
    var_2 = u_input.c;
    var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1405f) + _wgslsmith_f_op_f32(f32(-1f) * -1026f)))), func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(423f + var_1), _wgslsmith_f_op_f32(-var_3.a), _wgslsmith_f_op_f32(max(-1000f, -876f)))), _wgslsmith_f_op_f32(-var_3.a), ~firstTrailingBit(4294967295u)), var_3.c);
    var var_4 = -1000f;
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec4<i32>(1i, var_3.b.c, 17925i, 1i)) | -max(select(vec4<i32>(2147483647i, var_3.b.c, -24332i, u_input.c), vec4<i32>(var_0, -5976i, u_input.c, var_3.b.c), var_3.c), vec4<i32>(0i, var_3.b.c, 2147483647i, var_0) >> (vec4<u32>(u_input.a, 1u, u_input.b.x, u_input.a) % vec4<u32>(32u))), (~vec4<u32>(u_input.b.x, 1550u, 4079u, 37707u) << (((vec4<u32>(u_input.a, u_input.b.x, 24670u, 4294967295u) | vec4<u32>(4294967295u, 1u, u_input.a, 0u)) << (abs(vec4<u32>(u_input.b.x, 0u, u_input.b.x, 7857u)) % vec4<u32>(32u))) % vec4<u32>(32u))) >> ((vec4<u32>(u_input.b.x, 63270u, 70839u, 1u) & firstLeadingBit(vec4<u32>(49408u, u_input.a, 78447u, u_input.b.x) ^ vec4<u32>(u_input.b.x, 1u, u_input.b.x, u_input.a))) % vec4<u32>(32u)));
}

