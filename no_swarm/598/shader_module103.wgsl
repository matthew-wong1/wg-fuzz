struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: u32,
    d: vec2<u32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 2>;

var<private> global1: array<vec2<f32>, 19>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec2<f32> {
    let var_0 = firstLeadingBit(abs(~_wgslsmith_clamp_i32(1i, -2147483647i, 39285i))) < _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(abs(vec3<i32>(5115i, 27716i, 2147483647i)), min(_wgslsmith_mod_vec3_i32(vec3<i32>(-26i, -2342i, 2147483647i), vec3<i32>(-11065i, 2147483647i, 1i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, 1i, -36856i), vec3<i32>(-2147483647i, 2147483647i, -1i), vec3<i32>(4344i, 30642i, -34092i))), max(_wgslsmith_div_vec3_i32(vec3<i32>(-13823i, 17753i, 0i), vec3<i32>(2147483647i, 2147483647i, -2147483647i)), _wgslsmith_mult_vec3_i32(vec3<i32>(27884i, 1635i, 53216i), vec3<i32>(37145i, 1i, 9642i)))), max(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-19076i, 2801i, 1i, -1i), vec4<i32>(8173i, -22408i, 2147483647i, 3566i)), ~37500i, ~(-2147483647i)), -vec3<i32>(14405i, 0i, 2147483647i)));
    global1 = array<vec2<f32>, 19>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global1[_wgslsmith_index_u32(4294967295u, 19u)], _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(13991u, 2u)], -273f) + vec2<f32>(-190f, 264f))))), any(vec4<bool>(2147483647i > _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 9589i, -37821i, -2147483647i), vec4<i32>(-4536i, 1i, -6645i, -1i)), true, any(vec4<bool>(var_0, true, var_0, false)), var_0)), u_input.b, vec2<u32>(u_input.b, _wgslsmith_mod_u32(u_input.b, ~(u_input.b << (u_input.a.x % 32u)))), u_input.b > _wgslsmith_clamp_u32(_wgslsmith_sub_u32(~u_input.b, 0u), u_input.a.x, u_input.a.x));
    var var_2 = ~0i;
    global1 = array<vec2<f32>, 19>();
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-391f, 1000f) + vec2<f32>(global0[_wgslsmith_index_u32(5507u, 2u)], var_1.a.x)) * _wgslsmith_f_op_vec2_f32(var_1.a - vec2<f32>(var_1.a.x, -1046f)))) * var_1.a));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: Struct_2) -> vec3<bool> {
    global1 = array<vec2<f32>, 19>();
    let var_0 = arg_2;
    var var_1 = arg_1.xzx;
    let var_2 = !select(vec3<bool>(true, all(select(arg_1, vec4<bool>(false, false, false, true), arg_1.x)), true), arg_1.wzw, var_0.a.b);
    var var_3 = arg_2;
    return arg_1.zwx;
}

fn func_2(arg_0: f32, arg_1: vec3<i32>, arg_2: vec3<u32>) -> vec3<bool> {
    global1 = array<vec2<f32>, 19>();
    global1 = array<vec2<f32>, 19>();
    global1 = array<vec2<f32>, 19>();
    let var_0 = _wgslsmith_add_vec3_u32(arg_2, ~vec3<u32>(37505u, ~(~arg_2.x), arg_2.x));
    let var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(-433f, _wgslsmith_f_op_f32(f32(-1f) * -230f), arg_0), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(480f))), -1471f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 2u)]) - _wgslsmith_f_op_f32(f32(-1f) * -219f))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_2.x, 2u)]) * -396f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(select(var_0.x, var_0.x, true), 2u)]), _wgslsmith_f_op_f32(step(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -468f)))))));
    return func_4(Struct_2(Struct_1(vec2<f32>(1130f, 1f), _wgslsmith_f_op_f32(-var_1.x) > _wgslsmith_div_f32(global0[_wgslsmith_index_u32(var_0.x, 2u)], var_1.x), _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_2.x, 1u, 120588u), max(vec3<u32>(var_0.x, 23315u, 42418u), vec3<u32>(u_input.b, 16393u, var_0.x))), ~(~var_0.zy), true), ~(~44738i), Struct_1(_wgslsmith_f_op_vec2_f32(func_3()), true, ~(~4294967295u), _wgslsmith_sub_vec2_u32(vec2<u32>(11163u, 4294967295u), ~u_input.a), false), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.zy)), true, ~4294967295u, vec2<u32>(24114u, u_input.b) | _wgslsmith_mod_vec2_u32(vec2<u32>(var_0.x, 0u), u_input.a), all(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), false))), _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(6751i, arg_1.x, -2147483647i, arg_1.x), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), vec4<i32>(-1i, -20059i, 29499i, arg_1.x))), min(-vec4<i32>(arg_1.x, 20326i, arg_1.x, arg_1.x), _wgslsmith_div_vec4_i32(vec4<i32>(arg_1.x, arg_1.x, arg_1.x, -2147483647i), vec4<i32>(-3480i, -31328i, 73249i, arg_1.x))))), !(!vec4<bool>(any(vec2<bool>(true, true)), all(vec3<bool>(false, true, false)), true, true)), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(656f, 1000f) - _wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(var_0.x, 19u)] * global1[_wgslsmith_index_u32(arg_2.x, 19u)])), 176f < global0[_wgslsmith_index_u32(~63656u, 2u)], arg_2.x | (38417u << (arg_2.x % 32u)), _wgslsmith_clamp_vec2_u32(select(vec2<u32>(4294967295u, 0u), vec2<u32>(31984u, 0u), false), arg_2.zx, vec2<u32>(var_0.x, u_input.a.x) << (u_input.a % vec2<u32>(32u))), u_input.a.x == (var_0.x << (1u % 32u))), arg_1.x, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.xz) - global1[_wgslsmith_index_u32(~arg_2.x, 19u)]), !(arg_2.x < 4294967295u), ~var_0.x, _wgslsmith_clamp_vec2_u32(abs(vec2<u32>(23631u, 25094u)), vec2<u32>(arg_2.x, arg_2.x), max(vec2<u32>(4294967295u, var_0.x), u_input.a)), true), Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-369f, -919f) * vec2<f32>(global0[_wgslsmith_index_u32(0u, 2u)], 1392f)))), (arg_2.x >> (arg_2.x % 32u)) != arg_2.x, ~(~var_0.x), vec2<u32>(1u, ~arg_2.x), select(true, true, true)), -vec4<i32>(i32(-1i) * -22555i, 2147483647i, 50136i, max(arg_1.x, -2147483647i))));
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: vec4<f32>) -> bool {
    var var_0 = Struct_1(global1[_wgslsmith_index_u32(27189u, 19u)], all(func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-856f - -754f), 640f), abs(~vec3<i32>(arg_1, arg_1, -2147483647i)), max(firstTrailingBit(vec3<u32>(12690u, u_input.a.x, u_input.a.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(52828u, 0u, 4294967295u), vec3<u32>(44561u, u_input.a.x, 3372u))))), _wgslsmith_clamp_u32(1u, 10717u, ~firstTrailingBit(u_input.a.x)), vec2<u32>(1u, abs(countOneBits(1u))) >> (u_input.a % vec2<u32>(32u)), (_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_1, -9771i, arg_1), vec3<i32>(arg_1, 2147483647i, 32646i)), -vec3<i32>(arg_1, -21891i, arg_1)) <= (~arg_1 >> (~1u % 32u))) == arg_0);
    var var_1 = 4294967295u;
    global1 = array<vec2<f32>, 19>();
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(40900u, 2u)], _wgslsmith_f_op_f32(trunc(-942f)))) + arg_2.xx);
    let var_3 = arg_2.x;
    return max(arg_1, ~_wgslsmith_div_i32(-1889i, 28493i) >> (~_wgslsmith_add_u32(0u, var_0.c) % 32u)) == _wgslsmith_dot_vec2_i32(~abs(-vec2<i32>(arg_1, arg_1)), reverseBits(countOneBits(vec2<i32>(0i, 22799i)) >> (vec2<u32>(8582u, u_input.a.x) % vec2<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(1i, i32(-1i) * -2147483647i);
    var var_1 = Struct_2(Struct_1(global1[_wgslsmith_index_u32(4294967295u, 19u)], true, ~u_input.b, _wgslsmith_div_vec2_u32(~abs(u_input.a), firstLeadingBit(vec2<u32>(u_input.b, 94888u))), any(vec4<bool>(any(vec3<bool>(false, true, true)), false, true, func_1(true, var_0.x, vec4<f32>(global0[_wgslsmith_index_u32(7958u, 2u)], global0[_wgslsmith_index_u32(u_input.b, 2u)], -871f, 1032f))))), min(firstTrailingBit(_wgslsmith_clamp_i32(var_0.x, 0i, -2147483647i)), 2147483647i), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(global1[_wgslsmith_index_u32(u_input.b, 19u)], global1[_wgslsmith_index_u32(u_input.b, 19u)]), _wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(u_input.b, 19u)])))), false && !(u_input.b > 0u), 4294967295u ^ u_input.c, abs(reverseBits(vec2<u32>(u_input.b, u_input.b))), true), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-327f, 870f), global1[_wgslsmith_index_u32(u_input.a.x, 19u)])), vec2<f32>(global0[_wgslsmith_index_u32(0u, 2u)], global0[_wgslsmith_index_u32(35255u, 2u)]), false))), true, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.c, 39581u, 34874u, 40854u) >> (vec4<u32>(u_input.b, 26385u, u_input.b, u_input.a.x) % vec4<u32>(32u))), _wgslsmith_sub_vec2_u32(~u_input.a, _wgslsmith_clamp_vec2_u32(select(vec2<u32>(u_input.b, 28201u), u_input.a, vec2<bool>(true, true)), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, 1u), vec2<u32>(u_input.a.x, u_input.c), u_input.a), ~u_input.a)), !any(func_2(global0[_wgslsmith_index_u32(43870u, 2u)], vec3<i32>(var_0.x, var_0.x, var_0.x), vec3<u32>(740u, 28339u, u_input.b)))), firstTrailingBit(-(~(-vec4<i32>(var_0.x, var_0.x, 16156i, var_0.x)))));
    var var_2 = var_1.a.b & !(!select(all(vec4<bool>(var_1.a.b, var_1.d.e, false, var_1.c.b)), true, false));
    var_2 = all(!vec3<bool>(var_1.c.b, true, var_1.d.e | (var_1.b == var_0.x)));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.c.a - _wgslsmith_f_op_vec2_f32(-var_1.d.a))));
    let var_4 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, _wgslsmith_f_op_f32(-var_3.x))), true, ~u_input.b, countOneBits(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 4294967295u), var_1.c.d)), var_1.c.b), abs(var_1.b ^ var_0.x), Struct_1(global1[_wgslsmith_index_u32(~(u_input.a.x & 1u), 19u)], !(var_0.x != var_1.e.x), ~24733u, _wgslsmith_add_vec2_u32(~(~vec2<u32>(32020u, 1u)), ~_wgslsmith_mod_vec2_u32(u_input.a, u_input.a)), 4294967295u == u_input.b), Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(48260u, 19u)] - global1[_wgslsmith_index_u32(u_input.c, 19u)]))), !func_4(Struct_2(Struct_1(global1[_wgslsmith_index_u32(u_input.b, 19u)], false, 4294967295u, u_input.a, var_1.a.e), var_0.x, Struct_1(vec2<f32>(-1391f, var_3.x), var_1.a.b, var_1.c.d.x, vec2<u32>(9405u, var_1.c.d.x), var_1.a.e), Struct_1(vec2<f32>(-751f, -1029f), false, 1u, var_1.a.d, var_1.d.b), var_1.e), vec4<bool>(var_1.a.b, false, false, false), Struct_2(var_1.a, -29636i, var_1.d, Struct_1(vec2<f32>(var_1.c.a.x, -2045f), var_1.c.b, 4294967295u, vec2<u32>(var_1.c.d.x, u_input.b), var_1.a.e), var_1.e)).x, 0u, vec2<u32>(var_1.c.c, ~var_1.d.c), func_2(_wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(floor(var_1.c.a.x))), min(vec3<i32>(var_1.e.x, 18501i, var_1.b), vec3<i32>(var_0.x, 0i, var_1.b)), _wgslsmith_add_vec3_u32(abs(vec3<u32>(16166u, 55690u, 73829u)), vec3<u32>(5996u, 32091u, 50164u))).x), var_1.e);
    global0 = array<f32, 2>();
    let var_5 = 25384u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(var_4.d.a.x, _wgslsmith_f_op_f32(-var_4.a.a.x)), 12597u, vec4<i32>(i32(-1i) * -var_0.x, -1i, var_4.e.x, reverseBits(_wgslsmith_mult_i32(_wgslsmith_div_i32(-2147483647i, var_1.e.x), -13334i))), 31180u, firstLeadingBit(~vec3<u32>(0u, max(0u, var_5), ~1u)));
}

