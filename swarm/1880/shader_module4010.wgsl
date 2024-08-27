struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 28> = array<bool, 28>(false, false, false, false, true, false, false, false, false, true, true, false, true, true, true, false, false, true, true, true, true, false, false, false, false, true, false, false);

var<private> global1: Struct_1;

var<private> global2: array<i32, 6> = array<i32, 6>(1i, 1i, 40223i, 29465i, -1i, i32(-2147483648));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: f32, arg_1: vec4<i32>, arg_2: i32) -> vec4<bool> {
    let var_0 = vec4<i32>(arg_2, arg_1.x, abs(u_input.b.x), 1i);
    var var_1 = Struct_1(arg_0);
    var var_2 = 0i;
    global0 = array<bool, 28>();
    var var_3 = 2147483647i;
    return !vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(1u, u_input.c), ~4294967295u), 28u)], false, !(!(global0[_wgslsmith_index_u32(0u, 28u)] & false)), false);
}

fn func_3(arg_0: vec4<bool>, arg_1: u32, arg_2: vec3<i32>, arg_3: vec2<bool>) -> bool {
    global2 = array<i32, 6>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-1601f * _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1285f, _wgslsmith_f_op_f32(global1.a - global1.a))))));
    var var_1 = reverseBits(-countOneBits((global2[_wgslsmith_index_u32(63003u, 6u)] ^ 41916i) & u_input.b.x));
    var var_2 = u_input.a;
    global0 = array<bool, 28>();
    return true;
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: i32, arg_3: bool) -> f32 {
    let var_0 = 409f;
    let var_1 = arg_1;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f)));
    global2 = array<i32, 6>();
    var var_3 = select(~(~max(48394u, 65357u)) >= _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(reverseBits(vec3<u32>(45341u, u_input.c, u_input.c)), vec3<u32>(u_input.a, u_input.c, 4294967295u) | vec3<u32>(0u, 47851u, u_input.a)), max(vec3<u32>(73535u, u_input.a, 1u) | vec3<u32>(u_input.c, 22821u, u_input.c), vec3<u32>(u_input.c, 62125u, u_input.a) & vec3<u32>(106978u, u_input.a, 5061u))), all(select(!(!vec4<bool>(true, arg_3, false, true)), func_2(arg_1.a, ~vec4<i32>(arg_2, u_input.b.x, u_input.b.x, u_input.b.x), _wgslsmith_div_i32(arg_2, 41970i)), vec4<bool>(true, true, true == arg_0.x, func_3(vec4<bool>(arg_3, arg_3, global0[_wgslsmith_index_u32(u_input.c, 28u)], global0[_wgslsmith_index_u32(4294967295u, 28u)]), u_input.a, u_input.b, vec2<bool>(true, true))))), true);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * arg_1.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(select(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 28u)], false, false), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 28u)], false, true), global0[_wgslsmith_index_u32(u_input.a, 28u)]), Struct_1(global1.a), u_input.b.x, u_input.c <= 67578u)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) + _wgslsmith_f_op_f32(f32(-1f) * -944f))), global1.a)));
    var_0 = Struct_1(_wgslsmith_f_op_f32(sign(1288f)));
    global2 = array<i32, 6>();
    global0 = array<bool, 28>();
    let var_1 = Struct_1(_wgslsmith_f_op_f32(floor(-1551f)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec4_u32(~vec4<u32>(72727u, u_input.a, u_input.a, u_input.a), select(vec4<u32>(u_input.a, u_input.c, u_input.c, u_input.a), ~vec4<u32>(67058u, 25584u, u_input.a, u_input.c), true)), _wgslsmith_div_vec2_i32(vec2<i32>(-firstTrailingBit(global2[_wgslsmith_index_u32(u_input.a, 6u)]), _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(1i, global2[_wgslsmith_index_u32(u_input.c, 6u)])), vec2<i32>(u_input.b.x, -1i))), u_input.b.zy), firstLeadingBit(abs(vec4<u32>(u_input.c, 1u, 0u, countOneBits(1u)))));
}

