struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
    d: vec2<u32>,
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

var<private> global0: array<bool, 8> = array<bool, 8>(true, false, true, false, false, true, true, true);

var<private> global1: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(false, false, false)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_1(arg_0: vec4<bool>) -> f32 {
    let var_0 = select(~(u_input.b ^ _wgslsmith_dot_vec3_i32(u_input.a.wyz, u_input.a.wxy)), -u_input.c.x, all(arg_0.xz)) | 16071i;
    var var_1 = 2147483647i;
    let var_2 = global1[_wgslsmith_index_u32(u_input.d.x, 23u)];
    let var_3 = reverseBits(_wgslsmith_sub_u32(~(u_input.d.x ^ ~25568u), 0u & _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, u_input.d.x), abs(u_input.d))));
    let var_4 = global1[_wgslsmith_index_u32(~firstTrailingBit(abs(var_3)), 23u)];
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(589f, -1592f, arg_0.x)))))));
}

fn func_2() -> f32 {
    let var_0 = abs(u_input.b);
    global1 = array<Struct_1, 23>();
    global0 = array<bool, 8>();
    global1 = array<Struct_1, 23>();
    global1 = array<Struct_1, 23>();
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -943f)))));
}

fn func_3() -> vec3<f32> {
    global0 = array<bool, 8>();
    global1 = array<Struct_1, 23>();
    var var_0 = all(vec4<bool>(all(select(!vec4<bool>(false, global0[_wgslsmith_index_u32(67099u, 8u)], true, global0[_wgslsmith_index_u32(0u, 8u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.d.x, 8u)], global0[_wgslsmith_index_u32(1u, 8u)], global0[_wgslsmith_index_u32(2158u, 8u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 8u)], false, false))), global0[_wgslsmith_index_u32(abs(_wgslsmith_sub_u32(u_input.d.x, u_input.d.x)), 8u)], any(!select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 8u)], global0[_wgslsmith_index_u32(1u, 8u)], global0[_wgslsmith_index_u32(u_input.d.x, 8u)]), vec3<bool>(global0[_wgslsmith_index_u32(2810u, 8u)], true, false), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.d.x, 8u)], false))), 1i > -(u_input.c.x & 29736i)));
    var_0 = !global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(10341u, 0u), u_input.d.x, u_input.d.x), reverseBits(vec3<u32>(0u, u_input.d.x, 110179u)) >> ((vec3<u32>(60952u, 3004u, 13734u) & vec3<u32>(u_input.d.x, u_input.d.x, 0u)) % vec3<u32>(32u))), 8u)];
    var var_1 = 641f;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-129f, -747f, -945f) - vec3<f32>(1f, 1f, 1f)) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(753f, -622f, -583f)))), vec3<f32>(_wgslsmith_f_op_f32(2264f - _wgslsmith_f_op_f32(1445f * -768f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -375f))), _wgslsmith_f_op_f32(-764f + _wgslsmith_f_op_f32(step(919f, 2171f))))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -805f) - _wgslsmith_f_op_f32(func_1(vec4<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 8u)], true, false, true)))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1618f * -1822f), _wgslsmith_f_op_f32(f32(-1f) * -577f)))), -468f, 349f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_1(select(vec4<bool>(true, false, global0[_wgslsmith_index_u32(u_input.d.x, 8u)], true), !vec4<bool>(global0[_wgslsmith_index_u32(47685u, 8u)], true, false, true), vec4<bool>(false, false, global0[_wgslsmith_index_u32(u_input.d.x, 8u)], false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(f32(-1f) * -1935f)) - vec3<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -178f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1074f)))));
    global1 = array<Struct_1, 23>();
    let var_1 = ~(~(~vec3<u32>(_wgslsmith_add_u32(u_input.d.x, u_input.d.x), max(u_input.d.x, u_input.d.x), select(u_input.d.x, u_input.d.x, false))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1243f, var_0.x, 279f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1688f, var_0.x, var_0.x), _wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, var_0.x, 595f), vec3<f32>(-796f, 225f, var_0.x))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 1444f, var_0.x) - vec3<f32>(var_0.x, var_0.x, 391f)))))));
    var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.x, var_0.x, var_2.x))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -1070f, var_0.x))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, 111f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(868f, var_2.x, 1000f)), !vec3<bool>(global0[_wgslsmith_index_u32(13680u, 8u)], global0[_wgslsmith_index_u32(4517u, 8u)], true)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 623f, var_0.x) + vec3<f32>(var_0.x, var_0.x, 282f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3())))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1860f, 382f, 1000f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-973f, var_0.x, var_0.x)))))));
    global0 = array<bool, 8>();
    global1 = array<Struct_1, 23>();
    let var_3 = global1[_wgslsmith_index_u32(firstLeadingBit(countOneBits(4294967295u)), 23u)];
    var var_4 = !any(!vec2<bool>(var_3.a.x, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(1401f * var_0.x)) + _wgslsmith_f_op_f32(f32(-1f) * -658f)));
}

