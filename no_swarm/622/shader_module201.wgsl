struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(vec4<f32>(-881f, 877f, -1698f, -708f)), Struct_1(vec4<f32>(-805f, -791f, -1236f, 1670f)), Struct_1(vec4<f32>(407f, 299f, -2267f, -167f)), Struct_1(vec4<f32>(-765f, 189f, -347f, 1072f)), Struct_1(vec4<f32>(175f, -167f, 732f, -108f)), Struct_1(vec4<f32>(660f, -455f, 284f, 1572f)), Struct_1(vec4<f32>(-1187f, 593f, 1000f, 300f)), Struct_1(vec4<f32>(2627f, 868f, 271f, -1292f)), Struct_1(vec4<f32>(-1598f, -305f, -156f, -689f)), Struct_1(vec4<f32>(-1326f, -1117f, -1566f, -620f)));

var<private> global1: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec4<f32>(-278f, 386f, -1000f, 226f)), Struct_1(vec4<f32>(433f, 271f, 1883f, -110f)), Struct_1(vec4<f32>(-785f, 599f, -676f, -174f)), Struct_1(vec4<f32>(1305f, -136f, -614f, -323f)), Struct_1(vec4<f32>(-416f, 240f, 221f, 1150f)), Struct_1(vec4<f32>(256f, -554f, -787f, 1000f)), Struct_1(vec4<f32>(106f, 507f, -521f, 787f)), Struct_1(vec4<f32>(-377f, 1303f, -857f, 1126f)), Struct_1(vec4<f32>(-335f, 151f, 1124f, 757f)), Struct_1(vec4<f32>(824f, 1005f, -223f, 389f)), Struct_1(vec4<f32>(493f, -2827f, 491f, 2538f)), Struct_1(vec4<f32>(-270f, -1265f, 997f, 557f)), Struct_1(vec4<f32>(-1566f, 1419f, -298f, -243f)));

var<private> global2: vec2<f32> = vec2<f32>(1452f, 338f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>) -> vec2<f32> {
    let var_0 = (u_input.d.xyx & (u_input.d.yxz & firstLeadingBit(_wgslsmith_add_vec3_u32(u_input.d.wxy, vec3<u32>(u_input.d.x, u_input.c.x, u_input.e))))) ^ ~u_input.d.wzz;
    global1 = array<Struct_1, 13>();
    global0 = array<Struct_1, 10>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-896f + 1f) + _wgslsmith_f_op_f32(trunc(-1038f)));
    let var_2 = var_0.x;
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.x, _wgslsmith_f_op_f32(abs(-645f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2242f), -911f) + _wgslsmith_f_op_vec2_f32(select(arg_1.a.xx, arg_1.a.xy, arg_2.x))) - arg_1.a.yy));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>) -> f32 {
    let var_0 = vec2<f32>(-464f, _wgslsmith_div_f32(581f, arg_0.a.x));
    global0 = array<Struct_1, 10>();
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(var_0.x * 1023f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global2.x, global2.x)) + _wgslsmith_f_op_f32(-arg_0.a.x))) + _wgslsmith_f_op_vec2_f32(func_3(Struct_1(_wgslsmith_f_op_vec4_f32(-arg_0.a)), Struct_1(vec4<f32>(global2.x, var_0.x, 760f, -1000f)), vec2<bool>(true, arg_1.x)))));
    global1 = array<Struct_1, 13>();
    var var_1 = u_input.d.yy;
    return var_0.x;
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: u32) -> f32 {
    global2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, 282f) - arg_1.a.wx), vec2<f32>(146f, arg_1.a.x)) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1750f), _wgslsmith_f_op_f32(func_2(arg_1, vec4<bool>(true, false, false, true))))))));
    var var_0 = vec3<u32>(~4294967295u << (u_input.d.x % 32u), 0u, 53642u);
    let var_1 = any(select(vec2<bool>(false, true), !(!select(vec2<bool>(true, false), vec2<bool>(false, false), false)), ((arg_0 >= arg_2) && true) & true));
    var_0 = u_input.d.wwz;
    global2 = _wgslsmith_f_op_vec2_f32(arg_1.a.zx * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -519f), global2.x));
    return _wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x - global2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-384f, global2.x))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1685f, 693f)))))) - vec2<f32>(_wgslsmith_f_op_f32(func_1(max(_wgslsmith_sub_u32(u_input.c.x, 4294967295u), _wgslsmith_dot_vec2_u32(u_input.d.wz, vec2<u32>(0u, u_input.d.x))), global1[_wgslsmith_index_u32(3831u, 13u)], 4294967295u)), -458f));
    global2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -269f)), _wgslsmith_f_op_f32(-global2.x));
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2434f)) * 1000f)), -1267f);
    let var_1 = ~u_input.c.x;
    let var_2 = vec4<bool>(select(all(vec3<bool>(true, true, true)), true, ~u_input.d.x > var_1), 2147483647i >= (~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 19608i, 0i, 1i), vec4<i32>(-9591i, 23822i, u_input.a, u_input.a)) << (abs(countOneBits(50964u)) % 32u)), any(select(vec2<bool>(false, false), vec2<bool>(14226u <= var_1, true), vec2<bool>(true, false))), false);
    global0 = array<Struct_1, 10>();
    var var_3 = !(4294967295u > ((6797u ^ u_input.c.x) >> (~_wgslsmith_sub_u32(0u, 0u) % 32u)));
    let var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, global2.x, global2.x, -240f), vec4<f32>(-556f, -231f, -1000f, global2.x), vec4<bool>(false, var_2.x, false, false))))), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.x))), global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -287f)), _wgslsmith_f_op_f32(-847f * _wgslsmith_f_op_f32(f32(-1f) * -2958f))), ~u_input.a < -54818i)));
    let x = u_input.a;
    s_output = StorageBuffer(-2082f, vec2<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(-58419i, 58472i)), -vec2<i32>(u_input.a, -2147483647i)), abs(-37442i)), -2147483647i), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + 2112f), _wgslsmith_f_op_f32(var_4.a.x + _wgslsmith_f_op_f32(sign(var_0.x)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(global1[_wgslsmith_index_u32(u_input.c.x, 13u)], var_2)), _wgslsmith_f_op_f32(-var_4.a.x))) * var_4.a.x)), vec4<i32>(u_input.a, u_input.a, _wgslsmith_dot_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, u_input.a, 1i, u_input.a), vec4<i32>(-2147483647i, 0i, u_input.a, 1i)), vec4<i32>(-1i) * -vec4<i32>(u_input.a, -18550i, 50269i, -1842i)), -_wgslsmith_clamp_i32(u_input.a, 22402i, max(u_input.a, -4123i))));
}

