struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 23>;

var<private> global1: array<i32, 30> = array<i32, 30>(i32(-2147483648), 1i, 44122i, 6771i, -1i, 47055i, i32(-2147483648), 0i, 2147483647i, -369i, i32(-2147483648), 2147483647i, 26829i, -60749i, 1i, -30906i, -4373i, 22527i, 31981i, 2147483647i, -11862i, 56961i, 35122i, 10590i, 18644i, 2147483647i, 2147483647i, 18i, i32(-2147483648), 2147483647i);

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: Struct_1) -> u32 {
    global1 = array<i32, 30>();
    var var_0 = arg_1;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(1109f * arg_0), 1f, arg_0);
    let var_2 = select(~vec3<u32>(~45086u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 0u, u_input.b), ~vec3<u32>(u_input.b, 115938u, 71635u)), u_input.b), _wgslsmith_clamp_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, u_input.b, 0u), vec3<u32>(30042u, u_input.b, 0u)) ^ _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b) | vec3<u32>(38529u, u_input.b, 56911u), abs(vec3<u32>(u_input.b, u_input.b, 1u)), firstTrailingBit(vec3<u32>(28175u, 667u, 1243u))), _wgslsmith_mod_vec3_u32(~firstLeadingBit(vec3<u32>(u_input.b, 54632u, 1u)), vec3<u32>(15662u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, u_input.b)), ~u_input.b)), vec3<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(u_input.b, 71728u)), 8020u), _wgslsmith_mult_u32(17646u, 23441u << (u_input.b % 32u)), min(u_input.b << (20522u % 32u), u_input.b))), select(arg_2.a, select(vec3<bool>(false, arg_2.a.x, true), !arg_2.a, all(vec2<bool>(arg_2.a.x, true))), vec3<bool>(any(vec4<bool>(arg_1, arg_2.a.x, arg_1, arg_1)), true, arg_1)));
    var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-830f, 230f, arg_0), vec3<f32>(-852f, -1029f, arg_0)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-248f, var_1.x, 1017f) - vec3<f32>(var_1.x, var_1.x, arg_0))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, -1000f)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1000f, -121f, var_1.x))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.x, 116f, var_1.x), vec3<f32>(-855f, -903f, -346f)))))))));
    return reverseBits(~(u_input.b >> (~75515u % 32u)));
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: vec3<u32>) -> Struct_1 {
    global0 = array<vec4<bool>, 23>();
    let var_0 = vec4<u32>(arg_2.x, arg_1, _wgslsmith_dot_vec3_u32(~firstLeadingBit(vec3<u32>(7161u, arg_2.x, u_input.b)), vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, arg_2.x), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, 4294967295u), arg_2.zz)), _wgslsmith_dot_vec4_u32(min(vec4<u32>(4294967295u, 99391u, 0u, arg_0.d.x), vec4<u32>(1u, u_input.b, 6559u, 4294967295u)), ~vec4<u32>(4294967295u, arg_2.x, 15771u, arg_1)), ~19593u >> (func_3(924f, arg_0.a.a.x, Struct_1(arg_0.c.a)) % 32u))), arg_0.d.x);
    var var_1 = all(arg_0.c.a) & (arg_1 <= _wgslsmith_dot_vec4_u32(~var_0, ~select(vec4<u32>(u_input.b, var_0.x, 0u, 70778u), vec4<u32>(0u, 1u, var_0.x, 21759u), true)));
    var_1 = any(!select(select(!vec4<bool>(arg_0.b.a.x, arg_0.b.a.x, true, false), select(global0[_wgslsmith_index_u32(u_input.b, 23u)], global0[_wgslsmith_index_u32(var_0.x, 23u)], arg_0.b.a.x), false), global0[_wgslsmith_index_u32(firstTrailingBit(min(arg_1, arg_2.x)), 23u)], arg_0.a.a.x));
    let var_2 = _wgslsmith_f_op_f32(abs(-1130f));
    return Struct_1(vec3<bool>(true, true, ~(~85993u) > arg_1));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1) -> vec4<f32> {
    var var_0 = arg_1.a.x;
    var var_1 = Struct_2(arg_2, arg_2, arg_2, abs(arg_0.d), arg_0.e);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(455f + _wgslsmith_f_op_f32(208f - -1099f)), -1353f, 413f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(1f)))));
    var var_3 = _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, var_1.e.x, global1[_wgslsmith_index_u32(var_1.d.x, 30u)], _wgslsmith_clamp_i32(~(-2147483647i), var_1.e.x, 1i)), abs(vec4<i32>(global1[_wgslsmith_index_u32(~arg_0.d.x, 30u)], _wgslsmith_dot_vec3_i32(var_1.e.zwz, var_1.e.yyz), 1i, global1[_wgslsmith_index_u32(var_1.d.x, 30u)]))) ^ vec4<i32>(reverseBits(_wgslsmith_dot_vec2_i32(-var_1.e.ww, ~vec2<i32>(-1i, -35523i))), ~_wgslsmith_mult_i32(i32(-1i) * -7206i, _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(0u, 30u)], 1i)), -23289i | -u_input.a.x, u_input.a.x);
    var var_4 = -vec4<i32>(var_1.e.x, -31409i, var_1.e.x, ~var_1.e.x);
    return _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(1446f + -366f), _wgslsmith_f_op_f32(max(var_2.x, var_2.x)), _wgslsmith_f_op_f32(exp2(var_2.x)), -548f), vec4<f32>(-475f, var_2.x, _wgslsmith_f_op_f32(458f + var_2.x), 1151f), !(!vec4<bool>(arg_1.a.x, false, false, arg_1.a.x)))) + _wgslsmith_f_op_vec4_f32(min(var_2, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, -218f, -587f)))))));
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: Struct_2) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -642f), _wgslsmith_f_op_f32(abs(arg_0)), _wgslsmith_f_op_f32(-arg_0), arg_0)) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(func_4(Struct_2(arg_2.b, Struct_1(vec3<bool>(arg_2.b.a.x, true, arg_2.a.a.x)), arg_2.b, vec3<u32>(u_input.b, u_input.b, u_input.b), vec4<i32>(global1[_wgslsmith_index_u32(arg_2.d.x, 30u)], arg_2.e.x, -2147483647i, arg_2.e.x)), func_2(Struct_2(arg_2.c, arg_2.b, Struct_1(arg_2.c.a), arg_2.d, vec4<i32>(u_input.a.x, u_input.a.x, arg_2.e.x, arg_1)), arg_2.d.x, arg_2.d), arg_2.a))))));
    let var_1 = func_2(Struct_2(arg_2.a, Struct_1(func_2(arg_2, firstLeadingBit(arg_2.d.x), arg_2.d).a), func_2(Struct_2(Struct_1(arg_2.a.a), func_2(arg_2, arg_2.d.x, vec3<u32>(62545u, arg_2.d.x, 0u)), func_2(arg_2, arg_2.d.x, vec3<u32>(32883u, arg_2.d.x, 31487u)), ~arg_2.d, u_input.a ^ arg_2.e), _wgslsmith_mult_u32(_wgslsmith_add_u32(arg_2.d.x, u_input.b), 4294967295u), arg_2.d), vec3<u32>(~4294967295u, ~(~arg_2.d.x), arg_2.d.x), countOneBits(vec4<i32>(_wgslsmith_div_i32(55133i, arg_1), arg_2.e.x, u_input.a.x, i32(-1i) * -30815i))), abs(countOneBits(~u_input.b)), ~(~firstLeadingBit(vec3<u32>(48465u, u_input.b, 10804u))));
    let var_2 = 1000f;
    return ~2147483647i ^ firstLeadingBit(max(arg_2.e.x, arg_1 | global1[_wgslsmith_index_u32(28740u, 30u)]) ^ u_input.a.x);
}

fn func_5(arg_0: bool, arg_1: i32, arg_2: i32, arg_3: i32) -> vec4<f32> {
    let var_0 = abs(_wgslsmith_sub_i32(2147483647i, -_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1, 0i, u_input.a.x, arg_1), u_input.a))) | reverseBits(-14629i);
    var var_1 = Struct_2(func_2(Struct_2(func_2(Struct_2(Struct_1(vec3<bool>(arg_0, arg_0, arg_0)), Struct_1(vec3<bool>(true, true, arg_0)), Struct_1(vec3<bool>(false, true, false)), vec3<u32>(u_input.b, u_input.b, 0u), vec4<i32>(global1[_wgslsmith_index_u32(0u, 30u)], global1[_wgslsmith_index_u32(u_input.b, 30u)], -30511i, 17872i)), ~1u, vec3<u32>(u_input.b, 43117u, u_input.b)), func_2(Struct_2(Struct_1(vec3<bool>(false, arg_0, true)), Struct_1(vec3<bool>(false, arg_0, false)), Struct_1(vec3<bool>(true, arg_0, arg_0)), vec3<u32>(u_input.b, u_input.b, u_input.b), u_input.a), u_input.b, abs(vec3<u32>(u_input.b, 1u, 0u))), func_2(Struct_2(Struct_1(vec3<bool>(arg_0, arg_0, arg_0)), Struct_1(vec3<bool>(arg_0, arg_0, false)), Struct_1(vec3<bool>(arg_0, false, arg_0)), vec3<u32>(u_input.b, 1u, 1u), vec4<i32>(var_0, 2147483647i, -2607i, arg_1)), u_input.b, ~vec3<u32>(u_input.b, 4294967295u, 77512u)), _wgslsmith_div_vec3_u32(~vec3<u32>(1u, u_input.b, 1u), vec3<u32>(0u, u_input.b, u_input.b)), min(select(u_input.a, vec4<i32>(var_0, 47893i, 2147483647i, -17556i), false), vec4<i32>(33960i, u_input.a.x, u_input.a.x, arg_1) ^ vec4<i32>(arg_2, 1i, 0i, 2147483647i))), _wgslsmith_sub_u32(~(~1u), min(~77200u, u_input.b)), _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(4294967295u, 0u, 53045u)), ~vec3<u32>(u_input.b, 0u, 50498u)), abs(_wgslsmith_mult_vec3_u32(vec3<u32>(27354u, u_input.b, u_input.b), vec3<u32>(16301u, u_input.b, 0u))))), func_2(Struct_2(Struct_1(func_2(Struct_2(Struct_1(vec3<bool>(true, arg_0, true)), Struct_1(vec3<bool>(arg_0, arg_0, arg_0)), Struct_1(vec3<bool>(false, arg_0, false)), vec3<u32>(u_input.b, u_input.b, 4294967295u), u_input.a), u_input.b, vec3<u32>(19230u, u_input.b, u_input.b)).a), func_2(Struct_2(Struct_1(vec3<bool>(arg_0, arg_0, true)), Struct_1(vec3<bool>(false, arg_0, arg_0)), Struct_1(vec3<bool>(arg_0, arg_0, true)), vec3<u32>(1u, u_input.b, u_input.b), u_input.a), 62691u, ~vec3<u32>(53070u, 59296u, 0u)), func_2(Struct_2(Struct_1(vec3<bool>(arg_0, arg_0, arg_0)), Struct_1(vec3<bool>(arg_0, arg_0, true)), Struct_1(vec3<bool>(true, true, arg_0)), vec3<u32>(20192u, u_input.b, u_input.b), u_input.a), _wgslsmith_mod_u32(u_input.b, 1862u), vec3<u32>(4274u, 96159u, u_input.b) ^ vec3<u32>(u_input.b, u_input.b, u_input.b)), max(select(vec3<u32>(65336u, u_input.b, 72952u), vec3<u32>(14548u, 9047u, 11948u), false), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, 41077u, 4667u), vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(1u, u_input.b, u_input.b))), vec4<i32>(-19306i | arg_3, _wgslsmith_mult_i32(-15638i, u_input.a.x), func_1(712f, global1[_wgslsmith_index_u32(u_input.b, 30u)], Struct_2(Struct_1(vec3<bool>(true, true, arg_0)), Struct_1(vec3<bool>(false, arg_0, arg_0)), Struct_1(vec3<bool>(arg_0, arg_0, arg_0)), vec3<u32>(4294967295u, u_input.b, u_input.b), u_input.a)), _wgslsmith_mult_i32(-57359i, 0i))), _wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.b, func_3(-427f, arg_0, Struct_1(vec3<bool>(false, false, true)))), 0u), _wgslsmith_div_vec3_u32(vec3<u32>(firstLeadingBit(31644u), ~u_input.b, min(u_input.b, 63847u)), vec3<u32>(u_input.b, ~25035u, ~u_input.b))), Struct_1(select(vec3<bool>(true, arg_0, arg_0), !vec3<bool>(false, false, arg_0), arg_0)), select(countOneBits(max(vec3<u32>(u_input.b, 4294967295u, 4294967295u), vec3<u32>(10872u, 4294967295u, 9712u))) ^ (abs(vec3<u32>(u_input.b, 0u, u_input.b)) | ~vec3<u32>(1u, u_input.b, u_input.b)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b >> (u_input.b % 32u), _wgslsmith_div_u32(4294967295u, 20245u), u_input.b), _wgslsmith_clamp_vec3_u32(firstTrailingBit(vec3<u32>(57617u, u_input.b, 0u)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 1u, 10521u), vec3<u32>(u_input.b, u_input.b, u_input.b)), countOneBits(vec3<u32>(u_input.b, u_input.b, u_input.b)))), all(select(select(vec3<bool>(arg_0, arg_0, false), vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, false, arg_0)), !vec3<bool>(arg_0, arg_0, true), !vec3<bool>(true, false, arg_0)))), u_input.a);
    var var_2 = (-554f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -423f), _wgslsmith_f_op_f32(-1368f * 1087f), !arg_0)) * -656f)) | (var_1.d.x <= ~(4294967295u ^ ~var_1.d.x));
    let var_3 = u_input.a.wyw;
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec4_f32(func_4(Struct_2(var_1.b, var_1.a, Struct_1(!vec3<bool>(var_1.a.a.x, false, var_1.c.a.x)), var_1.d, vec4<i32>(18575i, firstTrailingBit(var_3.x), 1i, -global1[_wgslsmith_index_u32(32693u, 30u)])), Struct_1(select(vec3<bool>(true, arg_0, false), var_1.b.a, arg_0)), var_1.c)).wx);
    return _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_4.x + 349f))) - -205f), -169f, _wgslsmith_f_op_f32(select(678f, _wgslsmith_f_op_f32(select(var_4.x, -1102f, false || arg_0)), all(var_1.b.a))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_4.x, -500f) - _wgslsmith_f_op_vec4_f32(func_4(Struct_2(Struct_1(vec3<bool>(true, false, false)), Struct_1(var_1.b.a), var_1.b, vec3<u32>(0u, 0u, u_input.b), vec4<i32>(9624i, 21346i, -1i, global1[_wgslsmith_index_u32(38052u, 30u)])), var_1.b, var_1.a)).x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.x, var_4.x, -1014f, -1394f) + vec4<f32>(243f, -609f, -1313f, var_4.x)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.x, var_4.x, 558f, var_4.x) - vec4<f32>(var_4.x, var_4.x, -335f, -515f)))), all(vec3<bool>(false, false, var_1.b.a.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 23>();
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1043f, -1248f, 212f, -1132f))) - _wgslsmith_div_vec4_f32(vec4<f32>(-1563f, 762f, 1000f, -1284f), vec4<f32>(1155f, 361f, -811f, -977f))))), vec4<f32>(_wgslsmith_f_op_f32(-1494f * _wgslsmith_f_op_f32(ceil(-275f))), -226f, 397f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1520f - 295f) * 552f)))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_5(true, func_1(1000f, 28260i, Struct_2(Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(true, false, true)), vec3<u32>(4294967295u, u_input.b, 37351u), vec4<i32>(u_input.a.x, 0i, 1i, 109i))), abs(1i), _wgslsmith_add_i32(u_input.a.x, global1[_wgslsmith_index_u32(u_input.b, 30u)])))))));
    global0 = array<vec4<bool>, 23>();
    let var_1 = ~1u;
    let var_2 = Struct_2(Struct_1(vec3<bool>(true, false, true)), func_2(Struct_2(Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(true, true, true)), func_2(Struct_2(Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(true, false, false)), vec3<u32>(var_1, var_1, 156495u), u_input.a), 23260u, _wgslsmith_clamp_vec3_u32(vec3<u32>(9177u, 46183u, 4294967295u), vec3<u32>(1u, 47947u, var_1), vec3<u32>(0u, u_input.b, var_1))), vec3<u32>(~var_1, u_input.b, 1u), min(u_input.a, u_input.a) & (vec4<i32>(-2147483647i, u_input.a.x, global1[_wgslsmith_index_u32(u_input.b, 30u)], 0i) | u_input.a)), _wgslsmith_div_u32(38336u, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, var_1, 108116u), vec4<u32>(190656u, 53592u, u_input.b, 28473u)), 44336u)), abs(_wgslsmith_sub_vec3_u32(select(vec3<u32>(0u, var_1, var_1), vec3<u32>(var_1, 1u, var_1), false), _wgslsmith_add_vec3_u32(vec3<u32>(75739u, 51978u, 138706u), vec3<u32>(0u, 4294967295u, var_1))))), func_2(Struct_2(Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(true, false, false)), func_2(Struct_2(Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(true, false, false)), vec3<u32>(u_input.b, 1u, 41616u), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), var_1, vec3<u32>(17271u, u_input.b, u_input.b) & vec3<u32>(1u, 4294967295u, 5773u)), countOneBits(~vec3<u32>(u_input.b, 23963u, 46164u)), ~abs(vec4<i32>(20170i, u_input.a.x, -1i, 14461i))), _wgslsmith_dot_vec2_u32(vec2<u32>(41386u, ~1u), ~vec2<u32>(0u, var_1)), firstTrailingBit(~_wgslsmith_sub_vec3_u32(vec3<u32>(28187u, u_input.b, 30610u), vec3<u32>(u_input.b, 4294967295u, 4294967295u)))), (vec3<u32>(4294967295u ^ var_1, 0u, 120827u) ^ (~vec3<u32>(var_1, var_1, 0u) ^ vec3<u32>(1u, 4294967295u, var_1))) >> (_wgslsmith_mod_vec3_u32(firstLeadingBit(vec3<u32>(21292u, 7086u, 1335u)), vec3<u32>(var_1 ^ 10440u, select(var_1, u_input.b, true), ~1u)) % vec3<u32>(32u)), vec4<i32>(_wgslsmith_sub_i32(func_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1i, Struct_2(Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(false, false, true)), vec3<u32>(77402u, u_input.b, var_1), vec4<i32>(-9778i, u_input.a.x, global1[_wgslsmith_index_u32(u_input.b, 30u)], global1[_wgslsmith_index_u32(0u, 30u)]))), 1i), u_input.a.x, _wgslsmith_div_i32(u_input.a.x, -global1[_wgslsmith_index_u32(16964u, 30u)]), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~(~1u), _wgslsmith_div_u32(~30807u, 1u)), 30u)]));
    var var_3 = select((abs(-u_input.a.x) ^ _wgslsmith_clamp_i32(-19655i, -4464i, ~global1[_wgslsmith_index_u32(var_1, 30u)])) & ~(global1[_wgslsmith_index_u32(12570u & var_1, 30u)] >> (_wgslsmith_div_u32(var_2.d.x, 4294967295u) % 32u)), select(_wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(1u, 1u), 30u)], global1[_wgslsmith_index_u32(var_2.d.x, 30u)], 1i), _wgslsmith_mult_i32(~(-4236i), 46436i), var_0.x <= -1698f), !all(vec2<bool>(false, var_2.b.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~(vec4<u32>(4294967295u, u_input.b, 97930u, 27202u) >> (vec4<u32>(var_1, var_1, 0u, 0u) % vec4<u32>(32u))))), _wgslsmith_mod_vec4_u32(min(abs(~vec4<u32>(var_1, 4294967295u, 0u, var_2.d.x)), _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_1, var_2.d.x, u_input.b, 4294967295u), vec4<u32>(var_2.d.x, 1u, var_1, 37963u)), vec4<u32>(var_2.d.x, u_input.b, var_1, u_input.b) << (vec4<u32>(53224u, var_1, 46193u, 24458u) % vec4<u32>(32u)))), max(_wgslsmith_add_vec4_u32(max(vec4<u32>(12242u, 1u, var_1, 0u), vec4<u32>(var_1, 109u, 50204u, 14752u)), vec4<u32>(u_input.b, var_1, var_1, var_1)), ~(~vec4<u32>(var_1, 864u, u_input.b, 0u)))));
}

