struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: bool,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 24> = array<Struct_4, 24>(Struct_4(-37945i, Struct_3(vec4<i32>(2147483647i, 2147483647i, -1i, 2147483647i), vec4<bool>(false, true, true, true), Struct_1(true, false, vec4<bool>(true, false, true, true)), Struct_2(vec2<u32>(4294967295u, 28178u), Struct_1(false, false, vec4<bool>(true, true, false, true)), vec2<bool>(true, false)), Struct_1(true, false, vec4<bool>(true, false, true, false))), false), Struct_4(0i, Struct_3(vec4<i32>(-39531i, 5748i, -32708i, 2147483647i), vec4<bool>(false, true, false, false), Struct_1(false, true, vec4<bool>(false, true, true, false)), Struct_2(vec2<u32>(11593u, 0u), Struct_1(true, true, vec4<bool>(false, true, false, true)), vec2<bool>(true, true)), Struct_1(false, true, vec4<bool>(false, true, true, false))), true), Struct_4(i32(-2147483648), Struct_3(vec4<i32>(0i, i32(-2147483648), 1i, 1i), vec4<bool>(true, true, true, true), Struct_1(true, false, vec4<bool>(false, false, false, false)), Struct_2(vec2<u32>(1u, 51186u), Struct_1(true, true, vec4<bool>(false, false, true, false)), vec2<bool>(false, false)), Struct_1(false, true, vec4<bool>(true, true, false, true))), true), Struct_4(-45811i, Struct_3(vec4<i32>(-18146i, 0i, 7634i, -3384i), vec4<bool>(false, false, true, false), Struct_1(false, false, vec4<bool>(false, false, true, true)), Struct_2(vec2<u32>(4294967295u, 1u), Struct_1(false, true, vec4<bool>(false, false, false, true)), vec2<bool>(false, true)), Struct_1(true, true, vec4<bool>(true, true, true, false))), false), Struct_4(0i, Struct_3(vec4<i32>(1i, -6284i, -38494i, 13440i), vec4<bool>(false, true, false, true), Struct_1(false, true, vec4<bool>(false, false, false, false)), Struct_2(vec2<u32>(1u, 6785u), Struct_1(false, false, vec4<bool>(false, false, false, true)), vec2<bool>(true, false)), Struct_1(false, false, vec4<bool>(true, true, false, false))), true), Struct_4(-49668i, Struct_3(vec4<i32>(57345i, i32(-2147483648), 4206i, -2844i), vec4<bool>(false, true, true, true), Struct_1(false, true, vec4<bool>(false, false, true, true)), Struct_2(vec2<u32>(25516u, 114972u), Struct_1(true, false, vec4<bool>(false, true, true, true)), vec2<bool>(false, true)), Struct_1(true, false, vec4<bool>(false, false, false, false))), false), Struct_4(2147483647i, Struct_3(vec4<i32>(27068i, 50798i, 4227i, -2928i), vec4<bool>(false, true, false, true), Struct_1(false, true, vec4<bool>(true, true, true, true)), Struct_2(vec2<u32>(16381u, 1u), Struct_1(true, false, vec4<bool>(false, false, true, true)), vec2<bool>(true, true)), Struct_1(true, true, vec4<bool>(false, true, false, false))), true), Struct_4(2147483647i, Struct_3(vec4<i32>(4476i, 21049i, 4003i, -53079i), vec4<bool>(true, true, true, true), Struct_1(true, false, vec4<bool>(false, true, true, true)), Struct_2(vec2<u32>(20837u, 41117u), Struct_1(false, false, vec4<bool>(true, false, false, true)), vec2<bool>(false, true)), Struct_1(false, true, vec4<bool>(false, false, true, false))), true), Struct_4(-34167i, Struct_3(vec4<i32>(1i, 22412i, -452i, -1i), vec4<bool>(false, true, false, true), Struct_1(true, false, vec4<bool>(true, true, true, false)), Struct_2(vec2<u32>(0u, 72071u), Struct_1(false, false, vec4<bool>(true, true, false, true)), vec2<bool>(true, false)), Struct_1(true, true, vec4<bool>(false, true, true, false))), false), Struct_4(29404i, Struct_3(vec4<i32>(1i, 12329i, -1i, -89971i), vec4<bool>(true, true, true, false), Struct_1(true, true, vec4<bool>(false, false, true, false)), Struct_2(vec2<u32>(15944u, 21008u), Struct_1(false, false, vec4<bool>(true, true, true, true)), vec2<bool>(false, false)), Struct_1(true, false, vec4<bool>(false, true, false, false))), true), Struct_4(-1496i, Struct_3(vec4<i32>(2147483647i, 25410i, 2147483647i, 1i), vec4<bool>(true, false, true, false), Struct_1(true, true, vec4<bool>(true, true, false, false)), Struct_2(vec2<u32>(0u, 0u), Struct_1(false, true, vec4<bool>(false, true, true, false)), vec2<bool>(false, true)), Struct_1(false, true, vec4<bool>(true, true, false, true))), true), Struct_4(-35909i, Struct_3(vec4<i32>(2147483647i, 18903i, -1i, -8364i), vec4<bool>(false, true, true, true), Struct_1(true, true, vec4<bool>(false, false, true, false)), Struct_2(vec2<u32>(0u, 26655u), Struct_1(true, false, vec4<bool>(false, true, false, false)), vec2<bool>(true, false)), Struct_1(true, false, vec4<bool>(false, true, true, true))), false), Struct_4(-5165i, Struct_3(vec4<i32>(i32(-2147483648), 1i, -20170i, -56267i), vec4<bool>(false, true, false, true), Struct_1(false, true, vec4<bool>(false, true, false, false)), Struct_2(vec2<u32>(61716u, 51718u), Struct_1(true, true, vec4<bool>(true, false, false, true)), vec2<bool>(true, true)), Struct_1(true, true, vec4<bool>(true, true, true, true))), false), Struct_4(45071i, Struct_3(vec4<i32>(-10795i, 2147483647i, 2147483647i, 89660i), vec4<bool>(true, true, true, true), Struct_1(true, true, vec4<bool>(false, true, false, true)), Struct_2(vec2<u32>(4294967295u, 4294967295u), Struct_1(true, false, vec4<bool>(false, false, true, false)), vec2<bool>(false, true)), Struct_1(true, true, vec4<bool>(true, true, false, false))), true), Struct_4(10014i, Struct_3(vec4<i32>(36459i, 10149i, -2647i, 1445i), vec4<bool>(true, true, true, false), Struct_1(false, true, vec4<bool>(true, true, true, true)), Struct_2(vec2<u32>(1u, 1u), Struct_1(false, true, vec4<bool>(true, false, true, true)), vec2<bool>(true, true)), Struct_1(false, true, vec4<bool>(true, false, false, true))), false), Struct_4(-1i, Struct_3(vec4<i32>(1341i, 0i, i32(-2147483648), 1i), vec4<bool>(false, false, true, true), Struct_1(false, true, vec4<bool>(true, true, true, true)), Struct_2(vec2<u32>(0u, 82078u), Struct_1(true, false, vec4<bool>(false, true, false, true)), vec2<bool>(false, true)), Struct_1(true, false, vec4<bool>(false, false, true, true))), true), Struct_4(0i, Struct_3(vec4<i32>(1i, -23101i, 2147483647i, 1i), vec4<bool>(false, true, true, false), Struct_1(true, true, vec4<bool>(false, true, true, false)), Struct_2(vec2<u32>(102401u, 39795u), Struct_1(true, false, vec4<bool>(true, true, true, false)), vec2<bool>(true, true)), Struct_1(true, false, vec4<bool>(true, true, true, true))), true), Struct_4(2147483647i, Struct_3(vec4<i32>(-12594i, 72255i, 1i, 29650i), vec4<bool>(false, true, false, true), Struct_1(false, false, vec4<bool>(false, false, true, false)), Struct_2(vec2<u32>(1u, 0u), Struct_1(true, true, vec4<bool>(true, true, true, false)), vec2<bool>(true, true)), Struct_1(false, true, vec4<bool>(true, false, true, true))), true), Struct_4(2147483647i, Struct_3(vec4<i32>(15383i, -14236i, 0i, i32(-2147483648)), vec4<bool>(true, false, false, true), Struct_1(true, true, vec4<bool>(false, true, false, false)), Struct_2(vec2<u32>(32822u, 79090u), Struct_1(false, true, vec4<bool>(true, false, true, true)), vec2<bool>(false, false)), Struct_1(false, false, vec4<bool>(false, false, false, false))), false), Struct_4(36795i, Struct_3(vec4<i32>(1i, -1i, -28730i, i32(-2147483648)), vec4<bool>(false, true, false, false), Struct_1(false, true, vec4<bool>(false, false, true, true)), Struct_2(vec2<u32>(152670u, 4294967295u), Struct_1(false, false, vec4<bool>(true, true, true, false)), vec2<bool>(true, false)), Struct_1(true, false, vec4<bool>(true, false, true, true))), true), Struct_4(-89i, Struct_3(vec4<i32>(i32(-2147483648), 10247i, 14974i, i32(-2147483648)), vec4<bool>(true, false, true, false), Struct_1(false, false, vec4<bool>(false, true, false, false)), Struct_2(vec2<u32>(30727u, 4294967295u), Struct_1(false, true, vec4<bool>(false, false, false, false)), vec2<bool>(false, true)), Struct_1(false, false, vec4<bool>(false, false, false, false))), false), Struct_4(i32(-2147483648), Struct_3(vec4<i32>(2147483647i, -1i, -25992i, i32(-2147483648)), vec4<bool>(true, true, true, false), Struct_1(false, false, vec4<bool>(false, true, true, true)), Struct_2(vec2<u32>(30554u, 33347u), Struct_1(true, true, vec4<bool>(true, false, false, false)), vec2<bool>(false, true)), Struct_1(true, true, vec4<bool>(false, true, false, false))), false), Struct_4(3771i, Struct_3(vec4<i32>(-1i, i32(-2147483648), 1i, -2265i), vec4<bool>(true, false, false, true), Struct_1(false, true, vec4<bool>(true, true, true, false)), Struct_2(vec2<u32>(11428u, 47816u), Struct_1(false, false, vec4<bool>(false, true, true, false)), vec2<bool>(false, true)), Struct_1(true, true, vec4<bool>(true, true, false, true))), true), Struct_4(2147483647i, Struct_3(vec4<i32>(-21129i, -9241i, 28611i, -1i), vec4<bool>(true, true, true, true), Struct_1(false, false, vec4<bool>(false, true, false, true)), Struct_2(vec2<u32>(22086u, 4294967295u), Struct_1(true, false, vec4<bool>(true, false, false, false)), vec2<bool>(false, false)), Struct_1(true, true, vec4<bool>(false, false, true, true))), true));

var<private> global1: i32 = 16973i;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec2<u32> {
    global1 = _wgslsmith_clamp_i32(countOneBits(u_input.d), u_input.a, u_input.a);
    global1 = -_wgslsmith_div_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(15i, -13469i, 1i), select(vec3<i32>(u_input.a, u_input.a, u_input.d), vec3<i32>(-1i, -30500i, u_input.d), vec3<bool>(true, true, false))), -abs(~u_input.d));
    global0 = array<Struct_4, 24>();
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(938f + -1000f) * _wgslsmith_f_op_f32(-818f - -2018f))) + _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1400f, -2672f), -755f)))));
    var var_1 = !(!vec2<bool>(all(vec4<bool>(false, true, true, true)), all(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)))));
    return _wgslsmith_clamp_vec2_u32(abs(countOneBits(reverseBits(vec2<u32>(100944u, 77341u)))), _wgslsmith_div_vec2_u32(u_input.c >> (vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(139089u, u_input.c.x, 29510u, u_input.c.x), vec4<u32>(u_input.b.x, 0u, 0u, 22530u)), u_input.c.x) % vec2<u32>(32u)), vec2<u32>(u_input.c.x, ~select(u_input.c.x, 0u, true))), select(vec2<u32>(u_input.b.x, reverseBits(~28250u)), ~select(firstTrailingBit(vec2<u32>(u_input.c.x, 8940u)), vec2<u32>(u_input.c.x, 67094u), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, var_1.x))), var_1.x));
}

fn func_2(arg_0: Struct_3) -> i32 {
    global0 = array<Struct_4, 24>();
    global0 = array<Struct_4, 24>();
    global0 = array<Struct_4, 24>();
    var var_0 = Struct_3(max(~countOneBits(-arg_0.a), arg_0.a), arg_0.d.b.c, arg_0.d.b, Struct_2(~func_3() << (u_input.b % vec2<u32>(32u)), Struct_1(48222u >= func_3().x, true, select(vec4<bool>(false, arg_0.e.a, arg_0.b.x, arg_0.e.a), select(vec4<bool>(arg_0.b.x, arg_0.b.x, true, arg_0.e.c.x), arg_0.d.b.c, vec4<bool>(true, false, arg_0.d.c.x, arg_0.d.c.x)), !vec4<bool>(true, arg_0.c.a, arg_0.c.c.x, false))), vec2<bool>(u_input.a < (i32(-1i) * -3129i), !arg_0.b.x)), Struct_1(!all(vec4<bool>(false, true, false, false)) && true, true, select(arg_0.e.c, arg_0.e.c, false)));
    var_0 = arg_0;
    return 2147483647i;
}

fn func_1(arg_0: u32, arg_1: f32) -> f32 {
    global0 = array<Struct_4, 24>();
    let var_0 = Struct_1(any(vec2<bool>(true, true)), false, vec4<bool>(all(vec2<bool>(true, all(vec2<bool>(false, true)))), false, true, true));
    var var_1 = _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d, u_input.a, func_2(Struct_3(vec4<i32>(u_input.a, -2381i, 86030i, u_input.d), vec4<bool>(var_0.b, true, true, true), var_0, Struct_2(u_input.c, var_0, var_0.c.wx), Struct_1(var_0.b, var_0.b, var_0.c))), _wgslsmith_sub_i32(2147483647i, u_input.a)) & (vec4<i32>(-21139i, u_input.a, u_input.a, u_input.a) | _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, u_input.d, -43882i, u_input.a), vec4<i32>(-1i, -56642i, u_input.d, 51965i))), vec4<i32>(-u_input.a, u_input.a, 1i, u_input.a & 10340i)) ^ vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -26775i) >> (~u_input.b % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(~vec2<i32>(u_input.a, -131i), vec2<i32>(0i, u_input.d) | vec2<i32>(u_input.a, u_input.a))), u_input.a, u_input.d, _wgslsmith_div_i32(_wgslsmith_div_i32(u_input.a, 2147483647i) << (arg_0 % 32u), _wgslsmith_div_i32(u_input.d, u_input.d) | (i32(-1i) * -44406i)));
    var var_2 = Struct_3(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, var_1.x, u_input.a, -27258i), vec4<i32>(5666i, 25044i, 9745i, u_input.d))), abs(-vec4<i32>(-36108i, 13292i, var_1.x, -1i))), _wgslsmith_mod_vec4_i32(vec4<i32>(var_1.x, -1i, 2147483647i ^ u_input.d, 0i), vec4<i32>(-1i) * -vec4<i32>(-3542i, var_1.x, -1i, -13123i))), vec4<bool>(select(_wgslsmith_dot_vec4_u32(vec4<u32>(44219u, 11753u, 0u, arg_0), vec4<u32>(u_input.c.x, 18887u, arg_0, 1u)) < firstLeadingBit(4294967295u), var_0.c.x, any(vec3<bool>(true, true, true))), true || !(1u != u_input.c.x), var_0.b | !all(vec4<bool>(true, var_0.b, false, false)), !select(true, all(vec4<bool>(var_0.c.x, var_0.a, false, true)), all(var_0.c))), Struct_1(true, var_0.c.x, select(var_0.c, select(var_0.c, !var_0.c, select(var_0.c, vec4<bool>(var_0.c.x, true, var_0.c.x, var_0.b), true)), !var_0.b)), Struct_2(~u_input.c, Struct_1(var_0.c.x, true, !select(var_0.c, var_0.c, var_0.c)), var_0.c.yy), var_0);
    global1 = select(_wgslsmith_dot_vec4_i32(var_2.a, vec4<i32>(-1i) * -vec4<i32>(var_1.x, var_2.a.x, var_2.a.x, var_1.x)), -2147483647i, (select(4294967295u, arg_0, var_2.b.x) <= 4294967295u) | true);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.x;
    var var_1 = _wgslsmith_f_op_f32(-236f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -436f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(4294967295u, _wgslsmith_f_op_f32(-397f - 329f))))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1565f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(547f)), -189f)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f + 1068f), _wgslsmith_f_op_f32(f32(-1f) * -1524f))))));
    let var_2 = 52343u;
    var_0 = var_2;
    let var_3 = Struct_1(true, all(!(!select(vec2<bool>(false, true), vec2<bool>(false, true), true))), vec4<bool>((false | (var_2 >= var_2)) != any(vec4<bool>(true, true, true, true)), all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), true)), true, (2147483647i >> (1u % 32u)) > -u_input.d));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(-10261i), 0i);
}

