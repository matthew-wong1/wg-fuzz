struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: bool,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<bool>,
}

struct Struct_3 {
    a: u32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: bool) -> f32 {
    let var_0 = ~((22854u ^ ~(~u_input.a.x)) ^ firstTrailingBit(_wgslsmith_div_u32(1u, u_input.a.x)));
    let var_1 = ~(vec2<u32>(var_0, 71532u) >> (select(vec2<u32>(u_input.d.x, firstLeadingBit(2778u)), vec2<u32>(129860u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 17063u), u_input.d)), !arg_0 | true) % vec2<u32>(32u)));
    let var_2 = Struct_1(!vec3<bool>(!(var_1.x > u_input.a.x), arg_0, false), firstTrailingBit(vec4<i32>(-u_input.b, u_input.c, u_input.c, u_input.b)), !any(!select(vec4<bool>(false, arg_0, false, arg_0), vec4<bool>(false, false, false, arg_0), vec4<bool>(arg_0, false, true, false))), 1690f, u_input.c);
    var var_3 = Struct_3(~(~30982u), firstLeadingBit(vec3<i32>(-5126i, _wgslsmith_sub_i32(var_2.b.x, min(var_2.e, -1i)), reverseBits(var_2.e))));
    var_3 = Struct_3(_wgslsmith_sub_u32(4294967295u, 1u) << (_wgslsmith_sub_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 39915u), u_input.a.xzw << (vec3<u32>(var_3.a, 42469u, var_0) % vec3<u32>(32u)))) % 32u), vec3<i32>(-12380i, var_2.e, 2147483647i));
    return -484f;
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: bool) -> Struct_2 {
    var var_0 = _wgslsmith_div_f32(-378f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(true))))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-410f, -621f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -534f)))))));
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(select(-1211f, 991f, arg_0.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -997f), -1000f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-1485f)))), -755f)), !vec4<bool>(arg_2, any(!vec2<bool>(true, arg_2)), !(!arg_0.x), false));
    let var_2 = firstTrailingBit(vec4<u32>(4294967295u, arg_1.a, ~arg_1.a | 97u, 54716u));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(var_1.a.x, var_1.a.x, abs(arg_1.a) < ~var_2.x)))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1123f) - -674f) * _wgslsmith_f_op_f32(625f * _wgslsmith_f_op_f32(-var_1.a.x)))));
    return Struct_2(var_1.a, var_1.b);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: f32) -> bool {
    let var_0 = u_input.c;
    var var_1 = Struct_3(_wgslsmith_div_u32(arg_0.x, abs(~5791u)), -vec3<i32>(u_input.c, i32(-1i) * -4640i, -1i));
    let var_2 = arg_1;
    let var_3 = func_2(!select(vec2<bool>(true, true), !vec2<bool>(arg_1.b.x, arg_1.b.x), all(select(vec4<bool>(true, false, true, true), vec4<bool>(var_2.b.x, arg_1.b.x, false, var_2.b.x), false))), Struct_3(4294967295u, vec3<i32>(u_input.c, -1i, _wgslsmith_dot_vec3_i32(var_1.b, -vec3<i32>(-74200i, -10297i, -9171i)))), firstTrailingBit(var_1.a) < ~0u).b.x;
    return var_2.b.x;
}

fn func_5(arg_0: f32, arg_1: bool) -> vec4<i32> {
    var var_0 = 1u;
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, 452f, arg_0)) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0, -2060f, arg_0, -850f))))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * _wgslsmith_f_op_f32(select(-444f, -304f, false))), -559f, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(488f - 1629f)))), select(select(!vec4<bool>(false, arg_1, arg_1, arg_1), vec4<bool>(!arg_1, true, true, u_input.d.x >= 4294967295u), true), vec4<bool>(4294967295u < u_input.d.x, all(vec4<bool>(false, false, arg_1, arg_1)), all(vec4<bool>(false, arg_1, true, arg_1)), false), u_input.c <= -_wgslsmith_div_i32(u_input.c, u_input.b)));
    let var_2 = func_2(var_1.b.zw, Struct_3(u_input.a.x, max(reverseBits(vec3<i32>(-2147483647i, u_input.b, u_input.b) >> (vec3<u32>(75553u, 35499u, u_input.d.x) % vec3<u32>(32u))), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.b, 0i), vec3<i32>(-20191i, u_input.c, 2147483647i)), ~2147483647i, u_input.b))), firstTrailingBit(-18746i) != u_input.c);
    var_1 = var_2;
    let var_3 = vec4<bool>(0i >= _wgslsmith_div_i32(2147483647i, countOneBits(reverseBits(u_input.c))), true, var_1.b.x, var_1.b.x);
    return -vec4<i32>(i32(-1i) * -firstLeadingBit(u_input.b), u_input.c, u_input.c, u_input.c);
}

fn func_1(arg_0: Struct_3, arg_1: i32) -> f32 {
    var var_0 = countOneBits(arg_1);
    var var_1 = countOneBits(arg_1) ^ -(-(~arg_1) >> ((~arg_0.a & ~85056u) % 32u));
    let var_2 = vec2<bool>(any(vec2<bool>(true, true)), !(!(arg_0.a < 1u)));
    let var_3 = -440f;
    let var_4 = Struct_1(select(select(vec3<bool>(var_2.x, -9189i > arg_0.b.x, var_2.x | var_2.x), select(vec3<bool>(var_2.x, var_2.x, false), !vec3<bool>(var_2.x, var_2.x, false), select(vec3<bool>(false, var_2.x, true), vec3<bool>(true, false, var_2.x), var_2.x)), vec3<bool>(true, var_2.x, all(vec4<bool>(true, true, var_2.x, var_2.x)))), vec3<bool>(var_2.x, !var_2.x, all(var_2)), !(!var_2.x)), ((vec4<i32>(arg_0.b.x, u_input.c, 59386i, 0i) & reverseBits(vec4<i32>(0i, 29497i, u_input.b, -11947i))) << (u_input.a % vec4<u32>(32u))) ^ func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_3)) + -247f), func_4(select(u_input.a, u_input.a, vec4<bool>(var_2.x, var_2.x, true, true)), func_2(var_2, Struct_3(46660u, arg_0.b), var_2.x), var_3)), !func_2(select(!var_2, vec2<bool>(false, false), var_2.x), Struct_3(~arg_0.a, arg_0.b), 1000f > _wgslsmith_f_op_f32(sign(-1000f))).b.x, 1999f, firstTrailingBit(firstTrailingBit(i32(-1i) * -37082i)));
    return _wgslsmith_f_op_f32(-var_3);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true || all(vec3<bool>(true, any(vec2<bool>(true, false)), -1391f != _wgslsmith_f_op_f32(func_1(Struct_3(u_input.a.x, vec3<i32>(u_input.b, 0i, u_input.b)), -30527i))));
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1000f)), 1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-160f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-570f)))), -1207f) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1760f), _wgslsmith_f_op_f32(-552f * -307f), _wgslsmith_f_op_f32(func_3(true))) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-796f, -879f, -1243f)))), vec3<f32>(_wgslsmith_f_op_f32(floor(-489f)), _wgslsmith_f_op_f32(f32(-1f) * -1653f), _wgslsmith_f_op_f32(1463f * 181f))));
    var var_2 = ~select(~abs(vec4<i32>(0i, 2147483647i, -2147483647i, -13830i)), select(vec4<i32>(_wgslsmith_mod_i32(14479i, -1i), 10506i, _wgslsmith_mult_i32(u_input.b, u_input.c), 43269i), -(~vec4<i32>(-655i, u_input.b, u_input.b, -28093i)), any(vec3<bool>(true, true, false))), u_input.d.x != u_input.d.x);
    let var_3 = select(u_input.a, vec4<u32>(u_input.d.x, 4294967295u, u_input.d.x, 1u) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 38800u, ~44514u, 1u), u_input.a) % vec4<u32>(32u)), func_2(!select(func_2(vec2<bool>(false, false), Struct_3(u_input.d.x, vec3<i32>(var_2.x, var_2.x, var_2.x)), false).b.yy, func_2(vec2<bool>(false, true), Struct_3(u_input.a.x, vec3<i32>(1i, -1i, 0i)), false).b.yx, func_2(vec2<bool>(false, false), Struct_3(u_input.a.x, vec3<i32>(var_2.x, 13161i, 1495i)), true).b.yy), Struct_3(min(u_input.d.x ^ u_input.a.x, min(u_input.d.x, u_input.d.x)), var_2.wwz >> (_wgslsmith_mod_vec3_u32(u_input.a.yyz, vec3<u32>(42313u, u_input.d.x, 0u)) % vec3<u32>(32u))), !any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true)))).b);
    let var_4 = Struct_1(vec3<bool>(true, true, true), -(~vec4<i32>(func_5(-1884f, false).x, -var_2.x, u_input.c, _wgslsmith_dot_vec2_i32(vec2<i32>(-16101i, var_2.x), vec2<i32>(var_2.x, 0i)))), true, -539f, u_input.c);
    var_0 = (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-912f * _wgslsmith_f_op_f32(-var_1.x)) + 161f) == -1000f) && all(!func_2(var_4.a.zx, Struct_3(u_input.d.x, vec3<i32>(32067i, var_4.e, 45872i)), false).b);
    var var_5 = _wgslsmith_f_op_vec3_f32(vec3<f32>(418f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-735f, -685f)), 575f) * vec3<f32>(var_4.d, -375f, _wgslsmith_f_op_f32(var_1.x * var_1.x)));
    var_0 = func_2(!var_4.a.yx, Struct_3(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.d, vec2<u32>(110971u, var_3.x), ~vec2<u32>(4294967295u, 4294967295u)), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(19900u, 0u), vec2<u32>(var_3.x, 0u), vec2<u32>(u_input.a.x, var_3.x))), vec3<i32>(~(~var_4.b.x), firstTrailingBit(2147483647i), 0i)), all(select(vec3<bool>(!var_4.c, !var_4.c, var_4.c & true), var_4.a, var_4.a))).b.x;
    let x = u_input.a;
    s_output = StorageBuffer((_wgslsmith_add_i32(func_5(-420f, true).x, ~0i) >> (u_input.d.x % 32u)) | 5670i, vec4<i32>(func_5(554f, var_4.c).x, var_2.x, var_4.b.x, ~(_wgslsmith_add_i32(var_2.x, 2147483647i) >> (~var_3.x % 32u))), vec3<u32>(u_input.d.x, abs(u_input.a.x), min(~var_3.x, 1u)), max(reverseBits(u_input.d.x), 0u), _wgslsmith_div_u32(~(u_input.a.x << (16095u % 32u)), _wgslsmith_dot_vec2_u32(countOneBits(u_input.a.wx) & u_input.a.xw, vec2<u32>(1u, 1u))));
}

