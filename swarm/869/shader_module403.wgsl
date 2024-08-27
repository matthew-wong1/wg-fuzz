struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 11>;

var<private> global1: i32 = i32(-2147483648);

var<private> global2: array<u32, 4>;

var<private> global3: array<vec2<u32>, 6>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1) -> vec3<u32> {
    global0 = array<vec2<i32>, 11>();
    var var_0 = !vec4<bool>(!arg_0.a.x, !arg_0.a.x, arg_0.a.x, true);
    var var_1 = 238f;
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1689f, 1f, -856f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1606f) + -1224f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(576f, -508f, 491f, 123f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-528f, 293f, 2433f, 479f) * vec4<f32>(-269f, 988f, -1000f, 528f))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(2434f, -424f, -377f, 661f) * vec4<f32>(1243f, -931f, 147f, -275f)))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(382f - 1119f), _wgslsmith_f_op_f32(1092f + 580f), true)), 296f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(301f, 1219f), _wgslsmith_f_op_f32(-285f * -441f))), -922f)));
    var var_3 = arg_0.a.zz;
    return u_input.a << (vec3<u32>(~1u, u_input.a.x, _wgslsmith_div_u32(0u, _wgslsmith_add_u32(u_input.a.x, _wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 4u)], 4u)], 4u)], 4u)], 41845u, global2[_wgslsmith_index_u32(u_input.a.x, 4u)])))) % vec3<u32>(32u));
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> vec2<u32> {
    global3 = array<vec2<u32>, 6>();
    global3 = array<vec2<u32>, 6>();
    global1 = -1i >> (_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, u_input.a.x), ~u_input.a.yx) >> (max(firstTrailingBit(global2[_wgslsmith_index_u32(4294967295u, 4u)]), ~4294967295u) % 32u), 46726u) % 32u);
    var var_0 = 74147u;
    global3 = array<vec2<u32>, 6>();
    return vec2<u32>(~_wgslsmith_mod_u32(~global2[_wgslsmith_index_u32(59987u, 4u)], ~97062u), _wgslsmith_dot_vec3_u32(~abs(u_input.a), func_3(arg_0)) | _wgslsmith_sub_u32(~0u << (global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(2158u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 4u)], 4u)]), 4u)] % 32u), abs(~u_input.a.x)));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<f32>) -> Struct_1 {
    global2 = array<u32, 4>();
    var var_0 = ~global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(select(43886u, 4294967295u, false), 4u)], 6u)];
    var_0 = vec2<u32>(_wgslsmith_dot_vec3_u32(~(vec3<u32>(u_input.a.x, 1u, 4294967295u) << (vec3<u32>(1u, 38126u, 23056u) % vec3<u32>(32u))), u_input.a), u_input.a.x ^ u_input.a.x) >> (func_2(Struct_1(vec3<bool>(true, true, true)), 5316i) % vec2<u32>(32u));
    global3 = array<vec2<u32>, 6>();
    let var_1 = true;
    return Struct_1(vec3<bool>(false, all(select(vec2<bool>(true, true), select(vec2<bool>(false, var_1), vec2<bool>(true, var_1), vec2<bool>(var_1, var_1)), true)), !var_1));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>) -> Struct_1 {
    global2 = array<u32, 4>();
    let var_0 = _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(select(vec2<u32>(global2[_wgslsmith_index_u32(1855u, 4u)], 4294967295u), vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(73471u, 4u)], 4u)], global2[_wgslsmith_index_u32(4294967295u, 4u)]), true), vec2<u32>(u_input.a.x, 27570u)) & 18793u, 9955u << (u_input.a.x % 32u), ~reverseBits(~1u));
    return Struct_1(vec3<bool>(true, all(vec2<bool>(arg_0.a.x, false)), arg_0.a.x));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    global2 = array<u32, 4>();
    global3 = array<vec2<u32>, 6>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-476f))));
    global2 = array<u32, 4>();
    return -716f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-529f + 2154f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-738f + _wgslsmith_f_op_f32(-2105f + -915f)), _wgslsmith_f_op_f32(func_5(func_4(func_1(vec4<f32>(-1691f, -370f, 711f, 1000f), vec2<f32>(1584f, 1931f)), _wgslsmith_mult_vec2_u32(u_input.a.xy, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 4u)], 6u)])), func_4(func_1(vec4<f32>(-452f, -391f, 163f, 2409f), vec2<f32>(-1685f, -1000f)), ~vec2<u32>(u_input.a.x, 4294967295u))))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1871f + 867f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(136f, 897f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(361f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1096f))), 822f))));
    let var_1 = _wgslsmith_f_op_f32(var_0.x * var_0.x);
    let var_2 = _wgslsmith_div_vec4_u32(vec4<u32>(9784u, 22641u, _wgslsmith_dot_vec2_u32(~vec2<u32>(global2[_wgslsmith_index_u32(1u, 4u)], global2[_wgslsmith_index_u32(10240u, 4u)]), vec2<u32>(global2[_wgslsmith_index_u32(func_3(Struct_1(vec3<bool>(false, true, false))).x, 4u)], ~38960u)), ~firstLeadingBit(~global2[_wgslsmith_index_u32(10718u, 4u)])), select(~min(vec4<u32>(u_input.a.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(98459u, 4u)], 4u)], u_input.a.x, 24091u) | vec4<u32>(u_input.a.x, 19683u, 6591u, 5585u), vec4<u32>(4294967295u, 46394u, u_input.a.x, 0u)), min(_wgslsmith_div_vec4_u32(max(vec4<u32>(u_input.a.x, u_input.a.x, 24255u, 65557u), vec4<u32>(global2[_wgslsmith_index_u32(u_input.a.x, 4u)], 1u, global2[_wgslsmith_index_u32(26399u, 4u)], 7684u)), vec4<u32>(u_input.a.x, global2[_wgslsmith_index_u32(12097u, 4u)], 4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 4u)], 4u)], 4u)])), ~vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 4u)], 33888u, 4294967295u, u_input.a.x)), vec4<bool>(all(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), true)), func_4(Struct_1(vec3<bool>(false, true, false)), vec2<u32>(u_input.a.x, 0u)).a.x, any(vec4<bool>(true, false, true, false)), true)));
    let var_3 = firstTrailingBit(u_input.a.x);
    var var_4 = firstLeadingBit(~var_2.x);
    var var_5 = vec2<u32>(~_wgslsmith_dot_vec4_u32(var_2, var_2), 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(abs(2147i));
}

