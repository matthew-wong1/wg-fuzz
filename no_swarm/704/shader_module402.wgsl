struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(1i, -46285i, vec2<bool>(false, false)), Struct_1(-1i, 1i, vec2<bool>(true, false)), Struct_1(-1i, 45961i, vec2<bool>(true, true)), Struct_1(-42062i, 931i, vec2<bool>(false, true)), Struct_1(-1i, -1i, vec2<bool>(false, true)), Struct_1(-15895i, -23536i, vec2<bool>(true, false)), Struct_1(-16476i, -53762i, vec2<bool>(false, true)), Struct_1(21917i, 9646i, vec2<bool>(true, true)), Struct_1(i32(-2147483648), 2147483647i, vec2<bool>(false, false)), Struct_1(-44480i, -1i, vec2<bool>(false, false)), Struct_1(2147483647i, 0i, vec2<bool>(true, true)), Struct_1(i32(-2147483648), 26931i, vec2<bool>(false, true)), Struct_1(-32873i, 0i, vec2<bool>(false, false)), Struct_1(30214i, 15210i, vec2<bool>(false, true)), Struct_1(1i, -1i, vec2<bool>(true, false)), Struct_1(-1i, -9429i, vec2<bool>(true, false)), Struct_1(-19580i, 1i, vec2<bool>(false, false)), Struct_1(1i, i32(-2147483648), vec2<bool>(false, true)), Struct_1(14604i, 1i, vec2<bool>(false, true)), Struct_1(-12099i, 0i, vec2<bool>(true, false)), Struct_1(2147483647i, 1i, vec2<bool>(false, true)), Struct_1(1i, -41697i, vec2<bool>(true, true)), Struct_1(1i, 0i, vec2<bool>(true, false)), Struct_1(-1i, 43784i, vec2<bool>(false, false)), Struct_1(0i, 16354i, vec2<bool>(true, false)), Struct_1(-1i, 2147483647i, vec2<bool>(false, false)), Struct_1(-3361i, -37465i, vec2<bool>(false, false)), Struct_1(1i, 0i, vec2<bool>(true, true)), Struct_1(0i, -1i, vec2<bool>(true, true)), Struct_1(2147483647i, i32(-2147483648), vec2<bool>(true, true)));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<f32>) -> i32 {
    global0 = array<Struct_1, 30>();
    let var_0 = vec3<bool>(all(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(false, false), vec2<bool>(false, false))), all(vec2<bool>(true, true)), true & any(select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec4<bool>(false, false, false, true)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1350f, -412f, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(2831f + arg_0.x)))), arg_1));
    let var_2 = -71329i;
    let var_3 = Struct_2(!var_0.xy, Struct_1(var_2, u_input.a, !(!(!vec2<bool>(true, var_0.x)))), true);
    return var_2;
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_clamp_i32(firstLeadingBit(u_input.b) ^ ~func_3(vec3<f32>(-500f, 262f, 440f), vec4<f32>(231f, -947f, -324f, -1158f)), _wgslsmith_sub_i32(_wgslsmith_mod_i32(-25052i, ~(-2147483647i)), _wgslsmith_sub_i32(~u_input.b, u_input.a)), max(0i, 0i)), ~min(arg_0.b, u_input.a), vec2<bool>(arg_0.c.x, all(select(!vec3<bool>(true, arg_0.c.x, true), select(vec3<bool>(arg_0.c.x, false, arg_0.c.x), vec3<bool>(arg_0.c.x, true, false), arg_0.c.x), arg_0.c.x & arg_0.c.x))));
    var var_1 = select(!select(select(select(vec2<bool>(false, var_0.c.x), arg_0.c, false), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(arg_0.c.x, true), true)), select(vec2<bool>(arg_0.c.x, arg_0.c.x), !vec2<bool>(true, var_0.c.x), !vec2<bool>(var_0.c.x, arg_0.c.x)), true), arg_0.c, vec2<bool>(var_0.c.x, var_0.c.x));
    global0 = array<Struct_1, 30>();
    var_0 = arg_0;
    let var_2 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(562f * -1886f), _wgslsmith_div_f32(1762f, -152f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -209f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1653f, -1854f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2123f), -1507f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(1548f)), _wgslsmith_f_op_f32(abs(594f)), _wgslsmith_f_op_f32(-1549f - -219f))) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(681f, -2619f, -1048f))))));
    return Struct_2(vec2<bool>(true, true || ((false | var_0.c.x) || true)), Struct_1(_wgslsmith_clamp_i32(firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-75884i, arg_0.b), vec2<i32>(2147483647i, 1i))), arg_0.b | ~25963i, countOneBits(-1i)), firstLeadingBit(2147483647i), vec2<bool>(true, max(arg_0.a, arg_0.b) >= reverseBits(2147483647i))), any(vec3<bool>(arg_0.c.x, !any(vec3<bool>(true, arg_0.c.x, true)), true)));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2) -> vec4<i32> {
    global0 = array<Struct_1, 30>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(363f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-614f + 596f)))) * 1f));
    let var_1 = 1u;
    var var_2 = (30003i << (~var_1 % 32u)) << ((var_1 << (var_1 % 32u)) % 32u);
    let var_3 = 8933u;
    return countOneBits(-_wgslsmith_mod_vec4_i32(vec4<i32>(arg_1.b.b, arg_0.x, u_input.a, 27501i), vec4<i32>(arg_0.x, 1i, arg_0.x, -22384i)) << (select(~vec4<u32>(1u, var_1, var_3, 1u), vec4<u32>(var_1, 0u, 65502u, var_3) ^ vec4<u32>(var_3, 5573u, var_1, var_1), true) % vec4<u32>(32u))) ^ countOneBits(vec4<i32>(3213i, reverseBits(u_input.a) | countOneBits(2147483647i), arg_1.b.b, abs(arg_1.b.b) & -8436i));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2) -> f32 {
    global0 = array<Struct_1, 30>();
    let var_0 = _wgslsmith_clamp_vec4_i32(func_4(vec3<i32>(-2147483647i, min(u_input.b, -12863i), -45950i), func_2(Struct_1(u_input.b, u_input.b, vec2<bool>(arg_0.b.c.x, false)))), ~vec4<i32>(-1i, ~0i, _wgslsmith_sub_i32(arg_1.b.a, -4525i), arg_0.b.a), abs(_wgslsmith_div_vec4_i32(vec4<i32>(1i, arg_0.b.a, -1i, -1i), vec4<i32>(-4550i, 0i, -1i, u_input.b)) & ~vec4<i32>(arg_0.b.a, -7828i, u_input.a, 1i))) & (firstLeadingBit(vec4<i32>(u_input.b, -arg_1.b.b, ~(-1i), -39582i ^ u_input.a)) | vec4<i32>(~u_input.b, 1i, arg_0.b.b, _wgslsmith_clamp_i32(~18128i, _wgslsmith_div_i32(-2147483647i, 4418i), _wgslsmith_div_i32(arg_1.b.b, u_input.a))));
    let var_1 = var_0;
    var var_2 = 41585u;
    var var_3 = Struct_1(select(i32(-1i) * -4926i, arg_0.b.b, true), u_input.a >> (41295u % 32u), select(arg_0.b.c, !arg_0.b.c, func_2(Struct_1(-1i, -var_0.x, arg_1.a)).b.c));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1694f, _wgslsmith_f_op_f32(1860f + -225f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(118f))))), 1f)));
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: bool) -> Struct_2 {
    global0 = array<Struct_1, 30>();
    let var_0 = min(_wgslsmith_div_u32(_wgslsmith_add_u32(countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 13554u), vec2<u32>(36227u, 58484u))), 1u), _wgslsmith_div_u32(reverseBits(~0u), ~819u)), _wgslsmith_add_u32(77728u, 142853u));
    global0 = array<Struct_1, 30>();
    let var_1 = any(vec3<bool>(func_2(global0[_wgslsmith_index_u32(~12392u, 30u)]).b.c.x && true, arg_3, true));
    global0 = array<Struct_1, 30>();
    return Struct_2(arg_1.a, func_2(Struct_1(i32(-1i) * -35173i, u_input.b, vec2<bool>(var_1, !arg_1.a.x))).b, 1u < var_0);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 30>();
    let var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1540f, 1163f, 510f, -1537f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(-1000f, -295f, true)), -922f, 126f, _wgslsmith_div_f32(-555f, 376f))))));
    var var_1 = var_0.x;
    var var_2 = 42162i;
    var var_3 = abs(~(~(-vec2<i32>(u_input.a, 0i) >> (vec2<u32>(60371u, 41931u) % vec2<u32>(32u)))));
    let var_4 = global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(_wgslsmith_mod_u32(~1u, 1u), select(_wgslsmith_add_u32(1u, ~26766u), 1u, select(false, all(vec3<bool>(false, false, false)), true))), 30u)];
    var_1 = var_0.x;
    let var_5 = func_5(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -855f), _wgslsmith_f_op_f32(func_1(Struct_2(vec2<bool>(var_4.c.x, true), Struct_1(2147483647i, var_4.a, var_4.c), var_4.c.x), Struct_2(var_4.c, global0[_wgslsmith_index_u32(10084u, 30u)], var_4.c.x)))), _wgslsmith_f_op_f32(-var_0.x), select(true, select(var_4.c.x, false, false), any(vec4<bool>(var_4.c.x, var_4.c.x, true, false))))))), Struct_2(!var_4.c, global0[_wgslsmith_index_u32(~1u, 30u)], !(1i > -u_input.b)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_div_f32(var_0.x, 2279f))) * vec2<f32>(1655f, 1096f)), true);
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

