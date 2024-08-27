struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
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

var<private> global0: array<vec2<i32>, 26> = array<vec2<i32>, 26>(vec2<i32>(i32(-2147483648), -10842i), vec2<i32>(-42428i, 32555i), vec2<i32>(1i, 1i), vec2<i32>(-60249i, 29658i), vec2<i32>(-1i, -9243i), vec2<i32>(2147483647i, 0i), vec2<i32>(18155i, -1i), vec2<i32>(2147483647i, -57039i), vec2<i32>(-1i, -73786i), vec2<i32>(0i, -1484i), vec2<i32>(-4987i, -6934i), vec2<i32>(1i, 0i), vec2<i32>(-23876i, 2147483647i), vec2<i32>(1i, 2147483647i), vec2<i32>(-2848i, 1i), vec2<i32>(1i, 62133i), vec2<i32>(26452i, -32098i), vec2<i32>(21635i, i32(-2147483648)), vec2<i32>(-19506i, -1i), vec2<i32>(-3966i, 0i), vec2<i32>(-47195i, 2147483647i), vec2<i32>(-1i, -10024i), vec2<i32>(-49891i, -17260i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(0i, 27092i), vec2<i32>(-25365i, i32(-2147483648)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: u32) -> i32 {
    var var_0 = !select(vec2<bool>(any(vec4<bool>(false, false, true, false)), true), vec2<bool>(false, true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true)));
    var var_1 = select(!vec4<bool>(any(select(vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(true, var_0.x, false, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, true))), false, any(!vec2<bool>(true, var_0.x)), true), vec4<bool>(any(vec3<bool>(any(vec2<bool>(var_0.x, var_0.x)), 67069u == arg_0, any(vec4<bool>(var_0.x, true, var_0.x, var_0.x)))), false, var_0.x, true), var_0.x);
    let var_2 = var_1.yxy;
    global0 = array<vec2<i32>, 26>();
    var_1 = vec4<bool>(!((0u ^ (58098u | arg_1)) > u_input.c.x), (~_wgslsmith_div_u32(4294967295u, 1u) >> (select(u_input.a.x, countOneBits(6354u), false) % 32u)) != ~(~(~1u)), true, var_2.x);
    return 32560i;
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = (firstLeadingBit(func_3(~u_input.b.x, u_input.a.x)) < ((i32(-1i) * -61512i) ^ -select(32452i, 0i, false))) & false;
    let var_1 = global0[_wgslsmith_index_u32(min(_wgslsmith_mult_u32(arg_2.a.x, ~countOneBits(arg_2.a.x)) << (_wgslsmith_mod_u32(~arg_2.a.x, min(u_input.b.x, 20054u)) % 32u), (u_input.a.x << (firstLeadingBit(~1u) % 32u)) | arg_2.a.x), 26u)];
    global0 = array<vec2<i32>, 26>();
    let var_2 = 0i;
    global0 = array<vec2<i32>, 26>();
    return Struct_1(~arg_2.a);
}

fn func_4(arg_0: Struct_1) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_f32(select(-2616f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-808f, -134f, false)) - _wgslsmith_f_op_f32(min(889f, -1031f))))), any(!select(vec3<bool>(true, true, false), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), all(vec3<bool>(false, true, false))))));
    global0 = array<vec2<i32>, 26>();
    let var_1 = select(0i, abs(-_wgslsmith_add_i32(1i, 1i)), all(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true), any(vec2<bool>(false, true)))) | any(vec4<bool>(true, true, true, true)));
    global0 = array<vec2<i32>, 26>();
    return ~vec3<u32>(0u, ~(~reverseBits(u_input.b.x)), _wgslsmith_div_u32(arg_0.a.x, arg_0.a.x));
}

fn func_1(arg_0: vec2<f32>, arg_1: f32, arg_2: f32, arg_3: i32) -> Struct_2 {
    global0 = array<vec2<i32>, 26>();
    global0 = array<vec2<i32>, 26>();
    let var_0 = Struct_3(true);
    let var_1 = _wgslsmith_dot_vec3_u32(select(func_4(func_2(!vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a), vec2<bool>(var_0.a, var_0.a), Struct_1(vec2<u32>(6033u, u_input.a.x)))), _wgslsmith_mod_vec3_u32(u_input.b, ~(vec3<u32>(1u, 445u, 17239u) >> (u_input.c.wyw % vec3<u32>(32u)))), var_0.a), ~_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.a.x, 4294967295u, 4294967295u) | max(u_input.c.zyz, vec3<u32>(0u, 95558u, u_input.b.x)), u_input.b));
    var var_2 = -abs(firstLeadingBit(abs(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_3, arg_3, -2147483647i, 0i), vec4<i32>(0i, arg_3, arg_3, -10920i)))));
    return Struct_2(_wgslsmith_f_op_f32(-arg_0.x));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2) -> bool {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1220f)), _wgslsmith_f_op_f32(-arg_1.a), true))));
    global0 = array<vec2<i32>, 26>();
    var var_1 = reverseBits(u_input.c);
    var_1 = abs(~vec4<u32>(~4294967295u, u_input.a.x, _wgslsmith_clamp_u32(1u, 11645u, var_1.x), u_input.c.x)) | max(~vec4<u32>(1u, 23297u, arg_0.a.x, 1u), ~select(vec4<u32>(var_1.x, arg_0.a.x, var_1.x, var_1.x), vec4<u32>(0u, 0u, 4294967295u, 20190u) >> (vec4<u32>(arg_0.a.x, 25600u, 18723u, u_input.a.x) % vec4<u32>(32u)), true));
    var var_2 = u_input.a.x;
    return any(select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, any(vec2<bool>(false, true)), true, arg_1.a > var_0.a), 953f != _wgslsmith_f_op_f32(sign(arg_1.a)))) && true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 26>();
    var var_0 = Struct_1(u_input.a);
    global0 = array<vec2<i32>, 26>();
    var_0 = Struct_1(abs(~u_input.c.xz >> (u_input.b.xx % vec2<u32>(32u))) & _wgslsmith_div_vec2_u32(u_input.a | var_0.a, max(~var_0.a, _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, var_0.a.x), var_0.a, u_input.b.yy))));
    let var_1 = vec2<bool>(!func_5(Struct_1(_wgslsmith_div_vec2_u32(var_0.a, var_0.a)), func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1787f, 286f)), -490f, _wgslsmith_f_op_f32(1000f + 769f), 0i)), true);
    let var_2 = Struct_3(var_1.x);
    var var_3 = 1420f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(max(_wgslsmith_mod_i32(-32272i, -1i), 1i), -22376i), 37848i);
}

