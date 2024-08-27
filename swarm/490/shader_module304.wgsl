struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec2<f32>,
    d: vec3<bool>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, true);

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<bool>, arg_1: bool, arg_2: Struct_2) -> f32 {
    let var_0 = 1i;
    let var_1 = arg_2.c.b.x ^ 75819u;
    let var_2 = _wgslsmith_f_op_f32(floor(-222f));
    var var_3 = 1u;
    var_3 = 47185u;
    return 247f;
}

fn func_2(arg_0: f32) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(vec2<bool>(global0.x, false), global0.x, Struct_2(Struct_1(arg_0, u_input.d.xw, vec2<f32>(arg_0, arg_0), vec3<bool>(global0.x, global0.x, false), -60845i), false, Struct_1(-1597f, u_input.d.xx, vec2<f32>(arg_0, 347f), vec3<bool>(true, global0.x, false), u_input.a)))))))), u_input.d.yy, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(938f, -381f) * vec2<f32>(613f, arg_0)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(321f, 157f) + vec2<f32>(-163f, arg_0))))), !vec3<bool>(global0.x, any(vec2<bool>(global0.x, global0.x)), true), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(~u_input.b.ww, -u_input.b.zw), vec2<i32>(u_input.b.x, _wgslsmith_clamp_i32(u_input.a, -40094i, u_input.a)))), any(vec4<bool>(any(vec3<bool>(global0.x, false, false)) && any(vec3<bool>(true, global0.x, global0.x)), all(vec3<bool>(true, global0.x, false)), true, false)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(select(vec2<bool>(true, true), vec2<bool>(false, global0.x), true), global0.x, Struct_2(Struct_1(arg_0, u_input.d.yx, vec2<f32>(938f, 243f), vec3<bool>(global0.x, false, false), u_input.a), true, Struct_1(1000f, u_input.d.wz, vec2<f32>(arg_0, 264f), vec3<bool>(global0.x, true, false), 2147483647i))))), u_input.d.zz, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-600f, arg_0), vec2<f32>(arg_0, arg_0))) - vec2<f32>(arg_0, arg_0)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_0, -895f))) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1000f, -1711f), vec2<f32>(-862f, arg_0))))), vec3<bool>(true, all(select(vec2<bool>(global0.x, false), vec2<bool>(true, global0.x), vec2<bool>(global0.x, false))), global0.x), -24570i));
    global0 = select(var_0.a.d.xy, select(var_0.a.d.xx, !var_0.c.d.zx, var_0.a.d.zz), ~_wgslsmith_mod_i32(14885i, reverseBits(var_0.a.e)) < abs(var_0.c.e));
    let var_1 = Struct_1(var_0.a.c.x, ~u_input.d.yy, var_0.c.c, var_0.a.d, u_input.a);
    let var_2 = firstLeadingBit(abs(countOneBits(-5081i)));
    let var_3 = var_0;
    return var_1;
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = vec2<u32>(4294967295u << (arg_3.b.x % 32u), ~(~min(_wgslsmith_add_u32(u_input.d.x, u_input.d.x), ~27247u)));
    var var_1 = _wgslsmith_dot_vec2_i32(-_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(arg_0, -vec2<i32>(arg_3.e, arg_3.e)), abs(-arg_0)), arg_0);
    let var_2 = 6297u;
    let var_3 = func_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(307f * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_3.c.x * arg_1.c.x)))), true)));
    return Struct_1(1286f, var_3.b, _wgslsmith_f_op_vec2_f32(-arg_1.c), arg_1.d, i32(-1i) * -1i);
}

fn func_4(arg_0: vec4<f32>, arg_1: i32, arg_2: Struct_1) -> bool {
    global0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(528f, _wgslsmith_f_op_f32(-arg_2.a))))))).d.yx;
    global0 = vec2<bool>(!(!global0.x), true);
    global0 = arg_2.d.xz;
    global0 = func_1(_wgslsmith_mod_vec2_i32(-u_input.b.xz, ~u_input.b.xy), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a)), arg_2.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_0.wx, _wgslsmith_f_op_vec2_f32(min(arg_2.c, vec2<f32>(arg_0.x, arg_0.x)))) * arg_2.c), !arg_2.d, -u_input.a), 163f, arg_2).d.yz;
    var var_0 = !select(select(select(!vec4<bool>(false, arg_2.d.x, arg_2.d.x, true), vec4<bool>(true, global0.x, true, true), false), !vec4<bool>(global0.x, arg_2.d.x, true, global0.x), !(!vec4<bool>(false, global0.x, global0.x, arg_2.d.x))), !vec4<bool>(!arg_2.d.x, all(vec2<bool>(arg_2.d.x, arg_2.d.x)), true, func_2(arg_2.a).d.x), vec4<bool>(true, false, false, !(u_input.d.x > 45479u)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(vec2<bool>(true, any(!(!vec3<bool>(false, global0.x, global0.x)))), !select(vec2<bool>(any(vec2<bool>(global0.x, false)), true), vec2<bool>(true, !global0.x), vec2<bool>(global0.x, u_input.b.x == u_input.b.x)), select(func_4(vec4<f32>(104f, -653f, 1000f, -253f), u_input.b.x, func_1(u_input.b.wy, Struct_1(594f, vec2<u32>(u_input.c, u_input.d.x), vec2<f32>(741f, -253f), vec3<bool>(true, global0.x, global0.x), u_input.b.x), -393f, Struct_1(-1432f, vec2<u32>(60764u, 0u), vec2<f32>(-868f, -2266f), vec3<bool>(global0.x, global0.x, global0.x), 2147483647i))) | true, true, global0.x));
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-620f + 890f), _wgslsmith_f_op_f32(max(-371f, 136f))))), _wgslsmith_f_op_f32(f32(-1f) * -205f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(325f, -970f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -895f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1106f + -502f))))) * vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(573f, -1321f, true)), 495f), _wgslsmith_f_op_f32(-913f + -695f)), 695f, -1345f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-626f - 221f))), -333f)));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(vec2<bool>(global0.x, !global0.x), false, Struct_2(func_2(var_0.x), !global0.x, Struct_1(-1725f, u_input.d.yz, var_0.xw, vec3<bool>(false, global0.x, true), 2147483647i)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.x)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-func_1(_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, u_input.a), vec2<i32>(u_input.b.x, u_input.b.x)), func_1(vec2<i32>(u_input.b.x, u_input.a), Struct_1(323f, u_input.d.xz, var_0.wx, vec3<bool>(global0.x, global0.x, global0.x), u_input.b.x), var_0.x, Struct_1(569f, vec2<u32>(u_input.c, 4294967295u), vec2<f32>(var_0.x, -113f), vec3<bool>(true, global0.x, global0.x), 0i)), _wgslsmith_f_op_f32(min(1416f, 1000f)), func_1(u_input.b.zy, Struct_1(1500f, vec2<u32>(4294967295u, u_input.d.x), vec2<f32>(102f, var_0.x), vec3<bool>(true, false, true), 22181i), var_0.x, Struct_1(139f, u_input.d.wz, vec2<f32>(-1000f, var_0.x), vec3<bool>(false, true, global0.x), 0i))).a), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(select(1917f, 1031f, global0.x))))))));
    let var_2 = u_input.d.xw;
    let var_3 = -239f;
    let var_4 = 1655i == u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(var_3, _wgslsmith_f_op_f32(round(var_1.x))), _wgslsmith_f_op_f32(f32(-1f) * -156f));
}

