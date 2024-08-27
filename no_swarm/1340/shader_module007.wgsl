struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: u32,
    d: bool,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec4<u32>,
    d: Struct_2,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 9> = array<f32, 9>(-145f, 1355f, -1084f, 581f, 794f, 410f, -1000f, -1345f, 3260f);

var<private> global1: array<f32, 30>;

var<private> global2: array<vec3<i32>, 26> = array<vec3<i32>, 26>(vec3<i32>(3648i, -7711i, 6960i), vec3<i32>(-47320i, 0i, 13189i), vec3<i32>(17387i, -19161i, 1i), vec3<i32>(26516i, i32(-2147483648), 28645i), vec3<i32>(i32(-2147483648), i32(-2147483648), -24620i), vec3<i32>(55682i, 2147483647i, 0i), vec3<i32>(-42456i, -32487i, 0i), vec3<i32>(-2151i, 46994i, -1i), vec3<i32>(-15975i, i32(-2147483648), -26931i), vec3<i32>(i32(-2147483648), 2147483647i, 0i), vec3<i32>(i32(-2147483648), i32(-2147483648), 1i), vec3<i32>(-12256i, -25128i, 2147483647i), vec3<i32>(2147483647i, 6731i, 3816i), vec3<i32>(-11628i, -22472i, -3673i), vec3<i32>(0i, -15336i, 382i), vec3<i32>(0i, 1i, -7669i), vec3<i32>(-18512i, -42172i, 1i), vec3<i32>(3003i, -74816i, 1i), vec3<i32>(-61975i, 1i, -48132i), vec3<i32>(1i, 2147483647i, 2147483647i), vec3<i32>(2147483647i, -48407i, 1i), vec3<i32>(-59493i, -17283i, -24706i), vec3<i32>(0i, 0i, -1i), vec3<i32>(0i, 1i, -10214i), vec3<i32>(i32(-2147483648), -34468i, i32(-2147483648)), vec3<i32>(-1874i, 0i, 2147483647i));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<f32>) -> vec3<u32> {
    var var_0 = Struct_1(firstTrailingBit(~reverseBits(u_input.a)), vec3<bool>(!any(select(vec2<bool>(false, true), vec2<bool>(false, true), true)), all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true))), false), 2147483647i, false);
    var var_1 = Struct_3(vec2<bool>(false, any(select(select(var_0.b, var_0.b, false), !var_0.b, var_0.d))), ~_wgslsmith_mod_vec3_u32(firstLeadingBit(_wgslsmith_sub_vec3_u32(arg_0.yyy, vec3<u32>(arg_0.x, arg_0.x, arg_0.x))), max(vec3<u32>(22494u, arg_0.x, arg_0.x), vec3<u32>(0u, arg_0.x, 70151u))), ~select(_wgslsmith_add_u32(arg_0.x, arg_0.x), countOneBits(arg_0.x), var_0.d) | ~abs(1u), any(var_0.b), Struct_1(abs((u_input.b.x >> (arg_0.x % 32u)) >> (~arg_0.x % 32u)), var_0.b, u_input.a, true));
    var_0 = Struct_1(u_input.b.x, !var_0.b, 6215i, all(select(vec4<bool>(var_0.b.x, true, true, false), select(!vec4<bool>(var_0.d, var_0.d, var_1.a.x, var_0.d), !vec4<bool>(false, var_1.d, var_0.b.x, false), 1i == var_0.a), false)));
    let var_2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(round(arg_1.x)), _wgslsmith_f_op_f32(-2141f - 1100f), global1[_wgslsmith_index_u32(var_1.c, 30u)], _wgslsmith_div_f32(arg_1.x, 260f)))), vec4<f32>(-976f, global0[_wgslsmith_index_u32((arg_0.x & 1445u) >> (abs(var_1.b.x) % 32u), 9u)], global0[_wgslsmith_index_u32(~arg_0.x, 9u)], _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(3514u, 9u)])))))));
    global1 = array<f32, 30>();
    return vec3<u32>(reverseBits(_wgslsmith_mult_u32(var_1.c & 5507u, _wgslsmith_add_u32(9662u, 34583u))), arg_0.x, countOneBits(4294967295u)) ^ select(vec3<u32>(~var_1.c, ~1u, firstTrailingBit(~12573u)), ~_wgslsmith_add_vec3_u32(arg_0.ywz, var_1.b), vec3<bool>(!all(vec4<bool>(true, false, false, false)), var_1.a.x && !var_0.b.x, true));
}

fn func_2(arg_0: Struct_5, arg_1: vec4<f32>, arg_2: Struct_3) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = 1264f;
    let var_2 = Struct_4(arg_2, Struct_3(vec2<bool>(true, all(arg_2.e.b.xz) | true), func_3(~var_0.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 30u)], 255f, 1532f, 265f), arg_1)) + vec4<f32>(global0[_wgslsmith_index_u32(arg_0.b.x, 9u)], global0[_wgslsmith_index_u32(0u, 9u)], 2495f, global1[_wgslsmith_index_u32(arg_0.c.x, 30u)]))), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.c.x, 0u, var_0.c.x), arg_2.b), firstLeadingBit(vec3<u32>(arg_0.b.x, arg_0.b.x, 0u))), vec3<u32>(arg_2.c, ~arg_0.b.x, var_0.b.x)), (!arg_2.a.x || (2185i > var_0.a.c)) | all(select(vec4<bool>(false, false, var_0.a.d, arg_2.d), vec4<bool>(arg_2.d, arg_0.e, false, false), vec4<bool>(true, false, arg_0.e, arg_2.e.d))), var_0.a), arg_2);
    var_1 = -1523f;
    global2 = array<vec3<i32>, 26>();
    return Struct_1(~min(_wgslsmith_sub_i32(arg_2.e.a, var_2.a.e.c), 18973i) >> (~min(arg_2.c << (var_2.c.c % 32u), arg_0.b.x) % 32u), vec3<bool>(any(select(vec2<bool>(true, arg_0.a.b.x), arg_0.a.b.xy, true)), select(select(var_2.a.a.x == true, true, false), !var_0.e, 1f > _wgslsmith_f_op_f32(trunc(arg_1.x))), arg_0.a.d), 1i, arg_0.d.a);
}

fn func_4(arg_0: Struct_5, arg_1: i32, arg_2: bool, arg_3: Struct_2) -> Struct_3 {
    let var_0 = Struct_4(Struct_3(!arg_0.a.b.zy, arg_0.c.yzw, 1u | ~arg_0.b.x, func_2(arg_0, vec4<f32>(_wgslsmith_f_op_f32(step(-991f, global0[_wgslsmith_index_u32(1u, 9u)])), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_0.b.x, 9u)] * global0[_wgslsmith_index_u32(arg_0.b.x, 9u)]), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 30u)]), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(28421u, 1u), 9u)]), Struct_3(!arg_0.a.b.zx, _wgslsmith_add_vec3_u32(arg_0.c.wwy, vec3<u32>(4294967295u, 4294967295u, arg_0.b.x)), arg_0.c.x & 52202u, true, func_2(arg_0, vec4<f32>(global1[_wgslsmith_index_u32(0u, 30u)], global0[_wgslsmith_index_u32(0u, 9u)], -863f, -366f), Struct_3(vec2<bool>(arg_0.e, true), arg_0.c.xxy, arg_0.c.x, arg_2, arg_0.a)))).b.x, func_2(Struct_5(arg_0.a, arg_0.c.yz, _wgslsmith_div_vec4_u32(arg_0.c, arg_0.c), Struct_2(true, arg_0.d.b), true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, 263f, -749f, global0[_wgslsmith_index_u32(arg_0.b.x, 9u)]), vec4<f32>(global0[_wgslsmith_index_u32(arg_0.c.x, 9u)], 309f, global0[_wgslsmith_index_u32(arg_0.b.x, 9u)], 543f)))), Struct_3(vec2<bool>(arg_0.a.b.x, arg_3.a), arg_0.c.yzx, arg_0.b.x, false, Struct_1(u_input.a, arg_0.a.b, arg_0.d.b.x, arg_2)))), Struct_3(select(!arg_0.a.b.xz, !arg_0.a.b.xz, arg_0.a.b.yx), vec3<u32>(0u, abs(_wgslsmith_clamp_u32(arg_0.c.x, arg_0.c.x, 4294967295u)), ~_wgslsmith_mod_u32(arg_0.b.x, arg_0.c.x)), select(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_0.c.x), arg_0.b), ~(~arg_0.b.x), any(!arg_0.a.b.zy)), all(vec4<bool>(arg_3.b.x == arg_0.d.b.x, arg_0.a.b.x, arg_2, true)), arg_0.a), Struct_3(vec2<bool>(all(vec3<bool>(arg_0.e, arg_2, arg_3.a)), (arg_0.d.a | true) || true), ~(vec3<u32>(6914u, 0u, 26606u) & vec3<u32>(17657u, arg_0.c.x, 0u)), firstTrailingBit(~(~75921u)), !func_2(Struct_5(arg_0.a, arg_0.b, arg_0.c, arg_3, false), vec4<f32>(global1[_wgslsmith_index_u32(arg_0.c.x, 30u)], 226f, global1[_wgslsmith_index_u32(arg_0.c.x, 30u)], global1[_wgslsmith_index_u32(arg_0.c.x, 30u)]), Struct_3(arg_0.a.b.yz, arg_0.c.wxy, arg_0.b.x, false, arg_0.a)).d, Struct_1(9703i, arg_0.a.b, -45284i, true)));
    var var_1 = abs((max(~arg_0.c.x, reverseBits(0u)) & 42664u) | ~(_wgslsmith_add_u32(var_0.c.b.x, var_0.b.b.x) << (_wgslsmith_add_u32(8355u, var_0.b.b.x) % 32u)));
    let var_2 = true;
    var_1 = 38443u;
    global2 = array<vec3<i32>, 26>();
    return Struct_3(!vec2<bool>(true, arg_0.e), min(var_0.a.b, var_0.b.b), _wgslsmith_mult_u32(~_wgslsmith_add_u32(~arg_0.c.x, _wgslsmith_div_u32(arg_0.c.x, 0u)), 0u), !arg_2, var_0.c.e);
}

fn func_5(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: vec2<bool>) -> Struct_5 {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-485f, -784f, global0[_wgslsmith_index_u32(1412u, 9u)], global1[_wgslsmith_index_u32(arg_0.b.x, 30u)]))) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1374f, global0[_wgslsmith_index_u32(1u, 9u)], global0[_wgslsmith_index_u32(4294967295u, 9u)], 697f)))) + vec4<f32>(-773f, _wgslsmith_f_op_f32(f32(-1f) * -2313f), _wgslsmith_f_op_f32(f32(-1f) * -1624f), _wgslsmith_f_op_f32(min(-463f, global1[_wgslsmith_index_u32(arg_0.b.x, 30u)])))) - vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 30u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1566f * 157f)), global1[_wgslsmith_index_u32(min(63184u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.b.x, 39738u, 11769u), arg_0.b)), 30u)], global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(0u, arg_0.c), arg_0.c), 30u)])), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-362f, -622f, global0[_wgslsmith_index_u32(arg_0.b.x, 9u)], -778f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(650f, 1381f, global1[_wgslsmith_index_u32(4294967295u, 30u)], global1[_wgslsmith_index_u32(arg_0.b.x, 30u)]))), vec4<f32>(global1[_wgslsmith_index_u32(0u, 30u)], -431f, global1[_wgslsmith_index_u32(~34453u, 30u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 30u)] * global0[_wgslsmith_index_u32(arg_0.b.x, 9u)])), vec4<bool>(all(vec4<bool>(arg_2.x, arg_2.x, true, arg_0.d)), true, true, func_2(Struct_5(arg_0.e, arg_0.b.xx, vec4<u32>(25542u, 0u, 1u, 22243u), Struct_2(true, vec4<i32>(arg_0.e.c, arg_0.e.a, -2147483647i, arg_0.e.c)), arg_0.e.b.x), vec4<f32>(global0[_wgslsmith_index_u32(72224u, 9u)], global1[_wgslsmith_index_u32(arg_0.c, 30u)], global1[_wgslsmith_index_u32(85396u, 30u)], -140f), Struct_3(arg_2, arg_0.b, 89002u, false, Struct_1(u_input.b.x, vec3<bool>(arg_2.x, true, true), 14818i, arg_2.x))).d)))), arg_0.e.d));
    var var_1 = func_2(Struct_5(func_2(Struct_5(Struct_1(arg_0.e.c, arg_0.e.b, -25709i, arg_0.e.d), arg_0.b.xz, vec4<u32>(arg_0.c, 1u, arg_0.b.x, 7996u) | vec4<u32>(arg_0.b.x, arg_0.c, 4294967295u, 21844u), Struct_2(true, vec4<i32>(arg_0.e.c, 5981i, u_input.a, arg_1.x)), false), _wgslsmith_div_vec4_f32(var_0, _wgslsmith_f_op_vec4_f32(floor(var_0))), arg_0), vec2<u32>(max(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.b.x, 0u, 4294967295u, arg_0.b.x), vec4<u32>(arg_0.b.x, 14143u, arg_0.b.x, 12940u)), ~arg_0.c), firstLeadingBit(arg_0.b.x)), min(select(firstLeadingBit(vec4<u32>(arg_0.b.x, 0u, 0u, arg_0.b.x)), ~vec4<u32>(4863u, arg_0.b.x, 3350u, 0u), select(vec4<bool>(arg_2.x, arg_2.x, arg_2.x, true), vec4<bool>(arg_2.x, false, arg_2.x, true), vec4<bool>(true, false, arg_2.x, arg_2.x))), firstLeadingBit(max(vec4<u32>(0u, 3020u, 19792u, 50677u), vec4<u32>(41562u, arg_0.b.x, arg_0.b.x, 0u)))), Struct_2(func_4(Struct_5(arg_0.e, vec2<u32>(4294967295u, arg_0.b.x), vec4<u32>(21913u, arg_0.b.x, arg_0.c, arg_0.c), Struct_2(false, vec4<i32>(u_input.a, 2147483647i, arg_0.e.a, -1i)), false), arg_1.x & arg_1.x, true, Struct_2(arg_0.a.x, vec4<i32>(0i, arg_0.e.c, 4839i, -1i))).e.d, _wgslsmith_sub_vec4_i32(abs(vec4<i32>(u_input.b.x, 14061i, arg_0.e.c, -60344i)), vec4<i32>(1i, arg_1.x, arg_1.x, -8542i))), arg_2.x), var_0, arg_0);
    let var_2 = Struct_4(Struct_3(arg_0.e.b.yx, arg_0.b | (vec3<u32>(arg_0.b.x, arg_0.c, arg_0.b.x) << (arg_0.b % vec3<u32>(32u))), _wgslsmith_add_u32(~arg_0.b.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(1714u, 1u, 1u, arg_0.b.x), vec4<u32>(arg_0.b.x, arg_0.c, arg_0.c, 60219u))), !(-17230i >= arg_1.x), Struct_1(~6855i, vec3<bool>(true, true, true), _wgslsmith_div_i32(firstLeadingBit(u_input.a), _wgslsmith_sub_i32(-15000i, -3180i)), arg_0.a.x)), func_4(Struct_5(arg_0.e, vec2<u32>(_wgslsmith_div_u32(46672u, arg_0.b.x), 1u), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.b.x, arg_0.b.x, arg_0.b.x, 1u), vec4<u32>(0u, arg_0.b.x, arg_0.b.x, 7694u) ^ vec4<u32>(9758u, arg_0.b.x, arg_0.c, 65857u)), Struct_2(true, -u_input.b), false), firstTrailingBit(func_2(Struct_5(Struct_1(1i, vec3<bool>(false, arg_2.x, false), 0i, arg_0.e.b.x), vec2<u32>(arg_0.b.x, 0u), vec4<u32>(arg_0.c, arg_0.c, 21320u, arg_0.b.x), Struct_2(arg_0.e.b.x, vec4<i32>(1i, -1i, 49680i, u_input.b.x)), true), vec4<f32>(var_0.x, global0[_wgslsmith_index_u32(arg_0.b.x, 9u)], -144f, var_0.x), arg_0).a) << (reverseBits(arg_0.c) % 32u), all(select(!vec4<bool>(var_1.d, false, true, true), vec4<bool>(true, true, true, true), !vec4<bool>(false, false, arg_0.d, true))), Struct_2(false, u_input.b)), func_4(Struct_5(func_2(Struct_5(arg_0.e, vec2<u32>(arg_0.c, arg_0.c), vec4<u32>(6042u, 33179u, arg_0.b.x, 4294967295u), Struct_2(true, vec4<i32>(u_input.b.x, u_input.a, -949i, arg_1.x)), true), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1200f, 2045f, global0[_wgslsmith_index_u32(27599u, 9u)]) + var_0), Struct_3(vec2<bool>(var_1.b.x, false), arg_0.b, arg_0.c, arg_2.x, arg_0.e)), max(vec2<u32>(arg_0.b.x, arg_0.b.x), ~vec2<u32>(43170u, 0u)), min(vec4<u32>(0u, arg_0.b.x, arg_0.c, arg_0.b.x) >> (vec4<u32>(71468u, arg_0.b.x, 76161u, 1u) % vec4<u32>(32u)), reverseBits(vec4<u32>(arg_0.c, 4294967295u, 63114u, arg_0.b.x))), Struct_2(false, _wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.a, arg_0.e.c, u_input.b.x, u_input.a), vec4<i32>(0i, arg_0.e.a, u_input.b.x, 74046i), vec4<i32>(arg_1.x, var_1.c, 2147483647i, 1i))), any(func_4(Struct_5(arg_0.e, arg_0.b.xy, vec4<u32>(0u, 111237u, arg_0.b.x, 59838u), Struct_2(true, vec4<i32>(-9912i, var_1.a, var_1.c, -27327i)), true), arg_0.e.a, false, Struct_2(arg_2.x, vec4<i32>(u_input.b.x, u_input.a, u_input.b.x, u_input.a))).e.b.zy)), max(-(~var_1.a), i32(-1i) * -8213i), abs(var_1.a) == 1i, Struct_2(all(var_1.b.xy), -u_input.b)));
    global0 = array<f32, 9>();
    global1 = array<f32, 30>();
    return Struct_5(func_2(Struct_5(Struct_1(~64616i, select(vec3<bool>(false, false, var_2.b.a.x), arg_0.e.b, true), 2147483647i | arg_0.e.a, arg_0.a.x & arg_2.x), var_2.b.b.yx, vec4<u32>(min(arg_0.c, arg_0.b.x), func_3(vec4<u32>(0u, 49023u, var_2.a.b.x, 92066u), var_0).x, _wgslsmith_sub_u32(1u, var_2.c.c), _wgslsmith_div_u32(27409u, arg_0.b.x)), Struct_2(true, vec4<i32>(var_1.a, 2147483647i, var_2.c.e.c, 8578i) << (vec4<u32>(34580u, arg_0.c, arg_0.b.x, 1u) % vec4<u32>(32u))), true), vec4<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(-1622f + _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 30u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_2.a.b.x, 9u)]))), func_4(Struct_5(Struct_1(u_input.a, arg_0.e.b, 2147483647i, false), arg_0.b.xx << (arg_0.b.yy % vec2<u32>(32u)), ~vec4<u32>(arg_0.c, 1u, arg_0.c, 27439u), Struct_2(var_2.a.e.d, vec4<i32>(arg_0.e.a, var_1.c, u_input.a, arg_0.e.a)), true), _wgslsmith_mod_i32(-6119i, select(16278i, arg_1.x, true)), var_1.d, Struct_2(arg_0.b.x < 76454u, select(vec4<i32>(arg_0.e.c, arg_0.e.c, var_1.c, var_2.b.e.a), vec4<i32>(arg_1.x, var_2.c.e.a, arg_1.x, -1i), var_1.d)))), var_2.b.b.zz ^ _wgslsmith_add_vec2_u32(vec2<u32>(var_2.b.c >> (var_2.a.c % 32u), arg_0.b.x & 84231u), firstTrailingBit(arg_0.b.zy)), vec4<u32>(~arg_0.b.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(4317u, var_2.c.c, 0u)), vec3<u32>(arg_0.c, var_2.a.b.x, 32642u) | arg_0.b), abs(52578u)), _wgslsmith_dot_vec3_u32(~var_2.c.b, arg_0.b >> (var_2.b.b % vec3<u32>(32u))), _wgslsmith_dot_vec4_u32(vec4<u32>(~15410u, firstTrailingBit(var_2.c.b.x), arg_0.b.x, ~var_2.c.c), _wgslsmith_div_vec4_u32(abs(vec4<u32>(arg_0.c, 1u, 16469u, 15038u)), ~vec4<u32>(arg_0.b.x, arg_0.b.x, arg_0.c, 1u)))), Struct_2(!arg_2.x, vec4<i32>(-var_1.a, u_input.b.x, -arg_0.e.c, _wgslsmith_add_i32(1i, _wgslsmith_sub_i32(arg_1.x, 0i)))), false);
}

fn func_1() -> bool {
    let var_0 = func_5(func_4(Struct_5(func_2(Struct_5(Struct_1(15361i, vec3<bool>(true, false, true), u_input.a, false), vec2<u32>(16452u, 23031u), vec4<u32>(4294967295u, 80695u, 1u, 4294967295u), Struct_2(true, u_input.b), false), vec4<f32>(2372f, 1651f, -564f, -470f), Struct_3(vec2<bool>(false, true), vec3<u32>(29518u, 31188u, 110208u), 15906u, true, Struct_1(u_input.b.x, vec3<bool>(false, false, false), u_input.b.x, true))), max(~vec2<u32>(1u, 23300u), ~vec2<u32>(0u, 1u)), vec4<u32>(1u, firstLeadingBit(1u), 4294967295u, 1u), Struct_2(true, _wgslsmith_clamp_vec4_i32(vec4<i32>(-10886i, -1i, u_input.a, 16141i), u_input.b, u_input.b)), any(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true)))), -u_input.a, all(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), Struct_2(true, u_input.b)), min(vec3<i32>(select(abs(15670i), i32(-1i) * -2147483647i, true), _wgslsmith_sub_i32(_wgslsmith_add_i32(28025i, 1i), -u_input.b.x), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(u_input.b, vec4<i32>(u_input.b.x, u_input.b.x, u_input.a, u_input.b.x), vec4<i32>(-2147483647i, 0i, u_input.a, -4480i)), u_input.b)), select(max(~global2[_wgslsmith_index_u32(4294967295u, 26u)], global2[_wgslsmith_index_u32(~40124u, 26u)]), ~(~vec3<i32>(0i, 1i, u_input.b.x)), vec3<bool>(-6576i > u_input.b.x, true, true))), vec2<bool>(true, ~select(4294967295u, 14409u, false) < 1u));
    global0 = array<f32, 9>();
    return var_0.e;
}

fn func_6(arg_0: Struct_1) -> StorageBuffer {
    return StorageBuffer(firstLeadingBit(_wgslsmith_mod_vec4_i32(u_input.b, _wgslsmith_clamp_vec4_i32(vec4<i32>(-40784i, 1i, arg_0.c, u_input.a), vec4<i32>(-1i, u_input.a, arg_0.c, -1i), vec4<i32>(12737i, u_input.a, -1i, arg_0.c))) & -_wgslsmith_sub_vec4_i32(u_input.b, u_input.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(31436u, 13167u, 84185u) | 1u, 9u)])));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(Struct_1(2147483647i, vec3<bool>(_wgslsmith_add_i32(u_input.b.x, 78697i) == u_input.a, true, true), 992i << (0u % 32u), func_1()));
}

