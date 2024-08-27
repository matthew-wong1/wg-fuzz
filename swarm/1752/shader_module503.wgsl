struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 4>;

var<private> global1: array<vec3<bool>, 13> = array<vec3<bool>, 13>(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<i32>) -> i32 {
    global1 = array<vec3<bool>, 13>();
    let var_0 = u_input.a;
    global0 = array<f32, 4>();
    global0 = array<f32, 4>();
    global0 = array<f32, 4>();
    return firstLeadingBit(arg_0.x);
}

fn func_4(arg_0: i32, arg_1: vec3<u32>) -> vec4<i32> {
    var var_0 = Struct_1(248f, _wgslsmith_sub_vec4_i32(abs(_wgslsmith_mod_vec4_i32(vec4<i32>(-35725i, arg_0, u_input.a.x, -34486i), _wgslsmith_div_vec4_i32(vec4<i32>(-1i, -35945i, u_input.a.x, 0i), vec4<i32>(-44984i, u_input.a.x, arg_0, u_input.a.x)))), (max(vec4<i32>(arg_0, u_input.a.x, -34904i, arg_0), vec4<i32>(-15278i, u_input.a.x, u_input.a.x, 0i)) >> (~vec4<u32>(arg_1.x, arg_1.x, 4294967295u, 4294967295u) % vec4<u32>(32u))) & vec4<i32>(2147483647i, _wgslsmith_mod_i32(u_input.a.x, 2147483647i), 1634i, ~9803i)), vec4<i32>(select(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a.x, -40945i, 2147483647i, 1i), vec4<i32>(-24183i, arg_0, -2147483647i, arg_0)), ~(-arg_0), all(vec2<bool>(true, false))), firstLeadingBit(u_input.a.x), ~arg_0 & _wgslsmith_mult_i32(-1i, u_input.a.x), ~4131i));
    var var_1 = vec3<i32>(~11748i, var_0.b.x, _wgslsmith_mult_i32(u_input.a.x, (u_input.a.x >> (arg_1.x % 32u)) >> (55345u % 32u)));
    let var_2 = vec2<i32>(0i, 22895i);
    var_0 = Struct_1(_wgslsmith_div_f32(var_0.a, var_0.a), _wgslsmith_mult_vec4_i32(vec4<i32>(var_0.c.x, ~(-arg_0), (var_1.x ^ -29151i) ^ ~var_2.x, ~(var_2.x | u_input.a.x)), countOneBits(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, u_input.a.x, -2147483647i, -2147483647i), vec4<i32>(62440i, var_1.x, var_1.x, var_0.b.x)), ~var_0.c.x, _wgslsmith_mult_i32(arg_0, 0i), -var_1.x))), countOneBits(var_0.c));
    let var_3 = any(select(!(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), true)), !vec4<bool>(true, false, true, all(vec4<bool>(false, true, false, false))), vec4<bool>(any(select(vec3<bool>(false, true, true), global1[_wgslsmith_index_u32(arg_1.x, 13u)], vec3<bool>(false, false, false))), true, true, any(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), false)))));
    return ~countOneBits(var_0.c);
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: f32) -> vec2<u32> {
    let var_0 = arg_1;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_2)) + global0[_wgslsmith_index_u32(~1u, 4u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_2, 2415f)) * arg_2)))), func_4(select(4231i, _wgslsmith_mod_i32(func_3(vec2<i32>(u_input.a.x, u_input.a.x)), u_input.a.x), arg_1), vec3<u32>(4294967295u, 4294967295u | firstTrailingBit(47558u), arg_0)), firstTrailingBit(countOneBits(vec4<i32>(u_input.a.x, -25888i, 1i, u_input.a.x ^ u_input.a.x))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(-158f - 607f), arg_0 != 19305u)), 1767f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2454f)) - 516f), var_1.a, _wgslsmith_f_op_f32(step(511f, -1004f))));
    var var_3 = _wgslsmith_dot_vec4_i32(~vec4<i32>(func_4(-2147483647i, vec3<u32>(8030u, 100084u, 73929u)).x << (max(12211u, 19958u) % 32u), 0i | firstTrailingBit(u_input.a.x), _wgslsmith_clamp_i32(-21666i & var_1.b.x, u_input.a.x, ~(-9928i)), ~(u_input.a.x ^ var_1.c.x)), _wgslsmith_mult_vec4_i32(var_1.b, var_1.c));
    let var_4 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-1000f)))))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-var_2.x))))), vec4<i32>(-1i, _wgslsmith_clamp_i32(-2147483647i, _wgslsmith_mod_i32(2147483647i, u_input.a.x), u_input.a.x), ~_wgslsmith_clamp_i32(var_1.b.x, u_input.a.x, -1i) ^ ~var_1.b.x, firstTrailingBit(~_wgslsmith_dot_vec4_i32(var_1.c, vec4<i32>(32423i, u_input.a.x, 15947i, var_1.b.x)))), min(abs(abs(reverseBits(var_1.c))), var_1.b));
    return ~_wgslsmith_sub_vec2_u32(vec2<u32>((arg_0 << (0u % 32u)) >> (~2649u % 32u), ~arg_0), _wgslsmith_mod_vec2_u32(min(vec2<u32>(arg_0, arg_0), select(vec2<u32>(arg_0, 4294967295u), vec2<u32>(0u, 11977u), arg_1)), vec2<u32>(_wgslsmith_div_u32(4294967295u, 4294967295u), ~14196u)));
}

fn func_1() -> Struct_2 {
    global0 = array<f32, 4>();
    var var_0 = Struct_2(vec4<u32>(abs(min(_wgslsmith_div_u32(60402u, 62654u), 82377u)), 0u, ~(~1u), 1u ^ ~firstTrailingBit(85869u)), ~(~func_2(select(4294967295u, 1u, false), true, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(1u, 4u)], 1618f))), Struct_1(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(~(~38634u), 4u)])), firstTrailingBit(func_4(func_3(u_input.a.zy), vec3<u32>(1u, 1u, 1u))), func_4(reverseBits(_wgslsmith_sub_i32(u_input.a.x, 2147483647i)), ~(~vec3<u32>(20674u, 1u, 33598u)))), -1i, Struct_1(-562f, vec4<i32>(~u_input.a.x, -2147483647i, max(~(-1i), u_input.a.x), _wgslsmith_add_i32(i32(-1i) * -20272i, u_input.a.x)), -max(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 2147483647i), min(vec4<i32>(-1i, u_input.a.x, u_input.a.x, 0i), vec4<i32>(u_input.a.x, -108209i, u_input.a.x, u_input.a.x)))));
    var var_1 = Struct_2(max(~vec4<u32>(var_0.a.x, 7441u, 4294967295u, 12160u), select(~vec4<u32>(17659u, 0u, 21568u, 4294967295u), abs(var_0.a), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false)))) | _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(40659u, 92004u, var_0.b.x, var_0.a.x), _wgslsmith_sub_vec4_u32(var_0.a, vec4<u32>(38955u, var_0.a.x, var_0.a.x, var_0.a.x))), var_0.a), abs(vec2<u32>(~var_0.a.x, 55260u & var_0.a.x)) | min(~abs(var_0.b), ~vec2<u32>(var_0.b.x, var_0.b.x)), var_0.c, -82307i, Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-554f - _wgslsmith_f_op_f32(f32(-1f) * -154f)))), vec4<i32>(2147483647i, abs(31076i), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(u_input.a.x, var_0.e.b.x, 2147483647i)), u_input.a << (vec3<u32>(67111u, var_0.b.x, 0u) % vec3<u32>(32u))), min(min(u_input.a.x, u_input.a.x), func_3(vec2<i32>(var_0.e.b.x, -45526i)))), _wgslsmith_mult_vec4_i32(var_0.c.c, var_0.e.c)));
    let var_2 = reverseBits(var_1.b);
    var var_3 = vec2<u32>(_wgslsmith_div_u32(select(~12561u, 20333u, true), var_1.b.x), abs(var_1.a.x));
    return Struct_2(vec4<u32>(_wgslsmith_mult_u32(var_1.a.x, (0u >> (var_1.a.x % 32u)) >> (~11218u % 32u)), 4294967295u, ~var_3.x, ~_wgslsmith_mod_u32(33444u, 14468u & var_2.x)), select(var_1.b, ~abs(var_1.a.yz), !(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)))), Struct_1(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(87557u, 4u)], _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.c.a))), any(select(global1[_wgslsmith_index_u32(0u, 13u)], vec3<bool>(true, false, false), true)))), _wgslsmith_sub_vec4_i32(var_0.c.b, reverseBits(vec4<i32>(var_0.c.c.x, u_input.a.x, var_1.c.c.x, 1i))), vec4<i32>(_wgslsmith_mult_i32(u_input.a.x, -78290i), _wgslsmith_dot_vec2_i32(var_0.c.b.xw, var_0.e.c.yz), -(~(-14353i)), var_0.c.c.x >> (~4294967295u % 32u))), _wgslsmith_div_i32(7409i, reverseBits(u_input.a.x) & func_3(vec2<i32>(var_0.e.c.x, u_input.a.x) << (var_0.b % vec2<u32>(32u)))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.c.a)) - -300f), var_0.c.c, -_wgslsmith_clamp_vec4_i32(vec4<i32>(-49811i, var_1.d, 11992i, var_0.e.c.x), vec4<i32>(6281i, -1706i, 2147483647i, var_0.d), _wgslsmith_sub_vec4_i32(vec4<i32>(var_1.c.b.x, 67018i, var_0.c.b.x, u_input.a.x), var_1.c.b))));
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: i32, arg_3: bool) -> i32 {
    let var_0 = ~(~(~_wgslsmith_sub_u32(_wgslsmith_div_u32(9149u, 86028u), arg_1.b.x)));
    var var_1 = false;
    global0 = array<f32, 4>();
    var_1 = reverseBits(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.b.x, arg_1.a.x, arg_0.x), arg_1.a.yzx))) != arg_1.b.x;
    var var_2 = func_1();
    return ~countOneBits(select(arg_2, select(0i, arg_2, arg_3 & true), any(select(vec4<bool>(arg_3, arg_3, false, arg_3), vec4<bool>(arg_3, false, true, arg_3), true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(-u_input.a.x, func_5(select(firstLeadingBit(~vec2<u32>(4294967295u, 4294967295u)), ~max(vec2<u32>(21163u, 78138u), vec2<u32>(75258u, 2783u)), false), func_1(), _wgslsmith_mod_i32(u_input.a.x, u_input.a.x), !any(vec4<bool>(true, false, false, true))), u_input.a.x, ~u_input.a.x);
    let var_1 = func_1().c;
    let var_2 = countOneBits(-var_1.c);
    let var_3 = -263f;
    global1 = array<vec3<bool>, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(4212u, 1010f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(30192u, 4u)]), ~_wgslsmith_mod_vec4_u32(select(select(vec4<u32>(16506u, 4294967295u, 0u, 68323u), vec4<u32>(10350u, 4294967295u, 1u, 4294967295u), vec4<bool>(true, false, false, true)), ~vec4<u32>(1u, 13185u, 1u, 0u), false), vec4<u32>(~58398u, 1u, 0u, countOneBits(101158u))));
}

