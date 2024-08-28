struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: i32,
    b: vec3<f32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec4<bool>;

var<private> global2: array<f32, 26>;

var<private> global3: vec3<f32>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: u32, arg_3: u32) -> vec2<u32> {
    var var_0 = Struct_1(abs(vec3<u32>(arg_0.a.x, _wgslsmith_add_u32(_wgslsmith_mult_u32(4294967295u, arg_2), arg_0.a.x << (0u % 32u)), ~arg_0.a.x)), _wgslsmith_clamp_i32(arg_0.b, 1i, max(_wgslsmith_sub_i32(~64897i, _wgslsmith_clamp_i32(arg_1, -54075i, u_input.a)), -49201i)), u_input.a << (arg_3 % 32u));
    let var_1 = Struct_2(countOneBits(_wgslsmith_mult_i32(36008i, ~firstTrailingBit(u_input.a))));
    global1 = select(select(select(!(!vec4<bool>(global1.x, true, global1.x, true)), !vec4<bool>(false, false, global1.x, global1.x), true), select(select(select(vec4<bool>(true, global1.x, global1.x, false), vec4<bool>(false, false, global1.x, false), global1.x), vec4<bool>(global1.x, false, true, global1.x), any(vec3<bool>(true, global1.x, false))), select(vec4<bool>(global1.x, false, global1.x, true), vec4<bool>(true, global1.x, false, true), vec4<bool>(global1.x, true, false, false)), global1.x), false), select(select(vec4<bool>(global1.x, global1.x, false, global1.x), vec4<bool>(all(vec3<bool>(false, true, global1.x)), any(vec4<bool>(global1.x, global1.x, global1.x, true)), arg_2 < arg_2, all(global1.xyw)), select(!vec4<bool>(global1.x, true, global1.x, true), vec4<bool>(global1.x, global1.x, global1.x, true), false)), !select(!vec4<bool>(global1.x, false, global1.x, global1.x), select(vec4<bool>(global1.x, global1.x, true, false), vec4<bool>(global1.x, false, global1.x, false), vec4<bool>(global1.x, false, global1.x, global1.x)), true), global1.x | true), true && ((arg_2 | abs(4294967295u)) <= ~arg_3));
    let var_2 = select(select(arg_2, 46019u, global1.x), var_0.a.x, global1.x);
    let var_3 = Struct_3(-(~(~max(arg_0.b, arg_0.b))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-614f, _wgslsmith_f_op_f32(min(137f, -511f)), _wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(arg_2, 26u)])))))), global1.xwy);
    return ~(vec2<u32>(6150u, ~arg_2) & (var_0.a.xz >> (max(max(var_0.a.zy, var_0.a.yy), select(vec2<u32>(72182u, var_2), var_0.a.xy, false)) % vec2<u32>(32u))));
}

fn func_2() -> vec4<u32> {
    var var_0 = vec4<bool>(false, true || global1.x, all(vec3<bool>(all(select(vec2<bool>(true, global1.x), global1.ww, global1.xw)), true, true)), global1.x);
    global3 = vec3<f32>(_wgslsmith_f_op_f32(abs(355f)), _wgslsmith_f_op_f32(f32(-1f) * -1829f), _wgslsmith_f_op_f32(-237f * global2[_wgslsmith_index_u32(0u, 26u)]));
    global2 = array<f32, 26>();
    global0 = _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(func_3(Struct_1(vec3<u32>(4294967295u, 4294967295u, 10667u), 0i, 10038i), -16190i, _wgslsmith_mod_u32(1u, 55364u), ~4294967295u), ~select(vec2<u32>(0u, 1u), vec2<u32>(46937u, 1u), true)), func_3(Struct_1(~vec3<u32>(8517u, 1u, 50308u), u_input.a, _wgslsmith_div_i32(0i, u_input.a)), abs(32413i), _wgslsmith_mod_u32(87404u, ~1u), abs(firstLeadingBit(0u))).x) > 1u;
    global0 = false || global1.x;
    return _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(1u, 1u, 0u), ~_wgslsmith_mult_u32(31784u, 11496u), _wgslsmith_sub_u32(_wgslsmith_add_u32(33011u, 17587u), 0u), 4294967295u), vec4<u32>(abs(_wgslsmith_mult_u32(1u, 15614u)), firstTrailingBit(1u), 1u & _wgslsmith_clamp_u32(50355u, 34841u, 24028u), _wgslsmith_add_u32(~4294967295u, 4294967295u))) | ~(~vec4<u32>(1u, 1u, 1u, 1u));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>) -> f32 {
    var var_0 = !global1.ww;
    global1 = select(!select(select(select(vec4<bool>(true, false, var_0.x, var_0.x), vec4<bool>(true, global1.x, var_0.x, true), true), !vec4<bool>(false, true, global1.x, false), !vec4<bool>(var_0.x, var_0.x, var_0.x, true)), vec4<bool>(var_0.x & true, 4294967295u != arg_1.x, global1.x, var_0.x), _wgslsmith_sub_i32(-29209i, arg_0.a) != _wgslsmith_mult_i32(u_input.a, u_input.a)), !select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(global1.x, var_0.x, true, var_0.x), vec4<bool>(global1.x, var_0.x, var_0.x, false), vec4<bool>(false, true, var_0.x, var_0.x)), vec4<bool>(true, true, true, true)), select(!vec4<bool>(global1.x, var_0.x, global1.x, var_0.x), vec4<bool>(var_0.x, var_0.x, true, global1.x), select(vec4<bool>(global1.x, false, global1.x, false), vec4<bool>(var_0.x, false, true, true), vec4<bool>(var_0.x, true, false, global1.x))), select(!vec4<bool>(global1.x, true, true, global1.x), select(vec4<bool>(global1.x, global1.x, false, false), vec4<bool>(false, false, false, global1.x), vec4<bool>(global1.x, false, false, var_0.x)), true)), false);
    let var_1 = Struct_2(1i);
    var var_2 = u_input.a;
    let var_3 = ~arg_1.xy;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-119f, _wgslsmith_f_op_f32(ceil(global3.x)))))) - global3.x);
}

fn func_1() -> u32 {
    global2 = array<f32, 26>();
    let var_0 = Struct_1(vec3<u32>(~(~(~44809u)), ~1u, select(_wgslsmith_mult_u32(0u, 81281u), 29155u, true) | (_wgslsmith_clamp_u32(4294967295u, 4294967295u, 39786u) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 33013u), vec2<u32>(6420u, 0u)))), _wgslsmith_mult_i32(~u_input.a, 1i), -(~(-34008i)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_2(1i), ~func_2())) + global3.x));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(countOneBits(_wgslsmith_div_u32(var_0.a.x, abs(var_0.a.x))), 26u)] + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(637f - global3.x) + -2651f), global2[_wgslsmith_index_u32(var_0.a.x, 26u)])));
    var var_2 = global3.zx;
    return ~var_0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 2450u;
    var var_1 = any(vec3<bool>(false, true, select(_wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(18676u, 26u)], global2[_wgslsmith_index_u32(4088u, 26u)], true)) <= 139f, true, global1.x)));
    global3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(~func_1(), 26u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -352f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global3.x, global2[_wgslsmith_index_u32(0u, 26u)], global1.x))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global3.x))), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(19999u << (1u % 32u), 26u)]), -176f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global3.x, global2[_wgslsmith_index_u32(30159u, 26u)], global2[_wgslsmith_index_u32(1u, 26u)]), vec3<f32>(global2[_wgslsmith_index_u32(2863u, 26u)], -217f, global2[_wgslsmith_index_u32(0u, 26u)]))))))));
    var var_2 = Struct_3(select(-_wgslsmith_add_i32(1i, -u_input.a), u_input.a, all(!vec4<bool>(true, false, true, global1.x))), vec3<f32>(global2[_wgslsmith_index_u32(1u, 26u)], _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.x * 1276f), global2[_wgslsmith_index_u32(1u, 26u)]), global3.x, !(!global1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_2(62453i), ~vec4<u32>(4294967295u, 1u, 20379u, 4294967295u))))), !vec3<bool>(!any(vec3<bool>(false, global1.x, true)), global1.x, !(!global1.x)));
    let var_3 = -(~_wgslsmith_dot_vec3_i32(vec3<i32>(56439i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, var_2.a), vec2<i32>(var_2.a, -1i)), -1i), ~max(vec3<i32>(var_2.a, -61702i, 1i), vec3<i32>(u_input.a, u_input.a, var_2.a))));
    var var_4 = vec2<f32>(898f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.x)), global2[_wgslsmith_index_u32(~countOneBits(21849u), 26u)]) - -474f));
    let var_5 = ~_wgslsmith_add_vec2_u32(vec2<u32>(~80975u, 1u), abs(vec2<u32>(2268u, 6418u))) & firstTrailingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 64546u), vec2<u32>(1u, 76951u >> (1u % 32u))));
    var var_6 = Struct_1(reverseBits(_wgslsmith_sub_vec3_u32(abs(vec3<u32>(1u, var_5.x, 4294967295u)), vec3<u32>(var_5.x, 1u, var_5.x))) << (vec3<u32>(40546u, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(0u, var_5.x, var_5.x), min(var_5.x, var_5.x)), 0u) % vec3<u32>(32u)), min(-countOneBits(36021i), _wgslsmith_div_i32(0i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(45929i, 0i), vec2<i32>(-18497i, 32247i)))), var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(func_2().yzw);
}

