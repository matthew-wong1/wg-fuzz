struct Struct_1 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 30> = array<i32, 30>(17335i, -1i, -5822i, 12122i, -63964i, 1i, i32(-2147483648), -42079i, 0i, -1i, 53565i, i32(-2147483648), -18852i, 1i, -17203i, 2147483647i, 2147483647i, 19407i, -7065i, 34317i, -37168i, 44249i, 2147483647i, 59876i, 71529i, -10082i, 0i, 7791i, 40284i, 22979i);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_2) -> u32 {
    global0 = array<i32, 30>();
    let var_0 = arg_1;
    return _wgslsmith_mod_u32(u_input.a & abs(15033u), firstTrailingBit(min(1u, _wgslsmith_add_u32(1u, 72070u))) << (_wgslsmith_add_u32(_wgslsmith_sub_u32(~0u, arg_1.a.a.x), _wgslsmith_clamp_u32(reverseBits(1u), abs(var_0.a.a.x), select(arg_1.a.a.x, 0u, true))) % 32u));
}

fn func_4(arg_0: i32, arg_1: u32) -> vec4<u32> {
    global0 = array<i32, 30>();
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -621f)), -401f));
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1074f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * var_0)), -1307f)), -512f) - vec3<f32>(969f, -160f, var_0));
    let var_2 = _wgslsmith_clamp_vec3_i32(~vec3<i32>(-12226i, max(-1i, global0[_wgslsmith_index_u32(u_input.a, 30u)]), i32(-1i) * -24197i) | abs(-max(vec3<i32>(0i, 39477i, -1i), vec3<i32>(-33272i, 2147483647i, 0i))), vec3<i32>(~abs(arg_0), arg_0, -global0[_wgslsmith_index_u32(arg_1, 30u)]), abs(reverseBits(select(~vec3<i32>(28969i, global0[_wgslsmith_index_u32(23736u, 30u)], 2147483647i), vec3<i32>(-2147483647i, 1i, arg_0), any(vec4<bool>(false, false, false, false))))));
    var var_3 = Struct_1(vec4<u32>(_wgslsmith_add_u32(~firstLeadingBit(arg_1), u_input.a), 4294967295u, u_input.a, ~_wgslsmith_mod_u32(countOneBits(u_input.a), _wgslsmith_mult_u32(55587u, 22958u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 + var_1.x) + 146f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-148f * 859f), _wgslsmith_f_op_f32(var_1.x - -882f)))), -1011f));
    return firstLeadingBit(~var_3.a);
}

fn func_2(arg_0: bool) -> Struct_1 {
    global0 = array<i32, 30>();
    global0 = array<i32, 30>();
    global0 = array<i32, 30>();
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.a >> (~(~1u) % 32u), u_input.a), _wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(~(~vec2<u32>(0u, u_input.a)), vec2<u32>(abs(u_input.a), _wgslsmith_sub_u32(u_input.a, u_input.a))), vec2<u32>(u_input.a, 31445u))), 30u)];
    return Struct_1(func_4(global0[_wgslsmith_index_u32(func_3(Struct_1(select(vec4<u32>(0u, 0u, u_input.a, u_input.a), vec4<u32>(60051u, 12080u, u_input.a, u_input.a), true), _wgslsmith_f_op_f32(167f * 1000f)), Struct_3(Struct_1(vec4<u32>(u_input.a, 36415u, 0u, 0u), -2497f), -1i), Struct_2(vec4<i32>(26441i, global0[_wgslsmith_index_u32(u_input.a, 30u)], -40772i, -1i))), 30u)], _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a >> (u_input.a % 32u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(82363u, 1u), vec2<u32>(78890u, u_input.a), vec2<u32>(u_input.a, 15157u) | vec2<u32>(u_input.a, u_input.a)))), _wgslsmith_f_op_f32(round(573f)));
}

fn func_5(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_mod_vec4_u32(max(arg_0.a, arg_0.a), vec4<u32>(_wgslsmith_div_u32(arg_0.a.x, u_input.a), ~1u, ~1u, ~4294967295u)) >> (min(arg_0.a, firstTrailingBit(_wgslsmith_add_vec4_u32(arg_0.a, arg_0.a))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-552f))) * arg_0.b))));
    global0 = array<i32, 30>();
    let var_1 = Struct_3(func_2(true), countOneBits(i32(-1i) * -arg_1));
    var var_2 = abs(min(_wgslsmith_div_u32(func_4(global0[_wgslsmith_index_u32(0u, 30u)], 9903u).x, reverseBits(var_0.a.x)) | 62238u, firstLeadingBit(countOneBits(~arg_0.a.x))));
    let var_3 = ~(var_1.a.a.zz ^ _wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(var_1.a.a.wx, ~vec2<u32>(92188u, u_input.a)), ~var_0.a.yz));
    return func_2(~(~4294967295u | _wgslsmith_dot_vec3_u32(vec3<u32>(42308u, 55629u, 1u), arg_0.a.yyw)) == ~var_1.a.a.x);
}

fn func_1(arg_0: u32, arg_1: Struct_3) -> vec2<bool> {
    global0 = array<i32, 30>();
    var var_0 = false;
    var var_1 = Struct_3(func_5(func_2(_wgslsmith_f_op_f32(f32(-1f) * -402f) == _wgslsmith_f_op_f32(select(843f, arg_1.a.b, false))), -(~(-1i))), global0[_wgslsmith_index_u32(abs(~u_input.a), 30u)]);
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-579f, var_1.a.b)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(625f)) + _wgslsmith_f_op_f32(-arg_1.a.b))))));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a.b), 1f);
    return select(select(!(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))), !vec2<bool>(true, all(vec2<bool>(false, true))), select(vec2<bool>(true, true), select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(true, true)), select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), true)))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(false, true, false)), true)), select(vec2<bool>(false, true), vec2<bool>(false, true), true), !all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), true))), select(vec2<bool>(true, any(vec3<bool>(false, false, true))), vec2<bool>(false, any(vec3<bool>(true, false, false))), vec2<bool>(true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(u_input.a, u_input.a);
    let var_1 = countOneBits(_wgslsmith_clamp_vec2_i32(select(-(vec2<i32>(1i, 0i) & vec2<i32>(global0[_wgslsmith_index_u32(5615u, 30u)], global0[_wgslsmith_index_u32(var_0.x, 30u)])), _wgslsmith_add_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(36442u, 30u)], global0[_wgslsmith_index_u32(1u, 30u)]) >> (vec2<u32>(u_input.a, 22336u) % vec2<u32>(32u)), firstTrailingBit(vec2<i32>(44099i, 68592i))), func_1(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, var_0.x, 29485u), vec3<u32>(1u, u_input.a, var_0.x)), Struct_3(Struct_1(vec4<u32>(u_input.a, 4294967295u, u_input.a, 69978u), -1277f), global0[_wgslsmith_index_u32(var_0.x, 30u)]))), vec2<i32>(_wgslsmith_div_i32(firstTrailingBit(35126i), global0[_wgslsmith_index_u32(1u, 30u)]), _wgslsmith_add_i32(-1i, 26629i)), min(select(vec2<i32>(global0[_wgslsmith_index_u32(var_0.x, 30u)], -22963i), vec2<i32>(0i, -1i), true), _wgslsmith_clamp_vec2_i32(~vec2<i32>(-2147483647i, 1i), vec2<i32>(23517i, global0[_wgslsmith_index_u32(82718u, 30u)]), _wgslsmith_div_vec2_i32(vec2<i32>(1i, 0i), vec2<i32>(2147483647i, global0[_wgslsmith_index_u32(23701u, 30u)]))))));
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1292f * -231f)))), 716f)));
    var var_3 = var_1;
    var_3 = vec2<i32>(var_3.x, ~var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(var_1.x, -_wgslsmith_sub_i32(abs(var_1.x), min(var_3.x, -11034i))), ~vec2<i32>(_wgslsmith_mult_i32(-var_1.x, -15597i), -1i), ~_wgslsmith_mult_i32(countOneBits(var_1.x), _wgslsmith_clamp_i32(min(20951i, var_3.x), ~0i, abs(-2147483647i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -324f) - _wgslsmith_f_op_f32(floor(1f))));
}

