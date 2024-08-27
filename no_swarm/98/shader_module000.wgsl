struct Struct_1 {
    a: i32,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 21>;

var<private> global1: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(4937i, false, false), Struct_1(1i, false, false), Struct_1(1i, true, false), Struct_1(-36036i, true, true), Struct_1(i32(-2147483648), true, false), Struct_1(-14522i, false, true), Struct_1(49086i, false, false));

var<private> global2: u32 = 24674u;

var<private> global3: vec4<i32>;

var<private> global4: array<bool, 17>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32) -> vec3<i32> {
    var var_0 = select(select(vec3<bool>(any(vec4<bool>(global4[_wgslsmith_index_u32(u_input.a, 17u)], global4[_wgslsmith_index_u32(1u, 17u)], false, global4[_wgslsmith_index_u32(u_input.c, 17u)])) & global4[_wgslsmith_index_u32(u_input.a ^ u_input.a, 17u)], select(global4[_wgslsmith_index_u32(10677u, 17u)], select(global4[_wgslsmith_index_u32(u_input.c, 17u)], false, global4[_wgslsmith_index_u32(0u, 17u)]), false), true), !(!select(vec3<bool>(false, global4[_wgslsmith_index_u32(u_input.a, 17u)], global4[_wgslsmith_index_u32(1u, 17u)]), vec3<bool>(true, false, global4[_wgslsmith_index_u32(90221u, 17u)]), vec3<bool>(global4[_wgslsmith_index_u32(4600u, 17u)], true, global4[_wgslsmith_index_u32(23810u, 17u)]))), !select(all(vec4<bool>(global4[_wgslsmith_index_u32(4294967295u, 17u)], global4[_wgslsmith_index_u32(4294967295u, 17u)], true, global4[_wgslsmith_index_u32(u_input.c, 17u)])), true, select(global4[_wgslsmith_index_u32(u_input.c, 17u)], global4[_wgslsmith_index_u32(46212u, 17u)], global4[_wgslsmith_index_u32(u_input.a, 17u)]))), !(!vec3<bool>(any(vec4<bool>(global4[_wgslsmith_index_u32(u_input.c, 17u)], true, false, global4[_wgslsmith_index_u32(1u, 17u)])), any(vec4<bool>(true, global4[_wgslsmith_index_u32(u_input.a, 17u)], true, global4[_wgslsmith_index_u32(u_input.c, 17u)])), select(global4[_wgslsmith_index_u32(37165u, 17u)], false, global4[_wgslsmith_index_u32(u_input.c, 17u)]))), !select(!select(vec3<bool>(false, global4[_wgslsmith_index_u32(67790u, 17u)], global4[_wgslsmith_index_u32(0u, 17u)]), vec3<bool>(true, global4[_wgslsmith_index_u32(64129u, 17u)], true), vec3<bool>(global4[_wgslsmith_index_u32(u_input.a, 17u)], false, true)), select(!vec3<bool>(false, true, global4[_wgslsmith_index_u32(u_input.a, 17u)]), vec3<bool>(false, true, false), select(global4[_wgslsmith_index_u32(u_input.c, 17u)], global4[_wgslsmith_index_u32(u_input.c, 17u)], false)), global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.a), vec3<u32>(u_input.c, u_input.c, u_input.a)), 17u)] == true));
    global3 = max(_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_add_i32(global3.x, global3.x), -20977i, -2147483647i, u_input.b) | ~(~vec4<i32>(global3.x, global3.x, -39954i, u_input.b)), firstLeadingBit(max(~vec4<i32>(global3.x, global3.x, u_input.b, u_input.b), _wgslsmith_div_vec4_i32(vec4<i32>(1i, -21449i, 0i, u_input.b), vec4<i32>(-1i, u_input.b, 0i, 1170i))))), ~(vec4<i32>(2147483647i, -global3.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-67055i, global3.x, -27297i, u_input.b), vec4<i32>(global3.x, 0i, u_input.b, 41864i)), -u_input.b) ^ _wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.b, global3.x, u_input.b, global3.x), ~vec4<i32>(u_input.b, 1i, -9595i, global3.x))));
    global1 = array<Struct_1, 7>();
    var var_1 = var_0.x;
    var var_2 = global3.wxw;
    return _wgslsmith_mod_vec3_i32(min(vec3<i32>(var_2.x, _wgslsmith_clamp_i32(i32(-1i) * -25642i, -global3.x, u_input.b << (u_input.a % 32u)), 0i), -global3.xzz), _wgslsmith_mod_vec3_i32(vec3<i32>(var_2.x, -2147483647i, global3.x), select(-_wgslsmith_div_vec3_i32(vec3<i32>(-36086i, -28987i, var_2.x), vec3<i32>(-13438i, u_input.b, 16385i)), global3.yzy, global4[_wgslsmith_index_u32(24854u << (u_input.a % 32u), 17u)])));
}

fn func_2(arg_0: Struct_1) -> vec2<u32> {
    let var_0 = global3.ywy & func_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1961f, -1007f)));
    global0 = array<f32, 21>();
    var var_1 = vec4<i32>(-2147483647i >> ((~u_input.c | _wgslsmith_sub_u32(~4294967295u, 0u)) % 32u), _wgslsmith_div_i32(func_3(236f).x & 46190i, 32769i), arg_0.a, -9983i);
    let var_2 = -1317f;
    global2 = u_input.a;
    return ~vec2<u32>(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(u_input.a, u_input.a)), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.c, 4294967295u), vec2<u32>(0u, 0u))), ~(~u_input.a)) ^ ~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, 4294967295u), vec2<u32>(u_input.a, 4294967295u), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, u_input.c), vec2<u32>(1u, 25872u))));
}

fn func_1(arg_0: vec4<i32>) -> Struct_1 {
    var var_0 = Struct_1(2147483647i, global4[_wgslsmith_index_u32(~32244u | _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(37935u, 4294967295u), vec2<u32>(u_input.a, u_input.c)), func_2(global1[_wgslsmith_index_u32(76110u, 7u)])), _wgslsmith_div_u32(8250u, 33183u)), 17u)], true);
    global0 = array<f32, 21>();
    global4 = array<bool, 17>();
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1582f, global0[_wgslsmith_index_u32(u_input.a, 21u)]) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(1u, 21u)], global0[_wgslsmith_index_u32(u_input.a, 21u)]))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(2147f, global0[_wgslsmith_index_u32(u_input.a, 21u)]), vec2<f32>(global0[_wgslsmith_index_u32(u_input.c, 21u)], 1085f), var_0.c))))) * vec2<f32>(-843f, _wgslsmith_f_op_f32(-674f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-3287f + -661f)))));
    var var_2 = _wgslsmith_mult_i32(i32(-1i) * -(~1i), 1i & _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(global3.zww, global3.xxy), -1i, ~global3.x), global3.yxz));
    return global1[_wgslsmith_index_u32(u_input.c, 7u)];
}

fn func_4(arg_0: u32, arg_1: vec2<i32>, arg_2: Struct_1) -> vec4<i32> {
    global1 = array<Struct_1, 7>();
    global4 = array<bool, 17>();
    let var_0 = -(u_input.b ^ (0i & arg_2.a));
    let var_1 = _wgslsmith_mult_i32(-2147483647i, reverseBits(abs(u_input.b)));
    var var_2 = vec4<bool>(false, select(any(vec3<bool>(false, true, global4[_wgslsmith_index_u32(u_input.c, 17u)])), arg_2.a >= ~(-25590i), !(!arg_2.b)), true, true);
    return ~(-abs(vec4<i32>(~arg_1.x, reverseBits(var_0), -u_input.b, ~(-2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = firstLeadingBit(max(-func_4(_wgslsmith_mod_u32(0u, 4294967295u), vec2<i32>(global3.x, 32218i), func_1(vec4<i32>(77047i, 5872i, 1i, global3.x))), vec4<i32>(i32(-1i) * -8976i, 1i, _wgslsmith_dot_vec3_i32(max(vec3<i32>(0i, u_input.b, 2147483647i), global3.xwx), ~vec3<i32>(-1i, -19845i, global3.x)), _wgslsmith_mult_i32(0i, 48382i))));
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-2139f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 21u)] - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(27445u, 21u)] * -1695f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1093f * global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.a), vec2<u32>(74925u, 4294967295u)), 21u)])))));
    global3 = _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, -51402i, _wgslsmith_div_i32(firstLeadingBit(select(-29601i, 1239i, true)), abs(_wgslsmith_div_i32(30768i, u_input.b))), func_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(var_0.x))))).x), ~_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(-1i, u_input.b, -9744i, -10265i)), -vec4<i32>(global3.x, u_input.b, -22490i, global3.x)), -vec4<i32>(u_input.b, u_input.b, 28802i, 4162i), -reverseBits(vec4<i32>(u_input.b, u_input.b, global3.x, global3.x))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec2<u32>(select(u_input.a, _wgslsmith_mult_u32(1u, 12227u), global4[_wgslsmith_index_u32(1u, 17u)]), _wgslsmith_sub_u32(~76938u, ~u_input.a))), ~u_input.a, -358f);
}

