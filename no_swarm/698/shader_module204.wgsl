struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: f32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 31> = array<vec2<f32>, 31>(vec2<f32>(-802f, -492f), vec2<f32>(556f, -844f), vec2<f32>(1268f, -700f), vec2<f32>(221f, -1000f), vec2<f32>(974f, -190f), vec2<f32>(-2592f, 872f), vec2<f32>(1000f, 872f), vec2<f32>(-1009f, -562f), vec2<f32>(-646f, 621f), vec2<f32>(-254f, 693f), vec2<f32>(-678f, -364f), vec2<f32>(1628f, 230f), vec2<f32>(234f, 536f), vec2<f32>(-406f, -151f), vec2<f32>(-844f, -1000f), vec2<f32>(-443f, -557f), vec2<f32>(2096f, -143f), vec2<f32>(1012f, 674f), vec2<f32>(528f, 231f), vec2<f32>(1000f, 2509f), vec2<f32>(649f, 1286f), vec2<f32>(-1381f, -684f), vec2<f32>(1060f, 154f), vec2<f32>(377f, -286f), vec2<f32>(838f, -584f), vec2<f32>(561f, -2391f), vec2<f32>(1055f, -453f), vec2<f32>(1125f, -220f), vec2<f32>(-279f, 493f), vec2<f32>(341f, -673f), vec2<f32>(-1080f, -1187f));

var<private> global1: Struct_2 = Struct_2(64270u, Struct_1(vec4<i32>(0i, 1i, -51319i, 1i)));

var<private> global2: bool;

var<private> global3: array<bool, 28> = array<bool, 28>(true, false, true, false, true, true, false, false, false, false, false, true, false, true, true, false, true, true, true, false, true, true, false, true, true, true, false, true);

var<private> global4: u32 = 0u;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(abs(global1.a), 31u)]))) + _wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(0u, 31u)])), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-125f, -546f)) * global0[_wgslsmith_index_u32(4294967295u, 31u)]) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(195f, -1000f) - vec2<f32>(1029f, 1000f))))), vec2<bool>(all(!vec3<bool>(true, false, global3[_wgslsmith_index_u32(1u, 28u)])), true)))));
    var var_1 = ~_wgslsmith_add_u32(0u, ~1u >> (u_input.a % 32u));
    global2 = !(!all(select(vec3<bool>(global3[_wgslsmith_index_u32(u_input.d.x, 28u)], global3[_wgslsmith_index_u32(u_input.b, 28u)], global3[_wgslsmith_index_u32(1u, 28u)]), vec3<bool>(false, true, global3[_wgslsmith_index_u32(u_input.b, 28u)]), vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 28u)], global3[_wgslsmith_index_u32(77150u, 28u)], global3[_wgslsmith_index_u32(1u, 28u)]))) & all(select(select(vec4<bool>(true, global3[_wgslsmith_index_u32(13336u, 28u)], global3[_wgslsmith_index_u32(11100u, 28u)], true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, global3[_wgslsmith_index_u32(u_input.b, 28u)], global3[_wgslsmith_index_u32(0u, 28u)])), !vec4<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 28u)], false, global3[_wgslsmith_index_u32(0u, 28u)]), global3[_wgslsmith_index_u32(global1.a, 28u)])));
    global0 = array<vec2<f32>, 31>();
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-var_0.x))), 239f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1980f) * _wgslsmith_div_f32(1650f, 813f))))));
    return global3[_wgslsmith_index_u32(max(~reverseBits(_wgslsmith_div_u32(global1.a << (51492u % 32u), ~1u)), min(_wgslsmith_div_u32(~_wgslsmith_clamp_u32(global1.a, u_input.b, 5774u), 1u), 4294967295u << (global1.a % 32u))), 28u)];
}

fn func_2() -> Struct_3 {
    global3 = array<bool, 28>();
    let var_0 = Struct_2(_wgslsmith_div_u32(max(_wgslsmith_div_u32(1u | global1.a, _wgslsmith_clamp_u32(global1.a, global1.a, 16077u)), global1.a), u_input.a), global1.b);
    var var_1 = -196f;
    let var_2 = select(vec2<bool>(any(vec4<bool>(true, all(vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.b, 28u)], true, true)), true, global3[_wgslsmith_index_u32(u_input.b, 28u)] == global3[_wgslsmith_index_u32(u_input.a, 28u)])), func_3()), select(vec2<bool>(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_0.a, 33906u), 28u)] || true, all(vec2<bool>(true, false))), select(vec2<bool>(func_3(), global3[_wgslsmith_index_u32(var_0.a, 28u)] & global3[_wgslsmith_index_u32(25084u, 28u)]), select(vec2<bool>(false, global3[_wgslsmith_index_u32(var_0.a, 28u)]), !vec2<bool>(false, global3[_wgslsmith_index_u32(9774u, 28u)]), !vec2<bool>(true, global3[_wgslsmith_index_u32(0u, 28u)])), !(!vec2<bool>(false, global3[_wgslsmith_index_u32(3339u, 28u)]))), !vec2<bool>(global3[_wgslsmith_index_u32(global1.a, 28u)] && global3[_wgslsmith_index_u32(var_0.a, 28u)], global3[_wgslsmith_index_u32(25009u << (u_input.b % 32u), 28u)])), !(!(!select(vec2<bool>(false, false), vec2<bool>(true, false), global3[_wgslsmith_index_u32(u_input.a, 28u)]))));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-971f - -1829f)), 1045f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * -1769f))) * vec3<f32>(-130f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-221f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -114f), 485f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -227f))));
    return Struct_3(var_0, Struct_2(firstLeadingBit(1u << (u_input.a % 32u)), Struct_1(~vec4<i32>(-2147483647i, u_input.c, -2147483647i, global1.b.a.x) >> ((vec4<u32>(global1.a, u_input.d.x, 4294967295u, 21831u) >> (vec4<u32>(0u, 0u, 73469u, 0u) % vec4<u32>(32u))) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-292f)) + _wgslsmith_f_op_f32(round(var_3.x))))), vec3<bool>(global3[_wgslsmith_index_u32(~1u, 28u)], any(!select(vec2<bool>(global3[_wgslsmith_index_u32(u_input.a, 28u)], false), var_2, var_2.x)), _wgslsmith_clamp_u32(38438u, 0u, firstTrailingBit(var_0.a)) < firstLeadingBit(1u)));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: Struct_3) -> Struct_1 {
    let var_0 = arg_0.a;
    return func_2().a.b;
}

fn func_1(arg_0: vec3<u32>, arg_1: f32, arg_2: bool) -> u32 {
    global1 = Struct_2(4294967295u, func_4(global1.b, ~67510u, Struct_1(_wgslsmith_clamp_vec4_i32(abs(global1.b.a), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.c, 3440i), vec4<i32>(u_input.c, -22523i, -7553i, global1.b.a.x)), vec4<i32>(u_input.c, -22218i, u_input.c, 39217i))), func_2()));
    global3 = array<bool, 28>();
    global0 = array<vec2<f32>, 31>();
    let var_0 = ~_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(abs(global1.b.a), ~vec4<i32>(-1i, -17733i, u_input.c, 4973i)), global1.b.a), firstLeadingBit(_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, u_input.c, -2147483647i, 4246i), vec4<i32>(1i, u_input.c, global1.b.a.x, global1.b.a.x)), vec4<i32>(-1i, u_input.c, u_input.c, -2050i))));
    var var_1 = global1.b;
    return _wgslsmith_dot_vec2_u32(vec2<u32>(~0u, ~u_input.d.x), ~_wgslsmith_add_vec2_u32(select(arg_0.zz, arg_0.xz, vec2<bool>(true, true)), firstTrailingBit(~u_input.d.yx)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(Struct_2(_wgslsmith_clamp_u32(func_1(u_input.d, -205f, true), select(global1.a, u_input.b, true), ~u_input.d.x) >> (abs(_wgslsmith_mod_u32(1u, global1.a)) % 32u), func_2().a.b), Struct_2(~firstLeadingBit(~global1.a), func_2().a.b), _wgslsmith_f_op_f32(1390f + 1104f), !select(!vec3<bool>(true, true, global3[_wgslsmith_index_u32(u_input.a, 28u)]), select(vec3<bool>(true, true, true), !vec3<bool>(false, global3[_wgslsmith_index_u32(22982u, 28u)], false), func_2().d), vec3<bool>(true, global3[_wgslsmith_index_u32(~u_input.d.x, 28u)], false)));
    let var_1 = Struct_1(vec4<i32>(min(firstLeadingBit(-global1.b.a.x), max(1i, max(-2147483647i, global1.b.a.x))), ~(-u_input.c), -58343i, (_wgslsmith_mult_i32(u_input.c, u_input.c) >> (90303u % 32u)) ^ 1i));
    var var_2 = reverseBits(13242u);
    let var_3 = func_2();
    var var_4 = func_2().b;
    var var_5 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) - _wgslsmith_f_op_f32(289f * var_0.c)), 105f, var_0.c, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(968f, -852f)))))));
    let var_6 = max(abs(~func_4(var_3.a.b, var_4.a, func_4(Struct_1(var_1.a), var_3.a.a, var_1, Struct_3(var_0.a, var_3.a, -1493f, var_3.d)), func_2()).a.x), _wgslsmith_mod_i32(~var_4.b.a.x, global1.b.a.x));
    var_0 = var_3;
    var_2 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~54850u, var_0.b.a, _wgslsmith_sub_u32(var_3.b.a, 51153u), u_input.b), ~func_2().b.b.a.xy, _wgslsmith_add_u32(32597u, global1.a));
}

