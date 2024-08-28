struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 30> = array<f32, 30>(111f, -632f, 590f, -2039f, -1156f, 312f, 970f, 779f, -137f, -242f, 1000f, -397f, 943f, 1192f, -1003f, -410f, 824f, 1201f, 955f, -461f, 553f, -1495f, -1000f, 425f, -990f, 256f, -379f, -1097f, 1000f, -563f);

var<private> global1: Struct_1 = Struct_1(vec4<f32>(1000f, 2609f, 514f, -1007f));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32) -> i32 {
    let var_0 = ~select(max(-u_input.a.x, ~u_input.a.x), ~countOneBits(_wgslsmith_add_i32(36538i, arg_0)), ((u_input.b ^ u_input.b) >> (min(u_input.b, u_input.b) % 32u)) < 47638u);
    global1 = Struct_1(global1.a);
    global0 = array<f32, 30>();
    global1 = Struct_1(global1.a);
    let var_1 = select(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), vec4<bool>(true, true, !any(vec3<bool>(true, true, true)), all(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), all(vec3<bool>(false, true, false))))), !vec4<bool>(false, true, all(vec2<bool>(false, true)) && true, true));
    return abs(~countOneBits(_wgslsmith_div_i32(1i, u_input.a.x | 1i)));
}

fn func_2(arg_0: u32, arg_1: i32) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = arg_0;
    let var_2 = !select(all(select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), vec2<bool>(false, true), true)), true, _wgslsmith_add_i32(_wgslsmith_div_i32(arg_1, u_input.a.x), func_3(arg_1)) < arg_1);
    var var_3 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c, 30u)] - -789f)), global0[_wgslsmith_index_u32(u_input.b, 30u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-634f)))))), global1.a.zxz));
    var var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.a)));
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-508f * _wgslsmith_f_op_f32(var_4.a.x * -1131f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-965f)))), 111f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.a.x + -970f)), _wgslsmith_f_op_f32(trunc(global1.a.x))))));
}

fn func_1(arg_0: vec4<bool>, arg_1: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~u_input.b, u_input.b), 30u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(36537u, 30u)], global0[_wgslsmith_index_u32(u_input.c, 30u)]), _wgslsmith_f_op_f32(sign(655f))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 30u)]))))), false));
    let var_1 = false;
    global0 = array<f32, 30>();
    global0 = array<f32, 30>();
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global1.a, _wgslsmith_f_op_vec4_f32(-global1.a)))));
    return func_2(u_input.b, 1i);
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    global0 = array<f32, 30>();
    let var_0 = func_2(u_input.b, -1i);
    let var_1 = vec2<u32>(~u_input.c, _wgslsmith_dot_vec3_u32(~_wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, u_input.c, u_input.b), vec3<u32>(39591u, u_input.c, u_input.c), vec3<u32>(u_input.c, u_input.c, 56540u)), vec3<u32>(u_input.c, u_input.b, 29100u), reverseBits(vec3<u32>(u_input.c, 38663u, u_input.b))), vec3<u32>(u_input.b, ~9686u, u_input.b) << (_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, u_input.c, 4294967295u) ^ vec3<u32>(u_input.b, u_input.c, u_input.b), vec3<u32>(u_input.c, 7069u, u_input.b) ^ vec3<u32>(15850u, 44561u, 59486u)) % vec3<u32>(32u))));
    var var_2 = global1.a.x;
    var var_3 = arg_0;
    return func_1(!vec4<bool>(_wgslsmith_f_op_f32(min(1976f, -1000f)) == _wgslsmith_f_op_f32(var_0.a.x * var_3.a.x), u_input.c >= _wgslsmith_dot_vec4_u32(vec4<u32>(55107u, u_input.b, 4294967295u, 0u), vec4<u32>(52222u, var_1.x, u_input.b, u_input.c)), true, true || (0i != u_input.a.x)), var_0.a.x);
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: bool) -> StorageBuffer {
    global1 = arg_1;
    var var_0 = Struct_1(global1.a);
    let var_1 = false;
    global0 = array<f32, 30>();
    var var_2 = u_input.a.x;
    return StorageBuffer(-804f, firstTrailingBit(~(~vec4<u32>(4294967295u, u_input.b, u_input.b, arg_0))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - arg_2.x) + global0[_wgslsmith_index_u32(~u_input.c, 30u)]), func_1(select(vec4<bool>(arg_3, true, false, arg_3), select(vec4<bool>(var_1, var_1, var_1, false), vec4<bool>(false, false, true, var_1), false), !vec4<bool>(true, false, false, arg_3)), arg_1.a.x).a.x, -978f, 229f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec2_i32(u_input.a.zy, firstLeadingBit(select(vec2<i32>(1i, 1i), vec2<i32>(u_input.a.x, u_input.a.x), false) >> (~(~vec2<u32>(u_input.b, u_input.c)) % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = func_5(0u, func_4(func_1(vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(59836u, 30u)])), global1.a.x, _wgslsmith_f_op_f32(-545f - -289f)))), any(vec2<bool>(any(vec2<bool>(true, true)) & any(vec3<bool>(true, true, true)), true)));
}

