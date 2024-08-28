struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(vec3<i32>(32805i, 2147483647i, 38062i)), Struct_1(vec3<i32>(41530i, -73936i, 89291i)), Struct_1(vec3<i32>(0i, 69038i, 0i)), Struct_1(vec3<i32>(0i, -11114i, 1i)), Struct_1(vec3<i32>(-9136i, -1i, 2147483647i)), Struct_1(vec3<i32>(i32(-2147483648), 9443i, -31468i)), Struct_1(vec3<i32>(-61663i, -57699i, -18178i)), Struct_1(vec3<i32>(-1i, 0i, 41391i)), Struct_1(vec3<i32>(-13066i, -3730i, 6055i)), Struct_1(vec3<i32>(1i, 0i, -17194i)), Struct_1(vec3<i32>(0i, -26169i, 48843i)), Struct_1(vec3<i32>(29309i, 2147483647i, 0i)), Struct_1(vec3<i32>(1i, i32(-2147483648), 2147483647i)), Struct_1(vec3<i32>(0i, 2147483647i, 0i)), Struct_1(vec3<i32>(-1i, 2147483647i, -31809i)), Struct_1(vec3<i32>(-12840i, 1i, -52706i)), Struct_1(vec3<i32>(-7260i, i32(-2147483648), -36831i)), Struct_1(vec3<i32>(-5768i, 0i, 0i)), Struct_1(vec3<i32>(1i, 1i, 27523i)), Struct_1(vec3<i32>(i32(-2147483648), -25108i, 1i)), Struct_1(vec3<i32>(-30416i, 2147483647i, 2147483647i)));

var<private> global1: i32;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(2107f)), 528f)), _wgslsmith_f_op_f32(-1f))));
    var var_1 = arg_0;
    global0 = array<Struct_1, 21>();
    let var_2 = Struct_1(vec3<i32>(_wgslsmith_mod_i32(-1i, var_1.a.x), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(1i, -1i, arg_0.a.x), vec3<i32>(-16540i, -2147483647i, var_1.a.x)), arg_0.a), 1i));
    let var_3 = _wgslsmith_div_i32(select(var_2.a.x, _wgslsmith_mult_i32(-2147483647i, u_input.b.x), -1327f == _wgslsmith_f_op_f32(var_0 - var_0)) | reverseBits(~abs(arg_0.a.x)), _wgslsmith_sub_i32(u_input.b.x, _wgslsmith_mod_i32(~var_2.a.x, -var_1.a.x)));
    return 1u;
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: u32, arg_3: vec4<bool>) -> Struct_1 {
    global0 = array<Struct_1, 21>();
    var var_0 = arg_3.zx;
    let var_1 = u_input.b.x;
    global1 = abs(~arg_0.a.x);
    var var_2 = arg_0;
    return arg_0;
}

fn func_1(arg_0: f32) -> vec3<u32> {
    let var_0 = func_3(Struct_1(-max(~vec3<i32>(u_input.b.x, -2147483647i, 10190i), -vec3<i32>(0i, u_input.b.x, 77928i))), !any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true)), func_2(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(53890u, firstTrailingBit(~u_input.c)), 21u)]), !vec4<bool>(false, -1i == u_input.b.x, false, all(vec3<bool>(false, true, true)) & true));
    let var_1 = func_3(func_3(func_3(global0[_wgslsmith_index_u32(62770u, 21u)], all(vec3<bool>(true, true, true)), ~(~4512u), vec4<bool>(all(vec2<bool>(true, true)), true, true, false)), true, _wgslsmith_div_u32(_wgslsmith_div_u32(~u_input.a, _wgslsmith_add_u32(u_input.c, u_input.a)), _wgslsmith_mod_u32(u_input.c, 44121u)), !select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false))), !(13349u > ~(~u_input.a)), abs(min(0u, _wgslsmith_div_u32(18577u, u_input.c) & _wgslsmith_mult_u32(4294967295u, u_input.a))), !select(vec4<bool>(true, all(vec3<bool>(true, false, true)), any(vec4<bool>(true, true, true, false)), true), vec4<bool>(true, false, true, all(vec2<bool>(true, true))), select(vec4<bool>(false, true, false, false), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true)), false)));
    var var_2 = _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(~(~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c, u_input.a), vec2<u32>(4294967295u, 25479u))), countOneBits(~(~vec2<u32>(57907u, u_input.c)))), ~abs(~vec2<u32>(52585u, u_input.a)));
    let var_3 = var_0.a.zy & reverseBits(-select(-vec2<i32>(var_0.a.x, 28475i), var_0.a.xy, var_1.a.x > 2147483647i));
    var var_4 = vec4<bool>(true, false, false, true);
    return _wgslsmith_add_vec3_u32(~countOneBits(_wgslsmith_add_vec3_u32(vec3<u32>(var_2.x, var_2.x, 33654u), vec3<u32>(u_input.c, var_2.x, 4294967295u))), min(~min(vec3<u32>(var_2.x, u_input.a, 18600u), vec3<u32>(0u, u_input.a, var_2.x)), vec3<u32>(u_input.c, var_2.x >> (var_2.x % 32u), ~u_input.a))) >> (vec3<u32>(max(_wgslsmith_mod_u32(u_input.c, 31669u) | 4294967295u, _wgslsmith_dot_vec4_u32(select(vec4<u32>(4294967295u, 4294967295u, 0u, u_input.a), vec4<u32>(1u, 4294967295u, 4294967295u, 0u), vec4<bool>(var_4.x, true, var_4.x, true)), vec4<u32>(16290u, u_input.c, u_input.a, 4294967295u) >> (vec4<u32>(var_2.x, 5206u, 4294967295u, var_2.x) % vec4<u32>(32u)))), u_input.a, 0u) % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1197f + _wgslsmith_f_op_f32(146f + 1373f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1399f)) * _wgslsmith_f_op_f32(f32(-1f) * -692f)))));
    let var_1 = func_3(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~var_0.x, _wgslsmith_add_u32(~u_input.c, 25760u)), 21u)], (false && any(vec2<bool>(true, true))) | true, _wgslsmith_div_u32(~(~var_0.x), firstLeadingBit(~_wgslsmith_add_u32(var_0.x, 48741u))), !vec4<bool>(all(vec4<bool>(true, true, true, true)), any(vec2<bool>(true, true)), any(vec4<bool>(true, true, true, true)), any(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true)))));
    let var_2 = func_3(Struct_1(select(var_1.a, var_1.a, vec3<bool>(true, true, true))), true, 1u, select(select(vec4<bool>(true, 1u >= var_0.x, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), !(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), all(vec3<bool>(false, false, true)))));
    let var_3 = func_3(Struct_1(~_wgslsmith_mult_vec3_i32(vec3<i32>(-74855i, u_input.b.x, u_input.b.x), vec3<i32>(1i, 2147483647i, 2147483647i)) & var_2.a), true, 1u, select(vec4<bool>(any(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), false)), !all(vec3<bool>(false, false, true)), any(vec3<bool>(true, false, false)), all(select(vec2<bool>(true, false), vec2<bool>(false, true), true))), vec4<bool>(_wgslsmith_f_op_f32(sign(2244f)) == _wgslsmith_f_op_f32(1127f + -2103f), all(vec2<bool>(true, false)) | any(vec2<bool>(true, true)), false, true & any(vec2<bool>(true, true))), true));
    let var_4 = 1f;
    var var_5 = ~vec2<i32>(countOneBits(60083i), _wgslsmith_mod_i32(_wgslsmith_mult_i32(_wgslsmith_sub_i32(-25030i, var_2.a.x), 11919i), var_3.a.x));
    let var_6 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-366f, 1182f) - vec2<f32>(var_4, var_4)))))))));
    let var_7 = func_3(Struct_1(_wgslsmith_add_vec3_i32(reverseBits(vec3<i32>(var_2.a.x, -2147483647i, -1i)), vec3<i32>(-1i, var_3.a.x, ~var_3.a.x))), true, ~19694u, select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true)), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), !any(vec4<bool>(true, false, false, true))), _wgslsmith_mod_i32(-1i, i32(-1i) * -55943i) >= abs(var_1.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~(-411i), _wgslsmith_f_op_vec4_f32(vec4<f32>(1038f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-880f, -163f) + _wgslsmith_f_op_f32(-var_6.x)), var_4, var_4) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(898f, var_6.x, -993f, 1103f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_4, 851f, var_6.x, var_6.x), vec4<f32>(var_6.x, var_6.x, 490f, -823f), true)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_6.x, -528f, -1180f, var_4) - vec4<f32>(var_4, var_6.x, 1172f, var_4))))), var_1.a);
}

