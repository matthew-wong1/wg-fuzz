struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec3<u32>,
    d: u32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(1u, 73804u, 1u, 16790u);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec2<i32>, arg_1: u32, arg_2: f32, arg_3: u32) -> u32 {
    let var_0 = global0.yy;
    let var_1 = _wgslsmith_f_op_f32(-arg_2);
    var var_2 = Struct_1(0u >> (_wgslsmith_mod_u32(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, global0.x, arg_1, 41021u), vec4<u32>(arg_3, arg_1, 1u, 1u))), 1u) % 32u), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, true, false), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, false, true), any(vec2<bool>(true, false))), !select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), true)), ~(~(~(~vec3<u32>(4294967295u, arg_3, 1u)))), var_0.x, vec2<u32>(global0.x, ~global0.x));
    let var_3 = Struct_1(0u << (var_2.d % 32u), select(!var_2.b, !vec4<bool>(true, false, all(vec2<bool>(false, var_2.b.x)), all(vec4<bool>(true, var_2.b.x, var_2.b.x, true))), var_2.b.x), vec3<u32>(~61943u, firstLeadingBit(~0u) << (firstTrailingBit(_wgslsmith_div_u32(34722u, 4294967295u)) % 32u), (4294967295u >> (arg_3 % 32u)) | 0u), 1u, vec2<u32>(~arg_3, arg_3) | (global0.yw << (vec2<u32>(max(global0.x, arg_3), _wgslsmith_dot_vec3_u32(global0.yzx, global0.yyz)) % vec2<u32>(32u))));
    var var_4 = _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a >> (22894u % 32u), ~select(u_input.a, u_input.a, var_3.b.x)), (~vec2<i32>(arg_0.x, -49739i) << ((var_2.c.xx | var_3.e) % vec2<u32>(32u))) << (vec2<u32>(41012u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_0.x, var_2.a), global0.zzx)) % vec2<u32>(32u))), -vec2<i32>(~(~u_input.a), _wgslsmith_div_i32(-2147483647i, -2147483647i)));
    return ~1u;
}

fn func_2(arg_0: i32, arg_1: u32) -> f32 {
    var var_0 = Struct_1(_wgslsmith_clamp_u32(abs(1u), _wgslsmith_sub_u32(arg_1, _wgslsmith_sub_u32(_wgslsmith_div_u32(4294967295u, global0.x), _wgslsmith_sub_u32(0u, arg_1))), ~4294967295u ^ ~func_3(vec2<i32>(1i, 1i), global0.x, -1784f, 4294967295u)), select(vec4<bool>(true, true, func_3(vec2<i32>(1i, arg_0), global0.x, 1000f, global0.x) != _wgslsmith_add_u32(arg_1, 37153u), !all(vec2<bool>(true, false))), vec4<bool>(true, true, true, true), !any(vec2<bool>(true, true))), global0.xyx, arg_1, ~vec2<u32>(~(~56726u), global0.x));
    var var_1 = Struct_1(abs(arg_1), select(var_0.b, var_0.b, var_0.b), firstLeadingBit(var_0.c), global0.x, var_0.c.zy);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-108f, 810f)))), _wgslsmith_f_op_f32(f32(-1f) * -250f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1682f))))));
    global0 = select(_wgslsmith_add_vec4_u32(~(~vec4<u32>(31451u, 58642u, var_1.d, var_0.e.x)) | ~vec4<u32>(global0.x, 33526u, arg_1, 47163u), ~(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.c.x, 1u, global0.x, arg_1), vec4<u32>(57616u, 71772u, 70472u, 0u), vec4<u32>(229u, var_1.a, global0.x, 8612u)) >> ((vec4<u32>(1u, arg_1, arg_1, 57635u) | vec4<u32>(62932u, 1u, 1u, 4294967295u)) % vec4<u32>(32u)))), ~(~_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(28516u, var_0.c.x, var_0.a, 1u), vec4<u32>(var_0.a, var_0.c.x, var_1.a, global0.x)), vec4<u32>(4294967295u, var_0.d, 11207u, 60925u) >> (vec4<u32>(4294967295u, var_0.a, arg_1, arg_1) % vec4<u32>(32u)))), var_0.b.x);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x));
    return var_3;
}

fn func_1() -> u32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-586f)))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1181f - -232f)))) + _wgslsmith_f_op_f32(-308f + _wgslsmith_f_op_f32(func_2(u_input.a | 21383i, global0.x)))), _wgslsmith_f_op_f32(f32(-1f) * -417f), _wgslsmith_f_op_f32(1200f - 1164f));
    let var_1 = 1000f < _wgslsmith_f_op_f32(863f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(2611f, 287f))) - var_0.x));
    let var_2 = Struct_1(firstLeadingBit(func_3(vec2<i32>(u_input.a, u_input.a), firstTrailingBit(global0.x), var_0.x, global0.x) << (~(global0.x >> (4294967295u % 32u)) % 32u)), !(!vec4<bool>(any(vec4<bool>(true, var_1, var_1, var_1)), any(vec3<bool>(true, var_1, var_1)), true, var_1)), global0.xwx, (countOneBits(global0.x & 38062u) >> (reverseBits(global0.x) % 32u)) >> (_wgslsmith_div_u32(~(~1493u), _wgslsmith_div_u32(global0.x, ~10646u)) % 32u), ~(~min(global0.yx, _wgslsmith_div_vec2_u32(vec2<u32>(global0.x, global0.x), vec2<u32>(global0.x, global0.x)))));
    let var_3 = 4294967295u;
    global0 = vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(max(vec4<u32>(var_3, var_2.e.x, global0.x, var_2.a), vec4<u32>(1u, 4294967295u, 40473u, global0.x)), ~vec4<u32>(var_3, var_2.c.x, 0u, global0.x)) | ~_wgslsmith_sub_vec4_u32(vec4<u32>(var_2.c.x, 4294967295u, 1u, 4294967295u), vec4<u32>(var_2.a, 1u, global0.x, var_3)), ~select(vec4<u32>(global0.x, 0u, var_3, global0.x), vec4<u32>(1717u, 1u, 1u, 34678u), var_2.b.x) << (vec4<u32>(~var_3, var_2.d, ~22327u, ~var_3) % vec4<u32>(32u))), 4294967295u, _wgslsmith_mult_u32(_wgslsmith_mult_u32(global0.x, _wgslsmith_dot_vec3_u32(max(vec3<u32>(10806u, global0.x, global0.x), vec3<u32>(68209u, 0u, 13700u)), select(vec3<u32>(4294967295u, 1u, var_2.e.x), var_2.c, var_2.b.wxy))), var_2.d), var_3);
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(global0.x, _wgslsmith_mult_u32(34799u >> (global0.x % 32u), 4294967295u)), (global0.x >> (_wgslsmith_mult_u32(global0.x, global0.x) % 32u)) >> (_wgslsmith_clamp_u32(_wgslsmith_add_u32(global0.x, global0.x), 1u, _wgslsmith_mult_u32(global0.x, 4294967295u)) % 32u)), countOneBits(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, global0.x, 21167u, global0.x), vec4<u32>(global0.x, global0.x, global0.x, global0.x)), func_1()) ^ 4294967295u), reverseBits(global0.x >> (global0.x % 32u)), max(0u, 14575u));
    global0 = ~(~(vec4<u32>(_wgslsmith_mult_u32(global0.x, 25294u), ~global0.x, _wgslsmith_sub_u32(726u, global0.x), global0.x ^ global0.x) ^ abs(_wgslsmith_sub_vec4_u32(vec4<u32>(global0.x, global0.x, 0u, 35704u), vec4<u32>(global0.x, global0.x, 68994u, global0.x)))));
    var var_0 = global0.x;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1021f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(625f, -920f)))))) * 390f);
    var_0 = global0.x ^ _wgslsmith_div_u32(~((global0.x << (1u % 32u)) ^ abs(global0.x)), (global0.x | 32895u) >> (global0.x % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-295f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1, var_1))))), ~2147483647i, abs(vec4<u32>(countOneBits(firstLeadingBit(1u)), ~0u, _wgslsmith_div_u32(~global0.x, func_3(vec2<i32>(-34201i, u_input.a), global0.x, -1722f, 86665u)), _wgslsmith_dot_vec2_u32(firstLeadingBit(global0.xw), global0.xx))));
}

