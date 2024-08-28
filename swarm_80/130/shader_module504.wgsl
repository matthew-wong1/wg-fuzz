struct Struct_1 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<bool>,
    c: bool,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<u32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: u32) -> u32 {
    let var_0 = Struct_3(u_input.b);
    let var_1 = Struct_2(~(-firstLeadingBit(u_input.b)), !vec2<bool>(false, select(all(vec4<bool>(false, true, false, false)), false, false)), any(vec3<bool>(false, all(select(vec2<bool>(false, true), vec2<bool>(true, false), true)), true)));
    let var_2 = Struct_1(!var_1.b.x, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(289f, -631f, _wgslsmith_f_op_f32(f32(-1f) * -1512f))), vec3<f32>(-1473f, 1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-613f * -904f), -878f)))));
    var var_3 = abs(0u);
    let var_4 = abs(vec2<u32>(_wgslsmith_mult_u32(~arg_0, arg_0), firstLeadingBit(0u)));
    return ~_wgslsmith_dot_vec2_u32(select(~abs(vec2<u32>(var_4.x, 83112u)), _wgslsmith_mod_vec2_u32(select(var_4, vec2<u32>(var_4.x, arg_0), vec2<bool>(false, true)), ~var_4), var_1.c), ~vec2<u32>(~4294967295u, 15518u));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: f32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_2), -722f, -447f));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -736f)))));
    var var_2 = Struct_4(Struct_2(u_input.a.x, arg_0.zy, _wgslsmith_mult_i32(-u_input.a.x, -2147483647i >> (1u % 32u)) >= 0i), Struct_2(1i, !vec2<bool>(var_1 > var_1, false), arg_0.x | arg_0.x), vec2<u32>(~func_3(38136u) & _wgslsmith_mult_u32(1u, ~1u), 28826u), !select(vec3<bool>(u_input.b == -16572i, true, true), select(arg_0.yxw, select(arg_0.xxz, vec3<bool>(arg_0.x, arg_0.x, true), arg_0.x), arg_0.yzz), true));
    let var_3 = func_3(_wgslsmith_div_u32(14014u, 4294967295u));
    let var_4 = 298f;
    return _wgslsmith_mod_u32(69476u, ~var_2.c.x) & var_3;
}

fn func_4(arg_0: vec3<u32>, arg_1: vec3<bool>) -> vec4<bool> {
    var var_0 = arg_0.x;
    let var_1 = vec3<i32>(abs(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 2147483647i, u_input.b, 0i) >> (vec4<u32>(291u, arg_0.x, arg_0.x, arg_0.x) % vec4<u32>(32u)), vec4<i32>(-617i, -2147483647i, u_input.b, -17817i) << (vec4<u32>(arg_0.x, 17522u, arg_0.x, 1u) % vec4<u32>(32u)))), countOneBits(select(u_input.b ^ 1i, 1i, true) << (arg_0.x % 32u)), -u_input.b);
    var var_2 = Struct_4(Struct_2(2147483647i, arg_1.xz, select(true, true, false)), Struct_2(_wgslsmith_clamp_i32(i32(-1i) * -9102i, 34933i, u_input.b), arg_1.xx, any(select(select(arg_1, vec3<bool>(false, arg_1.x, arg_1.x), vec3<bool>(true, arg_1.x, arg_1.x)), vec3<bool>(arg_1.x, true, arg_1.x), !vec3<bool>(arg_1.x, arg_1.x, arg_1.x)))), firstTrailingBit(vec2<u32>(arg_0.x, arg_0.x)), arg_1);
    var var_3 = vec3<i32>(~abs(~(-5951i)), 1i, _wgslsmith_add_i32(0i, -36495i));
    var var_4 = all(vec2<bool>(true, true));
    return !(!(!select(!vec4<bool>(true, var_2.d.x, var_2.b.b.x, true), !vec4<bool>(var_2.b.b.x, true, true, arg_1.x), any(var_2.d))));
}

fn func_1(arg_0: vec4<i32>, arg_1: bool, arg_2: bool) -> Struct_2 {
    var var_0 = !(!any(!vec2<bool>(arg_2, true)));
    var var_1 = func_4(vec3<u32>(18889u, _wgslsmith_sub_u32(1u, func_2(!vec4<bool>(arg_1, true, false, arg_1), _wgslsmith_div_vec3_f32(vec3<f32>(-299f, 149f, 865f), vec3<f32>(-1972f, -758f, 2210f)), _wgslsmith_f_op_f32(-803f - 362f))), _wgslsmith_add_u32(~1u, reverseBits(0u))), select(!vec3<bool>(arg_1, true, all(vec3<bool>(arg_1, arg_2, false))), select(!vec3<bool>(arg_1, true, false), !vec3<bool>(false, false, arg_1), any(select(vec3<bool>(true, arg_1, false), vec3<bool>(true, false, arg_1), vec3<bool>(false, arg_2, arg_2)))), !(!vec3<bool>(false, true, arg_1))));
    var_1 = !vec4<bool>(any(vec2<bool>(true, true)), true, arg_1 & true, true);
    var var_2 = Struct_4(Struct_2(~u_input.a.x, var_1.zz, var_1.x), Struct_2(0i, vec2<bool>(all(vec3<bool>(true, true, arg_1)), all(!vec4<bool>(true, false, var_1.x, var_1.x))), false), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(~3691u, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(71696u, 0u)), max(42579u, 6364u))), ~vec2<u32>(1u, 1u)), select(func_4(vec3<u32>(countOneBits(1u), 48639u, 1u), !select(var_1.xzx, vec3<bool>(true, false, arg_2), arg_2)).xwz, !vec3<bool>(true, all(vec4<bool>(arg_2, arg_1, arg_1, true)), arg_2), false));
    let var_3 = 1u;
    return var_2.b;
}

fn func_5(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: f32) -> bool {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-578f)))));
    var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.b.x * 940f)));
    var_0 = arg_0.b.x;
    let var_1 = ~vec3<i32>(~u_input.b, 12509i, -39704i);
    var var_2 = Struct_3(arg_1.x | _wgslsmith_clamp_i32(var_1.x, _wgslsmith_sub_i32(1i, u_input.a.x), ~(~(-21381i))));
    return any(arg_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(Struct_2(u_input.a.x, select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true)), !(true == any(vec2<bool>(false, true)))), Struct_2(u_input.b, vec2<bool>(false, true), any(vec2<bool>(true, true))), vec2<u32>(countOneBits(~(~80142u)), ~1u), vec3<bool>(func_5(Struct_1(true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(330f, -1685f, 629f))), u_input.a, func_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, u_input.b, -2147483647i, 12807i), vec4<i32>(u_input.b, u_input.b, -2147483647i, u_input.a.x), vec4<i32>(0i, 37339i, u_input.a.x, 5336i)), true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -700f))), true & func_4(vec3<u32>(1u, 1u, 1u), vec3<bool>(true, true, true)).x, !any(vec4<bool>(true, true, true, true))));
    var_0 = Struct_4(Struct_2(var_0.b.a, !(!(!var_0.d.xy)), any(select(!vec4<bool>(var_0.d.x, true, var_0.b.c, false), vec4<bool>(var_0.d.x, true, var_0.a.b.x, var_0.b.b.x), false))), func_1(~(~(-vec4<i32>(var_0.b.a, 1i, var_0.a.a, var_0.a.a))), !var_0.d.x, !any(vec4<bool>(var_0.d.x, true, false, var_0.b.b.x))), ~_wgslsmith_mod_vec2_u32(vec2<u32>(max(var_0.c.x, 47098u), min(9392u, 57484u)), var_0.c | _wgslsmith_sub_vec2_u32(var_0.c, var_0.c)), vec3<bool>(true, !select(var_0.b.c, true, var_0.d.x & var_0.a.c), func_5(Struct_1(func_1(vec4<i32>(1i, u_input.a.x, 25145i, -1693i), false, true).c, vec3<f32>(-1339f, -488f, 1472f)), firstTrailingBit(-u_input.a), var_0.b, _wgslsmith_f_op_f32(sign(-1421f)))));
    let var_1 = 5020u;
    var var_2 = _wgslsmith_f_op_f32(261f + -1656f);
    var_0 = Struct_4(Struct_2(u_input.a.x >> ((var_1 ^ (100189u & var_1)) % 32u), vec2<bool>(!var_0.b.c && false, any(select(vec4<bool>(false, var_0.b.b.x, var_0.d.x, var_0.a.b.x), vec4<bool>(var_0.d.x, var_0.d.x, false, var_0.a.c), vec4<bool>(false, false, var_0.b.b.x, var_0.d.x)))), true), Struct_2(reverseBits(firstTrailingBit(func_1(vec4<i32>(var_0.a.a, var_0.b.a, var_0.b.a, u_input.b), true, false).a)), vec2<bool>(true, true), var_0.d.x), ~select(~vec2<u32>(var_0.c.x, var_1), var_0.c, false), var_0.d);
    var_0 = Struct_4(func_1(vec4<i32>(min(func_1(vec4<i32>(1i, u_input.b, var_0.a.a, 1i), true, true).a, 0i), firstTrailingBit(1i), abs(_wgslsmith_clamp_i32(-33711i, u_input.a.x, 1i)), -2147483647i), var_0.b.b.x, func_5(Struct_1(true, _wgslsmith_f_op_vec3_f32(vec3<f32>(1043f, 351f, -728f) + vec3<f32>(-428f, -803f, 599f))), abs(u_input.a), var_0.a, _wgslsmith_f_op_f32(732f * -719f))), func_1(min(_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.b.a, u_input.b, u_input.b, var_0.a.a), -vec4<i32>(var_0.b.a, -13872i, u_input.b, -17721i)), _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, var_0.b.a, var_0.a.a, 24293i), vec4<i32>(-5928i, -4053i, 25337i, u_input.a.x), vec4<i32>(2147483647i, 2147483647i, var_0.b.a, 1i)), vec4<i32>(1i, 2147483647i, 13287i, u_input.a.x))), true, var_0.d.x), ~(~select(vec2<u32>(var_0.c.x, var_0.c.x), var_0.c, var_0.b.b.x)) >> (~(_wgslsmith_mult_vec2_u32(var_0.c, vec2<u32>(var_1, 0u)) & vec2<u32>(1u, var_0.c.x)) % vec2<u32>(32u)), vec3<bool>(func_5(Struct_1(select(false, true, var_0.a.c), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-207f, -524f, -1000f)))), u_input.a, var_0.b, -824f), all(select(func_4(vec3<u32>(var_0.c.x, 46570u, var_0.c.x), vec3<bool>(false, false, var_0.d.x)).zwx, var_0.d, !var_0.d)), true));
    let var_3 = Struct_4(var_0.b, Struct_2(~1i, select(vec2<bool>(var_0.b.b.x, false), !vec2<bool>(false, var_0.d.x), func_1(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.a.a, 1i, 2147483647i, var_0.b.a), vec4<i32>(-22688i, 2147483647i, 1i, var_0.b.a)), !var_0.b.c, true & var_0.b.c).b.x), true), _wgslsmith_sub_vec2_u32(~vec2<u32>(var_1, var_1), vec2<u32>(func_3(var_1), 1u)), !vec3<bool>(var_0.d.x, true, true));
    let var_4 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.a), var_0.b.a, ~abs(vec3<u32>(15997u >> (var_4 % 32u), var_4, 1u)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-181f, -2540f, 308f, -1609f))), vec4<f32>(111f, _wgslsmith_f_op_f32(floor(-735f)), -1000f, 851f))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))))));
}

