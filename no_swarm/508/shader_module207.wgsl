struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: i32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: bool) -> vec4<f32> {
    var var_0 = abs(u_input.d.zzz);
    let var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(1402f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1177f, -1000f))), -922f, -484f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-113f, 3381f, -1148f, -516f) - vec4<f32>(-1842f, 333f, 304f, 1522f)))))));
    let var_2 = _wgslsmith_f_op_f32(round(var_1.x));
    let var_3 = !(arg_0.x != 0u);
    var var_4 = Struct_2(_wgslsmith_mult_vec3_i32(~vec3<i32>(75858i, var_0.x, 1i), _wgslsmith_div_vec3_i32(vec3<i32>(-u_input.e, _wgslsmith_mod_i32(u_input.b, 2147483647i), 66558i), abs(-u_input.d.zzz))));
    return vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1395f + var_2)) * 417f), -774f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-105f + _wgslsmith_div_f32(var_2, -468f))), var_2);
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: bool) -> f32 {
    var var_0 = Struct_2(select(max(vec3<i32>(u_input.d.x, 49863i, 12996i), u_input.d.yzw), ~u_input.d.yyy, true) ^ vec3<i32>(-arg_1.b.x, -firstTrailingBit(33730i), u_input.e));
    let var_1 = Struct_2(~u_input.d.wxx);
    var_0 = Struct_2(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_1.b.x, u_input.e, _wgslsmith_clamp_i32(1i, -1879i, _wgslsmith_dot_vec4_i32(vec4<i32>(-20879i, u_input.d.x, 7313i, 0i), u_input.d))), vec3<i32>(_wgslsmith_dot_vec2_i32(var_1.a.yy, u_input.d.zy >> (u_input.a % vec2<u32>(32u))), i32(-1i) * -2147483647i, -1i)));
    var_0 = var_1;
    var_0 = var_1;
    return arg_1.c.x;
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: vec2<u32>, arg_3: i32) -> vec3<i32> {
    var var_0 = ~(~(u_input.d.x >> (1u % 32u)) >> (u_input.a.x % 32u));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1963f * -776f))), _wgslsmith_f_op_f32(f32(-1f) * -498f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-432f - -1000f), -597f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1325f, -467f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -379f)), _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec4_f32(func_3(vec2<u32>(u_input.c, 95056u << (arg_2.x % 32u)), select(select(vec4<bool>(arg_0, true, true, arg_0), vec4<bool>(false, arg_0, true, arg_0), false), !vec4<bool>(false, arg_0, arg_0, false), select(vec4<bool>(false, arg_0, arg_0, arg_0), vec4<bool>(arg_0, arg_0, arg_0, true), false)), true | arg_0)), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -731f, -452f, -1075f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(674f, 319f, 1000f, -1739f))), -u_input.d, vec4<f32>(1f, _wgslsmith_f_op_f32(round(183f)), _wgslsmith_f_op_f32(f32(-1f) * -589f), 350f), abs(~u_input.d.x)), all(!select(vec3<bool>(true, arg_0, false), vec3<bool>(false, false, arg_0), arg_0)))), _wgslsmith_div_f32(-1452f, _wgslsmith_f_op_f32(-1971f * _wgslsmith_f_op_f32(sign(-362f)))));
    var var_2 = Struct_2(vec3<i32>(_wgslsmith_mod_i32(~(i32(-1i) * -716i), -2147483647i), arg_3, abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, arg_1, 38748i), vec3<i32>(arg_3, 53256i, u_input.b)))));
    let var_3 = select(vec3<bool>(arg_0, all(!(!vec4<bool>(arg_0, false, arg_0, arg_0))), all(vec2<bool>(select(false, arg_0, true), arg_0))), !(!select(vec3<bool>(false, arg_0, arg_0), vec3<bool>(false, false, false), true)), arg_0);
    var_0 = i32(-1i) * -countOneBits(reverseBits(_wgslsmith_sub_i32(2147483647i, arg_3)));
    return var_2.a;
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(arg_1.a.x * 346f), -2427f, arg_1.a.x, 450f), -arg_1.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c.x, arg_1.a.x, _wgslsmith_f_op_f32(-arg_1.c.x), -1449f)), _wgslsmith_mod_i32(_wgslsmith_mult_i32(arg_1.d, -min(26529i, u_input.d.x)), 10323i));
    var var_1 = Struct_2(_wgslsmith_mod_vec3_i32(~_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(var_0.b.wxz, vec3<i32>(u_input.b, var_0.b.x, -12056i)), func_2(true, u_input.e, vec2<u32>(67408u, arg_0), 37198i)), arg_1.b.yyz));
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-188f, -1022f) + arg_1.a.yy)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.a.wx * var_0.c.wz))))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-621f * 1000f)), -566f), _wgslsmith_div_vec2_f32(vec2<f32>(-975f, arg_1.c.x), vec2<f32>(657f, _wgslsmith_f_op_f32(-arg_1.a.x)))));
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -286f);
    var var_4 = arg_1.b.zzw;
    return arg_1;
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: i32) -> vec4<u32> {
    let var_0 = ~u_input.d;
    var var_1 = arg_0;
    let var_2 = Struct_2(_wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_add_i32(var_1.b.x, reverseBits(-1i)), firstTrailingBit(-50113i >> (u_input.c % 32u)), -var_1.d >> (arg_1 % 32u)), _wgslsmith_div_vec3_i32(var_1.b.yzw, -min(var_0.yyx, var_1.b.zxz))));
    var var_3 = Struct_2(-func_1(~32854u, arg_0).b.zxx);
    let var_4 = arg_0.a.ywx;
    return ~(max(vec4<u32>(arg_1, arg_1, u_input.a.x, 90510u), ~vec4<u32>(u_input.c, 13445u, u_input.a.x, 1u)) ^ select(max(vec4<u32>(arg_1, 9499u, 22029u, 376u), vec4<u32>(arg_1, u_input.a.x, arg_1, 9053u)), ~vec4<u32>(arg_1, u_input.a.x, 4294967295u, 1u), true)) | _wgslsmith_add_vec4_u32(vec4<u32>(select(u_input.a.x, arg_1, false) & firstLeadingBit(u_input.c), 11310u, _wgslsmith_mod_u32(1u, arg_1), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 0u) >> (u_input.a % vec2<u32>(32u)), vec2<u32>(66911u, u_input.a.x))), ~(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 66464u, 4294967295u, 42934u), vec4<u32>(56368u, 0u, 32937u, u_input.a.x)) & (vec4<u32>(0u, u_input.a.x, 42482u, arg_1) ^ vec4<u32>(u_input.c, arg_1, arg_1, arg_1))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec4<f32>(-305f, _wgslsmith_f_op_f32(-419f * 1f), -915f, 1000f), _wgslsmith_clamp_vec4_i32(abs(_wgslsmith_mult_vec4_i32(vec4<i32>(53216i, u_input.e, u_input.b, u_input.d.x), u_input.d)) >> (func_5(func_1(74457u, Struct_1(vec4<f32>(150f, -770f, 1505f, 1000f), u_input.d, vec4<f32>(716f, -2074f, -550f, 2504f), u_input.b)), ~u_input.a.x, u_input.b) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(u_input.d, -vec4<i32>(u_input.d.x, -50463i, 10270i, u_input.e) << ((vec4<u32>(u_input.c, 30568u, 0u, 0u) | vec4<u32>(6060u, u_input.c, u_input.c, u_input.a.x)) % vec4<u32>(32u))), vec4<i32>(1i, func_2(true, firstTrailingBit(10190i), u_input.a & vec2<u32>(4294967295u, 57056u), u_input.d.x ^ 1i).x, 36414i, 1i)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-536f, -1684f, 309f, -778f), vec4<f32>(-500f, -419f, 311f, -106f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 234f, -486f, -313f)), vec4<bool>(true, false, true, false)))))), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(u_input.d.wyy, u_input.d.wxy), 57979i & u_input.d.x));
    var var_1 = select(vec4<bool>(_wgslsmith_f_op_f32(710f + _wgslsmith_f_op_f32(floor(394f))) <= 1634f, true, u_input.c != abs(u_input.a.x), all(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(false, false), vec2<bool>(true, true)))), select(vec4<bool>(true, true, true, true), select(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), true), !select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false)), true), true), select(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), true), any(vec3<bool>(false, true, true))), select(vec4<bool>(true, false, false, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false)), true), true), vec4<bool>(all(vec2<bool>(false, true)) && true, all(vec2<bool>(true, true)), true, any(vec4<bool>(true, true, true, true))), all(vec4<bool>(true, true, true, true))));
    var_1 = select(!(!vec4<bool>(all(vec4<bool>(false, var_1.x, false, var_1.x)), !var_1.x, all(vec4<bool>(var_1.x, false, var_1.x, var_1.x)), true)), !vec4<bool>(17267u > _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 4294967295u, u_input.c, u_input.c), vec4<u32>(4294967295u, u_input.c, 0u, u_input.a.x)), false, var_1.x, true), select(vec4<bool>(true, all(vec3<bool>(true, true, var_1.x)), ~u_input.a.x > _wgslsmith_sub_u32(u_input.c, u_input.c), true), select(select(!vec4<bool>(var_1.x, true, var_1.x, true), vec4<bool>(false, false, false, false), var_1.x), select(select(vec4<bool>(false, true, var_1.x, var_1.x), vec4<bool>(true, false, var_1.x, var_1.x), false), select(vec4<bool>(var_1.x, var_1.x, true, false), vec4<bool>(true, var_1.x, true, var_1.x), var_1.x), select(vec4<bool>(false, false, var_1.x, var_1.x), vec4<bool>(var_1.x, true, var_1.x, false), vec4<bool>(var_1.x, true, var_1.x, var_1.x))), !var_1.x), select(!vec4<bool>(var_1.x, true, var_1.x, false), select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), !vec4<bool>(false, var_1.x, true, false), all(var_1.zwx)), vec4<bool>(var_1.x, false, false, var_1.x))));
    let var_2 = var_1.yyx;
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec4_f32(func_3(~vec2<u32>(_wgslsmith_mult_u32(u_input.c, u_input.a.x), _wgslsmith_add_u32(12787u, u_input.a.x)), vec4<bool>(!(!var_2.x), var_2.x, var_1.x, !all(var_2.xx)), var_1.x)).xz - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1667f), var_0.a.x), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(var_0.c.xz, var_0.c.yz), _wgslsmith_f_op_vec2_f32(-var_0.a.ww)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec4_f32(func_3(vec2<u32>(39591u, 47602u), vec4<bool>(false, var_2.x, true, false), false)).zy, _wgslsmith_f_op_vec2_f32(exp2(var_0.c.xz))), select(vec2<bool>(true, true), vec2<bool>(var_1.x, var_1.x), false))))));
    var var_4 = reverseBits(~firstTrailingBit(~(~vec4<u32>(u_input.a.x, 59441u, u_input.a.x, u_input.a.x))));
    var var_5 = _wgslsmith_f_op_f32(-var_0.c.x);
    let var_6 = Struct_2(_wgslsmith_clamp_vec3_i32(vec3<i32>(func_1(~1u, func_1(var_4.x, Struct_1(vec4<f32>(var_0.a.x, var_0.a.x, -334f, var_0.a.x), vec4<i32>(u_input.d.x, var_0.b.x, -2147483647i, -1i), var_0.a, 0i))).d, u_input.d.x, _wgslsmith_add_i32(u_input.e, firstLeadingBit(90363i))), _wgslsmith_add_vec3_i32(~reverseBits(vec3<i32>(2147483647i, u_input.b, 0i)), vec3<i32>(firstTrailingBit(var_0.b.x), min(48544i, 1i), -u_input.e)), var_0.b.zww));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_0.c.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))), -1777f)), var_0.b.xww, var_0.b.x);
}

