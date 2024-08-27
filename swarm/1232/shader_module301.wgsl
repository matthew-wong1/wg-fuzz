struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: i32,
    d: vec3<u32>,
    e: i32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: f32,
    d: Struct_1,
    e: u32,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct Struct_5 {
    a: bool,
    b: Struct_3,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 6>;

var<private> global1: array<vec3<bool>, 1>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<bool> {
    global0 = array<i32, 6>();
    global0 = array<i32, 6>();
    var var_0 = select(vec3<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.a, -1i, -60092i), vec4<i32>(u_input.a, u_input.a, -16419i, -2147483647i)), select(countOneBits(26118i), ~u_input.c.x, true), (u_input.a << (u_input.b % 32u)) & ~(-2895i)) << ((vec3<u32>(u_input.b, _wgslsmith_mult_u32(u_input.b, 36787u), _wgslsmith_clamp_u32(1u, 35661u, u_input.b)) << (min(~vec3<u32>(0u, u_input.b, 3574u), _wgslsmith_mult_vec3_u32(vec3<u32>(108312u, u_input.b, u_input.b), vec3<u32>(15943u, 20890u, u_input.b))) % vec3<u32>(32u))) % vec3<u32>(32u)), select(u_input.c, -vec3<i32>(u_input.a, global0[_wgslsmith_index_u32(0u, 6u)], ~u_input.c.x), !vec3<bool>(any(vec3<bool>(false, true, false)), true, true)), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~(~_wgslsmith_mult_u32(36997u, 32517u)), firstTrailingBit(_wgslsmith_div_u32(~u_input.b, firstLeadingBit(u_input.b)))), 1u)]);
    global0 = array<i32, 6>();
    var_0 = -abs(-_wgslsmith_mod_vec3_i32(~u_input.c, _wgslsmith_add_vec3_i32(u_input.c, vec3<i32>(u_input.a, u_input.a, -6369i))));
    return vec2<bool>(select(39171u > (abs(9927u) | ~u_input.b), all(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), any(vec4<bool>(true, false, false, false)))), any(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), true)))), all(global1[_wgslsmith_index_u32(abs(abs(abs(u_input.b))), 1u)]));
}

fn func_2() -> Struct_1 {
    global1 = array<vec3<bool>, 1>();
    var var_0 = -(~max(abs(-vec4<i32>(-2147483647i, global0[_wgslsmith_index_u32(4294967295u, 6u)], global0[_wgslsmith_index_u32(u_input.b, 6u)], -6056i)), _wgslsmith_mod_vec4_i32(-vec4<i32>(-8886i, global0[_wgslsmith_index_u32(u_input.b, 6u)], 12321i, global0[_wgslsmith_index_u32(u_input.b, 6u)]), -vec4<i32>(global0[_wgslsmith_index_u32(u_input.b, 6u)], -27701i, global0[_wgslsmith_index_u32(u_input.b, 6u)], 0i))));
    global1 = array<vec3<bool>, 1>();
    let var_1 = Struct_5(all(select(func_3(), select(select(vec2<bool>(true, false), vec2<bool>(true, false), true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, false)), !any(vec4<bool>(false, false, true, false)))), Struct_3(~_wgslsmith_mod_vec4_i32(vec4<i32>(6326i, 23911i, 0i, u_input.c.x), vec4<i32>(42749i, global0[_wgslsmith_index_u32(0u, 6u)], 0i, global0[_wgslsmith_index_u32(u_input.b, 6u)])), Struct_2(Struct_1(vec4<i32>(u_input.a, var_0.x, global0[_wgslsmith_index_u32(100667u, 6u)], var_0.x) << (vec4<u32>(0u, 4294967295u, 1u, u_input.b) % vec4<u32>(32u)), select(var_0.yyy, u_input.c, true), firstLeadingBit(u_input.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(870f, -758f, 155f, -752f) - vec4<f32>(598f, 934f, 129f, -263f))), reverseBits(var_0.x << (4294967295u % 32u)), vec3<u32>(~58689u, ~42773u, ~4294967295u), -4709i), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -837f)), _wgslsmith_div_f32(1534f, -162f))), Struct_1(-_wgslsmith_div_vec4_i32(vec4<i32>(0i, -1i, u_input.c.x, u_input.c.x), vec4<i32>(36481i, global0[_wgslsmith_index_u32(13309u, 6u)], u_input.c.x, -1i)), u_input.c, 46889u), _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 52321u), select(vec2<u32>(u_input.b, 64871u), vec2<u32>(u_input.b, u_input.b), vec2<bool>(false, true))) & ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(u_input.b, 0u, 0u))), firstTrailingBit(~(global0[_wgslsmith_index_u32(36343u, 6u)] >> (u_input.b % 32u)) & -20485i), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -131f)))));
    var var_2 = Struct_3(var_1.b.d.a, Struct_2(var_1.b.b.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.d, var_1.d, -1252f, 508f)))), ~(-_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 24216i, var_1.c, -1i), vec4<i32>(global0[_wgslsmith_index_u32(0u, 6u)], -1i, global0[_wgslsmith_index_u32(1u, 6u)], global0[_wgslsmith_index_u32(62517u, 6u)]))), vec3<u32>(27141u, _wgslsmith_mult_u32(u_input.b, 8178u), var_1.b.b.d.x), 8945i), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.b.c)) - var_1.b.b.b.x), _wgslsmith_f_op_f32(1626f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_1.b.c, -1044f)), 634f)))), Struct_1(vec4<i32>(16955i, countOneBits(4206i), _wgslsmith_mult_i32(0i ^ var_0.x, min(3412i, var_1.c)), var_1.c), _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(var_0.yzy, var_1.b.a.wwx), ~(-var_0.yxy)), 25495u), select(13222u, u_input.b, (true || any(vec2<bool>(var_1.a, var_1.a))) & true));
    return Struct_1(_wgslsmith_sub_vec4_i32(~var_2.d.a & abs(-vec4<i32>(var_2.a.x, 2147483647i, 30547i, var_2.a.x)), vec4<i32>(countOneBits(var_1.c) << (47826u % 32u), _wgslsmith_div_i32(-global0[_wgslsmith_index_u32(u_input.b, 6u)], -1i), _wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(u_input.b, 6u)], var_1.b.b.e, global0[_wgslsmith_index_u32(var_1.b.d.c, 6u)]), vec3<i32>(var_0.x, global0[_wgslsmith_index_u32(0u, 6u)], u_input.a)), var_2.a.x)), u_input.c, var_2.e);
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    let var_0 = firstLeadingBit(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.c, 57396u, 1u, u_input.b), ~firstLeadingBit(~vec4<u32>(86577u, 4294967295u, 4294967295u, 4294967295u))), 6u)]);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-532f * -1426f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1680f) - 913f)));
    let var_2 = ~(-u_input.c);
    var var_3 = Struct_2(Struct_1(_wgslsmith_mod_vec4_i32(min(vec4<i32>(var_0, u_input.a, var_0, 2147483647i), arg_0.a) ^ vec4<i32>(global0[_wgslsmith_index_u32(arg_0.c, 6u)], global0[_wgslsmith_index_u32(u_input.b, 6u)], -1i, 11668i), func_2().a), vec3<i32>(-1i, countOneBits(-1i), arg_0.a.x), u_input.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1, var_1, var_1, -299f), vec4<f32>(372f, -346f, 879f, 411f), vec4<bool>(true, false, false, false))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(881f, -970f, -1009f, var_1))) - vec4<f32>(_wgslsmith_f_op_f32(floor(-1477f)), var_1, -1259f, _wgslsmith_f_op_f32(-var_1))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, -1000f, var_1, _wgslsmith_f_op_f32(abs(var_1))))), -1810i, vec3<u32>(0u, _wgslsmith_sub_u32(~u_input.b, arg_0.c), (~0u ^ arg_0.c) << (u_input.b % 32u)), ~firstLeadingBit(-17334i) & -_wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(u_input.b, 6u)], u_input.a), vec2<i32>(var_2.x, 0i) ^ var_2.zy));
    global1 = array<vec3<bool>, 1>();
    return Struct_2(func_2(), vec4<f32>(-1894f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.b.x * -884f)), var_3.b.x), _wgslsmith_f_op_f32(step(var_3.b.x, 970f)), _wgslsmith_div_f32(var_1, -1478f)), var_0, vec3<u32>(~var_3.d.x, _wgslsmith_add_u32(4294967295u, firstLeadingBit(firstLeadingBit(arg_0.c))), arg_0.c), _wgslsmith_dot_vec2_i32(arg_0.a.yy | vec2<i32>(~(-19813i), _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(var_3.a.c, 6u)], -16171i)), _wgslsmith_add_vec2_i32(min(countOneBits(arg_0.a.zw), vec2<i32>(arg_0.b.x, 55983i) ^ vec2<i32>(var_2.x, u_input.a)), select(abs(vec2<i32>(-32902i, -1i)), vec2<i32>(var_2.x, var_2.x), func_3().x))));
}

fn func_5(arg_0: Struct_2) -> Struct_3 {
    let var_0 = arg_0;
    var var_1 = var_0;
    global0 = array<i32, 6>();
    return Struct_3(min(vec4<i32>(u_input.c.x, -(i32(-1i) * -1i), 54521i, u_input.c.x), abs(-_wgslsmith_mod_vec4_i32(var_0.a.a, arg_0.a.a))), Struct_2(func_4(var_0.a).a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(981f, 337f, var_1.b.x, arg_0.b.x) - vec4<f32>(var_0.b.x, arg_0.b.x, arg_0.b.x, 357f)))), ~firstLeadingBit(0i), ~var_0.d, var_1.c), _wgslsmith_f_op_f32(max(453f, _wgslsmith_f_op_f32(951f + 595f))), func_2(), max(abs(1u) >> (_wgslsmith_mult_u32(~var_0.a.c, 1u) % 32u), ~reverseBits(var_0.d.x)));
}

fn func_1(arg_0: bool) -> Struct_4 {
    global1 = array<vec3<bool>, 1>();
    var var_0 = false;
    var var_1 = func_5(func_4(func_2()));
    let var_2 = _wgslsmith_f_op_f32(step(var_1.c, var_1.b.b.x));
    global0 = array<i32, 6>();
    return Struct_4(!vec3<bool>(arg_0 & !arg_0, true, true));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 6>();
    var var_0 = Struct_1(_wgslsmith_sub_vec4_i32(abs(~vec4<i32>(global0[_wgslsmith_index_u32(1u, 6u)], global0[_wgslsmith_index_u32(68732u, 6u)], u_input.a, -95076i)), _wgslsmith_mod_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.b, 6u)], -17416i, u_input.a, 2147483647i), vec4<i32>(1i, u_input.a, 2147483647i, 17961i)) ^ vec4<i32>(global0[_wgslsmith_index_u32(u_input.b, 6u)], u_input.c.x, -45494i, 6193i)) ^ (vec4<i32>(-1i, global0[_wgslsmith_index_u32(~u_input.b, 6u)], u_input.c.x, ~global0[_wgslsmith_index_u32(u_input.b, 6u)]) >> (~select(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<u32>(u_input.b, 0u, 4294967295u, u_input.b), vec4<bool>(true, true, true, true)) % vec4<u32>(32u))), u_input.c, u_input.b);
    var var_1 = func_1(true);
    let x = u_input.a;
    s_output = StorageBuffer(-1i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(665f, 651f, -1961f), vec3<f32>(697f, 883f, 1613f)))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1078f, -1206f, -258f), vec3<f32>(167f, 1284f, -474f)))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(300f, -1303f, -639f)) + vec3<f32>(_wgslsmith_f_op_f32(271f * 298f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 863f))), u_input.c);
}

