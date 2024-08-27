struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec3<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-606f, 299f, -1543f, -1119f);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec4<u32>) -> f32 {
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.x))), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), -1174f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, -111f), vec4<f32>(global0.x, -836f, -933f, -566f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, -2681f) + vec4<f32>(global0.x, 387f, -119f, -594f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, global0.x)) + vec4<f32>(1793f, global0.x, global0.x, global0.x)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, 807f, 926f, -1490f), vec4<f32>(1000f, global0.x, 885f, global0.x)) - vec4<f32>(global0.x, global0.x, global0.x, global0.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, -186f, global0.x) - vec4<f32>(743f, 2278f, global0.x, global0.x)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(414f, -1250f, global0.x, global0.x), vec4<f32>(-246f, global0.x, -288f, global0.x), vec4<bool>(true, true, true, false)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(2332f, 1000f, global0.x, global0.x), vec4<f32>(global0.x, -1202f, -796f, -2545f)))) * vec4<f32>(_wgslsmith_f_op_f32(min(-1000f, -1432f)), _wgslsmith_f_op_f32(global0.x * global0.x), 1193f, global0.x))));
    let var_0 = false;
    let var_1 = firstTrailingBit(arg_0.yyw);
    let var_2 = vec4<i32>(u_input.a.x, -3728i, u_input.a.x, u_input.a.x);
    var var_3 = var_0;
    return global0.x;
}

fn func_2(arg_0: i32, arg_1: vec2<f32>) -> u32 {
    global0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(450f, _wgslsmith_f_op_f32(arg_1.x + -877f), arg_1.x, arg_1.x) * vec4<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(1000f - 765f), _wgslsmith_f_op_f32(exp2(global0.x)), _wgslsmith_f_op_f32(arg_1.x * global0.x))))));
    global0 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)) - arg_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(max(vec4<u32>(107510u, 76271u, 13567u, 16632u), vec4<u32>(0u, 0u, 8278u, 58437u)))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-806f, 716f)), _wgslsmith_f_op_f32(min(global0.x, global0.x))))), _wgslsmith_f_op_f32(min(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -202f) + -646f))), _wgslsmith_f_op_f32(trunc(arg_1.x)))));
    global0 = vec4<f32>(-798f, arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.x)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-1008f, 422f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.x, 1101f)))))), _wgslsmith_f_op_f32(f32(-1f) * -490f));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(floor(1000f)), global0.x, _wgslsmith_div_f32(arg_1.x, -804f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1000f, global0.x, global0.x, -1160f)))), vec4<bool>(true, all(vec3<bool>(false, true, true)), false, true)))));
    var var_0 = Struct_2(vec3<i32>(u_input.a.x, _wgslsmith_mod_i32(63563i, ~(u_input.a.x ^ -23158i)), _wgslsmith_dot_vec4_i32(-vec4<i32>(0i, arg_0, u_input.a.x, 21160i) & vec4<i32>(24625i, u_input.a.x, arg_0, 1i), -vec4<i32>(-249i, 0i, u_input.a.x, 41205i))), ~vec4<u32>(1u, 1u, 1u, 1u), firstTrailingBit(vec3<u32>(1u, 1u, 1u)), global0.zzz, Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(~43049u, 1u), vec2<u32>(max(89336u, 0u), 4294967295u))));
    return _wgslsmith_mod_u32(~4294967295u, 1u);
}

fn func_1() -> vec2<i32> {
    var var_0 = firstLeadingBit(func_2(u_input.a.x, global0.zz) & ~(~(~1896u)));
    var_0 = _wgslsmith_dot_vec2_u32(~abs(abs(~vec2<u32>(36605u, 45488u))), vec2<u32>(_wgslsmith_clamp_u32(~0u, _wgslsmith_add_u32(42954u, 11832u), 1u) | countOneBits(_wgslsmith_mod_u32(9855u, 45249u)), 1u));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.x, 278f, global0.x, 1647f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, 641f), vec4<f32>(global0.x, global0.x, global0.x, global0.x)))))) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.x, 863f, _wgslsmith_f_op_f32(global0.x + -688f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(global0.x, 1613f))))))));
    global0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(abs(-1008f)), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-global0.x))) + vec4<f32>(642f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.x, global0.x)) * _wgslsmith_f_op_f32(global0.x - 537f)), 292f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-240f, 1360f, global0.x, global0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 1143f, global0.x, global0.x) + vec4<f32>(global0.x, global0.x, global0.x, 712f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -766f, 492f, -2215f) - vec4<f32>(-432f, -352f, 923f, 359f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, -1904f) + vec4<f32>(global0.x, global0.x, 147f, -369f))))), select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true))), vec4<bool>(true, any(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true))), true, !(global0.x < global0.x)), vec4<bool>(true, true, true, true))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(sign(528f)))));
    return vec2<i32>(-(~u_input.a.x << (4294967295u % 32u)) ^ 2147483647i, _wgslsmith_clamp_i32(~(_wgslsmith_sub_i32(u_input.a.x, 10178i) ^ -68146i), u_input.a.x, _wgslsmith_add_i32(u_input.a.x, -u_input.a.x >> (42521u % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(563f, -695f, -276f, 280f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-953f, -706f, global0.x, global0.x) + vec4<f32>(global0.x, -2525f, 602f, global0.x)), vec4<bool>(true, true, true, true))))));
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - global0.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(global0.x - var_0.x)))), var_0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-373f, _wgslsmith_f_op_f32(global0.x + var_0.x))), global0.x))));
    let var_1 = vec3<u32>(1u, 1u, 1u);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -204f) + var_0.x) - 105f);
    var var_3 = Struct_1(~4294967295u);
    let var_4 = _wgslsmith_dot_vec2_i32(vec2<i32>(-abs(-2147483647i), abs(u_input.a.x) | 2147483647i), _wgslsmith_sub_vec2_i32(~countOneBits(_wgslsmith_mod_vec2_i32(vec2<i32>(-47981i, u_input.a.x), u_input.a)), ~u_input.a));
    var var_5 = ~vec2<i32>(~_wgslsmith_div_i32(var_4, var_4), 15886i);
    var_5 = func_1();
    var var_6 = ~vec2<i32>(var_5.x, abs(~abs(9112i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(abs(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, u_input.a.x, 23322i), vec3<i32>(u_input.a.x, var_5.x, var_5.x))) & _wgslsmith_sub_vec3_i32(vec3<i32>(-95318i, 19356i, -40240i) | vec3<i32>(2147483647i, var_5.x, var_5.x), vec3<i32>(var_6.x, u_input.a.x, 0i) | vec3<i32>(25308i, var_5.x, var_4)), reverseBits(~(-vec3<i32>(-2147483647i, var_4, var_4)))), global0.xwz, ~vec3<i32>(-_wgslsmith_add_i32(-45585i, 0i), -var_5.x, u_input.a.x));
}

