struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5>;

var<private> global1: Struct_1 = Struct_1(2147483647i);

var<private> global2: bool = false;

var<private> global3: vec3<bool>;

var<private> global4: array<f32, 16>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1) -> vec4<f32> {
    global4 = array<f32, 16>();
    var var_0 = vec3<u32>(_wgslsmith_add_u32(countOneBits(_wgslsmith_sub_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 1u)))), _wgslsmith_div_u32(~1u, 1u) << ((_wgslsmith_clamp_u32(0u, 1u, 73848u) ^ ~0u) % 32u)), firstTrailingBit(~_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 18215u, 1u), vec3<u32>(18152u, 51282u, 56507u)), reverseBits(49537u))), ~_wgslsmith_sub_u32(select(47645u, ~0u, false), ~(~25778u)));
    let var_1 = ~(~max(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_0.x, var_0.x, var_0.x), vec4<u32>(var_0.x, 1u, var_0.x, var_0.x)), var_0.x));
    let var_2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(-560f)), -1186f) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1000f, -534f))) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global4[_wgslsmith_index_u32(4294967295u, 16u)], global4[_wgslsmith_index_u32(var_0.x, 16u)]))))))));
    let var_3 = reverseBits(u_input.b);
    return _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(var_1, 16u)] + 1920f), -201f, _wgslsmith_f_op_f32(var_2.x - 946f), _wgslsmith_f_op_f32(max(global4[_wgslsmith_index_u32(23299u, 16u)], -976f))), vec4<f32>(var_2.x, _wgslsmith_f_op_f32(step(365f, 484f)), global4[_wgslsmith_index_u32(~var_0.x, 16u)], var_2.x)))));
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_div_i32(2147483647i, ~_wgslsmith_clamp_i32(~u_input.a << (countOneBits(1u) % 32u), -2147483647i, _wgslsmith_dot_vec2_i32(~u_input.b.wz, select(vec2<i32>(12607i, u_input.a), vec2<i32>(u_input.b.x, global1.a), true))));
    global4 = array<f32, 16>();
    var var_1 = _wgslsmith_mult_vec3_u32(firstTrailingBit(~(~vec3<u32>(25445u, 54622u, 20321u))), vec3<u32>(~(~1u), reverseBits(73235u), min(~52480u, 4294967295u))) & select(vec3<u32>(4294967295u, 1u, ~(~1u)), ~vec3<u32>(1u, 1u, 1u), select(!(!vec3<bool>(global3.x, true, true)), vec3<bool>(all(global3.yx), global3.x, true), any(!vec2<bool>(global3.x, global3.x))));
    var var_2 = global0[_wgslsmith_index_u32(var_1.x, 5u)];
    var_2 = Struct_1(firstLeadingBit(-abs(15204i)));
    return var_1.x;
}

fn func_2(arg_0: bool, arg_1: vec4<f32>, arg_2: Struct_1) -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(~min(func_3(), _wgslsmith_add_u32(_wgslsmith_clamp_u32(~1u, ~0u, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(44661u, 37663u, 1u, 0u), ~vec4<u32>(0u, 17642u, 0u, 10679u)))), 5u)];
    global2 = select(false, !global3.x, any(select(!(!vec4<bool>(true, global3.x, arg_0, true)), select(!vec4<bool>(false, arg_0, arg_0, global3.x), !vec4<bool>(arg_0, global3.x, false, global3.x), global3.x | true), !(!vec4<bool>(true, true, global3.x, true)))));
    global3 = vec3<bool>(false, any(vec3<bool>(!(arg_0 || true), !global3.x, all(select(vec4<bool>(arg_0, arg_0, false, arg_0), vec4<bool>(false, true, false, arg_0), vec4<bool>(false, global3.x, true, global3.x))))), any(select(select(select(vec3<bool>(arg_0, global3.x, false), vec3<bool>(true, false, global3.x), vec3<bool>(arg_0, arg_0, true)), select(vec3<bool>(arg_0, false, global3.x), vec3<bool>(false, true, true), true), vec3<bool>(false, true, false)), !(!vec3<bool>(true, global3.x, global3.x)), all(!vec4<bool>(false, arg_0, arg_0, true)))));
    var var_1 = arg_1;
    let var_2 = arg_2;
    return firstTrailingBit(30510u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global0[_wgslsmith_index_u32(4294967295u, 5u)];
    global4 = array<f32, 16>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_1(u_input.b.yxw, Struct_1(u_input.a))), vec4<f32>(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(79846u, 4294967295u, 83468u), vec3<u32>(16934u, 36695u, 45016u)), 16u)], _wgslsmith_f_op_f32(sign(global4[_wgslsmith_index_u32(0u, 16u)])), global4[_wgslsmith_index_u32(~0u, 16u)], _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(126116u, 16u)] * 1273f)), !global3.x)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-535f, 938f, -874f, 703f))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-987f, global4[_wgslsmith_index_u32(0u, 16u)], 2038f, global4[_wgslsmith_index_u32(87657u, 16u)])))))));
    global3 = select(!(!vec3<bool>(true, global3.x, any(vec3<bool>(global3.x, global3.x, global3.x)))), select(!(!(!vec3<bool>(global3.x, true, false))), vec3<bool>(true, !global3.x, !(global1.a <= -37312i)), select(vec3<bool>(all(vec4<bool>(false, false, global3.x, false)), all(vec2<bool>(false, false)), true), select(!vec3<bool>(global3.x, true, true), vec3<bool>(true, global3.x, global3.x), true), vec3<bool>(select(true, global3.x, false), global3.x, global3.x || true))), global3.x);
    global4 = array<f32, 16>();
    global2 = global3.x;
    let x = u_input.a;
    s_output = StorageBuffer(1241i, ~(~vec3<u32>(func_2(false, vec4<f32>(-237f, -352f, var_0.x, global4[_wgslsmith_index_u32(4294967295u, 16u)]), Struct_1(12662i)), 1u, 46519u)));
}

