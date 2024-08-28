struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 4>;

var<private> global1: array<u32, 27> = array<u32, 27>(0u, 72185u, 52177u, 76181u, 1u, 4294967295u, 38798u, 4294967295u, 0u, 47050u, 4637u, 10170u, 4294967295u, 0u, 92988u, 1u, 4294967295u, 11512u, 0u, 0u, 24295u, 38076u, 40056u, 1u, 4294967295u, 1u, 19342u);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: vec2<u32>) -> i32 {
    global1 = array<u32, 27>();
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-579f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, arg_0))))));
    global1 = array<u32, 27>();
    var var_1 = Struct_1(-1000f, firstLeadingBit(u_input.d) << (~(~select(vec3<u32>(19209u, u_input.b, 34855u), vec3<u32>(14579u, 40621u, arg_2.x), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 27u)], 4u)])) % vec3<u32>(32u)), -abs(_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.c, u_input.a.x), u_input.a.zz)));
    var_1 = Struct_1(-1143f, _wgslsmith_div_vec3_i32(u_input.d, -_wgslsmith_mult_vec3_i32(vec3<i32>(7117i, 2147483647i, u_input.c), var_1.b)), select(-17941i | _wgslsmith_add_i32(abs(u_input.c), -6517i), 1i, ((global0[_wgslsmith_index_u32(u_input.b, 4u)] && global0[_wgslsmith_index_u32(0u, 4u)]) || all(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 4u)], false))) && !(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(6651u, 27u)], 4u)] && global0[_wgslsmith_index_u32(1u, 4u)])));
    return _wgslsmith_add_i32(var_1.b.x, 0i);
}

fn func_2(arg_0: bool) -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(min(-310f, _wgslsmith_f_op_f32(abs(-1210f)))), _wgslsmith_add_vec3_i32(-(countOneBits(vec3<i32>(-1i, u_input.d.x, u_input.a.x)) ^ vec3<i32>(u_input.a.x, 21272i, u_input.d.x)), ~vec3<i32>(func_3(-324f, 59031u, vec2<u32>(u_input.b, 0u)), u_input.c, min(-2147483647i, u_input.c))), ~(-2840i));
    global0 = array<bool, 4>();
    global0 = array<bool, 4>();
    let var_1 = Struct_1(585f, abs(-_wgslsmith_mult_vec3_i32(u_input.d, vec3<i32>(u_input.d.x, 1i, -2147483647i))) >> (_wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(global1[_wgslsmith_index_u32(0u, 27u)], 0u, 18268u)), vec3<u32>(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(52322u, u_input.b, 59755u), vec3<u32>(u_input.b, global1[_wgslsmith_index_u32(72016u, 27u)], u_input.b)), max(1u, u_input.b))) % vec3<u32>(32u)), 0i);
    global1 = array<u32, 27>();
    return arg_0;
}

fn func_4(arg_0: vec2<u32>, arg_1: bool, arg_2: Struct_1) -> u32 {
    global1 = array<u32, 27>();
    global1 = array<u32, 27>();
    var var_0 = arg_2;
    return ~(15959u >> (1u % 32u));
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = vec2<bool>(false, true);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-1061f))))), vec3<i32>(-14145i >> (~arg_0 % 32u), u_input.c, select(43226i, -2147483647i, true)), min(26456i, ~u_input.c));
    let var_2 = ~_wgslsmith_clamp_i32(74103i, _wgslsmith_add_i32(u_input.c, 1i), ~select(var_1.c, 28689i, global0[_wgslsmith_index_u32(u_input.b, 4u)])) << (max(1891u, func_4(abs(vec2<u32>(4294967295u, 1u)), select(var_0.x, true, func_2(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0, 27u)], 4u)])), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1031f), _wgslsmith_clamp_vec3_i32(var_1.b, vec3<i32>(var_1.c, -53469i, u_input.a.x), vec3<i32>(var_1.b.x, 26335i, -11580i)), i32(-1i) * -16210i))) % 32u);
    var var_3 = ~_wgslsmith_mult_vec2_u32(vec2<u32>(~arg_0, 4294967295u) ^ vec2<u32>(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(1585u, 0u), vec2<u32>(arg_0, 1u))), _wgslsmith_add_vec2_u32(select(~vec2<u32>(arg_0, u_input.b), abs(vec2<u32>(u_input.b, u_input.b)), vec2<bool>(true, true)), vec2<u32>(abs(0u), 21899u)));
    global1 = array<u32, 27>();
    return Struct_1(-999f, var_1.b, _wgslsmith_add_i32(countOneBits(1i), _wgslsmith_clamp_i32(abs(~(-2127i)), -9779i, u_input.a.x)));
}

fn func_5(arg_0: Struct_1) -> f32 {
    global1 = array<u32, 27>();
    global1 = array<u32, 27>();
    global1 = array<u32, 27>();
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(func_1(25931u))))), _wgslsmith_add_vec3_i32(firstLeadingBit(firstTrailingBit(_wgslsmith_div_vec3_i32(u_input.a, u_input.d))), countOneBits(-vec3<i32>(u_input.d.x, u_input.a.x, -2147483647i))), u_input.a.x);
    var var_1 = func_1(~(~u_input.b));
    var var_2 = select(vec3<u32>(74026u, _wgslsmith_sub_u32(0u & u_input.b, ~global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, global1[_wgslsmith_index_u32(u_input.b, 27u)], global1[_wgslsmith_index_u32(6883u, 27u)]), 27u)]), firstLeadingBit(u_input.b)), ~(~vec3<u32>(20005u, 18521u, global1[_wgslsmith_index_u32(u_input.b, 27u)]) & countOneBits(vec3<u32>(25065u, 45518u, 7893u) ^ vec3<u32>(0u, global1[_wgslsmith_index_u32(u_input.b, 27u)], 6295u))), all(vec2<bool>(any(select(vec2<bool>(false, global0[_wgslsmith_index_u32(35960u, 4u)]), vec2<bool>(true, false), vec2<bool>(global0[_wgslsmith_index_u32(1u, 4u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 27u)], 4u)]))), !global0[_wgslsmith_index_u32(~u_input.b, 4u)])));
    global1 = array<u32, 27>();
    var_1 = func_1(~1u >> (reverseBits(u_input.b) % 32u));
    let var_3 = var_0.c;
    let var_4 = Struct_1(var_1.a, firstLeadingBit(vec3<i32>(firstLeadingBit(u_input.c), ~(~30093i), u_input.d.x)), u_input.d.x);
    var_1 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, _wgslsmith_f_op_f32(-var_0.a))) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-1379f * var_4.a), _wgslsmith_f_op_f32(trunc(var_4.a))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_4.a, -627f), vec2<f32>(-240f, -954f), global0[_wgslsmith_index_u32(104538u, 4u)]))))))), ~56743u, 0i, min(vec4<u32>(_wgslsmith_div_u32(30649u, u_input.b), _wgslsmith_sub_u32(4294967295u, global1[_wgslsmith_index_u32(1u, 27u)]), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b, 0u), vec3<u32>(var_2.x, 1u, var_2.x)), _wgslsmith_mult_u32(5995u, u_input.b)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(21856u, 4253u, 0u, var_2.x), select(vec4<u32>(7459u, 4294967295u, 59634u, global1[_wgslsmith_index_u32(u_input.b, 27u)]), vec4<u32>(1u, 33413u, global1[_wgslsmith_index_u32(u_input.b, 27u)], global1[_wgslsmith_index_u32(35359u, 27u)]), vec4<bool>(global0[_wgslsmith_index_u32(39983u, 4u)], false, true, true)), vec4<u32>(0u, global1[_wgslsmith_index_u32(u_input.b, 27u)], 1u, var_2.x))) | vec4<u32>(global1[_wgslsmith_index_u32(u_input.b, 27u)], global1[_wgslsmith_index_u32((var_2.x >> (39043u % 32u)) & _wgslsmith_mod_u32(u_input.b, var_2.x), 27u)], global1[_wgslsmith_index_u32(abs(2932u), 27u)], max(~u_input.b, 36240u)), countOneBits(~select(vec3<u32>(u_input.b, 0u, global1[_wgslsmith_index_u32(var_2.x, 27u)]), max(vec3<u32>(global1[_wgslsmith_index_u32(u_input.b, 27u)], var_2.x, u_input.b), vec3<u32>(u_input.b, u_input.b, global1[_wgslsmith_index_u32(var_2.x, 27u)])), !vec3<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 27u)], 4u)], false, global0[_wgslsmith_index_u32(1u, 4u)]))));
}

