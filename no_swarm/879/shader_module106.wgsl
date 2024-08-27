struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: bool,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1000f;

var<private> global1: array<vec3<u32>, 17> = array<vec3<u32>, 17>(vec3<u32>(0u, 0u, 1u), vec3<u32>(0u, 1u, 22775u), vec3<u32>(45535u, 0u, 81009u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(4294967295u, 48197u, 9954u), vec3<u32>(0u, 52478u, 21572u), vec3<u32>(1u, 3515u, 4294967295u), vec3<u32>(1u, 42522u, 4294967295u), vec3<u32>(22715u, 61718u, 4294967295u), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(22276u, 1u, 0u), vec3<u32>(4294967295u, 60278u, 4294967295u), vec3<u32>(52784u, 0u, 24742u), vec3<u32>(4294967295u, 0u, 19405u), vec3<u32>(48939u, 1u, 4294967295u), vec3<u32>(30144u, 4294967295u, 41268u), vec3<u32>(0u, 1u, 2335u));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> f32 {
    var var_0 = abs(~vec3<u32>(arg_1.c.x, arg_1.b.x, 4294967295u));
    let var_1 = arg_1;
    let var_2 = Struct_1(max(4294967295u, ~_wgslsmith_sub_u32(arg_0, 37472u << (var_0.x % 32u))), max(vec3<u32>(arg_0, _wgslsmith_mod_u32(abs(71456u), 4294967295u), 85805u), global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_add_u32(_wgslsmith_mult_u32(4294967295u, var_1.a), arg_1.c.x)), 17u)]), abs(vec3<u32>(~0u, countOneBits(4294967295u), 13813u)) >> (arg_1.b % vec3<u32>(32u)), false, _wgslsmith_clamp_vec4_i32(select(vec4<i32>(min(arg_1.e.x, -39524i), ~var_1.e.x, _wgslsmith_mod_i32(arg_1.e.x, arg_1.e.x), -33945i), vec4<i32>(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(1i, 0i, -35755i, 51251i)), _wgslsmith_dot_vec4_i32(arg_1.e, vec4<i32>(-1i, u_input.a.x, u_input.a.x, arg_1.e.x)), countOneBits(2147483647i), ~28876i), all(vec4<bool>(false, arg_1.d, true, false))), ~u_input.a, arg_1.e));
    var var_3 = -20637i << (_wgslsmith_sub_u32(var_2.c.x, 34437u) % 32u);
    let var_4 = _wgslsmith_sub_vec2_i32(~vec2<i32>(u_input.a.x, _wgslsmith_add_i32(var_2.e.x, 1i)), select(vec2<i32>(_wgslsmith_add_i32(-1i, ~(-1i)), var_2.e.x), arg_1.e.ww, !vec2<bool>(arg_1.d, var_1.d)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-729f - _wgslsmith_f_op_f32(select(1530f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) - 697f), any(select(vec4<bool>(var_2.d, false, var_1.d, arg_1.d), vec4<bool>(false, false, var_2.d, false), false))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: f32, arg_2: f32, arg_3: f32) -> f32 {
    global0 = _wgslsmith_f_op_f32(-arg_0.x);
    var var_0 = Struct_1(63196u, ~global1[_wgslsmith_index_u32(33652u, 17u)], ~_wgslsmith_sub_vec3_u32(global1[_wgslsmith_index_u32(32732u, 17u)], ~global1[_wgslsmith_index_u32(1269u << (0u % 32u), 17u)]), !all(vec4<bool>(true, true, true, true)), vec4<i32>(u_input.a.x, _wgslsmith_div_i32(u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-8743i, u_input.a.x), u_input.a.xx) & 1i), u_input.a.x, ~(~u_input.a.x | firstLeadingBit(-2147483647i))));
    var var_1 = select(vec2<bool>(false, any(select(!vec2<bool>(true, var_0.d), !vec2<bool>(var_0.d, true), !vec2<bool>(var_0.d, true)))), !(!(!select(vec2<bool>(var_0.d, true), vec2<bool>(true, true), vec2<bool>(true, var_0.d)))), vec2<bool>(false, true));
    return -517f;
}

fn func_2(arg_0: vec2<bool>) -> u32 {
    global0 = _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-299f - -1186f), _wgslsmith_f_op_f32(trunc(161f)), _wgslsmith_f_op_f32(func_3(4294967295u, Struct_1(1u, vec3<u32>(54567u, 4294967295u, 32209u), vec3<u32>(1u, 1u, 4294967295u), true, vec4<i32>(u_input.a.x, 26252i, u_input.a.x, 20159i))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-441f, 1135f, -305f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-258f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-888f, 264f) * _wgslsmith_f_op_f32(round(-974f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-409f + -322f)))) - _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(-1449f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(435f * -1075f) - _wgslsmith_f_op_f32(1227f + -870f)) - _wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(floor(-1199f))))))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(vec3<f32>(_wgslsmith_f_op_f32(step(698f, _wgslsmith_f_op_f32(f32(-1f) * -504f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1654f)) + 1398f), _wgslsmith_f_op_f32(trunc(997f))), _wgslsmith_f_op_f32(670f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, 691f)))), -128f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-1029f))))))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(984f, -650f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1210f - 918f) * 1337f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(512f, 745f))))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-440f)))), -1000f))));
    let var_0 = select(select(select(vec4<bool>(arg_0.x | false, true, arg_0.x, all(arg_0)), !vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), !arg_0.x), vec4<bool>(true, arg_0.x, !arg_0.x, true), !arg_0.x), select(!vec4<bool>(true, all(arg_0), select(arg_0.x, false, false), arg_0.x), !select(vec4<bool>(arg_0.x, true, arg_0.x, false), !vec4<bool>(false, arg_0.x, true, false), vec4<bool>(false, true, arg_0.x, arg_0.x)), select(!vec4<bool>(arg_0.x, true, arg_0.x, false), select(vec4<bool>(true, false, false, true), select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), vec4<bool>(true, true, arg_0.x, arg_0.x), vec4<bool>(true, arg_0.x, arg_0.x, false)), select(vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x), vec4<bool>(false, arg_0.x, arg_0.x, false), vec4<bool>(true, true, arg_0.x, true))), arg_0.x)), true);
    let var_1 = abs(1i);
    return ~4294967295u;
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: vec3<i32>, arg_3: bool) -> Struct_1 {
    var var_0 = !vec2<bool>(arg_1 != arg_1, ((-1i | u_input.a.x) != -25775i) | true);
    let var_1 = Struct_1(func_2(select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true), !arg_3)), _wgslsmith_sub_vec3_u32(select(countOneBits(vec3<u32>(arg_0, arg_0, arg_1)) << (global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, arg_0), 17u)] % vec3<u32>(32u)), vec3<u32>(_wgslsmith_clamp_u32(0u, arg_1, 30318u), arg_0, ~arg_1), true), ~vec3<u32>(arg_1, 0u, 23152u) << (select(~vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(arg_0, arg_0, arg_0), !arg_3) % vec3<u32>(32u))), ~firstTrailingBit(abs(vec3<u32>(40251u, 39432u, 1u))), any(vec4<bool>(all(select(vec4<bool>(var_0.x, false, var_0.x, false), vec4<bool>(var_0.x, false, false, false), vec4<bool>(var_0.x, true, true, arg_3))), !(!arg_3), any(vec4<bool>(true, false, arg_3, var_0.x)) & !var_0.x, true)), u_input.a);
    global1 = array<vec3<u32>, 17>();
    let var_2 = vec2<u32>(111485u & min(~(~0u), 4294967295u | _wgslsmith_mod_u32(0u, arg_0)), func_2(!(!vec2<bool>(true, arg_3))));
    let var_3 = vec2<u32>(~12133u, ~99165u) & vec2<u32>(arg_0, ~func_2(vec2<bool>(true, arg_3)));
    return var_1;
}

fn func_5(arg_0: u32, arg_1: bool, arg_2: Struct_1) -> bool {
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-381f, _wgslsmith_f_op_f32(-1309f + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_4(vec3<f32>(-447f, -481f, -117f), -802f, 776f, 730f))))), false)), _wgslsmith_f_op_f32(f32(-1f) * -311f));
    var var_0 = vec4<bool>(true && (all(vec4<bool>(true, false, false, false)) | (644f < _wgslsmith_f_op_f32(step(-457f, -205f)))), true, !(!arg_2.d | false), false);
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-881f, 184f, 1689f, -880f), vec4<f32>(-525f, -941f, 102f, -1652f)) + vec4<f32>(1173f, 657f, -415f, 242f)) * vec4<f32>(1180f, _wgslsmith_f_op_f32(f32(-1f) * -1248f), _wgslsmith_f_op_f32(func_4(vec3<f32>(455f, -355f, 1948f), -733f, 1144f, -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -909f)))));
    var var_2 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(sign(var_1.a.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x + -762f)), 632f)), _wgslsmith_div_f32(623f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(var_1.a.ywy, 372f, -1408f, -1937f)), var_1.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a.x - 694f), 742f)));
    var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-624f, 1725f, -1102f, var_1.a.x)))))) * vec4<f32>(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(func_3(arg_0, Struct_1(0u, global1[_wgslsmith_index_u32(4294967295u, 17u)], vec3<u32>(1u, 12543u, arg_0), false, vec4<i32>(arg_2.e.x, 1i, 22768i, u_input.a.x)))), 635f, _wgslsmith_f_op_f32(-var_1.a.x))));
    return !(arg_2.d || arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<u32>, 17>();
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1156f, 1268f, 1353f, 147f) * vec4<f32>(794f, 3223f, -740f, 257f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(535f, 483f, -275f, 578f)))));
    var var_1 = 0u;
    let var_2 = var_0.a.x;
    let var_3 = !(!(func_5(~42398u, true, func_1(110011u, 16894u, vec3<i32>(u_input.a.x, u_input.a.x, -12175i), false)) | (func_5(26403u, false, Struct_1(1u, global1[_wgslsmith_index_u32(4294967295u, 17u)], vec3<u32>(4294967295u, 1u, 4294967295u), true, u_input.a)) != true)));
    var var_4 = -min(func_1(1u, 8750u, vec3<i32>(0i, -34856i, 2147483647i), true).e.zz << (vec2<u32>(23803u, 1u) % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(u_input.a.ww & (u_input.a.xw >> (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u))), vec2<i32>(22065i, func_1(4294967295u, 0u, vec3<i32>(1i, u_input.a.x, u_input.a.x), var_3).e.x)));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec3<i32>(1i, 1i, u_input.a.x), u_input.a.zyy, var_3) >> (global1[_wgslsmith_index_u32(~(~1u), 17u)] % vec3<u32>(32u)), _wgslsmith_div_f32(1126f, -1058f));
}

