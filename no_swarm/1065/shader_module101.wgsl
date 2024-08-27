struct Struct_1 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: i32,
    b: bool,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-1i, i32(-2147483648));

var<private> global1: vec2<f32>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = ~(-1i);
    return firstLeadingBit(select(1u, _wgslsmith_dot_vec4_u32(~vec4<u32>(29637u, 466u, 26575u, 4294967295u), vec4<u32>(1u, ~61734u, _wgslsmith_dot_vec2_u32(vec2<u32>(36044u, 1u), vec2<u32>(23776u, 0u)), 1u)), false));
}

fn func_2() -> u32 {
    var var_0 = !any(vec3<bool>(-1028f >= _wgslsmith_f_op_f32(-global1.x), select(all(vec2<bool>(true, true)), false, true), !all(vec3<bool>(false, true, true))));
    return _wgslsmith_add_u32(63393u, 1u & func_3());
}

fn func_1(arg_0: u32, arg_1: vec3<i32>) -> Struct_2 {
    global0 = arg_1.yx;
    global0 = _wgslsmith_mult_vec2_i32(u_input.a, _wgslsmith_mult_vec2_i32(arg_1.yz >> (~vec2<u32>(18867u, arg_0) % vec2<u32>(32u)), -vec2<i32>(abs(-28214i), u_input.a.x & 0i)));
    var var_0 = Struct_3(-11062i, true);
    var var_1 = vec3<u32>(~7366u, arg_0, countOneBits(_wgslsmith_mult_u32(func_2(), _wgslsmith_mult_u32(arg_0 << (1u % 32u), 1u))));
    var var_2 = Struct_1(arg_1.x, vec3<bool>(false, all(!vec4<bool>(true, true, var_0.b, true)) || !var_0.b, any(!vec3<bool>(true, var_0.b, true))));
    return Struct_2(vec2<f32>(-1000f, global1.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    global0 = u_input.a;
    let var_1 = _wgslsmith_div_u32(~1u, ~(~(~0u)));
    let var_2 = true;
    let var_3 = Struct_4(func_1(_wgslsmith_mult_u32(~var_1, 53245u), vec3<i32>(-1i, abs(-165i), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, -30788i, 0i, 0i), vec4<i32>(0i, 8410i, -2147483647i, -19784i), vec4<i32>(global0.x, -5119i, var_0, var_0)), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, u_input.a.x, var_0, -8477i), vec4<i32>(var_0, 2147483647i, u_input.a.x, 2147483647i))))));
    var var_4 = Struct_3(u_input.a.x, !any(select(vec2<bool>(true, true), !vec2<bool>(var_2, true), true)));
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_3.a.a) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_3.a.a) - _wgslsmith_div_vec2_f32(var_3.a.a, var_3.a.a)), _wgslsmith_f_op_vec2_f32(func_1(var_1, vec3<i32>(u_input.a.x, -2147483647i, 61094i)).a * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.a.a.x, -1254f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_3.a.a.x * global1.x), abs(abs(6799i)), select(vec3<i32>(-2147483647i, u_input.a.x, 0i), -firstLeadingBit(vec3<i32>(var_4.a, 1i, -1i)), select(vec3<bool>(false, var_2 && true, 1i >= var_0), select(select(vec3<bool>(var_4.b, false, var_4.b), vec3<bool>(false, var_4.b, false), false), select(vec3<bool>(var_4.b, var_4.b, false), vec3<bool>(false, false, false), true), vec3<bool>(var_4.b, var_2, false)), vec3<bool>(true, true, true))));
}

