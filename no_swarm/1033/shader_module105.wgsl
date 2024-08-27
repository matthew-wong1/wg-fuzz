struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1f))), arg_2.c.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1594f, _wgslsmith_f_op_f32(-arg_1.c.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(arg_1.b, arg_1.b)), _wgslsmith_f_op_f32(exp2(arg_2.a)))), _wgslsmith_div_f32(arg_0.c.x, _wgslsmith_f_op_f32(-494f - -1271f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_2.c) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.c)))));
    let var_1 = Struct_1(arg_1.b, _wgslsmith_f_op_f32(-583f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1466f)) + var_0.c.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-254f, _wgslsmith_f_op_f32(select(-1493f, arg_0.c.x, true)), var_0.c.x, _wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_f_op_vec4_f32(round(arg_2.c)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.a, arg_0.c.x, -635f, -710f), vec4<f32>(-900f, arg_1.b, arg_0.a, 2158f))) - _wgslsmith_div_vec4_f32(vec4<f32>(164f, var_0.b, arg_2.a, 2519f), arg_2.c))));
    let var_2 = vec4<u32>(8037u, ~min(~4294967295u, 45146u), 4294967295u & u_input.a, firstLeadingBit(0u));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b * 1164f) - _wgslsmith_f_op_f32(sign(-721f)));
}

fn func_2() -> u32 {
    let var_0 = firstLeadingBit(~vec4<u32>(~u_input.a, u_input.a | 0u, 80980u, 31529u)) & ~vec4<u32>((62476u & u_input.c) ^ ~5733u, u_input.c, ~u_input.a, firstLeadingBit(u_input.a));
    var var_1 = Struct_1(-378f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1331f, -343f) * _wgslsmith_f_op_f32(1030f * -1439f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(Struct_1(-785f, 1327f, vec4<f32>(1252f, -1165f, 592f, 561f)), Struct_1(852f, 135f, vec4<f32>(924f, 799f, -1391f, 412f)), Struct_1(-1466f, 1000f, vec4<f32>(-406f, 1796f, -1331f, -364f)))), 1f, any(vec3<bool>(true, false, false)))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1697f, -448f, 286f)), vec4<f32>(_wgslsmith_f_op_f32(ceil(862f)), _wgslsmith_f_op_f32(max(-927f, -315f)), _wgslsmith_f_op_f32(f32(-1f) * -558f), -2041f)))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-104f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) * 1f))) - var_1.a);
    var var_3 = vec3<u32>(_wgslsmith_dot_vec4_u32(min(~vec4<u32>(24052u, u_input.c, 1u, 27778u), vec4<u32>(var_0.x, _wgslsmith_add_u32(u_input.a, 56352u), u_input.c, 0u)), vec4<u32>((0u << (u_input.c % 32u)) | 1u, _wgslsmith_clamp_u32(u_input.c, u_input.a, ~47183u), var_0.x, _wgslsmith_div_u32(~37481u, _wgslsmith_mod_u32(63194u, var_0.x)))), 43688u, 4294967295u);
    let var_4 = select(min(var_0.xxx, ~abs(var_0.wzx)), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, ~var_3.x, var_3.x) << (vec3<u32>(_wgslsmith_dot_vec4_u32(var_0, var_0), 19767u, _wgslsmith_mult_u32(var_3.x, var_0.x)) % vec3<u32>(32u)), firstTrailingBit(vec3<u32>(var_0.x, 4294967295u, 11655u))), false | all(vec3<bool>(true, true, true)));
    return 0u;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<bool>) -> f32 {
    var var_0 = arg_0.x;
    var var_1 = ~(func_2() ^ u_input.a);
    return -1000f;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = ~_wgslsmith_mod_vec2_u32(max(~vec2<u32>(u_input.a, 0u), _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, u_input.c), vec2<u32>(56774u, 7927u)), ~vec2<u32>(1u, 83913u))), _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.a, 1722u), select(vec2<u32>(u_input.a, u_input.c), vec2<u32>(0u, u_input.c), vec2<bool>(true, false))), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(1u, u_input.a)), u_input.a)));
    var var_1 = Struct_1(3446f, arg_1.a, arg_0.c);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(func_1(!vec4<bool>(arg_0.b < 115f, all(vec4<bool>(true, false, true, false)), false, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, all(vec4<bool>(false, true, true, false)), true), !select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false))))), var_1.c.x, arg_1.c);
    var_1 = Struct_1(_wgslsmith_f_op_f32(func_1(!vec4<bool>(any(vec2<bool>(false, false)), true, true, true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), false)), vec4<bool>(true, arg_1.a > var_2.a, true, true), select(true, all(vec3<bool>(true, false, true)), any(vec4<bool>(false, false, true, true)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), vec4<f32>(_wgslsmith_f_op_f32(arg_1.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.b)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(arg_1, var_2, Struct_1(-732f, var_2.c.x, arg_0.c))))), 982f, 247f));
    var_1 = arg_0;
    return select(!vec3<bool>(true, false, any(vec4<bool>(true, true, true, true))), vec3<bool>(true, 0i > (20763i << (_wgslsmith_sub_u32(43344u, var_0.x) % 32u)), false), all(vec4<bool>(true, true, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec3<i32>(~(_wgslsmith_div_i32(u_input.d.x, u_input.b) >> (u_input.a % 32u)), u_input.d.x, u_input.d.x), _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(u_input.d.zyw, ~vec3<i32>(u_input.d.x, 0i, u_input.d.x) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 82056u, 0u), vec3<u32>(26390u, 0u, u_input.c)) % vec3<u32>(32u))), -min(u_input.d.xyy, vec3<i32>(u_input.d.x, 2147483647i, u_input.b))), func_4(Struct_1(310f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -837f))), vec4<f32>(_wgslsmith_f_op_f32(-1378f - -1233f), _wgslsmith_f_op_f32(func_1(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true))), _wgslsmith_f_op_f32(f32(-1f) * -1017f), _wgslsmith_f_op_f32(252f * -597f))), Struct_1(-895f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -198f)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, -1586f, -346f, -799f))))))));
    let var_1 = any(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false))), true), vec4<bool>(select(true, all(vec3<bool>(true, true, true)), true), false, true, !all(vec3<bool>(false, false, false)))));
    var_0 = vec3<i32>(u_input.d.x, select(-var_0.x, u_input.d.x, true), select(~(u_input.d.x >> (abs(1u) % 32u)), ~u_input.b, true));
    var var_2 = vec2<u32>(88168u, ~abs(37965u)) >> (firstLeadingBit(~_wgslsmith_div_vec2_u32(max(vec2<u32>(26612u, 30496u), vec2<u32>(0u, 1u)), firstLeadingBit(vec2<u32>(4294967295u, u_input.a)))) % vec2<u32>(32u));
    let var_3 = Struct_1(1139f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(-1012f, _wgslsmith_f_op_f32(f32(-1f) * -638f)), false))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(968f * 345f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-804f))), _wgslsmith_f_op_f32(-1752f * _wgslsmith_f_op_f32(-1115f - -1540f)), _wgslsmith_f_op_f32(f32(-1f) * -967f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(359f, -287f, 481f, 1956f)))))));
    let var_4 = Struct_1(_wgslsmith_f_op_f32(trunc(var_3.b)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_3.b, -1524f)) * _wgslsmith_f_op_f32(sign(504f))) - 323f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(-780f)), _wgslsmith_f_op_f32(-1062f - var_3.a), 1765f, 1665f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a, _wgslsmith_f_op_f32(f32(-1f) * -1752f), 1000f, 709f))));
    let var_5 = -abs(vec4<i32>(-2147483647i, -(-1i << (u_input.c % 32u)), var_0.x, i32(-1i) * -var_0.x));
    var_2 = min(max(vec2<u32>(~(~u_input.c), _wgslsmith_div_u32(firstLeadingBit(var_2.x), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 41168u, u_input.c), vec3<u32>(0u, u_input.a, var_2.x)))), countOneBits(vec2<u32>(var_2.x & var_2.x, _wgslsmith_sub_u32(0u, 0u)))), select(_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.c, u_input.c), vec2<u32>(var_2.x, 6591u)), ~(vec2<u32>(u_input.c, 0u) << (vec2<u32>(var_2.x, u_input.c) % vec2<u32>(32u)))), vec2<u32>(~(u_input.c & 32636u), u_input.a), all(!select(vec4<bool>(var_1, var_1, true, var_1), vec4<bool>(false, var_1, false, true), false))));
    var var_6 = -453f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_4.a, _wgslsmith_f_op_f32(func_3(var_4, Struct_1(var_4.c.x, var_3.b, vec4<f32>(var_3.c.x, var_3.c.x, var_3.c.x, var_4.b)), Struct_1(var_4.c.x, -118f, vec4<f32>(var_4.b, var_4.c.x, var_4.a, var_3.b)))))) + var_4.a), _wgslsmith_f_op_f32(func_1(vec4<bool>(true, true, true, true), vec4<bool>(false && var_1, any(vec2<bool>(true, var_1)), var_1, var_1)))), _wgslsmith_dot_vec3_i32(-(~(var_5.www & vec3<i32>(var_5.x, 9859i, var_0.x))), vec3<i32>(30940i, var_5.x, abs(u_input.d.x << (var_2.x % 32u)))), var_5.x);
}

