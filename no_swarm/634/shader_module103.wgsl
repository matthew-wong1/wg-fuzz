struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<f32>,
    d: vec2<u32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
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

var<private> global0: Struct_1 = Struct_1(81782u, true, vec2<f32>(123f, -506f), vec2<u32>(25711u, 43083u), vec2<f32>(-490f, -1158f));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: i32) -> bool {
    var var_0 = arg_0;
    global0 = Struct_1(max(max(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(4294967295u, 2076u, 1u, 1043u)), ~arg_0), arg_1.d.x), 31860u), global0.b, vec2<f32>(global0.c.x, arg_1.c.x), arg_1.d, _wgslsmith_f_op_vec2_f32(-arg_1.e));
    var_0 = arg_0;
    let var_1 = -1690f;
    let var_2 = 37835u;
    return all(vec4<bool>(!all(vec2<bool>(arg_2.x, true)), arg_1.b, any(!vec3<bool>(arg_2.x, true, arg_1.b)), any(!arg_2.yz)));
}

fn func_2(arg_0: i32, arg_1: f32) -> Struct_1 {
    global0 = Struct_1(~global0.a, all(select(vec2<bool>(global0.b, func_3(vec4<u32>(0u, 0u, global0.d.x, global0.d.x), Struct_1(0u, false, vec2<f32>(-793f, 900f), global0.d, vec2<f32>(-500f, -223f)), vec4<bool>(global0.b, global0.b, true, global0.b), u_input.a.x)), vec2<bool>(true, true), global0.b)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-410f + 1777f), _wgslsmith_f_op_f32(step(global0.c.x, 1855f)))) - vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1133f * global0.e.x))), -643f)), vec2<u32>(_wgslsmith_div_u32(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.d.x, 67533u), global0.d)), 4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(~39633u, global0.d.x), vec2<u32>(select(61610u, global0.a, false), _wgslsmith_sub_u32(4294967295u, 108214u)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(arg_1, arg_1)))), 568f) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.e.x, 1393f), vec2<f32>(-853f, -129f), vec2<bool>(global0.b, global0.b))))), vec2<f32>(464f, -1000f))));
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1494f + arg_1)), _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(select(arg_1, arg_1, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 + arg_1) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), 312f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.e.x, arg_1, -374f, arg_1))))))));
    var var_1 = ~(_wgslsmith_add_u32(abs(~global0.d.x), abs(1u)) << (global0.d.x % 32u));
    let var_2 = any(select(!select(select(vec3<bool>(true, false, true), vec3<bool>(global0.b, true, true), true), vec3<bool>(global0.b, false, true), !global0.b), !(!(!vec3<bool>(true, global0.b, false))), vec3<bool>(false, all(!vec3<bool>(global0.b, false, true)), (arg_1 >= 1000f) | true)));
    var var_3 = vec4<bool>((_wgslsmith_f_op_f32(max(global0.c.x, -2212f)) != _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(arg_1)), global0.c.x, !var_2))) && (0u == (_wgslsmith_sub_u32(global0.a, global0.a) ^ select(global0.a, global0.d.x, true))), global0.b, !(!(var_2 && global0.b)) && any(!select(vec4<bool>(false, true, global0.b, false), vec4<bool>(false, true, var_2, true), true)), !var_2);
    return Struct_1(global0.a, !all(!var_3.wxz), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-778f, -1281f) * vec2<f32>(global0.c.x, arg_1)) * _wgslsmith_f_op_vec2_f32(var_0.wz * vec2<f32>(global0.c.x, 994f))), _wgslsmith_f_op_vec2_f32(var_0.xw * _wgslsmith_f_op_vec2_f32(round(global0.e))))), global0.d, var_0.ww);
}

fn func_1() -> Struct_1 {
    var var_0 = ~global0.a;
    var var_1 = 490f;
    var var_2 = !vec4<bool>(true, !(global0.c.x <= _wgslsmith_f_op_f32(-687f - global0.c.x)), true, true);
    let var_3 = global0.c.x;
    let var_4 = _wgslsmith_mod_i32(abs(u_input.a.x) << (global0.d.x % 32u), u_input.a.x);
    return func_2(var_4 & select(-7067i, -2147483647i, _wgslsmith_f_op_f32(-global0.e.x) > -2291f), 366f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    global0 = func_2(_wgslsmith_add_i32(u_input.a.x, 40211i), _wgslsmith_f_op_f32(-global0.e.x));
    global0 = func_2(u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.c.x))));
    global0 = Struct_1(~(~func_2(-u_input.a.x, _wgslsmith_f_op_f32(ceil(633f))).a), !all(!vec3<bool>(global0.b, true, false)), vec2<f32>(global0.c.x, global0.c.x), countOneBits(vec2<u32>(max(~40981u, ~1u), global0.a)), global0.e);
    global0 = func_1();
    let var_0 = 7175i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(u_input.a.zz, _wgslsmith_sub_vec2_i32(vec2<i32>(var_0, 1i) << (~vec2<u32>(global0.a, 10833u) % vec2<u32>(32u)), ~_wgslsmith_sub_vec2_i32(u_input.a.zz, vec2<i32>(var_0, u_input.a.x)))), 0i);
}

