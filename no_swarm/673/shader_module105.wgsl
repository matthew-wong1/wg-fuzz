struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec4<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 8> = array<vec4<i32>, 8>(vec4<i32>(2147483647i, 1i, -1i, 0i), vec4<i32>(-1i, 0i, i32(-2147483648), -1i), vec4<i32>(2059i, 29687i, -1i, 6800i), vec4<i32>(17536i, 52361i, i32(-2147483648), -1005i), vec4<i32>(1i, -7460i, 1i, -12790i), vec4<i32>(i32(-2147483648), 28519i, -20793i, -1i), vec4<i32>(18858i, -1i, -26424i, 0i), vec4<i32>(i32(-2147483648), 37688i, 39028i, 16281i));

var<private> global1: array<i32, 16>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: bool) -> vec3<i32> {
    global0 = array<vec4<i32>, 8>();
    let var_0 = ~_wgslsmith_mult_vec3_i32(abs((vec3<i32>(-4660i, 22005i, global1[_wgslsmith_index_u32(94128u, 16u)]) & vec3<i32>(1338i, -27i, -2147483647i)) << (~vec3<u32>(u_input.a, 61659u, u_input.a) % vec3<u32>(32u))), _wgslsmith_mult_vec3_i32(min(select(vec3<i32>(372i, 1i, global1[_wgslsmith_index_u32(0u, 16u)]), vec3<i32>(global1[_wgslsmith_index_u32(u_input.a, 16u)], global1[_wgslsmith_index_u32(u_input.a, 16u)], global1[_wgslsmith_index_u32(7500u, 16u)]), vec3<bool>(arg_1, false, true)), ~vec3<i32>(global1[_wgslsmith_index_u32(0u, 16u)], -19991i, -78787i)), _wgslsmith_add_vec3_i32(vec3<i32>(-1i, global1[_wgslsmith_index_u32(70178u, 16u)], global1[_wgslsmith_index_u32(u_input.a, 16u)]), vec3<i32>(-2147483647i, global1[_wgslsmith_index_u32(u_input.a, 16u)], global1[_wgslsmith_index_u32(4294967295u, 16u)]))));
    global1 = array<i32, 16>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1236f + -295f), -1150f)));
    return select(var_0, _wgslsmith_mult_vec3_i32(vec3<i32>(3261i, -40721i, select(1i & var_0.x, -9122i, arg_0)), ~(-vec3<i32>(global1[_wgslsmith_index_u32(115616u, 16u)], var_0.x, -1i))), !arg_0);
}

fn func_2(arg_0: bool) -> Struct_3 {
    global1 = array<i32, 16>();
    var var_0 = -1077f;
    var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-427f, 967f)))))));
    let var_1 = global0[_wgslsmith_index_u32(u_input.a, 8u)] | vec4<i32>(global1[_wgslsmith_index_u32(abs(u_input.a), 16u)], -1i, select(countOneBits(global1[_wgslsmith_index_u32(u_input.a, 16u)]), i32(-1i) * -1i, !arg_0 || !arg_0), select(-11131i << (u_input.a % 32u), firstLeadingBit(global1[_wgslsmith_index_u32(u_input.a, 16u)]), !arg_0) & (_wgslsmith_add_i32(27292i, -1i) << ((u_input.a ^ u_input.a) % 32u)));
    var var_2 = -_wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(var_1.yy, _wgslsmith_div_vec2_i32(firstTrailingBit(vec2<i32>(0i, 23111i)), var_1.xx), -_wgslsmith_mult_vec2_i32(vec2<i32>(var_1.x, var_1.x), vec2<i32>(58366i, -2147483647i))), vec2<i32>(_wgslsmith_div_i32(var_1.x, global1[_wgslsmith_index_u32(u_input.a, 16u)]) & -2147483647i, var_1.x));
    return Struct_3(Struct_2(Struct_1((-34720i ^ var_1.x) >> (~1u % 32u), var_1.x, func_3(true || arg_0, var_1.x > -35506i)), Struct_1(~global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, 4294967295u), 16u)], reverseBits(~(-23016i)), _wgslsmith_div_vec3_i32(vec3<i32>(var_1.x, -1i, var_2.x), _wgslsmith_mod_vec3_i32(var_1.yyz, var_1.wzx)))), Struct_2(Struct_1(reverseBits(var_1.x), -(-1046i & global1[_wgslsmith_index_u32(u_input.a, 16u)]), var_1.yzx), Struct_1(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, var_2.x), var_1.wz), var_1.wx), 1i, countOneBits(abs(var_1.zxz)))), ~47705u, _wgslsmith_add_i32(~var_2.x, min(_wgslsmith_dot_vec2_i32(vec2<i32>(-24147i, global1[_wgslsmith_index_u32(70086u, 16u)]), var_1.wy), var_2.x) >> (_wgslsmith_mod_u32(u_input.a, 2748u) % 32u)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3) -> Struct_3 {
    var var_0 = Struct_2(arg_1.b.a, func_2(any(vec4<bool>(any(vec4<bool>(true, false, false, true)), true, true, any(vec4<bool>(true, true, true, true))))).a.a);
    global1 = array<i32, 16>();
    var_0 = func_2(true).a;
    let var_1 = arg_1;
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1603f)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-1248f)), _wgslsmith_f_op_f32(step(-680f, 190f))))), -324f));
    return Struct_3(Struct_2(var_0.a, func_2(!(0i > arg_0.a)).b.a), Struct_2(func_2(true).b.b, Struct_1(-1i, 2240i, vec3<i32>(~var_0.a.c.x, arg_1.d & -12109i, arg_0.c.x))), 0u >> (~firstTrailingBit(4294967295u) % 32u), select(global1[_wgslsmith_index_u32(arg_1.c, 16u)], _wgslsmith_dot_vec3_i32(vec3<i32>(-arg_0.a, _wgslsmith_div_i32(global1[_wgslsmith_index_u32(arg_1.c, 16u)], 0i), i32(-1i) * -1i), -var_1.a.a.c >> (abs(vec3<u32>(var_1.c, 1u, 1u)) % vec3<u32>(32u))), any(vec3<bool>(true, true, true))));
}

fn func_5(arg_0: Struct_3, arg_1: bool) -> Struct_3 {
    let var_0 = 1210f;
    global0 = array<vec4<i32>, 8>();
    global0 = array<vec4<i32>, 8>();
    global1 = array<i32, 16>();
    let var_1 = _wgslsmith_dot_vec2_i32(select(arg_0.a.b.c.zy, arg_0.a.a.c.xx, select(!vec2<bool>(false, arg_1), vec2<bool>(true, true), true && arg_1)), arg_0.b.b.c.xy);
    return Struct_3(arg_0.a, func_4(arg_0.b.b, arg_0).b, ~(~firstLeadingBit(1447u)) << (_wgslsmith_div_u32(~_wgslsmith_mod_u32(arg_0.c, 23827u), ~min(arg_0.c, 55810u)) % 32u), -min(var_1, _wgslsmith_mult_i32(var_1, var_1)) & abs(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(97266i, global1[_wgslsmith_index_u32(arg_0.c, 16u)], 1i, -51296i)), vec4<i32>(-2147483647i, var_1, arg_0.a.b.c.x, arg_0.a.a.c.x))));
}

fn func_6(arg_0: Struct_3) -> Struct_1 {
    global0 = array<vec4<i32>, 8>();
    global0 = array<vec4<i32>, 8>();
    global0 = array<vec4<i32>, 8>();
    let var_0 = all(vec3<bool>(true, true, true));
    return Struct_1(-23026i, 1i, (arg_0.a.a.c >> (~(~vec3<u32>(9190u, 25323u, u_input.a)) % vec3<u32>(32u))) | (vec3<i32>(~41779i, -2147483647i, 1i) & arg_0.b.a.c));
}

fn func_1(arg_0: Struct_1) -> vec3<f32> {
    var var_0 = func_6(func_5(func_4(arg_0, func_2(true)), false));
    var var_1 = Struct_1(0i, firstLeadingBit(1i), var_0.c);
    var var_2 = 36658i;
    let var_3 = Struct_2(arg_0, arg_0);
    let var_4 = 951f;
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1181f, -230f, var_4) + vec3<f32>(var_4, var_4, var_4))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1419f, var_4, _wgslsmith_f_op_f32(min(var_4, var_4)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_4, var_4, var_4), vec3<f32>(1446f, -223f, var_4))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_4, var_4, -1000f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1758f, var_4, 970f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_4, 970f, var_4) * vec3<f32>(-833f, 520f, var_4)))))), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(Struct_1(-2147483647i, (global1[_wgslsmith_index_u32(u_input.a, 16u)] >> (18875u % 32u)) & abs(global1[_wgslsmith_index_u32(u_input.a, 16u)]), vec3<i32>(-global1[_wgslsmith_index_u32(0u, 16u)], global1[_wgslsmith_index_u32(firstTrailingBit(1u), 16u)], i32(-1i) * -1i)))) * _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(1000f)))), -133f, _wgslsmith_f_op_f32(-324f - 1f)), vec3<f32>(1000f, -1322f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(2043f)), 302f, u_input.a != u_input.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-1267f, 1863f)))))))), -(((vec3<i32>(3379i, 16712i, global1[_wgslsmith_index_u32(u_input.a, 16u)]) | vec3<i32>(global1[_wgslsmith_index_u32(13439u, 16u)], 17741i, global1[_wgslsmith_index_u32(6912u, 16u)])) & vec3<i32>(global1[_wgslsmith_index_u32(1u, 16u)], 1i, global1[_wgslsmith_index_u32(u_input.a, 16u)])) << (~(~vec3<u32>(4294967295u, u_input.a, u_input.a)) % vec3<u32>(32u))), vec4<u32>(max(max(u_input.a, min(u_input.a, 4294967295u)), (u_input.a | 62582u) << (countOneBits(66022u) % 32u)), _wgslsmith_add_u32(u_input.a, 4294967295u), ~u_input.a, _wgslsmith_mult_u32(~firstTrailingBit(u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 1u, u_input.a), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.a, 10930u), vec3<u32>(0u, 0u, 1u))))), vec4<u32>(~(~_wgslsmith_sub_u32(u_input.a, 4294967295u)), countOneBits(reverseBits(62440u)), _wgslsmith_add_u32(1u, ~(0u | u_input.a)), 1u), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(1508f)), var_0.x, _wgslsmith_f_op_f32(max(var_0.x, var_0.x)), -115f), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(571f, -1075f, 1052f, 170f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.x, var_0.x, -603f, var_0.x)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(342f, var_0.x, var_0.x, 973f), vec4<f32>(var_0.x, -916f, var_0.x, var_0.x)))))));
}

