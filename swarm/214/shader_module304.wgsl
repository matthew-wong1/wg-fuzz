struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec3<f32>,
    d: vec3<u32>,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 23>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1) -> u32 {
    var var_0 = -1000f;
    let var_1 = _wgslsmith_mod_vec3_i32(select(vec3<i32>(13152i, _wgslsmith_div_i32(-8141i, -34114i | arg_1.x), (arg_0.a.x | 18700i) | firstLeadingBit(19587i)), firstLeadingBit(arg_1), true), _wgslsmith_add_vec3_i32(arg_1, -reverseBits(vec3<i32>(2147483647i, arg_2.a.x, arg_2.a.x))));
    let var_2 = Struct_1(arg_2.a | _wgslsmith_sub_vec2_i32(vec2<i32>(reverseBits(u_input.a.x), -37486i), arg_1.yy), _wgslsmith_add_u32(arg_0.d.x, 4294967295u), arg_0.c, _wgslsmith_sub_vec3_u32(firstTrailingBit(arg_2.d), arg_2.d), -759f);
    var var_3 = vec3<bool>(any(!select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false), true)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_2.c.x + -1562f))), -663f)) >= arg_2.e, true);
    var_0 = -147f;
    return reverseBits(0u);
}

fn func_2(arg_0: f32) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-2697f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0 + -1455f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1057f * global0[_wgslsmith_index_u32(~(~1u), 23u)]) + arg_0)));
    let var_1 = Struct_1(u_input.a.xx, ~firstLeadingBit(_wgslsmith_sub_u32(func_3(Struct_1(vec2<i32>(1i, 2147483647i), 4973u, vec3<f32>(global0[_wgslsmith_index_u32(0u, 23u)], arg_0, -1890f), vec3<u32>(42965u, 21729u, 0u), 608f), u_input.a, Struct_1(vec2<i32>(-1i, -24210i), 31183u, vec3<f32>(632f, 283f, -113f), vec3<u32>(0u, 0u, 1u), var_0)), 1u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(936f, 1000f, var_0) - vec3<f32>(arg_0, -781f, global0[_wgslsmith_index_u32(0u, 23u)])), vec3<f32>(2929f, global0[_wgslsmith_index_u32(4294967295u, 23u)], -940f), vec3<bool>(true, true, true))) - vec3<f32>(_wgslsmith_f_op_f32(round(458f)), _wgslsmith_div_f32(arg_0, global0[_wgslsmith_index_u32(80403u, 23u)]), arg_0)) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(0u, 23u)]))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0, global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(0u, 23u)]), vec3<f32>(318f, var_0, global0[_wgslsmith_index_u32(4294967295u, 23u)]))), vec3<bool>(true, true, true)))))), ~(~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 109653u, 19689u), vec3<u32>(0u, 14955u, 42352u), vec3<u32>(43565u, 0u, 25094u)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(16823u, 23u)], 281f)), arg_0, true))))));
    let var_2 = Struct_1(~(max(vec2<i32>(-2147483647i, -8393i), countOneBits(u_input.a.zy)) & _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-22188i, var_1.a.x), vec2<i32>(u_input.a.x, var_1.a.x)), vec2<i32>(var_1.a.x, -2147483647i))), _wgslsmith_mod_u32(~(~var_1.b), func_3(Struct_1(~var_1.a, select(var_1.d.x, var_1.d.x, false), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-304f, var_1.c.x, 2021f))), vec3<u32>(var_1.b, var_1.b, 54379u), _wgslsmith_f_op_f32(-arg_0)), abs(u_input.a), var_1)), var_1.c, vec3<u32>(~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), var_1.d.xy) & 12911u, _wgslsmith_clamp_u32(abs(11924u), abs(4294967295u), var_1.b)), _wgslsmith_f_op_f32(sign(-1000f)));
    let var_3 = Struct_1(vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.a.x, -2107i), _wgslsmith_div_i32(var_2.a.x, _wgslsmith_sub_i32(15983i, 4345i))), ~var_2.a.x), _wgslsmith_clamp_u32(110364u, _wgslsmith_mult_u32(~1u, 1u), var_1.d.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_2.c.x, global0[_wgslsmith_index_u32(var_2.d.x, 23u)], -985f))) * var_2.c) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_1.c), _wgslsmith_f_op_vec3_f32(-var_2.c), vec3<bool>(true, true, true)))), vec3<f32>(var_2.e, 699f, _wgslsmith_f_op_f32(-673f - _wgslsmith_f_op_f32(round(var_1.e))))), countOneBits(vec3<u32>(87925u, var_1.b ^ ~61378u, _wgslsmith_mult_u32(30610u << (var_1.d.x % 32u), ~81267u))), var_0);
    global0 = array<f32, 23>();
    return global0[_wgslsmith_index_u32(var_3.b, 23u)];
}

fn func_1() -> Struct_1 {
    var var_0 = false && any(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), any(vec2<bool>(false, false))));
    let var_1 = (-_wgslsmith_div_vec4_i32(-vec4<i32>(u_input.a.x, u_input.a.x, 0i, 2147483647i), vec4<i32>(0i, -27746i, -1i, u_input.a.x)) >> (select(vec4<u32>(0u, firstLeadingBit(6847u), 1u, 1u), ~vec4<u32>(1u, 1u, 1u, 1u), vec4<bool>(true, true, true, true)) % vec4<u32>(32u))) | _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(min(vec4<i32>(1i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), reverseBits(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -20637i))), _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, 30001i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, 0i, u_input.a.x, -10884i)), vec4<i32>(87560i, u_input.a.x, u_input.a.x, u_input.a.x))), _wgslsmith_mult_vec4_i32(~_wgslsmith_sub_vec4_i32(vec4<i32>(0i, 29938i, -2147483647i, 2147483647i), vec4<i32>(1i, u_input.a.x, -17500i, u_input.a.x)), abs(countOneBits(vec4<i32>(6581i, 53024i, 54208i, u_input.a.x)))));
    var var_2 = 1i;
    let var_3 = vec3<i32>(1i, u_input.a.x, -_wgslsmith_dot_vec3_i32(-vec3<i32>(-47436i, u_input.a.x, 0i) & vec3<i32>(u_input.a.x, 9898i, 0i), u_input.a));
    var var_4 = u_input.a.x > u_input.a.x;
    return Struct_1(~countOneBits(var_1.wx), ~(~_wgslsmith_add_u32(~4294967295u, 38683u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(1u, 23u)], global0[_wgslsmith_index_u32(43142u, 23u)], 950f) * vec3<f32>(-404f, global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(55494u, 23u)]))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(74835u, 23u)], -467f, -582f)) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(101148u, 23u)])))) - vec3<f32>(global0[_wgslsmith_index_u32(55464u << (1u % 32u), 23u)], -316f, _wgslsmith_f_op_f32(func_2(-807f))))), reverseBits(vec3<u32>(max(17713u, 54468u) >> (func_3(Struct_1(vec2<i32>(0i, u_input.a.x), 1u, vec3<f32>(global0[_wgslsmith_index_u32(27126u, 23u)], global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(21661u, 23u)]), vec3<u32>(27868u, 1u, 4294967295u), global0[_wgslsmith_index_u32(4775u, 23u)]), var_3, Struct_1(u_input.a.yz, 79720u, vec3<f32>(1738f, global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(0u, 23u)]), vec3<u32>(39948u, 39305u, 1u), -792f)) % 32u), 1u, ~109614u)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1041f * global0[_wgslsmith_index_u32(~83990u, 23u)]), 1045f)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> vec3<bool> {
    global0 = array<f32, 23>();
    global0 = array<f32, 23>();
    global0 = array<f32, 23>();
    return select(vec3<bool>(true, arg_2, true), !vec3<bool>(any(select(vec4<bool>(arg_2, false, arg_2, arg_2), vec4<bool>(arg_2, arg_2, false, false), true)), _wgslsmith_f_op_f32(min(1250f, arg_3.e)) >= _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 23u)]), -15469i <= u_input.a.x), vec3<bool>(arg_2, 37315u < ((arg_0.b << (arg_1.d.x % 32u)) << (_wgslsmith_clamp_u32(0u, 1u, 0u) % 32u)), false));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 23>();
    global0 = array<f32, 23>();
    let var_0 = vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_add_i32(select(firstTrailingBit(u_input.a.x), 1i, true), u_input.a.x), -39387i), -2147483647i);
    let var_1 = any(func_4(func_1(), Struct_1(~vec2<i32>(u_input.a.x, 2147483647i), 4294967295u, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0[_wgslsmith_index_u32(0u, 23u)], 271f, 534f))), vec3<f32>(global0[_wgslsmith_index_u32(18821u, 23u)], 219f, -597f)), firstLeadingBit(vec3<u32>(45931u, 29096u, 1u)), _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(1u, 23u)]))), true, Struct_1(vec2<i32>(~u_input.a.x, 1i), 9543u, vec3<f32>(global0[_wgslsmith_index_u32(44483u, 23u)], func_1().c.x, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 23u)] * 703f)), ~vec3<u32>(65798u, 0u, 4294967295u), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, 1u), 23u)])));
    global0 = array<f32, 23>();
    global0 = array<f32, 23>();
    let var_2 = Struct_1(_wgslsmith_div_vec2_i32(~u_input.a.xx, var_0), 1u, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1534f - 772f), global0[_wgslsmith_index_u32(firstLeadingBit(0u), 23u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(53785u, 23u)] + global0[_wgslsmith_index_u32(2401u, 23u)]) + _wgslsmith_f_op_f32(func_2(global0[_wgslsmith_index_u32(37627u, 23u)]))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(14677u, 23u)] + 1166f)))))), _wgslsmith_add_vec3_u32(~abs(vec3<u32>(4294967295u, 4294967295u, 16506u)), select(~abs(vec3<u32>(0u, 0u, 41593u)), vec3<u32>(~53494u, _wgslsmith_sub_u32(49527u, 15901u), 0u), select(func_4(Struct_1(vec2<i32>(38908i, -13277i), 0u, vec3<f32>(global0[_wgslsmith_index_u32(1u, 23u)], global0[_wgslsmith_index_u32(1116u, 23u)], global0[_wgslsmith_index_u32(53642u, 23u)]), vec3<u32>(9509u, 4294967295u, 4294967295u), -1488f), Struct_1(u_input.a.xz, 1u, vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(15159u, 23u)], global0[_wgslsmith_index_u32(0u, 23u)]), vec3<u32>(51788u, 34405u, 4294967295u), 1890f), var_1, Struct_1(vec2<i32>(u_input.a.x, 18733i), 113115u, vec3<f32>(-1565f, -1000f, 738f), vec3<u32>(43105u, 14331u, 1u), -1000f)), !vec3<bool>(true, var_1, var_1), func_4(Struct_1(vec2<i32>(29303i, -990i), 37981u, vec3<f32>(1000f, global0[_wgslsmith_index_u32(0u, 23u)], 901f), vec3<u32>(1670u, 4294967295u, 21146u), 352f), Struct_1(u_input.a.zy, 1u, vec3<f32>(-632f, global0[_wgslsmith_index_u32(35262u, 23u)], global0[_wgslsmith_index_u32(4294967295u, 23u)]), vec3<u32>(63742u, 5628u, 29489u), -971f), var_1, Struct_1(vec2<i32>(2147483647i, var_0.x), 1u, vec3<f32>(global0[_wgslsmith_index_u32(22761u, 23u)], global0[_wgslsmith_index_u32(85408u, 23u)], global0[_wgslsmith_index_u32(0u, 23u)]), vec3<u32>(28987u, 12224u, 1523u), global0[_wgslsmith_index_u32(12541u, 23u)]))))), 855f);
    var var_3 = var_2.d & var_2.d;
    var var_4 = vec3<bool>(!var_1, var_1, false);
    let x = u_input.a;
    s_output = StorageBuffer(min(u_input.a, u_input.a) & vec3<i32>(func_1().a.x, countOneBits(50644i), -2147483647i), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(655f, var_2.e, var_2.e, global0[_wgslsmith_index_u32(var_2.b, 23u)]), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.e, var_2.c.x, global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(2466u, 23u)]) - vec4<f32>(var_2.c.x, 798f, var_2.e, 342f))))))), vec4<u32>(4294967295u, firstTrailingBit(38144u), 1u, _wgslsmith_dot_vec2_u32(~var_3.xz, vec2<u32>(~1u, _wgslsmith_mult_u32(var_3.x, var_3.x)))), ~vec4<u32>(~(~1u), var_2.d.x, 61565u, func_3(Struct_1(var_2.a, 49860u, var_2.c, var_2.d, global0[_wgslsmith_index_u32(var_3.x, 23u)]), _wgslsmith_mod_vec3_i32(u_input.a, u_input.a), Struct_1(vec2<i32>(11160i, var_0.x), 20242u, vec3<f32>(global0[_wgslsmith_index_u32(var_2.d.x, 23u)], 644f, -112f), var_2.d, 1446f))));
}

