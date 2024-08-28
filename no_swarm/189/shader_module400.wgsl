struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: i32,
    d: bool,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, vec4<i32>(-12976i, 0i, 2147483647i, 21140i), 1i, true, vec3<u32>(17765u, 1u, 4294967295u));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
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

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: bool) -> vec3<u32> {
    global0 = Struct_1(true, countOneBits(vec4<i32>(arg_2.d, -u_input.c, -2391i, _wgslsmith_mult_i32(67502i, arg_1.x))) << (u_input.b % vec4<u32>(32u)), min(_wgslsmith_div_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.x, -2147483647i, arg_0.c), arg_0.b.zwx), firstTrailingBit(-47827i)), 2147483647i >> (abs(countOneBits(arg_2.b.e.x)) % 32u)), global0.d, max(select(vec3<u32>(_wgslsmith_div_u32(30371u, 12165u), ~u_input.b.x, 24052u >> (arg_0.e.x % 32u)), ~vec3<u32>(28932u, 37699u, 65299u), !select(vec3<bool>(global0.d, true, false), vec3<bool>(arg_3, global0.d, arg_0.a), vec3<bool>(arg_3, true, false))), ~firstTrailingBit(vec3<u32>(global0.e.x, u_input.b.x, 3794u))));
    let var_0 = arg_2.c;
    let var_1 = Struct_2((_wgslsmith_mult_vec3_u32(~vec3<u32>(9919u, var_0.e.x, 39889u), ~arg_0.e) << ((vec3<u32>(u_input.b.x, arg_2.e.e.x, arg_2.e.e.x) | (vec3<u32>(arg_0.e.x, 71050u, u_input.b.x) << (vec3<u32>(0u, 70u, 73702u) % vec3<u32>(32u)))) % vec3<u32>(32u))) << (arg_2.e.e % vec3<u32>(32u)), Struct_1(!(true || all(vec3<bool>(true, true, false))), ~vec4<i32>(var_0.b.x, arg_2.d, 2147483647i, -47942i), _wgslsmith_div_i32(var_0.c, -2147483647i | global0.b.x), var_0.d, vec3<u32>(~(~arg_2.e.e.x), (u_input.b.x | 38676u) << (abs(var_0.e.x) % 32u), countOneBits(var_0.e.x))), Struct_1(true, vec4<i32>(1i, _wgslsmith_div_i32(-1i, ~(-39795i)), arg_0.c & 1i, firstLeadingBit(arg_1.x)), -_wgslsmith_mod_i32(1i, ~0i), var_0.d, ~vec3<u32>(arg_2.b.e.x, var_0.e.x, arg_0.e.x) << (~var_0.e % vec3<u32>(32u))), ~firstLeadingBit(~(~18630i)), arg_2.b);
    var var_2 = vec4<bool>(~_wgslsmith_mod_u32(~0u, arg_0.e.x) <= (4294967295u >> (~_wgslsmith_dot_vec3_u32(arg_0.e, vec3<u32>(arg_0.e.x, 24438u, arg_0.e.x)) % 32u)), arg_2.c.a, -426f >= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1428f + _wgslsmith_f_op_f32(f32(-1f) * -118f)))), select(select(any(vec2<bool>(global0.d, arg_0.d)), true, true), true, var_1.c.a | true));
    var var_3 = var_0;
    return u_input.b.wzy;
}

fn func_2(arg_0: vec4<i32>, arg_1: i32, arg_2: Struct_1) -> i32 {
    global0 = Struct_1(global0.a, vec4<i32>(~(-firstLeadingBit(arg_0.x)), _wgslsmith_sub_i32(-17169i, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(-1i, 32658i), -global0.c, select(arg_0.x, 1077i, arg_2.d))), ~_wgslsmith_dot_vec4_i32(vec4<i32>(-31868i, -1i, arg_1, arg_0.x), vec4<i32>(0i, -2147483647i, 0i, global0.c)), global0.b.x), -reverseBits(~global0.c), -4469i <= -(~arg_2.c), firstTrailingBit(_wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.b.xwz, vec3<u32>(0u, 0u, 1u) & arg_2.e, func_3(arg_2, u_input.a.yw, Struct_2(vec3<u32>(16779u, 4294967295u, u_input.b.x), Struct_1(false, u_input.a, global0.b.x, global0.d, vec3<u32>(arg_2.e.x, global0.e.x, global0.e.x)), Struct_1(global0.d, u_input.a, arg_0.x, true, arg_2.e), 1i, arg_2), arg_2.a)), global0.e)));
    let var_0 = 1469f;
    global0 = arg_2;
    global0 = arg_2;
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-115f)))) + _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(860f * 1000f))) + _wgslsmith_f_op_f32(-316f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-912f)))))));
    return global0.c;
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: i32, arg_3: u32) -> vec4<i32> {
    var var_0 = _wgslsmith_sub_vec4_u32(max(u_input.b, max(max(firstTrailingBit(u_input.b), vec4<u32>(8832u, u_input.b.x, arg_3, global0.e.x)), abs(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_3, 2373u, 0u, 101634u), vec4<u32>(77502u, arg_1.e.x, arg_3, u_input.b.x))))), abs(max(~(~u_input.b), u_input.b)));
    var var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(277f, -461f))), -1566f, -544f, _wgslsmith_f_op_f32(f32(-1f) * -241f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-105f + -1104f), 1282f, true)), -178f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(690f * -220f)), _wgslsmith_f_op_f32(-1423f + _wgslsmith_f_op_f32(round(1032f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-802f, 335f, -1000f, 956f) * vec4<f32>(1062f, -1118f, -471f, -1446f))))), false || (true == (global0.d & global0.d)))));
    var var_2 = ~countOneBits(global0.c);
    var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * -138f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-855f * 1206f), -333f)), var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_1.x, -1174f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-610f - -559f), _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(207f)), _wgslsmith_f_op_f32(sign(var_1.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + 1571f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(695f, 1000f, var_1.x, var_1.x) * vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_1.x, var_1.x))), var_1.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(var_1.x)))), -517f)));
    let var_3 = select(min(arg_1.e, ~(~vec3<u32>(1u, arg_3, 10006u))), max(vec3<u32>(u_input.b.x, ~77483u, abs(~16754u)), vec3<u32>(global0.e.x, 1u, var_0.x)), !any(!select(vec2<bool>(true, arg_1.a), vec2<bool>(false, true), true)));
    return abs(abs(firstLeadingBit(u_input.a)));
}

fn func_1() -> Struct_1 {
    global0 = Struct_1(!(true & (global0.b.x != _wgslsmith_div_i32(-1i, u_input.a.x))), _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_add_i32(-1i, 2147483647i), abs(u_input.c), -2147483647i, -2147483647i), ~(global0.b ^ vec4<i32>(u_input.a.x, u_input.c, -5157i, -67281i))), func_4(_wgslsmith_mod_i32(1i, ~u_input.a.x), Struct_1(true, global0.b, func_2(u_input.a, global0.b.x, Struct_1(false, global0.b, -16082i, false, u_input.b.wyx)), true, vec3<u32>(51356u, u_input.b.x, u_input.b.x)), -16613i, 45083u)), 0i, select(!global0.a, true, (global0.d & global0.d) == true) | false, ~reverseBits(min(vec3<u32>(129086u, u_input.b.x, u_input.b.x), min(vec3<u32>(0u, u_input.b.x, 84304u), u_input.b.wxz))));
    global0 = Struct_1(true, firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(firstTrailingBit(23201i), 34563i, countOneBits(u_input.a.x), u_input.c), vec4<i32>(global0.b.x, ~1i, ~u_input.c, func_4(2147483647i, Struct_1(global0.a, vec4<i32>(33093i, u_input.a.x, 2252i, -34991i), u_input.c, false, global0.e), -2147483647i, u_input.b.x).x))), global0.b.x ^ ~countOneBits(1i), ~u_input.c < ~31475i, ~(~vec3<u32>(firstLeadingBit(global0.e.x), u_input.b.x & 97852u, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.e.x, 4294967295u, global0.e.x), vec3<u32>(1u, global0.e.x, global0.e.x)))));
    var var_0 = 37334u;
    var_0 = 0u;
    var var_1 = Struct_1(select(true, global0.a, all(!(!vec3<bool>(global0.a, global0.d, false)))), vec4<i32>(-(~47880i), -_wgslsmith_mod_i32(2147483647i, -1i), u_input.a.x, countOneBits(_wgslsmith_clamp_i32(global0.c, -2147483647i, global0.c))) >> (u_input.b % vec4<u32>(32u)), -2147483647i, global0.d || (global0.a && false), _wgslsmith_sub_vec3_u32(vec3<u32>(38900u, u_input.b.x, 40510u), global0.e));
    return Struct_1(global0.d, vec4<i32>(global0.c, 20284i, abs(-2147483647i << (0u % 32u)), 1i), (func_4(global0.c >> (var_1.e.x % 32u), Struct_1(var_1.a, vec4<i32>(global0.b.x, -9877i, 2602i, 2147483647i), 1i, var_1.d, u_input.b.yzz), ~31854i, var_1.e.x | 4294967295u).x & (1i << (reverseBits(u_input.b.x) % 32u))) ^ -8257i, _wgslsmith_f_op_f32(-2515f * -1408f) < _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(965f)))))), vec3<u32>(var_1.e.x | min(1u, global0.e.x), countOneBits(_wgslsmith_mult_u32(9286u, var_1.e.x)), 64724u));
}

fn func_5(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_1, arg_3: bool) -> vec3<u32> {
    global0 = func_1();
    var var_0 = Struct_2(_wgslsmith_sub_vec3_u32(global0.e, vec3<u32>(~arg_2.e.x, select(u_input.b.x >> (arg_0.x % 32u), countOneBits(0u), arg_3), u_input.b.x)), arg_2, arg_2, 1i, Struct_1(false, u_input.a & u_input.a, -arg_2.c ^ u_input.a.x, func_1().c >= max(arg_2.b.x, -1i | u_input.a.x), ~func_1().e));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1), 296f)) + -2243f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1)) + arg_1) + 1f), _wgslsmith_f_op_f32(-1f)));
    var_0 = Struct_2(~u_input.b.xzx, func_1(), var_0.c, _wgslsmith_mult_i32(~1i, i32(-1i) * 0i), func_1());
    var var_2 = Struct_2(vec3<u32>(~_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_2.e.x, 9962u), reverseBits(arg_2.e.yx)), 4971u, arg_0.x), Struct_1(_wgslsmith_dot_vec3_u32(~var_0.c.e, ~vec3<u32>(19904u, 4294967295u, 45112u)) <= (24257u | _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.e.x, 4294967295u, 1u, 1297u), vec4<u32>(0u, 4294967295u, 49856u, 1154u))), reverseBits(_wgslsmith_add_vec4_i32(u_input.a, u_input.a)), _wgslsmith_add_i32(1i, _wgslsmith_mult_i32(func_1().c, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.c, arg_2.c), vec2<i32>(-6434i, u_input.c)))), all(!select(vec3<bool>(false, false, var_0.b.a), vec3<bool>(arg_3, false, var_0.c.a), vec3<bool>(true, global0.d, var_0.c.d))), min(arg_0 >> (~vec3<u32>(global0.e.x, u_input.b.x, global0.e.x) % vec3<u32>(32u)), vec3<u32>(1u, 24326u, arg_0.x))), arg_2, arg_2.c, Struct_1(true, reverseBits(_wgslsmith_add_vec4_i32(arg_2.b, -vec4<i32>(global0.c, global0.b.x, 0i, var_0.d))), -countOneBits(firstTrailingBit(-70022i)), var_0.e.c == -abs(-2147483647i), abs(_wgslsmith_mod_vec3_u32(abs(vec3<u32>(var_0.a.x, arg_2.e.x, 4294967295u)), arg_2.e))));
    return u_input.b.wzx;
}

fn func_6(arg_0: u32, arg_1: f32, arg_2: Struct_2, arg_3: f32) -> Struct_2 {
    global0 = func_1();
    var var_0 = arg_2.c;
    let var_1 = vec3<i32>(-global0.c, max(global0.b.x, var_0.b.x), ~min(firstLeadingBit(func_2(var_0.b, u_input.a.x, arg_2.e)), -var_0.b.x));
    global0 = Struct_1(!(!any(vec2<bool>(true, true))) || any(select(!vec3<bool>(true, var_0.d, global0.a), select(vec3<bool>(true, arg_2.c.d, var_0.a), vec3<bool>(false, false, false), vec3<bool>(true, true, var_0.d)), true)), -_wgslsmith_clamp_vec4_i32(global0.b, vec4<i32>(~global0.b.x, firstLeadingBit(global0.b.x), u_input.a.x, arg_2.b.b.x), vec4<i32>(arg_2.d, func_4(global0.c, arg_2.c, -1i, 4294967295u).x, u_input.c, func_1().b.x)), func_4(-(i32(-1i) * -global0.b.x), Struct_1(var_0.a, vec4<i32>(~2147483647i, var_0.b.x, 1i, u_input.c), _wgslsmith_sub_i32(global0.b.x, var_1.x) | max(var_1.x, global0.c), any(!vec3<bool>(global0.a, true, global0.a)), vec3<u32>(1u, 1u, 1u)), global0.b.x, arg_0).x, !arg_2.c.d, ~max(~global0.e, select(arg_2.c.e & vec3<u32>(82173u, u_input.b.x, 41623u), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 13964u, arg_0), vec3<u32>(0u, 1u, 0u)), !vec3<bool>(arg_2.e.a, false, var_0.d))));
    var var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-146f, arg_1, 1236f)), vec3<f32>(arg_3, arg_1, 1000f))))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1)))), arg_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1731f)))), true));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(true, vec4<i32>(_wgslsmith_dot_vec2_i32(global0.b.xw, vec2<i32>(-1i, -1i)), _wgslsmith_dot_vec4_i32(vec4<i32>(-u_input.c, _wgslsmith_sub_i32(u_input.a.x, 0i), -76133i, _wgslsmith_dot_vec4_i32(u_input.a, global0.b)), -global0.b), -1i, select(u_input.c, u_input.a.x, _wgslsmith_f_op_f32(floor(-172f)) != _wgslsmith_div_f32(-917f, 1000f))), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(global0.b.wxy, vec3<i32>(-2306i, u_input.c, u_input.a.x)), max(vec3<i32>(u_input.a.x, global0.c, -49181i), vec3<i32>(1i, -33774i, u_input.a.x))), -global0.b.x) << (8385u % 32u), true, abs(~u_input.b.zzx));
    global0 = Struct_1(~u_input.b.x != 4294967295u, global0.b, u_input.c, _wgslsmith_mod_i32(21531i, global0.b.x) <= -((u_input.c ^ global0.b.x) | u_input.c), ~global0.e);
    let var_0 = func_6(_wgslsmith_mult_u32(select(_wgslsmith_div_u32(0u, global0.e.x), _wgslsmith_div_u32(89217u | u_input.b.x, global0.e.x & 0u), global0.a), u_input.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(278f, -422f, false)) * -664f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1581f)))), Struct_2(~func_5(vec3<u32>(52059u, 41302u, 28220u), _wgslsmith_f_op_f32(floor(670f)), func_1(), all(vec4<bool>(false, global0.d, global0.d, false))), func_1(), func_1(), ~global0.c, Struct_1(false, vec4<i32>(u_input.c, max(u_input.a.x, -1i), _wgslsmith_mult_i32(-1i, 55443i), 0i), 11128i, select(false, !global0.a, false | global0.d), u_input.b.yyw)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-155f - _wgslsmith_f_op_f32(trunc(250f))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-470f))))));
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1542f, -1124f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1963f, -119f))), !(global0.a || true)))));
    var var_2 = func_6(reverseBits(~1u), _wgslsmith_f_op_f32(ceil(-579f)), var_0, -1000f);
    let x = u_input.a;
    s_output = StorageBuffer(~4025i);
}

