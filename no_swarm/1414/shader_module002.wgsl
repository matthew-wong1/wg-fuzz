struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: i32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec2<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28>;

var<private> global1: Struct_1 = Struct_1(-1i, 11878u);

var<private> global2: array<vec3<i32>, 14> = array<vec3<i32>, 14>(vec3<i32>(0i, i32(-2147483648), 1i), vec3<i32>(-29391i, -25567i, 2147483647i), vec3<i32>(0i, 1i, 46111i), vec3<i32>(1i, 2147483647i, i32(-2147483648)), vec3<i32>(0i, 51879i, 6678i), vec3<i32>(i32(-2147483648), 1i, 2147483647i), vec3<i32>(-35315i, 1i, -23248i), vec3<i32>(-1i, 1i, 0i), vec3<i32>(-24537i, 0i, 7898i), vec3<i32>(13755i, 0i, i32(-2147483648)), vec3<i32>(i32(-2147483648), -1i, 46758i), vec3<i32>(2147483647i, 2147483647i, -18975i), vec3<i32>(-62846i, 14941i, 2147483647i), vec3<i32>(-24878i, 1i, 7009i));

var<private> global3: vec3<i32>;

var<private> global4: array<f32, 16> = array<f32, 16>(147f, -483f, 1457f, -903f, 580f, 424f, -418f, 803f, 221f, -1511f, -708f, -1051f, 895f, 1498f, 1547f, -1587f);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_2) -> vec3<i32> {
    global0 = array<Struct_1, 28>();
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(984f * global4[_wgslsmith_index_u32(55469u, 16u)]), global4[_wgslsmith_index_u32(select(arg_0.b, 2110u, false), 16u)], -1366f, _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(4294967295u, 16u)] - 1549f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-812f, global4[_wgslsmith_index_u32(arg_0.b, 16u)], 996f, -149f) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1431f, global4[_wgslsmith_index_u32(arg_0.b, 16u)], 1000f, -852f), vec4<f32>(global4[_wgslsmith_index_u32(u_input.a, 16u)], global4[_wgslsmith_index_u32(arg_0.b, 16u)], -671f, 506f)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4[_wgslsmith_index_u32(831u, 16u)], 444f, 1411f, -1066f)), vec4<f32>(1414f, global4[_wgslsmith_index_u32(u_input.a, 16u)], -509f, global4[_wgslsmith_index_u32(18863u, 16u)]), true)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1642f, 728f, global4[_wgslsmith_index_u32(u_input.c, 16u)], global4[_wgslsmith_index_u32(39971u, 16u)])))), select(arg_0.a.x, u_input.b.x, (global1.a ^ 1i) != _wgslsmith_dot_vec3_i32(~vec3<i32>(global1.a, arg_0.a.x, -48921i), vec3<i32>(global1.a, global1.a, global3.x))), vec3<i32>(firstLeadingBit(u_input.d), -(i32(-1i) * -2147483647i), 1652i) & _wgslsmith_mod_vec3_i32(-vec3<i32>(-15413i, 1i, u_input.b.x), _wgslsmith_div_vec3_i32(~vec3<i32>(1i, global3.x, 1i), -u_input.b.zyz)));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(var_0.a.wy))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1038f, 844f) * var_0.a.wx));
    var var_2 = ~(~4294967295u);
    var var_3 = -28591i;
    return ~max(global2[_wgslsmith_index_u32(global1.b, 14u)], u_input.e);
}

fn func_2(arg_0: vec3<u32>) -> Struct_2 {
    global3 = func_3(Struct_2(u_input.b.wz, ~(~u_input.a)));
    var var_0 = Struct_1(-11394i, 4294967295u);
    return Struct_2(~_wgslsmith_div_vec2_i32(vec2<i32>(-19801i, i32(-1i) * -47207i), func_3(Struct_2(vec2<i32>(-13159i, u_input.d), 0u)).zx), ~13560u ^ ~(_wgslsmith_mod_u32(1u, var_0.b) >> (4294967295u % 32u)));
}

fn func_1() -> vec2<bool> {
    let var_0 = global0[_wgslsmith_index_u32(~u_input.c, 28u)];
    var var_1 = Struct_2(global3.zz, ~(55473u << (reverseBits(global1.b) % 32u)));
    var_1 = func_2(~_wgslsmith_sub_vec3_u32(vec3<u32>(~u_input.c, 4294967295u, global1.b), max(_wgslsmith_div_vec3_u32(vec3<u32>(var_0.b, 0u, var_1.b), vec3<u32>(0u, 13219u, 19995u)), vec3<u32>(50744u, 1u, 1276u))));
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -808f)));
    global3 = u_input.b.xzw;
    return select(!vec2<bool>(!any(vec4<bool>(false, false, false, false)), abs(2147483647i) != firstTrailingBit(2205i)), select(select(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, true), !(global4[_wgslsmith_index_u32(5860u, 16u)] == global4[_wgslsmith_index_u32(var_0.b, 16u)])), !select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), false), select(vec2<bool>(false, false), vec2<bool>(false, false), true)), true & (_wgslsmith_mult_i32(var_1.a.x, global1.a) > firstLeadingBit(30428i))), all(select(vec4<bool>(true, all(vec3<bool>(true, false, true)), any(vec3<bool>(true, true, false)), global4[_wgslsmith_index_u32(u_input.a, 16u)] > 445f), vec4<bool>(all(vec3<bool>(false, false, true)), global1.b == var_0.b, true, all(vec4<bool>(true, true, false, false))), true)));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<i32>) -> Struct_1 {
    global4 = array<f32, 16>();
    var var_0 = ~select(~vec4<u32>(~4294967295u, 1u, ~3625u, abs(48336u)), ~min(vec4<u32>(global1.b, 1u, u_input.c, 69641u), vec4<u32>(0u, 4294967295u, global1.b, global1.b)), arg_0.x);
    global4 = array<f32, 16>();
    var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global4[_wgslsmith_index_u32(1u, 16u)], -346f))), _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(abs(68797u), 16u)])))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(global4[_wgslsmith_index_u32(~2242u, 16u)], 776f), _wgslsmith_f_op_f32(exp2(global4[_wgslsmith_index_u32(1u, 16u)]))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(888f, -698f))))), vec2<f32>(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(1u, 16u)] + 2464f), _wgslsmith_f_op_f32(max(global4[_wgslsmith_index_u32(0u, 16u)], 1000f))))), select(select(!select(vec2<bool>(true, false), vec2<bool>(false, arg_0.x), true), arg_0, true), arg_0, !arg_0.x)));
    global1 = Struct_1(~_wgslsmith_dot_vec3_i32(u_input.e, -vec3<i32>(20054i, 0i, global1.a)), abs(~_wgslsmith_mod_u32(61010u, firstTrailingBit(20886u))));
    return global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, _wgslsmith_mod_u32(50002u, global1.b)), 28u)];
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<f32, 16>();
    global1 = func_4(!func_1(), global3.yx);
    global3 = u_input.b.yzx;
    global0 = array<Struct_1, 28>();
    global0 = array<Struct_1, 28>();
    var var_0 = Struct_3(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(4725u, 16u)] + _wgslsmith_f_op_f32(abs(649f))), 1033f), _wgslsmith_div_f32(398f, 389f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-932f - 179f) - _wgslsmith_f_op_f32(ceil(global4[_wgslsmith_index_u32(~global1.b, 16u)]))), 812f), global1.a, _wgslsmith_mult_vec3_i32(vec3<i32>(-3081i ^ global3.x, func_3(Struct_2(global3.xx, u_input.c)).x, -21362i), vec3<i32>(global1.a, ~global1.a, 5113i)));
    global3 = func_3(func_2(select(abs(vec3<u32>(54687u, u_input.a, 52024u) << (vec3<u32>(global1.b, 37500u, u_input.a) % vec3<u32>(32u))), vec3<u32>(4294967295u, global1.b, _wgslsmith_dot_vec3_u32(vec3<u32>(global1.b, 4294967295u, global1.b), vec3<u32>(0u, global1.b, u_input.a))), all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true))))));
    let var_1 = Struct_1(-max(0i, 2147483647i), global1.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(var_0.a.xx - vec2<f32>(global4[_wgslsmith_index_u32(u_input.c, 16u)], 831f)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(var_0.a.yy * var_0.a.yz), vec2<f32>(-564f, var_0.a.x)))))), -1933f, var_0.a.yx, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.a.x, -1673f, global4[_wgslsmith_index_u32(37063u, 16u)], -1338f), var_0.a))) + vec4<f32>(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(u_input.a, 16u)]), var_0.a.x, _wgslsmith_f_op_f32(325f + -1000f), -747f)))));
}

