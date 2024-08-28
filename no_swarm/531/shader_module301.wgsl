struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: u32,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: f32,
    b: f32,
    c: bool,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 23>;

var<private> global1: vec2<i32> = vec2<i32>(2147483647i, -1317i);

var<private> global2: array<u32, 25>;

var<private> global3: f32;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: f32) -> i32 {
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_f_op_f32(arg_0 + -1515f))) - 1990f) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(1109f)))));
    let var_0 = (select(abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, global1.x, u_input.a), vec3<i32>(global1.x, -37566i, 47861i), vec3<i32>(1i, -2147483647i, 0i))), max(vec3<i32>(0i, 23626i, -53660i), vec3<i32>(-2211i, u_input.a, 20224i) >> (vec3<u32>(72192u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(50829u, 25u)], 25u)], 25u)], 6944u) % vec3<u32>(32u))), select(false, true, true)) | vec3<i32>(global1.x, ~_wgslsmith_dot_vec4_i32(vec4<i32>(27292i, u_input.a, -1059i, 27044i), vec4<i32>(0i, 0i, 2147483647i, global1.x)), -25398i)) | ~_wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.a, -856i, 2663i) | -vec3<i32>(18001i, u_input.a, 1i), abs(vec3<i32>(u_input.a, global1.x, global1.x)) & vec3<i32>(u_input.a, u_input.a, 20813i));
    var var_1 = vec4<u32>(_wgslsmith_clamp_u32(~select(48088u, global2[_wgslsmith_index_u32(4294967295u, 25u)], true), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~4294967295u, 25u)], 25u)], 25u)] >> (abs(global2[_wgslsmith_index_u32(4294967295u, 25u)]) % 32u), _wgslsmith_sub_u32(~4294967295u, global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(73365u, 25u)], 25u)], 25u)], global2[_wgslsmith_index_u32(35978u, 25u)]), 25u)])) << (~global2[_wgslsmith_index_u32(14330u, 25u)] % 32u), ~max(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(abs(global2[_wgslsmith_index_u32(1u, 25u)]), 25u)], ~1u), 1u), ~_wgslsmith_add_u32(1u, 11292u), 0u);
    let var_2 = var_1.x;
    let var_3 = var_0;
    return var_3.x;
}

fn func_2(arg_0: u32, arg_1: Struct_3, arg_2: vec4<u32>, arg_3: bool) -> f32 {
    var var_0 = _wgslsmith_mult_i32(-func_3(_wgslsmith_f_op_f32(exp2(arg_1.d.a))), u_input.a) < ~(-2147483647i << ((arg_2.x | abs(arg_2.x)) % 32u));
    global1 = arg_1.d.c;
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -111f), _wgslsmith_f_op_f32(f32(-1f) * -763f), _wgslsmith_f_op_f32(-arg_1.a.b.a), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1015f - 611f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -621f))), false))));
    let var_2 = true != any(!vec4<bool>(arg_3, true, 2147483647i < global1.x, !arg_3));
    let var_3 = vec3<bool>(!any(select(!vec3<bool>(false, false, var_2), !vec3<bool>(arg_3, false, true), false)), _wgslsmith_f_op_f32(f32(-1f) * -296f) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(993f * _wgslsmith_f_op_f32(-788f * arg_1.a.c.a)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.a.b.a), _wgslsmith_f_op_f32(abs(-699f))))), !all(select(select(vec3<bool>(false, false, arg_3), vec3<bool>(false, false, true), vec3<bool>(true, true, arg_3)), vec3<bool>(false, true, false), var_2)));
    return _wgslsmith_f_op_f32(floor(var_1.x));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<u32>) -> u32 {
    let var_0 = false;
    let var_1 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(global2[_wgslsmith_index_u32(arg_0.x & 4294967295u, 25u)], Struct_3(Struct_2(vec3<u32>(1u, arg_0.x, 9001u), Struct_1(-689f, 62217u, vec2<i32>(u_input.a, 5504i)), Struct_1(412f, arg_1.x, vec2<i32>(u_input.a, u_input.a)), vec4<u32>(arg_0.x, arg_0.x, 4294967295u, arg_0.x)), -208f, 1u, Struct_1(932f, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 25u)], 25u)], vec2<i32>(-2147483647i, 1i))), vec4<u32>(0u, 53732u, 0u, 1u), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-144f, -1437f)))), -253f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -377f) - _wgslsmith_f_op_f32(ceil(-1784f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -999f))))));
    global3 = -1450f;
    var var_2 = all(!vec3<bool>(countOneBits(global2[_wgslsmith_index_u32(0u, 25u)]) != ~arg_0.x, !var_0, var_0));
    let var_3 = select(select(select(vec3<bool>(false, true, var_0), !select(vec3<bool>(var_0, true, false), vec3<bool>(false, var_0, var_0), true), select(select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(false, true, var_0), var_0), vec3<bool>(true, false, var_0), !var_0)), !vec3<bool>(!var_0, var_0, !var_0), (_wgslsmith_f_op_f32(-1219f + var_1.x) <= _wgslsmith_f_op_f32(-var_1.x)) == true), !vec3<bool>(true, var_0, false), -184f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.x), var_1.x, 1i != global1.x))));
    return arg_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1550f))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-299f)))));
    var var_1 = -global1.x ^ (-(_wgslsmith_mult_i32(16547i, global1.x) >> (func_1(vec3<u32>(58717u, 9113u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 25u)], 25u)]), vec3<u32>(72427u, global2[_wgslsmith_index_u32(4294967295u, 25u)], 73143u)) % 32u)) << (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 25u)], 25u)], 25u)], 25u)], 25u)] | global2[_wgslsmith_index_u32(14104u, 25u)]), _wgslsmith_mod_u32(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(0u, 25u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(88207u, 25u)], 25u)]), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, global2[_wgslsmith_index_u32(42150u, 25u)]), 25u)], 25u)]), countOneBits(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 25u)], 25u)], 25u)]) >> (firstTrailingBit(57863u) % 32u)), 25u)], 25u)] % 32u));
    let var_2 = vec2<i32>(~abs(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, global1.x, global1.x) << (vec3<u32>(9284u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 25u)], 25u)], global2[_wgslsmith_index_u32(0u, 25u)]) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(vec3<i32>(-9319i, global1.x, u_input.a), vec3<i32>(2526i, u_input.a, global1.x)))), firstTrailingBit(-46460i) | global1.x);
    let var_3 = false;
    global0 = array<vec3<f32>, 23>();
    var var_4 = Struct_1(var_0, global2[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_sub_u32(4294967295u, ~(~22347u))), 25u)], _wgslsmith_div_vec2_i32(vec2<i32>(~1i, _wgslsmith_dot_vec2_i32(vec2<i32>(global1.x, -2147483647i), vec2<i32>(20965i, u_input.a)) | _wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, -1i, 0i, global1.x), vec4<i32>(2147483647i, u_input.a, 1i, 972i))), var_2));
    let var_5 = Struct_4(Struct_2(~vec3<u32>(global2[_wgslsmith_index_u32(~var_4.b, 25u)], 4294967295u, abs(12291u)), Struct_1(_wgslsmith_f_op_f32(-var_4.a), min(~27263u, var_4.b), vec2<i32>(~9654i, 14274i)), Struct_1(_wgslsmith_f_op_f32(-1208f + 130f), 1u, var_4.c), vec4<u32>(~global2[_wgslsmith_index_u32(1u, 25u)], ~var_4.b, ~var_4.b, _wgslsmith_div_u32(0u, 6312u)) ^ ~vec4<u32>(global2[_wgslsmith_index_u32(var_4.b, 25u)], global2[_wgslsmith_index_u32(1u, 25u)], 1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 25u)], 25u)])));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0 * -1000f))))) - var_5.a.b.a), reverseBits(-34063i), _wgslsmith_add_u32(var_5.a.b.b, firstLeadingBit(select(var_4.b, 0u, var_3) & _wgslsmith_mod_u32(0u, var_4.b))));
}

