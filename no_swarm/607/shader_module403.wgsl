struct Struct_1 {
    a: f32,
    b: bool,
    c: i32,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> f32 {
    let var_0 = vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(5784u, u_input.b), min(~max(0u, 0u), ~abs(69601u)), 122745u), 41716u, u_input.b);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-345f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1868f * 605f)), -744f, _wgslsmith_f_op_f32(max(-393f, _wgslsmith_div_f32(1936f, 1915f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1746f, 1484f, -2051f, 1459f), vec4<f32>(-1000f, -1085f, 154f, 407f), true))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(344f, 568f, -195f, -452f), vec4<f32>(945f, 778f, -621f, 1423f), true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1683f, 601f, -830f, -675f))))))) - vec4<f32>(_wgslsmith_f_op_f32(1f - 821f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1381f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * -1000f), -218f), _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(506f, 430f))), true))));
    var_1 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(f32(-1f) * -232f))), -690f, 1009f)));
    var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x)))) + vec4<f32>(_wgslsmith_f_op_f32(select(var_1.x, var_1.x, false)), _wgslsmith_f_op_f32(-var_1.x), -1223f, var_1.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 261f, var_1.x, var_1.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, -1069f, var_1.x))) + vec4<f32>(var_1.x, var_1.x, _wgslsmith_f_op_f32(var_1.x + var_1.x), _wgslsmith_div_f32(-795f, var_1.x)))))));
    var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(106f * var_1.x)), 413f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.x))), 1097f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(472f, var_1.x, var_1.x, -828f) + vec4<f32>(1590f, var_1.x, -724f, -333f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -597f, var_1.x, var_1.x) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-213f, var_1.x, var_1.x, var_1.x))))))));
    return 444f;
}

fn func_2(arg_0: Struct_2, arg_1: vec4<f32>) -> i32 {
    var var_0 = u_input.c;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(func_3()), arg_0.b.x, _wgslsmith_mod_i32(_wgslsmith_sub_i32(abs(u_input.c), 25336i), _wgslsmith_mod_i32(-u_input.d, u_input.d)) | ~_wgslsmith_mod_i32(1i, u_input.d), _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(u_input.b, ~6564u, abs(30656u)), max(_wgslsmith_add_u32(u_input.a, 4768u), reverseBits(u_input.b)), u_input.b, 4294967295u & (u_input.b | u_input.a)), ~(vec4<u32>(0u, 16491u, 4294967295u, u_input.b) & vec4<u32>(u_input.b, 36614u, u_input.b, u_input.b)) ^ (_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.a, 16562u, 57867u), vec4<u32>(14683u, u_input.b, 36556u, 43007u), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)) & _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, u_input.b, 1u, 4294967295u), vec4<u32>(u_input.b, u_input.a, 4294967295u, 1u)))), vec4<u32>(4294967295u, abs(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.a), vec2<u32>(4294967295u, 0u))), ~u_input.a, 1u << (_wgslsmith_clamp_u32(u_input.b, u_input.b & 1u, min(u_input.a, u_input.b)) % 32u)));
    let var_2 = arg_0;
    let var_3 = _wgslsmith_div_vec4_f32(arg_1, arg_1);
    var var_4 = var_1;
    return _wgslsmith_dot_vec2_i32(-vec2<i32>(~(var_1.c ^ 1i), var_1.c), _wgslsmith_div_vec2_i32(firstTrailingBit(-(~vec2<i32>(var_4.c, -35222i))), _wgslsmith_div_vec2_i32(vec2<i32>(3636i, 64390i) ^ vec2<i32>(u_input.c, var_4.c), (vec2<i32>(u_input.c, var_4.c) >> (var_1.d.xw % vec2<u32>(32u))) & (vec2<i32>(-21810i, -1i) >> (var_4.e.zz % vec2<u32>(32u))))));
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: vec4<i32>, arg_3: Struct_2) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -257f), true, u_input.c, ~(~vec4<u32>(_wgslsmith_clamp_u32(4294967295u, u_input.a, 4294967295u), abs(0u), 33373u, countOneBits(44793u))), vec4<u32>(13084u, _wgslsmith_mult_u32(u_input.a, u_input.b), ~(~u_input.a), firstLeadingBit(u_input.a)));
    let var_1 = -(-arg_2.x ^ -2147483647i) >> (firstTrailingBit(~0u) % 32u);
    let var_2 = min(-(~(~0i)), -(~u_input.c | ~(arg_2.x ^ -4362i)));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1974f), 803f, arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1155f, arg_1)) - _wgslsmith_f_op_f32(step(var_0.a, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1075f, 1662f)))))));
    var var_4 = var_0.d.x;
    return Struct_1(arg_1, all(!vec3<bool>(true, false, arg_3.b.x)), abs(var_0.c), vec4<u32>(1u, ~(~_wgslsmith_mod_u32(0u, u_input.a)), u_input.b, 16809u), vec4<u32>(firstLeadingBit(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, u_input.b, var_0.d.x, var_0.d.x), select(var_0.d, var_0.d, true))), 0u, countOneBits(1u), firstLeadingBit(~var_0.d.x)));
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: bool) -> Struct_2 {
    let var_0 = !(~1u < arg_0);
    var var_1 = ~vec3<u32>(~arg_2.x, 1u, 4294967295u);
    var_1 = arg_1.d.wwy;
    var_1 = ~vec3<u32>(1u, 1u, 21873u);
    var var_2 = vec3<u32>(~arg_0, var_1.x, min(max(1u | max(1u, arg_0), 28428u), 1u));
    return Struct_2(-2039f, vec2<bool>(var_0, true));
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1) -> vec4<i32> {
    let var_0 = arg_1;
    let var_1 = 1u;
    let var_2 = firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(-19280i, firstLeadingBit(18850i ^ arg_2.c), ~max(-2147483647i, -34598i)), vec3<i32>(u_input.d, -arg_2.c >> (arg_0 % 32u), u_input.c)));
    var var_3 = arg_2.d;
    var var_4 = func_5(u_input.a, func_4(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-354f, -1905f) + 325f)), vec4<i32>(func_2(Struct_2(1401f, var_0.b), vec4<f32>(-1243f, -1743f, 1809f, 730f)), arg_2.c, arg_2.c, -var_2) << (vec4<u32>(0u, ~arg_0, abs(1u), firstLeadingBit(15398u)) % vec4<u32>(32u)), Struct_2(_wgslsmith_f_op_f32(sign(1700f)), !select(var_0.b, vec2<bool>(arg_2.b, arg_1.b.x), vec2<bool>(arg_1.b.x, false)))), ~(~select(var_3.yz, vec2<u32>(arg_2.e.x, var_1) << (var_3.wz % vec2<u32>(32u)), !var_0.b.x)), true);
    return ~(-abs(vec4<i32>(0i, u_input.c, arg_2.c, 2147483647i)) << (_wgslsmith_mult_vec4_u32(arg_2.e, abs(vec4<u32>(arg_2.d.x, 0u, var_3.x, var_1))) % vec4<u32>(32u)));
}

fn func_6(arg_0: bool, arg_1: vec4<i32>, arg_2: Struct_2) -> bool {
    var var_0 = arg_2.b.x | ((i32(-1i) * -59402i) != _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(arg_1.wxx, arg_1.yzz) | arg_1.zyz, vec3<i32>(0i, 33933i, firstLeadingBit(-1i))));
    return !arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!(!vec4<bool>(true, u_input.a > 37427u, true, true)), vec4<bool>(any(vec2<bool>(true, true)), true, true, all(vec2<bool>(true, true)) & true), vec4<bool>(false, all(vec2<bool>(true, true)) | func_6(false, func_1(u_input.a, Struct_2(-709f, vec2<bool>(true, false)), Struct_1(404f, false, u_input.c, vec4<u32>(22929u, u_input.a, u_input.b, 0u), vec4<u32>(397u, 2155u, 4700u, 0u))), Struct_2(-111f, vec2<bool>(true, false))), true, func_5(~_wgslsmith_mod_u32(64870u, u_input.b), func_4(true, -2190f, ~vec4<i32>(u_input.d, u_input.c, u_input.c, u_input.d), func_5(u_input.a, Struct_1(-913f, true, 19784i, vec4<u32>(u_input.a, u_input.a, u_input.b, u_input.a), vec4<u32>(4294967295u, u_input.a, 1u, u_input.a)), vec2<u32>(5092u, u_input.a), false)), ~vec2<u32>(u_input.a, 1u), true).b.x));
    let var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(946f, 1427f, 694f, 1148f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(637f, -1000f, -1677f, -556f))))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(select(var_1.wwz, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(136f, 1824f, var_1.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, 257f))) * vec3<f32>(var_1.x, -909f, var_1.x)), !(false & !all(var_0.xyz))));
    let var_3 = _wgslsmith_add_i32(abs(_wgslsmith_mult_i32(u_input.d << (func_4(var_0.x, 938f, vec4<i32>(-8409i, 21773i, u_input.c, u_input.d), Struct_2(1000f, vec2<bool>(false, false))).e.x % 32u), max(u_input.c, -29974i))), -u_input.d);
    let var_4 = select(all(vec2<bool>(false, func_5(reverseBits(0u), Struct_1(-731f, var_0.x, var_3, vec4<u32>(4294967295u, 0u, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.b, 0u, 0u)), vec2<u32>(1u, u_input.b) ^ vec2<u32>(0u, 4294967295u), true).b.x)), var_0.x, all(select(!var_0.wy, !vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, var_0.x))));
    var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -726f), _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_div_f32(var_1.x, 167f)));
    let var_5 = vec4<bool>(all(vec2<bool>(false == var_4, var_4)), true, 1325f >= _wgslsmith_f_op_f32(-var_2.x), false);
    var_0 = var_5;
    var_0 = vec4<bool>(true, func_4(!all(select(vec4<bool>(true, var_4, true, false), var_5, var_0.x)), _wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + _wgslsmith_f_op_f32(abs(var_2.x)))), vec4<i32>(firstLeadingBit(0i), _wgslsmith_dot_vec2_i32(~vec2<i32>(-282i, var_3), vec2<i32>(u_input.d, u_input.d)), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(0i, -49604i, -29897i), 0i), var_3), func_5(abs(57148u), func_4(var_5.x, _wgslsmith_div_f32(155f, 178f), max(vec4<i32>(-2147483647i, u_input.c, var_3, u_input.d), vec4<i32>(6037i, -1i, -1i, -2147483647i)), Struct_2(var_2.x, vec2<bool>(true, false))), firstLeadingBit(vec2<u32>(u_input.a, 700u)), true)).b, -((var_3 ^ -11573i) << ((u_input.a >> (1823u % 32u)) % 32u)) == abs(var_3), all(var_5.xwx) || true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, 1190f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.zw)))));
}

