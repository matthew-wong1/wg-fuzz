struct Struct_1 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec2<i32>,
    d: vec3<f32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<bool>, arg_2: i32) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-414f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), -894f), true))) + arg_0.x);
}

fn func_3() -> vec2<i32> {
    let var_0 = u_input.b;
    let var_1 = u_input.a.x;
    let var_2 = Struct_2(Struct_1(vec4<f32>(1030f, _wgslsmith_f_op_f32(step(-710f, _wgslsmith_f_op_f32(round(871f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -331f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(319f)), 987f, all(vec3<bool>(false, true, true))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(322f, -677f, -111f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1051f, 1549f, 1424f)) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1000f, -573f, -1651f), vec3<f32>(-1128f, 1602f, 1201f))))), _wgslsmith_div_vec2_i32(reverseBits(max(u_input.a, vec2<i32>(-8448i, u_input.a.x))), -(u_input.a >> (vec2<u32>(59012u, var_0) % vec2<u32>(32u)))), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(537f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1234f), _wgslsmith_f_op_f32(257f + 2200f)), _wgslsmith_f_op_f32(483f - _wgslsmith_f_op_f32(min(-1000f, 1245f)))), _wgslsmith_add_vec2_u32(~(~vec2<u32>(u_input.b, 27982u)), ~min(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, 1u)))));
    let var_3 = vec4<i32>(u_input.a.x, ~u_input.a.x, var_1 | (var_1 & _wgslsmith_sub_i32(-1i, 1i)), 0i);
    var var_4 = _wgslsmith_mod_vec3_u32(~(~vec3<u32>(var_2.a.e.x, 1u, var_0) | _wgslsmith_sub_vec3_u32(vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(24449u, var_2.a.e.x, 14205u))) ^ ~firstLeadingBit(~vec3<u32>(4294967295u, var_0, var_0)), vec3<u32>(39963u, ~firstTrailingBit(u_input.b) & 1u, 63716u));
    return -_wgslsmith_mult_vec2_i32(vec2<i32>(-_wgslsmith_div_i32(var_3.x, 0i), var_2.a.c.x), ~u_input.a);
}

fn func_1(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: Struct_3) -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(exp2(arg_3.d.a)), vec3<f32>(_wgslsmith_f_op_f32(func_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a.b.x, 103f) + arg_1.a.a.yx), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a.a.x, arg_1.a.a.x))), !(!vec4<bool>(false, arg_2.x, false, arg_2.x)), -firstTrailingBit(arg_1.a.c.x))), _wgslsmith_f_op_f32(f32(-1f) * -704f), -1491f), reverseBits(func_3()), vec3<f32>(569f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1162f, arg_1.a.b.x))), 978f), _wgslsmith_mult_vec2_u32(vec2<u32>(max(arg_3.d.e.x, arg_0.b.e.x), _wgslsmith_div_u32(arg_1.a.e.x, u_input.b)), arg_1.a.e) & vec2<u32>(7275u >> (countOneBits(45333u) % 32u), firstLeadingBit(_wgslsmith_div_u32(u_input.b, 59382u))));
    let var_1 = arg_0;
    var var_2 = all(vec4<bool>(arg_2.x, false, _wgslsmith_mult_u32(arg_1.a.e.x, var_0.e.x) > var_1.d.e.x, false));
    let var_3 = _wgslsmith_f_op_f32(-1f);
    var_2 = all(!vec4<bool>(all(select(vec3<bool>(arg_2.x, arg_2.x, false), vec3<bool>(true, arg_2.x, arg_2.x), arg_2.x)), any(arg_2), !all(vec2<bool>(arg_2.x, true)), !select(arg_2.x, arg_2.x, arg_2.x)));
    return _wgslsmith_add_u32(arg_3.a.e.x, _wgslsmith_mult_u32(arg_1.a.e.x, 4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(-1i, -58799i, _wgslsmith_div_i32(u_input.a.x, u_input.a.x)), vec3<i32>(u_input.a.x, 1i, 35800i)), u_input.a.x);
    var_0 = u_input.a.x;
    var var_1 = _wgslsmith_f_op_f32(469f * 139f);
    var var_2 = vec3<u32>(51781u, ~1u, 4294967295u);
    var var_3 = _wgslsmith_div_vec4_u32(reverseBits(~(~vec4<u32>(48803u, 4294967295u, var_2.x, u_input.b)) ^ _wgslsmith_mult_vec4_u32(~vec4<u32>(4294967295u, 4294967295u, 4294967295u, var_2.x), ~vec4<u32>(46792u, var_2.x, 1u, u_input.b))), ~vec4<u32>(1u, ~u_input.b, 36851u, min(50997u, 12156u)) >> (select(_wgslsmith_mult_vec4_u32(vec4<u32>(var_2.x, 4294967295u, var_2.x, 49537u), vec4<u32>(u_input.b, var_2.x, var_2.x, 0u)) | (vec4<u32>(9465u, var_2.x, var_2.x, u_input.b) | vec4<u32>(0u, var_2.x, u_input.b, 0u)), _wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(var_2.x, u_input.b, var_2.x, 1u)), vec4<u32>(u_input.b, u_input.b, 96963u, 4294967295u) >> (vec4<u32>(23360u, var_2.x, 4294967295u, 3644u) % vec4<u32>(32u)), ~vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.b)), vec4<bool>(true, true, true, true)) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(max(0i, 1i), 0i, -(~u_input.a.x), (u_input.a.x & 42680i) << (var_3.x % 32u)), -1i, u_input.a.x, ~vec4<u32>(9344u, 40949u, 1u, var_3.x), _wgslsmith_sub_u32(1u << (~func_1(Struct_3(Struct_1(vec4<f32>(493f, -372f, -247f, 395f), vec3<f32>(-1160f, 393f, 2095f), u_input.a, vec3<f32>(1000f, -1000f, 967f), vec2<u32>(var_3.x, var_3.x)), Struct_1(vec4<f32>(186f, 1663f, -1642f, -716f), vec3<f32>(1288f, -1141f, 115f), vec2<i32>(u_input.a.x, u_input.a.x), vec3<f32>(-1458f, -1246f, -420f), vec2<u32>(24558u, var_3.x)), Struct_1(vec4<f32>(1000f, 832f, -539f, -715f), vec3<f32>(-2202f, -469f, 2161f), vec2<i32>(u_input.a.x, -2147483647i), vec3<f32>(-645f, -575f, 1560f), vec2<u32>(var_2.x, 10946u)), Struct_1(vec4<f32>(-639f, -1000f, 2707f, -305f), vec3<f32>(-122f, 1046f, -1000f), vec2<i32>(-32809i, u_input.a.x), vec3<f32>(429f, -772f, -675f), var_3.wx), u_input.a.x), Struct_2(Struct_1(vec4<f32>(1022f, 2947f, 1325f, -395f), vec3<f32>(-1780f, -841f, 408f), u_input.a, vec3<f32>(-463f, 724f, 303f), var_2.yy)), vec2<bool>(false, true), Struct_3(Struct_1(vec4<f32>(1244f, 331f, -349f, -841f), vec3<f32>(611f, 801f, 1000f), u_input.a, vec3<f32>(152f, -1845f, -1082f), var_2.xx), Struct_1(vec4<f32>(-1333f, 1124f, 1221f, -306f), vec3<f32>(637f, 1407f, 2982f), vec2<i32>(u_input.a.x, u_input.a.x), vec3<f32>(1367f, -537f, 349f), var_2.yy), Struct_1(vec4<f32>(-250f, -1352f, 651f, -2039f), vec3<f32>(954f, -1390f, -1148f), u_input.a, vec3<f32>(377f, -716f, 951f), var_2.yx), Struct_1(vec4<f32>(-323f, 221f, -836f, 120f), vec3<f32>(557f, -793f, 208f), u_input.a, vec3<f32>(788f, 1043f, 279f), vec2<u32>(var_3.x, var_3.x)), -5122i)) % 32u), u_input.b));
}

