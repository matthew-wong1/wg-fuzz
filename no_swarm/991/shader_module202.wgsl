struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec4<f32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(vec2<i32>(0i, 2147483647i)), Struct_1(vec2<i32>(24588i, -1i)), Struct_1(vec2<i32>(2147483647i, 0i)), Struct_1(vec2<i32>(0i, 62046i)), Struct_1(vec2<i32>(1i, -43566i)), Struct_1(vec2<i32>(17570i, 2147483647i)), Struct_1(vec2<i32>(0i, -25978i)), Struct_1(vec2<i32>(-1i, -1i)), Struct_1(vec2<i32>(-11820i, 1i)), Struct_1(vec2<i32>(32455i, 26658i)), Struct_1(vec2<i32>(i32(-2147483648), 0i)), Struct_1(vec2<i32>(-1i, 1i)), Struct_1(vec2<i32>(-39459i, -10781i)), Struct_1(vec2<i32>(2147483647i, 18653i)), Struct_1(vec2<i32>(2147483647i, -10996i)));

var<private> global1: Struct_2;

var<private> global2: vec3<i32> = vec3<i32>(-31330i, -1i, -74573i);

var<private> global3: array<i32, 7> = array<i32, 7>(3581i, 1i, 51253i, 56278i, -46074i, 87117i, -1i);

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec3<i32>) -> f32 {
    global1 = Struct_2(global1.b, Struct_1(_wgslsmith_clamp_vec2_i32(reverseBits(vec2<i32>(1i, global3[_wgslsmith_index_u32(u_input.a, 7u)])), vec2<i32>(-42290i, 11207i), firstTrailingBit(vec2<i32>(-1i, 19130i))) << (vec2<u32>(_wgslsmith_add_u32(u_input.a, 0u), _wgslsmith_sub_u32(0u, u_input.a)) % vec2<u32>(32u))), _wgslsmith_sub_vec3_i32(global1.c, _wgslsmith_mod_vec3_i32(vec3<i32>(~arg_0.a.x, ~39220i, _wgslsmith_dot_vec2_i32(vec2<i32>(-4516i, 20795i), global1.a.a)), countOneBits(vec3<i32>(arg_2.x, -40382i, 1i)))), global0[_wgslsmith_index_u32(0u, 15u)]);
    var var_0 = all(vec4<bool>(true, any(vec2<bool>(true, true)), false, select(true, false, max(u_input.a, u_input.a) > u_input.a)));
    global0 = array<Struct_1, 15>();
    let var_1 = Struct_2(Struct_1(vec2<i32>(firstTrailingBit(0i), _wgslsmith_div_i32(arg_0.a.x, -2147483647i) << (u_input.a % 32u))), arg_0, ~vec3<i32>(-2147483647i, abs(_wgslsmith_mod_i32(global3[_wgslsmith_index_u32(u_input.a, 7u)], global3[_wgslsmith_index_u32(u_input.a, 7u)])), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.x, global3[_wgslsmith_index_u32(u_input.a, 7u)], -2147483647i, 25787i), vec4<i32>(-1i, 0i, arg_2.x, global3[_wgslsmith_index_u32(4294967295u, 7u)]) & vec4<i32>(0i, 65161i, -1i, global1.a.a.x))), global1.a);
    global1 = var_1;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(798f + -1721f), -744f, true))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-713f * -992f)) * _wgslsmith_f_op_f32(-575f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-186f))))));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec3<i32>, arg_3: vec4<i32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-881f, 1f, _wgslsmith_f_op_f32(f32(-1f) * -1636f))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -194f), _wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(global2.yz, vec2<i32>(global3[_wgslsmith_index_u32(u_input.a, 7u)], global2.x)), ~vec2<i32>(13527i, arg_2.x), vec2<i32>(arg_1.x, -2147483647i))), 2147483647i, -(~_wgslsmith_div_vec3_i32(vec3<i32>(arg_0.a.x, global3[_wgslsmith_index_u32(u_input.a, 7u)], 1269i), arg_1.zxy)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.x)))))));
    var var_1 = -28458i;
    let var_2 = Struct_2(Struct_1(arg_0.a), global0[_wgslsmith_index_u32(~(~min(58389u, ~u_input.a)), 15u)], global1.c & vec3<i32>(_wgslsmith_mult_i32(select(arg_0.a.x, global1.a.a.x, true), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.a.x, 2147483647i), arg_2.xy)), ~select(global1.d.a.x, arg_2.x, true), _wgslsmith_div_i32(-12650i, _wgslsmith_sub_i32(arg_0.a.x, -100124i))), Struct_1(arg_3.yx));
    let var_3 = arg_2.xz;
    return var_2;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2) -> vec2<i32> {
    global1 = func_2(Struct_1(arg_0.a.a), -firstTrailingBit(vec4<i32>(-36554i, _wgslsmith_dot_vec3_i32(arg_1.c, vec3<i32>(-9739i, 0i, global1.a.a.x)), ~(-10573i), -18871i)), global1.c, vec4<i32>(-2147483647i, 2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(global2.x & -39394i, 0i, _wgslsmith_div_i32(arg_0.b.a.x, 1i)), global1.c), ~arg_0.d.a.x));
    global3 = array<i32, 7>();
    global3 = array<i32, 7>();
    var var_0 = -1i;
    global2 = ~_wgslsmith_mult_vec3_i32(arg_0.c, _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(global1.c, arg_1.c), global1.c)) << (~vec3<u32>(_wgslsmith_add_u32(1u, u_input.a), abs(u_input.a), u_input.a) % vec3<u32>(32u));
    return ~select(vec2<i32>(22633i, -_wgslsmith_div_i32(global3[_wgslsmith_index_u32(u_input.a, 7u)], global1.a.a.x)), vec2<i32>(-global2.x, ~60187i), select(vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(false, true, false, true)), select(false, false, false)), !select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(global1.d.a), Struct_1(countOneBits(func_1(Struct_2(global0[_wgslsmith_index_u32(49307u, 15u)], global1.a, global1.c, global1.a), Struct_2(Struct_1(global2.xx), global0[_wgslsmith_index_u32(5772u, 15u)], global1.c, Struct_1(vec2<i32>(global3[_wgslsmith_index_u32(u_input.a, 7u)], global3[_wgslsmith_index_u32(54840u, 7u)])))))), global1.c, func_2(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(firstTrailingBit(u_input.a), 0u), vec2<u32>(u_input.a, 17770u) ^ ~vec2<u32>(39272u, u_input.a)), 15u)], _wgslsmith_mod_vec4_i32(select(vec4<i32>(15281i, -2147483647i, -37816i, global1.d.a.x), vec4<i32>(global3[_wgslsmith_index_u32(20283u, 7u)], global1.a.a.x, -6316i, global3[_wgslsmith_index_u32(u_input.a, 7u)]), vec4<bool>(false, true, true, true)) >> (select(vec4<u32>(0u, 1u, 36019u, 487u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<bool>(true, true, false, false)) % vec4<u32>(32u)), -vec4<i32>(global1.d.a.x, global1.c.x, 1i, 13176i)), (global1.c & vec3<i32>(global2.x, -56434i, global2.x)) << (~(~vec3<u32>(u_input.a, 5285u, u_input.a)) % vec3<u32>(32u)), firstLeadingBit(_wgslsmith_clamp_vec4_i32(max(vec4<i32>(38188i, -57597i, 0i, global1.c.x), vec4<i32>(1i, global3[_wgslsmith_index_u32(120227u, 7u)], 0i, global3[_wgslsmith_index_u32(27502u, 7u)])), reverseBits(vec4<i32>(-2147483647i, global1.c.x, 1i, global1.c.x)), vec4<i32>(global2.x, 0i, global3[_wgslsmith_index_u32(u_input.a, 7u)], -1i)))).b);
    let var_1 = global1.b.a.x;
    global0 = array<Struct_1, 15>();
    var var_2 = -43263i;
    let var_3 = any(select(vec3<bool>(true, any(vec3<bool>(true, false, false)) && true, true), vec3<bool>(any(vec2<bool>(false, true)), !(global2.x == -60141i), !all(vec4<bool>(false, true, true, false))), false));
    var var_4 = _wgslsmith_sub_vec3_i32(~(-vec3<i32>(var_0.b.a.x, var_0.b.a.x << (0u % 32u), 34930i)), -(global1.c >> ((abs(vec3<u32>(u_input.a, u_input.a, 8420u)) << (vec3<u32>(1u, 13247u, 4294967295u) % vec3<u32>(32u))) % vec3<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1234f), -648f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1049f, 826f) * vec2<f32>(500f, -889f))))), _wgslsmith_f_op_f32(-315f * 220f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1000f, _wgslsmith_f_op_f32(select(-1079f, 483f, true)), -1114f, _wgslsmith_f_op_f32(f32(-1f) * -1560f)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, 106f, 430f, -1664f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1753f, -820f)))), _wgslsmith_mult_u32(_wgslsmith_mult_u32(0u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(1u, u_input.a))), _wgslsmith_add_u32(max(~u_input.a, min(u_input.a, 22269u)), ~1u)));
}

