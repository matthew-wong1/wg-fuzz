struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 25> = array<bool, 25>(false, true, false, false, false, false, true, true, true, false, false, true, true, true, false, false, true, false, false, true, false, true, false, true, false);

var<private> global1: vec3<bool>;

var<private> global2: vec3<i32> = vec3<i32>(1i, 94187i, -47480i);

var<private> global3: bool = false;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: f32, arg_3: Struct_1) -> vec4<f32> {
    var var_0 = Struct_1(abs(vec3<i32>(_wgslsmith_mod_i32(-arg_3.a.x, _wgslsmith_clamp_i32(-34403i, -70713i, 1i)), -30516i, -min(2147483647i, arg_3.a.x))));
    global3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_2 - 290f), _wgslsmith_f_op_f32(arg_2 * 233f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2 + arg_2), 122f)))) < arg_2;
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(arg_2, arg_2)), -1224f, arg_2) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-464f, -106f, 628f))))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 * arg_2)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2, arg_2)), _wgslsmith_f_op_f32(-arg_2))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, -1299f, arg_2) + vec3<f32>(1198f, arg_2, -958f)), vec3<f32>(arg_2, arg_2, -429f)), vec3<f32>(-826f, 1f, _wgslsmith_f_op_f32(arg_2 - arg_2)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, arg_2, 303f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-647f, arg_2, arg_2), vec3<f32>(-1000f, -1138f, arg_2), vec3<bool>(true, global1.x, global0[_wgslsmith_index_u32(0u, 25u)]))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, arg_2, -1656f) + vec3<f32>(490f, arg_2, arg_2))))));
    var_0 = Struct_1(vec3<i32>(~arg_1 | -3102i, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(arg_3.a, -var_0.a, arg_3.a), arg_3.a), arg_3.a.x));
    let var_2 = true;
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_2 * arg_2), _wgslsmith_f_op_f32(-589f + -865f)))), _wgslsmith_f_op_f32(floor(815f)), 876f, -2500f));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: Struct_1) -> vec3<u32> {
    global1 = !vec3<bool>(global1.x, select(arg_1.x, false, true), all(!(!vec2<bool>(global0[_wgslsmith_index_u32(arg_0.x, 25u)], true))));
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2462f, 2630f, 599f, -244f)), _wgslsmith_f_op_vec4_f32(func_3(1u, 0i, 937f, Struct_1(arg_2.a))))), vec4<f32>(_wgslsmith_f_op_f32(-231f + -308f), 1305f, -598f, _wgslsmith_f_op_f32(582f * -1551f)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -724f), 1132f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(277f * 193f)) - 110f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(156f)) * _wgslsmith_div_f32(-2256f, -1000f)) - _wgslsmith_f_op_f32(-1245f + _wgslsmith_f_op_f32(step(771f, -260f))))), true));
    var var_1 = 1u;
    var_1 = 0u;
    var var_2 = false;
    return vec3<u32>(1u, 2038u, select(arg_0.x, 11034u, true));
}

fn func_4(arg_0: f32, arg_1: vec3<u32>, arg_2: i32) -> Struct_1 {
    var var_0 = any(select(!vec3<bool>(false, arg_1.x != arg_1.x, false), vec3<bool>(any(select(vec2<bool>(false, true), global1.zx, global1.zy)), true, !(arg_1.x > 1u)), !(!(-1419f > arg_0))));
    var_0 = false;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(select(arg_0, arg_0, true)), -1208f, _wgslsmith_f_op_f32(trunc(arg_0)));
    let var_2 = var_1.yx;
    let var_3 = _wgslsmith_dot_vec4_u32(~(~vec4<u32>(0u, arg_1.x, arg_1.x, arg_1.x)), countOneBits(~(vec4<u32>(0u, 681u, arg_1.x, 0u) << (vec4<u32>(0u, 0u, arg_1.x, arg_1.x) % vec4<u32>(32u))))) >> (~1u % 32u);
    return Struct_1(abs(-(~vec3<i32>(2147483647i, 0i, global2.x))));
}

fn func_5(arg_0: Struct_1, arg_1: bool) -> vec4<f32> {
    let var_0 = ~(~(~vec3<u32>(1u, 1u, 1u)));
    let var_1 = arg_0;
    global3 = !(!(any(vec4<bool>(global1.x, global0[_wgslsmith_index_u32(20766u, 25u)], arg_1, false)) | true) & false);
    global0 = array<bool, 25>();
    let var_2 = select(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(~1i, var_1.a.x, -32265i) | ~0i, reverseBits(_wgslsmith_mult_i32(-arg_0.a.x, arg_0.a.x))), -arg_0.a.x, all(!(!(!vec4<bool>(false, arg_1, arg_1, global0[_wgslsmith_index_u32(4294967295u, 25u)])))));
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(941f, 1000f, -549f, -983f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1755f, -1049f, -959f, 229f), vec4<f32>(155f, -168f, 282f, 1964f), vec4<bool>(false, true, global0[_wgslsmith_index_u32(52076u, 25u)], true)))) + vec4<f32>(996f, _wgslsmith_f_op_f32(-358f * 709f), _wgslsmith_f_op_f32(max(-138f, 766f)), _wgslsmith_f_op_f32(f32(-1f) * -149f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-256f, -2047f, 1467f, 1974f)), vec4<f32>(1f, 1f, 1f, 1f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1612f, 1265f, -1498f, -1110f)))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(972f, 487f, 1371f, -1000f)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-256f, -126f, -571f, 995f)))));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(func_5(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * _wgslsmith_f_op_f32(1495f - -270f)), func_2(vec2<u32>(1u, 1u), vec4<bool>(true, global1.x, global1.x, global1.x), arg_1), max(~global2.x, reverseBits(1i))), global1.x))));
    global1 = !select(select(!select(vec3<bool>(false, true, global0[_wgslsmith_index_u32(4294967295u, 25u)]), vec3<bool>(global0[_wgslsmith_index_u32(21278u, 25u)], global1.x, true), false), select(select(vec3<bool>(global0[_wgslsmith_index_u32(57409u, 25u)], true, false), vec3<bool>(global0[_wgslsmith_index_u32(0u, 25u)], false, false), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, global1.x), vec3<bool>(false, false, global0[_wgslsmith_index_u32(1u, 25u)]), false), true), !(!global1.x)), select(select(vec3<bool>(false, false, false), !vec3<bool>(global0[_wgslsmith_index_u32(6354u, 25u)], false, global1.x), !vec3<bool>(false, global1.x, global1.x)), select(!vec3<bool>(true, global1.x, false), vec3<bool>(true, global1.x, false), true), select(!vec3<bool>(true, global0[_wgslsmith_index_u32(0u, 25u)], false), vec3<bool>(global1.x, global1.x, global1.x), !global0[_wgslsmith_index_u32(18731u, 25u)])), true);
    global3 = global0[_wgslsmith_index_u32((~1u >> ((4294967295u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 8591u, 33390u), max(vec3<u32>(0u, 10798u, 2499u), vec3<u32>(51416u, 1u, 4294967295u))) % 32u)) % 32u)) ^ firstLeadingBit(4294967295u), 25u)];
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.x)));
    let var_2 = -(~u_input.a);
    return Struct_1(arg_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 128f;
    var var_1 = func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1015f, 280f)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-254f, -854f), vec2<f32>(234f, 1000f), global1.x))))), Struct_1(~_wgslsmith_mod_vec3_i32(~vec3<i32>(-1618i, global2.x, global2.x), select(vec3<i32>(1i, global2.x, 2147483647i), vec3<i32>(-20212i, global2.x, global2.x), true))));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_vec4_f32(func_3(1u, -global2.x, _wgslsmith_f_op_f32(2272f - -1663f), Struct_1(vec3<i32>(global2.x, -1205i, 7900i)))).x, -1000f, true))), -188f, _wgslsmith_f_op_f32(f32(-1f) * -1207f), -437f);
    let var_3 = Struct_1(var_1.a);
    global2 = vec3<i32>(reverseBits(var_3.a.x), global2.x, _wgslsmith_div_i32(44935i, _wgslsmith_mod_i32(_wgslsmith_div_i32(var_3.a.x, ~global2.x), u_input.b)));
    var_1 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-1i) * -func_4(1194f, min(vec3<u32>(4294967295u, 10625u, 1u), vec3<u32>(0u, 126518u, 1u)), func_4(-219f, vec3<u32>(0u, 24421u, 72384u), var_1.a.x).a.x).a.xz, var_2.x);
}

