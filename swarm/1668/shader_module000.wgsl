struct Struct_1 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_1, 17>;

var<private> global2: f32 = 2088f;

var<private> global3: f32;

var<private> global4: vec3<u32> = vec3<u32>(52340u, 0u, 0u);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>) -> bool {
    let var_0 = select(vec4<bool>(false, all(select(vec2<bool>(true, arg_0.a), vec2<bool>(false, false), false)), arg_0.a, arg_0.a), !(!vec4<bool>(false, arg_0.a, arg_0.a, false & arg_0.a)), vec4<bool>(arg_0.a, !(_wgslsmith_div_u32(global4.x, 3732u) <= (4294967295u ^ global4.x)), any(vec2<bool>(all(vec2<bool>(false, true)), global4.x > 32819u)), any(vec4<bool>(!arg_0.a, any(vec3<bool>(arg_0.a, arg_0.a, false)), select(arg_0.a, true, true), any(vec3<bool>(arg_0.a, arg_0.a, true))))));
    global0 = _wgslsmith_f_op_f32(floor(-341f));
    let var_1 = -u_input.d.ww;
    let var_2 = Struct_1(4294967295u >= ~global4.x, abs(-43295i));
    var var_3 = var_2;
    return !(~global4.x != 1u);
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: vec4<f32>, arg_3: f32) -> Struct_1 {
    var var_0 = select(vec4<bool>(all(!vec3<bool>(arg_1, arg_1, arg_1)), false, !(~0u == ~global4.x), true), !(!vec4<bool>(true, any(vec3<bool>(true, true, true)), any(vec2<bool>(false, false)), true)), select(vec4<bool>(any(vec4<bool>(true, arg_1, arg_1, arg_1)), arg_1, false, false), vec4<bool>(true, !arg_1 | arg_1, any(select(vec2<bool>(arg_1, true), vec2<bool>(arg_1, arg_1), vec2<bool>(true, true))), arg_1), func_3(Struct_1(true, 0i), u_input.a)));
    var var_1 = Struct_1(arg_1, _wgslsmith_mod_i32(31538i, u_input.c));
    var var_2 = arg_3;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(214f * arg_2.x))) - _wgslsmith_f_op_f32(-arg_2.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(242f, arg_3)))) - 256f);
    var var_4 = global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(min(vec4<u32>(firstLeadingBit(4294967295u), ~59195u, select(global4.x, arg_0, true), abs(arg_0)), ~vec4<u32>(arg_0, global4.x, 4294967295u, 1u) & _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 4294967295u, arg_0, global4.x), vec4<u32>(12836u, global4.x, 19146u, 4294967295u))), ~(vec4<u32>(0u, global4.x, 65162u, 1u) >> (~vec4<u32>(34315u, arg_0, 1u, 7291u) % vec4<u32>(32u)))), 17u)];
    return Struct_1(var_4.a, 49053i);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: u32) -> f32 {
    let var_0 = global1[_wgslsmith_index_u32(global4.x, 17u)];
    let var_1 = Struct_1(true | !all(select(vec2<bool>(arg_0, false), vec2<bool>(false, true), vec2<bool>(arg_0, arg_0))), var_0.b);
    var var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2056f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1392f + -888f))), _wgslsmith_f_op_f32(step(-1418f, -415f)), _wgslsmith_f_op_f32(step(1370f, _wgslsmith_div_f32(-127f, -1222f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -313f, -697f, -178f) * vec4<f32>(-889f, -2335f, 429f, -419f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(815f, -1678f, 1411f, -701f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(762f, 1941f, 702f, -714f) + vec4<f32>(473f, -1084f, 585f, 313f)))))));
    var_2 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.x, var_2.x, _wgslsmith_f_op_f32(floor(-931f)), var_2.x), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(328f, 1403f, var_2.x, var_2.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2.x, var_2.x, 104f, 762f), vec4<f32>(var_2.x, 1000f, var_2.x, var_2.x)))), false)))), !vec4<bool>(true, true, var_1.a, false)));
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.x)));
    return _wgslsmith_f_op_f32(var_2.x - 191f);
}

fn func_1(arg_0: f32, arg_1: vec2<i32>) -> Struct_1 {
    let var_0 = ~(~_wgslsmith_dot_vec4_u32((vec4<u32>(global4.x, global4.x, 1u, 42559u) | vec4<u32>(1u, 4294967295u, 21023u, global4.x)) >> (~vec4<u32>(1u, global4.x, 1u, 100320u) % vec4<u32>(32u)), reverseBits(countOneBits(vec4<u32>(0u, 1u, global4.x, 52750u)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(true, func_2(4294967295u, true, vec4<f32>(-2193f, -672f, 609f, -679f), arg_0), 0u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(161f + _wgslsmith_f_op_f32(step(arg_0, arg_0)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0)))))));
    global3 = _wgslsmith_f_op_f32(-var_1.x);
    let var_2 = !(!vec4<bool>(select(true, true, false) & (arg_0 < -1000f), func_2(global4.x >> (0u % 32u), false, var_1, _wgslsmith_div_f32(635f, -1000f)).a, true, true));
    global1 = array<Struct_1, 17>();
    return global1[_wgslsmith_index_u32(countOneBits(~4294967295u), 17u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1130f)) + _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(872f, -1353f))))), ~vec2<i32>(u_input.b, ~u_input.b) << (abs(global4.yy) % vec2<u32>(32u)));
    var var_1 = !vec2<bool>(true, var_0.a);
    var var_2 = _wgslsmith_mod_u32(~global4.x, global4.x) | select(abs(_wgslsmith_mult_u32(9752u, firstTrailingBit(28330u))), global4.x, var_1.x);
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-800f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-687f - -1030f) + 1514f)), _wgslsmith_f_op_f32(-1f)), -171f));
    var var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(~abs(_wgslsmith_div_i32(var_0.b, u_input.a.x)), u_input.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-654f - _wgslsmith_f_op_f32(f32(-1f) * -2398f)) + 1301f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-1080f)), _wgslsmith_f_op_f32(round(-1000f)))))), firstTrailingBit(~u_input.a.x) << (global4.x % 32u), reverseBits(~vec3<u32>(38904u, firstLeadingBit(4294967295u), _wgslsmith_mod_u32(1u, global4.x))));
}

