struct Struct_1 {
    a: f32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: i32,
    d: vec3<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(-1359f, vec3<i32>(0i, 1i, 53434i)), Struct_1(484f, vec3<i32>(i32(-2147483648), 2147483647i, -78626i)), Struct_1(939f, vec3<i32>(23412i, 16213i, -31983i)), Struct_1(656f, vec3<i32>(2147483647i, 2147483647i, -17519i)), Struct_1(-486f, vec3<i32>(54664i, i32(-2147483648), -19976i)), Struct_1(-854f, vec3<i32>(-15732i, -22885i, i32(-2147483648))), Struct_1(257f, vec3<i32>(1i, 7736i, -1i)), Struct_1(392f, vec3<i32>(2147483647i, 2268i, -1i)), Struct_1(-408f, vec3<i32>(1i, -1i, 1i)), Struct_1(-895f, vec3<i32>(-1i, 1i, i32(-2147483648))), Struct_1(-1000f, vec3<i32>(0i, 0i, 2147483647i)), Struct_1(1717f, vec3<i32>(2071i, i32(-2147483648), -1i)), Struct_1(702f, vec3<i32>(i32(-2147483648), -1i, 65851i)), Struct_1(1098f, vec3<i32>(62771i, 1i, 60852i)), Struct_1(153f, vec3<i32>(-582i, -1i, -62341i)), Struct_1(-1212f, vec3<i32>(2147483647i, i32(-2147483648), 28165i)), Struct_1(-896f, vec3<i32>(-42513i, i32(-2147483648), i32(-2147483648))), Struct_1(919f, vec3<i32>(i32(-2147483648), 19855i, 39532i)), Struct_1(-1000f, vec3<i32>(23644i, 24501i, 71142i)), Struct_1(-1759f, vec3<i32>(-1i, -16711i, i32(-2147483648))), Struct_1(756f, vec3<i32>(3364i, -18169i, i32(-2147483648))), Struct_1(301f, vec3<i32>(2147483647i, -4093i, -28578i)), Struct_1(-905f, vec3<i32>(-12110i, -24863i, -24848i)), Struct_1(950f, vec3<i32>(-330i, i32(-2147483648), i32(-2147483648))), Struct_1(565f, vec3<i32>(53243i, -1i, 52253i)), Struct_1(760f, vec3<i32>(2147483647i, 7097i, 11328i)), Struct_1(-1000f, vec3<i32>(-1i, -14320i, 2147483647i)), Struct_1(-1135f, vec3<i32>(-1i, 8208i, 57117i)));

var<private> global1: Struct_1 = Struct_1(-1848f, vec3<i32>(-41370i, 1i, 1i));

var<private> global2: vec3<u32> = vec3<u32>(17823u, 22441u, 4294967295u);

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2() -> vec3<u32> {
    var var_0 = global0[_wgslsmith_index_u32(~global2.x, 28u)];
    let var_1 = 4294967295u;
    return u_input.a;
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: u32) -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(arg_2, 28u)];
    global2 = countOneBits(~(u_input.a | u_input.a)) << (vec3<u32>(firstLeadingBit(countOneBits(_wgslsmith_div_u32(global2.x, 4294967295u))), 36648u, abs(~(~0u))) % vec3<u32>(32u));
    global1 = Struct_1(667f, ~(~(vec3<i32>(-1i) * -vec3<i32>(arg_0.b.x, -1i, arg_1.x))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.a))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.a)))), ~arg_0.b);
    global1 = arg_0;
    return abs(_wgslsmith_dot_vec3_u32(max(_wgslsmith_add_vec3_u32(firstTrailingBit(vec3<u32>(4294967295u, arg_2, u_input.a.x)), vec3<u32>(42935u, u_input.a.x, 46989u)), u_input.a << (vec3<u32>(1u, u_input.a.x, 42803u) % vec3<u32>(32u))), vec3<u32>(37119u, abs(_wgslsmith_clamp_u32(arg_2, 16000u, 4294967295u)), reverseBits(abs(48437u)))));
}

fn func_4(arg_0: vec2<f32>, arg_1: u32) -> vec3<u32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-466f - global1.a))), reverseBits(global1.b & -global1.b));
    var var_1 = Struct_1(1000f, ~vec3<i32>((global1.b.x >> (4294967295u % 32u)) & 1i, -2147483647i, _wgslsmith_mod_i32(-var_0.b.x, _wgslsmith_mult_i32(-34752i, global1.b.x))));
    let var_2 = select(var_1.b.zy, global1.b.yz, !any(vec2<bool>(true, false)) && !(!(u_input.a.x < 15348u)));
    var_1 = var_0;
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(arg_0))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-arg_0), _wgslsmith_div_vec2_f32(arg_0, vec2<f32>(arg_0.x, 557f))))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(arg_0, vec2<f32>(var_0.a, arg_0.x))))));
    return reverseBits(func_2());
}

fn func_1(arg_0: f32, arg_1: vec2<f32>, arg_2: vec4<f32>) -> u32 {
    global2 = _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(global2.x, 4294967295u, 4294967295u), u_input.a) & ~func_2(), func_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1 * vec2<f32>(arg_1.x, 443f)), arg_1), func_3(Struct_1(global1.a, global1.b), vec2<i32>(-2147483647i, -5452i), 4294967295u))), _wgslsmith_mult_vec3_u32(u_input.a, ~(vec3<u32>(global2.x, global2.x, global2.x) ^ ~vec3<u32>(1u, 26360u, global2.x))), _wgslsmith_mult_vec3_u32(vec3<u32>(~(63558u << (global2.x % 32u)), countOneBits(global2.x), 4294967295u), _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.a & u_input.a, vec3<u32>(u_input.a.x, u_input.a.x, global2.x)), ~select(vec3<u32>(global2.x, 0u, global2.x), vec3<u32>(13060u, 0u, 79518u), vec3<bool>(true, false, true)))));
    var var_0 = Struct_1(-552f, countOneBits(global1.b));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1006f))), -var_0.b);
    let var_2 = global0[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec4_u32(~(~(~vec4<u32>(global2.x, 11810u, 5811u, u_input.a.x))), vec4<u32>(1u, global2.x & 0u, 1u, 67822u) << (vec4<u32>(63867u, ~u_input.a.x, ~global2.x, func_4(vec2<f32>(-469f, -496f), global2.x).x) % vec4<u32>(32u)))), 28u)];
    var_1 = Struct_1(350f, vec3<i32>(-27531i, 1i, ~var_0.b.x));
    return _wgslsmith_div_u32(reverseBits(u_input.a.x), global2.x);
}

fn func_5(arg_0: vec4<u32>, arg_1: vec3<i32>, arg_2: u32, arg_3: u32) -> vec3<u32> {
    var var_0 = Struct_1(global1.a, -_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(global1.b, vec3<i32>(-67220i, -9783i, global1.b.x)), select(vec3<i32>(-1i, arg_1.x, -10337i), vec3<i32>(global1.b.x, 0i, 1i), false)), firstLeadingBit(min(vec3<i32>(arg_1.x, 0i, arg_1.x), arg_1))));
    var_0 = global0[_wgslsmith_index_u32(1u, 28u)];
    var var_1 = vec2<i32>(abs(17756i), arg_1.x);
    let var_2 = true;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(1253f)))), vec3<i32>(global1.b.x, -12960i, (i32(-1i) * -1i) | -var_0.b.x));
    return vec3<u32>(arg_3, 22962u, ~arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_5(vec4<u32>(func_1(_wgslsmith_f_op_f32(step(1000f, -153f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a, global1.a)), vec4<f32>(global1.a, -1156f, -3264f, 347f)), _wgslsmith_sub_u32(u_input.a.x >> (global2.x % 32u), 28302u), select(u_input.a.x, u_input.a.x, any(vec4<bool>(false, true, true, false))), select(32126u, ~global2.x, true)), countOneBits(global1.b), global2.x, ~0u) ^ u_input.a;
    let var_0 = Struct_1(global1.a, global1.b);
    let var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(var_0.a, _wgslsmith_f_op_f32(-295f + -863f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(680f, -251f)))))), _wgslsmith_f_op_f32(f32(-1f) * -879f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-475f, -613f, var_0.a, var_0.a))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, var_0.a, global1.a, var_0.a))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, global1.a, var_0.a, 328f) * vec4<f32>(global1.a, var_0.a, global1.a, var_0.a))))));
    let var_2 = Struct_1(var_1.x, _wgslsmith_mult_vec3_i32(abs(~vec3<i32>(-57120i, 33308i, var_0.b.x)) & -global1.b, vec3<i32>(firstLeadingBit(abs(global1.b.x)), global1.b.x, select(global1.b.x, global1.b.x, true) << (~0u % 32u))));
    global1 = Struct_1(_wgslsmith_f_op_f32(var_0.a * -653f), var_0.b);
    global2 = countOneBits((~vec3<u32>(1u, global2.x, u_input.a.x) | vec3<u32>(~4294967295u, 57085u, 1u)) ^ _wgslsmith_mult_vec3_u32(abs(countOneBits(vec3<u32>(16790u, u_input.a.x, 1u))), _wgslsmith_mult_vec3_u32(func_2(), u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.a + _wgslsmith_f_op_f32(-var_2.a)), var_1.x), _wgslsmith_div_vec3_f32(vec3<f32>(-407f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-755f)))), _wgslsmith_div_f32(256f, _wgslsmith_f_op_f32(-var_2.a))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - -206f)), _wgslsmith_f_op_f32(-295f - _wgslsmith_f_op_f32(var_1.x + -1803f)), _wgslsmith_f_op_f32(var_1.x - var_1.x))), ~(-var_2.b.x), _wgslsmith_div_vec3_i32(select(_wgslsmith_div_vec3_i32(vec3<i32>(9248i, 1i, 2147483647i), vec3<i32>(-37009i, global1.b.x, -1i)), ~var_0.b, true) >> (reverseBits(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 0u, 93002u), u_input.a)) % vec3<u32>(32u)), global1.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(abs(-1570f)), var_2.a))) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(var_2.a * var_2.a), _wgslsmith_f_op_f32(global1.a + global1.a)), vec2<f32>(_wgslsmith_div_f32(1370f, var_0.a), global1.a)))));
}

