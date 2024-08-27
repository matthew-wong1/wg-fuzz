struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: vec4<u32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: bool, arg_1: vec2<bool>, arg_2: f32) -> vec4<bool> {
    let var_0 = Struct_1(~global1.zzw, -1000f, vec4<u32>(1u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global1.x, 56679u, 23233u), vec4<u32>(u_input.d.x, 56143u, 45637u, global1.x)), 0u, firstLeadingBit(global1.x)), global1.x, ~(~u_input.d.x)));
    let var_1 = Struct_2(Struct_1(select(~max(vec3<u32>(20286u, var_0.a.x, 70376u), u_input.d), vec3<u32>(u_input.d.x, global1.x, ~var_0.c.x), !(global0.x == false)), _wgslsmith_div_f32(arg_2, -1000f), var_0.c));
    let var_2 = !(!(!vec3<bool>(true & arg_1.x, true, select(arg_1.x, false, arg_0))));
    global1 = countOneBits(vec4<u32>(firstLeadingBit(~_wgslsmith_mult_u32(var_1.a.c.x, 43223u)), global1.x, abs(var_1.a.c.x & ~4294967295u), 0u));
    global0 = select(select(!vec2<bool>(any(var_2), true), arg_1, true), arg_1, var_2.yz);
    return vec4<bool>(arg_1.x, any(vec4<bool>(!global0.x, (i32(-1i) * -2147483647i) <= u_input.a.x, true, false)), true, all(arg_1) || false);
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec3<i32>) -> vec2<bool> {
    var var_0 = func_3(global0.x || (any(select(vec2<bool>(global0.x, false), vec2<bool>(global0.x, true), vec2<bool>(global0.x, false))) & false), select(vec2<bool>(global0.x || !global0.x, u_input.a.x < select(17330i, arg_0.x, false)), vec2<bool>((6260i < arg_2.x) & (true | global0.x), true), true), arg_1.b);
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1657f);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1.b)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -717f) * _wgslsmith_f_op_f32(925f * var_1))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.b + _wgslsmith_f_op_f32(ceil(-669f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -2066f))), all(select(vec4<bool>(global0.x, true, false, var_0.x), vec4<bool>(var_0.x, var_0.x, global0.x, false), vec4<bool>(false, var_0.x, true, true))))))));
    let var_3 = Struct_1(max(((u_input.d & vec3<u32>(53957u, arg_1.a.x, global1.x)) ^ u_input.d) & vec3<u32>(_wgslsmith_sub_u32(u_input.d.x, 122486u), _wgslsmith_mult_u32(29045u, arg_1.c.x), 1u), ~vec3<u32>(1u, 90213u, ~global1.x)), -109f, _wgslsmith_mod_vec4_u32(arg_1.c, vec4<u32>(_wgslsmith_sub_u32(global1.x, global1.x), ~(~arg_1.a.x), 4294967295u, 2260u)));
    var var_4 = 1000f;
    return func_3(false, vec2<bool>(func_3(any(var_0.zx), select(var_0.yw, vec2<bool>(false, false), !vec2<bool>(var_0.x, global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) + -914f)).x, any(func_3(global0.x && global0.x, func_3(true, vec2<bool>(global0.x, true), arg_1.b).zw, _wgslsmith_div_f32(1343f, -796f)).xyy)), _wgslsmith_f_op_f32(trunc(var_3.b))).wz;
}

fn func_1(arg_0: bool, arg_1: vec4<f32>, arg_2: Struct_2) -> bool {
    let var_0 = func_2(u_input.c.wzy, Struct_1(vec3<u32>(41445u, ~global1.x << (arg_2.a.c.x % 32u), max(4294967295u, arg_2.a.a.x)), arg_2.a.b, vec4<u32>(global1.x, ~(~arg_2.a.c.x), u_input.d.x, _wgslsmith_mult_u32(18488u, abs(u_input.d.x)))), u_input.c.zxz);
    global0 = var_0;
    global1 = min(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.d.x, 10520u, u_input.d.x, u_input.d.x), ~(~vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, global1.x)), ~vec4<u32>(u_input.d.x, arg_2.a.a.x, 19965u, arg_2.a.c.x)), ~_wgslsmith_add_vec4_u32(firstTrailingBit(arg_2.a.c) | vec4<u32>(34420u, 4294967295u, global1.x, u_input.d.x), min(arg_2.a.c, ~vec4<u32>(u_input.d.x, 0u, global1.x, 1105u))));
    return u_input.c.x <= u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -820f;
    let var_1 = all(select(vec2<bool>(global0.x, all(!vec2<bool>(global0.x, global0.x))), select(!select(vec2<bool>(global0.x, false), vec2<bool>(global0.x, global0.x), vec2<bool>(false, global0.x)), !select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(func_1(global0.x, vec4<f32>(679f, -1092f, -443f, 1587f), Struct_2(Struct_1(vec3<u32>(u_input.d.x, 74568u, 27652u), 1145f, vec4<u32>(4294967295u, global1.x, global1.x, global1.x)))), any(vec3<bool>(global0.x, false, false)))), !any(vec4<bool>(false, true, global0.x, true)) && true));
    var var_2 = Struct_2(Struct_1(u_input.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1201f)), vec4<u32>(reverseBits(4294967295u), ~global1.x, 1u, _wgslsmith_clamp_u32(select(u_input.d.x, u_input.d.x, var_1), ~u_input.d.x, 1404u))));
    var var_3 = _wgslsmith_div_vec4_u32(var_2.a.c, vec4<u32>(0u, ~0u, ~4006u, u_input.d.x));
    global0 = vec2<bool>(true, global0.x);
    var_2 = Struct_2(var_2.a);
    let var_4 = vec2<bool>(false, true);
    var var_5 = _wgslsmith_clamp_i32(13176i, 0i, -u_input.e.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.b, var_2.a.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.b) * -757f), var_2.a.b) - _wgslsmith_div_vec4_f32(vec4<f32>(1973f, var_2.a.b, var_2.a.b, var_2.a.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1000f, -254f, var_2.a.b, 941f)))))), _wgslsmith_f_op_f32(-var_2.a.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(var_2.a.b)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.b) * _wgslsmith_f_op_f32(min(898f, var_2.a.b)))) - 1000f));
}

