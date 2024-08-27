struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: f32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: bool,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec4<f32>,
    d: vec3<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 1> = array<bool, 1>(true);

var<private> global1: f32 = 1068f;

var<private> global2: array<Struct_4, 5> = array<Struct_4, 5>(Struct_4(vec3<u32>(4294967295u, 0u, 1u), true, Struct_2(vec3<u32>(1183u, 35703u, 5564u), vec2<i32>(-1i, -1i), vec2<f32>(212f, -1023f), Struct_1(vec2<i32>(-22133i, 2147483647i)))), Struct_4(vec3<u32>(0u, 4294967295u, 1u), true, Struct_2(vec3<u32>(1097u, 0u, 62036u), vec2<i32>(0i, -15573i), vec2<f32>(717f, -311f), Struct_1(vec2<i32>(-58701i, 2147483647i)))), Struct_4(vec3<u32>(43981u, 21730u, 4294967295u), true, Struct_2(vec3<u32>(1u, 4294967295u, 4294967295u), vec2<i32>(38168i, -1i), vec2<f32>(293f, -2782f), Struct_1(vec2<i32>(-9115i, 0i)))), Struct_4(vec3<u32>(16138u, 39443u, 69397u), false, Struct_2(vec3<u32>(94924u, 4294967295u, 0u), vec2<i32>(1i, 0i), vec2<f32>(919f, 165f), Struct_1(vec2<i32>(1i, 29441i)))), Struct_4(vec3<u32>(5039u, 0u, 6540u), true, Struct_2(vec3<u32>(41749u, 14430u, 0u), vec2<i32>(-1i, -24694i), vec2<f32>(251f, -2151f), Struct_1(vec2<i32>(i32(-2147483648), -11396i)))));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<bool>, arg_1: f32, arg_2: vec4<bool>) -> i32 {
    global2 = array<Struct_4, 5>();
    var var_0 = !(!vec3<bool>(arg_0.x, true, _wgslsmith_f_op_f32(arg_1 * arg_1) != arg_1));
    let var_1 = Struct_1(_wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(max(vec2<i32>(u_input.a, 1i), vec2<i32>(-2147483647i, -54185i)) << (~vec2<u32>(19774u, 0u) % vec2<u32>(32u)), -firstLeadingBit(vec2<i32>(u_input.a, u_input.a))), ~_wgslsmith_mult_vec2_i32(min(vec2<i32>(2147483647i, u_input.a), vec2<i32>(u_input.a, -6734i)), abs(vec2<i32>(0i, -2147483647i))), vec2<i32>(-_wgslsmith_clamp_i32(u_input.a, u_input.a, 72606i), u_input.a)));
    let var_2 = vec3<bool>(all(arg_2) | global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(~4294967295u, min(26146u, 1u)), 1u)], true != arg_0.x, var_0.x);
    let var_3 = vec4<u32>(_wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(30759u, 4294967295u, 19933u, 51330u), select(vec4<u32>(92294u, 1u, 14376u, 0u), vec4<u32>(1u, 23u, 97634u, 21489u), arg_2)), firstLeadingBit(~_wgslsmith_div_vec4_u32(vec4<u32>(7889u, 4294967295u, 13367u, 18514u), vec4<u32>(8597u, 1040u, 68704u, 33049u)))), firstLeadingBit(89699u), 28633u, 1u);
    return max(_wgslsmith_dot_vec2_i32(var_1.a ^ min(vec2<i32>(-2147483647i, u_input.a) & var_1.a, firstTrailingBit(var_1.a)), _wgslsmith_mult_vec2_i32(vec2<i32>(0i, u_input.a >> (var_3.x % 32u)), vec2<i32>(countOneBits(-43969i), -2147483647i))), ~(~(~(-86047i) & reverseBits(u_input.a))));
}

fn func_4(arg_0: Struct_4, arg_1: i32, arg_2: bool, arg_3: Struct_4) -> f32 {
    global2 = array<Struct_4, 5>();
    return -149f;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<f32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1.x, 1000f, _wgslsmith_f_op_f32(func_4(Struct_4(vec3<u32>(47288u, 4294967295u, 8146u), true, Struct_2(vec3<u32>(1u, 6029u, 0u), arg_0, arg_1, Struct_1(vec2<i32>(arg_0.x, 33591i)))), func_3(vec3<bool>(false, false, false), arg_1.x, vec4<bool>(global0[_wgslsmith_index_u32(39480u, 1u)], false, global0[_wgslsmith_index_u32(50093u, 1u)], global0[_wgslsmith_index_u32(4294967295u, 1u)])), all(vec3<bool>(true, true, global0[_wgslsmith_index_u32(27234u, 1u)])), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(40833u, 0u), 5u)]))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-570f + var_0.x), _wgslsmith_div_f32(arg_1.x, arg_1.x), var_0.x, var_0.x) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, 722f, arg_1.x, 1758f) * vec4<f32>(2000f, 1154f, var_0.x, 509f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(2793f, -668f, arg_1.x, -287f) + vec4<f32>(-768f, arg_1.x, 1556f, -1000f))))))));
    global1 = _wgslsmith_f_op_f32(floor(var_1.x));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-993f * var_0.x) * _wgslsmith_f_op_f32(min(var_1.x, -1670f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-503f, 1000f)))), -2381f) + 852f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-124f, _wgslsmith_f_op_f32(abs(-2412f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(799f, var_0.x, global0[_wgslsmith_index_u32(1u, 1u)])), _wgslsmith_f_op_f32(-1000f + -1194f)))))));
    let var_2 = Struct_2(vec3<u32>(15505u, ~34983u, ~countOneBits(~115764u)), select(arg_0, arg_0, global0[_wgslsmith_index_u32(0u, 1u)]), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(var_1.yx)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.yy), _wgslsmith_f_op_vec2_f32(var_1.wx - vec2<f32>(-979f, var_0.x))))), Struct_1(_wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(arg_0, vec2<i32>(u_input.a, -2147483647i), _wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, arg_0.x), vec2<i32>(2184i, u_input.a), arg_0)), max(vec2<i32>(0i, arg_0.x), vec2<i32>(arg_0.x, arg_0.x)) >> (~vec2<u32>(18u, 1u) % vec2<u32>(32u)))));
    return Struct_2(abs(var_2.a), ~var_2.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-var_2.c.x))))), var_2.d);
}

fn func_5(arg_0: Struct_2) -> bool {
    global0 = array<bool, 1>();
    let var_0 = 712f;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(func_2(_wgslsmith_add_vec2_i32(arg_0.d.a, arg_0.b), _wgslsmith_f_op_vec2_f32(min(arg_0.c, vec2<f32>(arg_0.c.x, arg_0.c.x)))).c.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(arg_0.c.x))))), _wgslsmith_f_op_f32(f32(-1f) * -390f)));
    global1 = arg_0.c.x;
    global2 = array<Struct_4, 5>();
    return true;
}

fn func_1() -> Struct_4 {
    let var_0 = ~reverseBits(select(1u, 1u, func_5(func_2(vec2<i32>(-48100i, -39869i), vec2<f32>(1001f, 1479f)))));
    global2 = array<Struct_4, 5>();
    let var_1 = Struct_4(~_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0, 77u, 56414u), vec3<u32>(var_0, var_0, 1u)) ^ (vec3<u32>(var_0, 4294967295u, var_0) | vec3<u32>(var_0, 55228u, var_0)), _wgslsmith_mod_vec3_u32(vec3<u32>(var_0, 40194u, 0u), vec3<u32>(66433u, 50687u, var_0)) ^ abs(vec3<u32>(1u, var_0, 1u))), any(vec4<bool>(true, global0[_wgslsmith_index_u32(var_0, 1u)] && false, global0[_wgslsmith_index_u32(max(var_0, _wgslsmith_sub_u32(var_0, 65423u)), 1u)], false)), Struct_2(vec3<u32>(_wgslsmith_mult_u32(firstLeadingBit(var_0), var_0), var_0, var_0), -(vec2<i32>(u_input.a, -1i) ^ vec2<i32>(u_input.a, u_input.a)), func_2(vec2<i32>(u_input.a, 0i) | vec2<i32>(1i, -1i), vec2<f32>(_wgslsmith_f_op_f32(124f - 2102f), _wgslsmith_f_op_f32(255f - 887f))).c, func_2(~(~vec2<i32>(-20949i, u_input.a)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -611f), _wgslsmith_f_op_f32(-1962f - 293f))).d));
    let var_2 = var_1.c.c.x;
    var var_3 = var_2;
    return Struct_4(reverseBits(abs(vec3<u32>(var_0, var_1.c.a.x, 0u)) & _wgslsmith_sub_vec3_u32(var_1.a, vec3<u32>(54654u, var_1.c.a.x, var_1.c.a.x))), select(_wgslsmith_f_op_f32(1000f - var_2) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-662f)), -1131f), var_1.b, !global0[_wgslsmith_index_u32(abs(4294967295u), 1u)]), var_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(func_2(reverseBits(var_0.c.d.a), func_2(vec2<i32>(u_input.a, -2147483647i), _wgslsmith_div_vec2_f32(var_0.c.c, var_0.c.c)).c).c.x)) * _wgslsmith_f_op_f32(select(-1585f, 1f, all(select(select(vec4<bool>(global0[_wgslsmith_index_u32(var_0.c.a.x, 1u)], global0[_wgslsmith_index_u32(0u, 1u)], true, global0[_wgslsmith_index_u32(87759u, 1u)]), vec4<bool>(var_0.b, global0[_wgslsmith_index_u32(var_0.c.a.x, 1u)], global0[_wgslsmith_index_u32(0u, 1u)], false), true), vec4<bool>(global0[_wgslsmith_index_u32(31162u, 1u)], false, false, global0[_wgslsmith_index_u32(4294967295u, 1u)]), true)))));
    var_0 = Struct_4(vec3<u32>(var_0.c.a.x, var_0.a.x, func_1().a.x), var_0.b, func_2(-countOneBits(-vec2<i32>(2147483647i, u_input.a)), var_0.c.c));
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.c.c.x), _wgslsmith_f_op_f32(ceil(var_0.c.c.x)), var_0.b));
    let var_2 = !((select(_wgslsmith_sub_i32(u_input.a, -1i), -2147483647i >> (var_0.c.a.x % 32u), var_0.b) <= (-1i << (1u % 32u))) & false);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(min(-15620i, min(~(-5876i), 2147483647i)), -2147483647i, 1i), ~(vec3<i32>(-var_0.c.b.x, 22494i, ~var_0.c.b.x) | -vec3<i32>(var_0.c.d.a.x, -6200i, 2147483647i)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.c.c.x, var_0.c.c.x, var_0.c.c.x, var_0.c.c.x), vec4<f32>(var_0.c.c.x, var_0.c.c.x, var_0.c.c.x, -451f))))), vec4<f32>(_wgslsmith_f_op_f32(-var_0.c.c.x), 1644f, -588f, -1364f))), _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.c.d.a.x, u_input.a, u_input.a), reverseBits(vec3<i32>(1i, 1i, var_0.c.d.a.x))) ^ vec3<i32>(-49315i, ~7529i, 16927i), vec3<i32>(func_2(-vec2<i32>(-4619i, var_0.c.b.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c.c.x, -304f) * vec2<f32>(var_0.c.c.x, var_0.c.c.x))).b.x, (u_input.a << (4294967295u % 32u)) << (_wgslsmith_mult_u32(1u, var_0.a.x) % 32u), -(var_0.c.d.a.x | var_0.c.b.x))), vec4<i32>(-var_0.c.b.x, ~(-2147483647i) >> (~_wgslsmith_div_u32(61594u, var_0.c.a.x) % 32u), u_input.a, _wgslsmith_div_i32(-1i, u_input.a >> (1u % 32u))));
}

