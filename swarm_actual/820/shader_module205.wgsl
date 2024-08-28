struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 5>;

var<private> global1: Struct_2;

var<private> global2: array<Struct_2, 9>;

var<private> global3: array<f32, 14> = array<f32, 14>(-275f, -2360f, -220f, 1249f, -424f, 1148f, -1042f, 677f, -859f, 125f, -2341f, 456f, 241f, 783f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2() -> Struct_1 {
    global1 = global2[_wgslsmith_index_u32(~(39768u << (~select(global1.b.x, u_input.a.x, true) % 32u)), 9u)];
    global3 = array<f32, 14>();
    return global1.a;
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: Struct_1) -> Struct_2 {
    let var_0 = global1.b.xww;
    global3 = array<f32, 14>();
    let var_1 = select(!select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)), true), !select(select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true)), vec2<bool>(false, true), any(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true))), !any(!select(vec2<bool>(false, true), vec2<bool>(true, false), true)));
    let var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(global1.e)), -640f, -762f) - vec3<f32>(-935f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1.a.a * 437f), _wgslsmith_f_op_f32(sign(arg_2.a)))), 1f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global3[_wgslsmith_index_u32(arg_0.b.x, 14u)], arg_2.a, 705f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.a, 1463f, 114f) + vec3<f32>(-1000f, -2718f, 1912f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1214f, global1.e, 1577f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.e, global3[_wgslsmith_index_u32(u_input.a.x, 14u)], arg_0.a.a) - vec3<f32>(-420f, arg_2.a, arg_0.e))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(444f, -1091f, 588f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(101101u, 14u)], global1.e, -832f) + vec3<f32>(arg_0.e, -414f, global3[_wgslsmith_index_u32(0u, 14u)])))), !select(vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(true, true, false), select(vec3<bool>(var_1.x, false, true), vec3<bool>(true, true, false), var_1.x))))));
    let var_3 = ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(~u_input.a.x, u_input.a.x, abs(global1.c), _wgslsmith_div_u32(global1.b.x, global1.c)), vec4<u32>(u_input.a.x, u_input.a.x, _wgslsmith_mult_u32(28593u, var_0.x), arg_0.c)));
    return Struct_2(func_2(), vec4<u32>(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, var_0.x, 0u), global1.b.xww)) ^ ~_wgslsmith_mult_u32(16127u, 0u), global1.b.x, 36033u, _wgslsmith_mod_u32(var_3.x, countOneBits(var_0.x))), reverseBits(global1.b.x), _wgslsmith_dot_vec2_i32(-vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x >> (0u % 32u), 5u)], ~(-1i)), firstTrailingBit(arg_1.zx)), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(~u_input.a.x | ~arg_0.c, ~u_input.a.x), 14u)]);
}

fn func_1(arg_0: vec4<i32>) -> bool {
    var var_0 = func_3(global2[_wgslsmith_index_u32(64409u, 9u)], _wgslsmith_add_vec4_i32(arg_0, vec4<i32>(firstLeadingBit(-32051i), _wgslsmith_add_i32(arg_0.x, u_input.b.x), ~u_input.b.x, _wgslsmith_dot_vec4_i32(arg_0, vec4<i32>(u_input.b.x, u_input.b.x, -1i, u_input.b.x))) | vec4<i32>(i32(-1i) * -30525i, global0[_wgslsmith_index_u32(12790u, 5u)] >> (global1.c % 32u), 2147483647i, u_input.b.x >> (global1.c % 32u))), func_2());
    var_0 = global2[_wgslsmith_index_u32(74690u, 9u)];
    let var_1 = all(vec3<bool>(any(select(vec2<bool>(false, true), vec2<bool>(true, false), true)), any(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false))), all(vec2<bool>(true, false)) & all(vec2<bool>(false, false))));
    var var_2 = ~(_wgslsmith_sub_vec4_u32(vec4<u32>(30338u & global1.c, var_0.b.x << (var_0.b.x % 32u), max(4294967295u, 40273u), 70025u), vec4<u32>(0u, 2271u, max(u_input.a.x, 80110u), u_input.a.x)) ^ var_0.b);
    let var_3 = global3[_wgslsmith_index_u32(4294967295u, 14u)];
    return ~(~arg_0.x) < -var_0.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_vec3_u32(~_wgslsmith_add_vec3_u32(~vec3<u32>(44961u, 1u, 52121u), vec3<u32>(global1.c, u_input.a.x, 0u) | (u_input.a & vec3<u32>(29432u, 0u, u_input.a.x))), ~min(vec3<u32>(54250u, 46574u, 729u), ~(~vec3<u32>(1u, 0u, 9374u))), global1.b.yxx);
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(global1.e)), _wgslsmith_f_op_f32(-446f - global3[_wgslsmith_index_u32(var_0.x, 14u)]), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.a.x, 14u)] * 412f), -1412f))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1.a.a, global1.e, global1.a.a, -158f))), !(!func_1(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, -24471i, 11978i, global0[_wgslsmith_index_u32(var_0.x, 5u)]), vec4<i32>(1i, -1i, -10045i, u_input.b.x))))));
    global3 = array<f32, 14>();
    global1 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(select(var_0.x, 13973u, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(4294967295u, 14u)] * global1.a.a) >= -791f), 0u), firstLeadingBit(~1u)), 9u)];
    let var_2 = func_3(func_3(func_3(Struct_2(Struct_1(var_1.x), vec4<u32>(global1.b.x, 0u, global1.c, 0u), 1u, 6974i, func_2().a), vec4<i32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(11260u, 35723u, global1.b.x, 4294967295u), vec4<u32>(4294967295u, global1.c, 0u, 33225u)), 5u)], 1i >> (0u % 32u), global1.d << (0u % 32u), -12802i), func_3(Struct_2(global1.a, vec4<u32>(28969u, global1.c, global1.c, var_0.x), global1.b.x, global1.d, 318f), _wgslsmith_clamp_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(52712u, 5u)], global0[_wgslsmith_index_u32(var_0.x, 5u)], -2018i, global0[_wgslsmith_index_u32(global1.c, 5u)]), vec4<i32>(42169i, global0[_wgslsmith_index_u32(u_input.a.x, 5u)], u_input.b.x, 19640i), vec4<i32>(global1.d, 66367i, 1375i, u_input.b.x)), Struct_1(global3[_wgslsmith_index_u32(global1.b.x, 14u)])).a), min(-reverseBits(vec4<i32>(global1.d, global0[_wgslsmith_index_u32(23343u, 5u)], global1.d, 17523i)), firstTrailingBit(-vec4<i32>(13901i, global0[_wgslsmith_index_u32(global1.b.x, 5u)], -46113i, 29146i))), global1.a), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(abs(12231i), u_input.b.x >> (global1.c % 32u), global0[_wgslsmith_index_u32(u_input.a.x | u_input.a.x, 5u)], global0[_wgslsmith_index_u32(127965u, 5u)] >> (14742u % 32u)), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(global1.d, -1i, -50169i, u_input.b.x), vec4<i32>(u_input.b.x, 1i, 8654i, -29326i), vec4<i32>(2147483647i, 12096i, -37799i, 1i))), _wgslsmith_mult_i32(_wgslsmith_mod_i32(_wgslsmith_mult_i32(-40458i, u_input.b.x), global0[_wgslsmith_index_u32(var_0.x >> (11314u % 32u), 5u)]), -26136i), global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(var_0.x, _wgslsmith_div_u32(u_input.a.x, 1u), 4294967295u << (global1.c % 32u)), 5u)], abs(-u_input.b.x)), func_3(func_3(func_3(global2[_wgslsmith_index_u32(88101u, 9u)], ~vec4<i32>(9982i, global1.d, global1.d, 2147483647i), func_2()), -_wgslsmith_clamp_vec4_i32(vec4<i32>(global1.d, u_input.b.x, 2147483647i, global0[_wgslsmith_index_u32(var_0.x, 5u)]), vec4<i32>(u_input.b.x, global0[_wgslsmith_index_u32(41614u, 5u)], 45566i, -10496i), vec4<i32>(0i, -12812i, 42346i, -83374i)), Struct_1(789f)), -vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, 1i), func_2()).a).a;
    var var_3 = 1i;
    var_0 = _wgslsmith_mod_vec3_u32(~abs(~vec3<u32>(u_input.a.x, 43634u, global1.b.x)), select(u_input.a, vec3<u32>(min(u_input.a.x, 84569u), 9118u & u_input.a.x, _wgslsmith_div_u32(1u, 9403u)), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true)) ^ ~global1.b.wxx);
    let var_4 = vec3<u32>(global1.b.x, _wgslsmith_add_u32(_wgslsmith_mod_u32(0u, u_input.a.x), ~u_input.a.x), 0u);
    var var_5 = !vec3<bool>((true == (8721i > global0[_wgslsmith_index_u32(1u, 5u)])) | !select(false, false, false), false, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(_wgslsmith_add_u32(~var_4.x, global1.b.x), _wgslsmith_add_u32(73750u, 11920u)), _wgslsmith_dot_vec2_i32(vec2<i32>(-23538i, ~0i), ~min(~u_input.b, vec2<i32>(u_input.b.x, global1.d))), ~global1.c, 111334u);
}

