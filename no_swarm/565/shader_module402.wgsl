struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(147f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-2657f + -1521f))), _wgslsmith_f_op_f32(f32(-1f) * -2051f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1299f), _wgslsmith_f_op_f32(floor(665f)), _wgslsmith_f_op_f32(f32(-1f) * -138f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-295f, 666f, 1061f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-380f, 1733f, 991f))))));
    global0 = array<Struct_1, 17>();
    global0 = array<Struct_1, 17>();
    global0 = array<Struct_1, 17>();
    global0 = array<Struct_1, 17>();
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_0.xz, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1214f, var_0.x) + var_0.yy), _wgslsmith_f_op_vec2_f32(-vec2<f32>(722f, 441f)), vec2<bool>(true, false))), any(vec4<bool>(true, true, true, true))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.zz) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, 435f), vec2<f32>(-866f, var_0.x), false)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-730f, var_0.x) * var_0.xz)))));
}

fn func_2() -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-882f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-255f - -1169f) - 189f)))));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3())) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0.x + -236f), _wgslsmith_f_op_f32(-248f - -1095f)) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, var_0.x)))))));
    let var_1 = global0[_wgslsmith_index_u32(u_input.b, 17u)];
    var var_2 = global0[_wgslsmith_index_u32(0u, 17u)];
    var var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -976f), var_0.x) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-302f, 693f))) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-328f, -384f))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -1944f))));
    return (var_0.x < var_0.x) & select(var_2.b.x, false, false);
}

fn func_1(arg_0: vec4<i32>, arg_1: bool) -> StorageBuffer {
    global0 = array<Struct_1, 17>();
    var var_0 = abs(_wgslsmith_sub_vec2_u32(min(abs(firstLeadingBit(vec2<u32>(u_input.b, u_input.b))), countOneBits(~vec2<u32>(13014u, 0u))), ~_wgslsmith_sub_vec2_u32(~vec2<u32>(94737u, 58932u), vec2<u32>(15127u, u_input.b))));
    global0 = array<Struct_1, 17>();
    global0 = array<Struct_1, 17>();
    var var_1 = vec4<bool>(!arg_1, !(all(!vec4<bool>(false, arg_1, arg_1, false)) || func_2()), arg_1, any(vec3<bool>(!(arg_1 || arg_1), false, !arg_1)));
    return StorageBuffer(u_input.d, -1000f, _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, _wgslsmith_mod_u32(var_0.x, u_input.b)) << (vec2<u32>(5862u, max(u_input.b, u_input.b)) % vec2<u32>(32u)), abs(reverseBits(vec2<u32>(4294967295u, var_0.x) & vec2<u32>(18086u, var_0.x))), vec2<u32>(var_0.x, 0u)), -1754f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 17>();
    let var_0 = select(vec3<bool>(!all(vec4<bool>(false, false, true, false)) & true, true, any(vec3<bool>(true, true, true))), vec3<bool>(false, false, true), !select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), 0u > u_input.b), vec3<bool>(false, any(vec3<bool>(true, true, false)), true), (u_input.b != u_input.b) | false));
    global0 = array<Struct_1, 17>();
    global0 = array<Struct_1, 17>();
    var var_1 = vec4<bool>(true, all(var_0.zx), var_0.x, ~(~min(u_input.b, 4294967295u)) != ~(~(~0u)));
    let x = u_input.a;
    s_output = func_1(vec4<i32>(0i, u_input.a, -1i, -u_input.a), any(select(vec2<bool>(false, var_0.x), select(vec2<bool>(false, true), var_1.yw, true), u_input.a > 1i)) & (false | !(u_input.d != u_input.d)));
}

