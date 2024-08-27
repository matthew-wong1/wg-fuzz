struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: bool, arg_3: Struct_1) -> vec4<u32> {
    let var_0 = Struct_1(arg_0.c.x, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(-112f, arg_3.b.x, _wgslsmith_f_op_f32(arg_0.b.x - arg_3.b.x), _wgslsmith_f_op_f32(round(arg_3.b.x))), arg_3.b))), arg_3.c, arg_0.c.zxx, false);
    var var_1 = 17427i;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(207f))))));
    var_1 = _wgslsmith_dot_vec2_i32(arg_1, -min(vec2<i32>(2147483647i, arg_1.x) << (var_0.d.zx % vec2<u32>(32u)), arg_1));
    var_2 = var_0.b.x;
    return ~countOneBits(vec4<u32>(arg_3.d.x, reverseBits(arg_3.c.x), _wgslsmith_mod_u32(1u, arg_0.d.x), 16506u));
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    let var_0 = arg_2;
    let var_1 = Struct_1(~min(~arg_2.c.x, 4294967295u), _wgslsmith_f_op_vec4_f32(var_0.b + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1022f, arg_3.b.x, var_0.b.x, 1353f))), vec4<f32>(-307f, -2524f, arg_2.b.x, -1092f))), _wgslsmith_f_op_vec4_f32(arg_2.b - vec4<f32>(arg_3.b.x, -1383f, 1441f, -1327f)))), abs(_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(arg_3.c, arg_2.c, arg_3.c), ~arg_3.c)) >> (arg_3.c % vec4<u32>(32u)), ~vec3<u32>(arg_3.c.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 0u, 1u), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_3.d.x, arg_3.d.x, 13812u), vec3<u32>(55801u, arg_3.a, 31410u))), min(arg_2.d.x, 1u)), any(vec3<bool>(arg_3.e, !(!var_0.e), !arg_2.e)));
    var var_2 = -1285i;
    var var_3 = Struct_1(arg_3.c.x, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -367f), -108f, 699f, var_0.b.x), ~vec4<u32>(~1u, 18349u, 3193u, arg_2.d.x), vec3<u32>(~(var_1.a ^ 36468u), ~_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.d.x, arg_3.a, var_0.a, 4294967295u), arg_3.c), arg_2.c >> (var_0.c % vec4<u32>(32u))), _wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.c.x, 59642u, 1u, 4001u), func_3(Struct_1(var_1.c.x, vec4<f32>(118f, var_0.b.x, 330f, arg_2.b.x), var_0.c, var_1.c.yzy, true), firstLeadingBit(vec2<i32>(-15015i, -4617i)), arg_2.e, Struct_1(arg_2.d.x, vec4<f32>(var_1.b.x, arg_3.b.x, arg_3.b.x, arg_3.b.x), var_0.c, var_1.d, false)))), !all(vec4<bool>(2147483647i >= arg_0, !arg_2.e, true, false)));
    let var_4 = 9597u;
    return 0i;
}

fn func_4(arg_0: vec4<i32>, arg_1: bool, arg_2: vec4<i32>) -> Struct_1 {
    let var_0 = Struct_1(1u, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(224f, -397f) - _wgslsmith_f_op_f32(282f + -1079f)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-294f, 282f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-1361f + 1360f))), 774f, -1000f), ~countOneBits(_wgslsmith_add_vec4_u32(select(vec4<u32>(8744u, 4294967295u, 0u, 27942u), vec4<u32>(28311u, 4294967295u, 4294967295u, 1u), vec4<bool>(arg_1, arg_1, arg_1, true)), vec4<u32>(9954u, 4294967295u, 1u, 52521u))), ~(~max(abs(vec3<u32>(52164u, 1u, 79264u)), min(vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(0u, 1u, 1u)))), true);
    var var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.x, -416f) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(var_0.b.zx - vec2<f32>(-1763f, var_0.b.x))))))));
    var var_2 = Struct_1(0u, vec4<f32>(-170f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(687f, var_1.x)))) + -1331f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_div_f32(var_0.b.x, 569f)), countOneBits(abs(var_0.c)), var_0.c.wxy, (!var_0.e && false) && all(select(select(vec2<bool>(true, arg_1), vec2<bool>(var_0.e, false), vec2<bool>(true, var_0.e)), !vec2<bool>(false, var_0.e), arg_1)));
    var var_3 = Struct_1(90473u ^ (1u & _wgslsmith_mod_u32(0u, var_0.d.x)), var_2.b, select(_wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(var_2.c.x, var_2.c.x, var_2.c.x, 0u)), var_2.c), ~vec4<u32>(4294967295u, abs(var_2.d.x), _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.d.x, var_2.c.x, var_0.c.x), vec3<u32>(var_2.a, var_0.d.x, var_0.c.x)), select(var_2.a, 59878u, var_2.e)), false), ~vec3<u32>(4294967295u, _wgslsmith_div_u32(1u, countOneBits(52511u)), ~(~var_2.a)), true);
    var var_4 = 1u;
    return var_0;
}

fn func_1() -> vec3<bool> {
    let var_0 = u_input.a;
    var var_1 = ~_wgslsmith_div_i32(countOneBits(10683i), firstTrailingBit(min(_wgslsmith_mult_i32(-5547i, u_input.a), _wgslsmith_div_i32(u_input.a, 1i))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))));
    let var_3 = func_4(vec4<i32>(i32(-1i) * -1i, i32(-1i) * -24689i, var_0, (-2147483647i & -var_0) & u_input.a), true, vec4<i32>(-(~var_0), ~max(u_input.a, 40345i), countOneBits(var_0) ^ func_2(_wgslsmith_sub_i32(var_0, u_input.a), countOneBits(9794i), Struct_1(39028u, vec4<f32>(var_2, 1465f, 388f, var_2), vec4<u32>(75038u, 4294967295u, 0u, 40309u), vec3<u32>(4294967295u, 5600u, 40574u), true), Struct_1(4294967295u, vec4<f32>(-182f, var_2, var_2, var_2), vec4<u32>(14424u, 4294967295u, 4294967295u, 1u), vec3<u32>(61818u, 82923u, 51556u), true)), 1i));
    var var_4 = -(vec2<i32>(-1i, firstTrailingBit(~u_input.a)) ^ ~min(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, -2147483647i), vec2<i32>(var_0, var_0)), ~vec2<i32>(var_0, u_input.a)));
    return !select(vec3<bool>(true, any(!vec4<bool>(var_3.e, var_3.e, var_3.e, var_3.e)), true | var_3.e), select(select(!vec3<bool>(true, true, var_3.e), vec3<bool>(false, var_3.e, var_3.e), var_3.b.x > var_3.b.x), select(!vec3<bool>(var_3.e, var_3.e, var_3.e), !vec3<bool>(false, var_3.e, false), select(vec3<bool>(true, false, true), vec3<bool>(true, var_3.e, var_3.e), vec3<bool>(var_3.e, false, var_3.e))), select(vec3<bool>(var_3.e, var_3.e, false), vec3<bool>(true, var_3.e, true), false | var_3.e)), select(select(vec3<bool>(var_3.e, false, false), vec3<bool>(true, var_3.e, var_3.e), select(vec3<bool>(var_3.e, var_3.e, true), vec3<bool>(true, true, true), vec3<bool>(var_3.e, false, var_3.e))), select(select(vec3<bool>(false, var_3.e, false), vec3<bool>(var_3.e, true, true), vec3<bool>(var_3.e, var_3.e, var_3.e)), select(vec3<bool>(var_3.e, var_3.e, var_3.e), vec3<bool>(true, var_3.e, var_3.e), true), !vec3<bool>(var_3.e, true, var_3.e)), select(vec3<bool>(var_3.e, var_3.e, false), select(vec3<bool>(false, false, var_3.e), vec3<bool>(var_3.e, true, false), vec3<bool>(var_3.e, true, var_3.e)), select(vec3<bool>(var_3.e, var_3.e, false), vec3<bool>(true, var_3.e, false), false))));
}

fn func_5(arg_0: vec4<u32>, arg_1: vec3<bool>, arg_2: vec2<f32>) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(-1f);
    let var_1 = firstTrailingBit(_wgslsmith_mult_vec4_u32(arg_0 | (func_3(Struct_1(4294967295u, vec4<f32>(arg_2.x, 2167f, -147f, -849f), vec4<u32>(arg_0.x, 1u, 27142u, arg_0.x), arg_0.yzz, arg_1.x), vec2<i32>(-2147483647i, 1i), arg_1.x, Struct_1(3047u, vec4<f32>(119f, 261f, arg_2.x, arg_2.x), vec4<u32>(2508u, 0u, 24103u, arg_0.x), vec3<u32>(arg_0.x, arg_0.x, arg_0.x), arg_1.x)) & vec4<u32>(arg_0.x, 19229u, arg_0.x, 1u)), _wgslsmith_add_vec4_u32(vec4<u32>(arg_0.x, 22504u, arg_0.x, arg_0.x) | vec4<u32>(63422u, 8155u, 67859u, 27875u), arg_0)));
    let var_2 = _wgslsmith_mult_i32(u_input.a, u_input.a);
    var_0 = _wgslsmith_f_op_f32(trunc(473f));
    var var_3 = func_4(_wgslsmith_div_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(0i, var_2, var_2, u_input.a) & vec4<i32>(3403i, var_2, u_input.a, 1i), ~vec4<i32>(-1i, u_input.a, u_input.a, -81169i)), vec4<i32>(_wgslsmith_div_i32(-2147483647i >> (arg_0.x % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -17465i), vec2<i32>(var_2, -33829i))), -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(var_2, -24404i)), ~(var_2 ^ u_input.a), _wgslsmith_sub_i32(u_input.a, -var_2))), any(select(arg_1.xy, !(!vec2<bool>(false, arg_1.x)), vec2<bool>(func_4(vec4<i32>(u_input.a, -74360i, var_2, u_input.a), false, vec4<i32>(2147483647i, var_2, 32516i, u_input.a)).e, all(arg_1)))), ~(~firstLeadingBit(min(vec4<i32>(-10985i, u_input.a, -2147483647i, u_input.a), vec4<i32>(u_input.a, -17870i, u_input.a, -2755i)))));
    return arg_0.yxy;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(~_wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(0u, 4294967295u, 4294967295u, 25403u), vec4<u32>(1u, 1u, 1u, 1u))), func_1(), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-718f, -277f))));
    var var_1 = Struct_1(select(1u, abs(reverseBits(firstTrailingBit(4294967295u))), true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-842f, 1f, _wgslsmith_f_op_f32(-708f - _wgslsmith_f_op_f32(-1009f * 363f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-334f * 298f) - _wgslsmith_f_op_f32(ceil(-1121f))))), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(var_0.x, 0u, var_0.x), 68904u, var_0.x, var_0.x), ~(~vec4<u32>(1u, 49834u, var_0.x, var_0.x))), ~func_4(firstTrailingBit(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), true, abs(vec4<i32>(u_input.a, u_input.a, -92308i, 2147483647i))).d.x, ~(~_wgslsmith_div_u32(0u, 26496u)), abs(~67629u)), ~(~var_0), func_1().x);
    var_1 = Struct_1(var_0.x, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.b.x, var_1.b.x, false)) - var_1.b.x), var_1.b.x), var_1.b.x, var_1.b.x, -944f), ~(~_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.d.x, 6493u, 436u, 44762u), vec4<u32>(var_1.d.x, var_1.d.x, 0u, var_0.x)), ~vec4<u32>(var_0.x, var_1.d.x, var_0.x, var_1.c.x))), _wgslsmith_mult_vec3_u32(~(var_1.d & vec3<u32>(var_1.a, 17250u, 4294967295u)), vec3<u32>(_wgslsmith_clamp_u32(4294967295u, var_0.x, var_0.x), ~4294967295u, 1u) ^ ~(vec3<u32>(4294967295u, 30898u, 0u) | vec3<u32>(var_0.x, var_1.a, 18u))), func_1().x);
    var var_2 = vec3<i32>(~(~15971i), u_input.a, u_input.a);
    var var_3 = vec4<u32>(_wgslsmith_sub_u32(var_1.c.x, max(4294967295u, var_0.x)), 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, firstLeadingBit(var_0.x), 0u), _wgslsmith_sub_vec3_u32(~vec3<u32>(var_0.x, 1u, 65465u), firstLeadingBit(vec3<u32>(1u, 20678u, var_0.x))) << (vec3<u32>(_wgslsmith_mod_u32(26938u, 1u), 26518u, var_0.x) % vec3<u32>(32u))), abs(4360u >> (~var_1.a % 32u)));
    var var_4 = 44478u;
    var var_5 = vec4<i32>(-2147483647i, _wgslsmith_mult_i32(59067i, -1i), -abs(abs(-21931i)), abs(~(~1i)));
    var var_6 = func_4(max(_wgslsmith_clamp_vec4_i32(-vec4<i32>(u_input.a, 27589i, var_2.x, var_2.x), vec4<i32>(u_input.a, u_input.a, -20925i, var_2.x) ^ vec4<i32>(-46258i, 2147483647i, 8247i, u_input.a), vec4<i32>(1i, 0i, u_input.a, u_input.a) & vec4<i32>(3005i, 51814i, var_2.x, 56154i)) ^ vec4<i32>(var_5.x, -29805i, _wgslsmith_add_i32(var_2.x, u_input.a), 9113i >> (var_0.x % 32u)), vec4<i32>(-1i) * -vec4<i32>(-40101i, var_5.x, var_2.x, 21654i)), !(!func_4(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, var_5.x, var_5.x, var_5.x), vec4<i32>(2147483647i, 2147483647i, var_5.x, -369i)), false, -vec4<i32>(1i, var_5.x, u_input.a, var_2.x)).e), _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_5.x, var_2.x, abs(13672i), -1i), vec4<i32>(u_input.a, _wgslsmith_sub_i32(var_5.x, -91920i), ~u_input.a, var_2.x | var_5.x), select(vec4<i32>(-1i, u_input.a, var_2.x, var_5.x), vec4<i32>(u_input.a, -1i, var_5.x, -1i), false) >> (firstTrailingBit(var_1.c) % vec4<u32>(32u))), ~abs(vec4<i32>(u_input.a, var_5.x, var_5.x, u_input.a)) >> (_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(var_1.c, vec4<u32>(2308u, var_1.a, var_0.x, var_0.x)), select(vec4<u32>(var_1.a, 49665u, 60084u, var_0.x), var_1.c, vec4<bool>(true, true, true, true))) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_u32(~(~vec2<u32>(3952u, 66534u)), abs(~var_6.d.yz)));
}

