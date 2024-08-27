struct Struct_1 {
    a: bool,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: u32,
    d: i32,
    e: vec3<f32>,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: i32,
}

struct Struct_4 {
    a: u32,
    b: vec2<bool>,
    c: Struct_1,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 2> = array<Struct_3, 2>(Struct_3(27584i, 0i, 0i), Struct_3(0i, -32415i, 2147483647i));

var<private> global1: f32 = 376f;

var<private> global2: u32 = 48543u;

var<private> global3: array<bool, 25>;

var<private> global4: array<vec4<u32>, 15>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: vec3<u32>) -> u32 {
    let var_0 = Struct_4(27637u, vec2<bool>(!(!(arg_2.x >= u_input.b)), false), Struct_1(global3[_wgslsmith_index_u32(select(arg_2.x, u_input.b, !global3[_wgslsmith_index_u32(u_input.a, 25u)]) ^ firstTrailingBit(max(arg_2.x, u_input.b)), 25u)], _wgslsmith_f_op_f32(max(627f, _wgslsmith_f_op_f32(floor(1288f)))), ~64052i), ~(-_wgslsmith_div_vec4_i32(vec4<i32>(arg_0.x, arg_1.a, arg_0.x, 0i), _wgslsmith_add_vec4_i32(vec4<i32>(40795i, arg_1.b, arg_0.x, 0i), vec4<i32>(-34800i, arg_1.c, -1i, 2147483647i)))));
    let var_1 = reverseBits(36962u);
    let var_2 = Struct_4(countOneBits(~(8786u << (~arg_2.x % 32u))), select(var_0.b, !vec2<bool>(global3[_wgslsmith_index_u32(reverseBits(arg_2.x), 25u)], any(vec2<bool>(var_0.c.a, global3[_wgslsmith_index_u32(var_0.a, 25u)]))), select(vec2<bool>(true, true), select(!var_0.b, select(var_0.b, var_0.b, var_0.b), !vec2<bool>(true, global3[_wgslsmith_index_u32(55649u, 25u)])), vec2<bool>(!global3[_wgslsmith_index_u32(arg_2.x, 25u)], !global3[_wgslsmith_index_u32(20576u, 25u)]))), var_0.c, abs(var_0.d));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.b, var_2.c.b, -1464f, 1116f)) - vec4<f32>(-759f, -767f, -134f, -2068f))))));
    global3 = array<bool, 25>();
    return var_1;
}

fn func_2(arg_0: Struct_2) -> u32 {
    global2 = ~func_3(_wgslsmith_div_vec2_i32(-abs(vec2<i32>(16197i, arg_0.b.c)), _wgslsmith_div_vec2_i32(~vec2<i32>(arg_0.b.c, -25399i), abs(vec2<i32>(1i, arg_0.d)))), global0[_wgslsmith_index_u32(arg_0.c, 2u)], min(_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.a, u_input.b, 135508u), vec3<u32>(arg_0.c, 1u, u_input.b)), countOneBits(~vec3<u32>(1u, 16097u, u_input.a))));
    let var_0 = !select(vec3<bool>(!arg_0.b.a, true, arg_0.b.a), select(!select(vec3<bool>(false, false, false), vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 25u)], true, true), false), vec3<bool>(arg_0.b.a, global3[_wgslsmith_index_u32(~4294967295u, 25u)], any(vec4<bool>(false, true, true, true))), all(vec3<bool>(false, arg_0.b.a, true))), !select(select(vec3<bool>(false, false, global3[_wgslsmith_index_u32(u_input.b, 25u)]), vec3<bool>(arg_0.b.a, true, global3[_wgslsmith_index_u32(1u, 25u)]), arg_0.b.a), vec3<bool>(true, true, true), vec3<bool>(arg_0.b.a, global3[_wgslsmith_index_u32(0u, 25u)], true)));
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.b.b), arg_0.b.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(arg_0.e.x)))))) * arg_0.b.b)));
    global0 = array<Struct_3, 2>();
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1029f)) + _wgslsmith_f_op_f32(1091f * 1139f)))), var_1, 828f, 864f);
    return 3738u | u_input.b;
}

fn func_1(arg_0: vec2<u32>, arg_1: f32, arg_2: i32, arg_3: f32) -> vec2<u32> {
    global4 = array<vec4<u32>, 15>();
    let var_0 = select(vec4<bool>(any(!vec4<bool>(global3[_wgslsmith_index_u32(u_input.a, 25u)], false, global3[_wgslsmith_index_u32(arg_0.x, 25u)], false)), true, !select(!global3[_wgslsmith_index_u32(4294967295u, 25u)], true, true), min(82623u, func_2(Struct_2(arg_0, Struct_1(global3[_wgslsmith_index_u32(21144u, 25u)], arg_1, -2147483647i), u_input.a, 17342i, vec3<f32>(arg_1, arg_3, arg_3)))) >= arg_0.x), !vec4<bool>(true, true, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_0.x, arg_0.x, arg_0.x), global4[_wgslsmith_index_u32(14755u, 15u)]), 25u)] || !global3[_wgslsmith_index_u32(arg_0.x, 25u)], true), any(vec2<bool>(!global3[_wgslsmith_index_u32(abs(arg_0.x), 25u)], true)));
    let var_1 = ~firstLeadingBit(vec3<i32>(~40753i, arg_2 >> (0u % 32u), -arg_2) ^ ~select(vec3<i32>(-1i, arg_2, arg_2), vec3<i32>(-1i, -38827i, arg_2), vec3<bool>(global3[_wgslsmith_index_u32(u_input.b, 25u)], var_0.x, true)));
    let var_2 = max(abs(max(min(u_input.a, u_input.b), reverseBits(_wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.b)))), 4294967295u);
    var var_3 = _wgslsmith_f_op_f32(arg_3 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(248f * arg_3)))));
    return vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(~(~arg_0), ~vec2<u32>(var_2, 4294967295u) | _wgslsmith_div_vec2_u32(arg_0, arg_0), ~vec2<u32>(u_input.a, var_2)), _wgslsmith_add_vec2_u32(arg_0 >> (arg_0 % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(arg_0, vec2<u32>(arg_0.x, 81495u), abs(vec2<u32>(arg_0.x, 50204u))))), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = Struct_2(~(func_1(vec2<u32>(1u, u_input.b), _wgslsmith_f_op_f32(sign(567f)), i32(-1i) * -6774i, -132f) ^ vec2<u32>(1u, 4294967295u)), Struct_1(false, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(f32(-1f) * -122f)) - _wgslsmith_f_op_f32(min(538f, -679f))), 27281i), u_input.b, ~_wgslsmith_add_i32(max(~(-33010i), ~(-14952i)), -1i), vec3<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(574f)) * -115f), _wgslsmith_f_op_f32(f32(-1f) * -774f)));
    global2 = ~(~2766u);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.e.x, var_1.b.b, _wgslsmith_f_op_f32(trunc(var_1.e.x)), _wgslsmith_f_op_f32(select(var_1.e.x, var_1.e.x, global3[_wgslsmith_index_u32(var_1.a.x, 25u)]))), vec4<f32>(_wgslsmith_f_op_f32(floor(var_1.b.b)), 244f, -741f, var_1.b.b), !(!vec4<bool>(true, var_1.b.a, false, false)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.e.x, 525f, -680f, var_1.e.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.e.x, var_1.b.b, var_1.e.x, var_1.b.b) * vec4<f32>(var_1.e.x, -1998f, -495f, var_1.b.b)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-590f, var_1.b.b, -308f, var_1.e.x))))))));
    global0 = array<Struct_3, 2>();
    var var_3 = _wgslsmith_mod_u32(u_input.a, ~max(~var_1.a.x, _wgslsmith_mod_u32(u_input.b, ~33027u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(var_1.b.c, 1i), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(-598f, 203f, all(vec3<bool>(true, var_1.b.a, false)))), _wgslsmith_f_op_f32(f32(-1f) * -2060f), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1011f, -500f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.e.x - var_1.e.x))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(991f, -101f, var_2.x, 1464f), vec4<f32>(376f, var_1.e.x, -1893f, -538f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-639f, -1477f, 1139f, 1083f))), var_2)), func_1(var_1.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(860f - var_1.b.b), var_2.x, false & global3[_wgslsmith_index_u32(abs(89668u), 25u)])), _wgslsmith_add_i32(49337i, reverseBits(3848i)), _wgslsmith_f_op_f32(min(434f, _wgslsmith_f_op_f32(-749f + 351f)))));
}

