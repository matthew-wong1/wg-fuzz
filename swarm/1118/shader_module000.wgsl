struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: bool,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 17> = array<vec3<f32>, 17>(vec3<f32>(-422f, -678f, 1166f), vec3<f32>(1271f, 628f, 638f), vec3<f32>(-1337f, -226f, -1000f), vec3<f32>(-1201f, 100f, 984f), vec3<f32>(-1177f, -136f, -979f), vec3<f32>(-125f, 497f, -377f), vec3<f32>(432f, 360f, 1228f), vec3<f32>(1606f, -1348f, -895f), vec3<f32>(1421f, -455f, 1000f), vec3<f32>(-1054f, -684f, -398f), vec3<f32>(665f, 1000f, -547f), vec3<f32>(-172f, 720f, 1000f), vec3<f32>(628f, -412f, -366f), vec3<f32>(2007f, -326f, 1284f), vec3<f32>(495f, 1488f, -397f), vec3<f32>(642f, 345f, 670f), vec3<f32>(-901f, -572f, 483f));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = reverseBits(u_input.a);
    global0 = array<vec3<f32>, 17>();
    var var_1 = Struct_2(u_input.d.xz);
    var var_2 = var_1.a.x;
    var var_3 = Struct_3(!all(vec4<bool>(2147483647i > u_input.b, all(vec4<bool>(false, false, true, false)), any(vec3<bool>(false, true, false)), true)), -abs(abs(var_0.x)) < (~var_0.x & ~reverseBits(u_input.b)), true, Struct_2(vec2<u32>(~u_input.d.x, ~35408u)), Struct_1(max(_wgslsmith_dot_vec4_i32(~vec4<i32>(var_0.x, -1i, 50623i, -1i), vec4<i32>(1i, u_input.b, var_0.x, var_0.x)), _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(-1i, u_input.b, var_0.x)), vec3<i32>(u_input.a.x, -9612i, 0i))), all(vec2<bool>(true, true)), min(u_input.d.zy, select(~vec2<u32>(u_input.d.x, u_input.d.x), vec2<u32>(u_input.c.x, 21566u), all(vec2<bool>(true, true))))));
    return ~_wgslsmith_div_u32(~_wgslsmith_div_u32(1u, 54327u), var_3.e.c.x);
}

fn func_2() -> i32 {
    let var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(238f, -778f, 153f, 835f)))))), Struct_3(reverseBits(func_3()) >= u_input.d.x, !(true & any(vec4<bool>(true, false, true, true))), true, Struct_2(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(42341u, 4790u), vec2<u32>(u_input.d.x, u_input.c.x)), 4401u)), Struct_1(-_wgslsmith_div_i32(u_input.b, u_input.a.x), true, firstTrailingBit(u_input.d.xz))));
    global0 = array<vec3<f32>, 17>();
    let var_1 = ~_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(var_0.b.e.a, -15104i, u_input.a.x, u_input.a.x)), -vec4<i32>(u_input.a.x, -2147483647i, 32659i, 6330i)) ^ _wgslsmith_clamp_i32(~20868i, 2147483647i, var_0.b.e.a);
    var var_2 = ~abs(min(var_1, u_input.b >> (var_0.b.e.c.x % 32u))) < -51307i;
    let var_3 = var_0.b.e.c;
    return var_0.b.e.a;
}

fn func_1(arg_0: bool) -> Struct_2 {
    var var_0 = select(select(u_input.a.x, ~(-u_input.a.x & _wgslsmith_clamp_i32(u_input.b, u_input.b, u_input.a.x)), u_input.c.x > 4294967295u), ~u_input.a.x, arg_0);
    let var_1 = vec4<i32>(u_input.a.x, 0i, -reverseBits(1i) >> ((_wgslsmith_add_u32(u_input.d.x, u_input.d.x) ^ u_input.d.x) % 32u), -26905i) | countOneBits(vec4<i32>(select(9288i, -u_input.a.x, !arg_0), (u_input.a.x >> (4294967295u % 32u)) & u_input.b, -7540i, u_input.a.x));
    let var_2 = _wgslsmith_clamp_i32(-_wgslsmith_sub_i32(u_input.a.x, 0i) & abs(~u_input.b), ~((var_1.x << (6375u % 32u)) & 1i), select(var_1.x, firstLeadingBit(u_input.b) >> ((u_input.c.x & u_input.d.x) % 32u), arg_0)) ^ func_2();
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(421f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-394f, -787f, all(vec3<bool>(true, true, arg_0)))) - 1f), -1024f, -534f));
    var var_4 = select(select(select(vec2<bool>(true, false || arg_0), select(vec2<bool>(true, true), vec2<bool>(arg_0, arg_0), select(vec2<bool>(arg_0, true), vec2<bool>(arg_0, arg_0), true)), all(vec2<bool>(arg_0, false))), select(vec2<bool>(!arg_0, arg_0), !vec2<bool>(false, arg_0), any(select(vec2<bool>(arg_0, false), vec2<bool>(arg_0, arg_0), vec2<bool>(false, false)))), select(!select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0), true), !(!vec2<bool>(true, arg_0)), true && arg_0)), vec2<bool>(true, true), vec2<bool>(!(!all(vec4<bool>(true, true, false, arg_0))), arg_0));
    return Struct_2(u_input.d.yz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(24177i, any(vec4<bool>(true, true, true, true)) & (u_input.a.x > u_input.a.x), _wgslsmith_clamp_vec2_u32(~u_input.c.xx, min(select(u_input.d.yy, u_input.c.zy, true), u_input.c.xx), ~(~vec2<u32>(6078u, u_input.c.x))));
    var var_1 = u_input.c.x;
    let var_2 = Struct_3(all(!vec3<bool>(any(vec3<bool>(true, var_0.b, false)), all(vec2<bool>(var_0.b, var_0.b)), any(vec3<bool>(false, true, var_0.b)))), all(select(!(!vec3<bool>(var_0.b, var_0.b, true)), !select(vec3<bool>(var_0.b, var_0.b, true), vec3<bool>(false, true, true), vec3<bool>(false, false, var_0.b)), all(!vec3<bool>(var_0.b, false, var_0.b)))), false, func_1(all(!vec2<bool>(var_0.b, var_0.b)) || var_0.b), var_0);
    let var_3 = Struct_1(-2147483647i, all(select(!vec2<bool>(var_0.b, false), !vec2<bool>(true, var_0.b), vec2<bool>(true, true))), (_wgslsmith_div_vec2_u32(u_input.c.xx, ~vec2<u32>(var_2.e.c.x, 36745u)) << (~vec2<u32>(u_input.d.x, var_0.c.x) % vec2<u32>(32u))) << (vec2<u32>(4294967295u, 15890u) % vec2<u32>(32u)));
    var var_4 = Struct_4(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, 611f, -1645f, -2113f), vec4<f32>(521f, 1056f, -156f, 344f)))) * vec4<f32>(-1990f, 140f, -820f, -248f)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(735f, 494f, -118f, -1606f) * vec4<f32>(-118f, -154f, 1000f, 576f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, -1000f, 812f, -1000f), vec4<f32>(235f, 444f, -144f, 1654f), true))))))), var_2);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.a.x, 213f, 1433f, var_4.a.x) - var_4.a) - _wgslsmith_f_op_vec4_f32(ceil(var_4.a))), vec4<f32>(_wgslsmith_f_op_f32(var_4.a.x - var_4.a.x), var_4.a.x, var_4.a.x, var_4.a.x)) + var_4.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -799f), _wgslsmith_div_f32(var_4.a.x, -684f), -276f == var_4.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -1035f) == _wgslsmith_f_op_f32(exp2(var_4.a.x)))), _wgslsmith_f_op_f32(var_4.a.x + _wgslsmith_f_op_f32(var_4.a.x + _wgslsmith_f_op_f32(max(var_4.a.x, 1000f))))), _wgslsmith_dot_vec2_u32(max(~var_3.c, (u_input.c.yx | vec2<u32>(u_input.d.x, 0u)) >> (vec2<u32>(var_2.d.a.x, 15978u) % vec2<u32>(32u))), max(~vec2<u32>(19075u, var_3.c.x) >> (_wgslsmith_div_vec2_u32(var_4.b.e.c, var_2.e.c) % vec2<u32>(32u)), vec2<u32>(var_3.c.x, var_3.c.x))), firstTrailingBit(vec2<i32>(var_3.a, max(var_2.e.a, -2147483647i) >> (_wgslsmith_sub_u32(u_input.d.x, 49405u) % 32u))));
}

