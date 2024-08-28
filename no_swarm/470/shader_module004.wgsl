struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(4988u, vec2<u32>(0u, 1u), 1i), Struct_1(0u, vec2<u32>(40761u, 43699u), 1i), Struct_1(60665u, vec2<u32>(3482u, 18808u), 27104i), Struct_1(0u, vec2<u32>(1u, 0u), -2592i), Struct_1(4294967295u, vec2<u32>(62246u, 3975u), i32(-2147483648)), Struct_1(1u, vec2<u32>(54844u, 0u), 1277i), Struct_1(15888u, vec2<u32>(1u, 33318u), 13811i), Struct_1(455u, vec2<u32>(14305u, 17284u), 33903i), Struct_1(46918u, vec2<u32>(4294967295u, 4294967295u), 2147483647i), Struct_1(42477u, vec2<u32>(35580u, 0u), 0i), Struct_1(6230u, vec2<u32>(88365u, 66025u), 1i), Struct_1(15201u, vec2<u32>(18453u, 1u), 1889i), Struct_1(21395u, vec2<u32>(72143u, 4294967295u), 48506i), Struct_1(4294967295u, vec2<u32>(42226u, 43786u), 4192i), Struct_1(34532u, vec2<u32>(13537u, 34826u), -58822i), Struct_1(46765u, vec2<u32>(0u, 1u), -14669i), Struct_1(4294967295u, vec2<u32>(0u, 1u), 22634i), Struct_1(1u, vec2<u32>(17693u, 12211u), 0i), Struct_1(4294967295u, vec2<u32>(1u, 9222u), 36307i), Struct_1(48109u, vec2<u32>(89496u, 54325u), -1i), Struct_1(1u, vec2<u32>(7243u, 85519u), -1i), Struct_1(16860u, vec2<u32>(28225u, 0u), -1i), Struct_1(0u, vec2<u32>(0u, 4294967295u), -17347i), Struct_1(1u, vec2<u32>(6080u, 0u), 27906i));

var<private> global1: array<i32, 17> = array<i32, 17>(-1i, 6703i, -1i, 25928i, 2147483647i, 2147483647i, -16940i, 1i, -54719i, 1i, 0i, 1i, 3094i, -1i, -68586i, -1i, 2147483647i);

var<private> global2: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(4294967295u, vec2<u32>(50433u, 31908u), 2147483647i), Struct_1(1u, vec2<u32>(0u, 38760u), 41749i), Struct_1(0u, vec2<u32>(1363u, 22775u), 27517i), Struct_1(4294967295u, vec2<u32>(4294967295u, 1u), -13723i), Struct_1(4294967295u, vec2<u32>(0u, 21531u), 12941i));

var<private> global3: array<Struct_1, 26>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: i32) -> bool {
    global1 = array<i32, 17>();
    var var_0 = _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.a.xyx, u_input.a.yyx), ~(~vec3<u32>(~u_input.a.x, abs(u_input.a.x), ~1u)));
    var var_1 = true;
    var var_2 = !select(vec4<bool>(all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false))), any(vec2<bool>(true, false)), all(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true))), !all(vec3<bool>(false, true, true))), vec4<bool>(true, true, false, any(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true)))), all(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true))));
    var var_3 = 0i;
    return false;
}

fn func_4(arg_0: bool, arg_1: vec2<u32>) -> u32 {
    var var_0 = vec3<i32>(~_wgslsmith_sub_i32(-(~2147483647i), max(global1[_wgslsmith_index_u32(4294967295u, 17u)], -44108i)), min(-firstTrailingBit(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, 1u), 17u)]), -7400i), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(abs(vec2<i32>(global1[_wgslsmith_index_u32(arg_1.x, 17u)], global1[_wgslsmith_index_u32(0u, 17u)])), ~vec2<i32>(global1[_wgslsmith_index_u32(1u, 17u)], 2147483647i)), ~vec2<i32>(-33475i, ~global1[_wgslsmith_index_u32(u_input.a.x, 17u)])));
    global1 = array<i32, 17>();
    var var_1 = global2[_wgslsmith_index_u32(~u_input.a.x, 5u)];
    var var_2 = countOneBits(~var_1.b);
    var_2 = max(countOneBits(_wgslsmith_add_vec2_u32(var_1.b, ~var_1.b)), select(vec2<u32>(var_2.x, _wgslsmith_mod_u32(~41866u, _wgslsmith_sub_u32(23189u, 1u))), var_1.b, vec2<bool>(true, true)));
    return reverseBits(~(~min(u_input.a.x, ~var_2.x)));
}

fn func_2() -> f32 {
    let var_0 = countOneBits(vec3<u32>(1u, _wgslsmith_mod_u32(u_input.a.x, 5736u), _wgslsmith_mod_u32(_wgslsmith_add_u32(~4294967295u, ~0u), u_input.a.x)));
    let var_1 = _wgslsmith_mod_vec2_i32(select(vec2<i32>(global1[_wgslsmith_index_u32(~11893u, 17u)], ~(~(-66347i))), firstLeadingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(var_0.x, 17u)], global1[_wgslsmith_index_u32(90003u, 17u)]), -vec2<i32>(-15797i, -18244i), ~vec2<i32>(global1[_wgslsmith_index_u32(var_0.x, 17u)], global1[_wgslsmith_index_u32(u_input.a.x, 17u)]))), !select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), true)), ~(vec2<i32>(-1i) * -vec2<i32>(1i, global1[_wgslsmith_index_u32(var_0.x, 17u)])) | vec2<i32>(max(-global1[_wgslsmith_index_u32(var_0.x, 17u)], global1[_wgslsmith_index_u32(countOneBits(9538u), 17u)]), -18001i));
    var var_2 = func_4(all(vec4<bool>(true, !func_3(var_1, var_1.x), any(vec2<bool>(true, true)), ~1u > var_0.x)), u_input.a.yy);
    let var_3 = global0[_wgslsmith_index_u32(u_input.a.x, 24u)];
    let var_4 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -822f) + 1f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -838f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(500f, 607f))), _wgslsmith_f_op_f32(f32(-1f) * -353f), true))) * vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(455f, _wgslsmith_f_op_f32(trunc(-322f)))), 311f), _wgslsmith_f_op_f32(f32(-1f) * -860f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(402f - -340f) + _wgslsmith_f_op_f32(-1000f * 1000f))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_4.x - -1000f)))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f)))));
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: f32) -> Struct_1 {
    global2 = array<Struct_1, 5>();
    let var_0 = ~_wgslsmith_div_vec2_u32(vec2<u32>(~(4294967295u >> (arg_1.b.x % 32u)), 4294967295u), ~firstTrailingBit(select(arg_1.b, arg_1.b, true)));
    global1 = array<i32, 17>();
    var var_1 = global2[_wgslsmith_index_u32(~(_wgslsmith_dot_vec2_u32(~u_input.a.wz, u_input.a.wx) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 20884u, 107325u), u_input.a.wxz)) ^ _wgslsmith_add_u32(reverseBits(min(28680u, u_input.a.x)) >> (~17857u % 32u), _wgslsmith_dot_vec2_u32(~vec2<u32>(arg_1.a, 23255u), vec2<u32>(19671u, 0u)) >> (~_wgslsmith_div_u32(var_0.x, 0u) % 32u)), 5u)];
    var var_2 = -2054f;
    return global0[_wgslsmith_index_u32(~abs(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(max(var_0, vec2<u32>(4294967295u, 1u)), ~vec2<u32>(2512u, 1u)), _wgslsmith_div_vec2_u32(~u_input.a.yw, ~vec2<u32>(10339u, var_0.x)))), 24u)];
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(select(~(max(u_input.a.x, 67584u) & 1u), 1u >> (_wgslsmith_add_u32(~arg_0.b.x, 0u) % 32u), true), _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(reverseBits(u_input.a.x), _wgslsmith_add_u32(4294967295u, u_input.a.x)), ~abs(arg_0.b)), vec2<u32>(arg_0.b.x, firstTrailingBit(abs(u_input.a.x)))), ~23449i);
    var var_1 = _wgslsmith_sub_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(countOneBits(1u), 17u)] ^ -2147483647i, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(-17792i, arg_0.c), var_0.c << (82077u % 32u), ~global1[_wgslsmith_index_u32(1u, 17u)]) >> (abs(abs(0u)) % 32u), ~(global1[_wgslsmith_index_u32(1u, 17u)] >> (min(22548u, 36880u) % 32u))), _wgslsmith_div_vec3_i32(~select(select(vec3<i32>(2147483647i, var_0.c, 0i), vec3<i32>(2147483647i, -16943i, -6052i), vec3<bool>(false, true, false)), firstLeadingBit(vec3<i32>(var_0.c, arg_0.c, -24223i)), vec3<bool>(true, true, true)), vec3<i32>(var_0.c, arg_0.c, arg_0.c)));
    return Struct_1(~(~(~arg_0.b.x)), arg_0.b, 1i);
}

fn func_1(arg_0: f32, arg_1: vec4<bool>, arg_2: f32) -> vec4<i32> {
    var var_0 = global2[_wgslsmith_index_u32(u_input.a.x, 5u)];
    let var_1 = vec4<bool>(any(vec2<bool>(!(false | arg_1.x), true)), arg_1.x, false, arg_1.x);
    let var_2 = func_6(func_5(false, global0[_wgslsmith_index_u32(var_0.a, 24u)], vec4<bool>(any(vec3<bool>(var_1.x, false, false)), !arg_1.x, all(select(vec3<bool>(var_1.x, false, true), vec3<bool>(var_1.x, false, var_1.x), arg_1.x)), select(var_1.x || arg_1.x, var_1.x == arg_1.x, 0u < u_input.a.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_2())))));
    let var_3 = var_2.a;
    let var_4 = false;
    return max(abs(vec4<i32>(~_wgslsmith_mod_i32(1211i, var_0.c), 1i, _wgslsmith_mult_i32(_wgslsmith_div_i32(var_2.c, 0i), var_2.c), var_0.c)), vec4<i32>(~(-var_2.c), 0i, -1i, _wgslsmith_sub_i32(-1i, abs(_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(15658u, 17u)], var_2.c)))));
}

fn func_7(arg_0: vec4<i32>, arg_1: u32) -> u32 {
    var var_0 = reverseBits(1i);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-681f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(3105f - -941f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1471f, 2206f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1058f, 468f, true)) - _wgslsmith_f_op_f32(-211f + -421f)))));
    var var_2 = -arg_0.xxy | abs(_wgslsmith_div_vec3_i32(firstTrailingBit(arg_0.zyw), _wgslsmith_sub_vec3_i32(select(vec3<i32>(global1[_wgslsmith_index_u32(arg_1, 17u)], 41992i, 2767i), arg_0.zxw, vec3<bool>(true, true, true)), firstLeadingBit(arg_0.yyz))));
    let var_3 = var_1.x;
    let var_4 = true;
    return _wgslsmith_mult_u32(firstLeadingBit(1u), min(~(~4294967295u), u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 26>();
    var var_0 = abs(vec4<i32>(global1[_wgslsmith_index_u32(func_7(func_1(-202f, select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), true), -942f), 1u), 17u)], min(_wgslsmith_mult_i32(func_1(1208f, vec4<bool>(false, true, false, true), -209f).x, -1i), i32(-1i) * -10718i), -_wgslsmith_mod_i32(~(-2147483647i), 1i), _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, -1i, global1[_wgslsmith_index_u32(u_input.a.x, 17u)]), vec3<i32>(global1[_wgslsmith_index_u32(34065u, 17u)], global1[_wgslsmith_index_u32(1u, 17u)], 0i)), vec3<i32>(global1[_wgslsmith_index_u32(0u, 17u)], -22242i, -1i)), select(select(41317i, -7645i, true), countOneBits(6333i), true), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, global1[_wgslsmith_index_u32(u_input.a.x, 17u)]), vec2<i32>(-1i, -12738i)) | global1[_wgslsmith_index_u32(38886u, 17u)])));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(202f, 463f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2292f, 1464f) + vec2<f32>(2198f, -1525f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(571f, -1652f) + vec2<f32>(166f, 958f))), func_3(var_0.yy, 24520i))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(173f, -1794f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(512f, 546f)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1189f, 1209f) * _wgslsmith_div_vec2_f32(vec2<f32>(-432f, 764f), vec2<f32>(-944f, 599f))))), var_0.yz, ~9990u, ~(~_wgslsmith_mod_u32(func_6(global2[_wgslsmith_index_u32(4294967295u, 5u)]).b.x, 5213u)));
}

