struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: vec2<u32>,
    d: vec3<bool>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<u32>,
    c: f32,
    d: vec3<f32>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_3, 5> = array<Struct_3, 5>(Struct_3(2147483647i, vec2<u32>(43798u, 32143u), -1320f, vec3<f32>(-1145f, -2671f, -347f), -774f), Struct_3(18319i, vec2<u32>(49939u, 1u), 911f, vec3<f32>(-1563f, -609f, -1388f), -533f), Struct_3(i32(-2147483648), vec2<u32>(1u, 18337u), -379f, vec3<f32>(-256f, 1225f, -1000f), -1339f), Struct_3(-20182i, vec2<u32>(1u, 4294967295u), 1589f, vec3<f32>(2266f, -1835f, -744f), 1814f), Struct_3(-36915i, vec2<u32>(7915u, 1u), 882f, vec3<f32>(-783f, -692f, 138f), -1578f));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<u32>, arg_1: bool) -> bool {
    let var_0 = Struct_1(!vec4<bool>(!(!arg_1), true, arg_1, all(vec3<bool>(false, arg_1, false))), arg_0.x, vec2<u32>(~(~_wgslsmith_clamp_u32(u_input.d, 30162u, 0u)), ~_wgslsmith_mod_u32(~4294967295u, firstTrailingBit(1u))), select(select(vec3<bool>(all(vec2<bool>(true, false)), false, false), !select(vec3<bool>(arg_1, true, false), vec3<bool>(false, false, arg_1), vec3<bool>(true, true, false)), select(!vec3<bool>(true, arg_1, arg_1), vec3<bool>(true, arg_1, true), !arg_1)), vec3<bool>(true, true, true), select(select(!vec3<bool>(arg_1, true, true), select(vec3<bool>(false, arg_1, arg_1), vec3<bool>(false, true, false), vec3<bool>(true, arg_1, true)), !vec3<bool>(arg_1, false, arg_1)), select(vec3<bool>(true, arg_1, arg_1), !vec3<bool>(true, arg_1, true), select(vec3<bool>(arg_1, true, true), vec3<bool>(false, arg_1, false), arg_1)), !vec3<bool>(arg_1, true, false))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-671f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-2650f, -1000f))), -832f, _wgslsmith_f_op_f32(-209f + _wgslsmith_f_op_f32(-641f * -1516f))) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(step(-1101f, -1472f)), 1198f, _wgslsmith_div_f32(-211f, 1000f), -1243f)))));
    global0 = any(var_0.a.yw);
    global0 = _wgslsmith_f_op_f32(step(-799f, 213f)) == _wgslsmith_f_op_f32(var_0.e.x * -1408f);
    global0 = arg_1;
    let var_1 = Struct_3(-1598i, select(_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, 12u), vec2<u32>(var_0.b, 58399u)), arg_0.yy) & (firstTrailingBit(vec2<u32>(29846u, 19418u)) << (reverseBits(var_0.c) % vec2<u32>(32u))), _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(var_0.c, vec2<u32>(4294967295u, var_0.b)), select(var_0.c, vec2<u32>(u_input.b, 49395u), vec2<bool>(true, var_0.a.x)), var_0.c), abs(~var_0.c)), var_0.d.zz), var_0.e.x, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.e.x, var_0.e.x)), _wgslsmith_f_op_f32(trunc(-907f)), _wgslsmith_f_op_f32(var_0.e.x - var_0.e.x)))), _wgslsmith_f_op_f32(-var_0.e.x));
    return false;
}

fn func_4(arg_0: Struct_2) -> vec3<bool> {
    global1 = array<Struct_3, 5>();
    global0 = any(arg_0.c.a.xw);
    let var_0 = arg_0.c;
    var var_1 = vec4<i32>(_wgslsmith_sub_i32(-u_input.e.x, -(u_input.e.x ^ u_input.e.x)) << ((0u ^ max(_wgslsmith_mult_u32(u_input.d, 0u), ~1u)) % 32u), min(select(u_input.e.x, u_input.a, !arg_0.c.d.x), -2147483647i), -firstTrailingBit(~(-18466i)), i32(-1i) * -_wgslsmith_dot_vec4_i32(u_input.e, vec4<i32>(43811i, u_input.c, 89998i, 0i) | vec4<i32>(-2147483647i, u_input.c, u_input.a, 24145i)));
    let var_2 = var_0.e.wxz;
    return vec3<bool>(true, any(vec4<bool>(func_3(vec3<u32>(u_input.d, var_0.c.x, var_0.c.x), !arg_0.c.d.x), all(select(vec4<bool>(false, arg_0.c.d.x, false, arg_0.c.d.x), arg_0.c.a, vec4<bool>(var_0.a.x, arg_0.c.a.x, false, true))), false, true)), var_0.a.x);
}

fn func_2(arg_0: Struct_3, arg_1: u32) -> Struct_1 {
    var var_0 = Struct_3(~u_input.c, arg_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d.x) - _wgslsmith_f_op_f32(f32(-1f) * -1628f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c, arg_0.c, arg_0.d.x) * arg_0.d) + vec3<f32>(arg_0.e, -133f, arg_0.c)) - vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2034f), arg_0.d.x), _wgslsmith_div_f32(arg_0.d.x, _wgslsmith_f_op_f32(arg_0.d.x - arg_0.c)), -116f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(406f, 1000f))))), arg_0.c)));
    let var_1 = func_4(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(341f, -459f)), var_0.d.x)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(arg_0.d - _wgslsmith_f_op_vec3_f32(-var_0.d)), var_0.d)), Struct_1(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), func_3(vec3<u32>(u_input.d, arg_1, arg_1), false)), reverseBits(arg_0.b.x), vec2<u32>(~arg_1, 129062u), vec3<bool>(true, true, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.e, var_0.d.x, 1593f, -134f))))));
    let var_2 = !var_1.zx;
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_0.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-230f, arg_0.c)) * _wgslsmith_f_op_f32(-1000f + var_0.d.x))), arg_0.d.x, _wgslsmith_f_op_f32(max(var_0.c, -1000f))));
    let var_4 = Struct_3(59571i, _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.b.x & 0u, countOneBits(var_0.b.x)), ~(~vec2<u32>(u_input.b, 1u))), select(vec2<u32>(var_0.b.x | arg_0.b.x, 46477u), abs(_wgslsmith_mod_vec2_u32(var_0.b, vec2<u32>(11113u, 1u))), vec2<bool>(all(var_1), 1940f < var_3.x))), _wgslsmith_f_op_f32(abs(arg_0.c)), vec3<f32>(_wgslsmith_div_f32(-720f, _wgslsmith_f_op_f32(min(var_0.d.x, _wgslsmith_f_op_f32(898f * arg_0.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(990f - arg_0.c) - _wgslsmith_f_op_f32(var_0.d.x - arg_0.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-775f, var_3.x))) - var_0.e)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(331f)) + -761f) * arg_0.d.x));
    return Struct_1(!vec4<bool>(func_3(vec3<u32>(41869u, 23429u, arg_1), var_1.x) && !var_1.x, u_input.b >= 0u, !(!var_1.x), var_2.x), _wgslsmith_dot_vec3_u32(~vec3<u32>(~0u, 1u, var_0.b.x), firstTrailingBit(~vec3<u32>(17879u, 10866u, 60267u))), ~vec2<u32>(1u, ~firstLeadingBit(26158u)), var_1, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-301f, -1177f, var_3.x, var_3.x)))))));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_2) -> i32 {
    global1 = array<Struct_3, 5>();
    var var_0 = Struct_3(0i, arg_0.c, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)))))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-622f, _wgslsmith_f_op_f32(max(721f, arg_2.b.x)), 1100f) - vec3<f32>(arg_1.x, -1332f, -1224f)))), arg_1.x);
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -506f)));
    global0 = all(vec3<bool>(any(vec4<bool>(arg_2.c.d.x, true, arg_0.d.x, false)), !arg_2.c.a.x, arg_0.d.x)) | true;
    let var_2 = firstLeadingBit(u_input.c);
    return _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(0i, u_input.a, u_input.c, 0i) | vec4<i32>(2147483647i, -2147483647i, -2147483647i, u_input.e.x)) << (abs(countOneBits(select(vec4<u32>(u_input.b, arg_2.c.c.x, 34248u, 12909u), vec4<u32>(4294967295u, arg_0.c.x, u_input.d, var_0.b.x), arg_2.c.a.x))) % vec4<u32>(32u)), select(min(vec4<i32>(u_input.a, var_0.a, i32(-1i) * -9236i, 1i), vec4<i32>(-1i) * -vec4<i32>(13226i, -1i, 4432i, var_2)), vec4<i32>(firstTrailingBit(abs(-2021i)), var_2 | _wgslsmith_mod_i32(-2147483647i, var_2), -(~var_0.a), -18273i), func_2(global1[_wgslsmith_index_u32(arg_0.c.x, 5u)], _wgslsmith_mod_u32(~var_0.b.x, var_0.b.x)).a));
}

fn func_1(arg_0: Struct_3, arg_1: f32, arg_2: i32, arg_3: f32) -> f32 {
    global0 = (-1i != reverseBits(func_5(func_2(global1[_wgslsmith_index_u32(4294967295u, 5u)], arg_0.b.x), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_1, -1314f, 1935f))), Struct_2(-1440f, vec3<f32>(2265f, -422f, -1097f), Struct_1(vec4<bool>(false, true, true, false), arg_0.b.x, vec2<u32>(13094u, 33434u), vec3<bool>(false, true, true), vec4<f32>(1182f, arg_0.c, -1000f, arg_1)))))) && !(true != !(arg_3 < 262f));
    let var_0 = Struct_3(abs(_wgslsmith_mult_i32(min(arg_0.a, arg_2), -arg_2 & (arg_0.a & u_input.a))), vec2<u32>(_wgslsmith_mod_u32(~_wgslsmith_sub_u32(56154u, 6621u), ~_wgslsmith_mod_u32(4294967295u, arg_0.b.x)), u_input.d), 413f, arg_0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.d.x))));
    let var_1 = Struct_3(-62110i >> (~arg_0.b.x % 32u), select(~var_0.b & _wgslsmith_mod_vec2_u32(countOneBits(vec2<u32>(arg_0.b.x, var_0.b.x)), arg_0.b), ~firstLeadingBit(~vec2<u32>(arg_0.b.x, 38223u)), vec2<bool>(true, true)), 157f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_3, 477f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -1048f)), arg_1);
    var var_2 = u_input.b;
    var var_3 = func_2(Struct_3(~(1i ^ abs(u_input.e.x)), arg_0.b, _wgslsmith_f_op_f32(-var_0.c), var_0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_3))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3)))), ~1u);
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(1538f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_mult_i32(506i, u_input.c);
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1280f, _wgslsmith_f_op_f32(func_1(Struct_3(-33479i, vec2<u32>(u_input.b, u_input.d), 670f, vec3<f32>(1837f, -770f, 1283f), -1191f), 922f, 5927i, -968f))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -563f) * vec2<f32>(228f, -1947f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1000f, -277f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(163f, 306f)))) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(749f, -916f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(652f, -1372f))))))));
    let var_2 = u_input.e.xz;
    let var_3 = 353f;
    let var_4 = func_2(Struct_3(var_2.x, ~firstLeadingBit(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, u_input.d), vec2<u32>(u_input.d, 55421u))), -167f, vec3<f32>(_wgslsmith_f_op_f32(220f + -122f), func_2(Struct_3(var_2.x, vec2<u32>(0u, 4294967295u), var_1.x, vec3<f32>(var_3, var_3, 202f), -283f), u_input.b).e.x, -1000f), -1902f), _wgslsmith_mult_u32(~u_input.d, firstLeadingBit(~1u)));
    let var_5 = 21389i;
    var var_6 = _wgslsmith_div_vec3_i32(u_input.e.xyz, u_input.e.xxx);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1414f));
}

