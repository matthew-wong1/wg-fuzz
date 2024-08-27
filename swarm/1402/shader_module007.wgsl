struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: bool,
}

struct Struct_2 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(507f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(961f)), _wgslsmith_f_op_f32(f32(-1f) * -1696f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-101f - 140f), 878f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(202f)), _wgslsmith_f_op_f32(min(1663f, 1245f)), true))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-278f, -970f, -1879f) - vec3<f32>(821f, -500f, 1810f)) + vec3<f32>(1f, 1f, 1f)) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -418f), _wgslsmith_f_op_f32(2348f + 1683f), 586f))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.zx - vec2<f32>(411f, -923f)))) * var_0.zx), vec4<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1572f)))), -1304f), any(!vec2<bool>(2147483647i == u_input.b, any(vec4<bool>(false, true, true, true)))));
    let var_2 = Struct_2(238f, var_1.c || !var_1.c);
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1030f, var_1.b.x)))), var_1.b, true);
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(sign(var_2.a)), var_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-221f - var_2.a)));
    return _wgslsmith_f_op_f32(var_3.b.x + -497f);
}

fn func_2(arg_0: f32) -> f32 {
    let var_0 = (u_input.a << (~(~(~u_input.a)) % vec4<u32>(32u))) & u_input.a;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1088f, arg_0, _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(func_3())), -499f))) + vec4<f32>(arg_0, _wgslsmith_f_op_f32(max(-955f, _wgslsmith_f_op_f32(min(arg_0, arg_0)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0)) * arg_0), _wgslsmith_f_op_f32(trunc(1000f))));
    let var_2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0 * -1000f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -368f), _wgslsmith_f_op_f32(round(-1567f)))))), -475f), vec4<f32>(var_1.x, 745f, var_1.x, var_1.x), true);
    var var_3 = ~1791u;
    let var_4 = ~var_0.x << (_wgslsmith_mult_u32(~37548u, var_0.x) % 32u);
    return -292f;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1) -> bool {
    var var_0 = arg_1;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -415f), -1194f, true || var_0.b))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(var_0.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(var_0.a - arg_0.b.x)))))));
    var_0 = arg_1;
    var var_2 = vec2<bool>(true, true);
    let var_3 = ~vec3<u32>(_wgslsmith_sub_u32(abs(0u), _wgslsmith_mod_u32(~u_input.a.x, 6659u)), _wgslsmith_dot_vec4_u32(vec4<u32>(51390u, u_input.c, 97505u, 17001u), select(vec4<u32>(4294967295u, u_input.d.x, 2225u, 1u) << (vec4<u32>(1u, 4294967295u, u_input.a.x, 0u) % vec4<u32>(32u)), u_input.d, true)), 1u);
    return arg_0.c;
}

fn func_4(arg_0: bool, arg_1: vec4<bool>) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(618f, 957f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(367f, 2457f), vec2<f32>(-586f, -704f), arg_1.x)), select(vec2<bool>(arg_1.x, true), arg_1.xz, arg_1.yz))))));
    return min(vec2<i32>(max(select(u_input.b, 31153i, any(arg_1.wy)), -_wgslsmith_sub_i32(16702i, -1007i)), _wgslsmith_sub_i32(-1i, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(13419i, u_input.b, -2540i), vec3<i32>(-1i, u_input.b, u_input.b)), _wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, u_input.b, u_input.b), vec3<i32>(42400i, u_input.b, u_input.b))))), _wgslsmith_sub_vec2_i32(vec2<i32>(32864i, _wgslsmith_clamp_i32(u_input.b, 1i, 5786i) << (select(u_input.d.x, u_input.d.x, arg_0) % 32u)), firstLeadingBit(-(~vec2<i32>(u_input.b, u_input.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-869f, 389f)) + _wgslsmith_f_op_f32(f32(-1f) * -213f)))), u_input.a.yxy, ~(select(vec2<i32>(-1i, -75524i), -vec2<i32>(-2147483647i, -73357i), true) ^ func_4(func_1(Struct_1(vec2<f32>(779f, -141f), vec4<f32>(-945f, 1302f, 655f, -1000f), false), Struct_2(633f, false), Struct_1(vec2<f32>(-589f, 1609f), vec4<f32>(2111f, -959f, -1000f, -1831f), true)), vec4<bool>(true, true, false, false))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-703f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(262f, 656f, false))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2347f)))));
}

