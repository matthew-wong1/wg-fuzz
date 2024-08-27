struct Struct_1 {
    a: i32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12>;

var<private> global1: vec4<i32>;

var<private> global2: array<u32, 19> = array<u32, 19>(9937u, 1u, 33395u, 1u, 18862u, 4294967295u, 4294967295u, 4294967295u, 1u, 32589u, 4294967295u, 0u, 0u, 1u, 43066u, 50155u, 4294967295u, 3979u, 46878u);

var<private> global3: array<Struct_1, 4>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = Struct_1(max(u_input.a.x, 1i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-340f, -1344f, -1422f, -361f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-825f, -1000f, -333f, 1410f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1009f, 1000f, -699f, 556f), vec4<f32>(1323f, 1000f, -497f, 494f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-933f, -768f, -280f, 1210f) * vec4<f32>(1336f, -411f, -296f, 836f))) + vec4<f32>(_wgslsmith_f_op_f32(round(-693f)), -1761f, _wgslsmith_f_op_f32(floor(1490f)), _wgslsmith_f_op_f32(floor(-962f))))));
    let var_1 = Struct_1(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(_wgslsmith_mult_i32(var_0.a, global1.x), -1i) ^ -1i, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(u_input.a.x, var_0.a, -2147483647i, -85122i)), vec4<i32>(-35094i, 1i, 2147483647i, global1.x)), -1i), -45420i), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(var_0.b)) + var_0.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.b.x), 1924f, 1028f, _wgslsmith_f_op_f32(-var_0.b.x))), true)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -722f));
    global1 = -vec4<i32>(var_0.a, ~var_0.a, _wgslsmith_mult_i32(firstLeadingBit(i32(-1i) * -20745i), _wgslsmith_mod_i32(1i, var_0.a) | (var_1.a << (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(48041u, 19u)], 19u)] % 32u))), _wgslsmith_mod_i32(~_wgslsmith_add_i32(u_input.a.x, 0i), _wgslsmith_div_i32(-46468i, 2147483647i)));
    global2 = array<u32, 19>();
    return _wgslsmith_f_op_f32(var_0.b.x + var_1.b.x);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: vec3<bool>) -> vec3<i32> {
    var var_0 = arg_1.a;
    var var_1 = !select(true, arg_3.x, !(_wgslsmith_clamp_i32(-2147483647i, arg_1.a, -16403i) == arg_0.a));
    var var_2 = Struct_1(u_input.a.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_3()), arg_2.x, arg_2.x, 1000f)));
    var_0 = ~3434i;
    let var_3 = !select(select(select(vec4<bool>(arg_3.x, true, arg_3.x, arg_3.x), !vec4<bool>(arg_3.x, false, arg_3.x, arg_3.x), vec4<bool>(arg_3.x, true, arg_3.x, false)), !(!vec4<bool>(false, arg_3.x, arg_3.x, arg_3.x)), false), !vec4<bool>(any(vec3<bool>(false, false, false)), all(vec3<bool>(false, false, arg_3.x)), select(true, arg_3.x, arg_3.x), arg_3.x && true), !select(!vec4<bool>(true, true, false, arg_3.x), vec4<bool>(true, true, false, arg_3.x), !vec4<bool>(false, arg_3.x, arg_3.x, false)));
    return vec3<i32>(countOneBits(1i), _wgslsmith_div_i32(-(i32(-1i) * -2147483647i) & _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(579i, 0i, 1i, arg_1.a), vec4<i32>(global1.x, -5319i, -31556i, -7539i)), 1i), ~(reverseBits(0i) ^ select(arg_1.a, 1862i, true))), _wgslsmith_dot_vec2_i32(u_input.a >> (~vec2<u32>(0u, 1u) % vec2<u32>(32u)), select(global1.ww, _wgslsmith_div_vec2_i32(global1.xy, ~global1.wy), select(var_3.yw, vec2<bool>(true, true), vec2<bool>(false, arg_3.x)))));
}

fn func_1(arg_0: i32, arg_1: vec4<i32>) -> u32 {
    var var_0 = ~(select(select(select(vec3<u32>(47636u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 19u)], 19u)], 19u)], 19u)], 0u), vec3<u32>(global2[_wgslsmith_index_u32(1u, 19u)], 24281u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 19u)], 19u)], 19u)]), vec3<bool>(true, true, false)), max(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 19u)], 19u)], 19u)], 19u)], global2[_wgslsmith_index_u32(16497u, 19u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(43425u, 19u)], 19u)]), vec3<u32>(54319u, 83610u, 1u)), vec3<bool>(true, true, true)), abs(~vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], 19u)], global2[_wgslsmith_index_u32(33590u, 19u)], 139u)), vec3<bool>(true, true, true)) >> (~(~max(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 19u)], 19u)], 19u)], 19u)], 19u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(19022u, 19u)], 19u)], 19u)], 19u)], 19u)], 19u)], 19u)], 19u)], 4294967295u), vec3<u32>(93313u, global2[_wgslsmith_index_u32(0u, 19u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(41223u, 19u)], 19u)], 19u)]))) % vec3<u32>(32u)));
    let var_1 = Struct_1(_wgslsmith_dot_vec3_i32(select(_wgslsmith_div_vec3_i32(vec3<i32>(arg_0, 69160i, -30545i), global1.wyy) | ~vec3<i32>(u_input.a.x, 25877i, arg_0), global1.xxw, any(vec3<bool>(true, true, true))), firstTrailingBit(~func_2(Struct_1(-8792i, vec4<f32>(287f, -941f, -1037f, 1138f)), Struct_1(global1.x, vec4<f32>(2085f, -1211f, 1802f, 1175f)), vec4<f32>(144f, -1032f, -555f, 893f), vec3<bool>(true, true, true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-141f, 879f, -415f, -972f)))));
    let var_2 = select(all(vec2<bool>(!all(vec2<bool>(false, false)), _wgslsmith_f_op_f32(-var_1.b.x) > _wgslsmith_f_op_f32(f32(-1f) * -438f))), any(select(vec3<bool>(true, false, any(vec3<bool>(false, true, false))), vec3<bool>(true, true, true), !select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false))), all(!vec2<bool>(all(vec4<bool>(false, false, false, false)), select(true, true, false))));
    return global2[_wgslsmith_index_u32(select(global2[_wgslsmith_index_u32(1u, 19u)], global2[_wgslsmith_index_u32(1u, 19u)], true), 19u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(min(abs(~(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 19u)], 19u)], 19u)], global2[_wgslsmith_index_u32(1u, 19u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(59090u, 19u)], 19u)], global2[_wgslsmith_index_u32(20210u, 19u)]) & vec4<u32>(global2[_wgslsmith_index_u32(49336u, 19u)], 0u, 34859u, global2[_wgslsmith_index_u32(4294967295u, 19u)]))), ~_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], 63964u, global2[_wgslsmith_index_u32(4294967295u, 19u)], 52250u), vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], 19u)], 26866u, 4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], 19u)])), _wgslsmith_clamp_vec4_u32(vec4<u32>(35340u, 4294967295u, 1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(12612u, 19u)], 19u)]), vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 19u)], 19u)], global2[_wgslsmith_index_u32(56784u, 19u)], 9257u, 24399u), vec4<u32>(global2[_wgslsmith_index_u32(26095u, 19u)], 0u, 0u, 75943u)))), vec4<u32>(min(global2[_wgslsmith_index_u32(min(1u, global2[_wgslsmith_index_u32(1519u, 19u)]), 19u)], ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 19u)], 19u)]), _wgslsmith_sub_u32(firstLeadingBit(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(23009u, 19u)], 19u)]), global2[_wgslsmith_index_u32(0u, 19u)] << (0u % 32u)), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(reverseBits(func_1(-22049i, vec4<i32>(-1i, -1i, 22709i, 15071i))), 19u)], 19u)], 19u)], global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(34210u, 19u)], 19u)], 19u)]), 19u)]) << (vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(34520u, 19u)], 19u)], global2[_wgslsmith_index_u32(40523u, 19u)]), _wgslsmith_div_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(0u, 19u)], 32013u), vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(70137u, 19u)], 19u)], 19u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(61120u, 19u)], 19u)], 19u)]))), global2[_wgslsmith_index_u32(~(~58092u), 19u)], ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(63428u, 19u)], 19u)], 19u)], 19u)] << (global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(6448u, 19u)], 19u)], 19u)] % 32u), 8451u ^ firstTrailingBit(global2[_wgslsmith_index_u32(95662u, 19u)])) % vec4<u32>(32u))), 12u)];
    global2 = array<u32, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(reverseBits(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 19u)], 19u)], 19u)], 19u)]), 19u)], 1u), 0u & global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 19u)], 19u)], 19u)], 19u)], 19u)], 110472u, 62008u), vec3<u32>(global2[_wgslsmith_index_u32(9718u, 19u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 19u)], 19u)], 19u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 19u)], 19u)])), 19u)], _wgslsmith_sub_u32(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(34595u, 19u)], 19u)], 19u)], 1u), 19u)], ~17039u), ~(~34846u)), _wgslsmith_add_vec4_u32(max(~vec4<u32>(1u, global2[_wgslsmith_index_u32(0u, 19u)], global2[_wgslsmith_index_u32(0u, 19u)], 12411u), _wgslsmith_sub_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(0u, 19u)], 71495u, 1u, 4294967295u), vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 19u)], 19u)], 19u)], 19u)], 19u)], 19u)], 19u)], 19u)], 1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], 1u))), vec4<u32>(global2[_wgslsmith_index_u32(firstLeadingBit(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1854u, 19u)], 19u)]), 19u)], global2[_wgslsmith_index_u32(1u, 19u)], 1u | global2[_wgslsmith_index_u32(541u, 19u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(68316u, 19u)], 19u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(var_0.b.x, -277f)), -1736f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.b.x, var_0.b.x, var_0.b.x), vec3<f32>(var_0.b.x, var_0.b.x, var_0.b.x))) * _wgslsmith_f_op_vec3_f32(var_0.b.www - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.x, var_0.b.x, var_0.b.x) + vec3<f32>(var_0.b.x, var_0.b.x, 798f))))));
}

