struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 1> = array<vec3<i32>, 1>(vec3<i32>(0i, -1i, -1i));

var<private> global1: array<vec2<u32>, 32> = array<vec2<u32>, 32>(vec2<u32>(7661u, 0u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 2819u), vec2<u32>(1u, 1u), vec2<u32>(79617u, 62552u), vec2<u32>(0u, 1u), vec2<u32>(0u, 55290u), vec2<u32>(0u, 18862u), vec2<u32>(39089u, 1u), vec2<u32>(31260u, 59239u), vec2<u32>(1u, 13203u), vec2<u32>(88714u, 33511u), vec2<u32>(4294967295u, 2092u), vec2<u32>(28704u, 0u), vec2<u32>(32050u, 16478u), vec2<u32>(4294967295u, 1u), vec2<u32>(66134u, 4294967295u), vec2<u32>(1963u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 21875u), vec2<u32>(22548u, 0u), vec2<u32>(9153u, 0u), vec2<u32>(1u, 122664u), vec2<u32>(19047u, 3752u), vec2<u32>(0u, 26289u), vec2<u32>(26363u, 37571u), vec2<u32>(0u, 145440u), vec2<u32>(0u, 58811u), vec2<u32>(81895u, 1u), vec2<u32>(28176u, 46816u), vec2<u32>(25194u, 0u), vec2<u32>(1u, 43658u));

var<private> global2: array<vec4<bool>, 31>;

var<private> global3: Struct_1 = Struct_1(vec4<f32>(-519f, 224f, -1000f, -559f));

var<private> global4: Struct_1 = Struct_1(vec4<f32>(-509f, 878f, -773f, 1425f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: bool) -> vec4<f32> {
    var var_0 = arg_1;
    var var_1 = u_input.b;
    let var_2 = firstTrailingBit(~1u);
    let var_3 = arg_0;
    let var_4 = any(!vec4<bool>(all(!global2[_wgslsmith_index_u32(31043u, 31u)]), arg_2, false, true));
    return vec4<f32>(-1349f, 151f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -2268f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-274f, arg_1.a.x)) * _wgslsmith_f_op_f32(-var_0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1765f) + _wgslsmith_f_op_f32(var_0.a.x + arg_1.a.x))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -104f), global3.a.x));
}

fn func_2() -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(152f, 1808f, global3.a.x, global3.a.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global4.a)))))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(func_3(abs(u_input.b), Struct_1(global3.a), any(vec2<bool>(true, true)))));
    var var_2 = var_1;
    let var_3 = 85290u;
    var var_4 = var_0;
    return ~1u >> (~(var_3 | min(abs(u_input.a), ~25714u)) % 32u);
}

fn func_1(arg_0: vec4<i32>) -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global4.a.x, global3.a.x, 879f, global4.a.x), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global4.a.x, global4.a.x, global4.a.x, global3.a.x), global4.a)))) * vec4<f32>(global4.a.x, _wgslsmith_f_op_f32(floor(global4.a.x)), _wgslsmith_f_op_f32(round(-445f)), global3.a.x)))));
    return _wgslsmith_sub_u32(select(_wgslsmith_mult_u32(u_input.a, ~52486u), func_2(), true), u_input.a) ^ firstLeadingBit(1u << (u_input.a % 32u));
}

fn func_4(arg_0: u32, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    global3 = arg_2;
    var var_0 = global4.a.zxz;
    let var_1 = Struct_1(arg_2.a);
    let var_2 = false;
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1405f, 590f, -1119f, -308f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, global4.a.x, var_1.a.x, 871f)))), vec4<f32>(-101f, global4.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a.x + arg_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + global3.a.x) * var_0.x)))));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = func_4(max(func_1(countOneBits(-vec4<i32>(0i, u_input.b, 33300i, u_input.b))), ~_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, u_input.a), vec2<u32>(0u, 1u))), _wgslsmith_f_op_vec2_f32(global4.a.wx + _wgslsmith_f_op_vec2_f32(-global4.a.wy)), Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(global3.a)), vec4<f32>(global4.a.x, 102f, -766f, 1000f), vec4<bool>(true, false, true, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global3.a) + vec4<f32>(global3.a.x, -201f, 1000f, -947f)), true))), ~u_input.a);
    let var_0 = vec3<bool>(-1641f < _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(-20081i, Struct_1(vec4<f32>(375f, -1236f, 1132f, -684f)), false)).x), global4.a.x), true, !(!(~0i <= u_input.b)));
    global4 = Struct_1(vec4<f32>(-395f, _wgslsmith_f_op_f32(global4.a.x * _wgslsmith_f_op_f32(-173f + global4.a.x)), _wgslsmith_f_op_f32(-global3.a.x), global3.a.x));
    global0 = array<vec3<i32>, 1>();
    global3 = func_4(5054u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-231f, 981f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-global4.a.xx))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global3.a.x, global4.a.x))) + global3.a.yw))), func_4(u_input.a, _wgslsmith_f_op_vec4_f32(func_3(u_input.b, Struct_1(_wgslsmith_f_op_vec4_f32(select(global4.a, global4.a, vec4<bool>(var_0.x, var_0.x, true, var_0.x)))), !any(var_0.xz))).wx, func_4(~max(u_input.a, 29202u), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(global4.a.wy - global4.a.xw), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global3.a.x, global3.a.x), vec2<f32>(global4.a.x, 1085f))))), func_4(~u_input.a, global4.a.wz, func_4(u_input.a, global3.a.xx, Struct_1(global3.a), u_input.a), 58458u), _wgslsmith_mult_u32(~u_input.a, u_input.a)), 23103u), 1u);
    global3 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(global3.a)) - global4.a)), global4.a));
    var var_1 = func_4(~_wgslsmith_sub_u32(0u, max(u_input.a, _wgslsmith_clamp_u32(4294967295u, 0u, u_input.a))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-211f, global3.a.x))), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global4.a + global3.a) + global4.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global3.a) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(884f, global4.a.x, global4.a.x, 490f))))), 1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(683f - global4.a.x), u_input.b, _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), ~vec3<u32>(u_input.a, 30957u, u_input.a), min(vec3<u32>(u_input.a, u_input.a, 1u), vec3<u32>(4754u, u_input.a, u_input.a))), vec3<u32>(u_input.a | 54478u, 1u, 0u)), vec3<u32>(u_input.a, u_input.a, abs(1u) ^ u_input.a)));
}

