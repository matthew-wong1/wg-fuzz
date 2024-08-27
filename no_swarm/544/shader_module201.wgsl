struct Struct_1 {
    a: u32,
    b: bool,
    c: u32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: i32,
    c: vec2<f32>,
    d: bool,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 27>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: bool, arg_3: bool) -> bool {
    let var_0 = Struct_3(~firstLeadingBit(~vec2<i32>(u_input.b, 26324i) ^ _wgslsmith_div_vec2_i32(vec2<i32>(u_input.d, u_input.b), vec2<i32>(1i, 1757i))), -countOneBits(10506i ^ u_input.b), _wgslsmith_f_op_vec2_f32(vec2<f32>(-577f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1.x * arg_1.x), _wgslsmith_f_op_f32(arg_1.x - -189f)))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x + -1681f) * _wgslsmith_f_op_f32(arg_1.x * 502f)), arg_1.x)), all(select(arg_0.a.d.yw, !(!arg_0.a.d.yx), false)), Struct_1(abs(arg_0.a.c), true, u_input.a.x, vec4<bool>(arg_0.a.b, arg_0.a.d.x, arg_0.a.a == 0u, !arg_3)));
    global0 = array<vec3<u32>, 27>();
    var var_1 = ~max(31597u, 31172u | ((0u << (var_0.e.a % 32u)) & var_0.e.a));
    var_1 = var_0.e.c;
    global0 = array<vec3<u32>, 27>();
    return !any(var_0.e.d.wx);
}

fn func_2(arg_0: vec3<u32>) -> vec3<bool> {
    global0 = array<vec3<u32>, 27>();
    global0 = array<vec3<u32>, 27>();
    global0 = array<vec3<u32>, 27>();
    let var_0 = ~vec3<i32>(-1i, 6902i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-48369i, 1i, u_input.e), vec3<i32>(u_input.b, 2147483647i, 1i)), u_input.d, u_input.e) & _wgslsmith_sub_i32(8669i, -1i));
    global0 = array<vec3<u32>, 27>();
    return !vec3<bool>(func_3(Struct_4(Struct_1(u_input.c.x, false, 0u, vec4<bool>(false, false, false, true))), vec4<f32>(1f, 1f, 1f, 1f), true, true), any(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false))) || true, all(vec3<bool>(true, true, false)));
}

fn func_4(arg_0: i32, arg_1: vec3<bool>, arg_2: Struct_3, arg_3: Struct_1) -> Struct_4 {
    var var_0 = Struct_2(countOneBits(countOneBits(~u_input.a.yx)), _wgslsmith_f_op_f32(-arg_2.c.x));
    let var_1 = vec4<i32>(-46739i, _wgslsmith_div_i32(~max(-1161i, 30969i) ^ arg_0, select(~arg_0, u_input.b, arg_3.d.x)), -14372i, 10006i);
    var_0 = Struct_2(abs(_wgslsmith_sub_vec2_u32(u_input.a.yw, ~max(vec2<u32>(60808u, var_0.a.x), vec2<u32>(4294967295u, 0u)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.c.x)))));
    var var_2 = select(u_input.a.xyy, u_input.a.zzx, ~((1i | u_input.d) >> (~25393u % 32u)) > _wgslsmith_mod_i32(u_input.e, i32(-1i) * -16468i));
    var_0 = Struct_2(var_2.xx, 1000f);
    return Struct_4(Struct_1(1u, countOneBits(66611u) > countOneBits(~var_0.a.x), abs(~var_2.x), !(!arg_3.d)));
}

fn func_5(arg_0: bool, arg_1: Struct_4) -> Struct_3 {
    global0 = array<vec3<u32>, 27>();
    global0 = array<vec3<u32>, 27>();
    let var_0 = _wgslsmith_mult_u32(u_input.a.x, 1u) >> (countOneBits(59903u) % 32u);
    var var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-904f, -895f, -959f), vec3<f32>(375f, -724f, 1257f), arg_1.a.d.x)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1504f, -127f, -1000f), vec3<f32>(670f, -541f, 831f), arg_1.a.d.yzw)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1092f, 882f, 1399f) - vec3<f32>(-596f, -1226f, -464f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-164f, 659f, -211f)))))));
    return Struct_3(vec2<i32>(u_input.e, u_input.e), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(reverseBits(vec3<i32>(u_input.b, 20898i, -52137i)), -vec3<i32>(-40149i, -2147483647i, -2147483647i)), -min(vec3<i32>(18811i, u_input.e, -21751i), vec3<i32>(-1i, u_input.d, -53119i))), u_input.b), _wgslsmith_f_op_vec2_f32(-var_2.zx), true, Struct_1(~(arg_1.a.c | (arg_1.a.c ^ 0u)), any(arg_1.a.d.zyx), ~(~49326u), !vec4<bool>(any(arg_1.a.d.yw), !arg_0, arg_1.a.d.x, all(arg_1.a.d.wwx))));
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> StorageBuffer {
    global0 = array<vec3<u32>, 27>();
    let var_0 = true;
    var var_1 = func_5(!all(select(vec4<bool>(var_0, var_0, var_0, true), arg_0.d, arg_0.d)) || true, func_4(-104i, select(arg_0.d.xzz, func_2(u_input.c.yww), !(!vec3<bool>(true, true, arg_0.b))), Struct_3(vec2<i32>(23846i, _wgslsmith_mod_i32(-32649i, u_input.d)), min(u_input.e, _wgslsmith_clamp_i32(u_input.b, u_input.b, -542i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-398f, -818f))), any(!arg_0.d.yx), Struct_1(~25014u, true, 1u, !arg_0.d)), Struct_1(1u, _wgslsmith_f_op_f32(arg_1 - arg_1) > _wgslsmith_f_op_f32(f32(-1f) * -244f), arg_0.c, vec4<bool>(false, all(vec2<bool>(var_0, true)), false, !var_0))));
    let var_2 = u_input.c;
    let var_3 = !(!var_1.e.d.zz);
    return StorageBuffer(_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_mod_u32(6580u, arg_0.a), arg_0.c), ~_wgslsmith_mult_u32(28274u, var_1.e.a), arg_0.a), vec3<u32>(_wgslsmith_add_u32(_wgslsmith_add_u32(31389u, u_input.a.x), _wgslsmith_div_u32(4294967295u, var_2.x)), 3853u, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(var_2, var_2), _wgslsmith_add_u32(var_2.x, 11642u)))), (min(-1i, var_1.a.x ^ var_1.a.x) ^ -(0i >> (arg_0.c % 32u))) << (~var_1.e.c % 32u), _wgslsmith_sub_vec2_u32(abs(abs(var_2.yz)), ~abs(_wgslsmith_sub_vec2_u32(var_2.yx, u_input.a.wx))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-arg_1), 2753f, _wgslsmith_f_op_f32(f32(-1f) * -1243f)), vec3<f32>(var_1.c.x, _wgslsmith_f_op_f32(-var_1.c.x), arg_1)))), vec4<i32>(-35028i, ~_wgslsmith_sub_i32(3850i, 44436i), ~(var_1.b >> (arg_0.c % 32u)), u_input.b << (_wgslsmith_mod_u32(arg_0.c, 80470u) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(1f - -559f), 107f))));
    global0 = array<vec3<u32>, 27>();
    let x = u_input.a;
    s_output = func_1(Struct_1(3797u >> (1u % 32u), false, 4294967295u, select(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false)), any(select(vec2<bool>(true, true), vec2<bool>(true, false), false)))), 2483f);
}

