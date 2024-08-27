struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: i32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<bool, 13>;

var<private> global2: array<u32, 5>;

var<private> global3: array<u32, 32> = array<u32, 32>(62034u, 1u, 3685u, 33990u, 1u, 2326u, 0u, 1u, 0u, 1u, 90953u, 0u, 38683u, 4294967295u, 0u, 257u, 4294967295u, 42434u, 0u, 32484u, 19079u, 63908u, 2192u, 0u, 22293u, 4294967295u, 1u, 85207u, 4294967295u, 9907u, 79108u, 1u);

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: Struct_2) -> vec3<u32> {
    let var_0 = Struct_1(2147483647i);
    var var_1 = !select(vec2<bool>(all(select(vec3<bool>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 32u)], 5u)], 5u)], 13u)], true, true), vec3<bool>(false, false, false), false)), true), select(vec2<bool>(arg_1.x != -516f, true), select(!vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 13u)], true), select(vec2<bool>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(17293u, 5u)], 13u)], true), vec2<bool>(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 5u)], 5u)], 32u)], 13u)], global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 32u)], 13u)]), vec2<bool>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(86560u, 5u)], 5u)], 5u)], 13u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(50273u, 5u)], 13u)])), vec2<bool>(global1[_wgslsmith_index_u32(0u, 13u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(107042u, 5u)], 5u)], 13u)])), select(all(vec3<bool>(global1[_wgslsmith_index_u32(0u, 13u)], global1[_wgslsmith_index_u32(96814u, 13u)], false)), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.e, 21947u), 13u)], !global1[_wgslsmith_index_u32(u_input.a.x, 13u)])), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(arg_0.yy, vec2<i32>(arg_3.c, 1i), vec2<i32>(-2147483647i, -26101i)), ~arg_0.xy) == -6736i);
    let var_2 = arg_2;
    let var_3 = var_2.a.x;
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1040f, -1984f) + arg_1.yz)))));
    return _wgslsmith_mod_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(4294967295u, 32u)] ^ u_input.a.x, ~u_input.a.x, ~65088u), ~(~vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.b, u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, global3[_wgslsmith_index_u32(4294967295u, 32u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 32u)], 32u)], 29083u), vec4<u32>(u_input.b.x, 19983u, global2[_wgslsmith_index_u32(u_input.a.x, 5u)], 4294967295u)), _wgslsmith_sub_u32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(92558u, 32u)], 5u)], 32u)], 4294967295u))));
}

fn func_2() -> bool {
    let var_0 = max(~17182u, _wgslsmith_dot_vec3_u32(max(vec3<u32>(~6905u, _wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(69404u, 5u)], 4037u, global2[_wgslsmith_index_u32(u_input.b.x, 5u)]), vec3<u32>(48558u, u_input.d, u_input.d)), u_input.e), ~(vec3<u32>(u_input.e, global2[_wgslsmith_index_u32(9634u, 5u)], 1u) ^ vec3<u32>(u_input.d, u_input.d, global3[_wgslsmith_index_u32(4793u, 32u)]))), countOneBits(func_3(min(vec3<i32>(u_input.c, -1i, u_input.c), vec3<i32>(u_input.c, u_input.c, u_input.c)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1000f, 446f, -930f), vec3<f32>(1000f, 808f, 623f))), Struct_2(vec2<f32>(363f, -635f), -1i, u_input.c), Struct_2(vec2<f32>(-1087f, 2037f), 16710i, -17954i)))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-778f))));
    global2 = array<u32, 5>();
    let var_1 = select(vec3<bool>(true, all(!select(vec3<bool>(true, global1[_wgslsmith_index_u32(4667u, 13u)], true), vec3<bool>(false, global1[_wgslsmith_index_u32(0u, 13u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a.x, 32u)], 5u)], 13u)]), vec3<bool>(false, global1[_wgslsmith_index_u32(var_0, 13u)], false))), all(!vec4<bool>(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(54771u, 32u)], 13u)], true, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(90555u, 5u)], 13u)], true)) && true), !vec3<bool>(global1[_wgslsmith_index_u32(0u, 13u)], global1[_wgslsmith_index_u32(var_0, 13u)], true), !(global1[_wgslsmith_index_u32(var_0 & (var_0 | var_0), 13u)] || true));
    return !select(!all(var_1), false, !all(vec4<bool>(false, global1[_wgslsmith_index_u32(21276u, 13u)], global1[_wgslsmith_index_u32(4629u, 13u)], global1[_wgslsmith_index_u32(89716u, 13u)]))) & false;
}

fn func_4(arg_0: bool, arg_1: vec4<u32>, arg_2: vec3<i32>, arg_3: vec3<u32>) -> Struct_3 {
    var var_0 = Struct_3(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(min(vec3<i32>(u_input.c, arg_2.x, 30450i), arg_2), _wgslsmith_sub_vec3_i32(arg_2, vec3<i32>(u_input.c, u_input.c, 28945i))), arg_2.x | (arg_2.x >> (u_input.e % 32u)), _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.c, u_input.c), ~vec2<i32>(-30234i, arg_2.x))), (vec4<i32>(27697i, arg_2.x, arg_2.x, u_input.c) | vec4<i32>(arg_2.x, 0i, u_input.c, 28187i)) ^ vec4<i32>(abs(-34578i), 38136i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 1i, -5240i, 44011i), vec4<i32>(-1i, 2147483647i, arg_2.x, -32963i)), arg_2.x | u_input.c)), arg_1.zx, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f + -1938f))))))));
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -533f);
    global1 = array<bool, 13>();
    var var_1 = vec3<u32>(_wgslsmith_dot_vec3_u32(reverseBits(~arg_3 & (vec3<u32>(u_input.a.x, global3[_wgslsmith_index_u32(1u, 32u)], 1u) ^ arg_3)), ~(~arg_3) >> (~vec3<u32>(arg_3.x, arg_3.x, 4294967295u) % vec3<u32>(32u))), 50369u, 1u);
    let var_2 = Struct_3(vec4<i32>(-_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(var_0.a.zx, vec2<i32>(-1i, u_input.c)), countOneBits(vec2<i32>(-2147483647i, arg_2.x))), select(1i, u_input.c, arg_0), ~var_0.a.x, reverseBits(var_0.a.x ^ ~var_0.a.x)), _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(var_0.b, vec2<u32>(1u, var_1.x)), var_1.xz), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(var_0.c, var_0.c))))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.c, var_0.c)))))));
    return Struct_3(~var_0.a, ~countOneBits(vec2<u32>(102921u, var_2.b.x)) << (abs(u_input.a) % vec2<u32>(32u)), 843f);
}

fn func_1(arg_0: u32, arg_1: vec4<bool>, arg_2: i32) -> Struct_2 {
    var var_0 = vec2<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 13u)], false);
    var var_1 = func_4(!(true && func_2()), firstTrailingBit(~(_wgslsmith_add_vec4_u32(vec4<u32>(59052u, global3[_wgslsmith_index_u32(u_input.e, 32u)], u_input.a.x, global3[_wgslsmith_index_u32(26715u, 32u)]), vec4<u32>(42926u, 31353u, arg_0, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1576u, 32u)], 32u)])) ^ firstLeadingBit(vec4<u32>(u_input.a.x, global2[_wgslsmith_index_u32(58375u, 5u)], global2[_wgslsmith_index_u32(38800u, 5u)], 1u)))), ~abs(_wgslsmith_mult_vec3_i32(vec3<i32>(3707i, u_input.c, 0i), vec3<i32>(-2147483647i, -18814i, arg_2))), ~_wgslsmith_add_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(15984u, 32u)], 5u)], global3[_wgslsmith_index_u32(88697u, 32u)], max(4294967295u, arg_0)), _wgslsmith_div_vec3_u32(vec3<u32>(1u, arg_0, global2[_wgslsmith_index_u32(31087u, 5u)]), vec3<u32>(21680u, arg_0, u_input.a.x))));
    let var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_1.c, 229f, var_1.c), vec3<f32>(var_1.c, 1610f, var_1.c))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-275f, var_1.c, var_1.c))))))));
    let var_3 = var_1.a.yyw & var_1.a.zxz;
    var var_4 = arg_1.x;
    return Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_2.zx, var_2.yz, vec2<bool>(all(arg_1.wy), true))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-518f, -534f), var_2.zx)))))), 13092i ^ u_input.c, var_1.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~49568u;
    let var_1 = func_1(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b.x, 32u)], 32u)], 47841u, 13539u)), vec3<u32>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 5u)], 32u)], _wgslsmith_mult_u32(var_0, _wgslsmith_dot_vec2_u32(u_input.a, u_input.b)), ~_wgslsmith_add_u32(global3[_wgslsmith_index_u32(var_0, 32u)], 26953u))), vec4<bool>(global1[_wgslsmith_index_u32(19790u, 13u)], all(vec3<bool>(var_0 == 8368u, global1[_wgslsmith_index_u32(17746u, 13u)] != true, all(vec2<bool>(true, global1[_wgslsmith_index_u32(1095u, 13u)])))), true, true), 1i);
    let var_2 = true;
    var var_3 = func_4((_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.a.x))) <= _wgslsmith_f_op_f32(1917f + var_1.a.x)) | (all(select(vec2<bool>(true, false), vec2<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 13u)], false), vec2<bool>(global1[_wgslsmith_index_u32(0u, 13u)], global1[_wgslsmith_index_u32(3092u, 13u)]))) || true), _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(var_0, 3708u, 0u, global2[_wgslsmith_index_u32(4294967295u, 5u)])), ~min(vec4<u32>(0u, 1u, 0u, 25625u), vec4<u32>(0u, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 5u)], 32u)], global3[_wgslsmith_index_u32(8486u, 32u)], u_input.d)), ~vec4<u32>(4294967295u, var_0, global2[_wgslsmith_index_u32(0u, 5u)], var_0)) & ~_wgslsmith_clamp_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(var_0, 5u)], 1u, u_input.a.x, u_input.e), ~vec4<u32>(var_0, u_input.d, 1u, 4294967295u), reverseBits(vec4<u32>(0u, u_input.a.x, 19112u, 0u))), vec3<i32>(var_1.c ^ _wgslsmith_mod_i32(u_input.c, var_1.c), firstTrailingBit(_wgslsmith_mult_i32(u_input.c, max(u_input.c, -2147483647i))), i32(-1i) * -16229i), ~(~vec3<u32>(~global2[_wgslsmith_index_u32(u_input.e, 5u)], 2226u, ~4294967295u))).a.yy;
    global2 = array<u32, 5>();
    let var_4 = i32(-1i) * -var_1.c;
    let x = u_input.a;
    s_output = StorageBuffer(var_0, 83101u, vec3<u32>(_wgslsmith_mod_u32(u_input.a.x, u_input.e), 27680u, ~reverseBits(abs(u_input.b.x))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-838f, var_1.a.x) * vec2<f32>(var_1.a.x, 265f)))))), 258f);
}

