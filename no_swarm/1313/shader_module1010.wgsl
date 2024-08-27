struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: i32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: vec3<i32>,
    d: bool,
    e: vec2<i32>,
}

struct Struct_5 {
    a: u32,
    b: Struct_2,
    c: f32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 15> = array<bool, 15>(false, false, true, true, true, false, false, true, true, false, true, true, true, true, false);

var<private> global1: array<bool, 25>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: vec4<bool>) -> i32 {
    var var_0 = any(select(vec3<bool>(any(!arg_2.wzy), all(vec3<bool>(false, false, true)), true), select(!(!arg_2.wyw), select(vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 15u)], global0[_wgslsmith_index_u32(u_input.c, 15u)]), !arg_2.wwz, vec3<bool>(false, true, true)), u_input.d < ~(-1i)), false));
    let var_1 = !(!(!arg_2));
    var var_2 = arg_1.a;
    let var_3 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(var_2.b.x * arg_1.c.a), -758f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_1.b.a, arg_1.b.a))), -656f), _wgslsmith_f_op_f32(-var_2.a))));
    global0 = array<bool, 15>();
    return _wgslsmith_mod_i32(_wgslsmith_div_i32(_wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.d & -42371i, ~u_input.e.x), ~arg_1.c.c), select(firstTrailingBit(arg_1.d), _wgslsmith_mod_i32(15608i, 2147483647i), var_1.x)), var_2.c);
}

fn func_4(arg_0: i32) -> i32 {
    let var_0 = max(_wgslsmith_sub_vec4_u32(~vec4<u32>(~u_input.a.x, u_input.a.x, u_input.c, firstLeadingBit(0u)), firstLeadingBit(vec4<u32>(u_input.a.x | u_input.c, ~0u, countOneBits(u_input.b), ~35355u))), vec4<u32>(u_input.c, min(firstTrailingBit(firstTrailingBit(1093u)), abs(u_input.c)), u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c | 4294967295u, _wgslsmith_mod_u32(u_input.b, 109235u), _wgslsmith_sub_u32(0u, u_input.a.x)), select(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, u_input.a.x, 19919u), vec3<u32>(1u, u_input.a.x, 47948u)), ~vec3<u32>(0u, 1u, 14770u), any(vec3<bool>(global0[_wgslsmith_index_u32(9121u, 15u)], true, global0[_wgslsmith_index_u32(1u, 15u)]))))));
    var var_1 = var_0.x;
    var var_2 = Struct_4(firstLeadingBit(-firstTrailingBit(min(u_input.e, u_input.e))), vec2<bool>(any(vec3<bool>(true, true, true)), any(select(select(vec4<bool>(false, global1[_wgslsmith_index_u32(53535u, 25u)], global0[_wgslsmith_index_u32(var_0.x, 15u)], global1[_wgslsmith_index_u32(u_input.c, 25u)]), vec4<bool>(global1[_wgslsmith_index_u32(11342u, 25u)], false, false, false), true), select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 25u)], false, global1[_wgslsmith_index_u32(var_0.x, 25u)], global0[_wgslsmith_index_u32(var_0.x, 15u)]), vec4<bool>(global0[_wgslsmith_index_u32(var_0.x, 15u)], global1[_wgslsmith_index_u32(2566u, 25u)], global0[_wgslsmith_index_u32(var_0.x, 15u)], global1[_wgslsmith_index_u32(u_input.a.x, 25u)]), vec4<bool>(global0[_wgslsmith_index_u32(var_0.x, 15u)], true, true, global0[_wgslsmith_index_u32(1u, 15u)])), true))), (-vec3<i32>(arg_0, u_input.d, arg_0) & -_wgslsmith_add_vec3_i32(vec3<i32>(44773i, arg_0, u_input.e.x), vec3<i32>(11979i, 1i, arg_0))) | (min(select(vec3<i32>(-39154i, arg_0, 0i), vec3<i32>(1i, arg_0, -39787i), vec3<bool>(global0[_wgslsmith_index_u32(21379u, 15u)], false, false)), vec3<i32>(u_input.d, -42292i, u_input.d) << (var_0.xwx % vec3<u32>(32u))) ^ vec3<i32>(~0i, firstTrailingBit(u_input.d), abs(-1i))), any(select(vec4<bool>(global1[_wgslsmith_index_u32(var_0.x, 25u)], global1[_wgslsmith_index_u32(42513u, 25u)], global0[_wgslsmith_index_u32(var_0.x, 15u)], global1[_wgslsmith_index_u32(4294967295u, 25u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 25u)], global1[_wgslsmith_index_u32(10833u, 25u)], true, global1[_wgslsmith_index_u32(var_0.x, 25u)]), vec4<bool>(true, true, true, global0[_wgslsmith_index_u32(4294967295u, 15u)]), global0[_wgslsmith_index_u32(var_0.x, 15u)]), true)) & global1[_wgslsmith_index_u32(var_0.x, 25u)], -u_input.e);
    var_2 = Struct_4(_wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_add_i32(-23423i, arg_0), -2147483647i >> (0u % 32u)), firstLeadingBit(arg_0)), _wgslsmith_sub_vec2_i32(u_input.e, min(vec2<i32>(u_input.e.x, 0i) | var_2.c.zz, vec2<i32>(2147483647i, -1i)))), var_2.b, vec3<i32>(min(1i, _wgslsmith_mod_i32(_wgslsmith_sub_i32(0i, var_2.e.x), _wgslsmith_dot_vec3_i32(var_2.c, var_2.c))), -2147483647i, _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(u_input.d, 114i, 19166i, 2147483647i)), vec4<i32>(u_input.e.x, 18184i, u_input.e.x, 13076i) << ((var_0 << (vec4<u32>(u_input.c, u_input.b, var_0.x, 24862u) % vec4<u32>(32u))) % vec4<u32>(32u)))), !var_2.d, -select(vec2<i32>(u_input.e.x, arg_0), ~reverseBits(u_input.e), !global1[_wgslsmith_index_u32(~u_input.c, 25u)]));
    var var_3 = vec2<u32>(_wgslsmith_mult_u32(u_input.a.x, _wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.a.x, 4294967295u) << (~u_input.c % 32u), ~(~var_0.x))), 0u);
    return max(func_3(vec2<u32>(35820u, _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, var_3.x, var_0.x, 9762u), select(var_0, var_0, global0[_wgslsmith_index_u32(u_input.b, 15u)]))), Struct_2(Struct_1(-346f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1210f, -196f)), _wgslsmith_clamp_i32(arg_0, u_input.e.x, -9961i), var_0.yyy), Struct_1(_wgslsmith_f_op_f32(-529f * -816f), _wgslsmith_f_op_vec2_f32(vec2<f32>(680f, -1000f) * vec2<f32>(-1118f, -406f)), 1i, vec3<u32>(27629u, u_input.c, 0u)), Struct_1(-1667f, _wgslsmith_div_vec2_f32(vec2<f32>(-1370f, -1053f), vec2<f32>(-291f, 450f)), abs(arg_0), var_0.yyx), _wgslsmith_dot_vec3_i32(var_2.c ^ var_2.c, vec3<i32>(var_2.a.x, u_input.e.x, -1i))), select(select(vec4<bool>(global0[_wgslsmith_index_u32(var_0.x, 15u)], global1[_wgslsmith_index_u32(var_0.x, 25u)], global1[_wgslsmith_index_u32(31695u, 25u)], var_2.b.x), !vec4<bool>(true, var_2.b.x, global0[_wgslsmith_index_u32(var_0.x, 15u)], global0[_wgslsmith_index_u32(27187u, 15u)]), all(vec3<bool>(false, true, false))), select(!vec4<bool>(true, var_2.b.x, false, global0[_wgslsmith_index_u32(10098u, 15u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 15u)], global0[_wgslsmith_index_u32(10898u, 15u)], false), select(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.b, 25u)], var_2.d, false), vec4<bool>(global1[_wgslsmith_index_u32(var_0.x, 25u)], true, true, global1[_wgslsmith_index_u32(var_0.x, 25u)]), false)), _wgslsmith_f_op_f32(-1000f * 217f) != _wgslsmith_f_op_f32(ceil(-134f)))), -2147483647i);
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<bool>, arg_2: bool, arg_3: i32) -> vec2<u32> {
    let var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-833f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-403f + -1000f))))) - 1000f);
    var var_2 = vec3<i32>(max(~select(arg_0.x, arg_3 & 2147483647i, global1[_wgslsmith_index_u32(~4294967295u, 25u)]), func_4(func_3(~u_input.a, Struct_2(Struct_1(130f, vec2<f32>(130f, 808f), -2080i, vec3<u32>(u_input.c, u_input.a.x, u_input.b)), Struct_1(-2337f, vec2<f32>(1279f, -320f), 1i, vec3<u32>(0u, u_input.c, 4294967295u)), Struct_1(948f, vec2<f32>(175f, 1000f), 2147483647i, vec3<u32>(4294967295u, u_input.c, 0u)), arg_3), select(vec4<bool>(false, true, global0[_wgslsmith_index_u32(33841u, 15u)], arg_2), vec4<bool>(true, arg_2, arg_1.x, global0[_wgslsmith_index_u32(0u, 15u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 25u)], var_0.x, global0[_wgslsmith_index_u32(u_input.a.x, 15u)]))))), firstLeadingBit(2147483647i), select(1i, firstTrailingBit(_wgslsmith_mod_i32(-18176i, -1458i)), global1[_wgslsmith_index_u32(u_input.c, 25u)]));
    let var_3 = _wgslsmith_div_i32(0i ^ ~(~arg_3 | ~arg_3), u_input.d);
    var_1 = -1109f;
    return ~vec2<u32>(u_input.b, 1u);
}

fn func_1() -> Struct_1 {
    global0 = array<bool, 15>();
    var var_0 = ~_wgslsmith_mod_vec2_u32(~func_2(vec4<i32>(47067i, u_input.d, u_input.d, u_input.d) >> (vec4<u32>(0u, 4294967295u, 19449u, 14524u) % vec4<u32>(32u)), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 15u)], false), all(vec3<bool>(true, true, false)), ~u_input.d), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(12025u, 21555u), u_input.a, u_input.a));
    var_0 = _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.a, ~u_input.a), vec2<u32>(50309u, u_input.c));
    let var_1 = Struct_5(0u, Struct_2(Struct_1(_wgslsmith_f_op_f32(-754f + _wgslsmith_f_op_f32(round(305f))), vec2<f32>(-1399f, _wgslsmith_div_f32(-1083f, 1000f)), func_3(vec2<u32>(40989u, 30941u), Struct_2(Struct_1(-1000f, vec2<f32>(723f, -575f), -8746i, vec3<u32>(2713u, 1u, var_0.x)), Struct_1(-2007f, vec2<f32>(818f, 450f), -21440i, vec3<u32>(u_input.a.x, 0u, 1u)), Struct_1(531f, vec2<f32>(-1022f, -1261f), u_input.d, vec3<u32>(4104u, var_0.x, var_0.x)), 0i), vec4<bool>(global1[_wgslsmith_index_u32(var_0.x, 25u)], global1[_wgslsmith_index_u32(u_input.c, 25u)], global1[_wgslsmith_index_u32(4294967295u, 25u)], global1[_wgslsmith_index_u32(var_0.x, 25u)])), _wgslsmith_add_vec3_u32(abs(vec3<u32>(var_0.x, u_input.c, var_0.x)), vec3<u32>(u_input.c, u_input.a.x, 1u) | vec3<u32>(u_input.b, 5826u, u_input.c))), Struct_1(-756f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1485f, 194f) + vec2<f32>(2373f, 1162f)) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-530f, 625f)))), u_input.e.x, vec3<u32>(~38395u, u_input.b, countOneBits(1u))), Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(973f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-500f, 596f)) + vec2<f32>(280f, -841f)), firstLeadingBit(~(-3727i)), vec3<u32>(var_0.x, countOneBits(1u), _wgslsmith_clamp_u32(u_input.c, u_input.c, u_input.c))), 26583i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-795f)), _wgslsmith_f_op_f32(select(-231f, -984f, true)), true)))), vec3<i32>(func_4(0i), -1i, -2147483647i));
    let var_2 = var_1.b;
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = min(_wgslsmith_mult_i32(max(1i, ~(-1i)), min(var_0.c, ~var_0.c)), var_0.c) & 1i;
    var_0 = Struct_1(_wgslsmith_f_op_f32(round(2615f)), vec2<f32>(_wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-2489f))))), 1979f), var_0.c, ~vec3<u32>(u_input.b, var_0.d.x, 106998u));
    let var_2 = !select(select(!select(vec4<bool>(global1[_wgslsmith_index_u32(var_0.d.x, 25u)], true, true, global1[_wgslsmith_index_u32(80198u, 25u)]), vec4<bool>(global1[_wgslsmith_index_u32(var_0.d.x, 25u)], global0[_wgslsmith_index_u32(var_0.d.x, 15u)], false, global0[_wgslsmith_index_u32(0u, 15u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 15u)], false, global1[_wgslsmith_index_u32(u_input.a.x, 25u)], false)), !vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 25u)], true, global0[_wgslsmith_index_u32(u_input.b, 15u)], false), true), vec4<bool>(true, false, any(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.b, 25u)], true, true)), any(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 15u)], global0[_wgslsmith_index_u32(var_0.d.x, 15u)], true))), select(vec4<bool>(true, !global1[_wgslsmith_index_u32(10276u, 25u)], global0[_wgslsmith_index_u32(~var_0.d.x, 15u)], select(true, global0[_wgslsmith_index_u32(var_0.d.x, 15u)], global0[_wgslsmith_index_u32(var_0.d.x, 15u)])), select(select(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.c, 25u)], global0[_wgslsmith_index_u32(51911u, 15u)], false), vec4<bool>(global1[_wgslsmith_index_u32(var_0.d.x, 25u)], global0[_wgslsmith_index_u32(1u, 15u)], global0[_wgslsmith_index_u32(u_input.c, 15u)], false), true), !vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.b, 25u)], global0[_wgslsmith_index_u32(u_input.a.x, 15u)], global0[_wgslsmith_index_u32(0u, 15u)]), select(vec4<bool>(global0[_wgslsmith_index_u32(var_0.d.x, 15u)], global0[_wgslsmith_index_u32(0u, 15u)], global1[_wgslsmith_index_u32(1u, 25u)], global0[_wgslsmith_index_u32(4294967295u, 15u)]), vec4<bool>(global0[_wgslsmith_index_u32(64485u, 15u)], false, global0[_wgslsmith_index_u32(56592u, 15u)], global1[_wgslsmith_index_u32(4294967295u, 25u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 25u)], true, false, global1[_wgslsmith_index_u32(var_0.d.x, 25u)]))), global1[_wgslsmith_index_u32(var_0.d.x, 25u)]));
    let var_3 = _wgslsmith_clamp_vec2_u32(var_0.d.yz, var_0.d.xx, vec2<u32>(var_0.d.x, ~(~var_0.d.x)));
    let var_4 = select(!vec2<bool>(true || select(true, global0[_wgslsmith_index_u32(var_3.x, 15u)], global1[_wgslsmith_index_u32(55713u, 25u)]), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(var_0.d.x, abs(var_0.d.x)), 25u)]), select(vec2<bool>(true, true), var_2.xw, vec2<bool>(true, true)), vec2<bool>(!global1[_wgslsmith_index_u32(~0u, 25u)], var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * var_0.b.x))))), ~vec4<u32>(1u, min(u_input.b, var_0.d.x), 1u, _wgslsmith_add_u32(var_3.x, 4294967295u)) >> (vec4<u32>(0u, ~1u, u_input.c, (u_input.a.x ^ 0u) | reverseBits(u_input.a.x)) % vec4<u32>(32u)), u_input.e.x);
}

