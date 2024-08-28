struct Struct_1 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<bool>, arg_1: u32, arg_2: Struct_2) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-789f, arg_2.b, 975f, arg_2.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1081f, 580f, arg_2.b, arg_2.b))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_2.a, 2932f, -523f, -1453f))))) - vec4<f32>(-783f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_2.a - 1197f), _wgslsmith_f_op_f32(-arg_2.a), select(true, arg_2.c.a.x, false))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -498f))), _wgslsmith_f_op_f32(arg_2.a + _wgslsmith_f_op_f32(-arg_2.b))))));
    var var_1 = arg_2.c.a.zx;
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -154f);
    var_1 = arg_2.c.a.xx;
    var_1 = arg_2.c.a.xy;
    return select(vec2<bool>(true, arg_0.x), !select(vec2<bool>(arg_2.c.a.x | var_1.x, arg_0.x), vec2<bool>(true, true), false), arg_2.c.a.yy);
}

fn func_2() -> vec2<u32> {
    let var_0 = all(!select(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), false), vec4<bool>(true, true, true, true), true));
    var var_1 = select(!(!select(select(vec2<bool>(var_0, true), vec2<bool>(false, var_0), vec2<bool>(true, var_0)), !vec2<bool>(true, var_0), true)), select(func_3(select(select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, false), vec2<bool>(true, var_0)), vec2<bool>(var_0, true), false), u_input.c, Struct_2(_wgslsmith_f_op_f32(sign(1000f)), 486f, Struct_1(vec3<bool>(false, var_0, false), u_input.b.x))), vec2<bool>(true, !var_0), vec2<bool>(var_0, var_0)), var_0);
    var_1 = !vec2<bool>(all(select(!vec4<bool>(false, var_1.x, false, var_1.x), !vec4<bool>(true, var_0, var_0, var_1.x), vec4<bool>(var_0, var_1.x, var_1.x, true))), var_1.x);
    var_1 = func_3(!vec2<bool>(!(u_input.e <= 17538i), true), 5225u, Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(471f, -245f, var_1.x)) - _wgslsmith_f_op_f32(f32(-1f) * -132f)))), _wgslsmith_f_op_f32(sign(-118f)), Struct_1(vec3<bool>(true != var_1.x, all(vec3<bool>(true, var_0, var_0)), var_1.x), countOneBits(u_input.b.x))));
    var_1 = !select(!func_3(!vec2<bool>(false, var_1.x), u_input.c, Struct_2(613f, -1374f, Struct_1(vec3<bool>(var_0, var_0, var_0), 44219i))), !vec2<bool>(var_0, var_1.x), true);
    return u_input.a;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>) -> Struct_1 {
    var var_0 = firstTrailingBit(~(~(~vec3<u32>(u_input.d, u_input.a.x, 20343u)))) >> (abs(vec3<u32>(_wgslsmith_mult_u32(38348u, 1u) >> (1u % 32u), reverseBits(reverseBits(arg_1.x)), arg_1.x)) % vec3<u32>(32u));
    let var_1 = !select(arg_0.a, select(!select(vec3<bool>(arg_0.a.x, arg_0.a.x, true), arg_0.a, arg_0.a.x), vec3<bool>(true, any(arg_0.a.xy), all(arg_0.a)), !select(vec3<bool>(true, arg_0.a.x, arg_0.a.x), vec3<bool>(arg_0.a.x, false, arg_0.a.x), vec3<bool>(arg_0.a.x, false, arg_0.a.x))), !select(vec3<bool>(true, true, arg_0.a.x), !vec3<bool>(arg_0.a.x, false, true), !arg_0.a));
    let var_2 = reverseBits(vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(58389u, select(u_input.d, u_input.a.x, false)), 28983u, _wgslsmith_div_u32(~0u, _wgslsmith_clamp_u32(u_input.c, 31551u, arg_1.x))), _wgslsmith_mod_u32(var_0.x, arg_1.x >> (27036u % 32u)), var_0.x, ~_wgslsmith_mult_u32(arg_1.x, u_input.c) >> (~var_0.x % 32u)));
    var_0 = vec3<u32>(~(~u_input.a.x), 1u, 1884u);
    var_0 = abs(vec3<u32>(30627u, u_input.c, max(~_wgslsmith_clamp_u32(1u, 13533u, 17070u), var_0.x)));
    return arg_0;
}

fn func_5(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = Struct_1(vec3<bool>(arg_0.a.x & true, false, !all(vec4<bool>(true, false, true, false))), func_4(func_4(Struct_1(!arg_0.a, max(287i, u_input.e)), ~vec2<u32>(u_input.c, u_input.c)), reverseBits(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, 1u), _wgslsmith_mod_vec2_u32(u_input.a, u_input.a)))).b);
    var_0 = arg_0;
    var_0 = Struct_1(func_4(Struct_1(vec3<bool>(true & arg_0.a.x, true, true), var_0.b | (u_input.e & -32363i)), _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(u_input.a.x, 1600u), 1u), _wgslsmith_mult_vec2_u32(min(vec2<u32>(0u, u_input.a.x), vec2<u32>(4294967295u, 1u)), ~u_input.a), vec2<u32>(u_input.c << (86485u % 32u), ~46646u))).a, -12472i ^ ~(var_0.b ^ (u_input.e & arg_0.b)));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -928f);
    let var_2 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1280f + 598f) * 312f), -546f), -484f, Struct_1(select(var_0.a, !vec3<bool>(arg_0.a.x, arg_0.a.x, var_0.a.x), func_4(Struct_1(var_0.a, u_input.b.x), abs(vec2<u32>(u_input.c, u_input.a.x))).a), 10150i));
    return ~vec4<u32>(min(23028u, u_input.a.x), 4294967295u, firstLeadingBit(firstTrailingBit(func_2().x)), ~1u);
}

fn func_6(arg_0: vec4<u32>) -> Struct_1 {
    return func_4(func_4(Struct_1(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), u_input.b.x ^ u_input.e), func_2()), ~_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(arg_0.x, arg_0.x), arg_0.x ^ u_input.d), vec2<u32>(u_input.c, u_input.a.x)));
}

fn func_1() -> f32 {
    let var_0 = u_input.b.x;
    let var_1 = func_6(func_5(func_4(Struct_1(vec3<bool>(false, false, true), -15677i), func_2())));
    let var_2 = var_1;
    let var_3 = reverseBits(countOneBits(~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(0u, 97677u, 4294967295u), vec3<u32>(u_input.a.x, u_input.d, 20527u))) & _wgslsmith_clamp_vec3_u32(vec3<u32>(~30157u, ~u_input.c, 50966u), _wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.c, 50018u, u_input.c), vec3<u32>(u_input.a.x, 34716u, 4294967295u), vec3<u32>(88109u, u_input.a.x, u_input.d)), _wgslsmith_div_vec3_u32(~vec3<u32>(u_input.c, 50788u, u_input.a.x), vec3<u32>(u_input.c, 4294967295u, u_input.a.x) ^ vec3<u32>(1u, 40388u, u_input.d))));
    var var_4 = abs(_wgslsmith_clamp_vec3_i32(u_input.b, countOneBits(-reverseBits(u_input.b)), _wgslsmith_mult_vec3_i32(abs(vec3<i32>(-34647i, var_1.b, 1i) ^ vec3<i32>(-31646i, -69958i, var_2.b)), max(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, -2461i, 44174i), vec3<i32>(16338i, 0i, var_2.b)), _wgslsmith_add_vec3_i32(u_input.b, vec3<i32>(-2147483647i, -2147483647i, var_0))))));
    return -795f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1()), -408f)), -422f)));
    var var_1 = ~vec4<u32>(u_input.d, 4294967295u, u_input.a.x, ~max(1u, _wgslsmith_div_u32(1u, u_input.c)));
    let var_2 = vec4<i32>(u_input.e, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(countOneBits(~u_input.b.zx), _wgslsmith_mult_vec2_i32(~u_input.b.yx, u_input.b.xx)), select(abs(-2147483647i), -16677i, true)), min(-_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.b.x, u_input.b.x, 2147483647i), u_input.b), u_input.e), u_input.e);
    let var_3 = Struct_1(func_6(~vec4<u32>(reverseBits(u_input.d), abs(0u), 1u, var_1.x)).a, firstLeadingBit(_wgslsmith_sub_i32(~(~var_2.x), _wgslsmith_mod_i32(-47288i, max(12647i, var_2.x)))));
    var_1 = vec4<u32>(20357u, select(68292u, 0u, var_3.a.x), 70526u | _wgslsmith_mod_u32(var_1.x, 0u << (_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, var_1.x, 8725u), var_1.wwx) % 32u)), 4294967295u);
    var_1 = ~max(min(vec4<u32>(abs(4536u), reverseBits(u_input.c), func_2().x, firstTrailingBit(var_1.x)), vec4<u32>(abs(var_1.x), 50873u, _wgslsmith_mult_u32(var_1.x, 52180u), ~46802u)), ~(~vec4<u32>(1u, 78691u, u_input.a.x, 4294967295u)) & ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, 23749u, 39395u, 54447u), vec4<u32>(0u, 24186u, 4294967295u, u_input.a.x)));
    var_1 = vec4<u32>(22612u, func_2().x, 0u, func_2().x);
    var var_4 = !(!(!select(select(vec4<bool>(var_3.a.x, var_3.a.x, true, var_3.a.x), vec4<bool>(var_3.a.x, true, false, true), vec4<bool>(false, false, false, false)), !vec4<bool>(var_3.a.x, var_3.a.x, var_3.a.x, var_3.a.x), true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(658f, -165f, var_0.x, 1531f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 110f, var_0.x, -652f) * vec4<f32>(var_0.x, -1214f, var_0.x, -2797f)), vec4<bool>(var_4.x, var_4.x, var_3.a.x, var_4.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -374f, var_0.x, 1693f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, -565f, 255f) + vec4<f32>(247f, var_0.x, 1530f, 118f))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(683f, -649f, var_0.x, 1474f) - vec4<f32>(272f, var_0.x, var_0.x, var_0.x)), vec4<f32>(var_0.x, -252f, var_0.x, -1000f)))), reverseBits(-3504i) > u_input.b.x)), -902f);
}

