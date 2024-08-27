struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<i32>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> f32 {
    var var_0 = select(select(vec2<bool>(false, false), vec2<bool>(true, true), _wgslsmith_f_op_f32(max(517f, _wgslsmith_f_op_f32(arg_0 + arg_0))) <= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0)))), vec2<bool>(false, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 1u, 16539u, 0u), vec4<u32>(0u, 29889u, u_input.a, 37004u))) > (min(3256u, u_input.c) ^ (1u & u_input.e.x))), arg_0 <= arg_0);
    var var_1 = -1i;
    return _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(500f + -1000f));
}

fn func_2(arg_0: vec3<f32>) -> Struct_3 {
    let var_0 = Struct_4(Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, 1447f, 506f, arg_0.x), vec4<f32>(-561f, -1000f, 481f, arg_0.x)) + vec4<f32>(-888f, -535f, arg_0.x, -1535f)))), _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(u_input.d.ww, u_input.d.wx), vec2<i32>(i32(-1i) * -u_input.b, _wgslsmith_dot_vec3_i32(max(u_input.d.zwy, u_input.d.wzx), _wgslsmith_div_vec3_i32(u_input.d.zwx, vec3<i32>(u_input.b, -2147483647i, u_input.d.x))))), true);
    var var_1 = vec2<bool>(_wgslsmith_f_op_f32(sign(-1000f)) <= _wgslsmith_f_op_f32(-var_0.a.a.x), true);
    return Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-515f, Struct_1(var_0.b)))), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1756f, 1000f)))) + var_0.a.a));
}

fn func_1(arg_0: u32, arg_1: vec4<bool>) -> vec2<bool> {
    let var_0 = _wgslsmith_dot_vec2_i32(~u_input.d.xy, vec2<i32>(_wgslsmith_div_i32(-13184i, _wgslsmith_dot_vec3_i32(firstLeadingBit(u_input.d.zyx), -u_input.d.zzz)), -35086i));
    var var_1 = Struct_4(func_2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1300f, 284f, 1000f), vec3<f32>(-610f, -582f, 333f))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(2125f, 2205f, -1261f))))))), u_input.d.zy, (u_input.e.x ^ ~u_input.a) > ~_wgslsmith_mult_u32(0u, u_input.e.x));
    let var_2 = Struct_1(var_1.b);
    var var_3 = var_2;
    var var_4 = var_1.a.a.zzx;
    return !(!arg_1.xz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    let var_1 = all(select(vec2<bool>(true, true), vec2<bool>(true, true), func_1(u_input.a, vec4<bool>(true, true, true, true))));
    let var_2 = vec2<i32>(0i, u_input.b >> (~((4022u << (u_input.e.x % 32u)) << (u_input.e.x % 32u)) % 32u));
    var_0 = u_input.c;
    var_0 = _wgslsmith_mult_u32((u_input.a ^ u_input.a) ^ u_input.a, _wgslsmith_mult_u32(51454u, u_input.a << (~(~1u) % 32u)));
    var_0 = u_input.c;
    let var_3 = vec3<bool>(!(!var_1), !all(!select(vec2<bool>(false, var_1), vec2<bool>(var_1, var_1), var_1)), false);
    let x = u_input.a;
    s_output = StorageBuffer(~(abs(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 1u), u_input.e.yx)) & _wgslsmith_sub_vec2_u32(u_input.e.yy, select(vec2<u32>(9161u, 118639u), u_input.e.yy, var_3.yz))));
}

