struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: f32,
    d: f32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-741f, -482f, 2437f, -1301f);

var<private> global1: array<bool, 4> = array<bool, 4>(true, false, false, false);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> vec2<bool> {
    global1 = array<bool, 4>();
    let var_0 = any(select(select(!select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 4u)], false), vec2<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 4u)], true), global1[_wgslsmith_index_u32(4294967295u, 4u)]), select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 4u)], global1[_wgslsmith_index_u32(62995u, 4u)]), !vec2<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 4u)], global1[_wgslsmith_index_u32(0u, 4u)]), vec2<bool>(global1[_wgslsmith_index_u32(1u, 4u)], true)), vec2<bool>(1u < u_input.d.x, !global1[_wgslsmith_index_u32(u_input.d.x, 4u)])), !select(select(vec2<bool>(global1[_wgslsmith_index_u32(1u, 4u)], false), vec2<bool>(global1[_wgslsmith_index_u32(50258u, 4u)], false), vec2<bool>(false, false)), !vec2<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 4u)], true), vec2<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 4u)], true)), global1[_wgslsmith_index_u32(firstTrailingBit(~(0u | u_input.c.x)), 4u)]));
    var var_1 = u_input.e.zyw;
    let var_2 = _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(abs(-183f)));
    let var_3 = vec3<u32>(~abs(0u) << (firstTrailingBit(_wgslsmith_dot_vec3_u32(~vec3<u32>(44955u, u_input.d.x, u_input.d.x), ~vec3<u32>(u_input.d.x, u_input.d.x, 49119u))) % 32u), ~u_input.d.x, _wgslsmith_dot_vec2_u32(max(u_input.d.yz, abs(max(vec2<u32>(51149u, u_input.c.x), u_input.c.zy))), vec2<u32>(u_input.c.x << (_wgslsmith_dot_vec2_u32(u_input.d.zx, u_input.c.zy) % 32u), _wgslsmith_mod_u32(86621u, u_input.c.x))));
    return vec2<bool>(true, global1[_wgslsmith_index_u32(~var_3.x, 4u)]);
}

fn func_2(arg_0: u32) -> vec3<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-2270f)))), !select(!select(vec2<bool>(global1[_wgslsmith_index_u32(1u, 4u)], global1[_wgslsmith_index_u32(100759u, 4u)]), vec2<bool>(false, global1[_wgslsmith_index_u32(1u, 4u)]), global1[_wgslsmith_index_u32(arg_0, 4u)]), func_3(), false), global0.x, _wgslsmith_f_op_f32(sign(630f)), _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(~reverseBits(u_input.d), vec3<u32>(53749u << (u_input.c.x % 32u), 0u, 1419u)), countOneBits(u_input.d), reverseBits(vec3<u32>(0u, countOneBits(35146u), arg_0 << (45683u % 32u)))));
    global0 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(265f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(min(var_0.d, 2695f)))));
    var var_1 = var_0;
    let var_2 = Struct_1(var_0.c, !(!func_3()), _wgslsmith_f_op_f32(max(1236f, 1362f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1173f) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.x)))), abs(reverseBits(vec3<u32>(var_0.e.x, _wgslsmith_div_u32(u_input.c.x, 1u), ~25026u))));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c) - var_2.a)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1514f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(var_0.a)))))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.d), _wgslsmith_f_op_f32(step(461f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d + -1031f))))), var_0.c, var_0.d);
    return global0.wzw;
}

fn func_4(arg_0: f32, arg_1: vec3<f32>, arg_2: f32, arg_3: f32) -> Struct_1 {
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-206f))), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0))), -599f);
    let var_0 = Struct_1(-1356f, !vec2<bool>(all(vec4<bool>(global1[_wgslsmith_index_u32(43167u, 4u)], true, false, global1[_wgslsmith_index_u32(47374u, 4u)])), global1[_wgslsmith_index_u32(u_input.c.x, 4u)] & all(vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.c.x, 4u)], true))), -740f, -219f, select(select(min(u_input.c, ~u_input.d), _wgslsmith_clamp_vec3_u32(u_input.d, select(u_input.d, vec3<u32>(49300u, 1u, u_input.c.x), global1[_wgslsmith_index_u32(u_input.d.x, 4u)]), u_input.c), any(vec3<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 4u)], false, global1[_wgslsmith_index_u32(u_input.c.x, 4u)]))), u_input.c, select(!(!vec3<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 4u)], global1[_wgslsmith_index_u32(41030u, 4u)], true)), select(select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 4u)], true, false), vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 4u)], global1[_wgslsmith_index_u32(4294967295u, 4u)], false), true), vec3<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 4u)], global1[_wgslsmith_index_u32(31353u, 4u)], true), vec3<bool>(global1[_wgslsmith_index_u32(68009u, 4u)], global1[_wgslsmith_index_u32(u_input.d.x, 4u)], global1[_wgslsmith_index_u32(u_input.c.x, 4u)])), _wgslsmith_f_op_f32(-arg_2) >= -1988f)));
    var var_1 = var_0;
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -419f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0)) + _wgslsmith_f_op_f32(sign(359f))), _wgslsmith_f_op_f32(-global0.x))), -1112f, 634f) + vec4<f32>(arg_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d + 965f) * var_0.d), -599f, _wgslsmith_f_op_f32(sign(var_1.d))));
    let var_3 = var_0;
    return Struct_1(_wgslsmith_f_op_f32(exp2(arg_2)), vec2<bool>(!((false | var_0.b.x) && false), _wgslsmith_f_op_f32(f32(-1f) * -1021f) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(179f * -1176f) + var_3.c)), 1181f, -1294f, select(vec3<u32>(_wgslsmith_clamp_u32(countOneBits(0u), var_1.e.x, var_3.e.x), ~(var_0.e.x & u_input.d.x), 22384u), ~var_1.e, any(vec2<bool>(global1[_wgslsmith_index_u32(~1145u, 4u)], global1[_wgslsmith_index_u32(var_1.e.x, 4u)]))));
}

fn func_1(arg_0: Struct_1) -> vec2<bool> {
    global1 = array<bool, 4>();
    var var_0 = arg_0;
    var_0 = func_4(arg_0.c, _wgslsmith_f_op_vec3_f32(func_2(58992u >> (((arg_0.e.x ^ 1u) | ~11195u) % 32u))), var_0.c, _wgslsmith_f_op_f32(sign(-452f)));
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d, -943f, 734f, arg_0.a) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0.a - -586f), _wgslsmith_f_op_f32(floor(1061f)), _wgslsmith_div_f32(730f, -902f), arg_0.c)), vec4<f32>(1111f, -1879f, var_0.d, func_4(_wgslsmith_f_op_f32(exp2(var_0.c)), vec3<f32>(var_0.c, 102f, arg_0.a), arg_0.d, _wgslsmith_f_op_f32(min(global0.x, var_0.a))).c))));
    let var_1 = arg_0;
    return vec2<bool>(!(_wgslsmith_f_op_f32(max(-1786f, _wgslsmith_f_op_f32(min(global0.x, -1659f)))) > _wgslsmith_f_op_f32(min(749f, _wgslsmith_f_op_f32(floor(var_1.c))))), any(var_0.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global0.x, select(!(!select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 4u)], global1[_wgslsmith_index_u32(u_input.c.x, 4u)]), vec2<bool>(false, false), true)), select(vec2<bool>(false && global1[_wgslsmith_index_u32(4294967295u, 4u)], global1[_wgslsmith_index_u32(abs(u_input.d.x), 4u)]), !(!vec2<bool>(false, global1[_wgslsmith_index_u32(57086u, 4u)])), select(vec2<bool>(global1[_wgslsmith_index_u32(31864u, 4u)], true), vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(global1[_wgslsmith_index_u32(71579u, 4u)], global1[_wgslsmith_index_u32(4294967295u, 4u)]), false))), func_1(Struct_1(_wgslsmith_f_op_f32(global0.x * 1314f), vec2<bool>(global1[_wgslsmith_index_u32(1u, 4u)], false), _wgslsmith_f_op_f32(abs(-227f)), _wgslsmith_f_op_f32(116f * global0.x), firstTrailingBit(vec3<u32>(27127u, u_input.c.x, 0u))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(global0.x)), global0.x))) + global0.x), -1610f, u_input.d);
    let var_1 = Struct_1(1000f, var_0.b, 3073f, -823f, func_4(_wgslsmith_f_op_f32(f32(-1f) * -3984f), global0.wwy, -1574f, _wgslsmith_f_op_f32(-1336f + 370f)).e);
    var_0 = func_4(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, 152f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-906f, -630f, 2765f)) * _wgslsmith_div_vec3_f32(global0.wzz, vec3<f32>(-1814f, -790f, 551f)))))), var_0.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -627f) + _wgslsmith_f_op_f32(-global0.x)))), -1103f));
    global1 = array<bool, 4>();
    global1 = array<bool, 4>();
    var var_2 = func_4(global0.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(global0.xxx, global0.xzy)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, var_0.a, -1243f) * global0.zxz))) * _wgslsmith_f_op_vec3_f32(exp2(global0.zyz))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.d), 1000f) - _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_1.c, -244f))))), _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_vec3_f32(func_2(~select(u_input.c.x, 92479u, true))).x));
    global1 = array<bool, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.d, var_2.c, 654f, global0.x))) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-736f, 1431f, var_2.c, -1492f), vec4<f32>(-1771f, global0.x, var_1.a, var_1.d)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1492f, -155f, 1000f, 212f) * vec4<f32>(-1868f, 1000f, var_2.d, -1000f)), vec4<f32>(-827f, var_0.a, var_1.d, var_2.d))))), 62744u, max(var_1.e.x, abs(_wgslsmith_mult_u32(u_input.c.x << (u_input.c.x % 32u), _wgslsmith_div_u32(var_2.e.x, 0u)))), 4294967295u);
}

