struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec2<bool>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 21>;

var<private> global1: array<Struct_1, 14>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: Struct_1) -> u32 {
    global1 = array<Struct_1, 14>();
    var var_0 = vec4<u32>(47737u, reverseBits(30450u), 4294967295u, ~(9452u >> (1u % 32u)));
    var_0 = arg_2.b;
    var var_1 = u_input.b;
    var var_2 = select(var_0.ww, reverseBits(arg_2.b.yw), arg_2.c.x);
    return var_0.x;
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: vec3<i32>) -> bool {
    global0 = array<f32, 21>();
    let var_0 = min(19702u, max(0u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(12302u, u_input.a, arg_1.b.x), vec3<u32>(5431u, arg_1.b.x, 1u)))) | (~abs(min(13484u, u_input.a)) ^ _wgslsmith_add_u32(62613u, _wgslsmith_add_u32(_wgslsmith_clamp_u32(27240u, arg_1.b.x, 1930u), _wgslsmith_sub_u32(49788u, arg_1.b.x))));
    let var_1 = arg_1;
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(trunc(2701f))), arg_1.a.x, _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(arg_1.b.x, 21u)])))), vec4<u32>(0u, ~_wgslsmith_div_u32(45461u, func_3(true, 58699i, Struct_1(vec3<f32>(global0[_wgslsmith_index_u32(arg_1.b.x, 21u)], var_1.a.x, -899f), arg_1.b, arg_1.d.xx, var_1.d))), u_input.b.x, var_0), vec2<bool>(all(select(select(vec2<bool>(false, true), arg_1.c, vec2<bool>(true, var_1.d.x)), vec2<bool>(arg_0, false), var_1.c)), arg_0), select(select(var_1.d, !(!var_1.d), vec4<bool>(var_1.c.x, true, all(var_1.d.zzy), arg_2.x != 2147483647i)), arg_1.d, var_1.d));
    var_2 = var_1;
    return !(reverseBits(-1i) <= _wgslsmith_mult_i32(~(i32(-1i) * -1i), arg_2.x));
}

fn func_1() -> u32 {
    let var_0 = !(!select(select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), false), vec4<bool>(true, true, false, true), func_2(true, global1[_wgslsmith_index_u32(11980u, 14u)], vec3<i32>(-986i, -4162i, 2147483647i))), vec4<bool>(func_2(true, Struct_1(vec3<f32>(-936f, global0[_wgslsmith_index_u32(19141u, 21u)], global0[_wgslsmith_index_u32(u_input.a, 21u)]), vec4<u32>(52391u, 12451u, 60860u, u_input.b.x), vec2<bool>(false, false), vec4<bool>(true, true, false, false)), vec3<i32>(42190i, 11601i, 1i)), true, true, select(true, true, false)), (u_input.a != u_input.a) & true));
    var var_1 = Struct_1(vec3<f32>(-1427f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b.x, 21u)])), global0[_wgslsmith_index_u32(73163u, 21u)]), ~_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(0u, u_input.b.x, 4294967295u, 1u)), countOneBits(firstTrailingBit(vec4<u32>(24709u, 4294967295u, u_input.b.x, 33211u))), ~countOneBits(vec4<u32>(u_input.a, 46089u, u_input.b.x, 4294967295u))), vec2<bool>(true, false), var_0);
    let var_2 = firstTrailingBit(-1i);
    var var_3 = Struct_1(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(293f * _wgslsmith_f_op_f32(exp2(var_1.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-2156f, 287f, true)))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 21u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-663f, 498f)) + _wgslsmith_f_op_f32(-864f * _wgslsmith_f_op_f32(var_1.a.x * var_1.a.x)))), vec4<u32>(~min(4294967295u, 568u), func_3(all(vec4<bool>(var_1.d.x, false, var_0.x, var_1.c.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 46829i), vec2<i32>(var_2, var_2)), global1[_wgslsmith_index_u32(~u_input.b.x, 14u)]) | (reverseBits(u_input.a) ^ ~u_input.b.x), ~countOneBits(36048u), _wgslsmith_dot_vec2_u32(var_1.b.xx ^ u_input.b.xz, vec2<u32>(1u, 1u)) | ~_wgslsmith_dot_vec3_u32(var_1.b.wwy, var_1.b.xyy)), var_0.yx, vec4<bool>(var_1.c.x, all(!(!vec4<bool>(true, var_0.x, var_0.x, false))), any(select(select(vec3<bool>(false, var_1.d.x, true), vec3<bool>(false, true, var_1.d.x), var_0.yyz), select(var_1.d.yzz, vec3<bool>(false, true, true), false), !var_0.xyy)), true));
    var_1 = global1[_wgslsmith_index_u32(~(~0u), 14u)];
    return 25580u;
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: u32, arg_3: u32) -> u32 {
    var var_0 = max(vec2<i32>(abs(~0i), -2147483647i), vec2<i32>(arg_0, _wgslsmith_sub_i32(_wgslsmith_mod_i32(arg_0, -5344i) | (arg_0 ^ arg_0), -_wgslsmith_sub_i32(arg_0, 3104i))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1, arg_1, arg_1))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, global0[_wgslsmith_index_u32(arg_2, 21u)]))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2846f, arg_1, global0[_wgslsmith_index_u32(arg_2, 21u)])), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1, 845f, -236f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1199f, 1159f, global0[_wgslsmith_index_u32(arg_2, 21u)]), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 21u)], arg_1, 1565f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2142f, global0[_wgslsmith_index_u32(1u, 21u)], -1107f)) - _wgslsmith_div_vec3_f32(vec3<f32>(arg_1, global0[_wgslsmith_index_u32(1u, 21u)], 234f), vec3<f32>(global0[_wgslsmith_index_u32(49274u, 21u)], arg_1, arg_1)))))), _wgslsmith_mult_vec4_u32(~vec4<u32>(~arg_2, _wgslsmith_mod_u32(0u, 10071u), 4294967295u, 1u), ~_wgslsmith_mult_vec4_u32(vec4<u32>(30797u, arg_3, 67478u, arg_2) | vec4<u32>(arg_2, 1u, arg_2, 43930u), ~vec4<u32>(arg_2, 4294967295u, arg_2, 0u))), !select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(false, false), vec2<bool>(false, true), select(false, true, false)), true), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), true & all(vec3<bool>(true, true, false))), vec4<bool>(all(vec3<bool>(false, true, false)), true, true | all(vec2<bool>(true, false)), true), !(!any(vec4<bool>(true, true, false, false)))));
    let var_2 = firstLeadingBit(arg_2);
    var_1 = global1[_wgslsmith_index_u32(~func_1(), 14u)];
    var var_3 = var_1.d.x;
    return arg_2 & _wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(~var_1.b, select(vec4<u32>(var_2, 39691u, arg_2, 1u), vec4<u32>(19344u, 26903u, 0u, 0u), var_1.c.x)), abs(select(_wgslsmith_mod_vec4_u32(var_1.b, vec4<u32>(arg_2, 53181u, arg_2, arg_3)), countOneBits(var_1.b), select(var_1.d, var_1.d, var_1.c.x))));
}

fn func_5(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = -vec2<i32>(-2147483647i, select(~(-1i), _wgslsmith_div_i32(22433i, -1i), any(vec2<bool>(arg_1.c.x, true)))) | ~(~abs(vec2<i32>(2147483647i, 0i)));
    global0 = array<f32, 21>();
    var var_1 = 4294967295u;
    let var_2 = arg_1.a.zy;
    let var_3 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_1.b.x, arg_1.b.x), 14u)];
    return Struct_1(arg_1.a, ~(~(arg_1.b & _wgslsmith_clamp_vec4_u32(vec4<u32>(var_3.b.x, u_input.a, var_3.b.x, 5883u), vec4<u32>(224u, 36083u, arg_1.b.x, 1u), var_3.b))), !var_3.c, select(!select(vec4<bool>(true, arg_1.d.x, true, arg_1.d.x), vec4<bool>(true, false, true, false), arg_1.d), !select(arg_1.d, select(vec4<bool>(arg_1.c.x, true, arg_1.c.x, var_3.d.x), arg_1.d, arg_1.c.x), false), var_3.a.x < global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~var_3.b.x, arg_1.b.x), 21u)]));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 21>();
    let var_0 = func_5(func_4(~_wgslsmith_mult_i32(-1i, 1i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(func_1(), 21u)]) + global0[_wgslsmith_index_u32(84121u, 21u)]), ~32200u, u_input.a), global1[_wgslsmith_index_u32(u_input.a, 14u)]);
    let var_1 = min(4294967295u, 27827u);
    global0 = array<f32, 21>();
    var var_2 = 912f;
    var var_3 = Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(29825u, var_1, var_1, 52490u) << (vec4<u32>(var_1, var_0.b.x, 28333u, 40489u) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(vec4<u32>(var_1, var_1, 4294967295u, 44555u), vec4<u32>(2896u, 4294967295u, u_input.b.x, 4294967295u))), 21u)], _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1031f, -1000f)), -364f), _wgslsmith_f_op_vec3_f32(-var_0.a)), reverseBits(~_wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(var_0.b.x, var_1, u_input.a, 0u)), var_0.b)), vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.x, -1028f)) == var_0.a.x, var_0.c.x), select(!vec4<bool>(var_0.c.x != var_0.d.x, var_0.c.x, false, true), vec4<bool>(false, true, var_0.d.x, false), (_wgslsmith_f_op_f32(1235f - global0[_wgslsmith_index_u32(var_1, 21u)]) != _wgslsmith_f_op_f32(var_0.a.x - global0[_wgslsmith_index_u32(u_input.a, 21u)])) && true));
    global0 = array<f32, 21>();
    var var_4 = var_0.c.x;
    let var_5 = _wgslsmith_dot_vec4_i32(-countOneBits(select(firstLeadingBit(vec4<i32>(2147483647i, 1i, 0i, 32959i)), -vec4<i32>(-1i, -1167i, 2064i, -36710i), true)), vec4<i32>(i32(-1i) * -2805i, reverseBits(select(38689i, 0i, !var_0.d.x)), countOneBits(-7381i), _wgslsmith_clamp_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(46346i, 37739i, -1i), vec3<i32>(1i, 1i, 2147483647i)), _wgslsmith_sub_i32(-20554i, countOneBits(-1i)), 1i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_i32(vec4<i32>(~0i, 21499i & _wgslsmith_dot_vec3_i32(vec3<i32>(-17269i, var_5, -22147i), vec3<i32>(1i, var_5, var_5)), _wgslsmith_dot_vec2_i32(abs(vec2<i32>(-1i, var_5)), countOneBits(vec2<i32>(var_5, var_5))), ~(-20183i)), min(vec4<i32>(2147483647i, -1i & var_5, var_5 & var_5, _wgslsmith_mult_i32(var_5, var_5)), vec4<i32>(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_5, 8879i, var_5, var_5), vec4<i32>(var_5, -4549i, var_5, 6602i)), firstTrailingBit(var_5), -var_5))), var_3.b.x, _wgslsmith_mult_i32(~_wgslsmith_add_i32(41849i, var_5), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(-28267i, 1i), var_5 >> (var_0.b.x % 32u), 1i)) & abs(1i), ~countOneBits(var_0.b) | var_3.b);
}

