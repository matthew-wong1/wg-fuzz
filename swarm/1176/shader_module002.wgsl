struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: f32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<f32>,
    d: bool,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: Struct_1 = Struct_1(vec4<u32>(4294967295u, 25035u, 5304u, 0u), -1170f, 1016f, vec4<f32>(-1044f, -595f, -706f, 388f));

var<private> global2: array<i32, 25> = array<i32, 25>(-1i, 0i, -10414i, 4296i, i32(-2147483648), 18031i, 2147483647i, -21759i, -7361i, 13393i, -1i, 1i, 0i, i32(-2147483648), -6876i, 2147483647i, 2147483647i, 23949i, 1i, -73819i, i32(-2147483648), 17315i, 40799i, 1i, 11579i);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> i32 {
    let var_0 = global0.x;
    global2 = array<i32, 25>();
    global1 = Struct_1(global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 1438f)), -168f, vec4<f32>(564f, 213f, _wgslsmith_div_f32(-389f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(global1.d.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -125f))));
    global2 = array<i32, 25>();
    global2 = array<i32, 25>();
    return ~(~(firstLeadingBit(u_input.c) ^ -1i));
}

fn func_3() -> i32 {
    var var_0 = any(!(!vec3<bool>(any(vec3<bool>(false, global0.x, global0.x)), !global0.x, true)));
    global2 = array<i32, 25>();
    global2 = array<i32, 25>();
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.d + vec4<f32>(_wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(global1.d.x * -1579f), 1854f, _wgslsmith_f_op_f32(ceil(-612f)))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(global1.d)), vec4<f32>(695f, global1.d.x, global1.c, global1.c))), _wgslsmith_f_op_vec4_f32(select(global1.d, _wgslsmith_f_op_vec4_f32(ceil(global1.d)), vec4<bool>(global0.x, false, global0.x, global0.x)))))) - global1.d);
    global0 = select(!(!(!(!vec4<bool>(global0.x, global0.x, true, global0.x)))), select(select(!(!vec4<bool>(false, false, false, global0.x)), !(!vec4<bool>(true, global0.x, global0.x, global0.x)), false), !select(select(vec4<bool>(false, true, true, false), vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(true, global0.x, global0.x, true)), vec4<bool>(false, false, global0.x, false), all(vec2<bool>(global0.x, true))), vec4<bool>(false, global0.x || global0.x, false, true)), select(select(select(select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(global0.x, true, true, global0.x), true), !vec4<bool>(true, global0.x, global0.x, global0.x), global0.x & false), !select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(global0.x, false, false, true), true), vec4<bool>(global0.x, global1.a.x >= 0u, true, all(vec3<bool>(global0.x, global0.x, global0.x)))), vec4<bool>(any(!global0.zyx), global0.x, !global0.x, true), any(vec4<bool>(true, true, global0.x, true))));
    return global2[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec4_u32((~global1.a ^ reverseBits(vec4<u32>(21196u, 4294967295u, 105908u, u_input.b))) | global1.a, _wgslsmith_clamp_vec4_u32(~vec4<u32>(global1.a.x, 4294967295u, u_input.b, u_input.b), ~global1.a, vec4<u32>(u_input.b, ~u_input.b, abs(global1.a.x), select(global1.a.x, 4294967295u, global0.x))))), 25u)];
}

fn func_4(arg_0: vec4<bool>, arg_1: bool, arg_2: vec2<i32>, arg_3: f32) -> Struct_1 {
    let var_0 = 0u;
    global2 = array<i32, 25>();
    var var_1 = vec2<u32>(1u, u_input.b);
    var var_2 = Struct_3(Struct_2(arg_2.x, Struct_1(global1.a, global1.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, 417f)) + -522f), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-976f, arg_3, 1000f, 2064f) * global1.d)))), global1.d.wx, select(1i, -arg_2.x, global0.x) == u_input.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.d.x, -1000f, arg_3, global1.d.x) + vec4<f32>(arg_3, 837f, arg_3, arg_3)), _wgslsmith_div_vec4_f32(global1.d, global1.d), arg_0)))), vec3<f32>(-316f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) * global1.d.x), _wgslsmith_f_op_f32(round(-1335f))));
    let var_3 = var_2.a;
    return Struct_1(_wgslsmith_div_vec4_u32(~vec4<u32>(_wgslsmith_mult_u32(21053u, 7078u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 26369u, var_0), vec4<u32>(61117u, 4294967295u, 33260u, u_input.b)), 78079u, 52627u), min((global1.a >> (var_2.a.b.a % vec4<u32>(32u))) << (_wgslsmith_mult_vec4_u32(global1.a, vec4<u32>(0u, 76851u, 4294967295u, 0u)) % vec4<u32>(32u)), global1.a)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(var_3.b.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))))), var_2.b.x)), _wgslsmith_f_op_f32(ceil(-1064f)), _wgslsmith_f_op_vec4_f32(select(global1.d, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-300f, _wgslsmith_f_op_f32(select(-596f, arg_3, false)), 2396f, _wgslsmith_f_op_f32(floor(777f))))), select(vec4<bool>(any(vec3<bool>(false, global0.x, true)), var_2.a.d, !var_3.d, any(arg_0.zyy)), vec4<bool>(any(vec4<bool>(false, global0.x, var_2.a.d, var_3.d)), global0.x, true, global0.x && false), 1f == _wgslsmith_f_op_f32(step(global1.b, var_3.e.x))))));
}

fn func_1(arg_0: vec3<bool>, arg_1: bool) -> i32 {
    let var_0 = Struct_3(Struct_2(global2[_wgslsmith_index_u32(1u, 25u)], func_4(select(vec4<bool>(arg_0.x, false, global0.x, arg_1), vec4<bool>(arg_0.x, true, false, false), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true)), func_2() < func_3(), _wgslsmith_mod_vec2_i32(vec2<i32>(0i, 1i), vec2<i32>(48774i, u_input.c)) >> (global1.a.zz % vec2<u32>(32u)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1.d.x + global1.d.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.d.x, global1.d.x) * vec2<f32>(global1.b, global1.b)) * global1.d.yz), select(true, global0.x, !(global1.d.x < -364f)), func_4(!vec4<bool>(true, false, arg_1, arg_0.x), any(vec4<bool>(global0.x, false, arg_0.x, true)), vec2<i32>(select(0i, global2[_wgslsmith_index_u32(global1.a.x, 25u)], true), firstLeadingBit(global2[_wgslsmith_index_u32(4309u, 25u)])), -1109f).d), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.d.wyx) + global1.d.yxy));
    let var_1 = Struct_1(_wgslsmith_add_vec4_u32(global1.a, vec4<u32>(~73221u, ~u_input.b, ~global1.a.x, u_input.b)), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.c))))), global1.c, func_4(select(!vec4<bool>(arg_1, var_0.a.d, false, global0.x), !(!vec4<bool>(true, var_0.a.d, arg_0.x, arg_1)), !arg_0.x & all(vec2<bool>(true, global0.x))), true, vec2<i32>(2147483647i, global2[_wgslsmith_index_u32(4294967295u, 25u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x * _wgslsmith_f_op_f32(round(global1.d.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -632f) * var_0.a.e.x))).d);
    let var_2 = var_0;
    let var_3 = var_0.a;
    global1 = Struct_1(var_0.a.b.a, _wgslsmith_div_f32(var_0.a.e.x, global1.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.b.x)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(360f)) + _wgslsmith_f_op_f32(round(var_3.e.x)))))), _wgslsmith_f_op_vec4_f32(exp2(global1.d)));
    return ~var_2.a.a;
}

fn func_5(arg_0: vec4<bool>, arg_1: vec3<u32>, arg_2: vec4<i32>) -> vec4<bool> {
    return arg_0;
}

fn func_6(arg_0: vec4<bool>, arg_1: f32, arg_2: i32) -> Struct_2 {
    return Struct_2(global2[_wgslsmith_index_u32(623u, 25u)], func_4(select(!arg_0, func_5(arg_0, vec3<u32>(u_input.b, 0u, 0u), vec4<i32>(-1i, global2[_wgslsmith_index_u32(4294967295u, 25u)], -2147483647i, u_input.a)), arg_0.x), false, select(abs(vec2<i32>(u_input.c, -1i)) & vec2<i32>(u_input.a, global2[_wgslsmith_index_u32(global1.a.x, 25u)]), ~vec2<i32>(u_input.c, 2147483647i), vec2<bool>(any(global0.yzy), true)), 2054f), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_1, arg_1))) * global1.d.yz), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1189f), -736f)), vec2<f32>(_wgslsmith_f_op_f32(trunc(arg_1)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f * -1939f)))))), any(arg_0), _wgslsmith_f_op_vec4_f32(min(global1.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(global1.d, global1.d)), vec4<f32>(2785f, arg_1, arg_1, global1.d.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(!func_5(!vec4<bool>(global0.x, global0.x, true, global0.x), vec3<u32>(global1.a.x, ~4294967295u, ~1u), vec4<i32>(global2[_wgslsmith_index_u32(0u ^ u_input.b, 25u)], ~2147483647i, -16590i, func_1(global0.wwz, true))), global1.c, u_input.a);
    var_0 = func_6(vec4<bool>(all(!select(global0.zy, global0.wy, global0.zx)), !global0.x, var_0.d && ((var_0.b.b < global1.b) | (var_0.b.a.x > var_0.b.a.x)), false), var_0.b.d.x, -(~_wgslsmith_add_i32(abs(-1i), 1i)));
    var var_1 = firstTrailingBit(func_1(global0.zxy, any(func_5(vec4<bool>(var_0.d, global0.x, global0.x, false), vec3<u32>(1u, 30091u, u_input.b), vec4<i32>(u_input.a, u_input.c, -38483i, var_0.a)).zw)) << ((_wgslsmith_add_u32(u_input.b, func_4(vec4<bool>(var_0.d, var_0.d, true, global0.x), false, vec2<i32>(var_0.a, 2147483647i), global1.c).a.x) & var_0.b.a.x) % 32u));
    var var_2 = Struct_1(~firstLeadingBit(~vec4<u32>(var_0.b.a.x, 51457u, 4294967295u, global1.a.x)), -139f, -267f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(func_6(!vec4<bool>(false, false, var_0.d, var_0.d), _wgslsmith_f_op_f32(2369f * global1.b), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, global1.a.x, u_input.b), vec4<u32>(var_0.b.a.x, var_0.b.a.x, var_0.b.a.x, u_input.b)), 25u)]).b.d, vec4<f32>(-1581f, _wgslsmith_f_op_f32(floor(global1.b)), global1.d.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var var_3 = _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, countOneBits(u_input.b) ^ (32945u ^ global1.a.x), 1u), var_0.b.a.www);
    let var_4 = Struct_1(~vec4<u32>(_wgslsmith_sub_u32(1u, 0u), _wgslsmith_mod_u32(17632u, global1.a.x), func_6(vec4<bool>(false, global0.x, false, global0.x), -1677f, -13863i).b.a.x, 0u) ^ _wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(23887u, 41098u, u_input.b, var_0.b.a.x)), var_2.a), 215f, 227f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-func_4(vec4<bool>(global0.x, true, false, var_0.d), false, vec2<i32>(38188i, -46543i), -1000f).d)))));
    let var_5 = 714f;
    var_2 = Struct_1(select(var_4.a, var_2.a, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1768f, var_0.b.b) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_5))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b) * _wgslsmith_f_op_f32(1000f - -204f)), _wgslsmith_f_op_vec4_f32(func_6(select(!vec4<bool>(false, global0.x, false, true), !vec4<bool>(var_0.d, var_0.d, false, true), true), _wgslsmith_f_op_f32(global1.d.x + _wgslsmith_f_op_f32(-197f * 255f)), u_input.a).e + global1.d));
    var_0 = Struct_2(39101i, func_4(select(!vec4<bool>(true, global0.x, false, global0.x), func_5(func_5(vec4<bool>(false, true, false, var_0.d), var_2.a.wzy, vec4<i32>(global2[_wgslsmith_index_u32(66960u, 25u)], var_0.a, global2[_wgslsmith_index_u32(global1.a.x, 25u)], u_input.a)), var_0.b.a.xyw, ~vec4<i32>(-14178i, -57686i, u_input.c, 49796i)), global0.x), true, (~vec2<i32>(-16216i, var_0.a) & abs(vec2<i32>(u_input.a, global2[_wgslsmith_index_u32(81047u, 25u)]))) ^ (_wgslsmith_mult_vec2_i32(vec2<i32>(11345i, global2[_wgslsmith_index_u32(var_0.b.a.x, 25u)]), vec2<i32>(-1i, var_0.a)) << (~vec2<u32>(17811u, 158720u) % vec2<u32>(32u))), _wgslsmith_f_op_f32(1464f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.d.x * -971f) * 393f))), var_4.d.yx, true, _wgslsmith_f_op_vec4_f32(sign(var_0.b.d)));
    let x = u_input.a;
    s_output = StorageBuffer(-(~_wgslsmith_div_i32(~global2[_wgslsmith_index_u32(0u, 25u)], 9013i)), _wgslsmith_add_i32(var_0.a, -2147483647i), vec2<i32>(min(-24777i, _wgslsmith_mod_i32(u_input.c, -60978i)), var_0.a) ^ (_wgslsmith_mod_vec2_i32(vec2<i32>(var_0.a, global2[_wgslsmith_index_u32(35112u, 25u)]), vec2<i32>(0i, 1i)) | vec2<i32>(reverseBits(var_0.a), -1i)), var_0.e);
}

