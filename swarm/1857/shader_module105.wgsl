struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: u32,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 28>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec4<u32>, arg_3: vec2<u32>) -> vec4<i32> {
    global0 = array<bool, 28>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(362f, 349f), vec2<f32>(1344f, 1123f)) + _wgslsmith_div_vec2_f32(vec2<f32>(672f, -143f), vec2<f32>(975f, -1000f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1406f, -112f) - vec2<f32>(781f, -1979f)))))));
    global0 = array<bool, 28>();
    var var_1 = vec2<u32>(_wgslsmith_div_u32(~(~arg_2.x), min(firstLeadingBit(4294967295u), _wgslsmith_dot_vec3_u32(arg_2.zyz, vec3<u32>(21658u, arg_3.x, arg_3.x)))), ~1u);
    let var_2 = reverseBits(vec2<u32>(4294967295u, select(arg_0.d, arg_3.x, arg_1.x) << (23155u % 32u))) | ~vec2<u32>(1u, _wgslsmith_div_u32(firstLeadingBit(var_1.x), arg_2.x));
    return arg_0.a;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>) -> Struct_1 {
    global0 = array<bool, 28>();
    let var_0 = reverseBits(func_3(Struct_1(-vec4<i32>(u_input.a, arg_0.a.x, u_input.a, -11082i), !arg_1, ~countOneBits(u_input.b), u_input.b & ~25934u), arg_1.zy, ~(~vec4<u32>(arg_0.d, u_input.b, 78065u, 4294967295u) & vec4<u32>(1u, arg_0.c, u_input.b, 1u)), ~(~(~vec2<u32>(u_input.b, 550u)))));
    global0 = array<bool, 28>();
    let var_1 = -1886i;
    var var_2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2459f) * 616f), 217f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(144f, -688f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2035f, 593f)))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1338f, -418f) - vec2<f32>(1061f, 1083f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(168f, -171f))))))));
    return Struct_1(var_0, !vec4<bool>(any(arg_0.b.yyx), true, arg_0.b.x, all(vec2<bool>(arg_1.x, false))), select(4294967295u, 50014u, true), _wgslsmith_dot_vec2_u32(~vec2<u32>(20179u, 120303u), abs(~vec2<u32>(u_input.b, 17732u)) ^ (firstTrailingBit(vec2<u32>(u_input.b, arg_0.c)) >> (~vec2<u32>(59578u, 32397u) % vec2<u32>(32u)))));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: vec3<i32>) -> f32 {
    let var_0 = arg_1;
    global0 = array<bool, 28>();
    let var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-272f, -427f)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_2), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.x, 1000f)), arg_1.b.xx)), arg_2)))), var_0.b.xy));
    global0 = array<bool, 28>();
    var var_2 = func_2(Struct_1(arg_1.a, select(vec4<bool>(true, all(arg_1.b.yyx), false, true & arg_1.b.x), vec4<bool>(arg_1.b.x, false, var_0.b.x, true), false), ~firstTrailingBit(abs(var_0.c)), 4294967295u), arg_1.b);
    return _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -594f)), _wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_2.x)) - _wgslsmith_f_op_f32(-arg_2.x))))), func_2(func_2(arg_1, !arg_1.b), vec4<bool>(arg_0.x == var_2.a.x, func_2(arg_1, !arg_1.b).b.x, var_2.b.x, arg_1.b.x)).b.x));
}

fn func_1() -> f32 {
    let var_0 = false;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(710f)) * _wgslsmith_f_op_f32(-890f + 1713f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1739f)) - _wgslsmith_f_op_f32(select(-1243f, 1000f, false)))) + -1249f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-207f * _wgslsmith_f_op_f32(func_4(vec3<i32>(u_input.a, u_input.a, u_input.a), func_2(Struct_1(vec4<i32>(-11807i, u_input.a, -58177i, u_input.a), vec4<bool>(var_0, var_0, false, true), u_input.b, u_input.b), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 28u)], var_0, global0[_wgslsmith_index_u32(u_input.b, 28u)])), _wgslsmith_div_vec2_f32(vec2<f32>(1189f, -572f), vec2<f32>(370f, -1346f)), vec3<i32>(u_input.a, -2147483647i, u_input.a) & vec3<i32>(-1i, u_input.a, u_input.a)))) + 1600f));
    let var_2 = 1u;
    let var_3 = Struct_1(~vec4<i32>(u_input.a, -2147483647i, 1i, ~(-36107i)), vec4<bool>(!(true && !var_0), global0[_wgslsmith_index_u32(1u, 28u)], var_0, true), u_input.b, 4294967295u);
    global0 = array<bool, 28>();
    return 2334f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(countOneBits(4294967295u), 28u)];
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(988f * _wgslsmith_f_op_f32(max(-1000f, 607f))), -1441f, global0[_wgslsmith_index_u32(48185u, 28u)])), -499f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1101f), _wgslsmith_f_op_f32(684f - 726f), false)) * _wgslsmith_f_op_f32(f32(-1f) * -370f))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(1510f, 838f, -576f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-362f, 1788f, 1012f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1333f, -1256f, 1286f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-325f, 1634f, -383f), vec3<f32>(-268f, -973f, 1605f)))))));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -832f), 960f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_div_f32(-1272f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2072f)))), 105f);
    let var_3 = true;
    var_1 = vec3<f32>(var_1.x, _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1130f * var_1.x))));
    var var_4 = func_2(func_2(Struct_1(vec4<i32>(u_input.a, u_input.a, u_input.a ^ 2458i, -2147483647i), vec4<bool>(func_2(Struct_1(vec4<i32>(-12526i, u_input.a, u_input.a, 6523i), vec4<bool>(var_3, global0[_wgslsmith_index_u32(u_input.b, 28u)], var_3, var_3), 0u, 4294967295u), vec4<bool>(global0[_wgslsmith_index_u32(48707u, 28u)], var_3, false, false)).b.x, any(vec2<bool>(false, true)), all(vec2<bool>(var_3, true)), false), 4294967295u, u_input.b), vec4<bool>(var_3, any(vec4<bool>(false, true, global0[_wgslsmith_index_u32(21688u, 28u)], true)), global0[_wgslsmith_index_u32((0u >> (u_input.b % 32u)) ^ firstLeadingBit(4294967295u), 28u)], func_2(Struct_1(vec4<i32>(u_input.a, u_input.a, -1i, -11330i), vec4<bool>(false, var_3, true, global0[_wgslsmith_index_u32(u_input.b, 28u)]), 29050u, 1403u), func_2(Struct_1(vec4<i32>(u_input.a, u_input.a, u_input.a, 2147483647i), vec4<bool>(global0[_wgslsmith_index_u32(31442u, 28u)], false, global0[_wgslsmith_index_u32(u_input.b, 28u)], global0[_wgslsmith_index_u32(40364u, 28u)]), u_input.b, 34332u), vec4<bool>(global0[_wgslsmith_index_u32(1u, 28u)], false, true, false)).b).b.x)), vec4<bool>(select(-274f == _wgslsmith_f_op_f32(ceil(-1082f)), false, all(vec4<bool>(var_3, true, var_3, false))), false, !(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.b, u_input.b), vec3<u32>(7432u, u_input.b, 4294967295u)) == (u_input.b | u_input.b)), false));
    var_1 = _wgslsmith_f_op_vec3_f32(sign(var_2.yxy));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(var_4.d) ^ ~u_input.b);
}

