struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
    c: vec2<f32>,
}

struct Struct_4 {
    a: i32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-358f, 643f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(615f, 166f)), vec2<bool>(true, true))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1337f, -1733f), vec2<f32>(1226f, 415f)))))));
    let var_1 = _wgslsmith_f_op_f32(exp2(var_0.a.x));
    var var_2 = var_1;
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(298f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(var_1, var_1)))), _wgslsmith_f_op_f32(max(576f, _wgslsmith_f_op_f32(-var_0.a.x))))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-496f, _wgslsmith_f_op_f32(select(var_1, -371f, false))), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-var_0.a.x))))));
    let var_4 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1186f, var_0.a.x, -517f, _wgslsmith_f_op_f32(var_1 * 659f)) - vec4<f32>(_wgslsmith_f_op_f32(-399f - var_1), _wgslsmith_f_op_f32(select(600f, 253f, false)), var_3.x, -451f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_3.x, var_0.a.x, var_1, 1567f)))) - vec4<f32>(_wgslsmith_f_op_f32(-1322f - -114f), _wgslsmith_f_op_f32(-357f + 1170f), _wgslsmith_f_op_f32(ceil(var_0.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -981f)))), vec2<bool>(true, true), var_0);
    return -(abs(u_input.b.x) >> (1829u % 32u));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: i32, arg_3: u32) -> Struct_3 {
    var var_0 = Struct_4(-_wgslsmith_mult_i32(-(u_input.a | -2147483647i), select(1i, 1i >> (arg_3 % 32u), true & arg_1.x)), min(vec3<i32>(34218i, _wgslsmith_sub_i32(~u_input.a, select(u_input.b.x, 2147483647i, arg_1.x)), u_input.a), vec3<i32>(_wgslsmith_div_i32(-20781i | u_input.b.x, _wgslsmith_mod_i32(30842i, arg_2)), ~32895i, _wgslsmith_mult_i32(_wgslsmith_mod_i32(arg_2, arg_2), 1i))));
    var var_1 = _wgslsmith_f_op_f32(floor(-1876f));
    var var_2 = var_0.b;
    var_0 = Struct_4(func_3(), -vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, -44749i, var_0.a, var_2.x) ^ vec4<i32>(-21334i, var_2.x, arg_2, arg_2), reverseBits(vec4<i32>(var_2.x, 0i, -1i, arg_2))), arg_2, (var_0.b.x & 1i) & var_2.x));
    let var_3 = _wgslsmith_div_i32(countOneBits(~(~abs(arg_2))), _wgslsmith_mult_i32(abs(abs(~arg_2)), _wgslsmith_div_i32(~1i, ~var_2.x)));
    return Struct_3(~reverseBits(firstTrailingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_3, arg_3), vec2<u32>(7289u, arg_3), vec2<u32>(arg_3, 47284u)))), Struct_2(vec4<f32>(arg_0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1901f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(640f + -1012f) - _wgslsmith_f_op_f32(min(arg_0.a.x, 688f)))), select(vec2<bool>(true, any(vec4<bool>(true, arg_1.x, true, false))), vec2<bool>(arg_1.x, true), (arg_1.x && arg_1.x) != false), Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.x, arg_0.a.x) - arg_0.a))))), arg_0.a);
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: u32, arg_3: Struct_3) -> u32 {
    let var_0 = arg_3;
    var var_1 = func_3();
    var_1 = countOneBits(-345i);
    let var_2 = true;
    var_1 = -32189i;
    return abs(~abs(var_0.a.x));
}

fn func_1() -> vec2<u32> {
    let var_0 = true;
    var var_1 = _wgslsmith_mult_u32(0u, 1u);
    var_1 = ~_wgslsmith_clamp_u32(29043u, ~(~(~32699u)), abs(func_4(func_2(Struct_1(vec2<f32>(1858f, -1019f)), vec3<bool>(true, false, var_0), -1i, 93643u), ~4294967295u, 4905u, Struct_3(vec2<u32>(36346u, 4294967295u), Struct_2(vec4<f32>(278f, -1108f, -918f, -938f), vec2<bool>(var_0, var_0), Struct_1(vec2<f32>(-1934f, -1000f))), vec2<f32>(-1194f, -1218f)))));
    let var_2 = func_2(func_2(func_2(func_2(func_2(Struct_1(vec2<f32>(-1394f, 896f)), vec3<bool>(true, var_0, var_0), u_input.b.x, 0u).b.c, select(vec3<bool>(var_0, true, var_0), vec3<bool>(false, var_0, var_0), vec3<bool>(var_0, false, var_0)), u_input.b.x, _wgslsmith_mult_u32(32777u, 44750u)).b.c, !select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(true, var_0, false), false), 2147483647i, ~7775u).b.c, vec3<bool>(22894i >= u_input.b.x, var_0, !(!var_0)), -1i, _wgslsmith_dot_vec4_u32(select(vec4<u32>(56465u, 0u, 43410u, 4294967295u), vec4<u32>(0u, 0u, 1u, 4294967295u), true), ~vec4<u32>(1u, 1u, 1u, 1u))).b.c, select(select(select(!vec3<bool>(var_0, var_0, false), vec3<bool>(var_0, true, false), true), select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(false, false, var_0), true), !(!vec3<bool>(var_0, false, false))), !(!select(vec3<bool>(var_0, false, var_0), vec3<bool>(var_0, var_0, var_0), true)), var_0), _wgslsmith_div_i32(max(-33390i, u_input.b.x), u_input.b.x), ~func_4(Struct_3(~vec2<u32>(8408u, 23548u), Struct_2(vec4<f32>(1162f, 1527f, -411f, -1109f), vec2<bool>(false, false), Struct_1(vec2<f32>(1622f, 1159f))), vec2<f32>(670f, 923f)), countOneBits(1u), 1u, Struct_3(~vec2<u32>(11367u, 1u), func_2(Struct_1(vec2<f32>(-1451f, -1577f)), vec3<bool>(var_0, true, var_0), -2147483647i, 1u).b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(860f, 228f)))));
    var var_3 = u_input.a;
    return var_2.a;
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: vec4<bool>) -> vec2<u32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_1.c), vec2<f32>(arg_1.b.a.x, arg_1.c.x), all(!arg_2)))));
    return max(vec2<u32>(abs(~(15586u | arg_1.a.x)), _wgslsmith_mult_u32(func_2(arg_1.b.c, select(vec3<bool>(false, true, arg_1.b.b.x), vec3<bool>(false, arg_2.x, false), arg_1.b.b.x), countOneBits(2147483647i), 1u).a.x, _wgslsmith_add_u32(arg_1.a.x, 1u))), ~arg_0.xz);
}

fn func_6(arg_0: bool, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: vec4<i32>) -> Struct_4 {
    let var_0 = abs(vec3<i32>(max(firstTrailingBit(i32(-1i) * -22992i), arg_3.x), ~0i, -1i));
    let var_1 = ~_wgslsmith_dot_vec3_u32(max(_wgslsmith_add_vec3_u32(vec3<u32>(arg_1.x, 1u, arg_1.x), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_1.x, 4294967295u, arg_1.x), vec3<u32>(arg_1.x, 30547u, arg_1.x))), ~min(vec3<u32>(1u, arg_1.x, arg_1.x), vec3<u32>(arg_1.x, arg_1.x, arg_1.x))), max(~vec3<u32>(0u, 16665u, 4294967295u), vec3<u32>(44564u, arg_1.x, 4024u) ^ vec3<u32>(12863u, arg_1.x, 534u)) & ~_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1.x, 73444u, 4998u), vec3<u32>(47050u, 50934u, 4294967295u), vec3<u32>(22969u, arg_1.x, arg_1.x)));
    var var_2 = arg_2.c;
    var var_3 = func_2(arg_2.c, vec3<bool>(select(all(arg_2.b) == (arg_2.c.a.x != var_2.a.x), true, false), false, false), _wgslsmith_dot_vec2_i32(vec2<i32>(~(arg_3.x ^ arg_3.x), 47654i), -_wgslsmith_mod_vec2_i32(vec2<i32>(3734i, var_0.x) << (arg_1 % vec2<u32>(32u)), countOneBits(arg_3.yy))), 1u);
    var var_4 = Struct_4(_wgslsmith_sub_i32(~2147483647i, -17809i), select(_wgslsmith_mult_vec3_i32(var_0, abs(var_0)), vec3<i32>(_wgslsmith_add_i32(-2996i, firstLeadingBit(arg_3.x)), countOneBits(~2147483647i), _wgslsmith_div_i32(u_input.a, u_input.a)), true));
    return Struct_4(firstLeadingBit(-74352i), firstTrailingBit(select(vec3<i32>(15642i, var_4.b.x, u_input.a) | var_0, _wgslsmith_clamp_vec3_i32(var_4.b, vec3<i32>(var_4.b.x, var_0.x, arg_3.x), var_4.b), 0i > arg_3.x) ^ vec3<i32>(1i, var_0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -1i, 0i), arg_3.yzy))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(!(!(select(false, true, false) | true)), ~func_5(vec3<u32>(~0u, _wgslsmith_add_u32(1u, 1u), ~45354u), Struct_3(func_1(), Struct_2(vec4<f32>(902f, 2121f, -364f, -1129f), vec2<bool>(true, true), Struct_1(vec2<f32>(-794f, 624f))), _wgslsmith_div_vec2_f32(vec2<f32>(-510f, 2164f), vec2<f32>(511f, 1567f))), vec4<bool>(any(vec4<bool>(false, true, true, true)), false, true, true)), func_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-253f + 689f), -114f)), vec3<bool>(true, true, false), u_input.b.x, 1u).b, vec4<i32>(-61992i, u_input.a, -1i, countOneBits(26195i)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1518f - -118f))));
    let var_2 = ~(~(~vec3<u32>(1u, 1u, 1u))) << (select(vec3<u32>(1u, 1u, 1u), vec3<u32>(0u, func_5(~vec3<u32>(1u, 59912u, 21075u), func_2(Struct_1(vec2<f32>(639f, -1821f)), vec3<bool>(true, true, true), 3593i, 36209u), vec4<bool>(true, true, true, true)).x, ~(~22556u)), all(vec4<bool>(true, true, true, true))) % vec3<u32>(32u));
    var var_3 = var_0.b >> (min(~(~(~vec3<u32>(1u, var_2.x, 0u))), var_2) % vec3<u32>(32u));
    let var_4 = firstTrailingBit(select(vec4<u32>(func_5(vec3<u32>(var_2.x, 4294967295u, 1u) ^ var_2, func_2(Struct_1(vec2<f32>(-265f, 1437f)), vec3<bool>(false, false, false), 0i, 52652u), vec4<bool>(false, true, true, true)).x, countOneBits(_wgslsmith_div_u32(var_2.x, var_2.x)), var_2.x, var_2.x), vec4<u32>(_wgslsmith_mult_u32(0u, var_2.x), min(var_2.x, 0u), 4294967295u, 1u) >> (~select(vec4<u32>(var_2.x, 4294967295u, var_2.x, var_2.x), vec4<u32>(11182u, var_2.x, 69178u, 4294967295u), vec4<bool>(true, false, true, true)) % vec4<u32>(32u)), true));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(35165i));
}

