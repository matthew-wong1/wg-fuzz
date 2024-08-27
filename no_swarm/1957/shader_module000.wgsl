struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(vec2<f32>(-236f, -2163f), -4267i), Struct_2(vec2<f32>(-440f, 1952f), 43546i), Struct_2(vec2<f32>(228f, -361f), 38491i), Struct_2(vec2<f32>(-1128f, 2287f), 1i), Struct_2(vec2<f32>(-692f, 694f), 22282i), Struct_2(vec2<f32>(-2010f, -709f), 22832i), Struct_2(vec2<f32>(1252f, -129f), 24950i), Struct_2(vec2<f32>(213f, -1669f), -15907i), Struct_2(vec2<f32>(1031f, -840f), -1i), Struct_2(vec2<f32>(760f, -232f), 2147483647i), Struct_2(vec2<f32>(-1647f, -628f), 1i), Struct_2(vec2<f32>(-2169f, 1247f), 15561i), Struct_2(vec2<f32>(981f, -1000f), -1i), Struct_2(vec2<f32>(-664f, 1472f), -34937i), Struct_2(vec2<f32>(-1147f, -185f), 0i), Struct_2(vec2<f32>(-1000f, 193f), -1i), Struct_2(vec2<f32>(-1000f, 683f), 2147483647i), Struct_2(vec2<f32>(1000f, -296f), 1i), Struct_2(vec2<f32>(987f, 1005f), 1i), Struct_2(vec2<f32>(813f, -783f), 828i), Struct_2(vec2<f32>(762f, 860f), i32(-2147483648)), Struct_2(vec2<f32>(848f, -418f), -1i), Struct_2(vec2<f32>(1000f, -1000f), -29170i), Struct_2(vec2<f32>(-1237f, -891f), 21276i), Struct_2(vec2<f32>(166f, 165f), 55829i), Struct_2(vec2<f32>(-124f, 1000f), 2147483647i), Struct_2(vec2<f32>(572f, -204f), 11573i));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2() -> Struct_1 {
    return Struct_1(_wgslsmith_sub_u32(~78784u, u_input.a));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> i32 {
    global0 = array<Struct_2, 27>();
    global0 = array<Struct_2, 27>();
    let var_0 = arg_0;
    var var_1 = global0[_wgslsmith_index_u32(0u, 27u)];
    return 1i;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<i32>, arg_2: vec2<f32>, arg_3: bool) -> u32 {
    let var_0 = _wgslsmith_mult_i32(arg_1.x, _wgslsmith_sub_i32(-func_3(_wgslsmith_clamp_u32(1u, 37792u, u_input.a), func_2()), -(1i << ((u_input.a & u_input.c) % 32u))));
    global0 = array<Struct_2, 27>();
    let var_1 = false;
    var var_2 = -501f;
    let var_3 = global0[_wgslsmith_index_u32(u_input.c, 27u)];
    return ~select(min(~func_2().a, _wgslsmith_add_u32(0u, 57723u) >> (_wgslsmith_clamp_u32(u_input.a, 0u, 8973u) % 32u)), 1u, var_3.a.x >= var_3.a.x);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<u32>) -> vec3<f32> {
    global0 = array<Struct_2, 27>();
    var var_0 = _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.a, arg_2.x, arg_2.x), ~u_input.b >> (~arg_2 % vec3<u32>(32u))) & vec3<u32>(u_input.a, ~(u_input.a >> (24137u % 32u)), 79660u), vec3<u32>(_wgslsmith_div_u32(109156u, ~(~u_input.a)), abs(~u_input.b.x), 66267u));
    var var_1 = !all(vec3<bool>(!all(vec3<bool>(false, true, false)), true, _wgslsmith_div_i32(-2147483647i, 2147483647i) >= reverseBits(arg_1.b)));
    let var_2 = func_2();
    var var_3 = func_2().a;
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(arg_1.a.x)))))), 2773f, 617f) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.x, arg_1.a.x, -656f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.x, arg_0.a.x, arg_1.a.x)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a.x, 117f, arg_0.a.x) * vec3<f32>(arg_0.a.x, arg_1.a.x, -409f))), false)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(func_4(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(u_input.c << (1u % 32u), u_input.c, ~18911u, u_input.a)), vec4<u32>(~func_1(vec3<u32>(u_input.a, u_input.a, u_input.a), vec2<i32>(-16297i, -2147483647i), vec2<f32>(962f, 1746f), true), ~u_input.c, 1u, ~93722u)), 27u)], Struct_2(vec2<f32>(1f, 1f), ~(-1i)), select(_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.b, vec3<u32>(1u, 16617u, u_input.b.x), u_input.b), select(u_input.b, vec3<u32>(71635u, u_input.b.x, 27333u) << (u_input.b % vec3<u32>(32u)), false)), ~(~vec3<u32>(u_input.b.x, u_input.c, 58027u)) << (select(vec3<u32>(u_input.c, u_input.b.x, u_input.c), u_input.b ^ vec3<u32>(u_input.c, u_input.a, u_input.b.x), vec3<bool>(true, true, true)) % vec3<u32>(32u)), select(select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false))), vec3<bool>(true, true, true), vec3<bool>(all(vec2<bool>(true, true)), all(vec4<bool>(true, false, false, false)), u_input.a != 28068u)))));
    let var_1 = reverseBits(~vec4<i32>((i32(-1i) * -8655i) ^ select(0i, 27238i, false), -1i, func_3(_wgslsmith_div_u32(4294967295u, 4294967295u), Struct_1(58043u)), -_wgslsmith_dot_vec4_i32(vec4<i32>(35932i, -1i, 47167i, 0i), vec4<i32>(-19174i, -1i, 43487i, 0i))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - -1000f) - _wgslsmith_f_op_f32(var_0.x - 1271f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec3_f32(func_4(global0[_wgslsmith_index_u32(u_input.c, 27u)], Struct_2(vec2<f32>(var_0.x, 738f), var_1.x), vec3<u32>(0u, 60030u, u_input.a))).x, _wgslsmith_f_op_f32(-var_0.x))), 864f), -722f));
    let var_3 = all(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), all(vec4<bool>(true, true, false, true))));
    var var_4 = var_3;
    var var_5 = Struct_1(~_wgslsmith_clamp_u32(_wgslsmith_mod_u32(26847u, u_input.c), _wgslsmith_mult_u32(u_input.b.x, u_input.a), 4294967295u ^ u_input.c) >> (63490u % 32u));
    var var_6 = -1i;
    var var_7 = _wgslsmith_mult_vec2_u32(u_input.b.xy, firstLeadingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(var_5.a, countOneBits(u_input.b.x)), ~vec2<u32>(4294967295u, 71858u))));
    let var_8 = Struct_2(_wgslsmith_div_vec2_f32(var_0.xx, var_0.zx), var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(var_1.x, var_8.b));
}

