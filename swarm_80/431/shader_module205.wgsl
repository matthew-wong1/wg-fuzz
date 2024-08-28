struct Struct_1 {
    a: bool,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 25> = array<bool, 25>(true, true, true, false, true, false, true, true, false, true, false, true, true, true, true, false, true, true, true, true, true, false, false, true, true);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: u32) -> f32 {
    let var_0 = vec3<i32>((_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.e.x, u_input.d.x, 12967i), u_input.a) << (_wgslsmith_sub_u32(4294967295u, u_input.b.x << (u_input.c % 32u)) % 32u)) | ~(-u_input.e.x << (~u_input.c % 32u)), abs(u_input.e.x), firstLeadingBit(_wgslsmith_add_i32(u_input.e.x, u_input.d.x)) ^ _wgslsmith_sub_i32(_wgslsmith_mult_i32(0i, -u_input.d.x), _wgslsmith_mod_i32(-u_input.e.x, max(2147483647i, u_input.e.x))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(699f, _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(890f))), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -284f)) + _wgslsmith_f_op_f32(1603f - _wgslsmith_f_op_f32(min(-735f, -1631f))))));
    var var_2 = select(select(!vec3<bool>(!global0[_wgslsmith_index_u32(33714u, 25u)], global0[_wgslsmith_index_u32(~u_input.c, 25u)], all(vec4<bool>(global0[_wgslsmith_index_u32(arg_0, 25u)], false, true, true))), !(!(!vec3<bool>(global0[_wgslsmith_index_u32(1189u, 25u)], true, false))), vec3<bool>(select(any(vec4<bool>(global0[_wgslsmith_index_u32(arg_0, 25u)], false, false, false)), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b.x, 1u), 25u)], select(false, true, global0[_wgslsmith_index_u32(4294967295u, 25u)])), all(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 25u)], false)), (u_input.b.x | 1u) == arg_0)), select(vec3<bool>(1u < countOneBits(arg_0), true, any(vec3<bool>(global0[_wgslsmith_index_u32(26619u, 25u)], global0[_wgslsmith_index_u32(arg_0, 25u)], false))), vec3<bool>(true, false, _wgslsmith_f_op_f32(-var_1.x) > var_1.x), ~(~u_input.c) <= 1u), !global0[_wgslsmith_index_u32(max(~4294967295u, 1u), 25u)]);
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(535f, var_1.x)), 742f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + var_1.x)))), _wgslsmith_f_op_f32(var_1.x * 888f));
    let var_3 = Struct_1(any(vec3<bool>(var_2.x, var_1.x >= _wgslsmith_f_op_f32(max(635f, var_1.x)), !(!var_2.x))), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-1000f)), -1050f)), -752f, _wgslsmith_f_op_f32(select(-1276f, _wgslsmith_f_op_f32(min(787f, -472f)), var_2.x))));
    return -1095f;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    var var_0 = arg_0;
    var_0 = Struct_1(arg_0.a, _wgslsmith_f_op_vec3_f32(-arg_1.b));
    let var_1 = Struct_1(!global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(u_input.b, vec3<u32>(12089u, u_input.b.x, 63415u)), ~u_input.b), u_input.b), 25u)], _wgslsmith_f_op_vec3_f32(arg_0.b + vec3<f32>(_wgslsmith_f_op_f32(step(-1051f, _wgslsmith_f_op_f32(func_3(0u)))), _wgslsmith_f_op_f32(func_3(14745u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1297f, 491f, arg_0.a))))));
    var var_2 = any(!(!(!(!vec3<bool>(true, arg_1.a, var_0.a)))));
    var_0 = arg_1;
    return -(firstLeadingBit(u_input.e.x) << (_wgslsmith_dot_vec3_u32(u_input.b, _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, 19059u, u_input.c), u_input.b)) % 32u)) != _wgslsmith_sub_i32(_wgslsmith_sub_i32(-4564i, _wgslsmith_mult_i32(-u_input.d.x, 41291i)), -(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, 2147483647i, u_input.d.x, -9403i), u_input.a)));
}

fn func_1(arg_0: vec2<f32>, arg_1: u32, arg_2: f32) -> Struct_1 {
    global0 = array<bool, 25>();
    global0 = array<bool, 25>();
    var var_0 = min(_wgslsmith_mod_u32(~_wgslsmith_div_u32(u_input.c, 43159u), 4294967295u), u_input.c) | 13085u;
    let var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 * arg_0.x) + _wgslsmith_f_op_f32(f32(-1f) * -617f))))));
    var_0 = 0u;
    return Struct_1(!func_2(Struct_1(arg_1 <= 4294967295u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, -699f, var_1.x))), Struct_1(select(false, true, global0[_wgslsmith_index_u32(u_input.b.x, 25u)]), vec3<f32>(arg_2, -719f, arg_2))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, -1532f, arg_2) - vec3<f32>(arg_0.x, 1605f, var_1.x))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec4<f32>) -> f32 {
    var var_0 = ~_wgslsmith_clamp_vec4_i32(u_input.a, _wgslsmith_div_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(-1i, -58999i, 53827i, u_input.e.x), u_input.a ^ max(u_input.a, vec4<i32>(u_input.a.x, 387i, -26545i, u_input.d.x))), ~vec4<i32>(~u_input.d.x, max(0i, u_input.e.x), _wgslsmith_dot_vec2_i32(u_input.e, vec2<i32>(u_input.d.x, 2147483647i)), ~u_input.a.x));
    var var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0.b.x, arg_2.x), vec2<f32>(109f, 379f)))))) * arg_0.b.xy)));
    var var_2 = Struct_1(global0[_wgslsmith_index_u32(~4294967295u, 25u)], _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_div_f32(arg_0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -814f)), -785f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-374f - -1319f))))));
    let var_3 = _wgslsmith_sub_u32(abs(u_input.b.x), _wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.b.x, 0u, 4294967295u), ~vec4<u32>(u_input.c, 95640u, u_input.c, 210u)), vec4<u32>(~u_input.c, ~(~38450u), 12923u, u_input.b.x)));
    let var_4 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u << (u_input.b.x % 32u), 1u, firstTrailingBit(var_3), firstLeadingBit(u_input.b.x)) | (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, var_3, u_input.b.x, 31290u), vec4<u32>(1u, u_input.c, u_input.c, var_3), vec4<u32>(1u, var_3, u_input.b.x, 66036u)) << (abs(vec4<u32>(var_3, var_3, 4294967295u, 20245u)) % vec4<u32>(32u))), ~countOneBits(vec4<u32>(11572u, u_input.b.x, 57869u, u_input.b.x)) & ~(~vec4<u32>(22264u, u_input.c, u_input.c, 0u))), select(~vec4<u32>(1u, ~37001u, var_3, var_3 & 0u), vec4<u32>(u_input.c, _wgslsmith_add_u32(u_input.c, var_3), u_input.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_3), ~u_input.b.zz)), true)), 25u)];
    return func_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(min(-1076f, 336f)), _wgslsmith_f_op_f32(-arg_0.b.x)), arg_0.b.xy)))), 4294967295u ^ (reverseBits(var_3) >> (~(~u_input.c) % 32u)), -2152f).b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 25>();
    global0 = array<bool, 25>();
    let var_0 = _wgslsmith_mult_u32(select(~(~1u), min(u_input.b.x, 23192u), global0[_wgslsmith_index_u32(~(u_input.c & 1u) & u_input.b.x, 25u)]), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.b.x), vec2<u32>(17640u, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b.x, u_input.c), firstLeadingBit(u_input.b.zz)))));
    global0 = array<bool, 25>();
    let var_1 = Struct_1(18869u < u_input.c, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -716f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_1(vec2<f32>(1844f, 525f), u_input.c, 1050f), vec3<bool>(global0[_wgslsmith_index_u32(1u, 25u)], global0[_wgslsmith_index_u32(36207u, 25u)], false), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1208f, -519f, -239f, -714f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1147f), -203f, true))))));
    var var_2 = -u_input.d.x;
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.b.x, var_1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.x - var_1.b.x) + var_1.b.x), _wgslsmith_f_op_f32(f32(-1f) * -223f)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 869f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(u_input.c << (1u % 32u))) + _wgslsmith_f_op_f32(var_1.b.x - _wgslsmith_f_op_f32(step(940f, var_1.b.x)))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_1.b.x, 716f, true)), var_1.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(417f + var_1.b.x) + var_1.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.b.x)) + _wgslsmith_f_op_f32(f32(-1f) * -1323f)))));
    var var_4 = vec3<bool>(var_1.a, var_1.a, true);
    let var_5 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(-1749f, 47510u, u_input.d);
}

