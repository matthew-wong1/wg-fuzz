struct Struct_1 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 24> = array<bool, 24>(true, false, false, false, false, false, true, false, true, true, false, true, false, true, true, false, true, false, true, false, true, false, true, true);

var<private> global1: i32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<u32>) -> vec4<f32> {
    global0 = array<bool, 24>();
    let var_0 = countOneBits(~_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-61824i, 0i, 29093i, u_input.a.x), vec4<i32>(2147483647i, u_input.a.x, -1i, u_input.a.x)) ^ vec4<i32>(2147483647i, 21898i, u_input.a.x, -1i), vec4<i32>(u_input.a.x, _wgslsmith_mult_i32(9648i, 16867i), _wgslsmith_div_i32(1i, u_input.b), u_input.b)));
    let var_1 = Struct_1(vec2<bool>(true, true | all(select(vec4<bool>(true, global0[_wgslsmith_index_u32(arg_1.x, 24u)], true, global0[_wgslsmith_index_u32(arg_1.x, 24u)]), vec4<bool>(global0[_wgslsmith_index_u32(arg_1.x, 24u)], global0[_wgslsmith_index_u32(arg_1.x, 24u)], true, global0[_wgslsmith_index_u32(arg_1.x, 24u)]), global0[_wgslsmith_index_u32(0u, 24u)]))), u_input.a, vec2<i32>(~var_0.x, ~1i), !vec2<bool>(global0[_wgslsmith_index_u32(select(1u, ~1u, true), 24u)], true));
    var var_2 = Struct_2(var_1, Struct_1(select(vec2<bool>(all(vec3<bool>(var_1.d.x, global0[_wgslsmith_index_u32(23799u, 24u)], true)), false), var_1.a, !vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 24u)])), -vec2<i32>(i32(-1i) * -3754i, firstLeadingBit(var_1.c.x)), firstLeadingBit(_wgslsmith_add_vec2_i32(-vec2<i32>(u_input.b, -1i), vec2<i32>(var_1.b.x, var_1.b.x))), var_1.a), vec4<u32>(~1u, abs(46319u), abs(reverseBits(arg_1.x)) << (firstLeadingBit(1u) % 32u), 4294967295u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(284f + arg_0.x)) + _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_0.x, arg_0.x))))));
    var_2 = Struct_2(var_2.a, var_1, vec4<u32>(max(1u, max(~arg_1.x, _wgslsmith_dot_vec4_u32(var_2.c, var_2.c))), var_2.c.x, ~(~1u), abs(1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - 373f) + -582f))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_2.d, arg_0.x, arg_0.x, var_2.d), vec4<f32>(-143f, -1601f, arg_0.x, -554f)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.x, -811f, 1076f, arg_0.x), vec4<f32>(var_2.d, -1621f, arg_0.x, 651f))))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<f32>) -> vec2<bool> {
    let var_0 = ~2147483647i;
    let var_1 = true;
    var var_2 = !any(select(select(vec2<bool>(global0[_wgslsmith_index_u32(1u, 24u)], global0[_wgslsmith_index_u32(8895u, 24u)]), select(vec2<bool>(true, global0[_wgslsmith_index_u32(22399u, 24u)]), vec2<bool>(var_1, var_1), global0[_wgslsmith_index_u32(28203u, 24u)]), !vec2<bool>(true, var_1)), !(!vec2<bool>(false, global0[_wgslsmith_index_u32(1u, 24u)])), vec2<bool>(global0[_wgslsmith_index_u32(1u, 24u)] & var_1, true)));
    var_2 = false;
    let var_3 = Struct_1(vec2<bool>(!var_1, global0[_wgslsmith_index_u32(4294967295u, 24u)] == var_1), vec2<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a.x, var_0, var_0), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, var_0, -1i), vec3<i32>(var_0, var_0, var_0))), -1i) | vec2<i32>(u_input.a.x, var_0), ~_wgslsmith_add_vec2_i32(abs(vec2<i32>(-2147483647i, -45122i)), vec2<i32>(u_input.b, u_input.a.x) & u_input.a), !select(select(vec2<bool>(false, false), vec2<bool>(global0[_wgslsmith_index_u32(29854u, 24u)], true), select(vec2<bool>(false, var_1), vec2<bool>(true, true), vec2<bool>(false, false))), select(select(vec2<bool>(true, var_1), vec2<bool>(true, var_1), vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 24u)])), vec2<bool>(var_1, var_1), var_1), global0[_wgslsmith_index_u32(select(17562u, ~60979u, true), 24u)]));
    return select(!var_3.a, vec2<bool>(!all(!var_3.a), true), vec2<bool>(!var_1, var_3.d.x));
}

fn func_2() -> i32 {
    let var_0 = Struct_1(select(select(vec2<bool>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 3967u), vec3<u32>(1u, 4294967295u, 18560u)), 24u)], global0[_wgslsmith_index_u32(1u << (1u % 32u), 24u)]), vec2<bool>(!global0[_wgslsmith_index_u32(0u, 24u)], global0[_wgslsmith_index_u32(0u << (0u % 32u), 24u)]), true), vec2<bool>(true, global0[_wgslsmith_index_u32(1u, 24u)]), !select(!vec2<bool>(true, global0[_wgslsmith_index_u32(37389u, 24u)]), !vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(36244u, 24u)]), select(vec2<bool>(global0[_wgslsmith_index_u32(0u, 24u)], true), vec2<bool>(global0[_wgslsmith_index_u32(1u, 24u)], false), global0[_wgslsmith_index_u32(42226u, 24u)]))), vec2<i32>(-1i) * -vec2<i32>(~u_input.b, u_input.a.x), u_input.a, select(!func_4(_wgslsmith_f_op_vec4_f32(func_3(vec3<f32>(-136f, -236f, -276f), vec3<u32>(38545u, 4294967295u, 1u))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-467f, -286f, 757f))), select(!select(vec2<bool>(global0[_wgslsmith_index_u32(50702u, 24u)], global0[_wgslsmith_index_u32(7780u, 24u)]), vec2<bool>(true, false), false), vec2<bool>(false && global0[_wgslsmith_index_u32(0u, 24u)], global0[_wgslsmith_index_u32(0u, 24u)]), !(!vec2<bool>(global0[_wgslsmith_index_u32(1u, 24u)], global0[_wgslsmith_index_u32(39255u, 24u)]))), !(!global0[_wgslsmith_index_u32(0u, 24u)])));
    global1 = u_input.b;
    global0 = array<bool, 24>();
    var var_1 = 130856u;
    let var_2 = Struct_2(Struct_1(!var_0.a, u_input.a, ~u_input.a, func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(440f, -300f, -478f, 772f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1559f, 175f, 155f))), _wgslsmith_div_vec3_f32(vec3<f32>(510f, 2298f, -242f), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(715f, -1000f, -1022f)))))), var_0, _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 4294967295u, abs(~28290u), ~_wgslsmith_clamp_u32(1u, 24246u, 72228u)), ~(~vec4<u32>(45602u, 46695u, 4294967295u, 4294967295u))), -273f);
    return _wgslsmith_div_i32(-1i, -19524i);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec3<bool>) -> Struct_2 {
    var var_0 = countOneBits(~_wgslsmith_mod_u32(_wgslsmith_mod_u32(arg_2.c.x, arg_2.c.x), arg_2.c.x));
    var var_1 = arg_2.c;
    global0 = array<bool, 24>();
    let var_2 = firstTrailingBit(0u) | _wgslsmith_add_u32(_wgslsmith_sub_u32(~abs(arg_2.c.x), _wgslsmith_sub_u32(0u << (1u % 32u), ~4294967295u)), ~arg_2.c.x);
    var var_3 = arg_0;
    return arg_2;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = 1u;
    var var_1 = arg_0.a.x;
    let var_2 = func_5(arg_0, Struct_1(!(!arg_0.d), vec2<i32>(15018i, -7786i), vec2<i32>(~(2147483647i ^ u_input.b), _wgslsmith_mult_i32(func_2(), 1i)), arg_0.d), Struct_2(arg_0, Struct_1(!func_4(vec4<f32>(-957f, -1846f, -2206f, -1414f), vec3<f32>(-529f, 821f, -360f)), ~(~vec2<i32>(u_input.a.x, u_input.b)), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-26460i, arg_0.c.x, -32256i), vec3<i32>(-37296i, 12639i, arg_0.c.x)), 1i), select(!arg_0.a, !vec2<bool>(arg_0.a.x, true), select(vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 24u)]), arg_0.d, true))), firstLeadingBit(~reverseBits(vec4<u32>(0u, 4294967295u, 73006u, 4294967295u))), 1000f), select(vec3<bool>(true, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, ~1u), 24u)], !(!arg_0.a.x)), !select(vec3<bool>(arg_0.a.x, global0[_wgslsmith_index_u32(12609u, 24u)], global0[_wgslsmith_index_u32(1u, 24u)]), vec3<bool>(false, false, true), !arg_0.d.x), !arg_0.a.x));
    let var_3 = var_2.c.x;
    var var_4 = ~vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_div_u32(~var_2.c.x, var_3 << (20132u % 32u)), _wgslsmith_mult_u32(var_2.c.x ^ 79388u, 1u)), 4294967295u, 4294967295u);
    return arg_0;
}

fn func_6(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: u32) -> bool {
    global1 = i32(-1i) * -(-(~32403i) ^ firstLeadingBit(arg_0.c.x << (45172u % 32u)));
    var var_0 = min(~arg_3, _wgslsmith_clamp_u32(~arg_3, (arg_3 ^ arg_3) ^ _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(arg_3, arg_3)), func_5(arg_2, arg_0, Struct_2(Struct_1(vec2<bool>(arg_2.d.x, true), vec2<i32>(arg_2.b.x, -1i), arg_1, vec2<bool>(arg_2.a.x, global0[_wgslsmith_index_u32(1u, 24u)])), arg_0, vec4<u32>(84991u, 4294967295u, 0u, arg_3), -1000f), vec3<bool>(arg_2.a.x, false, false)).c.yx), ~1u ^ _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_3, arg_3, arg_3), ~vec3<u32>(arg_3, arg_3, arg_3))));
    global1 = 27616i;
    var var_1 = global0[_wgslsmith_index_u32(1u, 24u)];
    global0 = array<bool, 24>();
    return all(vec2<bool>(!global0[_wgslsmith_index_u32(reverseBits(1u), 24u)] && true, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec2<bool>(all(vec4<bool>(true, true, true, true)), true), u_input.a, vec2<i32>(i32(-1i) * -2147483647i, u_input.a.x), !vec2<bool>(func_6(func_1(Struct_1(vec2<bool>(false, false), vec2<i32>(2147483647i, u_input.b), u_input.a, vec2<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 24u)]))), -u_input.a, Struct_1(vec2<bool>(global0[_wgslsmith_index_u32(35111u, 24u)], global0[_wgslsmith_index_u32(27512u, 24u)]), u_input.a, vec2<i32>(u_input.a.x, u_input.b), vec2<bool>(global0[_wgslsmith_index_u32(4793u, 24u)], global0[_wgslsmith_index_u32(40810u, 24u)])), ~414u), global0[_wgslsmith_index_u32(max(1u, 1u), 24u)]));
    global0 = array<bool, 24>();
    var_0 = func_1(func_1(func_5(func_1(func_1(Struct_1(vec2<bool>(true, var_0.a.x), u_input.a, vec2<i32>(var_0.c.x, 2147483647i), vec2<bool>(true, var_0.a.x)))), Struct_1(func_1(Struct_1(vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 24u)]), vec2<i32>(0i, u_input.b), vec2<i32>(var_0.b.x, u_input.a.x), vec2<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 24u)]))).d, vec2<i32>(-2147483647i, var_0.c.x), u_input.a, !var_0.d), Struct_2(func_1(Struct_1(vec2<bool>(false, var_0.d.x), u_input.a, u_input.a, var_0.d)), Struct_1(vec2<bool>(var_0.a.x, false), u_input.a, u_input.a, vec2<bool>(false, var_0.a.x)), vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_div_f32(-1409f, -101f)), !select(vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 24u)], false), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 24u)], var_0.a.x, var_0.d.x), var_0.a.x)).b));
    global0 = array<bool, 24>();
    var var_1 = 598f;
    var var_2 = func_5(Struct_1(select(!(!vec2<bool>(var_0.d.x, global0[_wgslsmith_index_u32(4294967295u, 24u)])), select(var_0.a, func_4(vec4<f32>(733f, -3117f, -1256f, -2512f), vec3<f32>(1804f, -828f, -244f)), true), var_0.a), _wgslsmith_mod_vec2_i32(var_0.b, countOneBits(_wgslsmith_mult_vec2_i32(var_0.b, vec2<i32>(-24187i, 3303i)))), vec2<i32>(29018i, 0i), !vec2<bool>(var_0.c.x >= -14404i, all(vec4<bool>(global0[_wgslsmith_index_u32(37651u, 24u)], global0[_wgslsmith_index_u32(54610u, 24u)], false, var_0.d.x)))), Struct_1(!select(vec2<bool>(true, false), select(vec2<bool>(false, false), var_0.a, vec2<bool>(true, var_0.d.x)), var_0.a), -vec2<i32>(1i, 1i), u_input.a, select(var_0.a, vec2<bool>(true, true), !vec2<bool>(global0[_wgslsmith_index_u32(1u, 24u)], global0[_wgslsmith_index_u32(73478u, 24u)]))), Struct_2(Struct_1(var_0.d, vec2<i32>(1014i, u_input.a.x), -reverseBits(vec2<i32>(-2147483647i, u_input.a.x)), vec2<bool>(var_0.a.x, var_0.a.x)), Struct_1(!var_0.d, countOneBits(-vec2<i32>(2147483647i, u_input.b)), (var_0.b | u_input.a) ^ (var_0.c << (vec2<u32>(32254u, 0u) % vec2<u32>(32u))), var_0.d), firstTrailingBit(~(~vec4<u32>(4294967295u, 26637u, 0u, 93796u))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(1129f, 1895f)), _wgslsmith_f_op_f32(607f - -687f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(974f))), !global0[_wgslsmith_index_u32(4294967295u, 24u)]))), !select(select(vec3<bool>(false, true, true), select(vec3<bool>(true, true, var_0.a.x), vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 24u)], true), var_0.d.x), !vec3<bool>(global0[_wgslsmith_index_u32(1u, 24u)], var_0.a.x, var_0.a.x)), !(!vec3<bool>(var_0.a.x, true, true)), select(select(vec3<bool>(global0[_wgslsmith_index_u32(18979u, 24u)], global0[_wgslsmith_index_u32(14102u, 24u)], global0[_wgslsmith_index_u32(1888u, 24u)]), vec3<bool>(true, true, global0[_wgslsmith_index_u32(1u, 24u)]), true), vec3<bool>(var_0.a.x, true, global0[_wgslsmith_index_u32(21109u, 24u)]), true)));
    let var_3 = Struct_2(func_1(func_5(func_1(Struct_1(vec2<bool>(global0[_wgslsmith_index_u32(var_2.c.x, 24u)], var_0.d.x), vec2<i32>(var_0.b.x, -62564i), vec2<i32>(var_0.c.x, var_0.c.x), vec2<bool>(global0[_wgslsmith_index_u32(var_2.c.x, 24u)], global0[_wgslsmith_index_u32(var_2.c.x, 24u)]))), Struct_1(func_5(var_2.b, Struct_1(var_0.a, vec2<i32>(var_0.b.x, var_0.b.x), vec2<i32>(var_0.b.x, -34204i), var_0.d), Struct_2(var_2.a, var_2.b, var_2.c, var_2.d), vec3<bool>(true, var_0.d.x, false)).a.a, abs(var_0.b), var_0.c, vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 24u)])), Struct_2(Struct_1(var_0.a, var_2.a.c, vec2<i32>(var_2.a.b.x, -7098i), vec2<bool>(global0[_wgslsmith_index_u32(var_2.c.x, 24u)], var_0.d.x)), var_2.b, abs(var_2.c), -817f), vec3<bool>(any(vec4<bool>(global0[_wgslsmith_index_u32(0u, 24u)], var_2.b.a.x, false, true)), any(vec4<bool>(global0[_wgslsmith_index_u32(var_2.c.x, 24u)], true, var_0.a.x, var_0.a.x)), false)).b), Struct_1(select(var_0.a, select(var_0.a, vec2<bool>(false, false), !var_2.b.d), var_0.a.x), u_input.a, u_input.a, !select(var_0.d, var_0.d, all(vec3<bool>(true, var_0.d.x, true)))), _wgslsmith_add_vec4_u32(vec4<u32>(abs(~var_2.c.x), select(var_2.c.x ^ var_2.c.x, 0u, var_2.d > 520f), ~(~var_2.c.x), ~(~4826u)), _wgslsmith_sub_vec4_u32((vec4<u32>(0u, 4294967295u, var_2.c.x, var_2.c.x) << (var_2.c % vec4<u32>(32u))) << (var_2.c % vec4<u32>(32u)), var_2.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.d) - _wgslsmith_f_op_f32(-var_2.d)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_2.d)) * -1324f));
}

