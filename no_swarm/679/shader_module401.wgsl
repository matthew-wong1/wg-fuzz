struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: vec2<bool>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: array<f32, 32> = array<f32, 32>(1524f, 533f, -1111f, -253f, -1000f, -1009f, 232f, -1000f, -1549f, -612f, 350f, 2693f, -1074f, 1000f, -346f, 501f, -252f, 1305f, 1000f, -1705f, 742f, -854f, 1436f, -1366f, -1479f, -1028f, 1000f, -206f, 710f, 1092f, -230f, 504f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: vec3<u32>, arg_3: Struct_2) -> bool {
    global1 = array<f32, 32>();
    let var_0 = arg_3;
    let var_1 = (all(select(!vec3<bool>(var_0.a.a.x, false, var_0.a.c.x), vec3<bool>(arg_3.a.a.x, false, false), select(vec3<bool>(true, arg_3.a.a.x, true), arg_3.a.a.yyx, true))) & false) && (-559f == _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(f32(-1f) * -202f))))));
    var var_2 = ~u_input.a;
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1211f)), arg_1, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(0u, 32u)]))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_1, -826f))), true)) + _wgslsmith_f_op_f32(-657f + 393f)));
    return false;
}

fn func_2() -> vec3<bool> {
    var var_0 = u_input.d;
    global1 = array<f32, 32>();
    var var_1 = Struct_2(Struct_1(vec4<bool>(all(vec3<bool>(true, false, false)), false, true, func_3(u_input.d, -772f, ~vec3<u32>(30509u, 1u, 14193u), Struct_2(Struct_1(vec4<bool>(false, false, true, true), 24811u, vec2<bool>(true, true), u_input.d)))), 1u, vec2<bool>(true, true), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.b.x, u_input.d), u_input.b)));
    var var_2 = var_1.a.a.x;
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(var_1.a.b, 32u)])), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(1u, 32u)]))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(323f)), -1000f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(0u, 32u)])), _wgslsmith_f_op_f32(max(1382f, -156f)))))), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_1.a.b, 1493u & var_1.a.b, 0u), 32u)]);
    return select(!vec3<bool>(true || any(vec4<bool>(var_1.a.a.x, true, false, var_1.a.c.x)), any(select(var_1.a.a.zw, vec2<bool>(var_1.a.a.x, false), var_1.a.c)), var_1.a.a.x), select(var_1.a.a.xwx, var_1.a.a.xww, select(var_1.a.a.zwx, vec3<bool>(false, var_1.a.c.x & false, !var_1.a.a.x), vec3<bool>(var_1.a.a.x & var_1.a.c.x, all(vec2<bool>(true, var_1.a.c.x)), true))), !(!select(var_1.a.a.xwx, var_1.a.a.wzx, any(vec4<bool>(true, false, var_1.a.a.x, true)))));
}

fn func_1() -> Struct_2 {
    var var_0 = !all(!select(func_2(), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    return Struct_2(Struct_1(vec4<bool>(true, true, true, true), abs(~1u), select(vec2<bool>(true, true), vec2<bool>(true, true), func_2().yy), ~(-(32769i & u_input.d))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = u_input.b;
    let var_2 = func_1();
    var_1 = _wgslsmith_div_vec3_i32(u_input.a.yzz, vec3<i32>(32281i, 2147483647i, -_wgslsmith_dot_vec3_i32(abs(u_input.a.wzy), vec3<i32>(70443i, var_1.x, u_input.b.x) | u_input.a.zyy)));
    let var_3 = var_2;
    var var_4 = func_1().a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1[_wgslsmith_index_u32(1u, 32u)], -344f, global1[_wgslsmith_index_u32(0u, 32u)])))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(0u, 32u)], 1750f, global1[_wgslsmith_index_u32(var_4.b, 32u)])))));
}

