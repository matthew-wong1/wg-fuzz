struct Struct_1 {
    a: f32,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec4<f32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-748f)) - 1f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1843f + -465f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -736f))))));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(1360f, -1000f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -385f)))));
}

fn func_4(arg_0: f32, arg_1: vec4<u32>) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(396f, -1161f, !select(false, false, false))), -1871f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0)))))) * vec3<f32>(-136f, _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(-195f - _wgslsmith_f_op_f32(round(arg_0)))), arg_0));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, -667f))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(246f, var_0.x, -629f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1341f, arg_0, -1100f)))));
    let var_1 = -17906i;
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1277f, var_0.x, 707f))) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0, arg_0, 497f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, -1000f, -308f), vec3<f32>(-1076f, -1706f, arg_0)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -1515f, var_0.x) * vec3<f32>(arg_0, arg_0, 1000f)))))));
    var var_2 = -_wgslsmith_div_i32(u_input.b, ~_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(-2147483647i, var_1, var_1), -u_input.d.x, u_input.d.x));
    return u_input.e;
}

fn func_2(arg_0: i32) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(select(1107f, 579f, true));
    var var_1 = select(~(func_4(_wgslsmith_f_op_f32(func_3()), ~u_input.e) ^ vec4<u32>(61349u, 9265u, 0u, min(u_input.a, u_input.a))), ~(~func_4(2267f, u_input.e) | vec4<u32>(u_input.a, 10939u, 4294967295u, u_input.e.x)), !(true | select(true, any(vec4<bool>(true, true, true, false)), false)));
    var_0 = -1361f;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-1f), -reverseBits(-45607i) == ~arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-723f)) - _wgslsmith_f_op_f32(f32(-1f) * -675f)) * _wgslsmith_f_op_f32(f32(-1f) * -1673f))));
    let var_3 = Struct_1(var_2.a, true, var_2.c);
    return !(!(!vec3<bool>(true, all(vec2<bool>(var_3.b, false)), var_3.b)));
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    var var_0 = u_input.e;
    var var_1 = 47957u;
    var_0 = vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.e.x, _wgslsmith_dot_vec4_u32(u_input.e, vec4<u32>(4294967295u, 21854u, var_0.x, 1u))) | func_4(-254f, vec4<u32>(u_input.e.x, var_0.x, u_input.e.x, var_0.x)).x, u_input.a), firstLeadingBit(54110u ^ var_0.x), 21330u, ~var_0.x);
    let var_2 = Struct_2(_wgslsmith_sub_vec2_i32(firstLeadingBit(firstTrailingBit(vec2<i32>(-2147483647i, 2147483647i))), ~_wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(u_input.d.x, u_input.c)), -u_input.d)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -460f), _wgslsmith_div_f32(201f, arg_2))), arg_2, -549f)));
    var_0 = _wgslsmith_mod_vec4_u32(u_input.e, ~u_input.e);
    return Struct_1(994f, false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_2)) + arg_1.c)));
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2, arg_3: vec4<f32>) -> vec2<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -806f), !arg_0.b, -445f);
    var var_1 = func_5(vec4<bool>(all(func_2(-2147483647i ^ arg_2.a.x)), all(vec3<bool>(!arg_0.b, false, 16789i <= arg_2.a.x)), arg_0.b, !(_wgslsmith_f_op_f32(ceil(arg_0.a)) >= _wgslsmith_f_op_f32(arg_2.b.x + arg_0.a))), var_0, _wgslsmith_f_op_f32(func_3()));
    let var_2 = arg_2;
    let var_3 = var_2;
    var var_4 = u_input.e;
    return vec2<bool>(func_2(reverseBits(var_2.a.x)).x, false);
}

fn func_6(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: vec2<f32>) -> i32 {
    let var_0 = arg_1;
    var var_1 = _wgslsmith_mult_vec3_u32(~abs(u_input.e.zww), arg_0.xzz);
    let var_2 = var_0;
    var var_3 = _wgslsmith_mod_vec3_u32(~_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(u_input.e.xyy, vec3<u32>(32844u, arg_0.x, 8232u) << (vec3<u32>(72300u, 0u, 42542u) % vec3<u32>(32u))), _wgslsmith_add_vec3_u32(arg_0.wwy, arg_0.zzx)), vec3<u32>(u_input.e.x, countOneBits(arg_0.x), max(var_1.x | ~15517u, 33213u)));
    var_1 = vec3<u32>(arg_0.x, ~var_3.x & min(u_input.e.x, abs(131362u)), var_3.x);
    return _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.c, reverseBits(firstLeadingBit(~u_input.c)), reverseBits(-4436i)), vec4<i32>(u_input.c, _wgslsmith_mult_i32(i32(-1i) * -u_input.c, firstLeadingBit(2147483647i)), select(_wgslsmith_add_i32(_wgslsmith_div_i32(u_input.d.x, -2147483647i), -16134i), u_input.d.x, func_2(0i).x), _wgslsmith_clamp_i32(_wgslsmith_div_i32(-u_input.b, u_input.b), u_input.b, reverseBits(~29836i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -340f;
    var var_1 = -firstLeadingBit(firstTrailingBit(-_wgslsmith_mult_vec4_i32(vec4<i32>(-43930i, 1i, u_input.b, u_input.b), vec4<i32>(u_input.c, u_input.d.x, -32000i, 0i))));
    var_1 = _wgslsmith_add_vec4_i32(min(~(~vec4<i32>(8081i, 27634i, u_input.b, u_input.b)), _wgslsmith_add_vec4_i32(countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(23875i, u_input.b, 10464i, -1i), vec4<i32>(var_1.x, 52125i, u_input.d.x, 23769i))), ~(~vec4<i32>(-54351i, u_input.d.x, -1509i, u_input.d.x)))), -(~(~select(vec4<i32>(var_1.x, u_input.b, var_1.x, -2404i), vec4<i32>(var_1.x, var_1.x, u_input.b, var_1.x), false))));
    var_1 = max(vec4<i32>(u_input.b, ~1i, _wgslsmith_mult_i32(func_6(~vec4<u32>(91484u, 0u, 12007u, 52339u), Struct_1(-319f, true, 1000f), func_1(Struct_1(463f, true, 800f), 156f, Struct_2(vec2<i32>(0i, var_1.x), vec4<f32>(-504f, 202f, 456f, 113f)), vec4<f32>(-767f, -1975f, -1000f, 1000f)), vec2<f32>(890f, -1738f)), 1i), 7323i), vec4<i32>(var_1.x, _wgslsmith_add_i32(_wgslsmith_mult_i32(firstTrailingBit(-1i), countOneBits(var_1.x)), 17590i), max(_wgslsmith_mult_i32(min(-3926i, 1i), _wgslsmith_mult_i32(var_1.x, 17146i)), -1i), u_input.d.x));
    var_1 = _wgslsmith_div_vec4_i32(vec4<i32>(1202i, -var_1.x >> (((1u >> (u_input.a % 32u)) ^ countOneBits(u_input.e.x)) % 32u), -12807i, var_1.x), vec4<i32>(var_1.x, var_1.x >> (0u % 32u), -1i, var_1.x));
    var var_2 = u_input.e.ywx;
    let x = u_input.a;
    s_output = StorageBuffer(~0u, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1259f))), _wgslsmith_f_op_f32(1680f - -143f), -1000f), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1547f), 1295f, 1f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-720f, -1000f, -347f) * vec3<f32>(1000f, 846f, -920f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-311f, 1454f, -1841f) + vec3<f32>(820f, 513f, -167f)))), !vec3<bool>(all(vec3<bool>(true, false, true)), true, all(vec2<bool>(false, true))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-696f, 706f, -408f, -818f) + vec4<f32>(-833f, -1980f, -911f, 1751f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, -721f, 914f, 305f), vec4<f32>(-110f, 1404f, -1000f, -700f))))), _wgslsmith_f_op_f32(f32(-1f) * -686f), -26385i << (abs(0u) % 32u));
}

