struct Struct_1 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15>;

var<private> global1: array<u32, 30>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    global0 = array<Struct_1, 15>();
    global0 = array<Struct_1, 15>();
    let var_0 = arg_0;
    global0 = array<Struct_1, 15>();
    global0 = array<Struct_1, 15>();
    return global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(~1u >> (u_input.b.x % 32u), 30u)], countOneBits(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(global1[_wgslsmith_index_u32(u_input.b.x, 30u)], u_input.b.x, 4294967295u, u_input.c.x)), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 30u)], 30u)], 30u)], 30u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 30u)], 30u)], u_input.b.x, global1[_wgslsmith_index_u32(1u, 30u)]))), global1[_wgslsmith_index_u32(~4294967295u, 30u)]), 30u)], _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(u_input.b.wx, u_input.b.xw), 1u), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(max(_wgslsmith_sub_u32(4294967295u, u_input.b.x), global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(~11576u, 30u)], 30u)]), 0u), 30u)]), 15u)];
}

fn func_1(arg_0: vec3<bool>) -> Struct_1 {
    var var_0 = func_2(!(!select(select(vec2<bool>(arg_0.x, arg_0.x), vec2<bool>(false, arg_0.x), true), arg_0.zz, false)));
    var_0 = func_2(!var_0.b.xz);
    let var_1 = true;
    var var_2 = global0[_wgslsmith_index_u32(1u, 15u)];
    global1 = array<u32, 30>();
    return Struct_1(var_1, var_2.b);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: Struct_2) -> vec4<f32> {
    var var_0 = true;
    var_0 = 1u == min(abs(abs(_wgslsmith_add_u32(0u, 37040u))), ~arg_2.x >> (firstTrailingBit(~14499u) % 32u));
    let var_1 = vec4<u32>(_wgslsmith_add_u32(_wgslsmith_clamp_u32(1u, max(~90131u, global1[_wgslsmith_index_u32(abs(4294967295u), 30u)]), countOneBits(_wgslsmith_dot_vec2_u32(arg_2.xz, arg_2.zx))), reverseBits(4294967295u)), ~(~(~(global1[_wgslsmith_index_u32(arg_1.b.x, 30u)] ^ 4294967295u))), global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_add_u32(0u, global1[_wgslsmith_index_u32(~arg_2.x, 30u)] << (reverseBits(global1[_wgslsmith_index_u32(arg_2.x, 30u)]) % 32u))), 30u)], 1u);
    var var_2 = select(any(func_2(select(!vec2<bool>(arg_0.b.x, true), !arg_0.b.yx, arg_0.b.xy)).b.zy), ~var_1.x >= 47291u, any(arg_0.b.yx));
    var var_3 = true;
    return vec4<f32>(1f, 1f, 1f, 1f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 15>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(683f, 1332f, true)) * _wgslsmith_f_op_f32(718f - _wgslsmith_f_op_f32(sign(1763f)))))));
    global1 = array<u32, 30>();
    global0 = array<Struct_1, 15>();
    global0 = array<Struct_1, 15>();
    let var_1 = var_0;
    let var_2 = 1324f;
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(func_1(vec3<bool>(true, false, false)), Struct_2(-u_input.d, u_input.c), vec3<u32>(firstTrailingBit(u_input.c.x), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 2274u), vec2<u32>(1u, 15500u)), 30u)], countOneBits(global1[_wgslsmith_index_u32(71447u, 30u)])) << (~(u_input.b.wxz ^ vec3<u32>(u_input.c.x, u_input.b.x, global1[_wgslsmith_index_u32(u_input.c.x, 30u)])) % vec3<u32>(32u)), Struct_2(~(u_input.e | 0i), ~u_input.b.zx))), _wgslsmith_f_op_vec4_f32(vec4<f32>(514f, 1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-491f, -1058f)))), _wgslsmith_f_op_vec4_f32(func_3(func_1(vec3<bool>(false, true, true)), Struct_2(-145i, u_input.b.yy), u_input.b.xyw, Struct_2(u_input.d, vec2<u32>(u_input.b.x, 1u)))).x) - vec4<f32>(_wgslsmith_f_op_f32(trunc(-1881f)), -156f, _wgslsmith_f_op_f32(f32(-1f) * -263f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2))))));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, var_3.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(var_2))))), var_1)), _wgslsmith_f_op_vec2_f32(sign(var_3.wx)));
}

