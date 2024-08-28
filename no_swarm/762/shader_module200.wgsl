struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: vec2<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 20> = array<vec3<f32>, 20>(vec3<f32>(1054f, 609f, -269f), vec3<f32>(497f, 2156f, 854f), vec3<f32>(-143f, 369f, -1152f), vec3<f32>(-1241f, -1753f, 202f), vec3<f32>(501f, -1497f, -250f), vec3<f32>(-1262f, 320f, 762f), vec3<f32>(-158f, -597f, 2204f), vec3<f32>(-531f, -158f, 304f), vec3<f32>(1175f, 918f, 985f), vec3<f32>(1280f, 1000f, 191f), vec3<f32>(853f, 592f, 686f), vec3<f32>(842f, -317f, 1107f), vec3<f32>(265f, -502f, 1444f), vec3<f32>(-1041f, 306f, 767f), vec3<f32>(1642f, 770f, -1008f), vec3<f32>(-178f, -253f, 1302f), vec3<f32>(-120f, 176f, 202f), vec3<f32>(475f, 986f, -885f), vec3<f32>(141f, 616f, 1000f), vec3<f32>(-554f, -307f, -777f));

var<private> global1: array<i32, 22> = array<i32, 22>(i32(-2147483648), 29102i, 1i, 28309i, 35213i, -11543i, 2147483647i, i32(-2147483648), 1i, -16650i, 1i, -71539i, 62143i, -21624i, 1i, 70636i, i32(-2147483648), 14270i, -43510i, 2147483647i, -51622i, 2147483647i);

var<private> global2: vec3<u32> = vec3<u32>(1u, 0u, 48973u);

var<private> global3: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(true));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32) -> bool {
    global0 = array<vec3<f32>, 20>();
    let var_0 = _wgslsmith_dot_vec3_u32(abs(vec3<u32>(~(~arg_0), arg_0, firstTrailingBit(_wgslsmith_mod_u32(58773u, arg_0)))), ~_wgslsmith_sub_vec3_u32(vec3<u32>(1u, _wgslsmith_clamp_u32(4294967295u, global2.x, arg_0), u_input.a.x), vec3<u32>(_wgslsmith_sub_u32(global2.x, 20879u), u_input.a.x >> (16566u % 32u), 43427u)));
    global2 = ~abs(~_wgslsmith_sub_vec3_u32(reverseBits(vec3<u32>(u_input.a.x, u_input.a.x, 1u)), ~vec3<u32>(3967u, var_0, 4294967295u)));
    var var_1 = abs(vec2<u32>(firstTrailingBit(global2.x), ~75481u) | ~vec2<u32>(~1u, 4294967295u));
    global0 = array<vec3<f32>, 20>();
    return true;
}

fn func_2(arg_0: vec4<bool>) -> Struct_1 {
    global1 = array<i32, 22>();
    var var_0 = func_3(min(~_wgslsmith_sub_u32(4294967295u, ~1u), 14055u));
    var var_1 = ~(~abs(-select(vec3<i32>(0i, global1[_wgslsmith_index_u32(u_input.a.x, 22u)], -20577i), vec3<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 22u)], 2147483647i, global1[_wgslsmith_index_u32(global2.x, 22u)]), arg_0.x)));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-115f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-352f - -914f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(903f)), 382f) - _wgslsmith_f_op_f32(f32(-1f) * -677f)) + _wgslsmith_f_op_f32(trunc(-2431f))));
    var var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_2 + var_2), var_2) - vec2<f32>(var_2, _wgslsmith_f_op_f32(f32(-1f) * -961f)));
    return global3[_wgslsmith_index_u32(global2.x, 1u)];
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 22u)], global1[_wgslsmith_index_u32(39243u, 22u)], -8854i), vec3<i32>(2147483647i, 2147483647i, 3415i) | vec3<i32>(2147483647i, global1[_wgslsmith_index_u32(4294967295u, 22u)], global1[_wgslsmith_index_u32(global2.x, 22u)])) >> (~global2.x % 32u), -_wgslsmith_sub_i32(-14058i, ~24843i)) == global1[_wgslsmith_index_u32(~6945u, 22u)];
    global3 = array<Struct_1, 1>();
    global0 = array<vec3<f32>, 20>();
    let var_1 = (_wgslsmith_mod_u32(firstLeadingBit(_wgslsmith_mult_u32(u_input.a.x, 0u)), global2.x) << (global2.x % 32u)) << (firstLeadingBit(_wgslsmith_mod_u32(0u, global2.x)) % 32u);
    global2 = ~vec3<u32>(~global2.x, _wgslsmith_dot_vec4_u32(vec4<u32>(firstLeadingBit(105059u), ~var_1, var_1, global2.x), ~vec4<u32>(var_1, var_1, 22072u, 4294967295u) | (vec4<u32>(1u, u_input.a.x, var_1, 0u) & vec4<u32>(u_input.a.x, 61744u, 22686u, 27890u))), 4294967295u);
    return Struct_1(var_0);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>) -> vec4<bool> {
    global0 = array<vec3<f32>, 20>();
    let var_0 = 1u;
    let var_1 = i32(-1i) * -1i;
    var var_2 = 1u ^ ~u_input.a.x;
    global0 = array<vec3<f32>, 20>();
    return !(!vec4<bool>(func_4(arg_0.a, Struct_1(true)).a && all(vec4<bool>(arg_1.a, true, arg_0.a, arg_1.a)), arg_2.x, all(vec2<bool>(arg_1.a, arg_1.a)), select(arg_2.x, all(vec4<bool>(arg_1.a, false, arg_1.a, arg_1.a)), any(vec3<bool>(arg_0.a, false, arg_2.x)))));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec2<i32>) -> vec3<u32> {
    var var_0 = select(!vec4<bool>(false, (u_input.a.x >> (4294967295u % 32u)) <= 1u, !arg_0.a, !(!arg_0.a)), !func_5(func_4(all(vec3<bool>(false, true, false)), func_2(vec4<bool>(true, false, false, arg_0.a))), func_2(!vec4<bool>(arg_0.a, false, true, true)), vec2<bool>(true, true)), select(vec4<bool>(true, func_5(func_4(true, arg_0), func_2(vec4<bool>(arg_0.a, false, true, arg_0.a)), !vec2<bool>(arg_0.a, arg_0.a)).x, any(!vec3<bool>(arg_0.a, true, arg_0.a)), func_5(func_4(arg_0.a, global3[_wgslsmith_index_u32(0u, 1u)]), Struct_1(arg_0.a), vec2<bool>(true, true)).x), vec4<bool>(false, true, !func_5(global3[_wgslsmith_index_u32(global2.x, 1u)], Struct_1(true), vec2<bool>(true, false)).x, all(vec3<bool>(true, true, true))), any(vec3<bool>(false, true, any(vec4<bool>(false, false, true, arg_0.a))))));
    let var_1 = 0u;
    let var_2 = abs(arg_1.x);
    global0 = array<vec3<f32>, 20>();
    global0 = array<vec3<f32>, 20>();
    return _wgslsmith_sub_vec3_u32(~_wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(7982u, var_1, 1u), abs(vec3<u32>(1u, 26442u, global2.x)), ~vec3<u32>(u_input.a.x, 5013u, 1u)), vec3<u32>(_wgslsmith_clamp_u32(u_input.a.x, 4294967295u, 6818u), 0u, firstTrailingBit(0u)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 1u, var_1), vec3<u32>(u_input.a.x, 0u, 1u)) ^ _wgslsmith_sub_vec3_u32(vec3<u32>(15925u, u_input.a.x, 9785u), vec3<u32>(81204u, var_1, u_input.a.x))), reverseBits(~(~abs(vec3<u32>(u_input.a.x, 13468u, 1u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 1>();
    global2 = abs(vec3<u32>(2561u, 4294967295u, _wgslsmith_mult_u32(u_input.a.x, global2.x) << (min(8917u, global2.x) % 32u))) & select(func_1(Struct_1(true), vec4<i32>(~global1[_wgslsmith_index_u32(0u, 22u)], ~global1[_wgslsmith_index_u32(u_input.a.x, 22u)], -global1[_wgslsmith_index_u32(u_input.a.x, 22u)], -1i), _wgslsmith_mult_vec2_i32(abs(vec2<i32>(-2147483647i, global1[_wgslsmith_index_u32(global2.x, 22u)])), min(vec2<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 22u)], 1i), vec2<i32>(global1[_wgslsmith_index_u32(1u, 22u)], global1[_wgslsmith_index_u32(2564u, 22u)])))), ~(~(~vec3<u32>(u_input.a.x, global2.x, 1u))), true);
    let var_0 = u_input.a.x;
    var var_1 = -1925f;
    global0 = array<vec3<f32>, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_clamp_i32(-1i, global1[_wgslsmith_index_u32(global2.x, 22u)], firstLeadingBit(global1[_wgslsmith_index_u32(global2.x, 22u)] ^ global1[_wgslsmith_index_u32(26124u, 22u)])), global1[_wgslsmith_index_u32(19296u, 22u)], _wgslsmith_f_op_f32(-567f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1000f, 132f), _wgslsmith_f_op_f32(f32(-1f) * -531f)))))), vec2<i32>(global1[_wgslsmith_index_u32(0u, 22u)], _wgslsmith_sub_i32(global1[_wgslsmith_index_u32(4294967295u, 22u)], 16946i | countOneBits(global1[_wgslsmith_index_u32(28170u, 22u)]))), abs(vec2<i32>(abs(global1[_wgslsmith_index_u32(abs(var_0), 22u)]), firstLeadingBit(3556i))));
}

