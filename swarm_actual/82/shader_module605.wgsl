struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: f32,
    d: vec2<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: vec4<f32>, arg_3: Struct_2) -> i32 {
    let var_0 = 48347u;
    let var_1 = vec3<bool>(true, true, all(vec2<bool>(true, true)));
    let var_2 = Struct_1(~arg_0.c.a | abs(arg_0.d.a));
    let var_3 = abs(_wgslsmith_mult_i32(_wgslsmith_mult_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(-904i, 45575i, -1800i), vec3<i32>(arg_3.a, arg_0.a, arg_0.a)), arg_3.a), reverseBits(_wgslsmith_mult_i32(_wgslsmith_mod_i32(arg_0.a, arg_0.a), -arg_3.a))));
    var var_4 = vec3<bool>(any(var_1.zy), ~(-47493i) >= arg_0.a, all(select(vec4<bool>(true, var_1.x, all(vec4<bool>(var_1.x, false, var_1.x, false)), true), select(select(vec4<bool>(true, var_1.x, true, false), vec4<bool>(var_1.x, var_1.x, var_1.x, true), vec4<bool>(false, true, true, false)), !vec4<bool>(var_1.x, false, var_1.x, false), select(vec4<bool>(var_1.x, true, true, false), vec4<bool>(var_1.x, var_1.x, var_1.x, true), vec4<bool>(var_1.x, false, true, var_1.x))), !(!vec4<bool>(false, true, var_1.x, true)))));
    return -firstTrailingBit(max(18365i, arg_3.a));
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: i32, arg_3: vec4<i32>) -> i32 {
    var var_0 = abs(vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(u_input.b.x, 4294967295u, 14750u) << (~arg_1 % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.b.x) << (vec3<u32>(u_input.b.x, 37417u, 44526u) % vec3<u32>(32u)), min(vec3<u32>(49103u, 1u, 26010u), vec3<u32>(0u, arg_0.c.a.x, 0u))), 0u | ~arg_1), 35u, 1u, u_input.b.x));
    var_0 = _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(~_wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(1u, arg_0.c.a.x, 3601u, 58740u)), _wgslsmith_div_vec4_u32(vec4<u32>(0u, 138815u, 46794u, var_0.x), vec4<u32>(arg_1, arg_1, 0u, 4294967295u))), _wgslsmith_sub_vec4_u32(~select(vec4<u32>(arg_0.c.a.x, var_0.x, var_0.x, 6158u), vec4<u32>(0u, 76313u, u_input.b.x, u_input.b.x), vec4<bool>(true, false, true, true)), max(vec4<u32>(22389u, arg_1, var_0.x, u_input.b.x), vec4<u32>(arg_0.c.a.x, 22532u, 48375u, u_input.c)) << (vec4<u32>(12016u, 17607u, u_input.b.x, 0u) % vec4<u32>(32u)))), reverseBits(~(~min(vec4<u32>(0u, u_input.b.x, 24624u, arg_1), vec4<u32>(0u, arg_0.d.a.x, arg_1, 0u)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.b.x))), -1039f, 689f, arg_0.b.x)) * _wgslsmith_f_op_vec4_f32(-arg_0.b));
    let var_2 = select(vec3<bool>(select(true, true, all(vec2<bool>(false, true))) & false, -483f > _wgslsmith_f_op_f32(-arg_0.b.x), all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), all(vec3<bool>(true, false, true))))), !vec3<bool>(true, select(false, false, false) | any(vec2<bool>(false, false)), !any(vec2<bool>(false, true))), select(vec3<bool>(true, !(arg_2 > -1i), false), !(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false)), vec3<bool>(true, true, true)));
    var var_3 = 5227i;
    return u_input.d;
}

fn func_2(arg_0: bool) -> vec4<f32> {
    var var_0 = Struct_2(u_input.a | _wgslsmith_mod_i32(1i, u_input.d), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1473f - _wgslsmith_f_op_f32(select(1776f, -465f, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -337f)), 1f, 270f), Struct_1(u_input.b), Struct_1(_wgslsmith_div_vec2_u32(u_input.b, select(vec2<u32>(1u, u_input.b.x), firstLeadingBit(u_input.b), vec2<bool>(false, true)))));
    var_0 = Struct_2(1i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.b)), var_0.c, var_0.d);
    let var_1 = Struct_2(func_4(Struct_2(func_3(Struct_2(var_0.a, vec4<f32>(var_0.b.x, var_0.b.x, 1331f, -1225f), var_0.c, var_0.d), ~vec3<u32>(1u, 76193u, u_input.c), _wgslsmith_f_op_vec4_f32(var_0.b + var_0.b), Struct_2(var_0.a, var_0.b, var_0.d, var_0.c)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(2079f, var_0.b.x, 725f, -255f), var_0.b)) + vec4<f32>(-391f, var_0.b.x, var_0.b.x, -838f)), var_0.c, Struct_1(countOneBits(u_input.b))), select(u_input.b.x, _wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.b.x, var_0.d.a.x), ~var_0.c.a.x), (1u << (var_0.d.a.x % 32u)) != 4294967295u), u_input.a & (abs(var_0.a) & (-1483i << (u_input.c % 32u))), -vec4<i32>(u_input.d >> (14987u % 32u), var_0.a, -872i << (1u % 32u), -2147483647i)), var_0.b, Struct_1(reverseBits(u_input.b)), Struct_1(~vec2<u32>(0u, abs(17611u))));
    let var_2 = Struct_2(max(var_0.a, abs(_wgslsmith_clamp_i32(23714i, 49601i, i32(-1i) * -73932i))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(var_0.b, var_1.b), _wgslsmith_div_vec4_f32(var_1.b, vec4<f32>(var_1.b.x, 470f, _wgslsmith_f_op_f32(var_1.b.x * 1000f), -203f))), var_0.d, Struct_1(vec2<u32>(~1u, var_1.c.a.x)));
    var_0 = Struct_2(-var_1.a, var_0.b, Struct_1(u_input.b), Struct_1(vec2<u32>(firstLeadingBit(var_0.c.a.x & 1u), ~63353u)));
    return var_2.b;
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_2) -> Struct_2 {
    var var_0 = vec4<i32>(~(4518i >> (~_wgslsmith_mod_u32(u_input.b.x, 1u) % 32u)), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_add_i32(u_input.d, arg_1.a), select(2147483647i | arg_1.a, _wgslsmith_dot_vec4_i32(vec4<i32>(-2310i, u_input.d, 2147483647i, arg_1.a), vec4<i32>(arg_1.a, 47864i, 0i, -19421i)), false)), select(~(~vec2<i32>(arg_1.a, u_input.a)), ~reverseBits(vec2<i32>(u_input.a, 69675i)), !(arg_1.c.a.x <= 15323u))), 0i >> (arg_1.d.a.x % 32u), min(_wgslsmith_dot_vec2_i32(~(~vec2<i32>(u_input.a, 30456i)), select(select(vec2<i32>(u_input.d, u_input.d), vec2<i32>(u_input.a, -1i), vec2<bool>(true, false)), abs(vec2<i32>(-53478i, 2147483647i)), true)), _wgslsmith_div_i32(~(-19i), max(u_input.d, u_input.a))));
    var_0 = vec4<i32>(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(var_0.x, arg_1.a, -3482i)) ^ (_wgslsmith_add_vec3_i32(vec3<i32>(-1i, var_0.x, -34012i), vec3<i32>(arg_1.a, 1i, var_0.x)) >> (~vec3<u32>(arg_1.c.a.x, 0u, u_input.c) % vec3<u32>(32u))), _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(0i, -2147483647i, 21593i), _wgslsmith_add_vec3_i32(vec3<i32>(arg_1.a, 0i, -55102i), vec3<i32>(arg_1.a, u_input.d, arg_1.a))), max(_wgslsmith_add_vec3_i32(vec3<i32>(18185i, 38488i, u_input.d), var_0.zyx), vec3<i32>(var_0.x, arg_1.a, var_0.x)), countOneBits(vec3<i32>(var_0.x, 2147483647i, u_input.a)) >> (firstLeadingBit(vec3<u32>(4294967295u, u_input.c, u_input.b.x)) % vec3<u32>(32u)))), -_wgslsmith_div_i32(-1i, 1i), 33636i, _wgslsmith_clamp_i32(-17959i, _wgslsmith_add_i32(~(-u_input.d), i32(-1i) * -1i), -_wgslsmith_add_i32(var_0.x, -43382i) | func_3(arg_1, ~vec3<u32>(11437u, u_input.b.x, 9663u), _wgslsmith_f_op_vec4_f32(vec4<f32>(745f, arg_0.x, arg_0.x, arg_0.x) * arg_1.b), Struct_2(0i, arg_1.b, arg_1.c, arg_1.c))));
    var_0 = vec4<i32>(~(41091i >> (u_input.b.x % 32u)), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(u_input.a, -25842i), arg_1.a, -u_input.a), countOneBits(-vec3<i32>(2409i, var_0.x, 1i))), _wgslsmith_mod_i32(var_0.x, arg_1.a), -arg_1.a & u_input.a);
    let var_1 = vec3<bool>(true, true, true);
    var var_2 = _wgslsmith_mult_u32(_wgslsmith_mult_u32(1u, firstTrailingBit(~arg_1.c.a.x) & abs(arg_1.c.a.x)), u_input.c);
    return arg_1;
}

fn func_1() -> i32 {
    let var_0 = u_input.b;
    var var_1 = select(var_0, ~u_input.b, select(all(vec4<bool>(true, true, false, all(vec3<bool>(false, true, false)))), true, true));
    var var_2 = func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1599f, -296f, -818f, -2140f))) * vec4<f32>(-1018f, 1533f, -1000f, 165f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1696f, 1831f, -2093f, 251f)))))), Struct_2(-16234i, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(func_2(var_0.x < u_input.c)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(199f, -663f, -647f, -763f) + vec4<f32>(748f, 1477f, 1818f, 412f)) * _wgslsmith_div_vec4_f32(vec4<f32>(131f, 1000f, -752f, 967f), vec4<f32>(-1075f, -962f, -459f, 462f))))), Struct_1(~_wgslsmith_add_vec2_u32(var_0, var_0)), Struct_1(vec2<u32>(78190u, 106774u))));
    let var_3 = func_5(var_2.b, func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(296f, var_2.b.x, 288f, 1000f), _wgslsmith_f_op_vec4_f32(exp2(var_2.b))))), func_5(vec4<f32>(_wgslsmith_f_op_f32(-var_2.b.x), 711f, -1000f, _wgslsmith_f_op_f32(f32(-1f) * -359f)), Struct_2(_wgslsmith_div_i32(u_input.a, 41446i), vec4<f32>(var_2.b.x, 460f, var_2.b.x, -629f), var_2.d, Struct_1(vec2<u32>(0u, u_input.b.x)))))).c;
    var_1 = vec2<u32>(4359u, var_1.x);
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false != !all(vec4<bool>(true, true, true, true));
    var var_1 = _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(u_input.d, 39212i), 1i, -26055i) & reverseBits(vec3<i32>(u_input.d, u_input.a, 12273i)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, -37612i, 0i), vec3<i32>(-u_input.a, func_1(), 1i)), select(firstTrailingBit(vec3<i32>(1i, 1i, u_input.d) ^ vec3<i32>(u_input.d, -9303i, u_input.a)), vec3<i32>(u_input.a, u_input.a, ~u_input.a), false)), vec3<i32>(-1i, _wgslsmith_add_i32(-1i, -2147483647i), -(u_input.d ^ u_input.d)));
    var_1 = ~select(_wgslsmith_div_vec3_i32(select(vec3<i32>(u_input.a, u_input.a, u_input.d) << (vec3<u32>(0u, 0u, 41850u) % vec3<u32>(32u)), vec3<i32>(u_input.a, u_input.a, -11253i) & vec3<i32>(u_input.a, var_1.x, var_1.x), var_1.x <= u_input.a), vec3<i32>(-20370i, u_input.d, -1i)), _wgslsmith_mod_vec3_i32(~vec3<i32>(var_1.x, u_input.a, var_1.x), vec3<i32>(var_1.x, 1i, u_input.a)) & vec3<i32>(u_input.a, select(var_1.x, u_input.a, false), ~12750i), all(select(vec2<bool>(true, true), vec2<bool>(false, var_0), true)));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(309f)))), -1451f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-673f)))))), func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1525f, 1664f, 224f, 235f))), Struct_2(0i, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -415f), _wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(1000f * 1988f), -2027f), func_5(vec4<f32>(-1589f, -552f, -1074f, 268f), Struct_2(var_1.x, vec4<f32>(1000f, -922f, -387f, 450f), Struct_1(u_input.b), Struct_1(u_input.b))).d, Struct_1(vec2<u32>(12899u, 58650u)))).b.x);
    var var_3 = !select(vec3<bool>(true, true, true), select(!vec3<bool>(var_0, true, var_0), !vec3<bool>(var_0, var_0, true), var_0), !(!(!vec3<bool>(var_0, var_0, var_0))));
    let x = u_input.a;
    s_output = StorageBuffer(~(vec4<i32>(u_input.d, ~0i, u_input.d, i32(-1i) * -2147483647i) | ~select(vec4<i32>(var_1.x, u_input.d, 21152i, var_1.x), vec4<i32>(var_1.x, 15068i, var_1.x, 2147483647i), vec4<bool>(true, var_3.x, false, var_0))), 0u, var_2.x, var_2.xw, ~abs(u_input.b));
}

