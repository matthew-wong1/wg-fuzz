struct Struct_1 {
    a: bool,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: u32,
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

var<private> global0: u32;

var<private> global1: array<vec4<i32>, 11> = array<vec4<i32>, 11>(vec4<i32>(-29374i, 2147483647i, -1i, -1i), vec4<i32>(i32(-2147483648), 65679i, -5298i, -16517i), vec4<i32>(-17665i, -61427i, -44282i, 1i), vec4<i32>(i32(-2147483648), 0i, 46021i, 1i), vec4<i32>(1i, 19169i, 47496i, 2147483647i), vec4<i32>(-29373i, -1i, 2147483647i, 2147483647i), vec4<i32>(78694i, 1i, 8288i, -1i), vec4<i32>(113190i, -18825i, 35797i, 0i), vec4<i32>(4073i, 0i, -1i, 1i), vec4<i32>(0i, -10840i, 3089i, 12739i), vec4<i32>(-98013i, 2147483647i, 1i, i32(-2147483648)));

var<private> global2: array<f32, 24> = array<f32, 24>(1049f, -934f, -198f, 1323f, -491f, 217f, -1183f, -198f, -1471f, 274f, -2135f, 793f, -635f, -384f, -1778f, -2494f, -930f, -409f, 558f, 1801f, 1429f, 1846f, -477f, -1543f);

var<private> global3: array<vec2<bool>, 5>;

var<private> global4: array<i32, 14>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32) -> f32 {
    global4 = array<i32, 14>();
    let var_0 = vec4<i32>(1i, _wgslsmith_dot_vec2_i32(u_input.a, _wgslsmith_sub_vec2_i32(reverseBits(u_input.a & u_input.a), select(vec2<i32>(-5248i, 0i), _wgslsmith_mult_vec2_i32(u_input.a, u_input.a), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false))))), ~_wgslsmith_clamp_i32(u_input.a.x, 27294i << (_wgslsmith_div_u32(arg_0, u_input.d) % 32u), _wgslsmith_add_i32(~13454i, global4[_wgslsmith_index_u32(u_input.d << (u_input.b % 32u), 14u)])), -41256i);
    let var_1 = Struct_1(false, -40872i, true | all(vec2<bool>(all(global3[_wgslsmith_index_u32(u_input.b, 5u)]), true)));
    var var_2 = Struct_1(any(global3[_wgslsmith_index_u32(~(~(~arg_0)), 5u)]), var_0.x, !(abs(arg_0) > (arg_0 & ~u_input.d)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~u_input.b, _wgslsmith_sub_u32(arg_0, arg_0)), 24u)])));
    return _wgslsmith_f_op_f32(f32(-1f) * -442f);
}

fn func_2(arg_0: u32) -> vec2<i32> {
    global4 = array<i32, 14>();
    let var_0 = u_input.d;
    global0 = u_input.b;
    global1 = array<vec4<i32>, 11>();
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_3(firstLeadingBit(0u))), _wgslsmith_div_f32(global2[_wgslsmith_index_u32(~22580u, 24u)], _wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(111741u, 24u)], 1900f))), global2[_wgslsmith_index_u32(8853u, 24u)]) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(arg_0, 24u)], -236f, 251f))))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(u_input.b, 24u)], -506f, global2[_wgslsmith_index_u32(arg_0, 24u)])) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(arg_0, 24u)], global2[_wgslsmith_index_u32(arg_0, 24u)], -684f) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(165f, global2[_wgslsmith_index_u32(0u, 24u)], global2[_wgslsmith_index_u32(4294967295u, 24u)]), vec3<f32>(1586f, 1093f, -1537f), vec3<bool>(false, false, true))))))));
    return -firstLeadingBit(u_input.a);
}

fn func_4(arg_0: bool, arg_1: vec2<i32>, arg_2: vec3<bool>, arg_3: vec3<i32>) -> Struct_2 {
    var var_0 = min(arg_3, vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.a.x, arg_1.x), global4[_wgslsmith_index_u32(select(u_input.d, 13995u, false), 14u)] ^ (global4[_wgslsmith_index_u32(4294967295u, 14u)] & u_input.c)), -1i ^ (~2147483647i << ((u_input.d | 0u) % 32u)), ~(~0i & (u_input.a.x << (u_input.b % 32u)))));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1401f + _wgslsmith_f_op_f32(abs(-725f)))), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b, ~u_input.b), 24u)], _wgslsmith_f_op_f32(226f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.d, u_input.d), 24u)], global2[_wgslsmith_index_u32(u_input.b, 24u)])) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(18623u, 24u)])))));
    var var_2 = var_1.x;
    let var_3 = _wgslsmith_div_vec2_i32(var_0.xx, _wgslsmith_add_vec2_i32(reverseBits(vec2<i32>(reverseBits(global4[_wgslsmith_index_u32(u_input.b, 14u)]), u_input.a.x)), select(_wgslsmith_mult_vec2_i32(var_0.xz, vec2<i32>(-2147483647i, global4[_wgslsmith_index_u32(3576u, 14u)])), _wgslsmith_div_vec2_i32(var_0.yz, vec2<i32>(global4[_wgslsmith_index_u32(32293u, 14u)], var_0.x)), all(vec4<bool>(arg_0, arg_0, arg_2.x, arg_2.x))) ^ abs(arg_1)));
    var var_4 = select(vec3<bool>(var_1.x > var_1.x, arg_2.x, any(vec4<bool>(arg_2.x, true, true, !arg_2.x))), arg_2, true);
    return Struct_2(Struct_1(select(true, arg_0, any(select(vec3<bool>(true, false, false), arg_2, arg_2))), var_3.x, arg_2.x), Struct_1(~(1u >> (u_input.d % 32u)) == ~u_input.d, _wgslsmith_div_i32(-48543i, _wgslsmith_add_i32(-var_0.x, 28748i)), !select(any(vec3<bool>(false, arg_2.x, true)), true, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-2217f, var_1.x)), 1625f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 24u)]))))) - -527f));
}

fn func_5(arg_0: Struct_2) -> u32 {
    global4 = array<i32, 14>();
    global4 = array<i32, 14>();
    let var_0 = 4294967295u;
    var var_1 = ~(~(~11746u));
    global3 = array<vec2<bool>, 5>();
    return abs(~var_0);
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: bool) -> Struct_2 {
    global1 = array<vec4<i32>, 11>();
    global2 = array<f32, 24>();
    global0 = _wgslsmith_add_u32(func_5(func_4(firstTrailingBit(global4[_wgslsmith_index_u32(1u, 14u)]) == ~u_input.c, -func_2(22333u), !(!vec3<bool>(arg_0, false, arg_2)), _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(global4[_wgslsmith_index_u32(u_input.b, 14u)], global4[_wgslsmith_index_u32(u_input.d, 14u)], 7384i), vec3<i32>(u_input.a.x, u_input.c, global4[_wgslsmith_index_u32(u_input.b, 14u)])), vec3<i32>(global4[_wgslsmith_index_u32(u_input.b, 14u)], 1i, global4[_wgslsmith_index_u32(u_input.d, 14u)]), vec3<i32>(global4[_wgslsmith_index_u32(u_input.d, 14u)], 16006i, 7756i) & vec3<i32>(-2147483647i, -1i, -2147483647i)))), 16040u);
    let var_0 = func_4(arg_2, _wgslsmith_add_vec2_i32(u_input.a, -(~vec2<i32>(2147483647i, global4[_wgslsmith_index_u32(10153u, 14u)]))), vec3<bool>(true, !(!arg_0), false), abs(abs(min(vec3<i32>(global4[_wgslsmith_index_u32(0u, 14u)], global4[_wgslsmith_index_u32(u_input.d, 14u)], 1i), vec3<i32>(-2147483647i, 2147483647i, 0i)) & vec3<i32>(-2147483647i, u_input.a.x, -2147483647i)))).c;
    var var_1 = vec4<u32>(_wgslsmith_dot_vec2_u32(abs(countOneBits(vec2<u32>(u_input.b, u_input.b) ^ vec2<u32>(u_input.d, 31916u))), vec2<u32>(70297u, u_input.d)), u_input.b, ~_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.d, 1u) >> (vec2<u32>(u_input.b, 54443u) % vec2<u32>(32u)), ~vec2<u32>(0u, 17430u)), min(vec2<u32>(1u, u_input.d), vec2<u32>(u_input.d, 1u)) ^ ~vec2<u32>(u_input.d, u_input.d)), u_input.b);
    return func_4(false, -u_input.a, !select(vec3<bool>(!arg_1, true, any(vec3<bool>(true, arg_2, true))), vec3<bool>(!arg_0, false, false), true | (arg_2 || arg_1)), vec3<i32>(_wgslsmith_mult_i32(u_input.c, -44719i), 0i, _wgslsmith_mod_i32(global4[_wgslsmith_index_u32(~_wgslsmith_mod_u32(41520u, var_1.x), 14u)], _wgslsmith_mod_i32(1i, u_input.c) & firstLeadingBit(5762i))));
}

fn func_6(arg_0: u32, arg_1: vec2<u32>, arg_2: vec4<u32>, arg_3: Struct_2) -> u32 {
    var var_0 = 64101u;
    var var_1 = !vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(526f)) * -938f) < arg_3.c, all(select(global3[_wgslsmith_index_u32(4294967295u, 5u)], !global3[_wgslsmith_index_u32(arg_1.x, 5u)], any(vec4<bool>(arg_3.b.c, true, arg_3.a.c, false)))), arg_3.b.c, arg_3.a.a);
    var var_2 = Struct_2(arg_3.a, func_1((firstLeadingBit(0u) >> (u_input.b % 32u)) <= _wgslsmith_dot_vec3_u32(arg_2.zyw, _wgslsmith_mult_vec3_u32(arg_2.zxw, vec3<u32>(arg_2.x, 0u, arg_0))), var_1.x, arg_3.a.a).b, global2[_wgslsmith_index_u32(arg_1.x, 24u)]);
    let var_3 = func_4(var_1.x, u_input.a, vec3<bool>(true, true, false), (_wgslsmith_div_vec3_i32(max(vec3<i32>(var_2.b.b, u_input.c, global4[_wgslsmith_index_u32(36864u, 14u)]), vec3<i32>(global4[_wgslsmith_index_u32(52366u, 14u)], var_2.b.b, -17673i)), vec3<i32>(-60426i, 1i, global4[_wgslsmith_index_u32(4294967295u, 14u)])) >> (_wgslsmith_mod_vec3_u32(min(vec3<u32>(0u, arg_1.x, 3121u), arg_2.xxz), ~arg_2.zxz) % vec3<u32>(32u))) ^ (vec3<i32>(abs(23974i), select(-1i, var_2.a.b, false), arg_3.b.b) | vec3<i32>(~global4[_wgslsmith_index_u32(arg_0, 14u)], firstLeadingBit(33402i), global4[_wgslsmith_index_u32(14394u, 14u)] ^ 2147483647i))).a;
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    global0 = func_6(u_input.b, vec2<u32>(1u, 1u), vec4<u32>(4294967295u, u_input.b, 36287u, u_input.d), func_1(all(vec4<bool>(true, true, global2[_wgslsmith_index_u32(var_0, 24u)] <= global2[_wgslsmith_index_u32(u_input.b, 24u)], var_0 <= var_0)), !(4294967295u != var_0), !(_wgslsmith_div_f32(-1281f, -814f) < _wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(1u, 24u)])))));
    let var_1 = true;
    global0 = 0u;
    let var_2 = Struct_1(true, _wgslsmith_mod_i32(abs(1i), i32(-1i) * -16412i), var_1);
    let var_3 = _wgslsmith_f_op_f32(-470f * global2[_wgslsmith_index_u32(u_input.d, 24u)]);
    var var_4 = 66826u;
    let x = u_input.a;
    s_output = StorageBuffer(~(-u_input.a) << (vec2<u32>(min(u_input.b, u_input.b), 55110u) % vec2<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(abs(_wgslsmith_div_u32(46051u, u_input.b)), 24u)])) * 872f));
}

