struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec3<u32>,
    d: vec2<bool>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: Struct_1,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec4<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<f32> {
    var var_0 = Struct_3(0i, Struct_1(~_wgslsmith_clamp_i32(~(-27936i), ~u_input.a.x, u_input.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1016f, 445f, 443f, 154f)))), abs(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 1u), abs(vec3<u32>(1u, 0u, 2056u)))), vec2<bool>(any(vec3<bool>(true, false, false)), true), vec3<u32>(~1149u, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(12482u, 1357u, 13696u), 1u), 36646u)), vec4<u32>(1u, ~(~(~1947u)), 1u, 62213u));
    var_0 = Struct_3(-_wgslsmith_dot_vec2_i32(vec2<i32>(-35896i, u_input.b.x) & vec2<i32>(10312i, u_input.b.x), u_input.b & vec2<i32>(u_input.b.x, -20266i)) >> (0u % 32u), Struct_1(var_0.b.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.b.b.x, var_0.b.b.x, 349f, var_0.b.b.x), vec4<f32>(-1947f, 1059f, 482f, var_0.b.b.x)), _wgslsmith_f_op_vec4_f32(var_0.b.b + var_0.b.b)))), ~(~(var_0.c.yyy >> (var_0.b.c % vec3<u32>(32u)))), !vec2<bool>(var_0.b.d.x || false, all(var_0.b.d)), var_0.b.e), reverseBits(vec4<u32>(~(~var_0.b.e.x), ~var_0.b.e.x, var_0.b.c.x, 1u)));
    var var_1 = vec2<i32>(select(~(-var_0.a), -20649i, false), u_input.b.x) << (countOneBits(~_wgslsmith_add_vec2_u32(countOneBits(var_0.b.c.xz), vec2<u32>(var_0.c.x, var_0.c.x))) % vec2<u32>(32u));
    var_0 = Struct_3(0i, var_0.b, vec4<u32>(~min(~var_0.c.x, 8217u), ~42016u, firstTrailingBit(0u ^ var_0.c.x) >> (_wgslsmith_dot_vec4_u32(~var_0.c, var_0.c) % 32u), var_0.c.x));
    var_0 = Struct_3(_wgslsmith_dot_vec4_i32(u_input.a | (vec4<i32>(-1i) * -u_input.a), u_input.a), Struct_1(var_0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(306f, -153f, -507f, 346f) * _wgslsmith_f_op_vec4_f32(var_0.b.b - var_0.b.b))), var_0.c.zxx, vec2<bool>(var_0.b.d.x, !all(vec2<bool>(false, var_0.b.d.x))), select(vec3<u32>(~1u, 24334u, 0u), countOneBits(countOneBits(vec3<u32>(var_0.b.e.x, 4294967295u, 4294967295u))), vec3<bool>(true, var_0.b.d.x, all(vec2<bool>(true, var_0.b.d.x))))), firstTrailingBit(var_0.c));
    return vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -913f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.b.b.x))), -1060f);
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3()));
    var var_1 = Struct_2(true, ~(~(~(~1u))), Struct_1(i32(-1i) * -u_input.a.x, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1198f, -1639f, var_0.x, _wgslsmith_f_op_f32(var_0.x + var_0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -419f, 1000f, 324f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, 380f))))), _wgslsmith_div_vec3_u32(~vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)), vec2<bool>(true, true), _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(abs(vec3<u32>(15815u, 0u, 0u)), vec3<u32>(1u, 1u, 1u)), abs(vec3<u32>(1u, 1u, 1u)))), vec2<u32>(max(select(_wgslsmith_dot_vec4_u32(vec4<u32>(60452u, 1u, 9802u, 120556u), vec4<u32>(4294967295u, 1u, 4294967295u, 4294967295u)), _wgslsmith_clamp_u32(37750u, 4294967295u, 88097u), any(vec2<bool>(false, true))), 90855u), 1u), Struct_1(_wgslsmith_mod_i32(min(countOneBits(-1i), u_input.b.x), 58974i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(-537f)), _wgslsmith_f_op_f32(1000f - 1257f), _wgslsmith_f_op_f32(f32(-1f) * -357f), var_0.x)), reverseBits(abs(vec3<u32>(56264u, 0u, 4294967295u))), !select(vec2<bool>(true, false), vec2<bool>(false, false), any(vec3<bool>(true, false, false))), ~vec3<u32>(84136u, 2911u, 1u)));
    var_1 = Struct_2(!var_1.a, _wgslsmith_add_u32(~select(firstLeadingBit(41583u), _wgslsmith_dot_vec3_u32(vec3<u32>(100514u, var_1.c.e.x, 13761u), var_1.e.e), var_1.a & true), var_1.b), Struct_1(_wgslsmith_dot_vec3_i32(~(~vec3<i32>(u_input.b.x, 2147483647i, 25540i)), vec3<i32>(u_input.a.x, var_1.c.a | 0i, 2147483647i >> (var_1.d.x % 32u))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.e.b.x), _wgslsmith_f_op_f32(var_0.x - 422f), _wgslsmith_f_op_f32(var_1.e.b.x * 751f), -569f)), vec3<u32>(~1u, firstLeadingBit(min(0u, var_1.b)), firstLeadingBit(0u)), vec2<bool>(true, true), ~var_1.e.e), ~var_1.c.c.zx, Struct_1(u_input.b.x & var_1.e.a, vec4<f32>(581f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1116f))), var_1.e.b.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -256f), _wgslsmith_div_f32(201f, -897f)))), countOneBits(vec3<u32>(1u, var_1.b >> (var_1.b % 32u), 4294967295u)), select(var_1.e.d, !var_1.c.d, select(select(vec2<bool>(true, var_1.e.d.x), var_1.c.d, false), vec2<bool>(var_1.e.d.x, var_1.a), false)), (select(vec3<u32>(var_1.d.x, 43855u, var_1.e.c.x), var_1.c.c, vec3<bool>(var_1.a, true, var_1.e.d.x)) | ~var_1.c.e) >> ((~var_1.e.e >> (~vec3<u32>(4137u, 68704u, var_1.d.x) % vec3<u32>(32u))) % vec3<u32>(32u))));
    let var_2 = ~vec2<u32>(1u, var_1.c.c.x) >> (~(~(~var_1.e.c.xy & min(var_1.e.c.xy, vec2<u32>(var_1.c.c.x, 26152u)))) % vec2<u32>(32u));
    var var_3 = _wgslsmith_f_op_f32(-1f);
    return 1272f;
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = Struct_2(!(_wgslsmith_mult_u32(select(0u, 58540u, true), 4294967295u) > (~15636u | ~arg_1.c.x)), arg_1.e.x, arg_1, min(arg_1.c.xy, abs(_wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_1.e.x, arg_1.e.x), arg_1.e.zy), ~arg_1.e.xz))), Struct_1(0i, _wgslsmith_div_vec4_f32(arg_1.b, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-136f, arg_1.b.x, arg_1.b.x, 843f), arg_1.b, true))))), ~(~select(arg_1.c, arg_1.c, false)), select(vec2<bool>(any(vec3<bool>(arg_1.d.x, arg_1.d.x, arg_1.d.x)), true), arg_1.d, !(!arg_1.d)), reverseBits(vec3<u32>(1152u, _wgslsmith_mod_u32(arg_1.c.x, arg_1.c.x), arg_1.e.x))));
    var var_1 = !select(select(select(vec2<bool>(true, true), var_0.e.d, !vec2<bool>(var_0.a, true)), vec2<bool>(all(vec4<bool>(arg_1.d.x, true, false, true)), 1u > arg_1.c.x), select(arg_1.d, vec2<bool>(false, var_0.e.d.x), select(vec2<bool>(var_0.a, false), var_0.c.d, vec2<bool>(false, false)))), !select(select(vec2<bool>(false, true), vec2<bool>(arg_1.d.x, arg_1.d.x), var_0.e.d.x), select(var_0.e.d, arg_1.d, vec2<bool>(var_0.c.d.x, var_0.a)), false), !arg_1.d);
    var_1 = arg_1.d;
    let var_2 = select(!(!vec3<bool>(!arg_1.d.x, var_0.e.d.x, !var_1.x)), !select(select(select(vec3<bool>(true, var_1.x, false), vec3<bool>(false, true, var_0.e.d.x), arg_1.d.x), select(vec3<bool>(var_0.e.d.x, false, true), vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(var_1.x, false, false)), vec3<bool>(arg_1.d.x, arg_1.d.x, true)), !vec3<bool>(arg_1.d.x, var_1.x, true), select(vec3<bool>(var_1.x, var_0.c.d.x, true), select(vec3<bool>(arg_1.d.x, false, true), vec3<bool>(arg_1.d.x, arg_1.d.x, false), true), arg_1.d.x)), true);
    var var_3 = Struct_3(~0i, Struct_1(49801i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.e.b.x, 1761f, _wgslsmith_div_f32(arg_1.b.x, -1000f), _wgslsmith_f_op_f32(-var_0.e.b.x))), _wgslsmith_mod_vec3_u32(min(arg_1.c, ~var_0.e.c), arg_1.c >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.e.e.x, var_0.c.c.x, 13612u), var_0.c.e, arg_1.e) % vec3<u32>(32u))), vec2<bool>(true, !(!arg_1.d.x)), reverseBits(var_0.c.e) ^ vec3<u32>(arg_1.e.x, arg_1.c.x, ~46522u)), vec4<u32>(14995u, 19302u, ~(~(~97636u)), 1u << (arg_1.e.x % 32u)));
    return var_0.e;
}

fn func_1() -> vec3<u32> {
    let var_0 = _wgslsmith_add_i32(u_input.a.x, 2147483647i);
    let var_1 = true;
    var var_2 = select(!select(!vec2<bool>(var_1, var_1), !select(vec2<bool>(var_1, var_1), vec2<bool>(var_1, false), var_1), var_0 != -u_input.a.x), !select(!vec2<bool>(true, var_1), !(!vec2<bool>(var_1, var_1)), select(vec2<bool>(var_1, false), !vec2<bool>(var_1, var_1), false)), !(!select(vec2<bool>(true, true), vec2<bool>(true, true), var_1)));
    var var_3 = func_4(u_input.b.x, Struct_1(-((42552i & var_0) ^ -82942i), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(f32(-1f) * -264f), -1665f, -352f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1279f, 141f, -623f, 1420f))))), vec3<u32>(1u, 1u, 1u), select(select(vec2<bool>(true, true), !vec2<bool>(var_1, true), vec2<bool>(true, var_2.x)), vec2<bool>(true, var_1 && var_2.x), !select(vec2<bool>(var_2.x, false), vec2<bool>(var_2.x, false), vec2<bool>(true, var_2.x))), firstLeadingBit(~(~vec3<u32>(0u, 0u, 70240u)))));
    var var_4 = Struct_3(2147483647i | _wgslsmith_sub_i32(-1i, var_3.a), func_4(func_4(~var_3.a, Struct_1(u_input.a.x, var_3.b, vec3<u32>(65589u, 1u, 34548u), var_3.d, vec3<u32>(var_3.c.x, var_3.c.x, 92963u))).a << (_wgslsmith_mult_u32(var_3.c.x, 15789u) % 32u), func_4(var_0, func_4(var_0 >> (var_3.e.x % 32u), Struct_1(-2147483647i, var_3.b, var_3.c, vec2<bool>(var_3.d.x, var_2.x), var_3.c)))), vec4<u32>(~(~_wgslsmith_sub_u32(var_3.c.x, 0u)), var_3.c.x << (var_3.e.x % 32u), ~select(var_3.e.x, ~78116u, true), var_3.c.x));
    return var_4.c.xzw;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = ~select(vec3<u32>(countOneBits(1u), var_0.x, min(75094u, var_0.x)), _wgslsmith_div_vec3_u32(max(~vec3<u32>(var_0.x, var_0.x, 10686u), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, var_0.x, 85124u), vec3<u32>(var_0.x, 56078u, 78571u))), ~_wgslsmith_sub_vec3_u32(vec3<u32>(56921u, 4294967295u, var_0.x), vec3<u32>(var_0.x, 0u, 0u))), any(!func_4(u_input.a.x, Struct_1(u_input.b.x, vec4<f32>(1031f, 177f, -1000f, 516f), vec3<u32>(66253u, 90742u, var_0.x), vec2<bool>(true, false), vec3<u32>(1u, 4294967295u, 0u))).d));
    var_1 = firstTrailingBit(vec3<u32>(var_1.x ^ var_1.x, var_0.x, 4904u | select(12072u, var_0.x << (4294967295u % 32u), true)));
    let var_2 = _wgslsmith_dot_vec2_u32(var_0.xx, ~_wgslsmith_clamp_vec2_u32(~vec2<u32>(1u, 1u), var_1.yx, vec2<u32>(var_1.x, var_0.x))) << (13762u % 32u);
    let var_3 = Struct_3(u_input.a.x, func_4(countOneBits(~u_input.b.x), Struct_1(~(u_input.b.x & 0i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1663f, 569f, -2244f, -1735f) * vec4<f32>(-1398f, 780f, 174f, 1495f))), _wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(var_1.x, var_2, 0u)), vec3<u32>(29355u, 35150u, var_2)), vec2<bool>(true, true), ~(~vec3<u32>(var_0.x, 4294967295u, var_1.x)))), abs(_wgslsmith_div_vec4_u32(~(vec4<u32>(var_0.x, var_0.x, 30838u, var_1.x) << (vec4<u32>(84512u, var_2, var_2, var_2) % vec4<u32>(32u))), ~reverseBits(vec4<u32>(0u, var_1.x, var_2, var_0.x)))));
    var_0 = firstTrailingBit(~var_3.c.ywy);
    let var_4 = any(var_3.b.d);
    let var_5 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(var_5.b.b.xzx * _wgslsmith_f_op_vec3_f32(select(var_3.b.b.wwy, var_5.b.b.zyw, var_5.b.d.x))))), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_3.b.b.x, -774f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5.b.b.x)), -1589f))), _wgslsmith_div_vec3_f32(var_3.b.b.zzw, vec3<f32>(148f, var_5.b.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_5.b.b.x), func_4(-1i, var_5.b).b.x))), u_input.a, _wgslsmith_div_vec4_f32(var_3.b.b, _wgslsmith_f_op_vec4_f32(sign(var_3.b.b))));
}

