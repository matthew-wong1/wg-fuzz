struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec2<u32>,
}

struct Struct_5 {
    a: u32,
    b: vec2<bool>,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 13>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: f32, arg_1: f32) -> u32 {
    var var_0 = Struct_2(Struct_1(abs(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(-1i, -30197i, 7716i))), true, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0, arg_0, arg_1, arg_0), vec4<f32>(275f, -709f, arg_1, arg_0))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(801f, -125f, -915f, arg_1))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_1, arg_0, arg_1) * vec4<f32>(arg_0, 946f, arg_0, -2544f)))))));
    let var_1 = vec4<i32>(var_0.a.a.x, 2147483647i, -67490i, max(1i, var_0.a.a.x));
    global0 = array<vec2<i32>, 13>();
    let var_2 = vec3<u32>(4294967295u, u_input.a, firstLeadingBit(~u_input.a));
    let var_3 = var_1;
    return 1u;
}

fn func_2(arg_0: Struct_1) -> bool {
    let var_0 = Struct_4(global0[_wgslsmith_index_u32(~func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.c.x))), _wgslsmith_f_op_f32(floor(-922f))), 13u)], _wgslsmith_f_op_vec3_f32(max(arg_0.c.ywy, _wgslsmith_f_op_vec3_f32(arg_0.c.ywy + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(231f, 724f, arg_0.c.x)))))), abs(vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.a, u_input.a), ~u_input.a), reverseBits(~0u))));
    let var_1 = u_input.a;
    let var_2 = Struct_5(firstTrailingBit(var_1), !select(vec2<bool>(true, true), vec2<bool>(arg_0.b, arg_0.b), !vec2<bool>(arg_0.b, arg_0.b)), 0u, _wgslsmith_div_i32(_wgslsmith_sub_i32(arg_0.a.x, -arg_0.a.x), 1i));
    global0 = array<vec2<i32>, 13>();
    global0 = array<vec2<i32>, 13>();
    return false;
}

fn func_4(arg_0: f32, arg_1: bool) -> vec2<u32> {
    global0 = array<vec2<i32>, 13>();
    var var_0 = ~reverseBits(u_input.a);
    global0 = array<vec2<i32>, 13>();
    global0 = array<vec2<i32>, 13>();
    var var_1 = select(true, arg_1, all(vec4<bool>(!arg_1, true, arg_1, func_2(Struct_1(vec3<i32>(28328i, -12113i, -4248i), false, vec4<f32>(664f, arg_0, arg_0, arg_0))) && arg_1)));
    return ~reverseBits(_wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(17398u, 78246u), vec2<u32>(35781u, u_input.a)), ~vec2<u32>(0u, 18173u), vec2<u32>(6481u, 28926u)), vec2<u32>(u_input.a, ~0u)));
}

fn func_5(arg_0: vec2<u32>, arg_1: vec3<i32>) -> Struct_2 {
    let var_0 = select(vec4<bool>(false & (false & (u_input.a > u_input.a)), all(vec4<bool>(true, true, true, true)) || true, !all(vec3<bool>(true, false, false)), !any(vec2<bool>(false, true)) & any(vec4<bool>(true, true, true, true))), vec4<bool>(any(vec2<bool>(all(vec4<bool>(false, false, true, false)), false)), false, all(vec3<bool>(true, true, true)), true), any(vec2<bool>(true, true)) || any(vec3<bool>(true, false, any(vec4<bool>(true, false, true, true)))));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -590f);
    let var_2 = u_input.a;
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    global0 = array<vec2<i32>, 13>();
    return Struct_2(Struct_1(~vec3<i32>(i32(-1i) * -1i, ~6446i, 17331i), _wgslsmith_dot_vec3_u32(~vec3<u32>(17816u, 1u, u_input.a), vec3<u32>(4294967295u, 6566u, 7229u)) > _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, arg_0.x, 1u), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 4294967295u, u_input.a), vec3<u32>(var_2, arg_0.x, 65373u), vec3<u32>(1u, 1u, 42209u))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(floor(1436f)), -402f, var_3, 1248f), vec4<f32>(_wgslsmith_f_op_f32(step(var_3, var_3)), var_3, var_3, _wgslsmith_f_op_f32(-var_3))))));
}

fn func_6(arg_0: Struct_2, arg_1: bool, arg_2: f32) -> Struct_3 {
    global0 = array<vec2<i32>, 13>();
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -594f);
    var var_1 = (min(_wgslsmith_div_u32(firstLeadingBit(u_input.a), ~u_input.a), u_input.a & firstTrailingBit(49569u)) & u_input.a) | ~(~u_input.a);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.a.c.yy)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(arg_0.a.c.zy, vec2<f32>(-232f, arg_0.a.c.x)))))));
    var var_3 = ~arg_0.a.a.xx;
    return Struct_3(select(true && !arg_1, !arg_1, true), ~(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 4294967295u, 4294967295u), vec4<u32>(u_input.a, 51519u, 1u, 9584u))) ^ _wgslsmith_mult_u32(~4294967295u, 95407u)), func_5(_wgslsmith_clamp_vec2_u32(abs(vec2<u32>(49048u, u_input.a)), vec2<u32>(43673u, 18928u) & vec2<u32>(u_input.a, u_input.a), vec2<u32>(1u, 1u)) << (_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.a, u_input.a), vec2<u32>(33348u, 1u)) % vec2<u32>(32u)), -max(firstTrailingBit(vec3<i32>(var_3.x, arg_0.a.a.x, -19877i)), -vec3<i32>(1i, 4190i, arg_0.a.a.x))).a, _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_0.a.c.x, 1596f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -240f)))))));
}

fn func_1(arg_0: vec2<u32>) -> Struct_3 {
    let var_0 = func_6(func_5(func_4(-105f, true && func_2(Struct_1(vec3<i32>(-24645i, -2147483647i, 1i), true, vec4<f32>(-674f, -766f, -216f, -810f)))), _wgslsmith_mult_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(0i, -33754i, 9639i), vec3<i32>(-47373i, ~24573i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(0i, 17374i))))), false, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -724f)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1117f, 2105f)))))));
    let var_1 = _wgslsmith_f_op_f32(-var_0.c.c.x);
    var var_2 = func_5(~arg_0, vec3<i32>(-1i, _wgslsmith_clamp_i32(~_wgslsmith_sub_i32(-7495i, -1i), _wgslsmith_add_i32(firstLeadingBit(var_0.c.a.x), -2147483647i), var_0.c.a.x), var_0.c.a.x));
    let var_3 = ~_wgslsmith_dot_vec2_i32(-(~vec2<i32>(13488i, var_0.c.a.x)), firstTrailingBit(-_wgslsmith_mod_vec2_i32(var_0.c.a.xz, vec2<i32>(var_2.a.a.x, var_2.a.a.x))));
    var var_4 = Struct_3(true, ~u_input.a, Struct_1(abs(-vec3<i32>(25242i, -25065i, 24080i)), all(select(vec2<bool>(false, var_2.a.b), !vec2<bool>(true, var_0.c.b), vec2<bool>(var_2.a.b, var_0.a))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-554f * var_2.a.c.x)), var_2.a.c.x, _wgslsmith_f_op_f32(1329f * 1000f), -754f)), _wgslsmith_f_op_f32(1f * -839f));
    return func_6(Struct_2(func_6(func_5(arg_0, var_4.c.a << (vec3<u32>(u_input.a, 0u, 1u) % vec3<u32>(32u))), var_0.a, 1f).c), true, var_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec3<i32>(50737i, i32(-1i) * -35537i, -firstLeadingBit(1i)), true, _wgslsmith_f_op_vec4_f32(vec4<f32>(1995f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-543f, 839f, false)))), _wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(ceil(626f)), _wgslsmith_f_op_f32(f32(-1f) * -202f), 128f, _wgslsmith_f_op_f32(step(294f, -1264f)))))));
    let var_1 = abs(vec3<u32>(u_input.a, _wgslsmith_dot_vec2_u32(firstTrailingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(u_input.a, u_input.a))), ~vec2<u32>(24862u, u_input.a) | ~vec2<u32>(u_input.a, u_input.a)), (_wgslsmith_mod_u32(46409u, u_input.a) << (63554u % 32u)) | ~(~u_input.a)));
    let var_2 = _wgslsmith_f_op_vec3_f32(var_0.c.yyw * _wgslsmith_f_op_vec3_f32(select(var_0.c.zxy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.c.yxx * var_0.c.yyw))), false)));
    var var_3 = _wgslsmith_f_op_f32(-var_0.c.x);
    var_3 = -443f;
    var var_4 = 544f;
    let var_5 = func_1(~var_1.xx);
    var var_6 = select(select(vec3<bool>(false, var_5.b <= u_input.a, true), !vec3<bool>(var_0.b, 7448u > u_input.a, var_0.b && false), vec3<bool>(!any(vec4<bool>(false, false, false, false)), ~1i > reverseBits(var_5.c.a.x), true)), vec3<bool>(!any(!vec2<bool>(var_5.a, false)), false, any(!select(vec2<bool>(true, true), vec2<bool>(var_5.c.b, false), vec2<bool>(true, var_0.b)))), select(select(vec3<bool>(true, true, func_5(vec2<u32>(4294967295u, 4294967295u), vec3<i32>(var_0.a.x, var_5.c.a.x, var_5.c.a.x)).a.b), vec3<bool>(false, true, !var_0.b), func_1(vec2<u32>(u_input.a, u_input.a)).c.b), select(vec3<bool>(select(var_5.a, false, var_5.a), var_5.a, false), select(select(vec3<bool>(false, var_0.b, true), vec3<bool>(var_0.b, true, var_0.b), var_5.c.b), vec3<bool>(var_5.c.b, var_0.b, var_5.a), vec3<bool>(true, var_5.c.b, false)), select(select(vec3<bool>(var_0.b, var_5.a, false), vec3<bool>(false, var_5.a, var_5.c.b), vec3<bool>(false, false, true)), select(vec3<bool>(var_5.c.b, var_0.b, false), vec3<bool>(false, var_0.b, var_5.c.b), var_5.a), var_0.b && true)), ~(~var_5.b) == 1u));
    var var_7 = Struct_2(var_0);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(var_5.b, 78198u))), 1u), var_5.b, ~countOneBits(_wgslsmith_mod_u32(var_5.b, var_1.x)), max(func_4(_wgslsmith_div_f32(424f, -187f), false).x, 16122u)));
}

