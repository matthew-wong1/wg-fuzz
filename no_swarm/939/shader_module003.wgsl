struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 2>;

var<private> global1: Struct_1 = Struct_1(vec3<f32>(497f, -492f, -1641f), vec2<i32>(100178i, 2147483647i), vec4<i32>(-1i, 27768i, 10488i, 1i), 2349f);

var<private> global2: f32 = 629f;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: i32, arg_3: vec3<bool>) -> f32 {
    var var_0 = arg_3.x;
    global2 = global1.d;
    var_0 = !(!arg_3.x);
    global0 = array<f32, 2>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-global1.a), _wgslsmith_f_op_vec3_f32(abs(global1.a)))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -317f), -619f, global0[_wgslsmith_index_u32(firstLeadingBit(44144u), 2u)])) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(global1.a, global1.a))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(global1.a, vec3<f32>(global0[_wgslsmith_index_u32(arg_1, 2u)], 187f, global0[_wgslsmith_index_u32(arg_1, 2u)]), vec3<bool>(false, arg_3.x, arg_3.x)))))))), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, min(u_input.b, arg_2)), global1.b), global1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 2u)] - -704f))) + _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(-global1.a.x)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.d, global1.d) - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0, 2u)])), _wgslsmith_f_op_f32(max(global1.d, _wgslsmith_div_f32(483f, global0[_wgslsmith_index_u32(4294967295u, 2u)]))))));
    return _wgslsmith_f_op_f32(sign(306f));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_1) -> f32 {
    var var_0 = false;
    var var_1 = vec3<bool>(!(!(!(arg_0.c.x <= arg_0.b.x))), false, u_input.a.x == reverseBits(55879u));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 2u)]) - arg_0.a.x))));
    global0 = array<f32, 2>();
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0[_wgslsmith_index_u32(max(u_input.a.x, u_input.a.x), 2u)], _wgslsmith_div_f32(-932f, 349f), _wgslsmith_f_op_f32(1629f - arg_1.x))))), arg_0.b | ~countOneBits(firstTrailingBit(vec2<i32>(global1.b.x, -17136i))), _wgslsmith_mult_vec4_i32(vec4<i32>(~(-1i), firstLeadingBit(min(-594i, arg_2.b.x)), ~(-34550i), global1.b.x), arg_2.c), -2468f);
    return 827f;
}

fn func_2(arg_0: vec3<bool>, arg_1: u32, arg_2: f32, arg_3: i32) -> bool {
    global2 = _wgslsmith_f_op_f32(func_4(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(func_3(min(65927u, u_input.a.x), ~u_input.a.x, 6791i ^ global1.b.x, !arg_0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(582f + 1775f), _wgslsmith_f_op_f32(global1.d * -186f)), arg_2), min(abs(_wgslsmith_mod_vec2_i32(global1.b, vec2<i32>(25999i, -33297i))), abs(-global1.b)), global1.c, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(arg_1, 2u)], arg_2, true)), _wgslsmith_f_op_f32(max(global1.a.x, -1004f))))), global1.a.zx, Struct_1(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1305f, 1019f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 2u)] + global0[_wgslsmith_index_u32(1u, 2u)])))), vec2<i32>(abs(_wgslsmith_sub_i32(arg_3, u_input.c)), ~(~1i)), global1.c, 1065f)));
    global2 = _wgslsmith_f_op_f32(min(-436f, global0[_wgslsmith_index_u32(abs(_wgslsmith_div_u32(_wgslsmith_mod_u32(1u, 371u), (u_input.a.x << (arg_1 % 32u)) ^ 4294967295u)), 2u)]));
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(global1.a, vec3<f32>(230f, global0[_wgslsmith_index_u32(u_input.a.x, 2u)], global1.d)))) - global1.a), global1.b, -(vec4<i32>(u_input.b, countOneBits(0i), 1i, 15078i & u_input.b) | global1.c), _wgslsmith_f_op_f32(round(1392f)));
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2272f)), var_0.d))), reverseBits(global1.b), var_0.c, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global1.d, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~arg_1, 2u)])))));
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(var_0.a * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-var_0.a)))), abs(countOneBits(reverseBits(~global1.c.yx))), -_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(var_0.c.x, arg_3, -1i, -2147483647i), max(global1.c, vec4<i32>(-51684i, arg_3, 0i, -23298i))), ~select(global1.c, var_0.c, vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(717f, _wgslsmith_f_op_f32(step(-778f, -1683f)), true || arg_0.x)))));
    return all(!(!arg_0));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<bool>) -> Struct_1 {
    let var_0 = select(select(!select(!vec3<bool>(arg_0.x, false, true), select(vec3<bool>(arg_0.x, arg_0.x, arg_1.x), vec3<bool>(arg_1.x, true, false), arg_0.x), select(vec3<bool>(false, true, false), vec3<bool>(false, arg_0.x, arg_0.x), false)), !vec3<bool>(arg_0.x, func_2(vec3<bool>(false, arg_0.x, arg_1.x), 0u, 230f, 2147483647i), true & arg_1.x), !(!(!vec3<bool>(arg_0.x, arg_0.x, arg_1.x)))), !vec3<bool>(true, arg_0.x, !(!arg_1.x)), !select(!vec3<bool>(arg_1.x, true, arg_1.x), !vec3<bool>(arg_0.x, false, true), select(!vec3<bool>(arg_1.x, arg_0.x, arg_1.x), !vec3<bool>(false, arg_1.x, false), select(vec3<bool>(arg_1.x, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, false, false), arg_1.x))));
    let var_1 = 1u;
    global0 = array<f32, 2>();
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.a * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.a) - global1.a))), firstTrailingBit(vec2<i32>(2147483647i, u_input.b)), -(~vec4<i32>(u_input.b, -40739i, global1.c.x, min(-1i, 2147483647i))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 2u)]));
    var var_3 = var_2;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec2<bool>(true, !(!any(vec4<bool>(true, false, true, true)))), vec2<bool>(true, false));
    var var_1 = func_1(!select(vec2<bool>(true, true), vec2<bool>(true, all(vec3<bool>(true, true, false))), func_2(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), select(u_input.a.x, 1u, true), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 2u)]), -29797i & u_input.b)), vec2<bool>(~global1.b.x < abs(global1.c.x >> (61590u % 32u)), all(vec2<bool>(true, all(vec2<bool>(true, true))))));
    global2 = _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~abs(_wgslsmith_dot_vec4_u32(~u_input.a, u_input.a)), 2u)]);
    var var_2 = func_2(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true)))), 4294967295u, global0[_wgslsmith_index_u32(~u_input.a.x, 2u)], _wgslsmith_add_i32(-23026i, var_1.b.x));
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1534f), _wgslsmith_f_op_f32(trunc(func_1(vec2<bool>(false, true), vec2<bool>(true, true)).a.x)), _wgslsmith_f_op_f32(-2168f + 237f)))), global1.c.xx, vec4<i32>(var_0.c.x, 1i, -49255i >> (0u % 32u), var_1.c.x), global1.a.x);
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(select(var_0.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.d, 173f, global1.a.x)), true)), reverseBits(vec2<i32>(0i >> (u_input.a.x % 32u), var_1.c.x)) & reverseBits(_wgslsmith_mult_vec2_i32(global1.b, global1.c.xx) | ~global1.b), ~(~(~vec4<i32>(var_1.c.x, var_1.c.x, 14859i, -1i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -181f)))));
    let var_4 = func_1(!vec2<bool>(any(vec3<bool>(true, false, true)), !all(vec3<bool>(false, false, false))), vec2<bool>(!func_2(vec3<bool>(true, true, true), 21806u, _wgslsmith_f_op_f32(var_1.d - global0[_wgslsmith_index_u32(u_input.a.x, 2u)]), ~15215i), -41986i >= (global1.b.x ^ var_3.b.x)));
    var var_5 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(var_4.a))), -reverseBits(_wgslsmith_sub_vec2_i32(var_4.c.wz, var_1.b)) | vec2<i32>(var_1.b.x, -(~(-36023i))), var_0.c, _wgslsmith_f_op_f32(-global1.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(0u, 2u)], global1.d, -347f, -1354f) * vec4<f32>(286f, global1.d, -576f, global0[_wgslsmith_index_u32(u_input.a.x, 2u)]))))));
}

