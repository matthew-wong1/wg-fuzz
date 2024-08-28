struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<f32>,
    e: vec3<f32>,
}

struct Struct_4 {
    a: bool,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 19>;

var<private> global1: bool = false;

var<private> global2: array<f32, 27> = array<f32, 27>(-425f, 101f, -148f, 1653f, 1156f, -382f, 2312f, -1636f, -1813f, -416f, 903f, 486f, -784f, 2142f, 233f, -431f, -1196f, 900f, 643f, -405f, -1176f, -1200f, -1382f, -1298f, 1312f, -706f, -956f);

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: Struct_4) -> bool {
    var var_0 = vec3<f32>(1047f, -2709f, 304f);
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(567f + _wgslsmith_f_op_f32(abs(-1086f))), global2[_wgslsmith_index_u32(4294967295u >> (u_input.b % 32u), 27u)]));
    var var_2 = _wgslsmith_div_vec4_i32(vec4<i32>(-6622i, -1i, u_input.a, u_input.a) >> (arg_2.b % vec4<u32>(32u)), vec4<i32>(u_input.a, 41118i, _wgslsmith_div_i32(29923i, select(2147483647i, u_input.a, false)), _wgslsmith_add_i32(1i, -8144i))) >> (arg_2.b % vec4<u32>(32u));
    global1 = true;
    return false;
}

fn func_2() -> i32 {
    let var_0 = ~_wgslsmith_add_i32(~u_input.a, abs(1i));
    let var_1 = Struct_1(!(true != func_3(_wgslsmith_f_op_f32(floor(550f)), true, Struct_4(false, vec4<u32>(1u, u_input.b, 4294967295u, u_input.b)))));
    let var_2 = Struct_4(!(!any(vec3<bool>(var_1.a, true, var_1.a))), ~(~max(vec4<u32>(u_input.b, 4294967295u, 0u, u_input.b), max(vec4<u32>(6052u, u_input.b, 1u, 4294967295u), vec4<u32>(32744u, 4294967295u, u_input.b, u_input.b)))));
    global1 = true;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1000f, global2[_wgslsmith_index_u32(50616u, 27u)], 715f, 181f), vec4<f32>(893f, global2[_wgslsmith_index_u32(1u, 27u)], 1000f, global2[_wgslsmith_index_u32(1u, 27u)]))), _wgslsmith_div_vec4_f32(vec4<f32>(-221f, 567f, global2[_wgslsmith_index_u32(90489u, 27u)], -154f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1770f, -1611f, -2933f, global2[_wgslsmith_index_u32(4294967295u, 27u)])))))))));
    return _wgslsmith_sub_i32(u_input.a, ~(u_input.a >> (firstTrailingBit(var_2.b.x) % 32u)));
}

fn func_1(arg_0: u32, arg_1: vec4<u32>, arg_2: f32) -> i32 {
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_clamp_u32(~firstTrailingBit(51210u | arg_1.x), ~_wgslsmith_dot_vec4_u32(abs(vec4<u32>(arg_1.x, arg_0, 1u, 8336u)), ~vec4<u32>(u_input.b, 38816u, 0u, arg_0)), u_input.b), arg_1.x), 27u)];
    global0 = array<Struct_2, 19>();
    var var_1 = ~(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(40496u, u_input.b)), vec2<u32>(11751u, arg_0)) | 0u);
    var var_2 = min(firstLeadingBit((~vec2<i32>(u_input.a, u_input.a) ^ (vec2<i32>(u_input.a, 2147483647i) & vec2<i32>(0i, 23186i))) << (select(arg_1.zz, abs(arg_1.xw), true) % vec2<u32>(32u))), abs(_wgslsmith_div_vec2_i32(-vec2<i32>(u_input.a, 2147483647i), ~vec2<i32>(6679i, u_input.a))) << (_wgslsmith_mod_vec2_u32(arg_1.yz, select(_wgslsmith_div_vec2_u32(arg_1.yy, arg_1.ww), select(arg_1.xx, vec2<u32>(arg_1.x, 39938u), false), vec2<bool>(true, true))) % vec2<u32>(32u)));
    let var_3 = Struct_3(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(~(~vec4<i32>(22082i, 0i, 20320i, -1i)), vec4<i32>(13657i, ~var_2.x, func_2(), _wgslsmith_mult_i32(16139i, u_input.a))), vec4<i32>(_wgslsmith_mult_i32(var_2.x >> (4294967295u % 32u), ~u_input.a), countOneBits(u_input.a << (u_input.b % 32u)), _wgslsmith_mod_i32(var_2.x, var_2.x), 53154i)), abs(arg_0), var_2.x, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(6622u, 27u)], global2[_wgslsmith_index_u32(u_input.b, 27u)], -1477f), vec3<f32>(arg_2, arg_2, -817f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, 1673f, arg_2) + vec3<f32>(global2[_wgslsmith_index_u32(30633u, 27u)], -606f, -1151f)))), vec3<f32>(global2[_wgslsmith_index_u32(min(~arg_0, select(28693u, arg_1.x, false)), 27u)], _wgslsmith_f_op_f32(min(arg_2, global2[_wgslsmith_index_u32(arg_1.x << (1u % 32u), 27u)])), global2[_wgslsmith_index_u32(~(~4294967295u), 27u)]), vec3<bool>((var_2.x <= 49024i) | (var_2.x != u_input.a), u_input.a > (i32(-1i) * -28579i), true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(758f, _wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(arg_1.x, 27u)])), -156f))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2[_wgslsmith_index_u32(95175u, 27u)], -636f, global2[_wgslsmith_index_u32(138271u, 27u)]), vec3<f32>(arg_2, 1477f, global2[_wgslsmith_index_u32(u_input.b, 27u)]), true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 27u)], -1437f, 1526f) - vec3<f32>(arg_2, global2[_wgslsmith_index_u32(135u, 27u)], arg_2)) * _wgslsmith_div_vec3_f32(vec3<f32>(951f, arg_2, global2[_wgslsmith_index_u32(87240u, 27u)]), vec3<f32>(arg_2, -670f, arg_2))), select(true, true, true)))));
    return var_3.a;
}

fn func_4(arg_0: i32, arg_1: i32) -> vec3<bool> {
    var var_0 = vec3<bool>(!(~u_input.b < u_input.b), !(!all(vec3<bool>(true, false, false)) & true), false);
    global0 = array<Struct_2, 19>();
    var var_1 = ~1u >> (~(~(_wgslsmith_dot_vec3_u32(vec3<u32>(13504u, 0u, 0u), vec3<u32>(0u, u_input.b, 0u)) ^ 79120u)) % 32u);
    global0 = array<Struct_2, 19>();
    var var_2 = Struct_4(true, ~vec4<u32>(_wgslsmith_dot_vec3_u32(min(vec3<u32>(4294967295u, u_input.b, u_input.b), vec3<u32>(64936u, 4294967295u, u_input.b)), vec3<u32>(u_input.b, u_input.b, 50034u)), 1u, countOneBits(~1u), u_input.b));
    return vec3<bool>(var_0.x, !select(true, any(!vec3<bool>(false, var_2.a, var_2.a)), _wgslsmith_f_op_f32(f32(-1f) * -700f) < global2[_wgslsmith_index_u32(u_input.b, 27u)]), var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !func_4(_wgslsmith_div_i32(-u_input.a, _wgslsmith_clamp_i32(u_input.a, min(1i, 0i), abs(-1i))), _wgslsmith_add_i32(func_1(u_input.b, _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.b, 1u, 30095u), vec4<u32>(4294967295u, 4294967295u, u_input.b, 17052u), vec4<u32>(u_input.b, 32737u, 4294967295u, 61378u)), _wgslsmith_div_f32(global2[_wgslsmith_index_u32(20977u, 27u)], -1000f)), _wgslsmith_sub_i32(14244i, 2010i)));
    global2 = array<f32, 27>();
    global0 = array<Struct_2, 19>();
    let var_1 = min(abs(~abs(vec2<u32>(u_input.b, u_input.b))) | ~(~abs(vec2<u32>(u_input.b, 7232u))), vec2<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.b, u_input.b)) & (abs(u_input.b) & _wgslsmith_clamp_u32(63659u, 1u, u_input.b)), _wgslsmith_mod_u32(u_input.b, ~u_input.b) >> (1u % 32u)));
    var var_2 = max(countOneBits(reverseBits(_wgslsmith_clamp_u32(17437u, var_1.x, u_input.b))), ~(_wgslsmith_dot_vec3_u32(vec3<u32>(17628u, 4294967295u, var_1.x), vec3<u32>(22045u, 27508u, 1u)) << (1u % 32u))) << (_wgslsmith_mod_u32(_wgslsmith_mod_u32(abs(countOneBits(4294967295u)), 1u), ~(~4294967295u)) % 32u);
    var var_3 = -_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, _wgslsmith_div_i32(~u_input.a, u_input.a)), _wgslsmith_div_vec2_i32(vec2<i32>(1i, _wgslsmith_mult_i32(u_input.a, 0i)), ~(-vec2<i32>(u_input.a, u_input.a))));
    var var_4 = true;
    var_2 = 4634u;
    let x = u_input.a;
    s_output = StorageBuffer(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_1.x, ~_wgslsmith_clamp_u32(u_input.b, var_1.x, ~var_1.x)), 27u)], var_3.x, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(562f, global2[_wgslsmith_index_u32(31877u, 27u)])))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global2[_wgslsmith_index_u32(31906u, 27u)], global2[_wgslsmith_index_u32(0u, 27u)]), vec2<f32>(1332f, 1282f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(497f, global2[_wgslsmith_index_u32(var_1.x, 27u)])))))));
}

