struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
}

struct Struct_3 {
    a: vec3<bool>,
    b: bool,
}

struct Struct_4 {
    a: bool,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 24>;

var<private> global1: array<u32, 10>;

var<private> global2: array<Struct_4, 2>;

var<private> global3: array<bool, 8>;

var<private> global4: array<vec3<u32>, 3> = array<vec3<u32>, 3>(vec3<u32>(20192u, 22799u, 1u), vec3<u32>(49749u, 8389u, 69373u), vec3<u32>(1u, 4294967295u, 18837u));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: bool) -> vec3<bool> {
    var var_0 = 1726f;
    let var_1 = Struct_2(-_wgslsmith_dot_vec3_i32(firstTrailingBit(abs(vec3<i32>(u_input.d.x, u_input.b, u_input.c))), firstLeadingBit(-vec3<i32>(-21779i, u_input.d.x, 27887i))), false);
    var var_2 = Struct_1(~vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 10u)], global1[_wgslsmith_index_u32(8072u, 10u)] << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(21800u, 10u)], 10u)], 10u)], 10u)] << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(64210u, 10u)], 10u)] % 32u), 10u)] % 32u), 1u));
    global2 = array<Struct_4, 2>();
    global1 = array<u32, 10>();
    return vec3<bool>(any(arg_1), ~_wgslsmith_div_u32(_wgslsmith_mod_u32(1u, 1u), 67627u) < global1[_wgslsmith_index_u32(~var_2.a.x >> ((_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(0u, 10u)], 127441u) | abs(global1[_wgslsmith_index_u32(4294967295u, 10u)])) % 32u), 10u)], var_1.b);
}

fn func_4(arg_0: Struct_4) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(892f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1104f) - _wgslsmith_f_op_f32(step(-963f, -1096f))))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(1476f, -495f) - vec2<f32>(-1108f, 2440f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-436f, 541f) + vec2<f32>(-1368f, -1125f)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(857f * 388f) - _wgslsmith_f_op_f32(-1313f + 1061f)), _wgslsmith_f_op_f32(f32(-1f) * -771f)))));
    let var_1 = _wgslsmith_sub_vec3_u32(select(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(37354u, 10u)], 10u)], 10u)], 10u)], 10u)], 10u)], 10u)], 10u)] << (40807u % 32u), 10u)], 10u)], 3u)], ~global4[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(0u, 10u)], 3u)], global3[_wgslsmith_index_u32(~_wgslsmith_add_u32(23796u, 0u), 8u)]), ~max(vec3<u32>(39182u, 4294967295u, global1[_wgslsmith_index_u32(1u, 10u)]), global4[_wgslsmith_index_u32(1u, 3u)]) | vec3<u32>(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(84394u, 10u)], 24838u), 10u)], 48687u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(1u, 10u)], global1[_wgslsmith_index_u32(1u, 10u)], 0u), global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(20705u, 10u)], 10u)], 3u)]), 10u)], 10u)])) >> (global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 10u)], 3u)] % vec3<u32>(32u));
    global2 = array<Struct_4, 2>();
    var var_2 = vec4<u32>(global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(0u, 10u)], _wgslsmith_sub_u32(4294967295u, ~var_1.x))), 10u)], countOneBits(_wgslsmith_div_u32(~reverseBits(1u), ~_wgslsmith_mod_u32(var_1.x, 42617u))), min(1u, global1[_wgslsmith_index_u32(var_1.x | 1u, 10u)]) << (firstTrailingBit(var_1.x) % 32u), var_1.x);
    var var_3 = 1u;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1024f, 1000f)) * var_0.x);
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<f32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(func_4(Struct_4(!global3[_wgslsmith_index_u32(63500u, 8u)], func_3(Struct_3(select(vec3<bool>(false, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 10u)], 8u)], false), vec3<bool>(false, true, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(109157u, 10u)], 8u)]), vec3<bool>(false, global3[_wgslsmith_index_u32(13158u, 8u)], global3[_wgslsmith_index_u32(4294967295u, 8u)])), global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(56098u, 10u)], 8u)]), !(!vec3<bool>(true, global3[_wgslsmith_index_u32(0u, 8u)], global3[_wgslsmith_index_u32(14848u, 8u)])), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(24469u, 10u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(52962u, 10u)], 10u)], 10u)]), vec2<u32>(36933u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(61918u, 10u)], 10u)])), 8u)] || true))));
    var var_1 = firstTrailingBit(~(~120241u));
    global3 = array<bool, 8>();
    let var_2 = Struct_2(abs(-select(_wgslsmith_add_i32(arg_0.x, arg_0.x), 36546i, true)), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(~firstTrailingBit(firstLeadingBit(4294967295u)), 4294967295u), 8u)]);
    let var_3 = global2[_wgslsmith_index_u32(~4768u, 2u)];
    return Struct_2(u_input.a, !(_wgslsmith_sub_i32(~var_2.a, 1i) > ~(-2147483647i)));
}

fn func_1(arg_0: Struct_3, arg_1: f32, arg_2: Struct_1) -> u32 {
    var var_0 = func_2(vec4<i32>(u_input.b, -44081i, ~(~min(4356i, -1i)), _wgslsmith_div_i32(u_input.d.x, ~(~(-1i)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-634f, _wgslsmith_f_op_f32(f32(-1f) * -2259f), _wgslsmith_f_op_f32(max(arg_1, 128f)))), vec3<f32>(arg_1, arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1606f, arg_1, true))))));
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~_wgslsmith_clamp_vec4_u32(~select(vec4<u32>(global1[_wgslsmith_index_u32(arg_2.a.x, 10u)], 25823u, 1u, 1u), vec4<u32>(arg_2.a.x, 4294967295u, arg_2.a.x, 76992u), true), ~(~vec4<u32>(56409u, 4294967295u, arg_2.a.x, arg_2.a.x)), countOneBits(vec4<u32>(8059u, arg_2.a.x, global1[_wgslsmith_index_u32(78200u, 10u)], global1[_wgslsmith_index_u32(4294967295u, 10u)]))), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(arg_2.a.x, 4294967295u), arg_2.a.x, ~7514u, 4294967295u), min(~vec4<u32>(14413u, 48062u, arg_2.a.x, 12113u), vec4<u32>(46245u, 30717u, 0u, 4294967295u) & vec4<u32>(global1[_wgslsmith_index_u32(arg_2.a.x, 10u)], 68186u, global1[_wgslsmith_index_u32(4294967295u, 10u)], arg_2.a.x)), ~vec4<u32>(arg_2.a.x, 31335u, global1[_wgslsmith_index_u32(37355u, 10u)], 1u))), 2u)];
    var var_2 = select(vec4<bool>(true, var_0.b, false, !(!(!arg_0.b))), vec4<bool>(all(!(!vec4<bool>(var_1.a, true, false, false))), true, true, all(!select(vec4<bool>(true, false, arg_0.a.x, arg_0.b), vec4<bool>(arg_0.a.x, global3[_wgslsmith_index_u32(31016u, 8u)], true, var_0.b), var_1.a))), all(select(select(!vec4<bool>(var_1.a, true, false, global3[_wgslsmith_index_u32(arg_2.a.x, 8u)]), vec4<bool>(var_1.a, true, false, arg_0.a.x), vec4<bool>(true, true, true, true)), select(vec4<bool>(global3[_wgslsmith_index_u32(95556u, 8u)], arg_0.a.x, false, false), !vec4<bool>(var_1.a, false, true, true), !var_1.a), var_0.b)));
    var var_3 = arg_1;
    var var_4 = arg_2.a.xx;
    return ~arg_2.a.x;
}

fn func_5(arg_0: Struct_3) -> Struct_1 {
    var var_0 = Struct_2(i32(-1i) * -(~(~u_input.d.x)), !any(arg_0.a.zx));
    let var_1 = ~countOneBits(~abs(_wgslsmith_dot_vec3_u32(vec3<u32>(30282u, global1[_wgslsmith_index_u32(0u, 10u)], 15831u), vec3<u32>(45837u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 10u)], 10u)], 10u)], 64277u))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1648f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -374f)));
    var var_3 = Struct_3(func_3(arg_0, !vec3<bool>(true, any(arg_0.a.xy), false), !all(vec4<bool>(var_0.b, true, global3[_wgslsmith_index_u32(75247u, 8u)], var_0.b))), all(arg_0.a));
    let var_4 = max(_wgslsmith_div_vec2_i32(u_input.d, countOneBits(abs(_wgslsmith_sub_vec2_i32(u_input.d, u_input.d)))), ~(~firstTrailingBit(vec2<i32>(u_input.a, var_0.a) ^ u_input.d)));
    return Struct_1(vec3<u32>(select(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(37168u, global1[_wgslsmith_index_u32(53175u, 10u)], 1u), global4[_wgslsmith_index_u32(1u, 3u)]), global4[_wgslsmith_index_u32(548u, 3u)] | vec3<u32>(31610u, global1[_wgslsmith_index_u32(4294967295u, 10u)], var_1)), 10u)], ~var_1, _wgslsmith_add_u32(var_1, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1, 10u)], 10u)]) <= global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u >> (var_1 % 32u), 10u)], 10u)]), 30803u, 40477u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~func_1(Struct_3(vec3<bool>(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(94299u, 10u)], 10u)], 10u)], 10u)], 10u)], 10u)], 8u)], true, global3[_wgslsmith_index_u32(4294967295u, 8u)]), global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 10u)], 10u)], 8u)]), 1756f, Struct_1(vec3<u32>(0u, 0u, global1[_wgslsmith_index_u32(4294967295u, 10u)]))), reverseBits((22173u << (global1[_wgslsmith_index_u32(0u, 10u)] % 32u)) ^ func_1(global0[_wgslsmith_index_u32(3202u, 24u)], -1000f, Struct_1(vec3<u32>(4294967295u, 1u, 1u))))), 24u)]);
    global2 = array<Struct_4, 2>();
    global4 = array<vec3<u32>, 3>();
    global2 = array<Struct_4, 2>();
    let var_1 = vec4<bool>(true, any(!select(!vec4<bool>(true, false, false, global3[_wgslsmith_index_u32(38683u, 8u)]), select(vec4<bool>(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.a.x, 10u)], 8u)], global3[_wgslsmith_index_u32(1u, 8u)], false, global3[_wgslsmith_index_u32(10874u, 8u)]), vec4<bool>(true, false, true, global3[_wgslsmith_index_u32(var_0.a.x, 8u)]), global3[_wgslsmith_index_u32(78206u, 8u)]), true)), global3[_wgslsmith_index_u32(reverseBits(0u), 8u)], global3[_wgslsmith_index_u32(func_5(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(func_1(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_0.a.xy, vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 10u)], 10u)], 10u)], 10u)], 14789u)), 24u)], _wgslsmith_f_op_f32(f32(-1f) * -1083f), var_0), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 10u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.a.x, 10u)], 10u)], 56120u), var_0.a), ~var_0.a), 10u)]), 24u)]).a.x, 8u)]);
    let x = u_input.a;
    s_output = StorageBuffer(32097u, 820f, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~(vec4<u32>(global1[_wgslsmith_index_u32(12647u, 10u)], 72168u, var_0.a.x, global1[_wgslsmith_index_u32(41952u, 10u)]) >> (vec4<u32>(0u, 0u, 12943u, 1u) % vec4<u32>(32u))), vec4<u32>(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, var_0.a.x), 10u)], ~4294967295u, 4294967295u, ~0u)), min(~(~vec4<u32>(var_0.a.x, 31283u, var_0.a.x, var_0.a.x)), _wgslsmith_sub_vec4_u32(~vec4<u32>(81746u, 4294967295u, global1[_wgslsmith_index_u32(var_0.a.x, 10u)], 1u), vec4<u32>(0u, global1[_wgslsmith_index_u32(68634u, 10u)], 87696u, global1[_wgslsmith_index_u32(var_0.a.x, 10u)])))), 10u)], reverseBits(var_0.a.zx), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(abs(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.a.x, var_0.a.x, global1[_wgslsmith_index_u32(var_0.a.x, 10u)], var_0.a.x), vec4<u32>(var_0.a.x, 51848u, 4294967295u, 68002u))), vec4<u32>(global1[_wgslsmith_index_u32(var_0.a.x, 10u)], func_1(global0[_wgslsmith_index_u32(var_0.a.x, 24u)], 1803f, var_0), 1003u >> (global1[_wgslsmith_index_u32(0u, 10u)] % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.x, 4294967295u), vec2<u32>(1u, 4294967295u)))), firstLeadingBit(28074u), min(func_1(Struct_3(var_1.zyx, true), -495f, func_5(Struct_3(var_1.zwy, global3[_wgslsmith_index_u32(20375u, 8u)]))), abs(1u))));
}

