struct Struct_1 {
    a: f32,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(true, vec2<i32>(-8433i, -20712i), vec4<f32>(1000f, 176f, 743f, -712f), Struct_1(597f, false, 875f)), Struct_2(true, vec2<i32>(1i, 26392i), vec4<f32>(-1705f, 1151f, 833f, -730f), Struct_1(282f, false, 150f)), Struct_2(false, vec2<i32>(-1792i, 2147483647i), vec4<f32>(-121f, 106f, 1101f, -1915f), Struct_1(-634f, false, 649f)));

var<private> global1: array<u32, 6> = array<u32, 6>(1u, 52117u, 72521u, 46508u, 18562u, 42933u);

var<private> global2: array<vec2<f32>, 16> = array<vec2<f32>, 16>(vec2<f32>(-337f, 768f), vec2<f32>(779f, -702f), vec2<f32>(-1319f, -1302f), vec2<f32>(-978f, 409f), vec2<f32>(-121f, 564f), vec2<f32>(-793f, -322f), vec2<f32>(-429f, -403f), vec2<f32>(-962f, 176f), vec2<f32>(-924f, 122f), vec2<f32>(-790f, 702f), vec2<f32>(973f, -870f), vec2<f32>(1612f, -1000f), vec2<f32>(1589f, 1003f), vec2<f32>(280f, -1601f), vec2<f32>(470f, -2019f), vec2<f32>(814f, -461f));

var<private> global3: array<f32, 26>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: Struct_3, arg_3: Struct_1) -> i32 {
    var var_0 = Struct_2(true, u_input.d.ww, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(941f, -1751f, arg_2.a, -935f))))), arg_3);
    let var_1 = 2147483647i;
    var var_2 = arg_2;
    global1 = array<u32, 6>();
    var var_3 = abs(i32(-1i) * -(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 1i), vec2<i32>(-32878i, var_1)) & ~var_0.b.x));
    return -max(var_1, min(_wgslsmith_sub_i32(52962i, -16331i), 1i) ^ reverseBits(firstTrailingBit(-561i)));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: u32) -> vec4<u32> {
    var var_0 = select(vec4<bool>(true, any(vec3<bool>(true, true, true)), all(select(!vec3<bool>(false, arg_1.b, arg_1.b), vec3<bool>(false, true, arg_1.b), select(vec3<bool>(arg_1.b, false, arg_1.b), vec3<bool>(arg_1.b, true, false), false))), reverseBits(u_input.d.x) > func_3(Struct_3(global3[_wgslsmith_index_u32(u_input.c, 26u)], 74950u), ~(-1i), Struct_3(arg_1.c, arg_2), arg_1)), !(!vec4<bool>(all(vec2<bool>(true, arg_1.b)), false, arg_1.b, true)), !(!vec4<bool>(u_input.b >= -39559i, true, arg_1.b, true)));
    return ~vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, _wgslsmith_mult_u32(u_input.c, 1u)), ~firstLeadingBit(vec2<u32>(6733u, 4294967295u))), abs(1u), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_2, 4294967295u, u_input.e), vec4<u32>(global1[_wgslsmith_index_u32(81865u, 6u)], 41141u, 30610u, u_input.c))), _wgslsmith_add_u32(u_input.c, firstLeadingBit(max(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(63387u, 6u)], 6u)], global1[_wgslsmith_index_u32(u_input.c, 6u)]))));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: bool) -> Struct_2 {
    global3 = array<f32, 26>();
    global1 = array<u32, 6>();
    let var_0 = Struct_3(104f, _wgslsmith_mult_u32(0u, countOneBits(_wgslsmith_sub_u32(4294967295u, u_input.c | global1[_wgslsmith_index_u32(u_input.c, 6u)]))));
    global1 = array<u32, 6>();
    var var_1 = Struct_2(-2810i >= u_input.d.x, _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(u_input.b, 7757i), _wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.d.zx, vec2<i32>(-1i, 0i), vec2<i32>(-2147483647i, u_input.d.x)), ~u_input.d.yw)), u_input.d.ww), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1.a, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.b, 6u)], 26u)], 836f, 1651f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, arg_1.c, arg_1.a, var_0.a) * vec4<f32>(1557f, -734f, global3[_wgslsmith_index_u32(var_0.b, 26u)], var_0.a)))))), Struct_1(1000f, arg_3, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(0u, 26u)], 499f)), var_0.a))));
    return Struct_2(!(_wgslsmith_f_op_f32(var_1.d.a - _wgslsmith_f_op_f32(f32(-1f) * -1657f)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.d.c, var_0.a)))), _wgslsmith_sub_vec2_i32(abs(vec2<i32>(_wgslsmith_mult_i32(var_1.b.x, u_input.d.x), -26531i)), -var_1.b), var_1.c, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1817f) + var_1.c.x), all(vec4<bool>(!var_1.d.b, all(vec3<bool>(arg_3, arg_3, arg_1.b)), arg_3, true)), var_1.c.x));
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: Struct_3, arg_3: Struct_1) -> f32 {
    global1 = array<u32, 6>();
    var var_0 = !(arg_2.b <= _wgslsmith_mult_u32(1u, max(abs(106231u), 1u)));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-977f + _wgslsmith_f_op_f32(f32(-1f) * -542f))), false || arg_3.b, _wgslsmith_f_op_f32(func_4(~vec4<u32>(12855u, 5475u, arg_2.b, 16911u), arg_3, !vec4<bool>(arg_0.d.b, true, arg_0.d.b, true), all(vec3<bool>(true, true, true))).d.c + 1622f));
    let var_2 = !vec3<bool>(true, !(arg_3.b & true), false);
    let var_3 = vec3<i32>(-1i, _wgslsmith_dot_vec3_i32(-(u_input.d.wxy << ((vec3<u32>(u_input.e, 41227u, 24208u) << (vec3<u32>(global1[_wgslsmith_index_u32(arg_2.b, 6u)], arg_2.b, u_input.e) % vec3<u32>(32u))) % vec3<u32>(32u))), select(u_input.d.wwy, u_input.d.yzy, !any(vec2<bool>(var_2.x, false)))), _wgslsmith_div_i32(~select(select(u_input.d.x, -2147483647i, true), max(arg_0.b.x, arg_0.b.x), var_2.x), -2147483647i));
    return _wgslsmith_f_op_f32(-arg_0.d.c);
}

fn func_6(arg_0: u32, arg_1: Struct_1, arg_2: i32, arg_3: i32) -> u32 {
    let var_0 = firstTrailingBit(global1[_wgslsmith_index_u32(~1u, 6u)]);
    var var_1 = -1i;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.a)) + _wgslsmith_f_op_f32(-1f)) - -1022f), all(select(select(vec2<bool>(arg_1.b, true), vec2<bool>(arg_1.b, true), !vec2<bool>(arg_1.b, true)), select(vec2<bool>(arg_1.b, arg_1.b), !vec2<bool>(arg_1.b, true), vec2<bool>(true, false)), true)), _wgslsmith_f_op_f32(-arg_1.c));
    let var_3 = select(vec2<bool>(_wgslsmith_mod_u32(22956u, _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(58568u, 6u)], var_0)) < ~(~var_0), var_2.b), !vec2<bool>(true, !(!arg_1.b)), var_2.b);
    var var_4 = u_input.e;
    return abs(28869u >> (~u_input.e % 32u));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: bool) -> vec4<bool> {
    let var_0 = func_6(~(~arg_1.x), Struct_1(_wgslsmith_f_op_f32(func_5(func_4(func_2(global2[_wgslsmith_index_u32(30596u, 16u)], Struct_1(-1557f, false, arg_2.c.x), u_input.c), Struct_1(global3[_wgslsmith_index_u32(arg_1.x, 26u)], false, 605f), !vec4<bool>(true, arg_3, arg_3, false), arg_2.a), !(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(98761u, 6u)], 26u)] >= 1127f), Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -903f), 4294967295u), Struct_1(_wgslsmith_f_op_f32(sign(arg_2.c.x)), !arg_2.a, 334f))), !(!arg_2.d.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 6u)], 26u)])) + _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(11275u, 26u)] * global3[_wgslsmith_index_u32(arg_1.x, 26u)])) - _wgslsmith_f_op_f32(abs(-584f)))), max(i32(-1i) * -2147483647i, arg_0.x), u_input.b);
    global0 = array<Struct_2, 3>();
    global2 = array<vec2<f32>, 16>();
    let var_1 = _wgslsmith_add_vec2_i32(reverseBits(-min(vec2<i32>(1i, -3530i), vec2<i32>(arg_2.b.x, -21578i))), vec2<i32>(arg_0.x, ~_wgslsmith_mod_i32(-1i, arg_2.b.x) ^ u_input.d.x));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1465f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-495f * arg_2.c.x)))));
    return !select(vec4<bool>(all(!vec4<bool>(arg_3, arg_3, arg_3, true)), arg_2.a, true, all(!vec3<bool>(false, arg_3, false))), vec4<bool>(true, arg_2.a, false, select(all(vec3<bool>(false, false, true)), arg_3, all(vec4<bool>(false, true, false, arg_3)))), !select(!vec4<bool>(false, arg_3, arg_2.d.b, false), !vec4<bool>(arg_2.a, false, arg_3, false), arg_2.a));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 3>();
    global2 = array<vec2<f32>, 16>();
    let var_0 = vec4<bool>(any(!func_1(_wgslsmith_sub_vec3_i32(u_input.d.yzz, u_input.d.zww), ~vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 6u)], 6u)], global1[_wgslsmith_index_u32(4294967295u, 6u)]), Struct_2(true, u_input.d.zy, vec4<f32>(336f, 2031f, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 6u)], 26u)], global3[_wgslsmith_index_u32(u_input.e, 26u)]), Struct_1(global3[_wgslsmith_index_u32(0u, 26u)], true, 737f)), true)), true, ~(~7922u) != u_input.e, any(vec2<bool>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(26101u, 26u)]) <= _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.c, 26u)] + -668f), any(vec2<bool>(false, true)) && true)));
    var var_1 = global2[_wgslsmith_index_u32(1u & abs(global1[_wgslsmith_index_u32(~(~_wgslsmith_add_u32(global1[_wgslsmith_index_u32(1u, 6u)], u_input.c)), 6u)]), 16u)];
    var var_2 = Struct_1(_wgslsmith_f_op_f32(func_5(global0[_wgslsmith_index_u32(~abs(_wgslsmith_mult_u32(u_input.c, 15542u)), 3u)], _wgslsmith_mult_i32(1i >> (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 6u)], 6u)] % 32u), 48718i) != 0i, Struct_3(var_1.x, firstLeadingBit(func_2(vec2<f32>(1000f, var_1.x), Struct_1(-124f, true, global3[_wgslsmith_index_u32(32632u, 26u)]), 1u).x)), Struct_1(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(47790u, global1[_wgslsmith_index_u32(154436u, 6u)]), vec2<u32>(4294967295u, u_input.e)), min(vec2<u32>(4294967295u, 52128u), vec2<u32>(8047u, 4294967295u))), 26u)], !any(var_0), 1379f))), !var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1366f)));
    let var_3 = true;
    global1 = array<u32, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(-803f, u_input.a >> (_wgslsmith_add_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~7424u, 6u)], 6u)] ^ (1u | u_input.e), ~(~2607u)) % 32u));
}

