struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 16>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec2<bool> {
    var var_0 = Struct_3(41624u);
    let var_1 = Struct_1(vec3<u32>(_wgslsmith_add_u32(var_0.a, var_0.a), var_0.a, _wgslsmith_clamp_u32(4294967295u, ~var_0.a, 61037u >> (0u % 32u))) & (~(vec3<u32>(1u, var_0.a, 4294967295u) ^ vec3<u32>(4294967295u, var_0.a, var_0.a)) | vec3<u32>(min(14675u, 7472u), ~4294967295u, var_0.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1164f * -1000f)), 1f), all(select(vec3<bool>(true, true, any(vec4<bool>(true, true, true, false))), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b, var_1.b)))))));
    let var_3 = 29102u ^ var_0.a;
    var var_4 = var_2.x;
    return !vec2<bool>(!all(vec4<bool>(true, var_1.c, false, true)), false);
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_3) -> u32 {
    let var_0 = u_input.c;
    var var_1 = select(vec2<bool>(true, !(!arg_1.c & !arg_1.c)), select(func_3(), vec2<bool>(true, true), _wgslsmith_dot_vec4_u32(vec4<u32>(26207u, arg_2.a, arg_2.a, arg_2.a), vec4<u32>(83407u, 1u, 16401u, arg_2.a)) == 42997u), true);
    var var_2 = all(!(!(!select(vec3<bool>(var_1.x, var_1.x, arg_1.c), vec3<bool>(var_1.x, false, arg_1.c), var_1.x))));
    global0 = array<Struct_3, 16>();
    let var_3 = Struct_2(Struct_1(arg_1.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(146f + -1000f)))), any(!vec2<bool>(true, var_1.x))), arg_1);
    return ~arg_2.a;
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: vec4<f32>, arg_3: f32) -> Struct_1 {
    let var_0 = Struct_1((~(~vec3<u32>(arg_1.a, 0u, arg_1.a)) | _wgslsmith_add_vec3_u32(~vec3<u32>(arg_1.a, arg_1.a, arg_1.a), abs(vec3<u32>(61144u, arg_1.a, 81992u)))) ^ ~_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_1.a, 0u, 39279u), vec3<u32>(arg_1.a, arg_1.a, arg_1.a)), vec3<u32>(arg_1.a, arg_1.a, arg_1.a)), -1710f, select(select(all(vec3<bool>(true, true, true)), true, all(vec4<bool>(false, false, false, true))), true, true) | all(vec3<bool>(true, arg_0 >= -2147483647i, arg_2.x == arg_3)));
    var var_1 = Struct_2(var_0, var_0);
    let var_2 = var_0;
    let var_3 = -949f;
    global0 = array<Struct_3, 16>();
    return var_1.b;
}

fn func_1(arg_0: vec4<bool>) -> Struct_3 {
    var var_0 = func_4(-44048i, global0[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(func_2(vec3<f32>(364f, -1044f, -145f), Struct_1(vec3<u32>(4294967295u, 52517u, 3622u), -2238f, arg_0.x), global0[_wgslsmith_index_u32(51405u, 16u)]), ~1u), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(31140u, 4294967295u), vec2<u32>(8986u, 14717u)), _wgslsmith_dot_vec3_u32(vec3<u32>(29298u, 89989u, 15719u), vec3<u32>(4294967295u, 48860u, 1u))))), 16u)], _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1290f, _wgslsmith_f_op_f32(round(1831f)), _wgslsmith_div_f32(1280f, 892f), -1826f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-244f, 1366f, 1731f, 1505f) - vec4<f32>(1387f, -922f, 156f, 217f)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(398f * 1086f) - _wgslsmith_f_op_f32(trunc(-867f))), 1351f, _wgslsmith_f_op_f32(ceil(1463f)), -1561f), vec4<bool>(func_3().x, true, ~5611u >= select(126708u, 4294967295u, arg_0.x), u_input.a.x <= ~u_input.d))), _wgslsmith_f_op_f32(f32(-1f) * -618f));
    var_0 = Struct_1(var_0.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.b - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b + -1810f))))), !(true | (var_0.b >= var_0.b)) | func_4(-(i32(-1i) * -2147483647i), Struct_3(var_0.a.x), vec4<f32>(_wgslsmith_div_f32(var_0.b, var_0.b), _wgslsmith_f_op_f32(round(var_0.b)), -1280f, _wgslsmith_f_op_f32(var_0.b - var_0.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + var_0.b) * 578f)).c);
    let var_1 = 1928f;
    global0 = array<Struct_3, 16>();
    var var_2 = 1715f;
    return global0[_wgslsmith_index_u32(var_0.a.x, 16u)];
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_3) -> Struct_3 {
    let var_0 = func_4(1i, Struct_3(arg_1.a), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-489f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-2971f, -1155f)) + -1659f), _wgslsmith_f_op_f32(round(251f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1724f) * _wgslsmith_f_op_f32(abs(-2117f)))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-910f)))));
    var var_1 = Struct_2(Struct_1(var_0.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)))), any(vec3<bool>(arg_0.x & arg_0.x, arg_0.x, true))), func_4(-u_input.d, Struct_3(~var_0.a.x ^ abs(16017u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(636f, var_0.b, var_0.b, var_0.b)))), _wgslsmith_f_op_f32(-var_0.b)));
    global0 = array<Struct_3, 16>();
    var var_2 = vec4<f32>(var_0.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.a.b * _wgslsmith_f_op_f32(947f + _wgslsmith_f_op_f32(f32(-1f) * -1527f))))), var_1.a.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_1.a.b, _wgslsmith_f_op_f32(1000f + -102f)), 1858f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.b) + _wgslsmith_f_op_f32(-var_0.b)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) + 1f))));
    let var_3 = Struct_3(~var_1.a.a.x);
    return var_3;
}

fn func_6(arg_0: i32, arg_1: Struct_3) -> Struct_2 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(arg_1.a, arg_1.a, arg_1.a), firstTrailingBit(vec3<u32>(0u, 1u, arg_1.a))), ~(vec3<u32>(arg_1.a, 8090u, arg_1.a) >> (vec3<u32>(arg_1.a, 0u, 9224u) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1143f, -199f, false))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-878f * 1000f) + _wgslsmith_f_op_f32(sign(1678f)))), all(vec4<bool>(true, false, any(vec3<bool>(true, false, true)), true))), Struct_1(vec3<u32>(arg_1.a, ~(~arg_1.a), arg_1.a), _wgslsmith_f_op_f32(-613f + _wgslsmith_f_op_f32(-func_4(-1i, Struct_3(103864u), vec4<f32>(955f, -1000f, 106f, -443f), 281f).b)), false));
    var var_1 = func_4(2147483647i, global0[_wgslsmith_index_u32(~func_2(vec3<f32>(_wgslsmith_f_op_f32(-var_0.b.b), 1224f, _wgslsmith_div_f32(-381f, -603f)), var_0.b, func_1(select(vec4<bool>(var_0.a.c, var_0.b.c, false, var_0.b.c), vec4<bool>(false, false, false, var_0.a.c), vec4<bool>(true, false, true, var_0.a.c)))), 16u)], vec4<f32>(747f, var_0.b.b, var_0.a.b, _wgslsmith_f_op_f32(-var_0.a.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.b.b)) + _wgslsmith_f_op_f32(floor(var_0.a.b)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.b.b - var_0.a.b))), _wgslsmith_f_op_f32(trunc(var_0.a.b)))));
    var var_2 = _wgslsmith_mult_i32(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(_wgslsmith_mod_i32(13281i, 1i), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 30795i), countOneBits(u_input.a.yy))), -8159i ^ max(u_input.a.x, u_input.b), max(2147483647i, -arg_0) | _wgslsmith_sub_i32(1i, u_input.d)), firstTrailingBit(select(min(~u_input.a.x, 41810i), arg_0, var_0.b.c)));
    var var_3 = _wgslsmith_add_u32(4294967295u, var_0.b.a.x);
    var var_4 = Struct_2(func_4(2147483647i, global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_mult_u32(var_0.b.a.x, firstTrailingBit(1u))), 16u)], _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b, 464f, var_1.b, var_0.a.b) * vec4<f32>(var_0.b.b, 1000f, -2027f, var_1.b)), vec4<f32>(var_1.b, -1000f, 608f, var_1.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-2239f, var_0.a.b, -1463f, 1203f))) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.b, 716f, -294f, var_0.a.b)))), select(!vec4<bool>(true, var_1.c, true, false), vec4<bool>(var_1.c, false, true, false), select(vec4<bool>(true, var_0.a.c, false, false), vec4<bool>(true, var_1.c, false, false), vec4<bool>(false, false, false, false))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1000f, -1051f))))), Struct_1(_wgslsmith_sub_vec3_u32(select(vec3<u32>(4869u, 38721u, 48302u), vec3<u32>(var_1.a.x, 4294967295u, 1u), any(vec2<bool>(true, var_0.b.c))), var_0.b.a), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.b), var_1.b, false)), var_0.a.c));
    return Struct_2(var_0.b, func_4(~16140i, global0[_wgslsmith_index_u32((abs(var_1.a.x) ^ var_1.a.x) & _wgslsmith_sub_u32(1u, ~4294967295u), 16u)], _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.b.b, var_0.b.b, -1000f, var_1.b), vec4<f32>(var_0.a.b, var_1.b, 978f, 1750f), false)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.b.b, var_1.b, 908f, 1715f))))), _wgslsmith_f_op_f32(1082f - var_0.b.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -_wgslsmith_mult_i32(u_input.d >> (~29051u % 32u), u_input.b);
    let var_1 = ~vec2<u32>(firstTrailingBit(firstLeadingBit(firstLeadingBit(1u))), firstLeadingBit(50354u));
    var var_2 = func_6(~_wgslsmith_mult_i32(1i ^ u_input.b, u_input.c.x), func_5(vec2<bool>(true, true), func_1(vec4<bool>(true, true, true, true))));
    global0 = array<Struct_3, 16>();
    let var_3 = func_4(-3853i, Struct_3(_wgslsmith_div_u32((var_2.a.a.x << (98761u % 32u)) | 1u, _wgslsmith_dot_vec2_u32(var_1, ~vec2<u32>(73781u, var_2.b.a.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(185f, -1353f, var_2.a.b, -157f), vec4<f32>(var_2.b.b, -549f, -1125f, -1648f), select(vec4<bool>(var_2.b.c, true, true, true), vec4<bool>(false, false, var_2.a.c, true), true))))), _wgslsmith_div_f32(2230f, _wgslsmith_f_op_f32(1409f + var_2.a.b)));
    let var_4 = var_3.a.xy;
    var var_5 = global0[_wgslsmith_index_u32(32495u, 16u)];
    let var_6 = var_2.b.a;
    var_5 = Struct_3(abs(~select(var_2.a.a.x, firstTrailingBit(0u), !var_2.b.c)));
    let x = u_input.a;
    s_output = StorageBuffer(max(~(~abs(36591i)), u_input.b), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-1312f, _wgslsmith_f_op_f32(f32(-1f) * -195f))), var_2.a.b, _wgslsmith_div_i32(-48475i, select(u_input.b, u_input.c.x, true)) > -1i)), firstLeadingBit(~vec3<u32>(~4294967295u, ~var_1.x, ~var_2.a.a.x)), vec4<i32>(abs(u_input.c.x), firstTrailingBit(~max(u_input.d, u_input.b)), 2147483647i, 19242i));
}

