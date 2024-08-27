struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: bool,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
    c: u32,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 21> = array<bool, 21>(true, false, true, true, true, false, false, false, true, true, true, false, false, true, true, false, false, false, true, true, false);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: u32) -> u32 {
    let var_0 = Struct_2(select(select(select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 21u)], global0[_wgslsmith_index_u32(4310u, 21u)], global0[_wgslsmith_index_u32(0u, 21u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 21u)], false, global0[_wgslsmith_index_u32(arg_0, 21u)]), select(vec3<bool>(global0[_wgslsmith_index_u32(arg_0, 21u)], false, false), vec3<bool>(global0[_wgslsmith_index_u32(arg_0, 21u)], true, false), true)), vec3<bool>(!global0[_wgslsmith_index_u32(u_input.b.x, 21u)], true, all(vec4<bool>(true, false, global0[_wgslsmith_index_u32(0u, 21u)], global0[_wgslsmith_index_u32(4294967295u, 21u)]))), true), vec3<bool>(true, u_input.c.x >= _wgslsmith_mod_i32(1i, u_input.c.x), global0[_wgslsmith_index_u32(max(_wgslsmith_add_u32(arg_0, 63351u), 17171u), 21u)]), vec3<bool>(global0[_wgslsmith_index_u32(5966u, 21u)], global0[_wgslsmith_index_u32(~arg_0, 21u)], any(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 21u)], false)) | !global0[_wgslsmith_index_u32(1574u, 21u)])), false, u_input.a.x, Struct_1(vec2<i32>(-2147483647i, -u_input.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 940f))), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_0, abs(21377u)), 21u)] || global0[_wgslsmith_index_u32(~0u, 21u)], vec2<u32>(arg_0, u_input.a.x & 56401u)), select(vec3<bool>(all(vec3<bool>(global0[_wgslsmith_index_u32(arg_0, 21u)], global0[_wgslsmith_index_u32(4294967295u, 21u)], global0[_wgslsmith_index_u32(36817u, 21u)])), all(vec4<bool>(global0[_wgslsmith_index_u32(0u, 21u)], true, true, global0[_wgslsmith_index_u32(arg_0, 21u)])), true), select(select(select(vec3<bool>(false, true, true), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 21u)], global0[_wgslsmith_index_u32(u_input.a.x, 21u)], false), global0[_wgslsmith_index_u32(0u, 21u)]), select(vec3<bool>(global0[_wgslsmith_index_u32(arg_0, 21u)], false, global0[_wgslsmith_index_u32(42315u, 21u)]), vec3<bool>(global0[_wgslsmith_index_u32(1u, 21u)], global0[_wgslsmith_index_u32(arg_0, 21u)], false), true), !vec3<bool>(global0[_wgslsmith_index_u32(0u, 21u)], global0[_wgslsmith_index_u32(arg_0, 21u)], global0[_wgslsmith_index_u32(u_input.b.x, 21u)])), select(vec3<bool>(true, true, false), !vec3<bool>(global0[_wgslsmith_index_u32(0u, 21u)], global0[_wgslsmith_index_u32(arg_0, 21u)], false), all(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 21u)], global0[_wgslsmith_index_u32(4294967295u, 21u)], global0[_wgslsmith_index_u32(u_input.b.x, 21u)], global0[_wgslsmith_index_u32(30974u, 21u)]))), !select(vec3<bool>(global0[_wgslsmith_index_u32(32795u, 21u)], global0[_wgslsmith_index_u32(1u, 21u)], true), vec3<bool>(global0[_wgslsmith_index_u32(62767u, 21u)], false, true), false)), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.b.x, 1u), u_input.a), u_input.b.x >> (arg_0 % 32u)) != max(_wgslsmith_clamp_u32(arg_0, u_input.b.x, arg_0), _wgslsmith_add_u32(arg_0, 44337u))));
    var var_1 = true;
    global0 = array<bool, 21>();
    let var_2 = !(!global0[_wgslsmith_index_u32(6852u, 21u)]);
    global0 = array<bool, 21>();
    return 111025u;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: i32) -> bool {
    global0 = array<bool, 21>();
    let var_0 = vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(61533i, -28996i) ^ u_input.c, vec2<i32>(arg_2, arg_2)), arg_2), ~(~u_input.c.x), ~(-_wgslsmith_sub_i32(arg_1.a.x, 0i))) << (u_input.a % vec3<u32>(32u));
    var var_1 = Struct_2(select(!vec3<bool>(all(vec3<bool>(arg_1.c, arg_0, true)), false, arg_1.c), select(select(!vec3<bool>(arg_0, true, arg_1.c), !vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 21u)], arg_1.c), !global0[_wgslsmith_index_u32(arg_1.d.x, 21u)]), vec3<bool>(any(vec3<bool>(true, arg_1.c, arg_1.c)), var_0.x < u_input.c.x, all(vec3<bool>(false, true, arg_0))), !vec3<bool>(arg_0, false, false)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-1188f, arg_1.b)))) >= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(496f + arg_1.b)))), arg_1.c, ~1u, Struct_1(u_input.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.b))), abs(arg_2) == _wgslsmith_add_i32(u_input.c.x, 0i ^ var_0.x), arg_1.d), vec3<bool>(any(vec4<bool>(any(vec3<bool>(global0[_wgslsmith_index_u32(arg_1.d.x, 21u)], true, arg_1.c)), true, select(false, true, true), 1486f > arg_1.b)), arg_0 && arg_0, !(!any(vec4<bool>(false, false, false, arg_0)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-459f, arg_1.b, var_1.d.b), vec3<f32>(arg_1.b, arg_1.b, arg_1.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.d.b, var_1.d.b, var_1.d.b) + vec3<f32>(var_1.d.b, 1782f, 752f))), !(!var_1.a))) + vec3<f32>(arg_1.b, 1000f, -530f)));
    var_1 = Struct_2(select(select(!select(var_1.a, var_1.a, global0[_wgslsmith_index_u32(11306u, 21u)]), var_1.a, -853f <= _wgslsmith_f_op_f32(floor(var_2.x))), var_1.a, any(vec3<bool>(true, select(false, arg_1.c, true), var_1.a.x))), false, func_3(32803u), var_1.d, select(var_1.e, !var_1.a, var_1.e.x));
    return true;
}

fn func_2(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_1) -> u32 {
    global0 = array<bool, 21>();
    global0 = array<bool, 21>();
    global0 = array<bool, 21>();
    let var_0 = select(vec2<bool>(true, func_4(!global0[_wgslsmith_index_u32(func_3(63506u), 21u)], Struct_1(-vec2<i32>(arg_2.a.x, -1i), -784f, !arg_2.c, vec2<u32>(arg_2.d.x, u_input.b.x) & arg_2.d), -19969i)), !(!select(vec2<bool>(global0[_wgslsmith_index_u32(arg_2.d.x, 21u)], arg_2.c), !vec2<bool>(arg_2.c, false), false)), !func_4(global0[_wgslsmith_index_u32(arg_2.d.x, 21u)] & false, Struct_1(~vec2<i32>(-1i, u_input.c.x), 659f, func_4(arg_2.c, Struct_1(arg_2.a, -311f, arg_2.c, vec2<u32>(4294967295u, 0u)), u_input.c.x), ~u_input.a.yx), ~countOneBits(38086i)));
    global0 = array<bool, 21>();
    return _wgslsmith_add_u32(~countOneBits(_wgslsmith_sub_u32(0u, 0u)), _wgslsmith_clamp_u32(u_input.a.x, select(_wgslsmith_dot_vec3_u32(u_input.a, u_input.b), firstTrailingBit(u_input.b.x), true) << (min(10431u, u_input.a.x) % 32u), u_input.a.x));
}

fn func_1(arg_0: f32) -> bool {
    let var_0 = Struct_2(!(!select(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 21u)], global0[_wgslsmith_index_u32(u_input.b.x, 21u)], false), vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 21u)], global0[_wgslsmith_index_u32(14146u, 21u)]), select(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 21u)], true, false), vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 21u)], global0[_wgslsmith_index_u32(12167u, 21u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 21u)], global0[_wgslsmith_index_u32(4294967295u, 21u)], global0[_wgslsmith_index_u32(u_input.a.x, 21u)])))), true, 15763u, Struct_1(reverseBits(_wgslsmith_clamp_vec2_i32(-u_input.c, _wgslsmith_mod_vec2_i32(u_input.c, vec2<i32>(-1i, -42495i)), firstLeadingBit(u_input.c))), _wgslsmith_f_op_f32(max(-184f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 * arg_0), _wgslsmith_f_op_f32(arg_0 - -886f)))), global0[_wgslsmith_index_u32(~max(u_input.a.x, u_input.b.x) >> (_wgslsmith_mod_u32(1732u, min(54179u, u_input.b.x)) % 32u), 21u)], u_input.b.xy), !vec3<bool>(!(global0[_wgslsmith_index_u32(25393u, 21u)] | false), global0[_wgslsmith_index_u32(u_input.b.x, 21u)] == global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(63914u, u_input.b.x), 21u)], !(u_input.c.x > u_input.c.x)));
    global0 = array<bool, 21>();
    var var_1 = u_input.a;
    global0 = array<bool, 21>();
    let var_2 = ~firstLeadingBit(_wgslsmith_div_vec3_u32(~(~vec3<u32>(var_1.x, 4294967295u, var_0.d.d.x)), vec3<u32>(~u_input.b.x, var_1.x, func_2(vec2<f32>(228f, -149f), var_0.d.a.x, Struct_1(vec2<i32>(u_input.c.x, u_input.c.x), 239f, var_0.b, vec2<u32>(8548u, 19094u))))));
    return !var_0.b;
}

fn func_5(arg_0: bool, arg_1: vec2<f32>, arg_2: f32, arg_3: f32) -> vec4<i32> {
    global0 = array<bool, 21>();
    var var_0 = select(!(!select(vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 21u)], false), select(vec3<bool>(false, false, arg_0), vec3<bool>(global0[_wgslsmith_index_u32(42000u, 21u)], global0[_wgslsmith_index_u32(u_input.a.x, 21u)], true), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 21u)], true, arg_0)), select(vec3<bool>(true, false, arg_0), vec3<bool>(global0[_wgslsmith_index_u32(0u, 21u)], false, arg_0), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 21u)], global0[_wgslsmith_index_u32(u_input.a.x, 21u)], false)))), select(vec3<bool>(!global0[_wgslsmith_index_u32(~4294967295u, 21u)], true, any(vec4<bool>(global0[_wgslsmith_index_u32(17013u, 21u)], true, global0[_wgslsmith_index_u32(u_input.a.x, 21u)], false))), vec3<bool>(arg_0, arg_0, (-81542i <= u_input.c.x) || true), !select(vec3<bool>(arg_0, false, true), select(vec3<bool>(global0[_wgslsmith_index_u32(30716u, 21u)], global0[_wgslsmith_index_u32(28973u, 21u)], arg_0), vec3<bool>(false, true, arg_0), vec3<bool>(arg_0, true, true)), vec3<bool>(false, true, false))), !select(select(select(vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 21u)], global0[_wgslsmith_index_u32(23650u, 21u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 21u)], global0[_wgslsmith_index_u32(4294967295u, 21u)], global0[_wgslsmith_index_u32(u_input.b.x, 21u)]), global0[_wgslsmith_index_u32(u_input.a.x, 21u)]), vec3<bool>(global0[_wgslsmith_index_u32(5691u, 21u)], true, global0[_wgslsmith_index_u32(1u, 21u)]), global0[_wgslsmith_index_u32(48469u, 21u)]), vec3<bool>(arg_2 != 906f, arg_0, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(93814u, u_input.b.x), 21u)]), global0[_wgslsmith_index_u32(7278u, 21u)]));
    global0 = array<bool, 21>();
    var_0 = !select(!(!select(vec3<bool>(true, false, true), vec3<bool>(var_0.x, global0[_wgslsmith_index_u32(u_input.a.x, 21u)], true), vec3<bool>(true, var_0.x, var_0.x))), select(select(vec3<bool>(var_0.x, arg_0, true), !vec3<bool>(arg_0, true, arg_0), func_4(arg_0, Struct_1(vec2<i32>(u_input.c.x, 25017i), 481f, global0[_wgslsmith_index_u32(u_input.b.x, 21u)], u_input.a.zz), 53164i)), !select(vec3<bool>(true, false, arg_0), vec3<bool>(true, true, false), false), ~(-1i) == (-71012i << (u_input.b.x % 32u))), select(select(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 21u)], false), select(vec3<bool>(false, arg_0, true), vec3<bool>(false, false, arg_0), vec3<bool>(global0[_wgslsmith_index_u32(31291u, 21u)], false, arg_0)), !vec3<bool>(arg_0, false, false)), select(vec3<bool>(arg_0, arg_0, var_0.x), vec3<bool>(false, false, false), func_4(true, Struct_1(u_input.c, arg_2, global0[_wgslsmith_index_u32(0u, 21u)], u_input.b.zz), u_input.c.x)), !(global0[_wgslsmith_index_u32(u_input.a.x, 21u)] & true)));
    var_0 = !select(vec3<bool>(false, global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(6887u, u_input.a.x), vec2<u32>(u_input.a.x, u_input.a.x)), 21u)], !select(true, true, arg_0)), vec3<bool>(false, true, firstTrailingBit(-2147483647i) > u_input.c.x), true);
    return ~firstLeadingBit(min(reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, -23387i, u_input.c.x, -17221i), vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x))), reverseBits(vec4<i32>(2147483647i, u_input.c.x, 7097i, -8610i)) & vec4<i32>(u_input.c.x, 0i, -2147483647i, -2147483647i)));
}

fn func_6(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: vec2<u32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d.b) * _wgslsmith_div_f32(-1000f, -742f)) + _wgslsmith_f_op_f32(-arg_1.d.b));
    global0 = array<bool, 21>();
    let var_1 = arg_1.c;
    global0 = array<bool, 21>();
    var var_2 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-949f * var_0), var_0)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_div_f32(-1021f, -681f), -670f))), arg_1.a.zy))));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(func_1(-1000f) & !global0[_wgslsmith_index_u32(u_input.b.x, 21u)], _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-2226f, -1000f))))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1178f), -1826f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1181f), -791f))), _wgslsmith_f_op_f32(max(-215f, 415f))), Struct_2(select(select(!vec3<bool>(true, true, global0[_wgslsmith_index_u32(27037u, 21u)]), !vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 21u)], false), true), vec3<bool>(true, !global0[_wgslsmith_index_u32(u_input.b.x, 21u)], true), vec3<bool>(true, true | global0[_wgslsmith_index_u32(15600u, 21u)], global0[_wgslsmith_index_u32(u_input.a.x, 21u)])), global0[_wgslsmith_index_u32(~u_input.b.x, 21u)], u_input.a.x, Struct_1(~u_input.c, _wgslsmith_f_op_f32(-1201f * 1f), (u_input.c.x << (u_input.a.x % 32u)) > ~2147483647i, ~u_input.a.yx), vec3<bool>(global0[_wgslsmith_index_u32(max(68626u, min(u_input.b.x, u_input.b.x)), 21u)], true, !global0[_wgslsmith_index_u32(1u, 21u)])), _wgslsmith_div_vec3_u32(reverseBits(~u_input.a), _wgslsmith_sub_vec3_u32(firstLeadingBit(~vec3<u32>(4294967295u, 0u, 1u)), countOneBits(select(vec3<u32>(u_input.b.x, u_input.b.x, 1u), vec3<u32>(1u, u_input.a.x, 1u), global0[_wgslsmith_index_u32(1u, 21u)])))), ~u_input.b.zz);
    var var_1 = 243f;
    var var_2 = min(countOneBits(~max(var_0.d.d, ~u_input.a.yx)), firstLeadingBit(~vec2<u32>(_wgslsmith_div_u32(143678u, 90765u), 1u)));
    var_2 = ~_wgslsmith_mult_vec2_u32(func_6(vec4<i32>(31347i, _wgslsmith_mod_i32(1i, var_0.d.a.x), ~var_0.d.a.x, firstTrailingBit(var_0.d.a.x)), func_6(~vec4<i32>(2147483647i, var_0.d.a.x, var_0.d.a.x, u_input.c.x), func_6(vec4<i32>(12222i, u_input.c.x, 2147483647i, var_0.d.a.x), Struct_2(vec3<bool>(global0[_wgslsmith_index_u32(var_2.x, 21u)], var_0.d.c, var_0.a.x), true, 1556u, Struct_1(vec2<i32>(26573i, var_0.d.a.x), var_0.d.b, false, vec2<u32>(u_input.a.x, var_0.c)), vec3<bool>(global0[_wgslsmith_index_u32(14522u, 21u)], var_0.b, false)), u_input.b, var_0.d.d), vec3<u32>(var_2.x, 4294967295u, var_0.d.d.x), vec2<u32>(14406u, 48279u)), abs(_wgslsmith_mult_vec3_u32(u_input.a, u_input.a)), vec2<u32>(~u_input.b.x, var_0.d.d.x)).d.d, vec2<u32>(7079u, 12893u));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.d.b)))) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d.b, -1172f))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.d.b, -2095f), vec2<f32>(var_0.d.b, -838f))) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-176f, var_0.d.b)))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(559f)), -205f))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, ~vec4<u32>(abs(firstTrailingBit(u_input.a.x)), ~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 7440u), var_0.d.d ^ vec2<u32>(u_input.b.x, var_0.c)), 41023u));
}

