struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: vec2<f32>,
    d: vec4<i32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<i32>,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 11> = array<u32, 11>(4294967295u, 4294967295u, 25925u, 61979u, 0u, 3591u, 0u, 58983u, 4294967295u, 100263u, 1u);

var<private> global1: i32;

var<private> global2: f32 = -1975f;

var<private> global3: array<i32, 21>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: vec4<bool>, arg_2: i32) -> i32 {
    global1 = firstLeadingBit(_wgslsmith_add_i32(abs(-13990i), -1i));
    return ~global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(27149u, global0[_wgslsmith_index_u32(u_input.c, 11u)], u_input.b), u_input.d.xxz)), firstTrailingBit(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(abs(u_input.d.x), u_input.c), 11u)])), 21u)];
}

fn func_2(arg_0: vec4<u32>) -> Struct_2 {
    global2 = -510f;
    let var_0 = vec4<i32>(abs(_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(2147483647i, global3[_wgslsmith_index_u32(u_input.b, 21u)])), _wgslsmith_mod_vec2_i32(vec2<i32>(global3[_wgslsmith_index_u32(15766u, 21u)], 31899i), vec2<i32>(2147483647i, -2147483647i)))), -_wgslsmith_mod_i32(~2147483647i, _wgslsmith_mod_i32(83300i, 2147483647i)), _wgslsmith_div_i32(-1i, global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(62227u, 0u, global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(9290u, 11u)], 11u)]), 21u)]), ~global3[_wgslsmith_index_u32(1u, 21u)]) ^ min(vec4<i32>(func_3(true, vec4<bool>(false, false, true, true), global3[_wgslsmith_index_u32(arg_0.x, 21u)]), firstLeadingBit(abs(-1i)), _wgslsmith_mult_i32(_wgslsmith_add_i32(global3[_wgslsmith_index_u32(u_input.d.x, 21u)], -55947i), reverseBits(global3[_wgslsmith_index_u32(u_input.c, 21u)])), _wgslsmith_sub_i32(global3[_wgslsmith_index_u32(1u, 21u)], _wgslsmith_clamp_i32(-16251i, -34296i, 2147483647i))), _wgslsmith_sub_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(4294967295u, 21u)], 1i, 15510i, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.x, 11u)], 21u)]) | vec4<i32>(2147483647i, global3[_wgslsmith_index_u32(arg_0.x, 21u)], global3[_wgslsmith_index_u32(21833u, 21u)], global3[_wgslsmith_index_u32(0u, 21u)]), vec4<i32>(0i, global3[_wgslsmith_index_u32(arg_0.x, 21u)], global3[_wgslsmith_index_u32(58065u, 21u)], global3[_wgslsmith_index_u32(1u, 21u)]) & vec4<i32>(2147483647i, global3[_wgslsmith_index_u32(u_input.d.x, 21u)], -15869i, 1i)) << (vec4<u32>(~1u, global0[_wgslsmith_index_u32(40607u, 11u)] << (u_input.b % 32u), arg_0.x, ~1u) % vec4<u32>(32u)));
    let var_1 = false;
    let var_2 = _wgslsmith_sub_u32(arg_0.x, 1u);
    let var_3 = vec3<bool>(false, !(-_wgslsmith_div_i32(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(5488u, 11u)], 21u)], 1i) <= -78891i), ~_wgslsmith_dot_vec2_i32(~var_0.zx, -vec2<i32>(-13964i, -1i)) <= _wgslsmith_clamp_i32(7129i, _wgslsmith_add_i32(8834i, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(85450u, 11u)], 21u)]) & global3[_wgslsmith_index_u32(firstLeadingBit(23597u), 21u)], _wgslsmith_sub_i32(1i, global3[_wgslsmith_index_u32(4294967295u, 21u)]) >> (~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_2, 11u)], 11u)] % 32u)));
    return Struct_2(~global3[_wgslsmith_index_u32(countOneBits(0u), 21u)], _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(784f, 1472f, 1247f, -1650f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-508f, 823f, -509f, 159f) + vec4<f32>(502f, -108f, 788f, 1000f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(1490f, 966f, 312f, 337f) + vec4<f32>(-769f, -412f, -206f, -1681f)), vec4<f32>(-625f, -182f, -334f, -675f)))), !select(!vec4<bool>(false, var_1, false, var_1), !vec4<bool>(var_1, false, var_1, true), !var_1))), Struct_1(~_wgslsmith_clamp_vec3_i32(var_0.zyz, var_0.yyy, vec3<i32>(var_0.x, var_0.x, var_0.x)) ^ ~var_0.yzz, ~vec2<i32>(var_0.x, func_3(true, vec4<bool>(true, var_1, var_1, var_3.x), -2147483647i)), ~1i), Struct_1(-vec3<i32>(global3[_wgslsmith_index_u32(~67295u, 21u)], var_0.x, ~(-30666i)), vec2<i32>(var_0.x, -global3[_wgslsmith_index_u32(~u_input.b, 21u)]), reverseBits(_wgslsmith_sub_i32(38538i, 1i))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: bool, arg_3: Struct_3) -> vec2<bool> {
    let var_0 = Struct_2(-arg_3.d.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-149f, arg_1.b.b.x, -153f, -491f)) - _wgslsmith_f_op_vec4_f32(arg_3.b.b - _wgslsmith_f_op_vec4_f32(min(arg_0.b.b, arg_0.b.b))))), func_2(_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(u_input.d, vec4<u32>(u_input.d.x, global0[_wgslsmith_index_u32(0u, 11u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 11u)], 11u)], 11u)], global0[_wgslsmith_index_u32(u_input.b, 11u)])), vec4<u32>(~1u, 4294967295u, u_input.c, min(u_input.d.x, 0u)))).c, func_2(countOneBits(u_input.d)).c);
    let var_1 = Struct_2(-1i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-570f, -1000f, var_0.b.x, 516f)))))), Struct_1(~abs(countOneBits(vec3<i32>(arg_3.d.x, var_0.a, 1i))), abs(vec2<i32>(-2147483647i, arg_0.d.x) >> (u_input.d.zz % vec2<u32>(32u))), ~arg_1.b.a), Struct_1(_wgslsmith_div_vec3_i32(func_2(min(u_input.d, u_input.d)).c.a, min(arg_0.d.wwx, _wgslsmith_mod_vec3_i32(arg_0.b.c.a, vec3<i32>(18457i, 1i, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 11u)], 21u)])))), ~(-arg_3.d.wx), abs(arg_3.b.d.b.x)));
    var var_2 = Struct_2(arg_1.b.c.b.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.b * _wgslsmith_f_op_vec4_f32(-var_0.b)) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(var_1.b, var_0.b)))))), func_2(~u_input.d).d, func_2(select(_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(102089u, 11u)], u_input.d.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(90206u, 11u)], 11u)], u_input.a), u_input.d), ~vec4<u32>(12726u, 0u, 14840u, 1u)), u_input.d, false)).d);
    let var_3 = var_0.d.a;
    let var_4 = _wgslsmith_f_op_vec3_f32(-arg_1.a);
    return vec2<bool>(arg_3.e.x, false & !(!any(arg_3.e.xwy)));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: f32) -> vec4<i32> {
    var var_0 = Struct_1(vec3<i32>(arg_1.a, 1i, _wgslsmith_add_i32(~0i, -1i)), arg_1.c.b, func_3(arg_2.x | arg_2.x, select(select(vec4<bool>(false, arg_2.x, false, arg_2.x), select(vec4<bool>(false, arg_2.x, true, arg_2.x), vec4<bool>(arg_2.x, arg_2.x, true, arg_2.x), true), vec4<bool>(false, arg_2.x, true, false)), select(!vec4<bool>(false, arg_2.x, false, arg_2.x), select(vec4<bool>(false, arg_2.x, false, true), vec4<bool>(true, arg_2.x, false, arg_2.x), arg_2.x), all(vec3<bool>(arg_2.x, true, true))), true), -global3[_wgslsmith_index_u32(~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 11u)], 11u)], 11u)]), 21u)]));
    let var_1 = arg_1.c;
    var var_2 = var_0.c;
    global3 = array<i32, 21>();
    var var_3 = Struct_2(arg_1.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2335f, _wgslsmith_f_op_f32(-1000f + arg_3), _wgslsmith_f_op_f32(trunc(-551f)), -1086f) - arg_1.b), vec4<f32>(-136f, arg_0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.b.x))), -307f)), Struct_1(_wgslsmith_div_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(0u, 21u)], global3[_wgslsmith_index_u32(abs(17597u), 21u)], select(-2147483647i, 0i, true)), reverseBits(vec3<i32>(1i, -3603i, -4047i))), vec2<i32>(-_wgslsmith_add_i32(arg_1.c.c, var_1.c), -1i), global3[_wgslsmith_index_u32(~(~select(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 11u)], 11u)], 0u, arg_2.x)), 21u)]), Struct_1(var_1.a, -(~vec2<i32>(var_0.a.x, var_1.c)), -_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.c, global3[_wgslsmith_index_u32(50793u, 21u)], -1i, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 11u)], 21u)]), vec4<i32>(var_0.c, 2147483647i, arg_1.d.c, arg_1.c.a.x)) << (select(_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(1u, 11u)], 4701u), u_input.d.xz), 38335u, any(vec3<bool>(arg_2.x, arg_2.x, false))) % 32u)));
    return firstTrailingBit(select(_wgslsmith_sub_vec4_i32(~(vec4<i32>(var_0.b.x, 0i, 1i, 36060i) & vec4<i32>(var_3.a, -34417i, -7405i, arg_1.c.b.x)), _wgslsmith_add_vec4_i32(vec4<i32>(-40899i, var_3.d.a.x, 1i, var_0.a.x), vec4<i32>(var_3.d.c, var_1.b.x, 2147483647i, 2147483647i) << (u_input.d % vec4<u32>(32u)))), -(~vec4<i32>(var_0.c, -28440i, var_3.a, var_1.a.x)), true));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32) -> vec3<bool> {
    var var_0 = func_5(arg_0.b.xxx, arg_0, func_4(Struct_3(_wgslsmith_f_op_vec3_f32(sign(arg_1.b.xyx)), func_2(select(vec4<u32>(0u, global0[_wgslsmith_index_u32(55705u, 11u)], global0[_wgslsmith_index_u32(u_input.a, 11u)], 50513u), vec4<u32>(4294967295u, u_input.b, 4294967295u, 39486u), false)), vec2<f32>(_wgslsmith_f_op_f32(-1000f + 488f), _wgslsmith_f_op_f32(arg_0.b.x - arg_0.b.x)), ~vec4<i32>(2147483647i, 0i, 62979i, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(74752u, 11u)], 21u)]) | vec4<i32>(global3[_wgslsmith_index_u32(1u, 21u)], arg_0.a, arg_1.c.c, 29602i), vec4<bool>(true, true, true, true)), Struct_3(vec3<f32>(_wgslsmith_f_op_f32(arg_1.b.x + 1071f), -1467f, _wgslsmith_f_op_f32(arg_1.b.x - 277f)), arg_1, arg_1.b.yz, ~_wgslsmith_mod_vec4_i32(vec4<i32>(1i, -36063i, arg_1.a, -16855i), vec4<i32>(arg_1.a, -14213i, arg_2, 65073i)), !select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false))), u_input.b != (_wgslsmith_add_u32(u_input.b, u_input.c) & 1u), Struct_3(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1223f, arg_1.b.x, 534f)), _wgslsmith_div_vec3_f32(arg_1.b.wxw, arg_1.b.zxy))), Struct_2(_wgslsmith_mod_i32(8008i, arg_2), _wgslsmith_f_op_vec4_f32(arg_0.b - arg_0.b), arg_0.d, arg_0.d), arg_1.b.yw, max(select(vec4<i32>(-44724i, arg_2, -2147483647i, arg_1.a), vec4<i32>(global3[_wgslsmith_index_u32(u_input.b, 21u)], -29151i, -2147483647i, global3[_wgslsmith_index_u32(0u, 21u)]), true), -vec4<i32>(arg_2, arg_0.c.c, -44744i, 0i)), vec4<bool>(true, false, true, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.b.x, _wgslsmith_f_op_f32(-arg_0.b.x))) * -513f));
    let var_1 = arg_1.b.zyz;
    let var_2 = Struct_3(var_1, arg_0, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2376f, arg_0.b.x)))), _wgslsmith_f_op_vec2_f32(var_1.yy - _wgslsmith_f_op_vec2_f32(-var_1.zx)))), _wgslsmith_div_vec2_f32(arg_1.b.zx, _wgslsmith_f_op_vec2_f32(exp2(var_1.zz)))), vec4<i32>(10305i, abs(2147483647i), 64394i, func_2(~u_input.d).d.a.x), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), true)), !select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false))), select(select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false)), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), true), false));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x));
    let var_4 = Struct_3(vec3<f32>(var_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.b.x, 1012f))), -1000f), _wgslsmith_div_f32(1285f, arg_0.b.x)), arg_1, vec2<f32>(1106f, 2547f), var_2.d, select(!select(vec4<bool>(true, true, var_2.e.x, var_2.e.x), !var_2.e, false), var_2.e, all(!select(vec4<bool>(var_2.e.x, var_2.e.x, true, false), var_2.e, var_2.e))));
    return var_2.e.yxz;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-654f, 777f), vec2<f32>(-850f, -621f)) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -178f), 691f)) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1706f, 1221f) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(712f, 530f), vec2<f32>(-395f, 231f)))))))));
    var var_1 = !select(vec3<bool>(true, any(func_1(Struct_2(16446i, vec4<f32>(2018f, 1496f, var_0.x, var_0.x), Struct_1(vec3<i32>(-17707i, global3[_wgslsmith_index_u32(4294967295u, 21u)], -16572i), vec2<i32>(1i, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 11u)], 11u)], 21u)]), global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(11092u, 11u)], 21u)]), Struct_1(vec3<i32>(global3[_wgslsmith_index_u32(28176u, 21u)], global3[_wgslsmith_index_u32(92251u, 21u)], global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 11u)], 11u)], 11u)], 21u)]), vec2<i32>(-1i, global3[_wgslsmith_index_u32(18695u, 21u)]), 11352i)), Struct_2(global3[_wgslsmith_index_u32(u_input.c, 21u)], vec4<f32>(422f, var_0.x, var_0.x, 429f), Struct_1(vec3<i32>(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 11u)], 21u)], global3[_wgslsmith_index_u32(1u, 21u)], global3[_wgslsmith_index_u32(4294967295u, 21u)]), vec2<i32>(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(44725u, 11u)], 21u)], 49572i), 0i), Struct_1(vec3<i32>(-18628i, -1i, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(84283u, 11u)], 11u)], 21u)]), vec2<i32>(1i, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 11u)], 21u)]), global3[_wgslsmith_index_u32(98091u, 21u)])), global3[_wgslsmith_index_u32(u_input.a, 21u)])), !(-2147483647i > global3[_wgslsmith_index_u32(39238u, 21u)])), vec3<bool>(true, all(vec3<bool>(true, false, true)) & true, !func_4(Struct_3(vec3<f32>(var_0.x, -1000f, var_0.x), Struct_2(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 11u)], 21u)], vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), Struct_1(vec3<i32>(-35027i, 27215i, 34215i), vec2<i32>(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 11u)], 11u)], 21u)], global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d.x, 11u)], 21u)]), global3[_wgslsmith_index_u32(4131u, 21u)]), Struct_1(vec3<i32>(-11624i, 50738i, 2147483647i), vec2<i32>(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 11u)], 21u)], -1i), 0i)), vec2<f32>(947f, 1463f), vec4<i32>(global3[_wgslsmith_index_u32(1u, 21u)], global3[_wgslsmith_index_u32(3306u, 21u)], 269i, global3[_wgslsmith_index_u32(u_input.d.x, 21u)]), vec4<bool>(false, false, true, false)), Struct_3(vec3<f32>(115f, 858f, -319f), Struct_2(-2147483647i, vec4<f32>(206f, -1087f, -220f, var_0.x), Struct_1(vec3<i32>(global3[_wgslsmith_index_u32(4294967295u, 21u)], -39894i, global3[_wgslsmith_index_u32(44496u, 21u)]), vec2<i32>(-1i, 2147483647i), global3[_wgslsmith_index_u32(u_input.a, 21u)]), Struct_1(vec3<i32>(2147483647i, 4878i, 2147483647i), vec2<i32>(global3[_wgslsmith_index_u32(46570u, 21u)], global3[_wgslsmith_index_u32(4294967295u, 21u)]), 0i)), vec2<f32>(var_0.x, -619f), vec4<i32>(-20933i, global3[_wgslsmith_index_u32(34524u, 21u)], 37521i, global3[_wgslsmith_index_u32(u_input.d.x, 21u)]), vec4<bool>(true, false, true, true)), true, Struct_3(vec3<f32>(-1220f, 1159f, var_0.x), Struct_2(global3[_wgslsmith_index_u32(u_input.c, 21u)], vec4<f32>(var_0.x, 1187f, -364f, var_0.x), Struct_1(vec3<i32>(-10470i, global3[_wgslsmith_index_u32(u_input.d.x, 21u)], 12507i), vec2<i32>(13193i, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 11u)], 21u)]), -1i), Struct_1(vec3<i32>(2147483647i, global3[_wgslsmith_index_u32(u_input.d.x, 21u)], -64304i), vec2<i32>(41354i, -1i), 0i)), vec2<f32>(var_0.x, var_0.x), vec4<i32>(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 11u)], 21u)], -2147483647i, -2147483647i, global3[_wgslsmith_index_u32(0u, 21u)]), vec4<bool>(true, false, false, false))).x), _wgslsmith_f_op_f32(-890f * 1862f) > _wgslsmith_f_op_f32(-923f + var_0.x));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))));
    let var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, 1546f, var_0.x), vec3<f32>(var_0.x, var_0.x, var_0.x)), vec3<f32>(var_0.x, var_0.x, 1463f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-284f, -762f, var_0.x))) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.x, -559f, -1000f)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(2127f, 1107f, 1000f)))))), func_2(select(vec4<u32>(_wgslsmith_sub_u32(u_input.b, global0[_wgslsmith_index_u32(1u, 11u)]), global0[_wgslsmith_index_u32(u_input.b, 11u)], ~28348u, 1u), u_input.d, !select(vec4<bool>(true, true, false, false), vec4<bool>(false, var_1.x, var_1.x, var_1.x), var_1.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1703f, -1026f), vec2<f32>(_wgslsmith_f_op_f32(select(var_0.x, 1510f, false)), var_0.x))), _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(-58896i, ~global3[_wgslsmith_index_u32(4294967295u, 21u)]), global3[_wgslsmith_index_u32(u_input.b & abs(1u), 21u)], global3[_wgslsmith_index_u32(u_input.a | u_input.b, 21u)], ~(28763i >> (global0[_wgslsmith_index_u32(u_input.d.x, 11u)] % 32u))), -(vec4<i32>(global3[_wgslsmith_index_u32(0u, 21u)], global3[_wgslsmith_index_u32(22967u, 21u)], global3[_wgslsmith_index_u32(4294967295u, 21u)], global3[_wgslsmith_index_u32(u_input.b, 21u)]) | (vec4<i32>(0i, global3[_wgslsmith_index_u32(u_input.d.x, 21u)], 19177i, global3[_wgslsmith_index_u32(u_input.d.x, 21u)]) << (u_input.d % vec4<u32>(32u)))), (vec4<i32>(-1i) * -vec4<i32>(global3[_wgslsmith_index_u32(u_input.c, 21u)], global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(48262u, 11u)], 11u)], 21u)], -7722i, -32787i)) | vec4<i32>(~global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(35120u, 11u)], 21u)], _wgslsmith_div_i32(global3[_wgslsmith_index_u32(51680u, 21u)], global3[_wgslsmith_index_u32(1u, 21u)]), min(global3[_wgslsmith_index_u32(69330u, 21u)], 2147483647i), i32(-1i) * -28822i)), select(select(!select(vec4<bool>(var_1.x, true, var_1.x, var_1.x), vec4<bool>(var_1.x, true, false, false), true), vec4<bool>(!var_1.x, any(vec2<bool>(true, var_1.x)), var_1.x, true), select(select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, true, var_1.x, var_1.x), var_1.x), vec4<bool>(false, var_1.x, true, true), func_4(Struct_3(vec3<f32>(var_0.x, var_0.x, var_0.x), Struct_2(-2147483647i, vec4<f32>(var_0.x, -2588f, -779f, -938f), Struct_1(vec3<i32>(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(73414u, 11u)], 21u)], global3[_wgslsmith_index_u32(0u, 21u)], global3[_wgslsmith_index_u32(75717u, 21u)]), vec2<i32>(-1i, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(63945u, 11u)], 11u)], 21u)]), -58012i), Struct_1(vec3<i32>(2147483647i, global3[_wgslsmith_index_u32(u_input.b, 21u)], global3[_wgslsmith_index_u32(67768u, 21u)]), vec2<i32>(1i, global3[_wgslsmith_index_u32(u_input.d.x, 21u)]), global3[_wgslsmith_index_u32(16622u, 21u)])), var_0, vec4<i32>(-70214i, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 11u)], 21u)], 76018i, global3[_wgslsmith_index_u32(4294967295u, 21u)]), vec4<bool>(true, true, true, var_1.x)), Struct_3(vec3<f32>(var_0.x, var_0.x, -681f), Struct_2(-4309i, vec4<f32>(304f, -1000f, var_0.x, var_0.x), Struct_1(vec3<i32>(2147483647i, global3[_wgslsmith_index_u32(28678u, 21u)], 22866i), vec2<i32>(global3[_wgslsmith_index_u32(u_input.c, 21u)], -47647i), 14049i), Struct_1(vec3<i32>(72820i, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 11u)], 11u)], 21u)], global3[_wgslsmith_index_u32(u_input.b, 21u)]), vec2<i32>(global3[_wgslsmith_index_u32(0u, 21u)], global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(22817u, 11u)], 21u)]), global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(12346u, 11u)], 21u)])), vec2<f32>(-773f, 1000f), vec4<i32>(5516i, global3[_wgslsmith_index_u32(63268u, 21u)], 0i, global3[_wgslsmith_index_u32(4294967295u, 21u)]), vec4<bool>(false, true, var_1.x, true)), var_1.x, Struct_3(vec3<f32>(165f, 1004f, var_0.x), Struct_2(global3[_wgslsmith_index_u32(23947u, 21u)], vec4<f32>(655f, var_0.x, var_0.x, var_0.x), Struct_1(vec3<i32>(1i, -44547i, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d.x, 11u)], 11u)], 21u)]), vec2<i32>(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 11u)], 11u)], 21u)], -1i), -332i), Struct_1(vec3<i32>(1i, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(22713u, 11u)], 11u)], 21u)], global3[_wgslsmith_index_u32(4294967295u, 21u)]), vec2<i32>(1i, -2147483647i), global3[_wgslsmith_index_u32(31643u, 21u)])), var_0, vec4<i32>(13858i, global3[_wgslsmith_index_u32(u_input.d.x, 21u)], global3[_wgslsmith_index_u32(4294967295u, 21u)], global3[_wgslsmith_index_u32(1u, 21u)]), vec4<bool>(false, true, false, var_1.x))).x)), select(vec4<bool>(true, var_1.x, true, true), select(select(vec4<bool>(var_1.x, var_1.x, false, true), vec4<bool>(false, true, var_1.x, true), false), select(vec4<bool>(true, var_1.x, false, var_1.x), vec4<bool>(var_1.x, var_1.x, false, var_1.x), var_1.x), var_1.x), true), !select(select(vec4<bool>(true, var_1.x, false, false), vec4<bool>(var_1.x, false, true, var_1.x), vec4<bool>(var_1.x, true, var_1.x, var_1.x)), !vec4<bool>(var_1.x, true, var_1.x, var_1.x), all(vec4<bool>(true, true, var_1.x, true)))));
    let var_4 = 35330u;
    let var_5 = 25972u;
    var var_6 = var_3.e.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_3.c.x, -951f, false)) * 1000f), var_0.x, countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(var_3.d.x, _wgslsmith_sub_i32(global3[_wgslsmith_index_u32(26285u, 21u)], 1i), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_4, 11u)], 11u)]), 21u)], ~global3[_wgslsmith_index_u32(87961u, 21u)]), var_3.d)), reverseBits(~(var_3.d.xz ^ var_3.b.c.a.yz)), var_3.b.a);
}

