struct Struct_1 {
    a: u32,
    b: i32,
    c: bool,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec3<f32>,
    d: vec4<u32>,
    e: vec3<f32>,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: Struct_3,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 5> = array<vec2<f32>, 5>(vec2<f32>(269f, -435f), vec2<f32>(1146f, 396f), vec2<f32>(177f, -104f), vec2<f32>(-823f, -1000f), vec2<f32>(-361f, 1513f));

var<private> global1: vec4<i32> = vec4<i32>(0i, -1i, 9211i, 48302i);

var<private> global2: array<bool, 8> = array<bool, 8>(true, true, false, true, true, false, true, true);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: bool) -> vec4<bool> {
    global0 = array<vec2<f32>, 5>();
    global1 = reverseBits(-vec4<i32>(-1i, ~_wgslsmith_add_i32(global1.x, 28342i), abs(_wgslsmith_mult_i32(global1.x, 2147483647i)), arg_0));
    let var_0 = global1.x;
    global0 = array<vec2<f32>, 5>();
    let var_1 = select(select(select(vec3<bool>(global2[_wgslsmith_index_u32(reverseBits(u_input.a.x), 8u)], arg_1, arg_1), !(!vec3<bool>(true, arg_1, global2[_wgslsmith_index_u32(87291u, 8u)])), vec3<bool>(true, any(vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 8u)], global2[_wgslsmith_index_u32(u_input.a.x, 8u)], true)), u_input.a.x != u_input.a.x)), vec3<bool>(true, true, any(select(vec2<bool>(true, true), vec2<bool>(false, arg_1), global2[_wgslsmith_index_u32(u_input.a.x, 8u)]))), all(select(select(vec4<bool>(false, global2[_wgslsmith_index_u32(24200u, 8u)], global2[_wgslsmith_index_u32(u_input.a.x, 8u)], arg_1), vec4<bool>(global2[_wgslsmith_index_u32(37632u, 8u)], arg_1, arg_1, false), global2[_wgslsmith_index_u32(96u, 8u)]), select(vec4<bool>(false, false, arg_1, arg_1), vec4<bool>(global2[_wgslsmith_index_u32(0u, 8u)], true, false, arg_1), vec4<bool>(true, global2[_wgslsmith_index_u32(65893u, 8u)], false, global2[_wgslsmith_index_u32(u_input.a.x, 8u)])), !global2[_wgslsmith_index_u32(2076u, 8u)]))), select(!select(select(vec3<bool>(arg_1, arg_1, global2[_wgslsmith_index_u32(u_input.a.x, 8u)]), vec3<bool>(arg_1, global2[_wgslsmith_index_u32(0u, 8u)], arg_1), vec3<bool>(false, arg_1, arg_1)), vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 8u)], arg_1, true), u_input.a.x == u_input.a.x), vec3<bool>(arg_1, !arg_1, any(vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.a.x, 8u)], false, true)) | !global2[_wgslsmith_index_u32(u_input.a.x, 8u)]), vec3<bool>(all(!vec2<bool>(false, global2[_wgslsmith_index_u32(0u, 8u)])), _wgslsmith_mult_u32(u_input.a.x, 1u) == 0u, true)), all(select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, arg_1), true), !(!vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.a.x, 8u)], arg_1)), true)));
    return !(!select(vec4<bool>(arg_1, global1.x < global1.x, var_1.x, arg_1), vec4<bool>(var_1.x, all(vec4<bool>(true, var_1.x, global2[_wgslsmith_index_u32(u_input.a.x, 8u)], var_1.x)), false, var_1.x), true));
}

fn func_2() -> Struct_4 {
    global0 = array<vec2<f32>, 5>();
    var var_0 = Struct_3(Struct_2(vec4<i32>(-2147483647i, 1i, global1.x | _wgslsmith_dot_vec3_i32(global1.xxz, global1.wwx), global1.x)), global1.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1969f, -549f, -785f) + vec3<f32>(937f, -1000f, -1088f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1443f, -1411f, 1000f), vec3<f32>(-1672f, -419f, 1184f))))) * vec3<f32>(_wgslsmith_f_op_f32(abs(-281f)), -197f, _wgslsmith_f_op_f32(-1000f + -1168f))), reverseBits(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 64094u, u_input.a.x), vec4<u32>(u_input.a.x, 1478u, u_input.a.x, u_input.a.x) ^ vec4<u32>(110415u, 1u, u_input.a.x, 1u))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1f, 1f, 1f))));
    let var_1 = Struct_5(~(~(~(u_input.a >> (vec2<u32>(111575u, 2895u) % vec2<u32>(32u))))), func_3(firstLeadingBit(-_wgslsmith_dot_vec4_i32(vec4<i32>(777i, 2147483647i, 31323i, global1.x), vec4<i32>(2147483647i, var_0.a.a.x, var_0.b, -1i))), global2[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(50778u, 0u, ~24163u), 8u)]));
    var var_2 = -1027f;
    var var_3 = vec3<i32>(2147483647i, 0i, ~select(_wgslsmith_sub_i32(firstLeadingBit(-27375i), -global1.x), var_0.a.a.x, true));
    return Struct_4(countOneBits(_wgslsmith_dot_vec3_i32(var_0.a.a.zxz, vec3<i32>(global1.x, var_0.a.a.x, -9379i)) >> (u_input.a.x % 32u)), var_1.b.x, Struct_3(Struct_2(vec4<i32>(_wgslsmith_div_i32(global1.x, 9269i), -global1.x, -5323i, var_0.b ^ 0i)), var_0.a.a.x, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.e.x, 982f, var_0.c.x)) + _wgslsmith_f_op_vec3_f32(-var_0.c)))), select(countOneBits(vec4<u32>(var_0.d.x, 4294967295u, var_0.d.x, 57651u)), _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(var_0.d, var_0.d), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, var_0.d.x, var_0.d.x), var_0.d)), vec4<bool>(func_3(var_0.a.a.x, var_1.b.x).x, var_1.b.x, global2[_wgslsmith_index_u32(var_1.a.x, 8u)], func_3(var_0.a.a.x, false).x)), vec3<f32>(var_0.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(208f + var_0.c.x), var_0.e.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.c.x + var_0.c.x), _wgslsmith_f_op_f32(-var_0.e.x)))));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: Struct_4, arg_3: Struct_4) -> i32 {
    global2 = array<bool, 8>();
    global0 = array<vec2<f32>, 5>();
    let var_0 = 4294967295u;
    global0 = array<vec2<f32>, 5>();
    global1 = -arg_1.c.a.a | -(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-20041i, -1i, -6837i, arg_3.c.b), vec4<i32>(global1.x, global1.x, global1.x, arg_2.c.b)), ~arg_2.c.a.a) << (vec4<u32>(arg_2.c.d.x, min(arg_1.c.d.x, 0u), 1u, u_input.a.x) % vec4<u32>(32u)));
    return -(~15083i);
}

fn func_1() -> Struct_5 {
    var var_0 = u_input.a.x;
    global1 = _wgslsmith_mod_vec4_i32(vec4<i32>(global1.x, func_4(select(vec2<bool>(global2[_wgslsmith_index_u32(0u, 8u)], true), select(vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 8u)], global2[_wgslsmith_index_u32(u_input.a.x, 8u)]), vec2<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 8u)]), true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 8u)], true))), func_2(), func_2(), Struct_4(_wgslsmith_clamp_i32(27553i, global1.x, 0i), true, Struct_3(Struct_2(vec4<i32>(0i, 0i, global1.x, -2147483647i)), global1.x, vec3<f32>(-114f, -1888f, 162f), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec3<f32>(1360f, 243f, 480f)))), 1i, global1.x), abs(vec4<i32>(~1i, min(global1.x, global1.x), global1.x, 13311i)));
    global2 = array<bool, 8>();
    var_0 = u_input.a.x;
    global1 = abs(vec4<i32>(global1.x, -_wgslsmith_dot_vec3_i32(global1.yzz ^ vec3<i32>(global1.x, -22314i, -47011i), ~global1.wyy), _wgslsmith_dot_vec4_i32(-(~vec4<i32>(global1.x, global1.x, -9993i, global1.x)), ~(~vec4<i32>(global1.x, -4453i, 0i, global1.x))), 50808i));
    return Struct_5(~vec2<u32>(21316u, u_input.a.x), select(!select(!vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 8u)], global2[_wgslsmith_index_u32(4294967295u, 8u)], true, false), vec4<bool>(true, global2[_wgslsmith_index_u32(71387u, 8u)], true, false), func_3(global1.x, false).x), !select(!vec4<bool>(global2[_wgslsmith_index_u32(0u, 8u)], false, true, global2[_wgslsmith_index_u32(73437u, 8u)]), !vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.a.x, 8u)], global2[_wgslsmith_index_u32(u_input.a.x, 8u)], true), vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.a.x, 8u)], global2[_wgslsmith_index_u32(0u, 8u)], global2[_wgslsmith_index_u32(u_input.a.x, 8u)])), select(!select(vec4<bool>(true, global2[_wgslsmith_index_u32(60415u, 8u)], true, false), vec4<bool>(global2[_wgslsmith_index_u32(67570u, 8u)], global2[_wgslsmith_index_u32(57462u, 8u)], false, global2[_wgslsmith_index_u32(u_input.a.x, 8u)]), true), !vec4<bool>(true, true, false, global2[_wgslsmith_index_u32(4294967295u, 8u)]), global2[_wgslsmith_index_u32(min(86076u, _wgslsmith_mult_u32(24928u, 29660u)), 8u)])));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 5>();
    global0 = array<vec2<f32>, 5>();
    let var_0 = u_input.a;
    let var_1 = max(vec2<u32>(var_0.x, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(44156u, 38341u, 0u), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, var_0.x, u_input.a.x), vec3<u32>(29301u, u_input.a.x, 0u), vec3<u32>(4451u, u_input.a.x, 43596u))), ~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, 0u, 4294967295u), vec3<u32>(22177u, u_input.a.x, var_0.x)))), ~_wgslsmith_div_vec2_u32(abs(var_0), u_input.a) | vec2<u32>(4294967295u, u_input.a.x));
    global2 = array<bool, 8>();
    let var_2 = global1.x;
    var var_3 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-832f)) * 1f))), reverseBits(global1.x) >> (countOneBits(0u) % 32u), abs(~(abs(var_3.a.x) >> (4294967295u % 32u))), global1.x, max(_wgslsmith_sub_vec4_u32(~vec4<u32>(20637u, 20876u, var_3.a.x, var_3.a.x), func_2().c.d), ~firstLeadingBit(vec4<u32>(12526u, 1u, 4294967295u, var_1.x))) | reverseBits(_wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(44770u, var_0.x, var_0.x, 40704u)), ~vec4<u32>(var_1.x, 0u, 1u, 2005u))));
}

