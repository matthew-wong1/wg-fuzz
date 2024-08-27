struct Struct_1 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 32>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> bool {
    var var_0 = -222f;
    let var_1 = arg_1;
    let var_2 = ~u_input.a;
    let var_3 = _wgslsmith_div_vec2_i32(~_wgslsmith_clamp_vec2_i32((vec2<i32>(global0[_wgslsmith_index_u32(3279u, 32u)], global0[_wgslsmith_index_u32(var_2.x, 32u)]) & vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 32u)], global0[_wgslsmith_index_u32(4294967295u, 32u)])) >> (vec2<u32>(var_2.x, 4294967295u) % vec2<u32>(32u)), -_wgslsmith_add_vec2_i32(vec2<i32>(34198i, global0[_wgslsmith_index_u32(var_2.x, 32u)]), vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 32u)], global0[_wgslsmith_index_u32(4294967295u, 32u)])), vec2<i32>(abs(global0[_wgslsmith_index_u32(var_2.x, 32u)]), -2147483647i)), countOneBits(vec2<i32>(~_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(u_input.a.x, 32u)], global0[_wgslsmith_index_u32(2132u, 32u)], global0[_wgslsmith_index_u32(var_2.x, 32u)]), 2147483647i)));
    var var_4 = var_1;
    return false;
}

fn func_3(arg_0: f32) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, arg_0) + _wgslsmith_f_op_f32(f32(-1f) * -813f)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_div_f32(arg_0, arg_0)))) - arg_0));
    var var_1 = vec2<bool>(true, true);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(784f * _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(arg_0)), 1045f)))), var_0);
    let var_3 = ~global0[_wgslsmith_index_u32(countOneBits(u_input.a.x), 32u)];
    var var_4 = reverseBits(~4294967295u ^ (~1u << (~u_input.a.x % 32u)));
    return vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -539f), var_0, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(869f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + arg_0)))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: f32, arg_2: u32, arg_3: vec4<f32>) -> f32 {
    global0 = array<i32, 32>();
    global0 = array<i32, 32>();
    var var_0 = Struct_1(arg_0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x)), arg_0.x)));
    var_0 = Struct_1(_wgslsmith_f_op_f32(step(2310f, arg_1)), -2232f);
    let var_1 = false;
    return 897f;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<i32>, arg_2: vec4<i32>, arg_3: i32) -> u32 {
    let var_0 = ~abs(vec2<u32>(1u, firstTrailingBit(_wgslsmith_div_u32(u_input.a.x, u_input.a.x))));
    global0 = array<i32, 32>();
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(480f, 516f, -348f))))))) - vec3<f32>(567f, -1090f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -510f) * 705f)));
    let var_2 = vec3<bool>(arg_0.x, !any(vec2<bool>(func_2(true, Struct_1(547f, -262f)), arg_0.x)), arg_0.x);
    let var_3 = Struct_1(_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_1.x, -181f, true)), var_1.x) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-135f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(func_3(var_1.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_1.x, 1000f, false)), _wgslsmith_f_op_f32(min(var_1.x, var_1.x))), var_0.x, vec4<f32>(-883f, var_1.x, var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -932f)))) * -2104f));
    return 4294967295u;
}

fn func_5(arg_0: vec4<u32>, arg_1: vec4<i32>) -> vec2<u32> {
    global0 = array<i32, 32>();
    global0 = array<i32, 32>();
    let var_0 = 1f;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-var_0), var_0);
    global0 = array<i32, 32>();
    return ~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x & ~17730u, ~select(53071u, u_input.a.x, false)), ~(~u_input.a.yx));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 32>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-260f, 995f)), _wgslsmith_f_op_f32(f32(-1f) * -1454f)))));
    let var_1 = ~func_5(vec4<u32>(~u_input.a.x, abs(4294967295u), func_1(vec4<bool>(false, false, false, true), vec4<i32>(1i, 80539i, global0[_wgslsmith_index_u32(u_input.a.x, 32u)], 725i), vec4<i32>(-2147483647i, global0[_wgslsmith_index_u32(u_input.a.x, 32u)], 1646i, -41469i), 18376i), ~0u) >> (~_wgslsmith_clamp_vec4_u32(vec4<u32>(13645u, u_input.a.x, 1u, 4294967295u), vec4<u32>(0u, 95181u, 4294967295u, 30520u), vec4<u32>(85455u, 15313u, u_input.a.x, u_input.a.x)) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(1u, 32u)], global0[_wgslsmith_index_u32(103183u, 32u)], 5334i, 4185i), vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 32u)], 0i, 0i, global0[_wgslsmith_index_u32(46940u, 32u)])), 15500i, global0[_wgslsmith_index_u32(u_input.a.x, 32u)] << (u_input.a.x % 32u), global0[_wgslsmith_index_u32(u_input.a.x, 32u)] | global0[_wgslsmith_index_u32(u_input.a.x, 32u)]) | select(vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 32u)], global0[_wgslsmith_index_u32(0u, 32u)], -22504i, 2147483647i), reverseBits(vec4<i32>(-2147483647i, -45471i, global0[_wgslsmith_index_u32(29409u, 32u)], -25727i)), vec4<bool>(true, true, true, true)));
    var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -179f) + 359f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(709f * -380f), _wgslsmith_f_op_f32(func_4(vec3<f32>(-532f, -1000f, -458f), 1459f, 1u, vec4<f32>(-789f, -440f, -962f, -338f)))))))), select(true, true, !(!select(true, true, true)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1584f, 875f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), any(vec2<bool>(true, true)))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_div_f32(-157f, 433f), _wgslsmith_f_op_f32(f32(-1f) * -1348f)), vec2<f32>(-217f, 770f), vec2<bool>(true, true))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1f, 1f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1794f, -411f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(947f, -933f) + vec2<f32>(1007f, -766f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.a), abs(_wgslsmith_div_vec2_i32(reverseBits(firstLeadingBit(vec2<i32>(global0[_wgslsmith_index_u32(var_1.x, 32u)], global0[_wgslsmith_index_u32(var_1.x, 32u)]))), vec2<i32>(0i ^ global0[_wgslsmith_index_u32(0u, 32u)], -global0[_wgslsmith_index_u32(4294967295u, 32u)]))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_f32(f32(-1f) * -504f))).zx));
}

