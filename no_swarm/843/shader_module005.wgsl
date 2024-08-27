struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_3 {
    a: bool,
    b: vec4<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<f32>,
    d: vec4<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true);

var<private> global1: Struct_3 = Struct_3(true, vec4<f32>(-1705f, -119f, 1316f, -1041f), Struct_1(false));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2) -> bool {
    global1 = Struct_3(arg_1.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.b.x))), global1.b.x, 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.x)))), arg_1);
    global1 = Struct_3(!arg_2.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.b), global1.b), arg_1);
    global0 = global1.c;
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.b.yw));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.x - 1911f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(-var_0.x)))));
    return 4294967295u < (u_input.a.x | reverseBits(4294967295u));
}

fn func_2() -> f32 {
    global0 = global1.c;
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-353f, -289f)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-987f, 1033f))), true))));
    let var_1 = 2147483647i;
    var var_2 = !select(vec4<bool>(global0.a, !all(vec2<bool>(true, true)), false, func_3(Struct_2(true, vec3<i32>(var_1, -50965i, u_input.c.x)), Struct_1(false), Struct_2(true, u_input.c))), select(select(!vec4<bool>(global0.a, global0.a, false, global1.a), !vec4<bool>(global0.a, global1.c.a, false, true), true), select(!vec4<bool>(true, false, global1.a, global1.c.a), vec4<bool>(global1.a, true, global0.a, global0.a), select(vec4<bool>(false, true, true, global1.a), vec4<bool>(true, global0.a, global1.c.a, true), global0.a)), true), vec4<bool>(true, !(global1.a || false), _wgslsmith_div_u32(u_input.a.x, 72748u) >= ~31265u, !global1.a));
    var var_3 = Struct_1(global1.c.a | global0.a);
    return _wgslsmith_f_op_f32(global1.b.x * _wgslsmith_f_op_f32(global1.b.x + global1.b.x));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    global0 = Struct_1(_wgslsmith_f_op_f32(func_2()) <= 1f);
    global1 = Struct_3(false, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(global1.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.x, -309f, global1.b.x, global1.b.x) - vec4<f32>(global1.b.x, -906f, -3082f, global1.b.x)))))), arg_0);
    var var_0 = true;
    let var_1 = !select(select(vec2<bool>(global0.a, global1.c.a), !select(vec2<bool>(arg_0.a, true), vec2<bool>(global1.a, global1.a), global0.a), select(vec2<bool>(arg_0.a, global1.a), select(vec2<bool>(false, true), vec2<bool>(arg_0.a, true), true), !vec2<bool>(false, arg_0.a))), !select(vec2<bool>(arg_0.a, false), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(arg_0.a, arg_0.a)), all(vec3<bool>(false, false, arg_0.a))), all(vec2<bool>(global0.a, true)) | (_wgslsmith_f_op_f32(726f * global1.b.x) == _wgslsmith_f_op_f32(f32(-1f) * -573f)));
    global1 = Struct_3(!(!global0.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, -734f, 197f, global1.b.x), global1.b))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(global1.b.x, -1649f), _wgslsmith_f_op_f32(-global1.b.x), _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-global1.b.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(662f, -569f, global1.b.x, global1.b.x) * vec4<f32>(-408f, 132f, global1.b.x, global1.b.x))))), arg_0);
    return Struct_1(!all(!vec3<bool>(global1.c.a, false, var_1.x)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_3) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-arg_2.b.yw);
    var var_1 = Struct_3(true, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(var_0.x)))), global1.b.x, -362f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + arg_2.b.x) * _wgslsmith_f_op_f32(f32(-1f) * -1023f))) * _wgslsmith_div_vec4_f32(arg_2.b, _wgslsmith_f_op_vec4_f32(ceil(global1.b)))), func_1(func_1(global1.c)));
    let var_2 = arg_2;
    global0 = Struct_1(!any(select(select(vec2<bool>(true, true), vec2<bool>(arg_0.c.a, true), vec2<bool>(true, false)), select(vec2<bool>(true, arg_2.a), vec2<bool>(arg_2.a, false), true), select(vec2<bool>(true, global1.a), vec2<bool>(false, true), false))));
    var var_3 = Struct_3(false, var_1.b, Struct_1(any(!vec2<bool>(global0.a, false))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_3.b), _wgslsmith_f_op_vec4_f32(global1.b + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, 1330f, 1146f, 451f)))) * var_3.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_4(Struct_3(true, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.b - global1.b) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, global1.b.x, global1.b.x, global1.b.x)))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-328f, -410f, 625f, global1.b.x)))), func_1(global1.c)), global1.c, Struct_3(!global0.a, global1.b, global1.c)));
    var var_1 = abs(vec4<i32>(-8924i, min(-15758i, 0i), u_input.c.x, u_input.e << ((u_input.a.x & 77838u) % 32u)));
    global0 = func_1(Struct_1(any(select(!vec3<bool>(true, global0.a, global1.a), select(vec3<bool>(global1.a, global1.c.a, true), vec3<bool>(global1.a, true, true), vec3<bool>(false, global1.a, false)), global1.c.a))));
    let var_2 = _wgslsmith_div_i32(-1i, _wgslsmith_div_i32(u_input.e, var_1.x >> (countOneBits(countOneBits(35953u)) % 32u)));
    var var_3 = Struct_1(global1.a);
    let var_4 = -190f;
    var var_5 = _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(~(u_input.a ^ vec4<u32>(22050u, 5417u, u_input.a.x, u_input.a.x)), vec4<u32>(4294967295u | u_input.a.x, 10470u, 4294967295u, 4294967295u)), select(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 4687u), vec4<u32>(4294967295u, u_input.a.x, 0u, 4294967295u)), u_input.a, !(!vec4<bool>(global0.a, global1.c.a, false, false)))), u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(select(-abs(vec4<i32>(-1i, 0i, 10395i, var_1.x)), select(abs(vec4<i32>(-45718i, var_2, u_input.b.x, 2147483647i)), max(vec4<i32>(u_input.d.x, 40665i, var_1.x, 2147483647i), vec4<i32>(var_1.x, 0i, u_input.d.x, 29215i)), select(vec4<bool>(false, false, var_3.a, false), vec4<bool>(var_3.a, global1.a, true, false), vec4<bool>(global0.a, var_3.a, true, true))), vec4<bool>(true, var_3.a, true, false)), vec4<i32>(-2740i, var_2, _wgslsmith_dot_vec2_i32(max(vec2<i32>(1120i, u_input.b.x), vec2<i32>(47883i, u_input.b.x)), min(u_input.d, u_input.b)), var_2)), u_input.a.x, global1.b, ~(-vec4<i32>(min(0i, var_1.x), ~var_2, -7210i, _wgslsmith_div_i32(var_2, u_input.d.x))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_4, 1000f))))), _wgslsmith_f_op_vec2_f32(-var_0.xw)))));
}

