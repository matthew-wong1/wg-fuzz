struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 5576i;

var<private> global1: array<f32, 31>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> i32 {
    let var_0 = 20363u;
    var var_1 = select(vec3<bool>(any(vec3<bool>(!arg_0, false, false)), arg_0, _wgslsmith_f_op_f32(arg_1.a.x - _wgslsmith_f_op_f32(-674f - arg_1.a.x)) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(101011u, 31u)], 451f)) * arg_1.a.x)), vec3<bool>(arg_0, all(select(select(vec4<bool>(true, arg_0, arg_0, arg_0), vec4<bool>(arg_0, true, arg_0, true), false), !vec4<bool>(arg_0, arg_0, false, arg_0), !vec4<bool>(arg_0, arg_0, arg_0, arg_0))), arg_0), !select(select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(arg_0, arg_0, true), vec3<bool>(arg_0, arg_0, arg_0)), !vec3<bool>(arg_0, arg_0, arg_0), (arg_0 & false) == arg_0));
    let var_2 = max(_wgslsmith_sub_u32(abs(_wgslsmith_add_u32(1u, max(var_0, 0u))), _wgslsmith_div_u32(arg_1.c, var_0) ^ arg_1.c), ~min(_wgslsmith_div_u32(arg_1.c, arg_1.c), var_0));
    global1 = array<f32, 31>();
    global0 = u_input.a.x;
    return u_input.a.x;
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-195f + -1162f))), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(47292u, 79412u), vec2<u32>(0u, 57881u)), 31u)], _wgslsmith_f_op_f32(f32(-1f) * -1053f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -837f)))), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1448f), _wgslsmith_f_op_f32(abs(-514f)))), -1243f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 31u)])), firstLeadingBit(func_3(true, Struct_1(vec3<f32>(-1194f, global1[_wgslsmith_index_u32(6511u, 31u)], global1[_wgslsmith_index_u32(4294967295u, 31u)]), global1[_wgslsmith_index_u32(27049u, 31u)], 1u)) | ~u_input.a.x) > -2075i));
    var var_1 = Struct_1(var_0, _wgslsmith_f_op_f32(-1147f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(0u, 31u)])))))), 31779u);
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(1009f + 241f)) * -211f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_1.c, 31u)]))))), var_1.b), 109f, 4767u);
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    global1 = array<f32, 31>();
    let var_0 = !(arg_0.c < _wgslsmith_mod_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_0.c), vec2<u32>(arg_0.c, 1u)) << (_wgslsmith_sub_u32(arg_0.c, 9970u) % 32u)));
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(arg_0.a, arg_0.a)))) + vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.b * 1288f))), -1000f, 1000f)), global1[_wgslsmith_index_u32(func_2().c, 31u)], _wgslsmith_dot_vec3_u32(abs(~vec3<u32>(0u, 38301u, arg_0.c)), firstLeadingBit(vec3<u32>(_wgslsmith_sub_u32(arg_0.c, 30384u), arg_0.c, arg_0.c))));
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global1 = array<f32, 31>();
    global1 = array<f32, 31>();
    let var_0 = arg_0;
    var var_1 = u_input.b | (~u_input.a.x | (u_input.a.x >> (~arg_3.c % 32u)));
    var_1 = u_input.a.x;
    return func_2();
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: vec4<i32>) -> f32 {
    let var_0 = !vec3<bool>(true, true, all(vec4<bool>(true, true, true, true)) && any(vec4<bool>(true, false, false, false)));
    var var_1 = countOneBits(_wgslsmith_mod_i32((_wgslsmith_dot_vec3_i32(arg_3.wyy, vec3<i32>(-2147483647i, arg_3.x, 1i)) >> (firstTrailingBit(43452u) % 32u)) | -20839i, -29811i));
    var var_2 = func_5(func_4(func_2()), arg_2.c, arg_0, arg_2);
    var var_3 = _wgslsmith_f_op_vec2_f32(-arg_0.a.zx);
    let var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_f_op_f32(arg_0.a.x * var_3.x), _wgslsmith_f_op_f32(-var_3.x))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_4(arg_0).a * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_2.a.x, 609f, -1000f)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b, global1[_wgslsmith_index_u32(var_2.c, 31u)], 1297f)))), false))), 1000f, firstLeadingBit(~18760u));
    return var_2.b;
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    global0 = i32(-1i) * -u_input.a.x;
    let var_0 = func_5(arg_0, 1u ^ arg_0.c, arg_0, func_5(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.b), arg_0.b, 726f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -440f)), _wgslsmith_clamp_u32(arg_0.c, ~arg_0.c, ~9693u)), 4294967295u, Struct_1(vec3<f32>(-707f, arg_0.a.x, _wgslsmith_f_op_f32(611f - 410f)), _wgslsmith_f_op_f32(sign(func_5(Struct_1(vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 31u)], global1[_wgslsmith_index_u32(arg_0.c, 31u)], arg_0.a.x), 648f, 9033u), arg_0.c, arg_0, Struct_1(vec3<f32>(-700f, arg_0.a.x, -480f), 504f, 4294967295u)).b)), 4294967295u), func_4(arg_0))).a;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(func_4(Struct_1(vec3<f32>(global1[_wgslsmith_index_u32(1u, 31u)], -251f, arg_0.a.x), var_0.x, arg_0.c)).a.yx, vec2<f32>(var_0.x, 779f))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, var_0.x)), 1000f))));
    let var_2 = vec4<f32>(var_0.x, global1[_wgslsmith_index_u32(~(firstLeadingBit(arg_0.c) & _wgslsmith_div_u32(0u, 4294967295u)) >> (select(~arg_0.c >> (~arg_0.c % 32u), _wgslsmith_add_u32(0u, 45599u) << ((arg_0.c ^ arg_0.c) % 32u), !(global1[_wgslsmith_index_u32(99030u, 31u)] <= -481f)) % 32u), 31u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(arg_0.c, 31u)])))), _wgslsmith_f_op_f32(-var_0.x)), -857f);
    global0 = _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, ~(-2147483647i)), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, u_input.b), u_input.a) >> (vec2<u32>(arg_0.c, 1u) % vec2<u32>(32u))), reverseBits(u_input.b ^ firstTrailingBit(min(u_input.a.x, 81712i))));
    return Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 31u)], var_0.x, 202f), _wgslsmith_f_op_vec3_f32(-var_0)), func_2().a), vec3<f32>(arg_0.a.x, _wgslsmith_f_op_f32(-424f + 400f), 1032f)), var_0.x, arg_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_1(Struct_1(vec3<f32>(global1[_wgslsmith_index_u32(0u, 31u)], global1[_wgslsmith_index_u32(14055u, 31u)], global1[_wgslsmith_index_u32(1u, 31u)]), -251f, 19412u), -1i, Struct_1(vec3<f32>(global1[_wgslsmith_index_u32(37261u, 31u)], global1[_wgslsmith_index_u32(33373u, 31u)], global1[_wgslsmith_index_u32(0u, 31u)]), -313f, 5122u), vec4<i32>(2147483647i, -2147483647i, -2147483647i, 22250i))), _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(81101u, 31u)])), -688f)), 725f, 57872u));
    global1 = array<f32, 31>();
    var var_1 = vec2<u32>(0u & ~var_0.c, var_0.c);
    var var_2 = var_0.a.yx;
    global0 = -33650i;
    let x = u_input.a;
    s_output = StorageBuffer(~0u, _wgslsmith_clamp_vec3_i32(select(min(vec3<i32>(0i, 17481i, u_input.b), vec3<i32>(u_input.b, u_input.b, u_input.a.x)), vec3<i32>(-2147483647i, u_input.b, u_input.a.x), var_1.x > 4294967295u), _wgslsmith_clamp_vec3_i32(-vec3<i32>(u_input.a.x, u_input.b, -30913i), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, u_input.b, 44669i), vec3<i32>(-22763i, u_input.b, u_input.a.x)), vec3<i32>(u_input.a.x, -7688i, 16091i)), select(vec3<i32>(-15858i, -1i, -52934i), firstLeadingBit(vec3<i32>(u_input.b, -6336i, u_input.b)), true)) & firstTrailingBit(vec3<i32>(u_input.b, ~(-2147483647i), -19756i)));
}

