struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec2<bool>,
    d: bool,
    e: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
}

struct Struct_3 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<f32, 6> = array<f32, 6>(483f, 279f, -618f, 1000f, -1000f, -279f);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: vec2<u32>) -> vec4<bool> {
    let var_0 = -1041f;
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(var_0)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + var_0) + _wgslsmith_f_op_f32(-1243f - global1[_wgslsmith_index_u32(10918u, 6u)]))))));
    let var_2 = ~reverseBits(44797u);
    var var_3 = _wgslsmith_dot_vec3_u32(~u_input.b, vec3<u32>(111655u, arg_0.x, 1u));
    var var_4 = Struct_1(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_2, 6u)]), vec3<f32>(-234f, 1352f, var_1), !select(vec2<bool>(true, global1[_wgslsmith_index_u32(78677u, 6u)] >= 876f), vec2<bool>(true, true), any(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)))), all(select(vec3<bool>(u_input.c > 1u, false, true), vec3<bool>(true, true, true), vec3<bool>(true, -6053i != u_input.a.x, -467f <= var_0))), u_input.a.xxz);
    return !select(select(vec4<bool>(any(vec2<bool>(var_4.d, var_4.c.x)), !var_4.c.x, var_4.c.x, false & var_4.c.x), !vec4<bool>(var_4.d, var_4.c.x, true, var_4.d), vec4<bool>(var_4.d, true, true, true)), select(!vec4<bool>(var_4.d, var_4.c.x, var_4.c.x, false), select(select(vec4<bool>(var_4.c.x, var_4.c.x, false, var_4.c.x), vec4<bool>(true, false, var_4.c.x, var_4.c.x), vec4<bool>(var_4.d, false, true, false)), select(vec4<bool>(false, var_4.d, var_4.c.x, false), vec4<bool>(var_4.d, true, true, true), vec4<bool>(false, var_4.c.x, var_4.d, var_4.d)), vec4<bool>(var_4.d, false, var_4.c.x, false)), var_4.a < 767f), any(!var_4.c));
}

fn func_2(arg_0: vec3<u32>) -> Struct_3 {
    var var_0 = vec4<bool>(all(func_3(vec2<u32>(17152u, ~arg_0.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_0.x, 6u)] + -544f)), _wgslsmith_div_f32(-262f, _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(81u, 6u)])))) != -876f, true, false);
    return Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(35488u, 6u)], _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1108f - global1[_wgslsmith_index_u32(arg_0.x, 6u)]), -773f)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(arg_0.x, 6u)]))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-1227f, global1[_wgslsmith_index_u32(~13588u, 6u)]), _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(firstLeadingBit(arg_0.x), 6u)])), _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(arg_0.x, 6u)]))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(331f + 260f), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c, 6u)]), _wgslsmith_f_op_f32(f32(-1f) * -374f)))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<bool>, arg_2: Struct_3, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1263f);
    var var_1 = arg_1;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(~(~u_input.b.x), 6u)], 702f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)));
    var_1 = vec3<bool>(all(vec2<bool>(true, true)), ~_wgslsmith_div_u32(u_input.b.x >> (u_input.b.x % 32u), 1u) > ~(~_wgslsmith_sub_u32(33845u, u_input.b.x)), !all(vec2<bool>(true, true)));
    let var_3 = reverseBits(_wgslsmith_mult_vec4_i32(~(~max(vec4<i32>(-3657i, -6552i, -23967i, 0i), vec4<i32>(-17430i, 1i, u_input.a.x, u_input.a.x))), ~(vec4<i32>(-1i) * -u_input.a)));
    return Struct_1(-1022f, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(529f - arg_3.b.x) * _wgslsmith_f_op_f32(step(var_2, global1[_wgslsmith_index_u32(0u, 6u)]))), _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(arg_0, vec3<f32>(1045f, 1378f, 570f))))))), !arg_3.c, false, vec3<i32>(1i, firstTrailingBit(-1i) >> (0u % 32u), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(max(vec3<i32>(arg_3.e.x, arg_3.e.x, 2147483647i), var_3.xyw), vec3<i32>(u_input.a.x, -1i, u_input.a.x)), firstLeadingBit(~vec3<i32>(-2991i, arg_3.e.x, u_input.a.x)))));
}

fn func_5(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: Struct_4, arg_3: vec3<u32>) -> i32 {
    var var_0 = false;
    let var_1 = ~_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_2.b, 15929u), arg_3.xx | arg_3.yy), _wgslsmith_dot_vec2_u32(vec2<u32>(39435u, 0u) >> (vec2<u32>(u_input.b.x, 4294967295u) % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(vec2<u32>(88635u, u_input.b.x), vec2<u32>(arg_2.b, arg_0.b))), 10386u, firstTrailingBit(_wgslsmith_add_u32(20155u, 41038u))), ~vec4<u32>(arg_2.b, arg_3.x, _wgslsmith_mod_u32(arg_0.b, arg_3.x), 36662u));
    var var_2 = firstTrailingBit(arg_1.x);
    var var_3 = arg_0.a;
    var_2 = reverseBits(0i);
    return u_input.a.x;
}

fn func_1(arg_0: u32, arg_1: vec4<f32>) -> i32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~35696u, u_input.c), 6u)] + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1803u, 6u)])))), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(0u, 6u)], _wgslsmith_f_op_f32(-arg_1.x)));
    var var_1 = all(vec2<bool>(!(!any(vec2<bool>(true, true))), false));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -931f))));
    return ~func_5(Struct_4(func_4(vec3<f32>(global1[_wgslsmith_index_u32(u_input.c, 6u)], global1[_wgslsmith_index_u32(11119u, 6u)], var_0.x), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false), func_2(u_input.b), Struct_1(1387f, vec3<f32>(global1[_wgslsmith_index_u32(0u, 6u)], -954f, arg_1.x), vec2<bool>(false, true), false, vec3<i32>(u_input.a.x, u_input.a.x, 19393i))), firstTrailingBit(30721u << (arg_0 % 32u)), reverseBits(~u_input.a.x), _wgslsmith_f_op_f32(-2198f + 138f) >= _wgslsmith_f_op_f32(-var_2)), vec3<i32>(0i, min(countOneBits(-27287i), u_input.a.x ^ u_input.a.x), u_input.a.x), Struct_4(func_4(_wgslsmith_f_op_vec3_f32(trunc(arg_1.xxz)), func_3(vec2<u32>(4294967295u, 4294967295u)).xwy, func_2(u_input.b), Struct_1(global1[_wgslsmith_index_u32(14780u, 6u)], arg_1.xzz, vec2<bool>(true, true), false, vec3<i32>(u_input.a.x, u_input.a.x, -1i))), u_input.b.x, 1i, any(vec4<bool>(true, true, true, true))), min(select(u_input.b, firstTrailingBit(vec3<u32>(28451u, arg_0, 17150u)), vec3<bool>(true, true, true)), u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, u_input.c) | u_input.c, 6u)]) + _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(7501u, u_input.b.x), countOneBits(vec2<u32>(u_input.b.x, u_input.b.x))), 6u)]))));
    var var_0 = func_1(u_input.c, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(-880f, global1[_wgslsmith_index_u32(30412u, 6u)], true)), -772f, global1[_wgslsmith_index_u32(~u_input.c, 6u)], 384f) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(78963u, 6u)], global1[_wgslsmith_index_u32(35608u, 6u)], global1[_wgslsmith_index_u32(u_input.b.x, 6u)], global1[_wgslsmith_index_u32(u_input.c, 6u)]), vec4<f32>(1162f, global1[_wgslsmith_index_u32(4294967295u, 6u)], global1[_wgslsmith_index_u32(u_input.c, 6u)], global1[_wgslsmith_index_u32(u_input.b.x, 6u)])))))) | u_input.a.x;
    var var_1 = !(!(!select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true), true)));
    var_0 = u_input.a.x & _wgslsmith_mod_i32(1i, 32742i);
    let var_2 = _wgslsmith_div_vec2_i32(-max(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(2147483647i, 17989i)) | min(min(vec2<i32>(u_input.a.x, 0i), u_input.a.ww), vec2<i32>(u_input.a.x, u_input.a.x) & reverseBits(vec2<i32>(u_input.a.x, u_input.a.x))), vec2<i32>(-1i, u_input.a.x | u_input.a.x));
    var var_3 = global1[_wgslsmith_index_u32(u_input.b.x, 6u)];
    let var_4 = func_2(~vec3<u32>(59615u, u_input.c, firstTrailingBit(17473u)) & ~vec3<u32>(~21180u, _wgslsmith_div_u32(u_input.b.x, u_input.b.x), _wgslsmith_dot_vec2_u32(u_input.b.xz, vec2<u32>(u_input.c, u_input.c))));
    var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(520f - _wgslsmith_f_op_f32(trunc(1259f)))), _wgslsmith_f_op_f32(-1f))));
    global0 = -659f;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec3<u32>(u_input.c >> (~146u % 32u), ~firstLeadingBit(4294967295u), _wgslsmith_mult_u32(u_input.b.x, u_input.c))));
}

