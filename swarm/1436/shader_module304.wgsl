struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec2<i32>,
    d: vec3<i32>,
    e: bool,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: vec4<u32>,
}

struct Struct_3 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_4 {
    a: u32,
    b: vec3<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
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

var<private> global0: Struct_3;

var<private> global1: array<bool, 30>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: Struct_3, arg_3: i32) -> f32 {
    global1 = array<bool, 30>();
    global0 = Struct_3(global1[_wgslsmith_index_u32(arg_0, 30u)], ~u_input.a);
    var var_0 = ~global0.b.x;
    global0 = Struct_3(all(!vec3<bool>(global0.b.x >= 47885u, true, arg_2.a)), arg_2.b);
    var var_1 = Struct_4(1u, global0.b, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(737f)), _wgslsmith_div_f32(1000f, 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(2056f, -814f))), 675f, _wgslsmith_f_op_f32(-519f * 292f)), !(true | any(vec3<bool>(true, true, true))), _wgslsmith_clamp_vec2_i32(vec2<i32>(~71428i, _wgslsmith_dot_vec3_i32(vec3<i32>(11540i, -38942i, -2147483647i), vec3<i32>(0i, 27085i, arg_1))), _wgslsmith_div_vec2_i32(-vec2<i32>(arg_1, -2147483647i), vec2<i32>(arg_3, 52825i) >> (global0.b.zz % vec2<u32>(32u))), select(u_input.c.xy, firstTrailingBit(vec2<i32>(-31220i, 20799i)), all(vec3<bool>(true, true, true)))), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 53836i), vec2<i32>(-39108i, arg_1)) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, global0.b.x, u_input.b, 5959u), vec4<u32>(4294967295u, arg_2.b.x, arg_0, u_input.d)) % 32u), select(u_input.c.x, 0i, false), arg_3 ^ countOneBits(u_input.c.x)), all(!vec3<bool>(global0.a, true, global1[_wgslsmith_index_u32(11247u, 30u)]))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f)));
}

fn func_2(arg_0: vec3<f32>, arg_1: u32, arg_2: Struct_3, arg_3: Struct_3) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-342f - _wgslsmith_f_op_f32(max(-267f, arg_0.x))), arg_0.x, _wgslsmith_f_op_f32(-arg_0.x), -1910f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(865f, arg_0.x), -1092f, _wgslsmith_f_op_f32(floor(arg_0.x)), _wgslsmith_f_op_f32(max(170f, arg_0.x))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(22681u, 25523i, arg_2, 2147483647i)), 1572f)), arg_0.x, 626f, arg_0.x) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, 915f, -664f))) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(773f, arg_0.x, arg_0.x, 1671f))))));
    let var_1 = Struct_2(true, !global0.a, ~(~vec4<u32>(9456u, u_input.b, u_input.a.x, 2312u) >> (abs(countOneBits(vec4<u32>(760u, 29535u, 1u, 1u))) % vec4<u32>(32u))));
    var var_2 = _wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_0.x, -2414f), arg_0.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-724f * _wgslsmith_f_op_f32(f32(-1f) * -175f))))));
    let var_3 = arg_3.a;
    global1 = array<bool, 30>();
    return vec2<u32>(59459u, _wgslsmith_add_u32(_wgslsmith_sub_u32(~1u, var_1.c.x), 3036u));
}

fn func_1(arg_0: bool, arg_1: vec4<bool>) -> f32 {
    let var_0 = firstTrailingBit(_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(~reverseBits(vec2<u32>(61827u, u_input.a.x)), abs(~vec2<u32>(global0.b.x, 4294967295u))), select(vec2<u32>(global0.b.x, abs(39253u)), u_input.a.yy, select(true, all(vec4<bool>(arg_0, false, true, global0.a)), arg_1.x))));
    global1 = array<bool, 30>();
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-115f, -613f, -709f, 441f) - vec4<f32>(1018f, -859f, 1261f, -556f)), _wgslsmith_div_vec4_f32(vec4<f32>(403f, -1124f, 652f, 1119f), vec4<f32>(1166f, 2679f, -948f, -1000f)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-300f, 273f, -1000f, 682f), _wgslsmith_div_vec4_f32(vec4<f32>(407f, -387f, -672f, -1138f), vec4<f32>(-1201f, 493f, 2669f, 683f))))), !arg_1.x, _wgslsmith_div_vec2_i32(firstTrailingBit(~u_input.c.yw ^ vec2<i32>(u_input.c.x, 5861i)), vec2<i32>(0i, u_input.c.x)), u_input.c.xyx, !(~0u < ~(94995u >> (global0.b.x % 32u))));
    var var_2 = ~_wgslsmith_sub_vec2_u32(u_input.a.zz & _wgslsmith_div_vec2_u32(func_2(var_1.a.xzz, 0u, Struct_3(true, vec3<u32>(0u, 0u, 4294967295u)), Struct_3(global1[_wgslsmith_index_u32(global0.b.x, 30u)], vec3<u32>(global0.b.x, global0.b.x, 55660u))), vec2<u32>(35304u, 22642u) | vec2<u32>(0u, u_input.b)), vec2<u32>(u_input.b, max(0u, _wgslsmith_add_u32(global0.b.x, 4294967295u))));
    let var_3 = abs(vec2<i32>(46312i, var_1.d.x));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-875f + var_1.a.x) - 102f);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 30>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(730f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(401f * -1816f)))), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(2310f * -1650f), 1f))))), _wgslsmith_f_op_f32(-458f - _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -605f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(122f + 270f)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(576f, 1232f) - -707f)))), _wgslsmith_f_op_f32(1624f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(global0.a, !vec4<bool>(true, global0.a, global1[_wgslsmith_index_u32(global0.b.x, 30u)], false))))));
    global0 = Struct_3(!(!global1[_wgslsmith_index_u32(firstTrailingBit(func_2(vec3<f32>(1049f, var_0.x, var_0.x), 36285u, Struct_3(global1[_wgslsmith_index_u32(global0.b.x, 30u)], global0.b), Struct_3(true, vec3<u32>(global0.b.x, 13532u, 1u))).x), 30u)]), _wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(~6372u, ~1u, u_input.a.x)), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.b.x, global0.b.x, u_input.d, 4294967295u) & vec4<u32>(1u, global0.b.x, 0u, 4294967295u), max(vec4<u32>(0u, 8391u, 16846u, 0u), vec4<u32>(u_input.a.x, 1u, 0u, u_input.d))), max(u_input.d, global0.b.x ^ 1u), _wgslsmith_div_u32(global0.b.x, 71497u >> (1u % 32u)))));
    global1 = array<bool, 30>();
    let var_1 = ~global0.b.x;
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.x, 1541f, var_0.x, -229f), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 980f, -884f, var_0.x) - vec4<f32>(var_0.x, -513f, var_0.x, var_0.x))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1086f, var_0.x, var_0.x, var_0.x) - vec4<f32>(var_0.x, -1188f, var_0.x, 1414f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, -1231f, 376f) - vec4<f32>(-285f, -2578f, 169f, 663f))))), global1[_wgslsmith_index_u32(0u, 30u)], vec2<i32>(-1i, 1i), u_input.c.ywy, _wgslsmith_f_op_f32(trunc(var_0.x)) <= _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(var_0.x + var_0.x)));
    global1 = array<bool, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_mod_u32(countOneBits(0u), ~0u) >> (var_1 % 32u)));
}

