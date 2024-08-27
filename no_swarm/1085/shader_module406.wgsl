struct Struct_1 {
    a: f32,
    b: i32,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: f32,
    d: u32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: vec3<bool>,
    d: bool,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 23>;

var<private> global1: i32;

var<private> global2: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(Struct_1(-246f, -32620i, true, false), vec3<f32>(-716f, -1787f, -1102f), 289f, 15410u), Struct_2(Struct_1(-552f, 1i, false, false), vec3<f32>(1993f, 998f, 997f), 115f, 0u), Struct_2(Struct_1(-354f, 8254i, false, true), vec3<f32>(2157f, -1654f, 802f), 1453f, 0u), Struct_2(Struct_1(345f, -9607i, true, true), vec3<f32>(-625f, -433f, -1235f), 423f, 12416u), Struct_2(Struct_1(333f, -1i, false, false), vec3<f32>(-978f, 1000f, 427f), -1000f, 0u), Struct_2(Struct_1(-482f, -20456i, true, true), vec3<f32>(-803f, -1410f, -1000f), 468f, 5456u), Struct_2(Struct_1(707f, i32(-2147483648), false, true), vec3<f32>(1420f, 1404f, -1178f), 2253f, 0u), Struct_2(Struct_1(1168f, -1i, false, true), vec3<f32>(-1000f, -123f, 1092f), -620f, 4294967295u), Struct_2(Struct_1(-121f, 621i, true, true), vec3<f32>(-531f, -1377f, -371f), 1665f, 9231u), Struct_2(Struct_1(1058f, 2147483647i, false, true), vec3<f32>(-1000f, 1090f, 104f), -806f, 108174u));

var<private> global3: Struct_2;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: vec3<u32>) -> i32 {
    var var_0 = global3.a.b;
    global2 = array<Struct_2, 10>();
    let var_1 = select(select(vec3<bool>(true, false, global3.d >= _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(59688u, 23u)], 0u)), select(!(!vec3<bool>(true, true, global3.a.c)), vec3<bool>(global3.a.d, any(vec2<bool>(global3.a.d, global3.a.c)), global3.a.c), _wgslsmith_f_op_f32(-global3.c) != global3.b.x), select(!select(vec3<bool>(global3.a.d, false, true), vec3<bool>(global3.a.d, global3.a.d, false), vec3<bool>(true, global3.a.c, true)), !select(vec3<bool>(global3.a.d, false, false), vec3<bool>(global3.a.d, global3.a.c, true), vec3<bool>(global3.a.d, true, false)), vec3<bool>(any(vec3<bool>(global3.a.d, global3.a.d, global3.a.c)), true, all(vec4<bool>(false, true, false, global3.a.c))))), !vec3<bool>(true, global3.a.c, global3.a.d), select(vec3<bool>(true, true, all(!vec4<bool>(global3.a.d, global3.a.c, false, false))), !(!select(vec3<bool>(true, global3.a.d, global3.a.d), vec3<bool>(global3.a.c, global3.a.d, false), vec3<bool>(true, global3.a.d, global3.a.c))), global3.a.d));
    var var_2 = !(u_input.a.x > global3.a.b);
    let var_3 = _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_div_i32(_wgslsmith_clamp_i32(global3.a.b & u_input.b.x, ~(-8576i), u_input.a.x), _wgslsmith_mod_i32(_wgslsmith_sub_i32(74294i, global3.a.b), 3036i)), _wgslsmith_clamp_i32(38414i, _wgslsmith_dot_vec3_i32(select(u_input.a.xxy, u_input.b.xyx, var_1.x), ~u_input.a.zyx), 12639i), ~0i, 1i), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, 0i, ~u_input.a.x, -25597i), min(max(_wgslsmith_sub_vec4_i32(vec4<i32>(21842i, global3.a.b, 2147483647i, u_input.b.x), u_input.a), u_input.a), select(-u_input.b, reverseBits(vec4<i32>(u_input.b.x, 126627i, 2147483647i, global3.a.b)), vec4<bool>(true, false, false, var_1.x)))), u_input.b);
    return u_input.a.x;
}

fn func_3() -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-314f, global3.b.x), _wgslsmith_f_op_f32(select(253f, 369f, true)), -1000f) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1f, 1f, 1f), global3.b))))));
    var var_1 = Struct_1(global3.a.a, _wgslsmith_mod_i32(i32(-1i) * -21351i, _wgslsmith_sub_i32(7165i, firstLeadingBit(~global3.a.b))), true, any(vec4<bool>(global3.a.d && true, true, all(vec4<bool>(global3.a.d, global3.a.d, global3.a.d, global3.a.c)), !global3.a.c)) & global3.a.d);
    var var_2 = select(u_input.a, firstLeadingBit(~(-vec4<i32>(var_1.b, u_input.b.x, var_1.b, -2147483647i))) ^ -abs(u_input.b), true);
    var_0 = global3.b;
    global3 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(global3.d, countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(global3.d, global3.d, 4294967295u, 0u) ^ ~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global3.d, 23u)], 23u)], 1123u, global0[_wgslsmith_index_u32(global3.d, 23u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global3.d, 23u)], 23u)]), vec4<u32>(_wgslsmith_add_u32(15110u, global0[_wgslsmith_index_u32(4294967295u, 23u)]), _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(4294967295u, 23u)], 8733u), max(global3.d, global0[_wgslsmith_index_u32(6549u, 23u)]), _wgslsmith_add_u32(global3.d, global0[_wgslsmith_index_u32(global3.d, 23u)]))))), 10u)];
    return vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(_wgslsmith_sub_i32(reverseBits(var_2.x), u_input.b.x), reverseBits(u_input.a.x)), global3.a.b), u_input.b.x);
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = vec4<bool>(arg_0 <= global3.a.b, all(vec2<bool>(all(vec3<bool>(false, global3.a.d, true)), !(!global3.a.d))), ((all(vec2<bool>(arg_1.c, false)) || global3.a.c) & any(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), false))) | (true | global3.a.c), select(any(!(!vec3<bool>(global3.a.d, global3.a.c, true))), any(select(select(vec2<bool>(arg_1.c, arg_1.d), vec2<bool>(arg_1.d, true), vec2<bool>(global3.a.d, global3.a.c)), !vec2<bool>(false, global3.a.d), !vec2<bool>(false, global3.a.d))), false));
    let var_1 = global3.d <= _wgslsmith_dot_vec4_u32(select(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 0u, global0[_wgslsmith_index_u32(1u, 23u)], global0[_wgslsmith_index_u32(25056u, 23u)]), vec4<u32>(global0[_wgslsmith_index_u32(18262u, 23u)], global0[_wgslsmith_index_u32(global3.d, 23u)], 4294967295u, global3.d)), vec4<u32>(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(14283u, 23u)], global3.d), ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 23u)], 23u)], global3.d, global0[_wgslsmith_index_u32(global3.d, 23u)]), select(select(var_0, var_0, vec4<bool>(false, true, arg_1.c, arg_1.d)), vec4<bool>(global3.a.c, true, global3.a.d, false), !vec4<bool>(false, arg_1.d, false, true))), ~(vec4<u32>(1u, global3.d, 1u, 31280u) & vec4<u32>(global3.d, global3.d, global3.d, 0u)));
    global2 = array<Struct_2, 10>();
    var var_2 = abs(arg_2.x);
    return global3.a;
}

fn func_1(arg_0: vec2<bool>) -> Struct_3 {
    var var_0 = func_4(select(func_2(vec3<u32>(abs(13264u), global3.d, min(11980u, global3.d))), u_input.b.x, select(true, _wgslsmith_add_i32(global3.a.b, global3.a.b) > firstTrailingBit(-34676i), true)), global3.a, ~(~func_3()));
    global1 = 0i;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -140f) * global3.b.x)))), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, _wgslsmith_add_i32(u_input.b.x, u_input.a.x)), u_input.b.yz | u_input.a.zw), true, !(!var_0.d) || var_0.c);
    let var_2 = ~reverseBits(_wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 25594u), vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(49066u, 23u)]), vec2<u32>(0u, 4294967295u)) ^ vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 23u)], global3.d), min(~vec2<u32>(global3.d, 33302u), ~vec2<u32>(35196u, global3.d))));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -1151f)), var_1.b, func_3().x != var_1.b, arg_0.x);
    return Struct_3(!select(select(select(vec4<bool>(var_0.d, true, false, var_0.d), vec4<bool>(false, arg_0.x, true, var_1.d), vec4<bool>(true, var_3.c, var_0.d, var_1.c)), select(vec4<bool>(var_1.c, false, var_3.c, false), vec4<bool>(arg_0.x, var_0.c, global3.a.d, false), true), false), !(!vec4<bool>(var_1.c, var_3.c, true, true)), true), vec4<bool>(var_1.c, func_4(u_input.a.x, func_4(_wgslsmith_div_i32(var_3.b, var_1.b), Struct_1(var_1.a, 26291i, false, false), u_input.b.xy | vec2<i32>(var_3.b, -1i)), reverseBits(min(vec2<i32>(-2147483647i, -7643i), vec2<i32>(-1973i, global3.a.b)))).d, (12030u | ~global3.d) <= ~(var_2.x & global0[_wgslsmith_index_u32(0u, 23u)]), select(var_0.c, var_0.d, false) & !global3.a.d), !select(vec3<bool>(all(arg_0), true, var_0.d), !(!vec3<bool>(false, false, global3.a.d)), true), true, Struct_1(var_1.a, var_0.b, arg_0.x, var_1.c));
}

fn func_5(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: vec2<bool>, arg_3: Struct_3) -> i32 {
    global3 = global2[_wgslsmith_index_u32(0u, 10u)];
    var var_0 = countOneBits(abs(_wgslsmith_mod_vec4_i32(arg_1, (u_input.a >> (vec4<u32>(16789u, 12714u, global0[_wgslsmith_index_u32(1u, 23u)], global0[_wgslsmith_index_u32(22973u, 23u)]) % vec4<u32>(32u))) << (vec4<u32>(1u, 0u, 0u, 1u) % vec4<u32>(32u)))));
    var var_1 = reverseBits(~u_input.a.yxx);
    global2 = array<Struct_2, 10>();
    var var_2 = Struct_4(abs(abs(select(vec4<u32>(global3.d, 14930u, global0[_wgslsmith_index_u32(5513u, 23u)], global3.d), vec4<u32>(global0[_wgslsmith_index_u32(global3.d, 23u)], 0u, 62882u, 4294967295u), arg_3.b.x))) >> (select(countOneBits(~vec4<u32>(44664u, 49828u, global0[_wgslsmith_index_u32(global3.d, 23u)], global3.d)), ~abs(vec4<u32>(global0[_wgslsmith_index_u32(global3.d, 23u)], global3.d, 2544u, 4294967295u)), !(u_input.b.x >= var_1.x)) % vec4<u32>(32u)), func_1(select(vec2<bool>(false, true), select(!arg_0.b.zy, vec2<bool>(arg_0.c.x, false), true), !(!global3.a.d))).e, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.e.a, arg_0.e.a, -876f, arg_3.e.a)) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.e.a, -570f, arg_0.e.a, global3.b.x), vec4<f32>(1894f, -553f, 920f, 1246f)))))), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f * -584f), _wgslsmith_f_op_f32(f32(-1f) * -1885f), arg_3.b.x)), _wgslsmith_f_op_f32(-arg_0.e.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -691f) * _wgslsmith_f_op_f32(-2146f + arg_0.e.a)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_3.e.a))))));
    return ~global3.a.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(func_5(func_1(vec2<bool>(true, true)), _wgslsmith_add_vec4_i32(abs(u_input.a), u_input.b), select(func_1(vec2<bool>(global3.a.d, false)).a.xy, select(vec2<bool>(true, global3.a.d), vec2<bool>(global3.a.c, true), !vec2<bool>(global3.a.d, global3.a.d)), countOneBits(global0[_wgslsmith_index_u32(4294967295u, 23u)]) >= 1u), func_1(vec2<bool>(global3.a.d, !global3.a.c))), func_2(vec3<u32>(8043u, 17493u, countOneBits(global3.d >> (14950u % 32u)))), _wgslsmith_mod_i32(-18131i, global3.a.b), -31287i);
    let var_1 = _wgslsmith_sub_i32(~var_0.x, _wgslsmith_sub_i32(select(reverseBits(0i), global3.a.b, true), 62868i));
    let var_2 = vec3<bool>(false, true, any(select(vec2<bool>(select(false, false, true), true), vec2<bool>(global0[_wgslsmith_index_u32(0u, 23u)] > global3.d, true), !global3.a.c)));
    var_0 = vec4<i32>(2147483647i, i32(-1i) * -30648i, -13207i, u_input.a.x);
    global0 = array<u32, 23>();
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1052f, -185f))))), global3.b.x));
    global2 = array<Struct_2, 10>();
    var var_4 = var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(min(vec3<u32>(global0[_wgslsmith_index_u32(0u, 23u)], 44445u, 32373u), vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(0u, 23u)], 21234u)), ~vec3<u32>(28653u, global0[_wgslsmith_index_u32(4294967295u, 23u)], 21968u)), vec3<u32>(global3.d, 1u, 4294967295u)), vec3<u32>(38286u, ~1u, global3.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(global3.c, -542f)))))));
}

