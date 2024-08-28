struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec3<bool>,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: Struct_3,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: Struct_1 = Struct_1(27164i, vec3<f32>(-135f, 1458f, 1000f), vec3<bool>(false, true, false), 665f, false);

var<private> global2: array<vec2<i32>, 2>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: bool, arg_2: f32) -> f32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_sub_i32(reverseBits(-global1.a), abs(17719i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(242f, global1.b.x, -1607f) - arg_0.b.a.b)), select(select(arg_0.c.e.c.c, select(arg_0.b.a.c, arg_0.c.d.c, arg_1), !arg_0.b.c.c), select(select(vec3<bool>(false, arg_0.c.b.c.x, false), global1.c, arg_0.c.e.a.c), select(vec3<bool>(global1.c.x, true, arg_1), vec3<bool>(false, false, false), true), false), any(vec2<bool>(global1.c.x, global1.e))), _wgslsmith_f_op_f32(ceil(arg_2)), true), arg_0.b.b, arg_0.b.a);
    global1 = Struct_1(2147483647i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a.b) + vec3<f32>(arg_2, 243f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-440f)) + _wgslsmith_div_f32(arg_2, var_0.a.b.x)))), vec3<bool>(!(!(!var_0.a.c.x)), all(vec4<bool>(true, select(false, arg_1, var_0.c.c.x), true, !global1.e)), select(_wgslsmith_dot_vec4_u32(arg_0.d, arg_0.d) == 25517u, arg_0.b.a.c.x, select(!arg_1, global1.e, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d)), ~(~_wgslsmith_mult_u32(25421u, arg_0.b.b.x)) > (~arg_0.c.e.b.x & 1u));
    global2 = array<vec2<i32>, 2>();
    let var_1 = vec3<bool>(!all(vec3<bool>(!var_0.a.c.x, true, any(vec4<bool>(true, true, true, arg_1)))), true, false);
    global2 = array<vec2<i32>, 2>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.d) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global1.d, global1.d)), _wgslsmith_div_f32(var_0.c.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(119f + arg_2) + _wgslsmith_f_op_f32(-325f * -253f)))));
}

fn func_2(arg_0: u32, arg_1: vec3<f32>) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(-1i, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.d + global1.d)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(Struct_4(u_input.a.x, Struct_2(Struct_1(global1.a, vec3<f32>(-101f, arg_1.x, -492f), vec3<bool>(false, global1.e, global1.c.x), -135f, false), vec2<u32>(arg_0, 1u), Struct_1(global1.a, vec3<f32>(arg_1.x, global1.d, arg_1.x), global1.c, 1782f, true)), Struct_3(arg_1.x, Struct_1(-1i, vec3<f32>(global1.b.x, global1.d, -281f), global1.c, global1.b.x, false), Struct_2(Struct_1(-88733i, vec3<f32>(-424f, global1.b.x, 1283f), global1.c, arg_1.x, true), vec2<u32>(arg_0, arg_0), Struct_1(u_input.a.x, global1.b, vec3<bool>(global1.e, global1.e, true), -926f, global1.e)), Struct_1(u_input.b.x, vec3<f32>(881f, global1.d, -529f), vec3<bool>(global1.c.x, true, true), global1.d, global1.c.x), Struct_2(Struct_1(-29133i, global1.b, global1.c, -585f, global1.e), vec2<u32>(arg_0, arg_0), Struct_1(u_input.a.x, arg_1, global1.c, -140f, global1.c.x))), vec4<u32>(arg_0, arg_0, 13602u, 20216u), u_input.b), global1.c.x, arg_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -458f), false)), _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(global1.d + 232f))), select(global1.c, select(vec3<bool>(true, global1.e, global1.c.x), !vec3<bool>(true, global1.e, false), false), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * -622f)), false), firstTrailingBit(_wgslsmith_clamp_vec2_u32(~abs(vec2<u32>(51496u, 1u)), min(~vec2<u32>(arg_0, 1u), ~vec2<u32>(645u, arg_0)), _wgslsmith_clamp_vec2_u32(reverseBits(vec2<u32>(arg_0, 1u)), vec2<u32>(45415u, 50851u), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_0, arg_0), vec2<u32>(4294967295u, 36682u))))), Struct_1(-1i, _wgslsmith_div_vec3_f32(global1.b, arg_1), select(vec3<bool>(any(global1.c), global1.c.x, u_input.b.x < 2185i), !select(vec3<bool>(global1.e, global1.c.x, global1.c.x), global1.c, global1.e), select(!global1.c, select(global1.c, vec3<bool>(true, false, global1.c.x), false), global1.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -328f) - arg_1.x) + global1.d), false));
    let var_1 = var_0;
    global1 = var_1.c;
    global2 = array<vec2<i32>, 2>();
    global1 = var_1.a;
    return var_0.a;
}

fn func_1(arg_0: f32, arg_1: vec2<u32>) -> Struct_3 {
    let var_0 = arg_1;
    global2 = array<vec2<i32>, 2>();
    var var_1 = -657f;
    let var_2 = func_2(arg_1.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, global1.b.x, global1.d) * global1.b) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(3582f, global1.b.x, -786f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0, 1039f, global1.b.x), global1.b, true)))))));
    var var_3 = 2147483647i;
    return Struct_3(-1362f, var_2, Struct_2(Struct_1(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -23511i, -23110i), u_input.b.yyz), var_2.b, select(vec3<bool>(true, true, true), func_2(arg_1.x, global1.b).c, var_2.c.x), var_2.b.x, true), select(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_1.x, 48896u), vec3<u32>(var_0.x, arg_1.x, 5129u)), 1u), vec2<u32>(1u, 44353u << (var_0.x % 32u)), global1.e | true), Struct_1(40820i, vec3<f32>(_wgslsmith_f_op_f32(max(1736f, -868f)), -1569f, global1.d), vec3<bool>(false, any(vec4<bool>(false, false, global1.c.x, false)), all(vec3<bool>(true, global1.c.x, false))), _wgslsmith_f_op_f32(-355f + -1032f), all(vec4<bool>(true, true, true, global1.c.x)))), func_2(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_1.x, var_0.x, 16209u) & vec3<u32>(var_0.x, 96880u, var_0.x), vec3<u32>(arg_1.x, 0u, arg_1.x)), _wgslsmith_div_vec3_u32(vec3<u32>(var_0.x, var_0.x, arg_1.x) | vec3<u32>(74850u, arg_1.x, 46196u), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, arg_1.x), vec3<u32>(arg_1.x, 1u, 1u)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(exp2(global1.b))))))), Struct_2(func_2(~_wgslsmith_dot_vec3_u32(vec3<u32>(47811u, var_0.x, 0u), vec3<u32>(arg_1.x, 4294967295u, 0u)), vec3<f32>(arg_0, 620f, -1000f)), var_0, var_2));
}

fn func_4(arg_0: vec2<i32>, arg_1: bool, arg_2: Struct_3, arg_3: vec4<u32>) -> Struct_3 {
    let var_0 = arg_3.xyx;
    var var_1 = ~(~abs(u_input.a.x));
    global1 = arg_2.e.a;
    let var_2 = u_input.b.zyy;
    var var_3 = -1305f;
    return func_1(_wgslsmith_f_op_f32(abs(global1.d)), var_0.zz);
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: vec2<bool>, arg_3: vec4<u32>) -> Struct_1 {
    let var_0 = arg_2.x | !global1.c.x;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(func_3(Struct_4(_wgslsmith_mod_i32(arg_1.d.a, u_input.a.x ^ -61022i), func_1(2490f, arg_1.e.b).c, Struct_3(_wgslsmith_f_op_f32(arg_1.a + -428f), Struct_1(arg_1.c.a.a, vec3<f32>(global1.d, 1000f, -1000f), vec3<bool>(true, true, false), global1.d, true), arg_1.c, func_2(arg_1.e.b.x, arg_1.d.b), arg_1.e), vec4<u32>(~31849u, ~4294967295u, arg_3.x, 1u), vec4<i32>(min(2147483647i, arg_1.d.a), u_input.a.x, global1.a, min(-40848i, arg_1.b.a))), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1184f + -1409f) - 2058f))), 899f);
    global2 = array<vec2<i32>, 2>();
    var var_2 = ~(~arg_3.yxw);
    var var_3 = Struct_3(arg_1.d.d, func_2(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_1.e.b.x), vec2<u32>(8177u, 1u)) >> (reverseBits(min(13511u, arg_1.e.b.x)) % 32u), arg_1.e.a.b), func_4(_wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(u_input.a, global2[_wgslsmith_index_u32(4294967295u, 2u)]), vec2<i32>(0i, 10586i) ^ abs(global2[_wgslsmith_index_u32(var_2.x, 2u)])), false, arg_1, firstLeadingBit(~arg_3)).c, arg_1.d, Struct_2(func_2(~arg_1.e.b.x, global1.b), ~firstTrailingBit(var_2.xy), arg_1.c.c));
    return func_1(_wgslsmith_f_op_f32(-815f + global1.d), min(vec2<u32>(1786u, 14737u), func_4(vec2<i32>(func_1(arg_1.c.a.b.x, arg_3.wy).e.a.a, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.e.c.a, global1.a), global2[_wgslsmith_index_u32(arg_3.x, 2u)])), all(vec2<bool>(global1.e, arg_2.x)), arg_1, ~arg_3).c.b)).c.c;
}

fn func_6(arg_0: Struct_3) -> Struct_2 {
    global0 = ~firstTrailingBit(_wgslsmith_sub_u32(firstTrailingBit(102099u), arg_0.c.b.x));
    return Struct_2(arg_0.d, select(_wgslsmith_add_vec2_u32(min(vec2<u32>(arg_0.c.b.x, 0u), vec2<u32>(20312u, arg_0.e.b.x)), min(vec2<u32>(arg_0.c.b.x, 4294967295u), vec2<u32>(arg_0.c.b.x, arg_0.c.b.x))), vec2<u32>(~1u, 1u), !(!vec2<bool>(true, arg_0.e.a.c.x))) | arg_0.e.b, arg_0.c.c);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<i32>, 2>();
    var var_0 = func_6(Struct_3(_wgslsmith_f_op_f32(min(global1.d, 992f)), func_5(!(!vec4<bool>(global1.c.x, false, true, global1.e)), func_4(vec2<i32>(-2643i, 26795i), true, func_1(-376f, vec2<u32>(45717u, 4294967295u)), vec4<u32>(1u, 1u, 1u, 1u)), global1.c.zx, vec4<u32>(1u, 1u, 1u, 1u)), func_4(_wgslsmith_add_vec2_i32(global2[_wgslsmith_index_u32(1u, 2u)], vec2<i32>(1i, u_input.a.x)) ^ _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b.x, global1.a), u_input.b.xw, vec2<i32>(u_input.b.x, 4605i)), true, func_1(-1152f, ~vec2<u32>(5281u, 12214u)), vec4<u32>(1u, 1u, 1u, 1u)).e, func_1(-721f, ~firstTrailingBit(vec2<u32>(23915u, 18398u))).e.c, Struct_2(func_4(vec2<i32>(u_input.b.x, -6076i) | global2[_wgslsmith_index_u32(0u, 2u)], true, Struct_3(global1.b.x, Struct_1(u_input.a.x, vec3<f32>(317f, -1000f, 1608f), vec3<bool>(false, global1.c.x, global1.c.x), -1890f, global1.c.x), Struct_2(Struct_1(global1.a, global1.b, vec3<bool>(true, global1.c.x, false), 1938f, global1.e), vec2<u32>(0u, 1u), Struct_1(global1.a, vec3<f32>(-3102f, -1141f, global1.d), global1.c, global1.b.x, true)), Struct_1(48712i, global1.b, vec3<bool>(global1.e, global1.c.x, global1.e), global1.b.x, global1.e), Struct_2(Struct_1(u_input.b.x, vec3<f32>(global1.b.x, -341f, global1.d), global1.c, global1.b.x, global1.c.x), vec2<u32>(26126u, 1u), Struct_1(-2147483647i, global1.b, vec3<bool>(false, false, true), global1.d, true))), ~vec4<u32>(54816u, 0u, 67639u, 4294967295u)).c.a, ~vec2<u32>(1u, 1u), func_2(_wgslsmith_div_u32(0u, 48510u), global1.b))));
    var var_1 = vec4<bool>(func_5(!vec4<bool>(global1.e, global1.e, any(vec3<bool>(true, global1.e, false)), all(global1.c.xx)), func_1(_wgslsmith_f_op_f32(f32(-1f) * -734f), ~(~var_0.b)), !select(!var_0.a.c.zy, global1.c.yy, false), ~_wgslsmith_div_vec4_u32(~vec4<u32>(0u, 11051u, var_0.b.x, 75269u), ~vec4<u32>(1u, var_0.b.x, var_0.b.x, var_0.b.x))).c.x, -1i > firstTrailingBit(_wgslsmith_div_i32(1i, u_input.a.x) >> (var_0.b.x % 32u)), func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d)), vec2<u32>(var_0.b.x, firstTrailingBit(var_0.b.x))).d.e, func_2(_wgslsmith_mult_u32(~var_0.b.x, ~var_0.b.x), global1.b).a != global1.a);
    let var_2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.x, global1.b.x, 221f, global1.b.x) + vec4<f32>(1898f, var_0.c.d, global1.b.x, -304f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.d, var_0.a.d, global1.b.x, -1569f) - vec4<f32>(global1.b.x, var_0.a.d, -306f, -1000f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.x, var_0.a.b.x, var_0.c.b.x, var_0.a.d))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1014f - global1.d)), var_0.a.b.x, var_0.c.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.d, var_0.a.d)) + _wgslsmith_f_op_f32(floor(-295f)))))));
    let var_3 = !func_5(vec4<bool>(var_1.x, true, _wgslsmith_f_op_f32(var_0.c.d - 1059f) > _wgslsmith_f_op_f32(811f - -1000f), func_5(vec4<bool>(var_1.x, false, false, var_1.x), func_4(vec2<i32>(-2147483647i, 1i), var_0.a.e, Struct_3(var_0.a.d, var_0.c, Struct_2(Struct_1(-34150i, vec3<f32>(var_2.x, var_0.a.b.x, var_0.c.d), vec3<bool>(global1.c.x, true, var_1.x), 1363f, var_1.x), var_0.b, var_0.c), Struct_1(var_0.c.a, vec3<f32>(-1845f, global1.b.x, -771f), vec3<bool>(var_0.c.c.x, var_1.x, global1.c.x), -929f, true), Struct_2(var_0.c, vec2<u32>(0u, 22733u), var_0.c)), vec4<u32>(92600u, var_0.b.x, 64563u, 33713u)), var_0.c.c.xy, ~vec4<u32>(var_0.b.x, var_0.b.x, var_0.b.x, 62059u)).c.x), Struct_3(_wgslsmith_f_op_f32(-var_0.c.b.x), Struct_1(_wgslsmith_sub_i32(u_input.b.x, global1.a), func_6(Struct_3(397f, var_0.c, Struct_2(var_0.a, var_0.b, Struct_1(-3747i, var_0.c.b, vec3<bool>(true, false, var_0.c.e), -1921f, var_1.x)), var_0.a, Struct_2(var_0.a, vec2<u32>(var_0.b.x, var_0.b.x), Struct_1(u_input.b.x, vec3<f32>(var_2.x, var_2.x, global1.b.x), vec3<bool>(false, true, false), var_0.c.d, true)))).a.b, func_4(vec2<i32>(6143i, global1.a), true, Struct_3(-1000f, Struct_1(var_0.c.a, var_0.a.b, global1.c, var_0.a.b.x, false), Struct_2(Struct_1(global1.a, var_0.c.b, vec3<bool>(false, var_0.a.c.x, var_0.c.e), global1.d, global1.e), vec2<u32>(var_0.b.x, var_0.b.x), Struct_1(-9350i, vec3<f32>(global1.b.x, var_0.c.b.x, var_0.c.b.x), var_0.c.c, -1000f, false)), Struct_1(0i, vec3<f32>(var_0.c.d, 914f, -722f), global1.c, -924f, false), Struct_2(Struct_1(u_input.b.x, var_0.a.b, vec3<bool>(true, true, var_1.x), 1261f, var_0.a.c.x), var_0.b, var_0.a)), vec4<u32>(4294967295u, 23880u, 4294967295u, 0u)).b.c, -354f, true), Struct_2(func_1(-751f, var_0.b).c.c, var_0.b, var_0.a), var_0.c, func_1(global1.d, ~var_0.b).e), vec2<bool>(true, global1.e), vec4<u32>(func_1(func_1(-759f, vec2<u32>(1u, var_0.b.x)).a, ~vec2<u32>(var_0.b.x, 29611u)).c.b.x, max(4294967295u, ~var_0.b.x), reverseBits(1u), var_0.b.x)).e;
    let var_4 = Struct_4(-1i, Struct_2(func_5(select(vec4<bool>(false, false, true, false), select(vec4<bool>(var_0.a.e, true, var_3, true), vec4<bool>(var_3, true, false, var_0.a.e), true), vec4<bool>(false, global1.e, var_3, false)), func_4(countOneBits(vec2<i32>(0i, -23500i)), true, func_1(var_0.a.b.x, vec2<u32>(var_0.b.x, 94261u)), vec4<u32>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x)), var_1.xx, vec4<u32>(var_0.b.x, ~var_0.b.x, var_0.b.x, 1u)), countOneBits(_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.b.x, 14195u), var_0.b) | min(var_0.b, var_0.b)), Struct_1(select(_wgslsmith_clamp_i32(global1.a, u_input.a.x, var_0.a.a), 16725i, false), _wgslsmith_f_op_vec3_f32(-func_4(u_input.b.yy, var_0.c.c.x, Struct_3(var_0.c.b.x, var_0.c, Struct_2(Struct_1(u_input.b.x, var_2.zyz, vec3<bool>(false, false, var_3), var_2.x, true), vec2<u32>(1u, var_0.b.x), Struct_1(u_input.a.x, vec3<f32>(-689f, var_0.c.d, 1000f), var_0.a.c, global1.d, true)), var_0.a, Struct_2(Struct_1(-2147483647i, vec3<f32>(251f, 851f, var_0.a.d), vec3<bool>(false, false, false), -811f, var_3), var_0.b, Struct_1(global1.a, vec3<f32>(var_2.x, global1.d, -1514f), var_0.c.c, var_0.a.b.x, true))), vec4<u32>(0u, var_0.b.x, 28095u, var_0.b.x)).d.b), vec3<bool>(true, !var_0.a.e, global1.e), _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-var_0.c.b.x) >= _wgslsmith_f_op_f32(step(452f, global1.b.x)))), Struct_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.b.x, 771f)), _wgslsmith_f_op_f32(-597f * _wgslsmith_div_f32(542f, global1.b.x)))), var_0.a, Struct_2(func_2(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.x, var_0.b.x, 19952u, 10503u), vec4<u32>(14343u, 47951u, var_0.b.x, 89897u)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_2.x, var_2.x, global1.d), var_0.c.b))), ~vec2<u32>(var_0.b.x, var_0.b.x), Struct_1(~66416i, vec3<f32>(global1.b.x, var_0.c.b.x, global1.b.x), !vec3<bool>(var_0.c.e, true, false), var_2.x, false)), var_0.a, func_6(Struct_3(_wgslsmith_f_op_f32(round(-189f)), func_2(22064u, vec3<f32>(var_2.x, 1099f, 908f)), Struct_2(Struct_1(53502i, vec3<f32>(global1.d, var_0.c.d, 985f), var_1.xzy, -545f, var_1.x), vec2<u32>(4294967295u, 4294967295u), var_0.a), var_0.a, Struct_2(var_0.c, var_0.b, var_0.c)))), _wgslsmith_mod_vec4_u32(~firstTrailingBit(~vec4<u32>(var_0.b.x, var_0.b.x, var_0.b.x, 1u)), vec4<u32>(9149u, var_0.b.x, ~var_0.b.x, ~107863u) | vec4<u32>(_wgslsmith_clamp_u32(var_0.b.x, var_0.b.x, 1u), 21970u, var_0.b.x, 0u)), firstTrailingBit(u_input.b));
    global0 = func_6(var_4.c).b.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.yxw, -127f);
}

