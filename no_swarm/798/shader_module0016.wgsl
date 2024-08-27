struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: vec2<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 15>;

var<private> global1: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: bool) -> vec2<i32> {
    let var_0 = ~select(_wgslsmith_sub_vec4_i32(-select(vec4<i32>(1i, -83306i, 26736i, -1i), vec4<i32>(0i, 51133i, 0i, -10730i), vec4<bool>(global1.x, arg_0, true, arg_0)), min(vec4<i32>(10339i, -18433i, -1i, -64120i), vec4<i32>(4985i, 1i, 15877i, -1i)) >> ((vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) << (vec4<u32>(96307u, u_input.a.x, 26249u, u_input.a.x) % vec4<u32>(32u))) % vec4<u32>(32u))), vec4<i32>(~select(-7678i, 1i, false), 2147483647i >> (1u % 32u), -1i, min(_wgslsmith_dot_vec2_i32(vec2<i32>(-1310i, 3434i), vec2<i32>(0i, -1689i)), 0i)), vec4<bool>(global1.x, _wgslsmith_mod_u32(u_input.a.x, u_input.a.x) != 1u, all(select(vec4<bool>(false, arg_0, false, false), vec4<bool>(true, true, false, global1.x), vec4<bool>(true, true, global1.x, global1.x))), (u_input.a.x & 67451u) > ~44344u));
    global0 = array<f32, 15>();
    return var_0.wx;
}

fn func_2() -> i32 {
    var var_0 = Struct_4(_wgslsmith_dot_vec2_i32(func_3(global1.x), ~vec2<i32>(1i, 1i)), Struct_2(vec4<bool>(!select(global1.x, global1.x, global1.x), global1.x, true, global1.x), Struct_1(global1.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(20707u, 15u)] * 1000f), -548f))), Struct_1(true, -444f), Struct_1(all(!vec3<bool>(false, true, global1.x)), 1436f), Struct_1(!(global1.x & global1.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 15u)] - -374f))))));
    return _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a, var_0.a), vec2<i32>(select(reverseBits(var_0.a << (u_input.a.x % 32u)), -var_0.a, false), firstLeadingBit(-1i)));
}

fn func_1(arg_0: u32) -> bool {
    global0 = array<f32, 15>();
    global0 = array<f32, 15>();
    global1 = select(!vec2<bool>(true, !global1.x), vec2<bool>(1i < func_2(), !all(select(vec4<bool>(false, false, false, global1.x), vec4<bool>(true, global1.x, global1.x, global1.x), vec4<bool>(global1.x, global1.x, false, true)))), !vec2<bool>(!global1.x, global1.x));
    let var_0 = Struct_1(global1.x, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~_wgslsmith_mod_u32(28064u, arg_0), u_input.a.x), 15u)]);
    global1 = !vec2<bool>(var_0.a, !select(var_0.a, true || global1.x, true));
    return !(max(countOneBits(0i >> (u_input.a.x % 32u)), ~_wgslsmith_mod_i32(-55662i, -34809i)) != 1i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 15>();
    var var_0 = !select(vec4<bool>(global1.x, any(select(vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(false, true, false), true)), 1u > firstTrailingBit(u_input.a.x), true), !(!select(vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(global1.x, true, false, false), vec4<bool>(true, false, false, global1.x))), vec4<bool>(true, func_1(~16529u), func_1(4294967295u) && true, true));
    let var_1 = var_0.x;
    var_0 = !vec4<bool>(!(u_input.a.x == u_input.a.x), func_1(66744u), var_0.x, !any(!vec4<bool>(true, global1.x, true, var_0.x)));
    var var_2 = _wgslsmith_div_i32(abs(_wgslsmith_dot_vec2_i32(-_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, 0i), vec2<i32>(38711i, -4337i)), vec2<i32>(_wgslsmith_clamp_i32(-17496i, -2147483647i, -37612i), firstLeadingBit(8431i)))), _wgslsmith_mod_i32(~1i >> (_wgslsmith_mod_u32(u_input.a.x, ~4294967295u) % 32u), _wgslsmith_mult_i32(_wgslsmith_mod_i32(~(-2147483647i), ~(-2147483647i)), -12699i)));
    let var_3 = min(_wgslsmith_div_u32(_wgslsmith_mult_u32(min(1u, u_input.a.x), ~94959u), ~45925u), 5330u);
    var var_4 = firstLeadingBit(~(~_wgslsmith_mult_i32(~0i, max(24131i, -30284i))));
    let x = u_input.a;
    s_output = StorageBuffer(min(~abs(min(vec4<u32>(var_3, var_3, u_input.a.x, var_3), vec4<u32>(var_3, 14777u, 14581u, var_3))), vec4<u32>(47197u, firstLeadingBit(var_3) ^ ~u_input.a.x, var_3, reverseBits(42388u))), -vec4<i32>(max(i32(-1i) * -11422i, 1i), -3750i << (1u % 32u), 1i, countOneBits(-1i)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-236f, 1128f, 723f, -853f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(var_3, 15u)], -955f, -433f, -562f) - vec4<f32>(-206f, global0[_wgslsmith_index_u32(63569u, 15u)], 1000f, 870f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-812f, global0[_wgslsmith_index_u32(u_input.a.x, 15u)], global0[_wgslsmith_index_u32(13020u, 15u)], global0[_wgslsmith_index_u32(39347u, 15u)]))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(58364u, 15u)], -2048f, global0[_wgslsmith_index_u32(u_input.a.x, 15u)], global0[_wgslsmith_index_u32(0u, 15u)]) + vec4<f32>(479f, -1341f, 741f, 1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 15u)], global0[_wgslsmith_index_u32(var_3, 15u)], -734f, global0[_wgslsmith_index_u32(var_3, 15u)]))))), select(select(select(vec4<bool>(true, var_0.x, false, global1.x), vec4<bool>(false, var_0.x, global1.x, false), var_0.x), select(vec4<bool>(global1.x, var_0.x, global1.x, var_0.x), vec4<bool>(true, false, var_0.x, global1.x), false), func_1(u_input.a.x)), vec4<bool>(31854u > u_input.a.x, true, any(var_0.zyz), all(vec4<bool>(false, var_0.x, global1.x, false))), select(select(vec4<bool>(false, false, true, true), vec4<bool>(var_0.x, true, false, true), var_0.x), vec4<bool>(true, true, global1.x, var_0.x), select(vec4<bool>(global1.x, global1.x, true, true), vec4<bool>(global1.x, var_0.x, false, true), var_0.x))))), vec2<f32>(-285f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(select(69591u, 4294967295u, var_0.x), 15u)] - 1000f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0[_wgslsmith_index_u32(var_3, 15u)], 750f), vec2<f32>(-636f, 319f), var_0.wy)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(890f, -305f), vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 15u)], global0[_wgslsmith_index_u32(7615u, 15u)]), global1.x)))) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1527f, global0[_wgslsmith_index_u32(4294967295u, 15u)]))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(var_3, 15u)], global0[_wgslsmith_index_u32(6225u, 15u)]) + vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 15u)], -994f)), false))))));
}

