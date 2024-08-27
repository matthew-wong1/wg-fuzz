struct Struct_1 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: vec2<f32>,
    d: vec3<bool>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec2<i32>(2147483647i, 30774i), vec4<bool>(true, true, false, false), vec2<f32>(-522f, 535f), vec3<bool>(true, false, true), vec4<f32>(1582f, -803f, -563f, -1371f)), Struct_1(vec2<i32>(1i, 0i), vec4<bool>(true, false, true, true), vec2<f32>(275f, -152f), vec3<bool>(false, true, false), vec4<f32>(-2723f, -1000f, 1457f, -927f)), Struct_1(vec2<i32>(-1i, 33998i), vec4<bool>(true, true, false, true), vec2<f32>(-916f, -313f), vec3<bool>(false, true, true), vec4<f32>(890f, 1408f, -876f, 525f)), Struct_1(vec2<i32>(72037i, 2147483647i), vec4<bool>(false, true, true, false), vec2<f32>(-1005f, 2194f), vec3<bool>(true, false, true), vec4<f32>(698f, 268f, 375f, 657f)), Struct_1(vec2<i32>(0i, 88707i), vec4<bool>(false, true, true, true), vec2<f32>(-806f, 769f), vec3<bool>(true, false, false), vec4<f32>(1000f, -407f, -1000f, -297f)), Struct_1(vec2<i32>(-10081i, -3171i), vec4<bool>(false, false, true, false), vec2<f32>(-251f, -1000f), vec3<bool>(true, true, true), vec4<f32>(186f, 220f, -741f, 1162f)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(arg_0.e.wxy, vec3<f32>(-1249f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.x) * _wgslsmith_f_op_f32(select(arg_0.e.x, arg_0.e.x, arg_0.d.x))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-227f, -991f)), 441f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1603f * arg_0.c.x) + -255f) + -2298f)), !any(arg_0.b.yz)));
    var var_1 = global1[_wgslsmith_index_u32(select(~_wgslsmith_div_u32(select(1u, u_input.a.x, arg_0.d.x), u_input.a.x ^ 1u) | _wgslsmith_dot_vec2_u32(select(select(vec2<u32>(1u, 48699u), u_input.a.xz, arg_0.b.xx), vec2<u32>(u_input.a.x, 1u) & u_input.a.zy, select(arg_0.b.xw, arg_0.d.yx, false)), vec2<u32>(_wgslsmith_clamp_u32(4294967295u, u_input.c, 678u), 85898u)), ~54452u, select(true, false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1121f - var_0.x) - _wgslsmith_f_op_f32(f32(-1f) * -1050f)) < var_0.x)), 6u)];
    let var_2 = -47737i;
    let var_3 = countOneBits(-2147483647i);
    global0 = _wgslsmith_mod_u32(u_input.a.x, ~u_input.a.x);
    return vec2<bool>(any(!(!vec2<bool>(arg_0.b.x, var_1.d.x))), var_0.x != _wgslsmith_div_f32(var_1.c.x, var_1.e.x));
}

fn func_2(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = Struct_1(vec2<i32>(-(~(u_input.b | -12439i)), 1i), vec4<bool>(all(select(func_3(Struct_1(vec2<i32>(-26179i, 0i), arg_0.b, arg_0.e.yz, arg_0.d, vec4<f32>(-581f, arg_0.c.x, 886f, -1563f))), !arg_0.b.zw, arg_0.b.xw)), arg_0.e.x <= _wgslsmith_f_op_f32(arg_0.e.x + _wgslsmith_f_op_f32(abs(-751f))), true, !func_3(global1[_wgslsmith_index_u32(1u, 6u)]).x), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(arg_0.c.x)), _wgslsmith_f_op_f32(850f * 1000f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1000f, -621f))) + arg_0.c)))), vec3<bool>(true, true, 31143u >= abs(_wgslsmith_div_u32(u_input.c, 0u))), arg_0.e);
    let var_1 = u_input.a.xx | vec2<u32>(~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(u_input.a, u_input.a), vec3<u32>(1617u, u_input.a.x, u_input.a.x)), reverseBits(u_input.c));
    var var_2 = u_input.a.x;
    var var_3 = arg_0.a.x;
    var var_4 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-arg_0.c.x), -969f), arg_0.d, global1[_wgslsmith_index_u32(4294967295u, 6u)], arg_0);
    return min(~vec4<u32>(min(u_input.c, var_1.x) ^ 20621u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 45506u) | vec4<u32>(var_1.x, 1u, u_input.a.x, 10971u), select(vec4<u32>(var_1.x, var_1.x, u_input.c, u_input.a.x), vec4<u32>(var_1.x, u_input.a.x, u_input.a.x, var_1.x), var_4.b.x)), abs(64951u), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, u_input.a.x, 1u, 48675u), vec4<u32>(0u, u_input.c, 30959u, var_1.x)), u_input.c)), vec4<u32>(0u, ~abs(4294967295u << (0u % 32u)), firstLeadingBit(~var_1.x), ~(~(~var_1.x))));
}

fn func_1(arg_0: Struct_1) -> f32 {
    global1 = array<Struct_1, 6>();
    let var_0 = func_2(global1[_wgslsmith_index_u32(~reverseBits(~0u), 6u)]);
    global0 = ~_wgslsmith_clamp_u32(~(~90658u) & abs(~u_input.c), 63297u, ((var_0.x ^ 78895u) ^ ~var_0.x) >> (0u % 32u));
    var var_1 = Struct_3(Struct_2(arg_0.c.x, -1012f), !(!arg_0.b.yzw), global1[_wgslsmith_index_u32(4294967295u, 6u)], Struct_1(vec2<i32>(min(0i, 60244i), countOneBits(arg_0.a.x)) >> ((_wgslsmith_add_vec2_u32(vec2<u32>(1u, u_input.a.x), u_input.a.yy) & _wgslsmith_clamp_vec2_u32(u_input.a.zz, var_0.zx, var_0.ww)) % vec2<u32>(32u)), arg_0.b, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c.x, arg_0.c.x) - vec2<f32>(arg_0.c.x, arg_0.e.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c.x, arg_0.e.x))))), select(arg_0.b.yxw, vec3<bool>(true, arg_0.d.x, select(true, arg_0.d.x, false)), vec3<bool>(arg_0.b.x, all(vec3<bool>(true, true, arg_0.d.x)), !arg_0.b.x)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(3227f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-311f, 1041f)), _wgslsmith_f_op_f32(trunc(arg_0.e.x)))), 1214f)));
    global0 = _wgslsmith_add_u32(_wgslsmith_mod_u32(~(~1u) << (u_input.c % 32u), max(~u_input.c, 46552u)), var_0.x);
    return _wgslsmith_f_op_f32(abs(arg_0.e.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(true, all(vec2<bool>(-245f < _wgslsmith_f_op_f32(ceil(-706f)), true)), any(vec3<bool>(all(vec2<bool>(true, false)), false, u_input.a.x != (u_input.a.x & 4294967295u))));
    var var_1 = u_input.a;
    var var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(2624f)), _wgslsmith_f_op_f32(func_1(global1[_wgslsmith_index_u32(1u, 6u)])), true || var_0.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-695f - -793f), _wgslsmith_f_op_f32(455f * 173f), true))), vec2<f32>(727f, 682f)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1151f, 1000f))))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-752f, 199f), vec2<f32>(-389f, 1793f), var_0.x)) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1000f, 1000f)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1551f, 1750f) * vec2<f32>(1027f, 641f)))))))), select(var_0.xy, !(!(!vec2<bool>(true, var_0.x))), var_0.xy)));
    let var_3 = 0i;
    var var_4 = select(select(select(!select(vec4<bool>(true, var_0.x, true, var_0.x), vec4<bool>(true, true, var_0.x, var_0.x), vec4<bool>(var_0.x, false, true, var_0.x)), !(!vec4<bool>(var_0.x, true, true, var_0.x)), _wgslsmith_f_op_f32(max(var_2.x, var_2.x)) != _wgslsmith_f_op_f32(-var_2.x)), vec4<bool>(var_0.x, var_1.x > 4294967295u, true && any(var_0.yx), var_0.x), !select(vec4<bool>(true, var_0.x, false, var_0.x), vec4<bool>(true, var_0.x, var_0.x, var_0.x), !vec4<bool>(false, true, true, var_0.x))), select(select(select(select(vec4<bool>(true, true, false, var_0.x), vec4<bool>(true, false, false, false), vec4<bool>(true, var_0.x, var_0.x, false)), !vec4<bool>(true, true, true, var_0.x), vec4<bool>(false, false, var_0.x, var_0.x)), vec4<bool>(false, var_0.x || true, u_input.b == var_3, !var_0.x), any(!vec3<bool>(true, false, var_0.x))), vec4<bool>(firstLeadingBit(2147483647i) >= u_input.b, var_0.x, var_0.x, var_0.x), select(vec4<bool>(true, any(vec2<bool>(false, true)), true, true), select(!vec4<bool>(var_0.x, var_0.x, var_0.x, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, var_0.x), vec4<bool>(var_0.x, var_0.x, true, var_0.x)), !var_0.x), false)), var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_sub_vec3_u32(~vec3<u32>(4294967295u, u_input.c, u_input.a.x), select(firstTrailingBit(vec3<u32>(var_1.x, var_1.x, var_1.x)), _wgslsmith_mod_vec3_u32(u_input.a, vec3<u32>(u_input.c, var_1.x, var_1.x)), vec3<bool>(var_0.x, var_0.x, var_4.x)))));
}

