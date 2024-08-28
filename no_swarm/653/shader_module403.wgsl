struct Struct_1 {
    a: f32,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 20> = array<i32, 20>(85176i, 0i, -1i, -34681i, i32(-2147483648), 0i, 33181i, -40173i, -237i, -64913i, 75817i, 1i, -11020i, 2147483647i, 7683i, 0i, -34203i, 1i, -1i, 13330i);

var<private> global1: array<i32, 2>;

var<private> global2: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(Struct_1(-1410f, 2147483647i, true), vec3<bool>(true, true, true), Struct_1(1152f, -12539i, true)), Struct_2(Struct_1(-1805f, 2147483647i, false), vec3<bool>(true, false, false), Struct_1(-299f, 48603i, false)), Struct_2(Struct_1(728f, 62959i, false), vec3<bool>(false, true, true), Struct_1(-677f, 1i, true)), Struct_2(Struct_1(-326f, -1i, false), vec3<bool>(false, false, true), Struct_1(1041f, 0i, false)), Struct_2(Struct_1(-498f, 0i, true), vec3<bool>(true, true, true), Struct_1(1952f, -4043i, false)), Struct_2(Struct_1(-237f, i32(-2147483648), false), vec3<bool>(true, false, false), Struct_1(-720f, 1i, false)), Struct_2(Struct_1(-709f, -1i, false), vec3<bool>(true, false, false), Struct_1(-855f, 21232i, true)), Struct_2(Struct_1(139f, 12484i, true), vec3<bool>(true, false, false), Struct_1(631f, 123i, false)), Struct_2(Struct_1(447f, 2147483647i, true), vec3<bool>(false, false, false), Struct_1(-773f, 2147483647i, true)), Struct_2(Struct_1(910f, i32(-2147483648), false), vec3<bool>(false, true, true), Struct_1(251f, -1i, true)), Struct_2(Struct_1(970f, -1i, true), vec3<bool>(true, false, true), Struct_1(983f, 2147483647i, false)), Struct_2(Struct_1(-824f, i32(-2147483648), false), vec3<bool>(false, true, true), Struct_1(1399f, 1i, true)), Struct_2(Struct_1(-1402f, 2147483647i, true), vec3<bool>(false, false, true), Struct_1(-1180f, 1975i, true)));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: f32, arg_1: vec4<f32>, arg_2: vec3<bool>) -> u32 {
    let var_0 = abs(u_input.b);
    var var_1 = -2147483647i;
    let var_2 = global2[_wgslsmith_index_u32(~4294967295u, 13u)];
    let var_3 = Struct_1(1258f, firstTrailingBit(u_input.c.x), reverseBits(abs(abs(u_input.a.x))) != var_2.c.b);
    global0 = array<i32, 20>();
    return _wgslsmith_mult_u32(26165u, ~var_0) >> (select(var_0, abs(~20429u | abs(u_input.b)), false) % 32u);
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-2437f * -1425f), ~30475i, arg_1.a.c);
    global2 = array<Struct_2, 13>();
    let var_1 = ~(~34369i);
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(var_0.a, -345f, true)), -412f, true)) * 352f), 1736f)), _wgslsmith_f_op_f32(var_0.a - -1178f));
    let var_3 = global2[_wgslsmith_index_u32(u_input.b, 13u)];
    return ~abs(_wgslsmith_dot_vec3_i32(firstLeadingBit(~vec3<i32>(2147483647i, global0[_wgslsmith_index_u32(u_input.b, 20u)], 14650i)), u_input.a));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: i32) -> f32 {
    var var_0 = vec2<bool>(!(!(_wgslsmith_sub_u32(22567u, u_input.b) < 6729u)), arg_1.c);
    var var_1 = vec2<bool>(arg_1.c, all(vec2<bool>(!(!arg_1.c), !var_0.x)));
    global1 = array<i32, 2>();
    var var_2 = _wgslsmith_add_vec2_i32(u_input.c.zy, firstLeadingBit(u_input.a.zz));
    global0 = array<i32, 20>();
    return _wgslsmith_f_op_f32(f32(-1f) * -1203f);
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: u32) -> Struct_1 {
    global1 = array<i32, 2>();
    global1 = array<i32, 2>();
    global2 = array<Struct_2, 13>();
    global2 = array<Struct_2, 13>();
    let var_0 = ~firstTrailingBit(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, 150f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -636f), -1152f, 2371f, 1f), vec3<bool>(true, arg_2 <= arg_2, u_input.b >= 0u)));
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-539f)) - -1379f), _wgslsmith_f_op_f32(func_4(_wgslsmith_div_vec2_f32(vec2<f32>(-1733f, -101f), vec2<f32>(-468f, 775f)), Struct_1(996f, global0[_wgslsmith_index_u32(4294967295u, 20u)], true), func_3(-1578f, Struct_2(Struct_1(-837f, 2147483647i, false), vec3<bool>(false, true, true), Struct_1(1208f, arg_0, false))))))), _wgslsmith_f_op_f32(844f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1155f)))), _wgslsmith_add_i32(-(~firstLeadingBit(u_input.a.x)), u_input.a.x), false);
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    let var_0 = func_1(-u_input.c.x, ~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32((vec4<u32>(u_input.b, 4294967295u, u_input.b, u_input.b) >> (vec4<u32>(0u, 4294967295u, 1u, u_input.b) % vec4<u32>(32u))) | (vec4<u32>(0u, u_input.b, 4294967295u, 1u) ^ vec4<u32>(4294967295u, 4294967295u, u_input.b, u_input.b)), _wgslsmith_sub_vec4_u32(~vec4<u32>(0u, u_input.b, u_input.b, 68044u), vec4<u32>(4294967295u, 0u, u_input.b, 0u) | vec4<u32>(u_input.b, u_input.b, u_input.b, 4294967295u))), 2u)], min(_wgslsmith_sub_u32(~(u_input.b >> (1u % 32u)), select(u_input.b, 0u, any(vec3<bool>(true, true, true)))), max(4294967295u, _wgslsmith_mult_u32(u_input.b, ~u_input.b))));
    global1 = array<i32, 2>();
    global2 = array<Struct_2, 13>();
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(floor(1086f)), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, ~u_input.b & reverseBits(u_input.b)), 20u)], !var_0.c | true), vec3<bool>(!(_wgslsmith_f_op_f32(-arg_1.a) > _wgslsmith_f_op_f32(f32(-1f) * -1000f)), false, false), Struct_1(-777f, 2147483647i, arg_1.c));
    var var_2 = !select(!all(select(arg_0, vec2<bool>(var_1.b.x, false), vec2<bool>(var_1.b.x, true))), false, func_1(u_input.a.x, min(-2855i, global1[_wgslsmith_index_u32(u_input.b, 2u)]) ^ var_1.c.b, u_input.b).c);
    return Struct_1(944f, min(~(-1i), arg_1.b), (reverseBits(~2147483647i) >> (abs(min(4294967295u, u_input.b)) % 32u)) != firstTrailingBit(~var_0.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(vec2<bool>(true, true), func_1(global0[_wgslsmith_index_u32(u_input.b, 20u)], -25054i, u_input.b), -178f);
    var var_1 = Struct_1(var_0.a, -u_input.a.x, all(vec3<bool>(true, any(vec4<bool>(true, true, true, var_0.c)), any(vec3<bool>(false, var_0.c, var_0.c)))) & true);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1498f, _wgslsmith_f_op_f32(-var_1.a), var_1.a, _wgslsmith_f_op_f32(min(-1000f, -1718f)))))));
    global0 = array<i32, 20>();
    global1 = array<i32, 2>();
    global2 = array<Struct_2, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.wx, var_0.b, reverseBits(~vec3<u32>(u_input.b, ~4294967295u, ~u_input.b)));
}

