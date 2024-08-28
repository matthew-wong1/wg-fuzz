struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
    e: i32,
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

var<private> global0: bool;

var<private> global1: array<vec2<bool>, 29>;

var<private> global2: array<bool, 27>;

var<private> global3: array<vec3<i32>, 15> = array<vec3<i32>, 15>(vec3<i32>(-52990i, 13026i, 17887i), vec3<i32>(-16251i, 2147483647i, -25431i), vec3<i32>(i32(-2147483648), 5973i, i32(-2147483648)), vec3<i32>(i32(-2147483648), -33723i, 2147483647i), vec3<i32>(-1i, 1i, 2147483647i), vec3<i32>(-9020i, 0i, -1i), vec3<i32>(-28060i, 18035i, -37476i), vec3<i32>(2147483647i, 0i, 38733i), vec3<i32>(1i, -68586i, -18906i), vec3<i32>(0i, 0i, i32(-2147483648)), vec3<i32>(48879i, 36324i, 43424i), vec3<i32>(-23412i, 44336i, 0i), vec3<i32>(31307i, 2325i, i32(-2147483648)), vec3<i32>(1i, -1i, 18686i), vec3<i32>(17289i, -3767i, -9008i));

var<private> global4: vec2<f32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: vec4<bool>, arg_3: Struct_3) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(arg_3.a + 969f), global4.x, _wgslsmith_f_op_f32(1307f - 916f), _wgslsmith_f_op_f32(min(1232f, 2831f))))), vec4<f32>(381f, _wgslsmith_f_op_f32(global4.x + 1816f), global4.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1505f - -1046f)))));
    global2 = array<bool, 27>();
    var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f - -711f))), -1510f, _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(852f, arg_3.a, global4.x, arg_3.a))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, arg_3.a, global4.x)))), (-2147483647i != u_input.e) != arg_1)))));
    var var_1 = abs(firstTrailingBit(~abs(~vec4<u32>(arg_3.b, 0u, arg_3.b, arg_3.b))));
    global1 = array<vec2<bool>, 29>();
    return select(!all(select(select(global1[_wgslsmith_index_u32(arg_3.b, 29u)], arg_2.wy, false), !global1[_wgslsmith_index_u32(0u, 29u)], arg_2.wx)), arg_2.x, true);
}

fn func_2(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: vec2<bool>, arg_3: vec2<bool>) -> Struct_2 {
    global2 = array<bool, 27>();
    var var_0 = vec4<i32>(-19639i, -(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(global3[_wgslsmith_index_u32(arg_0.b, 15u)], vec3<i32>(arg_1.x, u_input.b, 2147483647i)), -u_input.a) & -2147483647i), ~arg_1.x, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_div_i32(-u_input.c, 1i), arg_1.x, 1i), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(~arg_0.b, arg_0.b), 15u)]));
    global0 = any(select(vec4<bool>(false, true, any(!vec2<bool>(global2[_wgslsmith_index_u32(arg_0.b, 27u)], true)), any(vec2<bool>(false, arg_3.x)) & global2[_wgslsmith_index_u32(~arg_0.b, 27u)]), !select(!vec4<bool>(global2[_wgslsmith_index_u32(174u, 27u)], false, true, false), select(vec4<bool>(true, false, true, arg_2.x), vec4<bool>(false, arg_2.x, arg_2.x, arg_2.x), false), true), vec4<bool>(false, true, true, func_3(var_0.x, select(true, global2[_wgslsmith_index_u32(arg_0.b, 27u)], true), vec4<bool>(false, arg_3.x, true, arg_3.x), Struct_3(global4.x, arg_0.b)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a + -740f));
    let var_2 = vec4<bool>(arg_2.x, true, true, any(vec4<bool>(any(vec3<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 27u)], arg_3.x)), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_0.b, 70064u), 27u)], all(!arg_3), false)));
    return Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_1, arg_0.a)))));
}

fn func_1(arg_0: vec3<i32>, arg_1: f32) -> Struct_1 {
    let var_0 = false;
    global4 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(234f - global4.x)) * -605f), -1958f)));
    let var_1 = any(!vec3<bool>(global2[_wgslsmith_index_u32(select(_wgslsmith_mult_u32(4294967295u, 0u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 0u, 18532u), vec4<u32>(231u, 4294967295u, 10793u, 15196u)), true), 27u)], var_0, true));
    var var_2 = -748f;
    let var_3 = func_2(Struct_3(arg_1, 31006u), _wgslsmith_div_vec3_i32(global3[_wgslsmith_index_u32(1u, 15u)], vec3<i32>(_wgslsmith_clamp_i32(0i, arg_0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, 32468i, arg_0.x), global3[_wgslsmith_index_u32(6907u, 15u)])), 0i, -1i)), global1[_wgslsmith_index_u32(min(abs(select(~32913u, 1u, any(vec3<bool>(false, true, var_1)))), 0u), 29u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(~42281u, 45178u), vec2<u32>(1u, 1u)), 29u)]);
    return func_2(Struct_3(_wgslsmith_f_op_f32(1185f + arg_1), 99937u), countOneBits(-(global3[_wgslsmith_index_u32(~4294967295u, 15u)] ^ global3[_wgslsmith_index_u32(~60945u, 15u)])), global1[_wgslsmith_index_u32(abs(_wgslsmith_clamp_u32(~11386u, _wgslsmith_div_u32(1u, 1u), _wgslsmith_sub_u32(~178056u, 0u))), 29u)], vec2<bool>(all(global1[_wgslsmith_index_u32(abs(~0u), 29u)]), true)).a;
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: Struct_1) -> Struct_3 {
    var var_0 = ~(-((u_input.e ^ (u_input.a & -1i)) << (arg_1 % 32u)));
    let var_1 = _wgslsmith_clamp_vec2_i32(firstLeadingBit(vec2<i32>(63710i, -u_input.e)), vec2<i32>(-u_input.d, -2147483647i >> (firstTrailingBit(1u) % 32u)), ~reverseBits(-vec2<i32>(u_input.b, u_input.a)));
    var var_2 = Struct_3(arg_0.a.a.x, arg_1);
    global1 = array<vec2<bool>, 29>();
    let var_3 = vec4<u32>(firstLeadingBit(_wgslsmith_sub_u32(_wgslsmith_mod_u32(~arg_1, arg_1), ~_wgslsmith_sub_u32(arg_1, 4294967295u))), ~(~(~abs(1u))), (arg_1 ^ ~(~arg_1)) << (reverseBits(arg_1) % 32u), _wgslsmith_dot_vec2_u32(abs(select(max(vec2<u32>(0u, 20899u), vec2<u32>(1u, arg_1)), _wgslsmith_mod_vec2_u32(vec2<u32>(var_2.b, arg_1), vec2<u32>(arg_1, arg_1)), !global1[_wgslsmith_index_u32(4294967295u, 29u)])), ~(~vec2<u32>(38641u, 19597u) ^ vec2<u32>(var_2.b, var_2.b))));
    return Struct_3(arg_2.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_div_u32(max(1u, 30112u), var_3.x), firstLeadingBit(0u), ~(~var_3.x)), ~var_3.yxz));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.x, 702f, global4.x)))))), ~reverseBits(_wgslsmith_add_u32(1u, ~1u)), func_1(_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(global3[_wgslsmith_index_u32(select(23078u, 23697u, false), 15u)], vec3<i32>(1i, 1i, 1i)), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 86980u, 4294967295u, 51469u), vec4<u32>(1u, 17115u, 61496u, 1u)), 15u)] & _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, u_input.b, 10285i), global3[_wgslsmith_index_u32(460u, 15u)])), _wgslsmith_f_op_f32(-1960f - _wgslsmith_f_op_f32(-global4.x))));
    global2 = array<bool, 27>();
    var_0 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-961f - _wgslsmith_div_f32(global4.x, -852f)))), var_0.a), 12199u >> (~func_4(Struct_2(Struct_1(vec3<f32>(-741f, var_0.a, global4.x))), ~var_0.b, Struct_1(vec3<f32>(-1346f, var_0.a, -508f))).b % 32u));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, _wgslsmith_f_op_f32(f32(-1f) * -1121f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.a * 832f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1410f)), var_0.a))));
    let var_2 = func_4(func_2(func_4(func_2(Struct_3(var_1.x, var_0.b), ~global3[_wgslsmith_index_u32(42627u, 15u)], global1[_wgslsmith_index_u32(~72215u, 29u)], global1[_wgslsmith_index_u32(select(3420u, 0u, global2[_wgslsmith_index_u32(var_0.b, 27u)]), 29u)]), var_0.b, func_1(reverseBits(global3[_wgslsmith_index_u32(32415u, 15u)]), var_1.x)), _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(abs(global3[_wgslsmith_index_u32(var_0.b, 15u)]), global3[_wgslsmith_index_u32(1u, 15u)]), -global3[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, var_0.b), 15u)]), select(select(global1[_wgslsmith_index_u32(1u, 29u)], !vec2<bool>(global2[_wgslsmith_index_u32(var_0.b, 27u)], false), true), global1[_wgslsmith_index_u32(var_0.b, 29u)], vec2<bool>(global2[_wgslsmith_index_u32(var_0.b, 27u)], false)), select(!select(global1[_wgslsmith_index_u32(var_0.b, 29u)], vec2<bool>(global2[_wgslsmith_index_u32(1u, 27u)], false), global1[_wgslsmith_index_u32(36836u, 29u)]), vec2<bool>(true, true), global2[_wgslsmith_index_u32(4294967295u, 27u)])), 21904u, func_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.d, -1i, u_input.b) << (~vec3<u32>(4294967295u, var_0.b, 70820u) % vec3<u32>(32u)), global3[_wgslsmith_index_u32(abs(var_0.b), 15u)], _wgslsmith_sub_vec3_i32(global3[_wgslsmith_index_u32(~var_0.b, 15u)], ~global3[_wgslsmith_index_u32(1u, 15u)])), var_0.a));
    let var_3 = func_2(Struct_3(_wgslsmith_f_op_f32(-func_1(-vec3<i32>(u_input.b, u_input.b, 1i), _wgslsmith_f_op_f32(-1316f + var_0.a)).a.x), ~(~abs(24127u))), global3[_wgslsmith_index_u32(~_wgslsmith_mult_u32(_wgslsmith_sub_u32(var_2.b, 1741u), reverseBits(12190u)), 15u)] | firstLeadingBit(~reverseBits(global3[_wgslsmith_index_u32(var_2.b, 15u)])), select(global1[_wgslsmith_index_u32(~(~select(var_0.b, var_0.b, true)), 29u)], !(!select(global1[_wgslsmith_index_u32(0u, 29u)], global1[_wgslsmith_index_u32(4294967295u, 29u)], vec2<bool>(true, global2[_wgslsmith_index_u32(var_2.b, 27u)]))), any(!select(vec3<bool>(true, global2[_wgslsmith_index_u32(var_0.b, 27u)], global2[_wgslsmith_index_u32(4294967295u, 27u)]), vec3<bool>(global2[_wgslsmith_index_u32(var_2.b, 27u)], global2[_wgslsmith_index_u32(var_0.b, 27u)], global2[_wgslsmith_index_u32(var_2.b, 27u)]), global2[_wgslsmith_index_u32(97298u, 27u)]))), global1[_wgslsmith_index_u32(79778u, 29u)]);
    let var_4 = ~(~u_input.d);
    let var_5 = func_2(Struct_3(_wgslsmith_f_op_f32(-558f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-629f)), -1455f))), var_2.b), vec3<i32>(u_input.d >> (var_2.b % 32u), u_input.e >> (var_2.b % 32u), u_input.b), vec2<bool>(true, true), select(!select(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b, var_0.b, 33932u, 56740u), vec4<u32>(var_0.b, var_2.b, var_0.b, var_0.b)), 29u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(var_2.b, 1u)), 29u)], true), vec2<bool>(true | all(global1[_wgslsmith_index_u32(var_2.b, 29u)]), true | global2[_wgslsmith_index_u32(36768u, 27u)]), global1[_wgslsmith_index_u32(var_2.b, 29u)]));
    let x = u_input.a;
    s_output = StorageBuffer(var_4);
}

