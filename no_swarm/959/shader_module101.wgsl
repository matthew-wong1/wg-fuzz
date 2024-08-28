struct Struct_1 {
    a: bool,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, vec2<bool>(true, true));

var<private> global1: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(false, vec2<bool>(true, true)), Struct_1(true, vec2<bool>(false, false)), Struct_1(true, vec2<bool>(false, true)), Struct_1(true, vec2<bool>(true, false)), Struct_1(true, vec2<bool>(true, true)), Struct_1(true, vec2<bool>(true, true)), Struct_1(true, vec2<bool>(false, false)), Struct_1(true, vec2<bool>(false, true)), Struct_1(true, vec2<bool>(false, false)), Struct_1(true, vec2<bool>(true, true)), Struct_1(true, vec2<bool>(true, false)), Struct_1(false, vec2<bool>(false, false)), Struct_1(true, vec2<bool>(true, false)), Struct_1(false, vec2<bool>(true, false)));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec2<f32>) -> vec3<u32> {
    let var_0 = Struct_1(((arg_0.x < -685f) & global0.a) && true, !(!global0.b));
    let var_1 = var_0;
    let var_2 = global1[_wgslsmith_index_u32(~93018u, 14u)];
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), -2460f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-147f, arg_0.x)) + _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * 279f))));
    global1 = array<Struct_1, 14>();
    return vec3<u32>(u_input.a, abs(~(~u_input.b)), 1u);
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> u32 {
    global1 = array<Struct_1, 14>();
    var var_0 = select(!(!select(!vec3<bool>(global0.a, global0.b.x, arg_0.b.x), vec3<bool>(global0.a, true, true), false)), !vec3<bool>(true, !(!arg_0.b.x), any(select(vec3<bool>(false, false, true), vec3<bool>(true, arg_0.a, false), true))), select(vec3<bool>(true, true, true), !select(select(vec3<bool>(true, arg_0.a, true), vec3<bool>(false, true, true), vec3<bool>(arg_0.a, global0.b.x, true)), select(vec3<bool>(global0.b.x, false, true), vec3<bool>(false, true, true), arg_0.a), vec3<bool>(true, true, arg_0.b.x)), false));
    let var_1 = reverseBits(reverseBits(min(vec3<i32>(1i, 1i, 1i), min(vec3<i32>(1i, 1i, 1i), -vec3<i32>(-42070i, 1i, 0i)))));
    var var_2 = arg_0;
    let var_3 = false;
    return ~u_input.a;
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(select(_wgslsmith_mult_vec3_u32(select(vec3<u32>(u_input.b, u_input.b, 0u), vec3<u32>(u_input.a, u_input.b, u_input.a), vec3<bool>(global0.a, true, false)), vec3<u32>(u_input.b, u_input.a, u_input.a)), vec3<u32>(1u, _wgslsmith_mod_u32(3618u, 1u), u_input.a), vec3<bool>(global0.b.x, u_input.b >= u_input.a, true)), ~vec3<u32>(65111u, 0u, 44848u) >> (vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 865u), vec2<u32>(u_input.b, u_input.a)), 43087u, ~u_input.a) % vec3<u32>(32u))), abs(~(vec3<u32>(8867u, 0u, 1u) | vec3<u32>(5268u, u_input.a, 0u))) ^ ~func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1485f, -838f))), countOneBits(vec3<u32>(firstLeadingBit(u_input.b | 4294967295u), func_3(global1[_wgslsmith_index_u32(71974u, 14u)], -1000f) ^ _wgslsmith_mod_u32(21805u, u_input.a), ~(~4294967295u))));
    var var_1 = Struct_1(!select(all(!vec2<bool>(true, global0.b.x)), global0.a, select(true, all(vec3<bool>(true, false, global0.b.x)), true)), select(vec2<bool>(true, true), global0.b, global0.b));
    return Struct_1(all(vec2<bool>(true, all(!vec4<bool>(false, var_1.b.x, true, global0.a)))), var_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 14>();
    var var_0 = global1[_wgslsmith_index_u32(u_input.a, 14u)];
    var_0 = func_1();
    global0 = Struct_1(any(vec2<bool>(var_0.a, !var_0.b.x || !global0.a)), select(vec2<bool>(true, true), !global0.b, !vec2<bool>(true, !global0.a)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(350f)));
    var var_2 = global1[_wgslsmith_index_u32(~(~select(abs(_wgslsmith_clamp_u32(4294967295u, u_input.a, u_input.b)), 52624u, true)), 14u)];
    var var_3 = vec3<u32>(0u, ~88590u, _wgslsmith_dot_vec3_u32(~countOneBits(vec3<u32>(1u, 1u, u_input.b)), select(vec3<u32>(func_2(vec2<f32>(921f, -1000f)).x, ~u_input.a, u_input.b), ~vec3<u32>(39829u, 49663u, 0u), var_2.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(154f, -863f, -348f, -771f)) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-739f, -1321f, 292f, -906f), vec4<f32>(-436f, -1648f, -2874f, -1417f))))))), ~1i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(abs(-468f)), _wgslsmith_f_op_f32(abs(431f)), -1993f, -577f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-102f, -561f, -1787f, 2172f))))), 71312u);
}

