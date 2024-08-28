struct Struct_1 {
    a: bool,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: f32,
    d: vec3<bool>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<vec2<bool>, 24>;

var<private> global2: array<bool, 22>;

var<private> global3: u32 = 98285u;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec3<u32>) -> bool {
    let var_0 = 788f;
    let var_1 = -436f;
    let var_2 = Struct_1(true, 16806i, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -428f), _wgslsmith_f_op_f32(round(var_0)))) + _wgslsmith_f_op_f32(ceil(var_1))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_1, _wgslsmith_f_op_f32(-419f * var_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1155f)))))));
    global3 = ~(~firstLeadingBit(global0.x));
    let var_3 = Struct_1(!var_2.a, -(-21976i >> ((~arg_1.x | _wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, arg_1.x, u_input.a), vec3<u32>(56476u, 1u, u_input.a))) % 32u)), _wgslsmith_div_f32(var_2.c, var_1));
    return true;
}

fn func_4(arg_0: bool, arg_1: vec3<bool>, arg_2: vec2<bool>) -> bool {
    global3 = global0.x & max(u_input.a, 60461u);
    global1 = array<vec2<bool>, 24>();
    let var_0 = -(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, _wgslsmith_div_i32(1i, -34098i), -54346i), vec3<i32>(1i, 1i, 1i)) ^ 2669i);
    let var_1 = false && (any(select(!arg_2, select(vec2<bool>(arg_0, arg_1.x), vec2<bool>(false, arg_2.x), arg_1.zy), arg_2)) && (((arg_2.x & false) & arg_1.x) | (false & arg_0)));
    let var_2 = Struct_2(true, Struct_1(select(any(!arg_2), global2[_wgslsmith_index_u32(abs(u_input.a) << (global0.x % 32u), 22u)], false), ~(-countOneBits(var_0)), 1196f), 587f, arg_1, vec4<u32>(firstTrailingBit(u_input.a), _wgslsmith_div_u32(u_input.a, global0.x), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(3677u, u_input.a), _wgslsmith_sub_u32(~u_input.a, 151u), ~firstTrailingBit(1u)), ~(~4294967295u)));
    return var_2.a;
}

fn func_2(arg_0: vec4<f32>) -> vec2<u32> {
    var var_0 = Struct_2(!global2[_wgslsmith_index_u32(~global0.x, 22u)], Struct_1(true, i32(-1i) * -_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 10194i, -24980i), vec3<i32>(-1i, 1i, 28184i)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -364f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1548f + _wgslsmith_f_op_f32(-1000f * 187f))) - _wgslsmith_f_op_f32(456f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(floor(arg_0.x))))), select(select(select(!vec3<bool>(global2[_wgslsmith_index_u32(0u, 22u)], true, global2[_wgslsmith_index_u32(global0.x, 22u)]), !vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.a, 22u)], global2[_wgslsmith_index_u32(u_input.a, 22u)]), true), vec3<bool>(false, global2[_wgslsmith_index_u32(91440u, 22u)] | false, all(vec3<bool>(global2[_wgslsmith_index_u32(global0.x, 22u)], false, global2[_wgslsmith_index_u32(global0.x, 22u)]))), select(!vec3<bool>(global2[_wgslsmith_index_u32(22474u, 22u)], false, false), !vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 22u)], true, false), !vec3<bool>(global2[_wgslsmith_index_u32(0u, 22u)], global2[_wgslsmith_index_u32(14698u, 22u)], true))), vec3<bool>(true, global2[_wgslsmith_index_u32(~4294967295u, 22u)], all(vec4<bool>(true, true, global2[_wgslsmith_index_u32(u_input.a, 22u)], global2[_wgslsmith_index_u32(1u, 22u)]))), func_4(any(!vec3<bool>(global2[_wgslsmith_index_u32(58889u, 22u)], false, true)), vec3<bool>(false, func_3(vec4<i32>(23608i, -1i, 0i, 52593i), vec3<u32>(4294967295u, 67283u, 1u)), true || global2[_wgslsmith_index_u32(13805u, 22u)]), global1[_wgslsmith_index_u32(u_input.a, 24u)])), ~countOneBits(reverseBits(~vec4<u32>(u_input.a, 35614u, 1u, 22222u))));
    var var_1 = arg_0.ww;
    var_0 = Struct_2(false, Struct_1(true, var_0.b.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))), -1742f, var_0.d, ~_wgslsmith_mod_vec4_u32(~firstLeadingBit(var_0.e), ~reverseBits(vec4<u32>(var_0.e.x, var_0.e.x, global0.x, global0.x))));
    var var_2 = var_0.b;
    var var_3 = select(select(select(vec2<bool>(var_2.b >= 2147483647i, var_0.a), !global1[_wgslsmith_index_u32(29110u, 24u)], !var_0.a), vec2<bool>(!(!global2[_wgslsmith_index_u32(var_0.e.x, 22u)]), !any(var_0.d.zz)), !(!(!vec2<bool>(global2[_wgslsmith_index_u32(39717u, 22u)], var_0.b.a)))), global1[_wgslsmith_index_u32(global0.x, 24u)], func_4(!any(!var_0.d), select(var_0.d, vec3<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 22u)] | var_2.a, !var_2.a), !select(var_0.d, var_0.d, var_0.d.x)), !var_0.d.zz));
    return vec2<u32>(4294967295u, 0u);
}

fn func_1() -> vec3<u32> {
    var var_0 = abs(vec4<i32>(1i, 1i, -1i, 1i));
    let var_1 = _wgslsmith_clamp_vec2_u32(~vec2<u32>(0u, select(global0.x, u_input.a, global2[_wgslsmith_index_u32(0u, 22u)] & global2[_wgslsmith_index_u32(u_input.a, 22u)])), ~_wgslsmith_mult_vec2_u32(~(vec2<u32>(1u, 60585u) | vec2<u32>(11865u, u_input.a)), func_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(113f, 744f, -623f, 1000f), vec4<f32>(744f, 1452f, 1384f, -1000f), vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 22u)], false, false, global2[_wgslsmith_index_u32(u_input.a, 22u)]))))), _wgslsmith_div_vec2_u32(~(~vec2<u32>(u_input.a, 0u)), ~_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.a, 1u), vec2<u32>(0u, 60646u))));
    var var_2 = var_0.x;
    global2 = array<bool, 22>();
    global0 = vec2<u32>(7338u, func_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-655f, 930f, -141f, 1179f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1077f, 882f, 665f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-816f, 498f, 277f, 473f), vec4<f32>(390f, -2145f, -213f, 1000f)))))).x);
    return _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(~countOneBits(vec3<u32>(13368u, 1u, 23252u)), vec3<u32>(global0.x << (4294967295u % 32u), global0.x, global0.x)) ^ ~(~(~vec3<u32>(global0.x, 101472u, u_input.a))), vec3<u32>(max(~(~var_1.x), _wgslsmith_div_u32(global0.x, global0.x)), 0u, 57467u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(1495f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(827f)))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(135f, -409f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1599f, -357f)))));
    var var_1 = Struct_1(!global2[_wgslsmith_index_u32(global0.x, 22u)], ~2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)));
    let var_2 = global2[_wgslsmith_index_u32(u_input.a, 22u)];
    let var_3 = select(!(true && !any(vec3<bool>(true, true, true))), ~82671u <= global0.x, !global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 39170u), ~vec3<u32>(global0.x, global0.x, u_input.a)), 1u), 22u)]);
    var var_4 = 4294967295u;
    let var_5 = var_1.b;
    global0 = ~(~vec2<u32>(min(426u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, global0.x, 1u), vec4<u32>(global0.x, global0.x, 49777u, u_input.a))), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, 0u, u_input.a), func_1())));
    let var_6 = Struct_2(true, Struct_1(-min(30790i, -37729i) <= var_1.b, ~_wgslsmith_div_i32(-2147483647i, var_1.b), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1458f, _wgslsmith_f_op_f32(f32(-1f) * -121f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1434f - var_1.c))), !(!select(select(vec3<bool>(false, true, false), vec3<bool>(var_3, false, true), true), select(vec3<bool>(false, true, true), vec3<bool>(true, var_3, var_1.a), vec3<bool>(var_1.a, true, true)), select(vec3<bool>(global2[_wgslsmith_index_u32(856u, 22u)], var_1.a, true), vec3<bool>(var_3, var_3, false), var_3))), vec4<u32>(31287u, u_input.a, 1u, u_input.a));
    let var_7 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_6.c), 1892f, _wgslsmith_f_op_f32(-var_6.b.c), 107f), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_6.b.c, var_6.b.c, var_6.c, -107f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -282f, 1854f, var_0))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-738f, var_6.c, var_6.b.c, var_1.c)), !vec4<bool>(var_6.a, var_6.d.x, global2[_wgslsmith_index_u32(0u, 22u)], true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0, -1427f, var_1.c, var_6.b.c), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.c, var_6.b.c, var_0, -1000f), vec4<f32>(var_0, 2701f, 1228f, -1000f), vec4<bool>(var_3, var_3, var_3, var_1.a))), all(vec4<bool>(true, var_3, var_6.b.a, global2[_wgslsmith_index_u32(var_6.e.x, 22u)]))))))), !(!var_1.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(29322u, 46126u), _wgslsmith_dot_vec3_i32(-select(vec3<i32>(var_6.b.b, var_6.b.b, 3827i) | vec3<i32>(-1i, -10806i, var_6.b.b), -vec3<i32>(-32909i, var_6.b.b, var_1.b), global0.x != u_input.a), -(~countOneBits(vec3<i32>(-1i, var_1.b, -2147483647i)))), _wgslsmith_f_op_f32(ceil(111f)), 0i, -107f);
}

