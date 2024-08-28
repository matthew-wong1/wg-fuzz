struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<f32, 9> = array<f32, 9>(-1219f, -716f, -491f, -298f, 106f, -806f, -199f, 126f, 533f);

var<private> global2: array<vec3<bool>, 15> = array<vec3<bool>, 15>(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false));

var<private> global3: vec2<f32>;

var<private> global4: i32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
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

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec4<f32>) -> vec3<i32> {
    var var_0 = arg_0;
    var var_1 = countOneBits(~0u);
    var var_2 = max(u_input.a, _wgslsmith_mult_u32(4294967295u, ~u_input.a << (_wgslsmith_dot_vec3_u32(max(vec3<u32>(4302u, 4294967295u, 4294967295u), vec3<u32>(u_input.a, 44065u, 0u)), vec3<u32>(1u, u_input.a, 1u)) % 32u)));
    let var_3 = _wgslsmith_div_vec4_u32(firstLeadingBit(~vec4<u32>(0u, 15841u, global0.x, u_input.a)) ^ vec4<u32>(max(29191u, 1u), 38550u, global0.x, ~4294967295u), ~_wgslsmith_div_vec4_u32(vec4<u32>(global0.x, global0.x, 85765u, global0.x), ~vec4<u32>(global0.x, 10416u, global0.x, 19417u))) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, _wgslsmith_mult_u32(firstTrailingBit(52467u), ~1u), _wgslsmith_add_u32(4294967295u, global0.x) ^ global0.x, 51964u), ~firstLeadingBit(vec4<u32>(u_input.a, global0.x, global0.x, 4294967295u))) % vec4<u32>(32u));
    let var_4 = select(~_wgslsmith_div_vec3_u32(var_3.wyz, var_3.yyw), vec3<u32>(var_3.x, 18948u, ~_wgslsmith_div_u32(0u, ~var_3.x)), vec3<bool>(_wgslsmith_add_u32(var_3.x, 4294967295u) == (_wgslsmith_dot_vec3_u32(var_3.wxy, vec3<u32>(49316u, global0.x, u_input.a)) & ~var_3.x), true, select(all(vec3<bool>(false, true, false)), true, true)));
    return vec3<i32>(arg_0.b.x << (u_input.a % 32u), -arg_0.b.x, -1i);
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: vec4<i32>) -> f32 {
    global0 = (~vec3<u32>(global0.x, 11354u, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, global0.x, 4294967295u, u_input.a), vec4<u32>(48068u, global0.x, global0.x, 0u))) >> (firstLeadingBit(abs(vec3<u32>(global0.x, global0.x, 0u))) % vec3<u32>(32u))) >> (vec3<u32>(global0.x ^ global0.x, 1u, u_input.a) % vec3<u32>(32u));
    let var_0 = 4294967295u;
    global0 = ~(~max((vec3<u32>(1u, u_input.a, 0u) << (vec3<u32>(0u, 52432u, 1u) % vec3<u32>(32u))) & vec3<u32>(31220u, global0.x, u_input.a), ~(~vec3<u32>(13257u, global0.x, 1u))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(arg_1.a * vec4<f32>(-610f, global1[_wgslsmith_index_u32(28071u, 9u)], 1278f, global3.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, 144f, 625f, arg_1.a.x))), false)) + arg_1.a), _wgslsmith_div_vec3_i32(-_wgslsmith_mult_vec3_i32(arg_1.b, arg_1.b) & ~arg_1.b, func_3(Struct_1(_wgslsmith_f_op_vec4_f32(arg_1.a * vec4<f32>(arg_1.a.x, arg_1.a.x, global1[_wgslsmith_index_u32(8332u, 9u)], global1[_wgslsmith_index_u32(global0.x, 9u)])), -arg_1.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 9u)] + -644f)), _wgslsmith_f_op_vec4_f32(-arg_1.a))));
    var var_2 = 4294967295u;
    return _wgslsmith_f_op_f32(floor(-1000f));
}

fn func_1(arg_0: vec2<bool>) -> vec2<f32> {
    global3 = vec2<f32>(global1[_wgslsmith_index_u32(1u, 9u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(-abs(vec2<i32>(65688i, 2147483647i)), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(u_input.a, 9u)], 1024f, global3.x, -515f) - vec4<f32>(-733f, -736f, global3.x, 777f)), vec3<i32>(1i, 1i, 1i)), vec2<bool>(true, !arg_0.x), firstLeadingBit(vec4<i32>(1i, 1i, 1i, 23132i)))) + global3.x));
    var var_0 = -2147483647i >> ((_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a, u_input.a, 0u), ~vec4<u32>(4294967295u, 79413u, 1u, u_input.a) | ~vec4<u32>(49207u, u_input.a, 65405u, global0.x)) | max(_wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.a, 26591u), u_input.a), select(0u, u_input.a ^ 4566u, !arg_0.x))) % 32u);
    var var_1 = select(!select(!vec4<bool>(arg_0.x, true, true, arg_0.x), !select(vec4<bool>(arg_0.x, true, true, true), vec4<bool>(false, true, false, arg_0.x), vec4<bool>(arg_0.x, false, arg_0.x, false)), !select(vec4<bool>(arg_0.x, false, false, true), vec4<bool>(true, true, arg_0.x, arg_0.x), vec4<bool>(false, true, arg_0.x, arg_0.x))), !vec4<bool>(arg_0.x, true, all(!global2[_wgslsmith_index_u32(global0.x, 15u)]), true), ~(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a, 13637u), vec3<u32>(4294967295u, 0u, global0.x)) | 0u) == (global0.x << ((~u_input.a >> (~71245u % 32u)) % 32u)));
    global4 = 19305i;
    var var_2 = vec4<u32>(u_input.a, ~1u, global0.x, min(u_input.a, ~_wgslsmith_add_u32(66914u, u_input.a)));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global3.x, global1[_wgslsmith_index_u32(6948u, 9u)]), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1826f, global1[_wgslsmith_index_u32(4294967295u, 9u)])))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(1u, 9u)], global3.x)))))) - vec2<f32>(-675f, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~abs(var_2.xyz), abs(~vec3<u32>(global0.x, 4294967295u, 28376u))), 9u)]));
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: vec2<f32>) -> Struct_1 {
    let var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-757f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0, global1[_wgslsmith_index_u32(global0.x, 9u)]))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_2.x)) * _wgslsmith_f_op_f32(1616f - global1[_wgslsmith_index_u32(u_input.a, 9u)]))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(875f, -1086f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) + _wgslsmith_f_op_f32(global3.x - 287f)) + _wgslsmith_f_op_f32(min(-938f, arg_2.x)))), abs(reverseBits(~vec3<i32>(-1i, -56568i, -1i))));
    let var_1 = 1659f;
    global4 = 41841i;
    let var_2 = var_0;
    global1 = array<f32, 9>();
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 9>();
    var var_0 = func_4(-1258f, u_input.a, _wgslsmith_f_op_vec2_f32(func_1(vec2<bool>(_wgslsmith_f_op_f32(f32(-1f) * -486f) == global3.x, true))));
    global4 = ~func_4(-1200f, firstTrailingBit(54581u), vec2<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 9u)]), 2328f)).b.x;
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -314f);
    global2 = array<vec3<bool>, 15>();
    var var_2 = select(!(!select(select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), false))), select(vec2<bool>(false | (1u >= u_input.a), any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false)))), !(!select(vec2<bool>(false, true), vec2<bool>(false, false), true)), vec2<bool>(all(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0.x, 64111u), 15u)]), true)), true);
    global4 = var_0.b.x;
    var var_3 = var_0.b.x;
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(640f, -1460f, _wgslsmith_f_op_f32(319f + _wgslsmith_f_op_f32(363f - var_0.a.x)), 418f) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.a.x, var_1, 1082f, -1099f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(~(var_0.b << ((vec3<u32>(1u, global0.x, u_input.a) ^ vec3<u32>(global0.x, global0.x, u_input.a)) % vec3<u32>(32u))) | -_wgslsmith_sub_vec3_i32(var_0.b, var_0.b), var_0.a, max(_wgslsmith_add_u32(26033u | _wgslsmith_clamp_u32(4294967295u, 1u, 57610u), u_input.a), (~1u | ~u_input.a) | countOneBits(~4294967295u)), 1i);
}

