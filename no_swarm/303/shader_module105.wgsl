struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 6> = array<i32, 6>(i32(-2147483648), 0i, -9109i, -74975i, 2147483647i, 2147483647i);

var<private> global1: array<u32, 13> = array<u32, 13>(1u, 0u, 0u, 26681u, 15517u, 4294967295u, 63088u, 1u, 26692u, 19128u, 4294967295u, 4294967295u, 1u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> i32 {
    return 0i;
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> vec4<i32> {
    var var_0 = vec2<f32>(-1715f, _wgslsmith_f_op_f32(min(1978f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(496f + -274f) - 1812f)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1015f, 367f))), vec2<f32>(-1267f, _wgslsmith_div_f32(var_0.x, -440f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 1413f) - vec2<f32>(var_0.x, 1029f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(412f, 1000f))))), arg_0.a))));
    let var_2 = arg_0;
    var var_3 = arg_0;
    var var_4 = firstLeadingBit(vec4<u32>(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(29685u, 13u)], global1[_wgslsmith_index_u32(1u, 13u)]), 13u)], _wgslsmith_add_u32(85050u, ~global1[_wgslsmith_index_u32(49277u, 13u)]), global1[_wgslsmith_index_u32(~(firstLeadingBit(12532u) & ~global1[_wgslsmith_index_u32(1u, 13u)]), 13u)], ~global1[_wgslsmith_index_u32(48350u, 13u)]));
    return reverseBits(vec4<i32>(~func_3(arg_0, !arg_1), _wgslsmith_sub_i32(-(~global0[_wgslsmith_index_u32(var_4.x, 6u)]), abs(1i)), 2147483647i, ~(~_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(0i, -2147483647i)))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    let var_0 = func_2(arg_0, arg_1.a == (_wgslsmith_div_f32(449f, _wgslsmith_f_op_f32(ceil(-206f))) < _wgslsmith_f_op_f32(f32(-1f) * -361f)));
    global0 = array<i32, 6>();
    var var_1 = arg_0;
    global1 = array<u32, 13>();
    var var_2 = countOneBits(1722u);
    return ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~firstTrailingBit(vec3<u32>(1u, 28059u, global1[_wgslsmith_index_u32(80676u, 13u)])), vec3<u32>(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 13u)], 13u)], 13u)], 13u)], 13u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(select(20576u, global1[_wgslsmith_index_u32(1u, 13u)], arg_0.a), 13u)], 13u)], 0u)), 13u)], 13u)], 13u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(true);
    let var_1 = global0[_wgslsmith_index_u32(abs(global1[_wgslsmith_index_u32(func_1(var_0, Struct_1(!(false | var_0.a))), 13u)]), 6u)];
    let var_2 = select(select(!vec3<bool>(!var_0.a, !var_0.a, true), !(!vec3<bool>(true, var_0.a, true)), !vec3<bool>(false, any(vec3<bool>(false, true, true)), false)), vec3<bool>(any(!(!vec2<bool>(var_0.a, var_0.a))), false, !var_0.a & select(83893u > global1[_wgslsmith_index_u32(45259u, 13u)], true, var_0.a)), var_0.a);
    global0 = array<i32, 6>();
    let var_3 = _wgslsmith_sub_vec3_i32(~(-(~vec3<i32>(17190i, -8126i, u_input.a.x))), ~vec3<i32>(abs(-u_input.a.x), _wgslsmith_add_i32(_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(29587u, 6u)], 15229i), min(u_input.a.x, global0[_wgslsmith_index_u32(41324u, 6u)])), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(0u, 13u)], 13u)], 13u)], 13u)], 13u)], 6u)]));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(669f, 1470f))) - vec2<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -436f)))), ~_wgslsmith_div_u32(4547u >> (global1[_wgslsmith_index_u32(countOneBits(4294967295u), 13u)] % 32u), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(1u, 75140u)), vec2<u32>(19190u, 4294967295u))));
}

