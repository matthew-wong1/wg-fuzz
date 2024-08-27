struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: i32,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<bool>,
    c: Struct_2,
    d: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: Struct_3,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: vec4<u32>;

var<private> global1: array<i32, 25> = array<i32, 25>(-38361i, -1i, 996i, 19556i, i32(-2147483648), 2147483647i, -15692i, -2497i, i32(-2147483648), -61278i, 39124i, 0i, -2643i, -17529i, -18392i, 16692i, 35593i, 1i, 40105i, i32(-2147483648), i32(-2147483648), 1i, 30982i, -1i, 53287i);

var<private> global2: bool = true;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec4<bool> {
    global0 = vec4<u32>(reverseBits(reverseBits(~global0.x)), 29897u, firstLeadingBit(u_input.a), max(u_input.a, _wgslsmith_mult_u32(u_input.a, u_input.a)));
    let var_0 = false;
    let var_1 = _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, _wgslsmith_div_u32(u_input.a, u_input.a), 1u), global0.zzx), vec3<u32>(_wgslsmith_sub_u32(global0.x, u_input.a), firstTrailingBit(1u), countOneBits(u_input.a)) | vec3<u32>(u_input.a & global0.x, global0.x, 4294967295u & global0.x)), global0.zwz);
    global0 = vec4<u32>(~(~_wgslsmith_mult_u32(20303u, 1u)), var_1, _wgslsmith_mult_u32(1u | countOneBits(_wgslsmith_sub_u32(var_1, 4294967295u)), var_1), ~1u << ((~(~global0.x) | firstLeadingBit(u_input.a)) % 32u));
    let var_2 = global1[_wgslsmith_index_u32(var_1, 25u)];
    return !vec4<bool>(var_0, false, 1u == min(u_input.a, 1u), false);
}

fn func_2(arg_0: Struct_1) -> bool {
    global1 = array<i32, 25>();
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(arg_0.a, vec3<f32>(1522f, -340f, arg_0.a.x)))))), 565f, ~(-arg_0.e) ^ max(1i, -1i), arg_0.d, arg_0.c), abs(global0.wxy));
    global2 = false;
    global2 = false;
    let var_1 = select(vec4<bool>(false | all(!vec2<bool>(arg_0.d, var_0.a.d)), (arg_0.d && (arg_0.d && var_0.a.d)) & (var_0.a.d | arg_0.d), false, !any(select(vec2<bool>(var_0.a.d, var_0.a.d), vec2<bool>(true, true), vec2<bool>(true, true)))), vec4<bool>(true, any(vec3<bool>(any(vec4<bool>(true, var_0.a.d, var_0.a.d, true)), true, any(vec2<bool>(arg_0.d, false)))), ~_wgslsmith_mod_u32(1u, 1u) != ~var_0.b.x, ~u_input.a < ~firstTrailingBit(u_input.a)), select(select(!(!vec4<bool>(false, arg_0.d, var_0.a.d, true)), select(vec4<bool>(arg_0.d, var_0.a.d, false, true), select(vec4<bool>(var_0.a.d, false, true, true), vec4<bool>(arg_0.d, var_0.a.d, false, false), vec4<bool>(var_0.a.d, var_0.a.d, false, false)), true), func_3()), func_3(), !any(vec4<bool>(true, var_0.a.d, var_0.a.d, var_0.a.d))));
    return select(true, true, all(vec4<bool>(false, any(var_1), true, all(vec3<bool>(arg_0.d, var_0.a.d, arg_0.d))))) & var_0.a.d;
}

fn func_4(arg_0: vec4<bool>, arg_1: f32, arg_2: vec3<bool>) -> vec3<f32> {
    var var_0 = Struct_3(1i, arg_0.wzw, Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, -767f, -485f) * vec3<f32>(319f, arg_1, -656f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, -431f)), ~(-6775i), true, ~(~global1[_wgslsmith_index_u32(global0.x, 25u)])), global0.yww), !(!(!func_3())));
    let var_1 = arg_2.x;
    var_0 = Struct_3(-1i, arg_0.xzy, Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(var_0.c.a.b * -1687f), arg_1, _wgslsmith_f_op_f32(-var_0.c.a.a.x)), -196f, var_0.a, true, var_0.c.a.c), _wgslsmith_sub_vec3_u32(select(var_0.c.b, vec3<u32>(0u, global0.x, 70079u), false) >> ((global0.wxy >> (vec3<u32>(var_0.c.b.x, 0u, u_input.a) % vec3<u32>(32u))) % vec3<u32>(32u)), ~global0.zyw | ~var_0.c.b)), !(!vec4<bool>(var_0.c.a.d, true, true, true)));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(abs(369f)), _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(step(arg_1, -636f))));
    let var_3 = Struct_1(var_0.c.a.a, -1155f, var_0.a, false, _wgslsmith_clamp_i32(-24146i, 9467i, 23157i));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.c.a.a) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.c.a.a - var_0.c.a.a)), _wgslsmith_f_op_vec3_f32(-var_3.a)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(var_2.x, -342f, 599f), _wgslsmith_f_op_vec3_f32(trunc(var_3.a))), vec3<f32>(-501f, _wgslsmith_f_op_f32(-var_3.a.x), _wgslsmith_f_op_f32(-var_0.c.a.b)))), false)));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec4<u32>, arg_3: Struct_2) -> bool {
    global1 = array<i32, 25>();
    var var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_3.a.a.x, 2840f, -213f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-675f, arg_3.a.b, arg_0.b) - arg_3.a.a)))) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-270f, _wgslsmith_f_op_f32(f32(-1f) * -616f), _wgslsmith_div_f32(-266f, arg_0.b)))))));
    var_0 = _wgslsmith_f_op_vec3_f32(func_4(vec4<bool>(arg_0.d, true, !(!arg_3.a.d), !(!arg_0.d)), arg_1.x, select(select(select(select(vec3<bool>(false, false, false), vec3<bool>(arg_0.d, arg_3.a.d, arg_3.a.d), arg_0.d), select(vec3<bool>(arg_0.d, arg_0.d, false), vec3<bool>(false, arg_3.a.d, arg_0.d), vec3<bool>(true, false, false)), !arg_0.d), vec3<bool>(arg_3.a.d, all(vec4<bool>(arg_0.d, arg_0.d, false, arg_0.d)), !arg_0.d), !(!vec3<bool>(false, arg_0.d, arg_0.d))), select(vec3<bool>(!arg_0.d, true, arg_0.d), vec3<bool>(func_2(arg_3.a), true, arg_0.d || arg_3.a.d), true), !(arg_0.b > _wgslsmith_f_op_f32(-var_0.x)))));
    let var_1 = arg_0;
    global0 = ~firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 52352u, 1u, global0.x) >> (vec4<u32>(4294967295u, 33305u, arg_3.b.x, arg_2.x) % vec4<u32>(32u)), ~vec4<u32>(u_input.a, 0u, 65029u, global0.x)));
    return !(!any(vec2<bool>(any(vec3<bool>(false, arg_0.d, true)), any(vec3<bool>(var_1.d, arg_3.a.d, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(vec2<i32>(_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(4294967295u, 25u)], global1[_wgslsmith_index_u32(global0.x, 25u)]), _wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(u_input.a, 25u)], global1[_wgslsmith_index_u32(global0.x, 25u)], -16630i)) >> (global0.yw % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(vec2<i32>(~global1[_wgslsmith_index_u32(0u, 25u)], abs(global1[_wgslsmith_index_u32(1u, 25u)])), -vec2<i32>(global1[_wgslsmith_index_u32(u_input.a, 25u)], 0i))) | max(_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, global1[_wgslsmith_index_u32(42480u, 25u)]), vec2<i32>(firstTrailingBit(global1[_wgslsmith_index_u32(u_input.a, 25u)]), global1[_wgslsmith_index_u32(global0.x, 25u)])), _wgslsmith_div_vec2_i32((vec2<i32>(global1[_wgslsmith_index_u32(global0.x, 25u)], global1[_wgslsmith_index_u32(28574u, 25u)]) << (vec2<u32>(22035u, global0.x) % vec2<u32>(32u))) | ~vec2<i32>(global1[_wgslsmith_index_u32(29724u, 25u)], global1[_wgslsmith_index_u32(13959u, 25u)]), countOneBits(vec2<i32>(global1[_wgslsmith_index_u32(0u, 25u)], global1[_wgslsmith_index_u32(4294967295u, 25u)]))));
    let var_1 = -2147483647i > _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(-46361i & var_0.x, -30495i ^ var_0.x)), -select(vec2<i32>(-3166i, global1[_wgslsmith_index_u32(35958u, 25u)]), ~vec2<i32>(global1[_wgslsmith_index_u32(global0.x, 25u)], var_0.x), func_1(Struct_1(vec3<f32>(-2649f, 234f, -914f), -811f, var_0.x, true, -27253i), vec4<f32>(763f, 253f, -549f, 1303f), vec4<u32>(32328u, 4294967295u, 0u, global0.x), Struct_2(Struct_1(vec3<f32>(-293f, -882f, 590f), -1000f, var_0.x, true, global1[_wgslsmith_index_u32(0u, 25u)]), vec3<u32>(global0.x, 0u, 7426u)))));
    var var_2 = vec3<bool>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-2828f)) - 1084f))) > _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-199f)), _wgslsmith_f_op_f32(f32(-1f) * -1574f)), _wgslsmith_f_op_f32(f32(-1f) * -998f))), var_1, !any(!vec4<bool>(true, var_1, var_1, var_1)));
    let var_3 = Struct_3(_wgslsmith_add_i32(countOneBits(global1[_wgslsmith_index_u32(global0.x, 25u)]), -global1[_wgslsmith_index_u32(u_input.a & u_input.a, 25u)]), func_3().yxw, Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-2245f * -1330f), _wgslsmith_f_op_f32(trunc(-1000f)), -379f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-572f)) * _wgslsmith_f_op_f32(select(-1107f, 2259f, true))), select(15224i, ~global1[_wgslsmith_index_u32(u_input.a, 25u)], true), false, max(global1[_wgslsmith_index_u32(global0.x, 25u)], 1i)), global0.zzy & vec3<u32>(~4294967295u, _wgslsmith_mod_u32(42604u, global0.x), ~global0.x)), !(!vec4<bool>(!var_2.x, var_2.x | var_1, var_1, func_3().x)));
    global0 = vec4<u32>(var_3.c.b.x, 0u, 43015u, ~firstTrailingBit(min(global0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(2430u, 45762u, u_input.a, u_input.a), vec4<u32>(u_input.a, 5049u, var_3.c.b.x, 0u)))));
    var_2 = select(select(var_3.d.yxx, vec3<bool>(true, var_2.x, func_3().x), vec3<bool>(all(vec2<bool>(true, true)), var_1, true)), vec3<bool>(all(var_3.d) && func_1(Struct_1(var_3.c.a.a, var_3.c.a.b, global1[_wgslsmith_index_u32(global0.x, 25u)], var_2.x, global1[_wgslsmith_index_u32(18974u, 25u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-585f, var_3.c.a.b, var_3.c.a.a.x, var_3.c.a.b)), vec4<u32>(0u, u_input.a, 90591u, 0u), var_3.c), !(var_1 && (false || var_3.c.a.d)), any(func_3().wx)), true);
    var var_4 = -254f;
    var var_5 = vec2<i32>(4349i, var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c.b);
}

