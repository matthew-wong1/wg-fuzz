struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: i32,
    d: vec2<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 30>;

var<private> global1: array<bool, 25> = array<bool, 25>(false, true, true, false, false, false, true, true, false, true, true, false, true, false, true, false, false, false, true, true, false, false, true, false, true);

var<private> global2: vec4<f32> = vec4<f32>(437f, -2570f, -1570f, 1704f);

var<private> global3: array<vec2<bool>, 4>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_1() -> u32 {
    global3 = array<vec2<bool>, 4>();
    var var_0 = vec3<i32>(-6825i, -1i, reverseBits(0i));
    var var_1 = -480f;
    global3 = array<vec2<bool>, 4>();
    global3 = array<vec2<bool>, 4>();
    return ~u_input.c;
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<f32>) -> i32 {
    global1 = array<bool, 25>();
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-arg_1))), !vec3<bool>(select(global1[_wgslsmith_index_u32(~u_input.b.x, 25u)], any(global3[_wgslsmith_index_u32(u_input.c, 4u)]), any(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.c, 25u)], global1[_wgslsmith_index_u32(u_input.b.x, 25u)], false))), (3580u & u_input.c) > u_input.c, true), -10448i, vec2<bool>(true, min(u_input.c, firstLeadingBit(u_input.c)) <= ~(~u_input.c)), Struct_1(-29223i, vec2<f32>(global2.x, global2.x), firstTrailingBit(vec3<u32>(u_input.b.x, u_input.c, u_input.b.x)) << (min(u_input.b.xxz & vec3<u32>(9582u, 1u, u_input.b.x), max(vec3<u32>(1u, 0u, 0u), u_input.b.yyx)) % vec3<u32>(32u)), _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(arg_0.x, 33332i, -33824i, u_input.a), vec4<i32>(arg_0.x, arg_0.x, u_input.a, 0i)), countOneBits(vec4<i32>(0i, -13209i, 44460i, arg_0.x)))));
    var var_1 = (global1[_wgslsmith_index_u32(_wgslsmith_div_u32(select(_wgslsmith_dot_vec3_u32(u_input.b.xww, var_0.e.c), _wgslsmith_add_u32(0u, u_input.b.x), true), var_0.e.c.x), 25u)] | false) | true;
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(global2.ywz)))), !vec3<bool>(true, true, all(!vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 25u)], global1[_wgslsmith_index_u32(72541u, 25u)], false))), u_input.a, vec2<bool>(global1[_wgslsmith_index_u32(1u, 25u)], !(!(!global1[_wgslsmith_index_u32(4294967295u, 25u)]))), var_0.e);
    var_1 = select(!all(select(vec3<bool>(var_2.d.x, global1[_wgslsmith_index_u32(28395u, 25u)], false), var_2.b, false)) || (-292f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x))), true, false);
    return -_wgslsmith_sub_i32(var_0.c, u_input.a) << (var_0.e.c.x % 32u);
}

fn func_2() -> Struct_2 {
    global1 = array<bool, 25>();
    global1 = array<bool, 25>();
    var var_0 = min(~(~(~35927u) << (0u % 32u)), u_input.b.x);
    global0 = array<vec4<f32>, 30>();
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2.ywy + vec3<f32>(_wgslsmith_f_op_f32(max(-585f, 824f)), _wgslsmith_f_op_f32(min(1000f, global2.x)), global2.x))), vec3<bool>(global1[_wgslsmith_index_u32(59451u, 25u)], true, all(select(vec4<bool>(true, false, global1[_wgslsmith_index_u32(u_input.c, 25u)], false), select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 25u)], global1[_wgslsmith_index_u32(25970u, 25u)], global1[_wgslsmith_index_u32(u_input.b.x, 25u)], global1[_wgslsmith_index_u32(u_input.b.x, 25u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(1u, 25u)], global1[_wgslsmith_index_u32(1u, 25u)], global1[_wgslsmith_index_u32(u_input.b.x, 25u)]), vec4<bool>(true, false, global1[_wgslsmith_index_u32(0u, 25u)], false)), !vec4<bool>(true, global1[_wgslsmith_index_u32(1u, 25u)], false, global1[_wgslsmith_index_u32(4294967295u, 25u)])))), func_3(-_wgslsmith_clamp_vec2_i32(-vec2<i32>(2147483647i, u_input.a), vec2<i32>(u_input.a, 51268i), -vec2<i32>(u_input.a, 0i)), _wgslsmith_f_op_vec3_f32(-global2.zxw)), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(firstLeadingBit(firstTrailingBit(u_input.b.yy)), vec2<u32>(~u_input.b.x, 37546u) >> (max(firstLeadingBit(vec2<u32>(u_input.c, 4294967295u)), u_input.b.wx) % vec2<u32>(32u))), 4u)], Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(-13944i, 24265i, u_input.a, u_input.a) >> (vec4<u32>(u_input.c, 84225u, u_input.c, u_input.c) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(-30187i, 2147483647i, -2147483647i, u_input.a), -vec4<i32>(1i, u_input.a, u_input.a, u_input.a))), global2.yw, vec3<u32>(reverseBits(countOneBits(17700u)), u_input.b.x, 12062u), _wgslsmith_mult_vec4_i32(~(-vec4<i32>(1i, u_input.a, -6605i, u_input.a)), ~_wgslsmith_div_vec4_i32(vec4<i32>(0i, -9031i, u_input.a, u_input.a), vec4<i32>(-2147483647i, u_input.a, 31677i, -2147483647i)))));
    return Struct_2(var_1.a, var_1.b, var_1.c, var_1.b.xx, Struct_1(-1i, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(178f, -913f))))), u_input.b.zzy, ~firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(39339i, -979i, u_input.a, 5968i), vec4<i32>(-2884i, 31687i, var_1.e.a, 2147483647i)))));
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: Struct_2, arg_3: vec4<u32>) -> u32 {
    let var_0 = 29366u;
    let var_1 = vec2<i32>(min(~u_input.a, 19206i), func_2().c);
    global3 = array<vec2<bool>, 4>();
    var var_2 = ~(~arg_3.x ^ 0u);
    var var_3 = arg_2.e.d.zzz;
    return u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_vec4_f32(step(global0[_wgslsmith_index_u32(u_input.b.x, 30u)], _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c, u_input.c) >> ((u_input.b.x | u_input.b.x) % 32u), 30u)] + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(622f, -852f, global2.x, 1610f), _wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(u_input.c, 30u)] + vec4<f32>(global2.x, -1000f, 1727f, 1000f)), vec4<bool>(true, false, global1[_wgslsmith_index_u32(18283u, 25u)], true))))))));
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(global2.x)), 1f)) * global2.x)) - global2.x);
    global0 = array<vec4<f32>, 30>();
    global2 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(func_1(), reverseBits(func_4(1u, global1[_wgslsmith_index_u32(6078u, 25u)] || global1[_wgslsmith_index_u32(u_input.b.x, 25u)], func_2(), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, 0u, 0u, u_input.c), vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.b.x))) | (firstTrailingBit(u_input.b.x) & 1u))), 30u)];
    global0 = array<vec4<f32>, 30>();
    global1 = array<bool, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

