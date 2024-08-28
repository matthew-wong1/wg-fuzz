struct Struct_1 {
    a: i32,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_3 {
    a: i32,
    b: vec4<i32>,
    c: Struct_2,
    d: vec2<bool>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_3,
    c: vec2<f32>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_4,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 8> = array<Struct_3, 8>(Struct_3(i32(-2147483648), vec4<i32>(13632i, -38916i, 0i, 9267i), Struct_2(vec4<i32>(-6636i, i32(-2147483648), 1i, 0i), vec3<f32>(-1254f, -520f, 1076f), Struct_1(27731i, false, 1000f), vec2<i32>(1i, 7444i)), vec2<bool>(false, false)), Struct_3(18013i, vec4<i32>(-1i, -1i, -1i, 23110i), Struct_2(vec4<i32>(i32(-2147483648), 20836i, i32(-2147483648), 3830i), vec3<f32>(-351f, 619f, -1391f), Struct_1(-4623i, false, -1363f), vec2<i32>(-30411i, 3200i)), vec2<bool>(false, false)), Struct_3(i32(-2147483648), vec4<i32>(-1i, 0i, 6557i, -1i), Struct_2(vec4<i32>(0i, 5679i, 3071i, i32(-2147483648)), vec3<f32>(-1529f, 1000f, -1000f), Struct_1(45078i, true, -776f), vec2<i32>(1i, i32(-2147483648))), vec2<bool>(false, true)), Struct_3(1i, vec4<i32>(-1i, -13907i, -3687i, -1524i), Struct_2(vec4<i32>(-1i, -18829i, -36508i, -1i), vec3<f32>(-1536f, 1460f, -1635f), Struct_1(-1i, true, -2688f), vec2<i32>(-1i, -3000i)), vec2<bool>(true, false)), Struct_3(-1i, vec4<i32>(-29578i, 1i, i32(-2147483648), 2147483647i), Struct_2(vec4<i32>(26886i, 10285i, i32(-2147483648), 6575i), vec3<f32>(-391f, 1282f, 1233f), Struct_1(0i, true, -258f), vec2<i32>(-49996i, 0i)), vec2<bool>(false, true)), Struct_3(0i, vec4<i32>(1i, i32(-2147483648), -1i, -7382i), Struct_2(vec4<i32>(-1i, 34397i, 33979i, -2359i), vec3<f32>(-1375f, 902f, -929f), Struct_1(2147483647i, false, -1180f), vec2<i32>(884i, -56007i)), vec2<bool>(false, false)), Struct_3(31345i, vec4<i32>(0i, 443i, -1i, -1i), Struct_2(vec4<i32>(-1i, 0i, -2161i, -1i), vec3<f32>(1018f, 726f, 519f), Struct_1(1i, true, -917f), vec2<i32>(-37565i, 2147483647i)), vec2<bool>(false, false)), Struct_3(21176i, vec4<i32>(0i, -22986i, i32(-2147483648), 0i), Struct_2(vec4<i32>(-22194i, -27393i, -1i, -1i), vec3<f32>(-165f, 685f, -2197f), Struct_1(57699i, true, 847f), vec2<i32>(-1i, -1i)), vec2<bool>(false, false)));

var<private> global1: Struct_2;

var<private> global2: array<i32, 30> = array<i32, 30>(8877i, 1i, i32(-2147483648), 26714i, -1i, 46851i, 1i, 13048i, -1i, -1i, -1i, -65456i, i32(-2147483648), 2147483647i, -6215i, 0i, -30022i, 1i, 2147483647i, 2147483647i, -1526i, i32(-2147483648), -4318i, 2707i, 5944i, 1i, 1i, -59921i, 56842i, -37181i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<f32>) -> i32 {
    global1 = Struct_2(global1.a, _wgslsmith_div_vec3_f32(global1.b, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(602f, -830f, _wgslsmith_f_op_f32(round(747f)))))), Struct_1(~(-global2[_wgslsmith_index_u32(1u, 30u)]), all(vec3<bool>(true, any(vec3<bool>(global1.c.b, false, global1.c.b)), any(vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x)))), global1.c.c), _wgslsmith_div_vec2_i32(vec2<i32>(global1.d.x, global2[_wgslsmith_index_u32(u_input.a, 30u)]), abs(vec2<i32>(max(-2147483647i, global2[_wgslsmith_index_u32(u_input.a, 30u)]), abs(global2[_wgslsmith_index_u32(20802u, 30u)])))));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.x)));
    global1 = Struct_2(~global1.a, global1.b, Struct_1(countOneBits(global1.c.a), all(vec2<bool>(arg_0.x, true)) && true, _wgslsmith_f_op_f32(global1.c.c - _wgslsmith_f_op_f32(select(global1.b.x, -1642f, global1.c.b)))), global1.a.xw);
    global0 = array<Struct_3, 8>();
    var var_1 = abs(~vec4<u32>(u_input.a, min(4294967295u, ~u_input.a), 79550u, _wgslsmith_mod_u32(14560u, 1u)));
    return global1.d.x;
}

fn func_2(arg_0: vec3<bool>) -> f32 {
    let var_0 = _wgslsmith_dot_vec3_u32(~countOneBits(vec3<u32>(u_input.a, u_input.a, u_input.a)), vec3<u32>(u_input.a, countOneBits(abs(0u)), select(u_input.a, u_input.a, !global1.c.b))) != u_input.a;
    var var_1 = global1.b;
    var var_2 = vec3<i32>(-_wgslsmith_sub_i32(-3401i, 8638i), 1i, ~max(-abs(3981i), -1i));
    global1 = Struct_2(vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-15813i, 16732i), vec2<i32>(-58950i, global2[_wgslsmith_index_u32(u_input.a, 30u)])) & ~global1.c.a, func_3(select(arg_0.xx, arg_0.yx, vec2<bool>(false, global1.c.b)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(324f, 2232f, var_1.x, global1.c.c), vec4<f32>(var_1.x, 844f, -605f, 1000f))))), -_wgslsmith_mult_i32(-4625i, firstTrailingBit(global1.a.x)), -_wgslsmith_dot_vec2_i32(global1.d, vec2<i32>(var_2.x, global2[_wgslsmith_index_u32(u_input.a, 30u)])), firstTrailingBit(_wgslsmith_mod_i32(var_2.x, abs(-1i)))), global1.b, Struct_1(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, 50860u) ^ ~u_input.a, 30u)] & 1i, !arg_0.x, _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, var_1.x)), !(var_1.x >= -2224f)))), vec2<i32>(reverseBits(~var_2.x << (~0u % 32u)), -_wgslsmith_add_i32(1i, -15594i | global2[_wgslsmith_index_u32(41478u, 30u)])));
    global2 = array<i32, 30>();
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) + var_1.x) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1.x + -911f), _wgslsmith_div_f32(-1629f, -521f), any(vec4<bool>(true, var_0, arg_0.x, var_0))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_2) -> i32 {
    var var_0 = global1.c;
    var var_1 = vec4<bool>(select(true, arg_0.x, true), true, true, _wgslsmith_f_op_f32(f32(-1f) * -861f) >= _wgslsmith_f_op_f32(select(126f, 251f, true)));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)))), var_0.c);
    global1 = Struct_2(arg_1.a, vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(func_2(vec3<bool>(all(vec4<bool>(true, true, global1.c.b, var_0.b)), true, !global1.c.b))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.b.x)))), Struct_1(arg_1.c.a, arg_0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.b.x)))), max(select(~_wgslsmith_mod_vec2_i32(global1.a.wx, vec2<i32>(arg_1.a.x, 493i)), ~vec2<i32>(1i, 1i), !select(arg_0.yy, vec2<bool>(arg_0.x, var_1.x), true)), firstTrailingBit(global1.d)));
    var var_3 = all(vec2<bool>(any(vec2<bool>(true, arg_1.d.x <= -16749i)), !var_1.x));
    return firstTrailingBit(func_3(!select(!var_1.zw, arg_0.yy, !vec2<bool>(true, arg_1.c.b)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.x + var_0.c)), 549f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1314f, arg_1.b.x, var_0.b)) * 1f), _wgslsmith_f_op_f32(func_2(!var_1.zzz)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~global1.a.wwz ^ _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(firstTrailingBit(global1.a.yyx) << ((vec3<u32>(u_input.a, 1u, u_input.a) & vec3<u32>(u_input.a, u_input.a, 0u)) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_mod_i32(global2[_wgslsmith_index_u32(124709u, 30u)], global1.d.x), global1.c.a, func_1(vec3<bool>(true, false, true), Struct_2(vec4<i32>(global1.d.x, 0i, global1.a.x, global1.a.x), global1.b, global1.c, vec2<i32>(global1.d.x, 1i))))), vec3<i32>(_wgslsmith_sub_i32(global1.d.x, global1.a.x) & _wgslsmith_div_i32(global1.c.a, global1.a.x), ~2147483647i, 2147483647i));
    let var_1 = select(vec4<bool>(true, global1.c.b, global1.c.b, true), select(vec4<bool>(any(select(vec3<bool>(true, true, false), vec3<bool>(global1.c.b, global1.c.b, global1.c.b), false)), any(vec3<bool>(global1.c.b, false, false)) && true, abs(global1.a.x) != global1.d.x, any(!vec2<bool>(global1.c.b, true))), select(select(!vec4<bool>(global1.c.b, global1.c.b, global1.c.b, true), select(vec4<bool>(true, global1.c.b, false, global1.c.b), vec4<bool>(global1.c.b, false, false, global1.c.b), vec4<bool>(false, false, false, global1.c.b)), !vec4<bool>(global1.c.b, global1.c.b, global1.c.b, global1.c.b)), !vec4<bool>(global1.c.b, global1.c.b, false, global1.c.b), global1.c.b), true), !global1.c.b == global1.c.b);
    let var_2 = Struct_4(!var_1.ww, Struct_3(~(~(-global1.d.x)), ~(-global1.a), Struct_2(_wgslsmith_mod_vec4_i32(~global1.a, abs(vec4<i32>(var_0.x, -74950i, var_0.x, 0i))), vec3<f32>(_wgslsmith_f_op_f32(-349f - global1.b.x), _wgslsmith_f_op_f32(global1.c.c - 163f), -694f), Struct_1(~14155i, true, -830f), var_0.yx), var_1.wz), _wgslsmith_f_op_vec2_f32(sign(global1.b.xx)));
    var var_3 = u_input.a;
    var var_4 = Struct_2(vec4<i32>(-1i) * -vec4<i32>(~79120i, 8465i, ~0i, _wgslsmith_mod_i32(25041i, 974i)), vec3<f32>(global1.c.c, _wgslsmith_f_op_f32(func_2(vec3<bool>(var_2.b.c.c.b, false, any(vec2<bool>(false, var_2.b.c.c.b))))), _wgslsmith_f_op_f32(-1f)), Struct_1(global1.d.x, !var_2.a.x, _wgslsmith_f_op_f32(-var_2.c.x)), var_0.yz);
    var var_5 = global1.c.b;
    let var_6 = vec3<f32>(_wgslsmith_f_op_f32(sign(global1.c.c)), _wgslsmith_f_op_f32(var_4.b.x + _wgslsmith_f_op_f32(func_2(var_1.xyy))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-140f - 297f)));
    var var_7 = any(!vec3<bool>(!any(var_1), false, true));
    var_5 = !any(var_1.zx);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.c.c, global1.a.zxz, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.c.c, var_4.b.x), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(789f, _wgslsmith_f_op_f32(global1.c.c - 491f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2352f, -347f)), vec2<bool>(true, var_2.b.c.c.b))), !select(var_1.xw, select(var_2.a, vec2<bool>(var_4.c.b, false), var_1.wx), !vec2<bool>(var_1.x, false)))));
}

