struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: vec2<f32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec3<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 15>;

var<private> global1: u32;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32, arg_1: vec2<i32>, arg_2: Struct_1) -> i32 {
    let var_0 = arg_2.a.x;
    global1 = _wgslsmith_dot_vec4_u32(arg_2.d, vec4<u32>(~global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(u_input.b, u_input.b), 15u)], _wgslsmith_mult_u32(33877u, _wgslsmith_dot_vec2_u32(arg_2.d.wy, ~vec2<u32>(global0[_wgslsmith_index_u32(arg_2.b, 15u)], u_input.b))), global0[_wgslsmith_index_u32(~1u, 15u)], select(~_wgslsmith_clamp_u32(4294967295u, arg_2.b, arg_2.b), abs(reverseBits(u_input.b)), true)));
    global0 = array<u32, 15>();
    let var_1 = 43769u;
    let var_2 = Struct_1(!select(arg_2.a, select(select(arg_2.a, vec4<bool>(arg_2.a.x, true, var_0, true), arg_2.a), vec4<bool>(false, false, var_0, arg_2.a.x), vec4<bool>(var_0, var_0, var_0, false)), vec4<bool>(var_0, var_0, true, true)), arg_2.d.x, arg_2.c, _wgslsmith_sub_vec4_u32(~arg_2.d, arg_2.d) | abs(_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(arg_2.d, vec4<u32>(global0[_wgslsmith_index_u32(1u, 15u)], u_input.b, var_1, 0u)), arg_2.d, abs(arg_2.d))));
    return _wgslsmith_sub_i32(-31280i, -arg_1.x);
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    let var_0 = _wgslsmith_mult_vec4_i32(vec4<i32>(select(u_input.c, func_3(_wgslsmith_dot_vec2_i32(vec2<i32>(-49577i, -16305i), vec2<i32>(u_input.d, 0i)), -vec2<i32>(u_input.c, -2147483647i), arg_1), all(arg_2.a.yw)), u_input.c, i32(-1i) * -(~(-52700i)), 0i), firstLeadingBit(abs(vec4<i32>(6407i, 20499i, u_input.d, 1i))) ^ vec4<i32>(reverseBits(reverseBits(u_input.c)), -33468i, 0i, _wgslsmith_clamp_i32(19806i, u_input.c, _wgslsmith_mult_i32(-20512i, u_input.d))));
    let var_1 = var_0.xw;
    global0 = array<u32, 15>();
    let var_2 = var_1;
    let var_3 = abs(-1i);
    return 1974u;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: bool) -> vec4<bool> {
    global0 = array<u32, 15>();
    global1 = 38119u;
    global1 = _wgslsmith_add_u32(~4294967295u, 24982u);
    global1 = 38083u;
    global1 = _wgslsmith_div_u32(~u_input.b, (arg_0.b ^ arg_2.d.x) & abs(max(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(arg_0.d.x, 15u)], u_input.b, u_input.b), 4294967295u)));
    return select(arg_2.a, select(!vec4<bool>(true, arg_0.a.x, false, any(vec3<bool>(arg_3, false, arg_2.a.x))), arg_0.a, _wgslsmith_f_op_f32(trunc(920f)) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.c.x * arg_0.c.x), arg_0.c.x)), !arg_2.a.x);
}

fn func_1(arg_0: Struct_1) -> u32 {
    global1 = u_input.b;
    var var_0 = func_4(Struct_1(vec4<bool>(arg_0.a.x, true, !arg_0.a.x, all(select(arg_0.a.xxy, arg_0.a.zyy, arg_0.a.yyy))), abs(func_2(vec3<f32>(arg_0.c.x, -696f, -1178f), arg_0, Struct_1(arg_0.a, 5251u, arg_0.c, arg_0.d))) ^ ~(~92193u), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0.c.x, arg_0.c.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c.x, 381f)))), arg_0.d), _wgslsmith_mult_vec4_i32(vec4<i32>(~(-70561i) >> ((u_input.b | u_input.b) % 32u), ~u_input.c, u_input.a, abs(reverseBits(u_input.a))), ~firstTrailingBit(vec4<i32>(-1i, 2147483647i, -35838i, -34622i))), arg_0, all(select(!arg_0.a.zy, !vec2<bool>(arg_0.a.x, arg_0.a.x), select(select(vec2<bool>(arg_0.a.x, true), arg_0.a.zy, false), arg_0.a.xx, arg_0.a.xw))));
    var var_1 = Struct_1(select(arg_0.a, !vec4<bool>(arg_0.c.x >= arg_0.c.x, !var_0.x, true, select(arg_0.a.x, true, true)), true), 42918u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(363f, -1181f))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(arg_0.c, vec2<f32>(arg_0.c.x, arg_0.c.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1093f, 736f) - vec2<f32>(409f, 1000f))))) + vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.c.x + arg_0.c.x))), _wgslsmith_f_op_f32(arg_0.c.x * -753f))), _wgslsmith_mod_vec4_u32(arg_0.d, arg_0.d));
    global0 = array<u32, 15>();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(959f)) - 329f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -126f)))) * _wgslsmith_f_op_f32(sign(arg_0.c.x)));
    return arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(778f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -692f))), 1527f));
    var var_1 = true;
    global1 = _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_div_u32(abs(u_input.b >> (global0[_wgslsmith_index_u32(1u, 15u)] % 32u)), ~(0u >> (u_input.b % 32u))), func_1(Struct_1(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false)), _wgslsmith_sub_u32(4294967295u, 6268u), _wgslsmith_f_op_vec2_f32(vec2<f32>(-787f, 1479f) + vec2<f32>(-228f, -782f)), vec4<u32>(20102u, 1u, 4294967295u, 4294967295u) | vec4<u32>(global0[_wgslsmith_index_u32(u_input.b, 15u)], 6322u, 13326u, u_input.b))), 2765u), vec3<u32>(func_1(Struct_1(vec4<bool>(true, true, true, true), u_input.b, _wgslsmith_div_vec2_f32(vec2<f32>(-375f, 897f), vec2<f32>(-899f, 1432f)), firstLeadingBit(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(87390u, 15u)], 15u)], 15u)], u_input.b, 21194u, u_input.b)))), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(u_input.b, 15u)], 13688u), ~15373u), firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(u_input.b, 15u)], 17602u, 0u), vec3<u32>(100297u, 0u, 1u)))), 1u));
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-448f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -378f) - _wgslsmith_f_op_f32(min(-218f, -2656f)))))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(894f, 1665f, false))))) - _wgslsmith_f_op_f32(f32(-1f) * -704f));
    var var_3 = Struct_1(vec4<bool>(!(!(true != var_2)), true, select(all(select(vec3<bool>(false, var_2, var_2), vec3<bool>(true, false, false), vec3<bool>(var_2, false, var_2))), false, var_2), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -205f) * _wgslsmith_f_op_f32(trunc(215f))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -168f))), global0[_wgslsmith_index_u32(u_input.b, 15u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -925f) - _wgslsmith_div_f32(-2365f, -274f)), -1000f)), ~(~(~vec4<u32>(global0[_wgslsmith_index_u32(u_input.b, 15u)], global0[_wgslsmith_index_u32(81728u, 15u)], u_input.b, u_input.b) | _wgslsmith_mult_vec4_u32(vec4<u32>(36711u, 11078u, 21322u, u_input.b), vec4<u32>(38290u, global0[_wgslsmith_index_u32(85937u, 15u)], u_input.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 15u)], 15u)])))));
    let var_4 = i32(-1i) * -(select(u_input.d, _wgslsmith_mod_i32(0i, 1i), var_2) ^ 1i);
    var_1 = (all(select(func_4(Struct_1(var_3.a, 46978u, var_3.c, var_3.d), vec4<i32>(-5481i, u_input.a, -250i, 2147483647i), Struct_1(vec4<bool>(false, var_3.a.x, false, var_3.a.x), var_3.b, vec2<f32>(640f, var_3.c.x), vec4<u32>(u_input.b, 53590u, 0u, global0[_wgslsmith_index_u32(13826u, 15u)])), var_3.a.x), var_3.a, true)) || true) && any(select(select(!vec4<bool>(var_2, var_2, false, false), var_3.a, false), vec4<bool>(false, var_3.a.x, any(vec3<bool>(var_3.a.x, var_2, var_3.a.x)), var_3.a.x), var_3.a));
    var var_5 = Struct_1(vec4<bool>(false, var_3.a.x, true, false), _wgslsmith_add_u32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(5927u, ~1u) ^ func_1(Struct_1(vec4<bool>(true, true, false, false), var_3.d.x, vec2<f32>(var_3.c.x, -207f), vec4<u32>(u_input.b, 0u, global0[_wgslsmith_index_u32(1u, 15u)], 4294967295u))), 15u)], _wgslsmith_mod_u32(0u, _wgslsmith_mod_u32(reverseBits(36784u), global0[_wgslsmith_index_u32(u_input.b, 15u)] << (u_input.b % 32u)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-725f, _wgslsmith_f_op_f32(var_3.c.x + 1861f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_3.c, vec2<f32>(-473f, var_3.c.x)) + var_3.c), select(vec2<bool>(var_2, var_2), vec2<bool>(true, false), var_3.a.zz))))), vec4<u32>(firstTrailingBit(_wgslsmith_add_u32(~4294967295u, _wgslsmith_dot_vec4_u32(var_3.d, var_3.d))), u_input.b | _wgslsmith_div_u32(4294967295u ^ u_input.b, ~23123u), ~(global0[_wgslsmith_index_u32(max(0u, u_input.b), 15u)] | 28366u), var_3.b));
    let var_6 = Struct_1(vec4<bool>(var_5.a.x, var_3.a.x, !(1000f != _wgslsmith_f_op_f32(var_3.c.x * var_5.c.x)), func_4(Struct_1(!var_3.a, 5158u, vec2<f32>(-198f, 454f), abs(vec4<u32>(global0[_wgslsmith_index_u32(u_input.b, 15u)], 4294967295u, 0u, 0u))), countOneBits(vec4<i32>(u_input.c, -2147483647i, 4375i, var_4)), Struct_1(!var_3.a, ~var_3.b, vec2<f32>(-722f, -721f), vec4<u32>(0u, 49528u, var_3.b, var_5.b)), any(vec3<bool>(var_2, true, false))).x), 18848u, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_5.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_5.c.x)))) * vec2<f32>(_wgslsmith_f_op_f32(round(var_3.c.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-1000f)))))), vec4<u32>(var_3.b, _wgslsmith_div_u32(~_wgslsmith_add_u32(global0[_wgslsmith_index_u32(1u, 15u)], u_input.b), var_3.b), var_5.d.x, 51944u));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-2147483647i, _wgslsmith_add_i32(u_input.d, ~1i), _wgslsmith_dot_vec3_i32(-(~vec3<i32>(u_input.a, -25236i, var_4)), ~vec3<i32>(1i, u_input.a, 1i) ^ ~vec3<i32>(25868i, u_input.d, u_input.a))), 14707u, _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(59409i, 34524i, u_input.d, var_4), vec4<i32>(u_input.c, u_input.a, 1i, var_4), vec4<i32>(1i, 20917i, -2147483647i, u_input.d)), vec4<i32>(u_input.a, u_input.a, var_4, var_4)), abs(vec4<i32>(var_4, 19686i, 51371i, 14602i)), select(_wgslsmith_div_vec4_i32(vec4<i32>(0i, 1i, 0i, var_4), vec4<i32>(u_input.c, u_input.a, u_input.d, var_4)), vec4<i32>(1i, var_4, var_4, u_input.a) & vec4<i32>(1i, var_4, u_input.d, var_4), any(vec3<bool>(true, var_6.a.x, true)))) << (abs(_wgslsmith_sub_vec4_u32(~vec4<u32>(0u, 4294967295u, var_6.b, var_5.b), _wgslsmith_sub_vec4_u32(var_5.d, vec4<u32>(u_input.b, u_input.b, 25034u, var_5.d.x)))) % vec4<u32>(32u)), vec3<f32>(_wgslsmith_f_op_f32(-var_5.c.x), 1132f, var_5.c.x), ~firstTrailingBit(max(vec4<u32>(var_5.d.x, 1u, var_5.b, var_5.d.x), _wgslsmith_mult_vec4_u32(var_6.d, var_6.d))));
}

