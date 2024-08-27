struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: bool,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_1() -> vec3<u32> {
    return vec3<u32>(u_input.b, u_input.c, 4677u);
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec2<u32>) -> f32 {
    global0 = 0u | arg_2.x;
    var var_0 = 0i >> (_wgslsmith_mod_u32(~(~countOneBits(arg_1.b)), arg_1.b) % 32u);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1457f + -592f) + 1000f) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(597f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-574f)))));
    var var_2 = Struct_2(arg_1, abs(arg_1.b), var_1, false, -(~(~_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, arg_0.x, arg_0.x, -1i), vec4<i32>(7959i, -1i, 0i, 50468i)))));
    var var_3 = abs(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(u_input.b << (var_2.b % 32u), select(0u, u_input.c, false)), arg_1.c.x, func_1().x), arg_1.c));
    return -707f;
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: bool) -> u32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(2258f)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(419f - 938f)))))), _wgslsmith_f_op_f32(func_3(_wgslsmith_mult_vec3_i32(-_wgslsmith_mod_vec3_i32(vec3<i32>(4732i, 9770i, u_input.a), vec3<i32>(u_input.d, u_input.a, u_input.d)), -abs(vec3<i32>(u_input.d, u_input.d, -21675i))), Struct_1(vec2<i32>(-18628i, -1i), u_input.b ^ 1463u, (vec3<u32>(0u, 10295u, u_input.b) ^ vec3<u32>(0u, 5644u, 0u)) << ((vec3<u32>(1u, u_input.b, u_input.b) << (vec3<u32>(72689u, u_input.c, u_input.c) % vec3<u32>(32u))) % vec3<u32>(32u)), reverseBits(u_input.b), -(~u_input.d)), vec2<u32>(1u, 1u))), 1397f, 1255f);
    var var_1 = Struct_1(-vec2<i32>(~u_input.a, 2147483647i << (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(105595u, 0u)) % 32u)), _wgslsmith_sub_u32(firstTrailingBit(u_input.b), _wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.c ^ 4294967295u, _wgslsmith_add_u32(u_input.c, u_input.c)), abs(_wgslsmith_sub_u32(u_input.c, u_input.b)))), ~(~(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.c, 91366u), vec3<u32>(u_input.c, u_input.b, 4294967295u)) | vec3<u32>(u_input.c, u_input.c, u_input.b))), ~_wgslsmith_mod_u32(u_input.c, reverseBits(u_input.b) & 1u), u_input.d | u_input.d);
    let var_2 = Struct_2(Struct_1(var_1.a, u_input.c >> (~(u_input.c | var_1.b) % 32u), min(_wgslsmith_div_vec3_u32(min(var_1.c, vec3<u32>(0u, u_input.c, 0u)), ~var_1.c), _wgslsmith_clamp_vec3_u32(~vec3<u32>(var_1.d, 94819u, 32518u), vec3<u32>(var_1.c.x, 14559u, 39239u), _wgslsmith_clamp_vec3_u32(var_1.c, var_1.c, var_1.c))), _wgslsmith_sub_u32(1u, func_1().x), u_input.a), _wgslsmith_sub_u32(~11348u, 3224u), arg_2, all(select(!select(vec4<bool>(true, false, false, arg_0), vec4<bool>(false, arg_1, arg_1, true), vec4<bool>(false, arg_2, arg_1, false)), !select(vec4<bool>(true, arg_1, arg_2, arg_2), vec4<bool>(false, false, true, arg_0), vec4<bool>(true, arg_1, arg_1, arg_0)), !select(vec4<bool>(arg_2, arg_1, false, arg_1), vec4<bool>(arg_0, arg_1, arg_0, arg_2), arg_1))), ~(-abs(4840i)));
    let var_3 = vec2<bool>(!all(!vec3<bool>(arg_1, arg_0, arg_2)), any(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(var_2.d, false)), select(vec2<bool>(true, false), !vec2<bool>(arg_1, arg_1), any(vec4<bool>(arg_2, true, false, arg_0))), all(!vec3<bool>(false, arg_1, var_2.c)))));
    let var_4 = Struct_1(countOneBits(-vec2<i32>(-2147483647i, 1i)), abs(93080u), min(reverseBits(firstTrailingBit(abs(vec3<u32>(u_input.b, u_input.b, var_1.c.x)))), ~_wgslsmith_sub_vec3_u32(min(var_2.a.c, vec3<u32>(u_input.b, 8256u, 1u)), var_1.c)), _wgslsmith_dot_vec2_u32(~vec2<u32>(_wgslsmith_mod_u32(57775u, u_input.c), 1u), _wgslsmith_sub_vec2_u32(vec2<u32>(~4294967295u, 1u), ~_wgslsmith_sub_vec2_u32(var_2.a.c.zy, vec2<u32>(var_1.b, var_1.d)))), -var_2.e);
    return countOneBits(var_1.c.x);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = Struct_2(arg_0, _wgslsmith_mult_u32(abs(1u), arg_1.c.x), true, true, -u_input.a);
    var var_1 = !select(select(select(select(vec4<bool>(true, var_0.d, false, true), vec4<bool>(false, false, var_0.c, var_0.d), vec4<bool>(true, true, true, var_0.c)), !vec4<bool>(var_0.c, true, var_0.c, var_0.d), vec4<bool>(true, var_0.d, false, var_0.c)), !vec4<bool>(var_0.c, false, true, var_0.d), vec4<bool>(true, false, !var_0.d, true)), select(!vec4<bool>(var_0.d, var_0.d, false, var_0.d), select(select(vec4<bool>(false, true, var_0.d, true), vec4<bool>(true, var_0.d, false, true), var_0.c), select(vec4<bool>(true, var_0.c, var_0.d, var_0.c), vec4<bool>(false, var_0.d, true, false), false), !vec4<bool>(var_0.c, true, var_0.c, false)), vec4<bool>(false, var_0.d, false, var_0.d)), select(!select(vec4<bool>(false, var_0.d, var_0.c, var_0.d), vec4<bool>(false, true, var_0.c, var_0.c), true), select(vec4<bool>(var_0.d, var_0.c, var_0.d, var_0.c), select(vec4<bool>(false, false, var_0.d, true), vec4<bool>(var_0.c, var_0.c, var_0.d, var_0.d), var_0.c), vec4<bool>(true, true, var_0.d, true)), any(!vec2<bool>(true, var_0.c))));
    let var_2 = _wgslsmith_div_f32(1319f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-525f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -719f) * _wgslsmith_f_op_f32(f32(-1f) * -659f)), _wgslsmith_f_op_f32(ceil(-724f))))));
    let var_3 = arg_1;
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, _wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(-1209f - -108f)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-385f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2, 1177f) * _wgslsmith_f_op_f32(floor(var_2))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -905f)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, var_2, -2783f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(824f, 1223f, var_2) + vec3<f32>(1973f, -623f, -421f))))));
    return Struct_1(arg_1.a, ~(min(4294967295u, firstLeadingBit(u_input.b)) ^ ~_wgslsmith_mult_u32(arg_0.c.x, 4294967295u)), abs(var_0.a.c), _wgslsmith_clamp_u32(~75856u, 26227u, firstTrailingBit(var_0.a.c.x)), var_3.a.x);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> vec4<u32> {
    var var_0 = !select(vec3<bool>(true, true, true), select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), vec3<bool>(true, false, false), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true))), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true));
    let var_1 = 110f;
    var var_2 = vec2<bool>(false, select(4294967295u >= arg_1.b, false, true));
    var var_3 = var_1;
    let var_4 = vec4<i32>(arg_1.e, _wgslsmith_mod_i32(~arg_1.e, 1i), 21372i, ~countOneBits(arg_0.a.x));
    return ~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.b, abs(~arg_1.d), func_1().x, func_4(func_4(arg_1, arg_0), func_4(arg_0, arg_0)).c.x), ~(~vec4<u32>(0u, 4294967295u, 8836u, 1u)) & ~vec4<u32>(arg_0.d, 0u, arg_1.b, arg_0.d));
}

fn func_6(arg_0: vec4<u32>) -> Struct_2 {
    let var_0 = Struct_1(vec2<i32>(0i, u_input.a), 56625u, select(arg_0.zwz, select(vec3<u32>(arg_0.x, 0u, arg_0.x), arg_0.xzy, true) >> (arg_0.xwz % vec3<u32>(32u)), vec3<bool>(true, true, true)), _wgslsmith_sub_u32(u_input.c, _wgslsmith_mod_u32((arg_0.x >> (u_input.b % 32u)) >> (_wgslsmith_mod_u32(u_input.c, u_input.b) % 32u), u_input.b)), 0i);
    global0 = _wgslsmith_div_u32(~func_4(var_0, Struct_1(var_0.a, 81071u, vec3<u32>(arg_0.x, 88742u, 4294967295u), var_0.b, var_0.a.x)).d << (u_input.c % 32u), reverseBits(select(u_input.b, 1u, true)));
    var var_1 = false;
    var var_2 = !vec4<bool>(-25086i >= ~_wgslsmith_mod_i32(u_input.d, var_0.a.x), true, !(!all(vec2<bool>(true, false))), true);
    var var_3 = arg_0;
    return Struct_2(Struct_1(_wgslsmith_add_vec2_i32(reverseBits(var_0.a), vec2<i32>(1i, u_input.d >> (0u % 32u))), 16286u, var_3.wwy, abs(var_3.x), _wgslsmith_add_i32(0i, max(var_0.a.x, -2147483647i))), arg_0.x, all(!select(!vec3<bool>(true, true, var_2.x), select(vec3<bool>(var_2.x, false, var_2.x), vec3<bool>(false, false, var_2.x), false), vec3<bool>(var_2.x, var_2.x, true))), true, u_input.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(func_4(Struct_1(vec2<i32>(11358i, -20417i), 32599u >> (u_input.b % 32u), func_1(), func_2(true, false, true), 0i), Struct_1(vec2<i32>(u_input.d, u_input.d), ~1u, vec3<u32>(u_input.c, 1u, u_input.c) >> (vec3<u32>(u_input.b, 15454u, 62430u) % vec3<u32>(32u)), ~4294967295u, ~51824i)), func_4(Struct_1(vec2<i32>(u_input.d, -1i) >> (vec2<u32>(23978u, 1u) % vec2<u32>(32u)), 50757u, vec3<u32>(u_input.b, u_input.c, 39911u), u_input.c, -1i), Struct_1(select(vec2<i32>(-44934i, u_input.d), vec2<i32>(-1i, -1i), true), u_input.c, ~vec3<u32>(u_input.c, u_input.b, 1u), ~u_input.c, _wgslsmith_dot_vec3_i32(vec3<i32>(14270i, u_input.d, -1i), vec3<i32>(u_input.d, 8182i, u_input.a))))));
    let var_1 = _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(select(abs(vec4<i32>(u_input.a, var_0.e, var_0.e, 23238i)), reverseBits(max(vec4<i32>(1i, var_0.e, u_input.d, var_0.a.e), vec4<i32>(-2147483647i, var_0.e, var_0.e, var_0.e))), !vec4<bool>(var_0.d, false, false, var_0.c)), (abs(vec4<i32>(-11108i, -1i, var_0.e, 31009i)) & (vec4<i32>(var_0.a.a.x, var_0.e, u_input.a, -50903i) >> (vec4<u32>(u_input.c, u_input.c, u_input.c, var_0.a.c.x) % vec4<u32>(32u)))) | vec4<i32>(var_0.a.e >> (var_0.b % 32u), u_input.a | u_input.d, ~(-2147483647i), abs(var_0.e))), -vec4<i32>(func_6(~vec4<u32>(u_input.b, u_input.c, 54556u, 14845u)).e, 2147483647i, 0i, u_input.a));
    let var_2 = vec2<bool>(all(vec2<bool>(var_0.c, true)), !var_0.c);
    var var_3 = vec4<bool>(var_2.x, true, var_0.d, true);
    let var_4 = var_0.a;
    let var_5 = !vec2<bool>(true, select(all(vec4<bool>(false, false, var_3.x, false)), false, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32((_wgslsmith_mod_vec4_u32(vec4<u32>(38076u, 40298u, u_input.c, 91403u), vec4<u32>(var_0.b, u_input.b, u_input.b, var_0.a.b)) | vec4<u32>(var_4.b, 1u, 3529u, 1u)) << (vec4<u32>(min(var_4.c.x, 68605u), ~46368u, 77288u, func_5(var_0.a, Struct_1(var_4.a, 4294967295u, var_0.a.c, u_input.b, 43003i)).x) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_sub_u32(4294967295u, 8801u), ~26346u, max(1u, 24950u), var_4.c.x) >> (vec4<u32>(_wgslsmith_div_u32(var_0.a.b, var_4.d), var_4.b, func_6(vec4<u32>(var_4.c.x, u_input.c, 1u, 4294967295u)).a.d, 4294967295u) % vec4<u32>(32u))), min(_wgslsmith_div_u32(select(0u, func_5(Struct_1(var_0.a.a, 1u, vec3<u32>(22369u, 1u, 1u), 59244u, 2147483647i), var_0.a).x, var_5.x), ~(~0u)), ~_wgslsmith_div_u32(~u_input.c, ~4294967295u)));
}

