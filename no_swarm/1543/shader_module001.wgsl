struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 8>;

var<private> global1: array<f32, 17>;

var<private> global2: i32;

var<private> global3: array<vec3<bool>, 26> = array<vec3<bool>, 26>(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_1(arg_0: vec3<f32>) -> i32 {
    var var_0 = Struct_1(u_input.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1000f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 17u)], -1241f) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 17u)], global1[_wgslsmith_index_u32(u_input.a.x, 17u)]), vec2<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 17u)], -780f)))))), _wgslsmith_mod_vec4_i32(vec4<i32>(-_wgslsmith_mult_i32(u_input.b.x, 1i), u_input.b.x, 0i, u_input.b.x), _wgslsmith_mod_vec4_i32(~vec4<i32>(-13768i, u_input.b.x, u_input.b.x, u_input.b.x), countOneBits(select(vec4<i32>(u_input.b.x, u_input.b.x, -304i, -51056i), vec4<i32>(-52491i, u_input.b.x, u_input.b.x, -2147483647i), vec4<bool>(false, true, true, false))))));
    global3 = array<vec3<bool>, 26>();
    global3 = array<vec3<bool>, 26>();
    var var_1 = arg_0;
    var var_2 = -44772i;
    return 2147483647i & var_0.a.x;
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: u32) -> bool {
    global1 = array<f32, 17>();
    var var_0 = Struct_3(~_wgslsmith_sub_vec2_u32(u_input.a.xy, u_input.a.xy), vec2<bool>(arg_1.x, arg_1.x));
    let var_1 = true;
    let var_2 = ~(~min(~(var_0.a.x << (4294967295u % 32u)), ~1u));
    var var_3 = Struct_2(Struct_1(firstLeadingBit(vec3<i32>(-2147483647i, -2147483647i, 13310i)), vec2<f32>(106f, 1f), _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(arg_0.c, arg_0.c), arg_0.c)), select(select(vec3<bool>(false, !var_0.b.x, any(arg_1.yx)), global3[_wgslsmith_index_u32(arg_2, 26u)], !all(vec3<bool>(false, arg_1.x, false))), vec3<bool>(true, var_0.b.x, arg_1.x), vec3<bool>(any(!global0[_wgslsmith_index_u32(4294967295u, 8u)]), true, select(var_0.b.x, any(vec4<bool>(false, true, var_0.b.x, false)), true || arg_1.x))), arg_0, arg_1.x);
    return firstTrailingBit(var_2) < 0u;
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: i32, arg_3: i32) -> Struct_3 {
    var var_0 = _wgslsmith_div_f32(global1[_wgslsmith_index_u32(15200u, 17u)], _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_1, 17u)])))));
    let var_1 = Struct_3(vec2<u32>(0u, _wgslsmith_mult_u32(_wgslsmith_add_u32(arg_1, 32366u), _wgslsmith_dot_vec4_u32(~vec4<u32>(89129u, u_input.a.x, 1u, 25405u), _wgslsmith_div_vec4_u32(vec4<u32>(38072u, 32160u, u_input.a.x, arg_1), vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 11507u))))), select(vec2<bool>(false, func_3(Struct_1(vec3<i32>(-22079i, -2147483647i, 32564i), vec2<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 17u)], -860f), vec4<i32>(2147483647i, arg_3, arg_3, u_input.b.x)), !global3[_wgslsmith_index_u32(arg_1, 26u)], ~u_input.a.x)), select(vec2<bool>(any(vec4<bool>(false, true, false, false)), false), vec2<bool>(true, true), all(select(global3[_wgslsmith_index_u32(arg_1, 26u)], vec3<bool>(true, true, false), false))), select(select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(false, true), false), select(vec2<bool>(true, false), vec2<bool>(false, false), true)), vec2<bool>(true, true), true)));
    var var_2 = _wgslsmith_div_vec3_u32(u_input.a, ~vec3<u32>(countOneBits(max(u_input.a.x, var_1.a.x)), u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_1, var_1.a.x) & vec3<u32>(60839u, 0u, 40045u), u_input.a)));
    let var_3 = _wgslsmith_add_u32(~u_input.a.x, abs(arg_1));
    let var_4 = vec3<bool>(any(vec3<bool>(var_1.b.x, true, !var_1.b.x)), !all(!vec4<bool>(false, false, true, var_1.b.x)) && select(true, false, false), true);
    return var_1;
}

fn func_4(arg_0: u32, arg_1: Struct_3) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(115930u, 17u)]), 1438f, 887f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(345f, global1[_wgslsmith_index_u32(arg_1.a.x, 17u)]), _wgslsmith_f_op_f32(-2392f * global1[_wgslsmith_index_u32(arg_0, 17u)]), global1[_wgslsmith_index_u32(~1u, 17u)], -1112f) - vec4<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_0, 17u)] - -975f), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 17u)] * 1000f), 252f, _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(0u, 17u)], global1[_wgslsmith_index_u32(51907u, 17u)], arg_1.b.x))))), vec4<f32>(-1290f, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_0, ~_wgslsmith_sub_u32(49215u, 1u)), 17u)], _wgslsmith_f_op_f32(f32(-1f) * -1810f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1430f, -1000f)))))), vec4<bool>(func_2(_wgslsmith_dot_vec3_i32(reverseBits(u_input.b), ~vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)), u_input.a.x, -2147483647i >> (abs(0u) % 32u), ~(i32(-1i) * -647i)).b.x, !select(arg_1.b.x, true, u_input.b.x != 2147483647i), true, (false & !arg_1.b.x) || arg_1.b.x)));
    var var_1 = Struct_2(Struct_1(u_input.b & vec3<i32>(u_input.b.x | 2147483647i, i32(-1i) * -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -49367i, -2147483647i, -62369i), vec4<i32>(u_input.b.x, -20643i, u_input.b.x, u_input.b.x))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-422f, -1000f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, 631f), vec2<f32>(var_0.x, global1[_wgslsmith_index_u32(u_input.a.x, 17u)]), arg_1.b.x))), arg_1.b)), vec4<i32>(u_input.b.x, _wgslsmith_dot_vec4_i32(-vec4<i32>(-2147483647i, 1i, u_input.b.x, -2147483647i), -vec4<i32>(0i, -61520i, 0i, -2147483647i)), 2147483647i, _wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.b.x, u_input.b.x), u_input.b.x))), vec3<bool>(true, all(select(!arg_1.b, select(vec2<bool>(true, false), arg_1.b, vec2<bool>(arg_1.b.x, arg_1.b.x)), arg_1.b)), !arg_1.b.x || false), Struct_1((u_input.b << (vec3<u32>(39059u, 1u, arg_0) % vec3<u32>(32u))) ^ vec3<i32>(u_input.b.x, firstLeadingBit(2147483647i), u_input.b.x), var_0.wy, _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(u_input.b.x, 0i)), 43941i | u_input.b.x, firstTrailingBit(-1168i), -38123i), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, -82798i, 0i), u_input.b), -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), u_input.b), _wgslsmith_mod_i32(2147483647i, u_input.b.x)))), !func_3(Struct_1(countOneBits(u_input.b), _wgslsmith_f_op_vec2_f32(floor(var_0.yx)), vec4<i32>(0i, 1i, -2147483647i, u_input.b.x)), !(!vec3<bool>(arg_1.b.x, arg_1.b.x, arg_1.b.x)), ~(~0u)));
    var var_2 = arg_0;
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(ceil(-552f)), var_0.x, global1[_wgslsmith_index_u32(u_input.a.x | (0u >> (~abs(arg_0) % 32u)), 17u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_0.x))), 269f));
    global1 = array<f32, 17>();
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(~u_input.b, u_input.b), u_input.b) & u_input.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 17u)], global1[_wgslsmith_index_u32(1u, 17u)])))), vec4<i32>(6106i, _wgslsmith_div_i32(min(u_input.b.x, 34919i), u_input.b.x), u_input.b.x, max(countOneBits(-18774i), 5878i)) & firstLeadingBit(select(vec4<i32>(u_input.b.x, u_input.b.x, 0i, -64679i), vec4<i32>(-78107i, u_input.b.x, u_input.b.x, u_input.b.x), true)));
    global2 = i32(-1i) * -u_input.b.x;
    global2 = _wgslsmith_dot_vec4_i32(~min(_wgslsmith_div_vec4_i32(var_0.c, var_0.c), -var_0.c) ^ firstLeadingBit(var_0.c & _wgslsmith_div_vec4_i32(vec4<i32>(var_0.a.x, 15620i, 1i, var_0.c.x), vec4<i32>(0i, var_0.a.x, -60353i, 2147483647i))), ~(vec4<i32>(_wgslsmith_add_i32(u_input.b.x, -2147483647i), var_0.c.x ^ -55991i, _wgslsmith_dot_vec4_i32(var_0.c, vec4<i32>(u_input.b.x, var_0.a.x, 1i, 2147483647i)), _wgslsmith_sub_i32(var_0.c.x, u_input.b.x)) >> (vec4<u32>(~u_input.a.x, ~u_input.a.x, u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, 4294967295u)) % vec4<u32>(32u))));
    global1 = array<f32, 17>();
    global0 = array<vec3<bool>, 8>();
    let var_1 = func_4(~12707u, func_2(_wgslsmith_mod_i32(var_0.c.x, 1i), reverseBits(_wgslsmith_clamp_u32(u_input.a.x, 15781u, 16747u)), ~func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -633f, var_0.b.x))), var_0.c.x));
    let var_2 = Struct_2(func_4(_wgslsmith_dot_vec3_u32(u_input.a << (~vec3<u32>(u_input.a.x, u_input.a.x, 68103u) % vec3<u32>(32u)), ~vec3<u32>(4294967295u, u_input.a.x, 1u)), func_2(2147483647i & _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.x, var_1.c.x, 12628i), vec3<i32>(var_1.a.x, var_1.c.x, u_input.b.x)), u_input.a.x, -max(var_1.a.x, var_1.a.x), var_1.c.x ^ var_1.c.x)), !global3[_wgslsmith_index_u32(0u, 26u)], Struct_1(~(~countOneBits(vec3<i32>(u_input.b.x, 16433i, 19126i))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-526f, 1129f)))), var_0.c), !(_wgslsmith_dot_vec2_i32(var_0.c.xx, countOneBits(var_1.c.xy)) >= _wgslsmith_mod_i32(51047i, var_0.c.x & 23283i)));
    global2 = ~(-firstTrailingBit(1i) & abs(var_0.a.x));
    global0 = array<vec3<bool>, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.b);
}

