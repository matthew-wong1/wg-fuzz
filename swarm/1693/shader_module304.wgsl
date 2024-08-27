struct Struct_1 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec2<f32>,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: f32, arg_1: vec4<u32>, arg_2: u32) -> vec4<f32> {
    let var_0 = vec3<bool>(true || (u_input.d.x <= ~(u_input.e.x & u_input.d.x)), true, true);
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(481f - 458f), arg_0, arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-212f * _wgslsmith_f_op_f32(min(-545f, arg_0))))));
}

fn func_3() -> bool {
    let var_0 = abs(firstTrailingBit(firstLeadingBit(~vec4<u32>(0u, u_input.b.x, 0u, u_input.b.x)))) ^ ~max((vec4<u32>(7787u, u_input.b.x, u_input.b.x, u_input.b.x) << (vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) % vec4<u32>(32u))) | vec4<u32>(u_input.b.x, 20461u, u_input.b.x, 1u), ~vec4<u32>(4294967295u, u_input.b.x, 15825u, 72842u));
    let var_1 = _wgslsmith_clamp_vec2_i32(~countOneBits(max(vec2<i32>(u_input.c, -4384i), reverseBits(u_input.e))), vec2<i32>(~_wgslsmith_clamp_i32(0i, 1i, _wgslsmith_mult_i32(u_input.e.x, u_input.a.x)), _wgslsmith_add_i32(-9317i, firstLeadingBit(u_input.d.x) | u_input.c)), -_wgslsmith_clamp_vec2_i32(reverseBits(select(u_input.d.yz, vec2<i32>(-2147483647i, -1i), vec2<bool>(true, true))), _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.a.xw, vec2<i32>(u_input.d.x, u_input.c)), vec2<i32>(-2147483647i, 2147483647i) ^ u_input.a.wy, -u_input.e), select(~vec2<i32>(u_input.a.x, u_input.e.x), vec2<i32>(u_input.e.x, -10777i), u_input.b.x <= 1u)));
    let var_2 = firstTrailingBit(_wgslsmith_mult_u32(countOneBits(_wgslsmith_dot_vec3_u32(u_input.b, u_input.b)), var_0.x));
    let var_3 = all(select(select(vec2<bool>(all(vec3<bool>(false, true, false)), false), vec2<bool>(true, true), vec2<bool>(u_input.d.x >= -1i, false)), vec2<bool>(true, true), false));
    let var_4 = u_input.c;
    return 1347f < _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-493f - 1265f), 1613f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-473f)), _wgslsmith_f_op_f32(trunc(-971f)))));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<bool>) -> u32 {
    let var_0 = Struct_3(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e.x, -1i & u_input.e.x, ~1i, _wgslsmith_mod_i32(2147483647i, arg_0.a.x)), vec4<i32>(arg_0.a.x & arg_0.a.x, ~1i, -15790i, min(arg_0.a.x, u_input.c))), -1i, reverseBits(0i)));
    let var_1 = Struct_1(-1166f, ~reverseBits(countOneBits(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, 21694i), arg_0.a.yz))));
    let var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-110f, -293f, var_1.a)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.a, var_1.a, var_1.a))) + vec3<f32>(var_1.a, var_1.a, 1000f)) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.a, -631f, var_1.a), vec3<f32>(var_1.a, var_1.a, -867f)), vec3<f32>(var_1.a, var_1.a, var_1.a))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a * var_1.a) * _wgslsmith_f_op_f32(1182f * 945f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a + var_1.a)), _wgslsmith_f_op_f32(min(-1599f, _wgslsmith_f_op_f32(-503f - -436f)))))));
    let var_3 = min(~(~1u), _wgslsmith_dot_vec4_u32(~abs(select(vec4<u32>(u_input.b.x, 5423u, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, 1370u, u_input.b.x), vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x))), firstTrailingBit(countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(45645u, 79406u, 12464u, u_input.b.x), vec4<u32>(0u, u_input.b.x, 44340u, u_input.b.x))))));
    let var_4 = reverseBits(var_1.b << (~vec2<u32>(var_3 & 21497u, abs(1u)) % vec2<u32>(32u)));
    return _wgslsmith_sub_u32(99548u, ~4294967295u);
}

fn func_1() -> u32 {
    let var_0 = ~u_input.e.x;
    var var_1 = vec4<f32>(-570f, 428f, 378f, 1f);
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(162f, var_1.x)), firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.b.x, 5059u, u_input.b.x), vec4<u32>(21729u, 4294967295u, 1u, 34776u))), ~select(u_input.b.x, 55842u, true))), vec4<f32>(-873f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x - -1194f), 515f), _wgslsmith_f_op_f32(step(-1270f, _wgslsmith_f_op_f32(f32(-1f) * -1084f))), _wgslsmith_f_op_f32(f32(-1f) * -1011f))));
    var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(var_1.x, vec4<u32>(_wgslsmith_div_u32(~4294967295u, 1u), 0u, u_input.b.x, ~(~u_input.b.x)), func_4(Struct_3(vec3<i32>(u_input.e.x, u_input.c, 0i)), vec2<bool>(func_3(), true)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(725f, -1000f, -163f, -154f) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(869f, var_1.x, var_1.x, -575f)))) + vec4<f32>(-1878f, _wgslsmith_f_op_f32(select(var_1.x, var_1.x, true)), -744f, var_1.x)) + vec4<f32>(var_1.x, _wgslsmith_f_op_f32(max(672f, _wgslsmith_f_op_f32(trunc(2066f)))), _wgslsmith_f_op_f32(abs(var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.x)) * var_1.x))));
    var var_2 = 49918i;
    return ~(28477u >> (u_input.b.x % 32u));
}

fn func_5(arg_0: u32, arg_1: i32, arg_2: vec4<f32>) -> Struct_1 {
    var var_0 = vec2<bool>(any(vec2<bool>(_wgslsmith_f_op_f32(select(arg_2.x, -528f, false)) >= _wgslsmith_f_op_f32(floor(-267f)), all(vec3<bool>(true, false, false)))), (true || (_wgslsmith_clamp_i32(u_input.e.x, u_input.a.x, u_input.e.x) < u_input.c)) && (!all(vec3<bool>(false, true, true)) | true));
    let var_1 = abs(-select(firstTrailingBit(vec2<i32>(-11522i, 16471i)), vec2<i32>(arg_1, arg_1) | vec2<i32>(u_input.e.x, arg_1), any(vec2<bool>(var_0.x, false)))) >> (select(u_input.b.yy, vec2<u32>(_wgslsmith_mod_u32(7201u, _wgslsmith_clamp_u32(0u, u_input.b.x, u_input.b.x)), _wgslsmith_mult_u32(arg_0, u_input.b.x) >> (1u % 32u)), !select(vec2<bool>(true, var_0.x), vec2<bool>(var_0.x, false), false)) % vec2<u32>(32u));
    let var_2 = -abs(min(i32(-1i) * -2147483647i, _wgslsmith_div_i32(arg_1, -2147483647i)));
    var_0 = vec2<bool>(true, true | func_3());
    var_0 = !(!(!vec2<bool>(var_0.x & var_0.x, false)));
    return Struct_1(-1628f, min(vec2<i32>((var_2 >> (4294967295u % 32u)) ^ var_1.x, var_2), firstTrailingBit(var_1)));
}

fn func_6(arg_0: bool, arg_1: Struct_1, arg_2: Struct_3, arg_3: Struct_2) -> i32 {
    let var_0 = func_5(_wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b.xz), abs(1u)) << (~u_input.b.x % 32u), ~(-1i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_f32(f32(-1f) * -1134f), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, 9922u, 44656u)), u_input.b.x)).x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1295f, -243f) * arg_1.a), arg_1.a, _wgslsmith_f_op_f32(f32(-1f) * -1775f))));
    var var_1 = Struct_2(_wgslsmith_clamp_vec3_i32(~(-vec3<i32>(arg_2.a.x, 6435i, 1i)), -u_input.a.yzw, ~_wgslsmith_mult_vec3_i32(u_input.a.xwy, arg_2.a)) >> (~(~(~vec3<u32>(17016u, u_input.b.x, 27483u))) % vec3<u32>(32u)));
    var_1 = arg_3;
    var var_2 = Struct_3(vec3<i32>(_wgslsmith_sub_i32(~1i, arg_3.a.x), _wgslsmith_clamp_i32(_wgslsmith_add_i32(~(-85764i), max(2147483647i, arg_1.b.x)), func_5(~55527u, 1i, vec4<f32>(-363f, arg_1.a, var_0.a, -1425f)).b.x, var_0.b.x), firstTrailingBit(0i)));
    var_2 = arg_2;
    return reverseBits(_wgslsmith_div_i32(abs(var_0.b.x), ~_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(u_input.a, u_input.d), _wgslsmith_sub_i32(47820i, 0i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1099f) + _wgslsmith_f_op_f32(-218f * 1082f)))))), vec2<i32>(u_input.a.x, -77102i));
    let var_1 = vec3<i32>(_wgslsmith_sub_i32(select(-2147483647i, ~1i, !any(vec4<bool>(false, true, true, true))), i32(-1i) * -var_0.b.x), func_6(true, func_5(func_1(), u_input.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, 1284f, 626f, -430f)))), Struct_3((u_input.a.wzz | vec3<i32>(31033i, -106023i, -50852i)) << (_wgslsmith_sub_vec3_u32(vec3<u32>(64248u, 51174u, u_input.b.x), u_input.b) % vec3<u32>(32u))), Struct_2(u_input.d.yyz)), 22624i);
    var_0 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_2(var_0.a, _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(0u, u_input.b.x, 0u, 0u), vec4<u32>(u_input.b.x, 37558u, 4294967295u, u_input.b.x)), u_input.b.x)).x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a))))), firstTrailingBit(select(u_input.a.xz, var_1.xz, false)));
    var var_2 = ~vec3<i32>(14282i, u_input.a.x, abs(~1797i << (u_input.b.x % 32u)));
    var var_3 = Struct_2(u_input.d.wxw);
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.a, _wgslsmith_f_op_f32(-1962f + _wgslsmith_f_op_f32(floor(1494f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(var_0.a, _wgslsmith_f_op_f32(f32(-1f) * -1084f)), var_4.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-347f, -189f), _wgslsmith_f_op_f32(-847f - var_4.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, var_4.x) - vec2<f32>(2040f, -118f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_4.x), -237f, _wgslsmith_f_op_f32(trunc(-1811f))) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_4.x, -214f, -1269f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_4.x, 1068f)) - _wgslsmith_f_op_f32(2739f - -1357f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -289f), 1100f))));
}

