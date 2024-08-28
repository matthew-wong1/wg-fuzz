struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: i32) -> f32 {
    var var_0 = Struct_1(false);
    let var_1 = Struct_1(var_0.a);
    var var_2 = vec3<bool>(!(false || all(vec4<bool>(false, true, var_0.a, var_0.a))), false, true);
    let var_3 = var_1;
    var var_4 = u_input.b.x;
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-934f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-447f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1119f)) * _wgslsmith_f_op_f32(510f - 491f)))), select(!all(vec3<bool>(var_2.x, var_2.x, var_1.a)), var_2.x, var_2.x)))));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<u32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -569f))) * 410f);
    var var_1 = Struct_1(true);
    let var_2 = Struct_1(var_1.a & var_1.a);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(u_input.a.x)))) - _wgslsmith_f_op_f32(func_3(-(u_input.a.x << (80775u % 32u)) & _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, 46148i, 1i), vec3<i32>(2147483647i, u_input.a.x, u_input.a.x)), ~u_input.a.zyx))));
    let var_3 = arg_1.yz;
    return -680f;
}

fn func_4(arg_0: vec3<f32>) -> Struct_1 {
    let var_0 = Struct_1(true);
    let var_1 = _wgslsmith_mult_vec3_i32(u_input.a.wxy ^ max(max(vec3<i32>(1i, u_input.a.x, u_input.a.x), ~u_input.a.xzz), -abs(u_input.a.zwy)), _wgslsmith_add_vec3_i32(u_input.a.wzz, ~_wgslsmith_clamp_vec3_i32(vec3<i32>(19180i, 1i, u_input.a.x), u_input.a.zww, u_input.a.yzx) << (vec3<u32>(min(u_input.b.x, 69469u), u_input.b.x, ~401u) % vec3<u32>(32u))));
    return Struct_1(var_0.a);
}

fn func_1(arg_0: vec2<i32>, arg_1: f32, arg_2: Struct_1) -> u32 {
    var var_0 = func_4(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_2(u_input.b.xxz, u_input.b)), arg_1, arg_1)))));
    var var_1 = u_input.b;
    let var_2 = !(!(!arg_2.a));
    let var_3 = -28944i;
    var_1 = u_input.b;
    return ~countOneBits(1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~firstLeadingBit(vec4<u32>(~1u, func_1(u_input.a.zy, -518f, Struct_1(false)), u_input.b.x, _wgslsmith_mod_u32(1u, 14128u))));
    var_0 = u_input.b ^ _wgslsmith_mult_vec4_u32(select(u_input.b, u_input.b, vec4<bool>(true, true, false, false)), vec4<u32>(0u, ~u_input.b.x, ~var_0.x, 24648u));
    var var_1 = Struct_1(any(!vec3<bool>(false, select(false, true, true), true)));
    let var_2 = Struct_1(var_1.a);
    let var_3 = _wgslsmith_div_u32(u_input.b.x, ~4294967295u) >> (59384u % 32u);
    var_1 = func_4(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1954f, 244f, -257f) + vec3<f32>(-583f, -203f, -183f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(343f, 1040f, 237f) - vec3<f32>(245f, -1204f, 1091f)) * vec3<f32>(-1000f, 1000f, -188f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-519f, 544f, -1374f))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1000f, 279f))))));
    var_1 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(1i, 1609f);
}

