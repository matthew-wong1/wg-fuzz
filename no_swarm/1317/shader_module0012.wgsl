struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec3<i32>(2147483647i, i32(-2147483648), 2070i)), Struct_1(vec3<i32>(69901i, -26240i, 2147483647i)), Struct_1(vec3<i32>(0i, -376i, -48781i)), Struct_1(vec3<i32>(-4727i, -32014i, 2147483647i)), Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), -1i)), Struct_1(vec3<i32>(15299i, -35518i, 2147483647i)), Struct_1(vec3<i32>(-17597i, 29974i, 1i)), Struct_1(vec3<i32>(1i, 7190i, -19282i)), Struct_1(vec3<i32>(22280i, -1i, -1i)), Struct_1(vec3<i32>(0i, 9665i, 33854i)), Struct_1(vec3<i32>(6096i, 0i, 0i)), Struct_1(vec3<i32>(1i, -835i, i32(-2147483648))), Struct_1(vec3<i32>(-1i, -1i, -31509i)), Struct_1(vec3<i32>(0i, 14171i, i32(-2147483648))), Struct_1(vec3<i32>(-7368i, -33240i, -35439i)), Struct_1(vec3<i32>(2147483647i, -1i, 12117i)), Struct_1(vec3<i32>(0i, 9401i, 41099i)), Struct_1(vec3<i32>(1i, -1i, 253i)), Struct_1(vec3<i32>(-22954i, 5206i, 49727i)), Struct_1(vec3<i32>(-15850i, -32912i, -21103i)), Struct_1(vec3<i32>(10248i, 69002i, -95176i)), Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, -160i)));

var<private> global1: vec2<i32> = vec2<i32>(32150i, -26560i);

var<private> global2: Struct_2;

var<private> global3: array<bool, 28> = array<bool, 28>(false, true, false, true, false, false, true, true, false, false, false, true, false, false, false, true, false, false, false, false, false, true, true, true, false, false, false, true);

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: bool, arg_1: vec4<u32>, arg_2: Struct_2) -> vec2<bool> {
    global2 = arg_2;
    var var_0 = arg_2;
    global3 = array<bool, 28>();
    global2 = Struct_2(var_0.a, arg_2.a);
    var var_1 = true;
    return !vec2<bool>(all(vec4<bool>(arg_0, select(true, global3[_wgslsmith_index_u32(arg_1.x, 28u)], arg_0), true, true)), true);
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: u32) -> bool {
    let var_0 = ~(-reverseBits(~(vec4<i32>(-16717i, 0i, global2.a.a.x, 0i) >> (vec4<u32>(29747u, arg_3, arg_3, 4294967295u) % vec4<u32>(32u)))));
    let var_1 = any(vec2<bool>(true, true));
    var var_2 = arg_1;
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1374f)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(605f - arg_2.x), -700f))))), arg_2.x, _wgslsmith_f_op_f32(exp2(arg_0)));
    var var_4 = -577f;
    return func_2(true, ~select(vec4<u32>(4294967295u, ~arg_3, 4294967295u, countOneBits(arg_3)), max(reverseBits(vec4<u32>(30822u, arg_3, arg_3, 53623u)), max(vec4<u32>(arg_3, arg_3, 4294967295u, arg_3), vec4<u32>(arg_3, 13519u, 1u, 0u))), global3[_wgslsmith_index_u32(~arg_3, 28u)]), arg_1).x;
}

fn func_1(arg_0: vec2<u32>, arg_1: bool) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1046f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1312f + 1647f), -406f)), _wgslsmith_f_op_f32(2037f - -214f)) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -911f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1053f, 287f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(641f, 440f)))), select(!func_2(true, vec4<u32>(arg_0.x, 92041u, arg_0.x, arg_0.x), Struct_2(Struct_1(u_input.a), global0[_wgslsmith_index_u32(1u, 22u)])), vec2<bool>(false, func_3(1211f, Struct_2(Struct_1(vec3<i32>(-2147483647i, global2.b.a.x, -20849i)), Struct_1(global2.b.a)), vec3<f32>(-816f, 1000f, 1000f), arg_0.x)), global3[_wgslsmith_index_u32(max(~arg_0.x, ~arg_0.x), 28u)]))));
    var var_1 = vec3<i32>(13627i, max(-min(u_input.a.x, 2147483647i) << (4294967295u % 32u), countOneBits(-global1.x ^ _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 0i, 22560i, global2.b.a.x), vec4<i32>(global2.a.a.x, global2.b.a.x, -1i, global2.a.a.x)))), global2.b.a.x);
    let var_2 = ~vec4<u32>(abs(_wgslsmith_add_u32(1u, arg_0.x)), arg_0.x, 28215u & _wgslsmith_add_u32(24633u, _wgslsmith_add_u32(arg_0.x, 11539u)), 98925u);
    var var_3 = ~countOneBits(var_1.xz);
    let var_4 = select(firstLeadingBit(_wgslsmith_div_vec2_u32(abs(vec2<u32>(4294967295u, 4294967295u)), ~(~vec2<u32>(var_2.x, 1u)))), max(vec2<u32>(var_2.x << (~var_2.x % 32u), firstTrailingBit(56756u)), arg_0), !vec2<bool>(global3[_wgslsmith_index_u32(1u, 28u)], !(arg_1 | true)));
    return !(!func_2(arg_1, vec4<u32>(_wgslsmith_div_u32(arg_0.x, var_2.x), 20136u, 1u, max(14261u, 4294967295u)), Struct_2(Struct_1(u_input.a), Struct_1(u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(!func_1(vec2<u32>(16794u, 41169u), true)));
    var var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(min(53423u, 1u), _wgslsmith_mod_u32(1u, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 49533u), vec2<u32>(104646u, 35701u)), vec2<u32>(1u, 1u))), _wgslsmith_div_u32(~_wgslsmith_add_u32(0u, 4294967295u), ~1u), 1u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-905f * -180f), _wgslsmith_f_op_f32(404f * 1642f)))) * _wgslsmith_div_f32(_wgslsmith_div_f32(1000f, _wgslsmith_div_f32(577f, 1508f)), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(step(-571f, -280f))))));
}

