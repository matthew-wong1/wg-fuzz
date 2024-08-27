struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: vec3<f32> = vec3<f32>(351f, -1000f, -1341f);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<f32>) -> vec3<i32> {
    global0 = u_input.b;
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(-3248f, global1.x)), _wgslsmith_f_op_f32(f32(-1f) * -1337f), _wgslsmith_f_op_f32(f32(-1f) * -488f), _wgslsmith_f_op_f32(exp2(global1.x))))), u_input.d.xx);
    let var_1 = u_input.b.x;
    let var_2 = global1.x;
    var var_3 = vec2<u32>(~(~(~countOneBits(u_input.c))), _wgslsmith_mod_u32(1u, global0.x));
    return reverseBits(u_input.d);
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: vec2<bool>) -> vec2<bool> {
    global1 = vec3<f32>(360f, _wgslsmith_f_op_f32(f32(-1f) * -149f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.x) * _wgslsmith_f_op_f32(min(global1.x, arg_1.a.x))) * global1.x) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x - arg_1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(215f + -2107f)))));
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.a.yyw) * vec3<f32>(_wgslsmith_f_op_f32(-arg_1.a.x), 1211f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1015f - global1.x))))));
    var var_0 = func_3(vec2<f32>(_wgslsmith_div_f32(arg_1.a.x, arg_1.a.x), 1000f));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.a.x), arg_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + global1.x) + _wgslsmith_f_op_f32(-625f * global1.x)), arg_1.a.x))), var_0.xx);
    var var_2 = var_1;
    return vec2<bool>(!(!any(vec4<bool>(arg_2.x, arg_2.x, arg_2.x, false))), u_input.b.x <= 0u);
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    let var_0 = !any(select(select(func_2(-4496i, Struct_1(vec4<f32>(global1.x, arg_0.x, arg_0.x, global1.x), vec2<i32>(0i, u_input.a)), vec2<bool>(false, false)), vec2<bool>(false, false), true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), true)), true | (u_input.a != -20501i)));
    global0 = select(u_input.b, u_input.b, !select(!vec4<bool>(var_0, false, var_0, false), vec4<bool>(true, all(vec3<bool>(var_0, true, var_0)), var_0 | false, select(var_0, var_0, true)), select(!vec4<bool>(true, var_0, false, false), select(vec4<bool>(true, var_0, true, var_0), vec4<bool>(false, var_0, var_0, false), vec4<bool>(false, true, var_0, true)), u_input.a == 22757i)));
    global0 = u_input.b;
    global1 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, global1.x, -1247f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.x, arg_0.x, 165f)))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0.x, 1307f, -2380f))) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0.x, global1.x, 662f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(arg_0.x)), _wgslsmith_f_op_f32(-arg_0.x), global1.x) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(358f, -1094f, -269f), vec3<f32>(global1.x, global1.x, global1.x))))), select(select(!vec3<bool>(var_0, true, var_0), !vec3<bool>(true, var_0, true), func_2(u_input.d.x, Struct_1(vec4<f32>(-895f, arg_0.x, arg_0.x, arg_0.x), u_input.d.yy), vec2<bool>(var_0, var_0)).x), vec3<bool>(true, func_2(u_input.a, Struct_1(vec4<f32>(global1.x, -129f, 632f, 254f), u_input.d.zz), vec2<bool>(var_0, true)).x, var_0), select(vec3<bool>(true, true, true), vec3<bool>(var_0, true, false), vec3<bool>(var_0, true, true))))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(2274f * 252f), global1.x) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -2196f, 352f, global1.x) - vec4<f32>(arg_0.x, -221f, arg_0.x, arg_0.x)))))), u_input.d.xy);
    return Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(-arg_0.x), global1.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, -307f))) + vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(global1.x, var_1.a.x)))), _wgslsmith_f_op_f32(round(global1.x)), -1000f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1367f, global1.x), global1.x)))), ~var_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~u_input.b;
    let var_0 = _wgslsmith_f_op_f32(trunc(1730f));
    let var_1 = func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(-166f)), -1087f) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(var_0, -344f), global1.zy), global1.zx))));
    global0 = vec4<u32>(0u, 4052u, 4294967295u, global0.x);
    var var_2 = var_1;
    var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.x, _wgslsmith_f_op_f32(f32(-1f) * -355f), func_1(vec2<f32>(1000f, 979f)).a.x, var_0) * _wgslsmith_div_vec4_f32(var_2.a, var_2.a))), vec2<i32>(_wgslsmith_add_i32(_wgslsmith_div_i32(u_input.a << (48278u % 32u), 1i), _wgslsmith_mod_i32(u_input.d.x << (17822u % 32u), _wgslsmith_mod_i32(-6571i, 1i))), _wgslsmith_dot_vec4_i32(~(~vec4<i32>(19092i, var_1.b.x, var_2.b.x, -22296i)), -vec4<i32>(u_input.a, var_1.b.x, var_1.b.x, var_2.b.x))));
    let var_3 = !vec2<bool>(false || func_2(18095i, func_1(var_1.a.wz), func_2(u_input.a, var_1, vec2<bool>(false, true))).x, func_2(25032i, var_1, !func_2(var_1.b.x, var_1, vec2<bool>(true, true))).x);
    var_2 = func_1(var_2.a.yw);
    var var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.x, u_input.b, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_1.a.zy, vec2<f32>(-1602f, var_0))))), vec2<f32>(_wgslsmith_f_op_f32(206f * _wgslsmith_f_op_f32(min(-908f, 1289f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x)))), ~_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(39722u, 1u, u_input.b.x), vec3<u32>(global0.x, 689u, 27455u)), ~_wgslsmith_div_u32(51797u, global0.x)));
}

