struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: f32,
    d: f32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 26> = array<bool, 26>(true, true, false, true, false, true, true, false, false, true, true, false, false, true, true, true, true, true, false, false, false, false, false, false, true, false);

var<private> global1: bool = true;

var<private> global2: array<Struct_3, 9>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> u32 {
    global0 = array<bool, 26>();
    var var_0 = 1u;
    var var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(abs(-580f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1208f + -1419f), -848f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-543f + -2279f), -102f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -755f) - _wgslsmith_f_op_f32(abs(-1209f))))), _wgslsmith_f_op_f32(-1f)), !global0[_wgslsmith_index_u32(20743u, 26u)], -1294f, _wgslsmith_f_op_f32(f32(-1f) * -559f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1736f, 427f, 158f, 281f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(919f, 1139f, -1090f, 413f) + vec4<f32>(832f, -2856f, 1476f, 917f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-521f, 1041f, -2082f, -154f), vec4<f32>(-649f, -137f, 1015f, 2069f), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 26u)], global0[_wgslsmith_index_u32(u_input.b.x, 26u)], true))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1353f, 284f, 1000f, -1785f) + vec4<f32>(844f, 1000f, 1735f, 578f))), global0[_wgslsmith_index_u32(select(4842u, 355u, global0[_wgslsmith_index_u32(u_input.b.x, 26u)]), 26u)] & any(vec3<bool>(global0[_wgslsmith_index_u32(0u, 26u)], false, true))))));
    var var_2 = vec2<i32>(-_wgslsmith_clamp_i32(2147483647i, min(1i, 41349i), ~1i) >> (countOneBits(15175u) % 32u), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(_wgslsmith_add_i32(-8248i, 46839i), ~(-17407i))), ~_wgslsmith_div_i32(abs(-28735i), -53099i)));
    var_2 = _wgslsmith_clamp_vec2_i32(-(~((vec2<i32>(var_2.x, var_2.x) << (u_input.b.zz % vec2<u32>(32u))) | min(vec2<i32>(-64484i, -1i), vec2<i32>(var_2.x, 1i)))), ~select(vec2<i32>(var_2.x, var_2.x), _wgslsmith_add_vec2_i32(vec2<i32>(var_2.x, var_2.x), vec2<i32>(27070i, -15052i)), vec2<bool>(global0[_wgslsmith_index_u32(1u, 26u)], var_1.b)) & ~abs(firstLeadingBit(vec2<i32>(var_2.x, var_2.x))), _wgslsmith_add_vec2_i32(countOneBits(~max(vec2<i32>(var_2.x, 1i), vec2<i32>(var_2.x, var_2.x))), vec2<i32>(var_2.x, -8925i) ^ abs(~vec2<i32>(-1i, var_2.x))));
    return ~91531u;
}

fn func_2(arg_0: u32, arg_1: i32) -> i32 {
    var var_0 = vec4<u32>(_wgslsmith_mult_u32(u_input.a, ~_wgslsmith_clamp_u32(u_input.a, _wgslsmith_mult_u32(0u, u_input.a), 81798u)), u_input.b.x, 1u, _wgslsmith_dot_vec3_u32(u_input.b, min(~vec3<u32>(48831u, 54829u, u_input.b.x), u_input.b) & ~u_input.b));
    var var_1 = _wgslsmith_add_vec2_i32(~_wgslsmith_add_vec2_i32(vec2<i32>(arg_1, -29822i) | vec2<i32>(16906i, arg_1), countOneBits(vec2<i32>(arg_1, arg_1))) << ((~vec2<u32>(40868u, 0u) << (~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b.x, 0u), u_input.b.yz) % vec2<u32>(32u))) % vec2<u32>(32u)), ~(vec2<i32>(-1i) * -_wgslsmith_add_vec2_i32(vec2<i32>(arg_1, arg_1), vec2<i32>(arg_1, arg_1))));
    var_0 = vec4<u32>(~max(u_input.b.x, max(~60471u, _wgslsmith_sub_u32(var_0.x, u_input.b.x))), ~_wgslsmith_div_u32(u_input.b.x, select(countOneBits(61218u), _wgslsmith_mod_u32(1u, 50828u), true)), _wgslsmith_mod_u32(func_3(), u_input.b.x), _wgslsmith_mult_u32(12021u, _wgslsmith_dot_vec2_u32(max(vec2<u32>(40895u, arg_0), u_input.b.yz), firstTrailingBit(vec2<u32>(1u, arg_0)))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(249f, -1048f, 1045f, 1130f))))), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-801f))) - _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(floor(1359f))))), -1691f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1485f, 1289f, 1056f, 1815f), vec4<f32>(1099f, -1000f, -929f, -1020f), false)))), vec4<f32>(-912f, _wgslsmith_f_op_f32(-608f - -446f), _wgslsmith_f_op_f32(1384f + -183f), _wgslsmith_f_op_f32(847f - -1057f))))));
    var var_3 = -605f;
    return arg_1;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: f32, arg_3: Struct_1) -> u32 {
    let var_0 = max(_wgslsmith_mult_i32(~(-10916i), func_2(1u, ~1i)), ~abs(~abs(18957i)));
    var var_1 = 4294967295u;
    let var_2 = abs(firstTrailingBit(vec3<u32>(19408u, 0u >> (0u % 32u), ~4294967295u) | u_input.b));
    var_1 = ~_wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.b.x, ~0u, 1u, 0u), arg_1, !(!global0[_wgslsmith_index_u32(var_2.x, 26u)])), ~vec4<u32>(~4294967295u, arg_1.x, ~66511u, select(u_input.a, 94377u, arg_0.b)));
    var var_3 = ~(-vec2<i32>(-2147483647i >> (var_2.x % 32u), -10874i)) ^ firstLeadingBit(vec2<i32>(max(31127i, var_0), 12278i));
    return ~arg_1.x;
}

fn func_4(arg_0: u32, arg_1: bool) -> Struct_1 {
    var var_0 = global2[_wgslsmith_index_u32(u_input.b.x, 9u)];
    global1 = false;
    let var_1 = -((func_2(1u << (arg_0 % 32u), min(1i, -1i)) ^ abs(1i)) ^ _wgslsmith_sub_i32(countOneBits(-1i), 2768i));
    global0 = array<bool, 26>();
    var var_2 = !var_0.a.b == arg_1;
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 26>();
    var var_0 = Struct_3(func_4(1u, (func_1(Struct_1(vec4<f32>(-1068f, 1334f, 1938f, 592f), false, 141f, -367f, vec4<f32>(-455f, 448f, 2167f, -1586f)), vec4<u32>(1u, 4294967295u, 51325u, 1u), -140f, Struct_1(vec4<f32>(-216f, -2015f, -604f, 667f), true, -177f, 1956f, vec4<f32>(878f, -1395f, 606f, -1000f))) < ~u_input.b.x) & !global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(27288u, u_input.b.x, 110035u), u_input.b), 26u)]), 2061f);
    global2 = array<Struct_3, 9>();
    let var_1 = !select(!select(vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 26u)]), select(vec2<bool>(false, true), vec2<bool>(false, var_0.a.b), false), global0[_wgslsmith_index_u32(47572u, 26u)]), !(!(!vec2<bool>(true, global0[_wgslsmith_index_u32(63172u, 26u)]))), vec2<bool>(!all(vec3<bool>(var_0.a.b, var_0.a.b, global0[_wgslsmith_index_u32(2169u, 26u)])), !(!global0[_wgslsmith_index_u32(26885u, 26u)])));
    let var_2 = vec2<f32>(916f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(136f, -127f)) * func_4(u_input.a, false).e.x));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b * var_2.x) + func_4(~u_input.a, global0[_wgslsmith_index_u32(reverseBits(77855u), 26u)]).a.x);
    global0 = array<bool, 26>();
    let var_4 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(~1i, _wgslsmith_f_op_vec4_f32(-var_0.a.a));
}

