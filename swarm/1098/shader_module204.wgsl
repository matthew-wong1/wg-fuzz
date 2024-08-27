struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec2<i32>,
    d: u32,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec2<bool>,
    e: Struct_2,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: Struct_3,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 15>;

var<private> global1: array<Struct_5, 26>;

var<private> global2: bool = false;

var<private> global3: vec3<u32> = vec3<u32>(0u, 57241u, 0u);

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: Struct_5) -> Struct_5 {
    let var_0 = u_input.d.x;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b, arg_0.b) - vec2<f32>(arg_0.b, arg_0.b))) - vec2<f32>(arg_0.b, _wgslsmith_f_op_f32(select(-1697f, arg_0.b, arg_0.a.d.x)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -453f))));
    let var_2 = arg_0.a.e;
    var var_3 = Struct_2(arg_0.a.e.a, vec2<i32>(-31336i, 1i), select(vec2<i32>(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(arg_0.a.a, var_2.b.x, var_0)), -arg_0.a.c.yzy), -29059i), -vec2<i32>(arg_0.a.e.c.x, -33129i) & -max(vec2<i32>(u_input.d.x, -402i), arg_0.a.c.yy), select(vec2<bool>(false, !arg_0.a.d.x), arg_0.a.d, true)), var_2.a.a);
    global0 = array<vec2<f32>, 15>();
    return global1[_wgslsmith_index_u32(1u, 26u)];
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: Struct_4) -> bool {
    var var_0 = global1[_wgslsmith_index_u32(13301u, 26u)];
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -859f) * -222f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_5(var_0.a, -982f)).b + _wgslsmith_f_op_f32(1276f + -345f)) + _wgslsmith_f_op_f32(floor(578f))))));
    let var_2 = var_0.a.d;
    var var_3 = var_0.a.e.c.x;
    var var_4 = countOneBits(abs(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, u_input.e), ~(vec2<u32>(4294967295u, 53915u) << (u_input.c % vec2<u32>(32u))))));
    return var_0.a.d.x;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_5, arg_2: Struct_4) -> Struct_1 {
    global1 = array<Struct_5, 26>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2(arg_1).b))));
    var var_1 = global1[_wgslsmith_index_u32(0u, 26u)];
    var_1 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(firstTrailingBit(~arg_1.a.e.d | u_input.b) & var_1.a.e.a.a, ~(~(~max(u_input.a, 1u)))), 26u)];
    let var_2 = func_2(global1[_wgslsmith_index_u32(var_1.a.b ^ 20211u, 26u)]).a;
    return arg_0.e.a;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_4 {
    var var_0 = _wgslsmith_div_vec3_i32(-firstLeadingBit(vec3<i32>(u_input.d.x, u_input.d.x, 2147483647i << (arg_1.a % 32u))), vec3<i32>(-1i, ~3422i, min(_wgslsmith_dot_vec4_i32(select(vec4<i32>(-1i, -2147483647i, -1i, -1i), vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x), true), func_2(Struct_5(Struct_3(u_input.d.x, 40371u, vec4<i32>(2147483647i, 7114i, u_input.d.x, u_input.d.x), vec2<bool>(false, false), Struct_2(arg_1, u_input.d, vec2<i32>(-24465i, u_input.d.x), 0u)), -173f)).a.c), u_input.d.x)));
    global0 = array<vec2<f32>, 15>();
    let var_1 = _wgslsmith_sub_vec2_i32(~reverseBits(firstTrailingBit(u_input.d | var_0.xz)), vec2<i32>(~var_0.x, 0i));
    var var_2 = global0[_wgslsmith_index_u32(max(u_input.c.x | ~global3.x, ~max(~60134u, 0u << (_wgslsmith_mult_u32(u_input.a, 26995u) % 32u))), 15u)];
    global0 = array<vec2<f32>, 15>();
    return Struct_4(any(vec2<bool>(true, all(vec3<bool>(true, true, true)))));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: Struct_1) -> vec2<i32> {
    var var_0 = func_5(func_4(Struct_3(-arg_1.e.b.x, 4294967295u >> (arg_2.a % 32u), vec4<i32>(~arg_1.e.c.x, ~arg_1.a, 1i, 45436i), vec2<bool>(true, true), arg_1.e), func_2(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(20084u, 32124u), 26u)]), Struct_4(func_3(~arg_1.c, Struct_4(true), Struct_4(true)))), arg_2);
    let var_1 = Struct_3(select(_wgslsmith_add_i32(min(arg_1.a, 1i), reverseBits(1i)), i32(-1i) * -_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.c.x, -1i), arg_1.e.b), true), u_input.b, vec4<i32>(countOneBits(_wgslsmith_dot_vec4_i32(arg_1.c, abs(arg_1.c))), arg_1.c.x, abs(u_input.d.x), min(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 5674i, -3511i), arg_1.c.wzx), ~arg_1.a), firstTrailingBit(u_input.d.x))), vec2<bool>(true, true || (_wgslsmith_f_op_f32(-arg_0.x) < arg_0.x)), func_2(Struct_5(arg_1, _wgslsmith_f_op_f32(arg_0.x + -609f))).a.e);
    global3 = abs(vec3<u32>(13923u, ~_wgslsmith_div_u32(4294967295u, 1u), func_4(func_2(global1[_wgslsmith_index_u32(var_1.b, 26u)]).a, Struct_5(Struct_3(u_input.d.x, 4294967295u, arg_1.c, var_1.d, var_1.e), arg_0.x), func_5(Struct_1(1u), Struct_1(arg_2.a))).a)) >> (vec3<u32>(_wgslsmith_add_u32(firstLeadingBit(4294967295u >> (arg_1.b % 32u)), 97657u), func_4(arg_1, func_2(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, global3.x), 26u)]), Struct_4(true)).a, u_input.b) % vec3<u32>(32u));
    global2 = true;
    var_0 = func_5(Struct_1(~u_input.a), arg_1.e.a);
    return -firstTrailingBit(vec2<i32>(~u_input.d.x, -u_input.d.x));
}

fn func_6(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: vec2<f32>, arg_3: vec4<u32>) -> Struct_2 {
    global3 = arg_3.zyw;
    global0 = array<vec2<f32>, 15>();
    var var_0 = arg_1.e;
    return func_2(global1[_wgslsmith_index_u32(36725u, 26u)]).a.e;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(_wgslsmith_add_vec2_i32(~(~u_input.d), func_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-238f, -2173f, -1109f) * vec3<f32>(700f, -367f, -1000f)), _wgslsmith_div_vec3_f32(vec3<f32>(654f, -1301f, -491f), vec3<f32>(-116f, -989f, -2796f)))), Struct_3(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.d.x, -19756i, u_input.d.x), vec4<i32>(18935i, u_input.d.x, -11241i, 0i)), u_input.c.x, -vec4<i32>(0i, u_input.d.x, u_input.d.x, u_input.d.x), select(vec2<bool>(true, true), vec2<bool>(true, true), false), Struct_2(Struct_1(u_input.a), vec2<i32>(u_input.d.x, u_input.d.x), vec2<i32>(1i, -17979i), 4294967295u)), Struct_1(27517u))), func_2(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(select(vec3<u32>(1u, 42788u, u_input.a), vec3<u32>(global3.x, global3.x, u_input.e), vec3<bool>(false, false, true)) & (vec3<u32>(global3.x, u_input.c.x, global3.x) >> (vec3<u32>(global3.x, u_input.b, global3.x) % vec3<u32>(32u))), vec3<u32>(0u, ~4294967295u, u_input.e)), 26u)]).a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(778f - -678f), _wgslsmith_f_op_f32(-1000f - -1047f))), -975f)), _wgslsmith_div_vec4_u32(min(~(~vec4<u32>(global3.x, global3.x, u_input.b, u_input.a)), _wgslsmith_mult_vec4_u32(select(vec4<u32>(global3.x, global3.x, 4294967295u, global3.x), vec4<u32>(16109u, u_input.e, global3.x, 4294967295u), vec4<bool>(false, false, true, false)), countOneBits(vec4<u32>(130616u, 0u, u_input.c.x, u_input.a)))), vec4<u32>(1u, firstTrailingBit(global3.x), 10117u, ~38376u) ^ abs(firstLeadingBit(vec4<u32>(u_input.c.x, u_input.c.x, 0u, u_input.a)))));
    global3 = ~_wgslsmith_sub_vec3_u32(max(vec3<u32>(u_input.b, _wgslsmith_mod_u32(global3.x, 28300u), ~var_0.d), vec3<u32>(var_0.a.a, global3.x, 46452u)), vec3<u32>(~1u, ~var_0.d, ~var_0.a.a) | vec3<u32>(var_0.d, _wgslsmith_div_u32(u_input.c.x, u_input.b), _wgslsmith_add_u32(var_0.a.a, 11956u)));
    var var_1 = false;
    var_0 = func_6(vec2<i32>(-1i) * -(~_wgslsmith_add_vec2_i32(var_0.b, var_0.b)), Struct_3(2147483647i, 0u, select(_wgslsmith_add_vec4_i32(func_2(Struct_5(Struct_3(var_0.c.x, 0u, vec4<i32>(29270i, var_0.b.x, var_0.c.x, var_0.c.x), vec2<bool>(true, false), Struct_2(Struct_1(0u), u_input.d, vec2<i32>(var_0.b.x, var_0.c.x), 72723u)), -475f)).a.c, min(vec4<i32>(u_input.d.x, var_0.c.x, 1201i, 9425i), vec4<i32>(u_input.d.x, 68518i, -20446i, var_0.c.x))), firstTrailingBit(max(vec4<i32>(-54057i, -2147483647i, var_0.b.x, var_0.c.x), vec4<i32>(u_input.d.x, u_input.d.x, -21318i, var_0.c.x))), select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), false), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), true), true)), vec2<bool>(true, true), func_6(vec2<i32>(var_0.c.x, 3892i), Struct_3(_wgslsmith_clamp_i32(23922i, u_input.d.x, var_0.c.x), 17920u, vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, 1i), vec2<bool>(true, true), Struct_2(var_0.a, vec2<i32>(-17803i, u_input.d.x), u_input.d, 4294967295u)), global0[_wgslsmith_index_u32(0u, 15u)], vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, global3.x), u_input.c), max(u_input.a, 0u), ~var_0.a.a, abs(8072u)))), vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(179f, _wgslsmith_f_op_f32(f32(-1f) * -407f)))), _wgslsmith_f_op_f32(f32(-1f) * -168f)), vec4<u32>(var_0.a.a, abs(global3.x), 17162u, 6215u));
    var var_2 = func_2(global1[_wgslsmith_index_u32(func_6(var_0.c, func_2(global1[_wgslsmith_index_u32(~1u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.b, 0u, u_input.b), vec4<u32>(var_0.d, global3.x, global3.x, u_input.b)) % 32u), 26u)]).a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(-138f, 189f), global0[_wgslsmith_index_u32(var_0.d, 15u)]), _wgslsmith_f_op_vec2_f32(-vec2<f32>(269f, 2317f)), select(vec2<bool>(true, false), vec2<bool>(false, true), false))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-212f, 398f) * global0[_wgslsmith_index_u32(var_0.a.a, 15u)]), vec2<f32>(1f, 1f)))), vec4<u32>(~0u, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(global3.zx, vec2<u32>(85442u, u_input.b)), vec2<u32>(4294967295u, u_input.a)), _wgslsmith_mult_u32(firstTrailingBit(19408u), countOneBits(var_0.a.a)), ~11163u)).d, 26u)]);
    var var_3 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(var_2.b)))), var_2.b, _wgslsmith_f_op_f32(step(var_2.b, -740f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b * var_2.b)))));
    var_0 = var_2.a.e;
    var_0 = var_2.a.e;
    var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b, -720f, 167f, var_3.x) + vec4<f32>(var_2.b, 1401f, -1867f, -713f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(916f, 853f, var_3.x, -2618f)), var_2.a.d.x)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-617f, -260f, var_2.b, var_2.b))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(458f, -498f, var_3.x, var_3.x), vec4<f32>(-982f, var_2.b, 673f, var_2.b)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_3.x, var_3.x, var_2.b)))))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec2<u32>(0u, global3.x)), 10214i, _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(var_2.a.e.d, 1u, var_2.a.e.d), max(vec3<u32>(var_2.a.b, var_0.a.a, 4294967295u), vec3<u32>(var_0.d, var_2.a.b, global3.x))), firstLeadingBit(abs(vec3<u32>(global3.x, 4294967295u, 0u)))) | ~(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.b, global3.x), vec3<u32>(var_2.a.b, var_2.a.e.d, 4294967295u)) << (firstTrailingBit(vec3<u32>(var_2.a.b, var_0.a.a, var_2.a.b)) % vec3<u32>(32u))), var_2.a.c.wyx ^ _wgslsmith_clamp_vec3_i32(countOneBits(~vec3<i32>(-56485i, u_input.d.x, var_2.a.e.c.x)), -var_2.a.c.xxx & -var_2.a.c.zyz, var_2.a.c.yzz), var_0.c.x);
}

