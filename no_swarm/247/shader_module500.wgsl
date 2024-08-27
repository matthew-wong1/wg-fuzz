struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: vec3<bool>,
    c: i32,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: vec4<u32>,
    d: vec4<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 30>;

var<private> global1: array<vec2<i32>, 7> = array<vec2<i32>, 7>(vec2<i32>(1i, -1i), vec2<i32>(27237i, -1i), vec2<i32>(41848i, 0i), vec2<i32>(-4221i, -29960i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(2147483647i, -83790i), vec2<i32>(22535i, i32(-2147483648)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3() -> vec2<u32> {
    var var_0 = u_input.a.x;
    return countOneBits(~countOneBits(~_wgslsmith_clamp_vec2_u32(vec2<u32>(11539u, 45481u), vec2<u32>(102418u, 0u), vec2<u32>(38238u, 14047u))));
}

fn func_2(arg_0: Struct_2) -> vec2<bool> {
    let var_0 = Struct_4(Struct_3(~_wgslsmith_sub_u32(~1u, 1u), select(select(arg_0.a.www, select(vec3<bool>(true, true, arg_0.a.x), arg_0.a.yyx, arg_0.a.x), u_input.a.x <= u_input.a.x), vec3<bool>(all(vec2<bool>(false, arg_0.a.x)), true, all(vec4<bool>(false, true, arg_0.a.x, arg_0.a.x))), false), _wgslsmith_dot_vec3_i32(vec3<i32>(~2147483647i, ~u_input.a.x, u_input.a.x), _wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(2147483647i, u_input.a.x, -2147483647i)), -vec3<i32>(u_input.a.x, 68022i, -17306i))), Struct_2(arg_0.a, func_3())), Struct_3(1u, arg_0.a.wyx, min(_wgslsmith_clamp_i32(u_input.a.x, -42646i, 11690i) ^ _wgslsmith_sub_i32(-30956i, u_input.a.x), select(u_input.a.x, 68508i, true) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(54306u, arg_0.b.x), arg_0.b) % 32u)), arg_0), countOneBits(vec4<u32>(arg_0.b.x, 64377u, ~(31446u & arg_0.b.x), arg_0.b.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -907f), _wgslsmith_div_f32(707f, -1000f), _wgslsmith_div_f32(-979f, 1749f), 143f)))), arg_0);
    global0 = array<vec4<f32>, 30>();
    global0 = array<vec4<f32>, 30>();
    global1 = array<vec2<i32>, 7>();
    let var_1 = u_input.a.x;
    return !select(vec2<bool>(!any(vec2<bool>(false, false)), !(!arg_0.a.x)), arg_0.a.xz, arg_0.a.wz);
}

fn func_1(arg_0: vec4<i32>, arg_1: u32) -> f32 {
    global0 = array<vec4<f32>, 30>();
    var var_0 = 1i;
    var var_1 = ((arg_1 >= 0u) | true) || all(select(vec2<bool>(true, true), func_2(Struct_2(vec4<bool>(true, true, true, true), vec2<u32>(arg_1, 0u))), vec2<bool>(true, true)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(-163f, -118f)), _wgslsmith_f_op_f32(f32(-1f) * -684f)), vec2<f32>(-555f, -1187f)) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(486f, _wgslsmith_f_op_f32(sign(333f))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-196f, -1458f))))))));
    var var_3 = firstTrailingBit(_wgslsmith_mult_u32(~_wgslsmith_clamp_u32(0u, 4294967295u, 41264u), arg_1)) >> (arg_1 % 32u);
    return 613f;
}

fn func_4(arg_0: vec4<f32>, arg_1: f32, arg_2: Struct_3) -> Struct_3 {
    let var_0 = Struct_1(~select(select(vec4<u32>(1u, 14311u, arg_2.d.b.x, 4294967295u), vec4<u32>(51778u, 4294967295u, 1u, arg_2.d.b.x), arg_2.d.a), max(vec4<u32>(arg_2.d.b.x, 54099u, 4294967295u, 1u), vec4<u32>(0u, arg_2.d.b.x, arg_2.a, 65539u)), !arg_2.d.a) >> ((~select(vec4<u32>(arg_2.d.b.x, arg_2.a, 15263u, arg_2.d.b.x), vec4<u32>(arg_2.d.b.x, 4294967295u, arg_2.a, arg_2.a), arg_2.d.a) << ((_wgslsmith_add_vec4_u32(vec4<u32>(arg_2.d.b.x, arg_2.d.b.x, 0u, arg_2.d.b.x), vec4<u32>(4294967295u, 35267u, 32281u, 1u)) & _wgslsmith_add_vec4_u32(vec4<u32>(11876u, 0u, arg_2.a, arg_2.a), vec4<u32>(40925u, arg_2.a, 36666u, 46128u))) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, -1i, _wgslsmith_mult_i32(arg_2.c & u_input.a.x, 1i << (1u % 32u))), _wgslsmith_mod_vec3_i32(vec3<i32>(~arg_2.c, arg_2.c, min(2147483647i, arg_2.c)), abs(vec3<i32>(-19911i, 178i, 0i)) | _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, 20600i, -36664i), vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_2.d.b.x >> (arg_2.d.b.x % 32u), 4294967295u), 30u)]) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1, _wgslsmith_f_op_f32(arg_1 - 565f), -839f, _wgslsmith_f_op_f32(-756f + -937f))))));
    var var_1 = var_0.c.x;
    let var_2 = arg_2.d;
    let var_3 = _wgslsmith_add_u32(2940u, var_0.a.x);
    let var_4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, 286f));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(func_4(global0[_wgslsmith_index_u32(firstLeadingBit(0u), 30u)], _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-308f - -1184f) * _wgslsmith_f_op_f32(f32(-1f) * -250f)), _wgslsmith_f_op_f32(func_1(~vec4<i32>(u_input.a.x, -28483i, u_input.a.x, u_input.a.x), _wgslsmith_mult_u32(56945u, 14416u))))), Struct_3(firstTrailingBit(121004u), vec3<bool>(all(vec3<bool>(false, false, false)), true, true), u_input.a.x, Struct_2(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), false), ~vec2<u32>(0u, 1u)))), func_4(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 40766u), 30u)]), vec4<f32>(_wgslsmith_f_op_f32(func_1(vec4<i32>(-43268i, -15010i, u_input.a.x, u_input.a.x), 23742u)), _wgslsmith_f_op_f32(f32(-1f) * -2013f), _wgslsmith_f_op_f32(f32(-1f) * -1356f), _wgslsmith_div_f32(-2217f, -1095f)), vec4<bool>(true, true, true, true))), 3287f, Struct_3(1u, vec3<bool>(true, all(vec2<bool>(false, true)), func_2(Struct_2(vec4<bool>(false, true, false, false), vec2<u32>(5687u, 43724u))).x), u_input.a.x, func_4(global0[_wgslsmith_index_u32(~3882u, 30u)], -243f, func_4(vec4<f32>(717f, -1482f, 1600f, -235f), 984f, Struct_3(32534u, vec3<bool>(false, true, false), u_input.a.x, Struct_2(vec4<bool>(false, true, false, true), vec2<u32>(4294967295u, 20679u))))).d)), vec4<u32>(1u, 1u, 1u, 1u), global0[_wgslsmith_index_u32(1u, 30u)], Struct_2(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true))), vec2<u32>(1u, _wgslsmith_add_u32(7380u, abs(0u)))));
    let var_1 = firstLeadingBit(~global1[_wgslsmith_index_u32(~1u, 7u)]);
    global0 = array<vec4<f32>, 30>();
    let var_2 = Struct_4(Struct_3(firstTrailingBit(~var_0.a.d.b.x) << (~var_0.a.a % 32u), var_0.b.d.a.zzw, var_1.x, Struct_2(var_0.e.a, ~vec2<u32>(41338u, var_0.b.d.b.x))), Struct_3(abs(0u), vec3<bool>(all(var_0.a.d.a), false, var_0.e.a.x), var_0.b.c, var_0.b.d), vec4<u32>(abs(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 4294967295u, var_0.c.x), _wgslsmith_add_vec3_u32(vec3<u32>(var_0.e.b.x, var_0.c.x, var_0.e.b.x), vec3<u32>(46456u, var_0.e.b.x, var_0.c.x)))), 78367u, _wgslsmith_mod_u32(abs(var_0.b.a) & max(1u, var_0.a.d.b.x), func_4(_wgslsmith_f_op_vec4_f32(round(var_0.d)), _wgslsmith_div_f32(var_0.d.x, 578f), var_0.b).a), ~4294967295u ^ ~var_0.b.a), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-768f + var_0.d.x), var_0.d.x)), var_0.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec4<i32>(-8228i, var_1.x, -31905i, u_input.a.x), var_0.a.a)) * _wgslsmith_f_op_f32(ceil(var_0.d.x))), _wgslsmith_f_op_f32(var_0.d.x + _wgslsmith_f_op_f32(var_0.d.x - 1000f))))), func_4(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(4294967295u, ~var_0.e.b.x), 1u ^ var_0.b.d.b.x), 30u)], var_0.d.x, Struct_3(select(~5019u, var_0.e.b.x, all(vec3<bool>(var_0.e.a.x, false, var_0.e.a.x))), var_0.b.d.a.xwx, firstLeadingBit(-1i), var_0.a.d)).d);
    global0 = array<vec4<f32>, 30>();
    var var_3 = -962f;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.x, ~var_2.b.d.b.x, firstTrailingBit(select(var_2.c, vec4<u32>(1u, _wgslsmith_mod_u32(1u, 55u), select(var_0.b.a, var_2.c.x, false), ~var_0.c.x), var_0.b.d.a)), ~_wgslsmith_dot_vec2_u32(select(~vec2<u32>(1u, 0u), ~var_2.b.d.b, var_0.a.b.x == var_0.e.a.x), _wgslsmith_sub_vec2_u32(func_4(vec4<f32>(1000f, 562f, var_0.d.x, var_0.d.x), var_0.d.x, Struct_3(var_0.b.d.b.x, var_0.b.d.a.ywy, var_2.b.c, Struct_2(var_0.b.d.a, vec2<u32>(var_2.b.d.b.x, 1u)))).d.b, var_0.a.d.b)), reverseBits(vec2<u32>(1u, var_0.b.a)));
}

