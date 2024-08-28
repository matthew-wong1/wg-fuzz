struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_5 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_2 = Struct_2(328u);

var<private> global2: array<f32, 16> = array<f32, 16>(780f, 408f, -1320f, 199f, -890f, 405f, 746f, 1000f, 695f, 1381f, 422f, 1296f, 186f, -447f, -116f, -1000f);

var<private> global3: vec3<f32> = vec3<f32>(981f, -214f, 348f);

var<private> global4: array<u32, 27>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 16u)] - 175f))), -1390f, _wgslsmith_f_op_f32(floor(158f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.x + global3.x), _wgslsmith_div_f32(global3.x, -1000f)))) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-1097f, global3.x)))), 697f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-1705f, global3.x))))))));
    global4 = array<u32, 27>();
    let var_1 = Struct_2(11628u);
    var var_2 = Struct_3(arg_3);
    var var_3 = arg_3;
    return select(arg_1.a, var_2.a.a, true);
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<bool>, arg_2: vec3<i32>, arg_3: i32) -> u32 {
    var var_0 = 0u;
    var var_1 = _wgslsmith_dot_vec2_i32(-vec2<i32>(-71520i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(arg_3, u_input.d.x, -2147483647i, 50915i), vec4<i32>(-1i, u_input.d.x, arg_2.x, -2147483647i)), ~(~(-32602i))), firstTrailingBit(_wgslsmith_div_vec2_i32(u_input.d.zz, vec2<i32>(_wgslsmith_clamp_i32(-1i, arg_3, -79523i), -2147483647i))));
    global2 = array<f32, 16>();
    global0 = all(vec4<bool>(any(arg_1.xz), any(arg_1.zw), any(vec3<bool>(true, arg_1.x, true)), -_wgslsmith_clamp_i32(u_input.d.x, arg_2.x, 2147483647i) != -(~(-25904i))));
    var var_2 = Struct_4(firstLeadingBit(~(vec3<i32>(0i, arg_3, u_input.d.x) | vec3<i32>(arg_3, arg_3, 4567i))), Struct_1(any(select(select(arg_1, arg_1, false), !vec4<bool>(arg_1.x, false, arg_1.x, false), vec4<bool>(arg_1.x, false, false, false)))), Struct_2(~global1.a));
    return select(_wgslsmith_div_u32(abs(4294967295u), var_2.c.a), _wgslsmith_div_u32(u_input.b.x, ~1u), abs(1i) > _wgslsmith_mult_i32(-arg_2.x, 2147483647i));
}

fn func_2(arg_0: i32, arg_1: vec2<f32>) -> Struct_5 {
    global1 = Struct_2(2839u);
    global1 = Struct_2(_wgslsmith_clamp_u32(u_input.b.x, ~reverseBits(u_input.b.x & global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.c, 27u)], 27u)]), func_4(~(vec4<u32>(1u, 0u, 37698u, u_input.c) | vec4<u32>(65827u, 16514u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(43604u, 27u)], 27u)], 27u)], 0u)), vec4<bool>(true, func_3(vec4<u32>(1u, 4294967295u, 1u, 68245u), Struct_1(true), Struct_1(false), Struct_1(false)), true, all(vec2<bool>(true, false))), vec3<i32>(arg_0, _wgslsmith_sub_i32(0i, 24570i), ~23829i), 4158i)));
    global4 = array<u32, 27>();
    let var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1795f, -372f, -279f, arg_1.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(u_input.c, 16u)], global2[_wgslsmith_index_u32(29147u, 16u)], arg_1.x, global3.x))))))));
    let var_1 = abs(firstLeadingBit(vec4<u32>(_wgslsmith_clamp_u32(global4[_wgslsmith_index_u32(global1.a, 27u)], 0u, 43554u) | _wgslsmith_dot_vec2_u32(vec2<u32>(global1.a, global4[_wgslsmith_index_u32(global1.a, 27u)]), vec2<u32>(0u, 0u)), 38171u, abs(1u), 9884u)));
    return Struct_5(u_input.d.zy);
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: vec4<f32>, arg_3: Struct_5) -> bool {
    let var_0 = !(!select(select(select(vec3<bool>(true, true, arg_0.a), vec3<bool>(true, true, true), vec3<bool>(arg_0.a, arg_0.a, true)), vec3<bool>(false, arg_0.a, true), true), select(select(vec3<bool>(arg_0.a, false, false), vec3<bool>(arg_0.a, arg_0.a, arg_0.a), true), vec3<bool>(arg_0.a, true, true), any(vec3<bool>(true, arg_0.a, arg_0.a))), !select(vec3<bool>(arg_0.a, arg_0.a, true), vec3<bool>(false, true, false), false)));
    var var_1 = u_input.d.x;
    return var_0.x;
}

fn func_1(arg_0: i32, arg_1: vec4<f32>) -> Struct_4 {
    var var_0 = abs(abs(~vec4<u32>(global1.a, u_input.b.x, global1.a, global4[_wgslsmith_index_u32(1u, 27u)])) >> (reverseBits(vec4<u32>(global4[_wgslsmith_index_u32(1u, 27u)], global1.a, 5704u, u_input.a.x)) % vec4<u32>(32u))) << (vec4<u32>(~(~(~14759u)), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, global4[_wgslsmith_index_u32(0u, 27u)], u_input.b.x, 6706u), vec4<u32>(1u, 28366u, 66170u, 4294967295u)) >> (1u % 32u), ~87073u, countOneBits(global1.a)) % vec4<u32>(32u));
    var var_1 = vec3<f32>(899f, _wgslsmith_f_op_f32(-global3.x), _wgslsmith_div_f32(global2[_wgslsmith_index_u32(~1u, 16u)], _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.x, 1000f)))))));
    var var_2 = Struct_1(false);
    var var_3 = !vec4<bool>(var_2.a, true, true, func_5(Struct_1(all(vec4<bool>(false, var_2.a, false, var_2.a))), 0i, vec4<f32>(_wgslsmith_f_op_f32(min(1167f, arg_1.x)), 1646f, -1145f, _wgslsmith_f_op_f32(f32(-1f) * -1352f)), func_2(~38488i, _wgslsmith_f_op_vec2_f32(-var_1.yx))));
    let var_4 = ~(~((vec4<u32>(global1.a, 13015u, u_input.b.x, 107412u) | vec4<u32>(var_0.x, 1u, 4294967295u, 1u)) & ~vec4<u32>(global1.a, 1u, 7959u, 55442u))) << (vec4<u32>(~38635u, select(_wgslsmith_mod_u32(abs(81023u), ~u_input.b.x), ~(~84902u), all(select(vec4<bool>(var_2.a, var_3.x, false, false), vec4<bool>(true, var_3.x, var_2.a, false), vec4<bool>(false, var_3.x, false, true)))), ~func_4(_wgslsmith_add_vec4_u32(vec4<u32>(65614u, u_input.b.x, u_input.c, 13365u), vec4<u32>(var_0.x, 74664u, 0u, 25629u)), vec4<bool>(var_3.x, var_2.a, true, var_2.a), -vec3<i32>(-11181i, -22985i, u_input.d.x), 1i), ~_wgslsmith_div_u32(var_0.x >> (4294967295u % 32u), 1u)) % vec4<u32>(32u));
    return Struct_4(vec3<i32>(-1i, -min(-1i, u_input.d.x), abs(-10759i)), Struct_1(var_2.a), Struct_2(_wgslsmith_sub_u32(~u_input.b.x, global1.a)));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_4) -> vec3<u32> {
    let var_0 = arg_1;
    global3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, -133f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -917f), global2[_wgslsmith_index_u32(32167u, 16u)], !arg_1.b.a)))));
    var var_1 = global1.a;
    global0 = _wgslsmith_mod_u32(max(arg_0.a, ~0u) >> (1u % 32u), ~(~(~arg_0.a))) >= ~arg_0.a;
    let var_2 = all(vec2<bool>(var_0.b.a, select(func_3(countOneBits(vec4<u32>(4294967295u, global1.a, u_input.b.x, 8502u)), var_0.b, Struct_1(var_0.b.a), func_1(-20796i, vec4<f32>(1378f, global3.x, 374f, -718f)).b), true, true)));
    return abs(vec3<u32>(global4[_wgslsmith_index_u32(1u, 27u)], global1.a, 16565u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(countOneBits(u_input.d.x), firstLeadingBit(_wgslsmith_sub_i32(u_input.d.x, i32(-1i) * -49737i) >> ((min(global4[_wgslsmith_index_u32(u_input.a.x, 27u)], 10932u) << (select(0u, global1.a, false) % 32u)) % 32u)), -u_input.d.x);
    var var_1 = func_6(Struct_2(abs(0u)), func_1(u_input.d.x, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1338f, global2[_wgslsmith_index_u32(0u, 16u)], -381f, 1980f)))))) >> (~vec3<u32>(~_wgslsmith_dot_vec2_u32(u_input.a, u_input.b), ~67263u ^ ~u_input.c, 4294967295u) % vec3<u32>(32u));
    global1 = func_1(~(select(_wgslsmith_mod_i32(u_input.d.x, -73147i), min(2147483647i, -7709i), func_1(-2147483647i, vec4<f32>(-1187f, 420f, global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(49676u, 27u)], 16u)], global2[_wgslsmith_index_u32(global1.a, 16u)])).b.a) << (u_input.b.x % 32u)), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global3.x, -819f))), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(27216u, 16u)]), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(max(-199f, -1098f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(2358f)), _wgslsmith_f_op_f32(531f - -1351f), func_1(var_0.x, vec4<f32>(-1000f, 2053f, 1983f, -1000f)).b.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global2[_wgslsmith_index_u32(6929u, 16u)], global2[_wgslsmith_index_u32(4294967295u, 16u)], global2[_wgslsmith_index_u32(u_input.a.x, 16u)], global2[_wgslsmith_index_u32(9602u, 16u)]), vec4<f32>(global2[_wgslsmith_index_u32(13738u, 16u)], -1343f, -665f, -574f)))))).c;
    let var_2 = func_1(-34795i, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1223f, -1111f, 272f, 1306f))), vec4<f32>(-199f, 1302f, 1741f, 1625f), true))))).c;
    global3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global3.x))), -965f, global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(var_2.a, 83201u), 1u), 16u)]) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global3.x, global2[_wgslsmith_index_u32(u_input.c, 16u)], global2[_wgslsmith_index_u32(4294967295u, 16u)]))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(1u, 16u)], 869f, -1603f))) - vec3<f32>(_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(var_2.a, 16u)])), global2[_wgslsmith_index_u32(4294967295u, 16u)], global2[_wgslsmith_index_u32(~67415u, 16u)]))) - vec3<f32>(global2[_wgslsmith_index_u32(func_1(~(~(-1i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(331f, global3.x, -1464f, global2[_wgslsmith_index_u32(4294967295u, 16u)]))).c.a, 16u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1420f + _wgslsmith_f_op_f32(min(-935f, 216f)))), _wgslsmith_f_op_f32(max(global3.x, 1204f))));
    var_1 = ~(reverseBits(~(~vec3<u32>(var_1.x, 36293u, var_1.x))) | (_wgslsmith_div_vec3_u32(countOneBits(vec3<u32>(var_1.x, 4294967295u, u_input.b.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, global1.a, 4087u), vec3<u32>(u_input.b.x, 1u, 14908u))) ^ vec3<u32>(var_1.x, var_1.x, ~966u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(global3.x + global3.x), vec3<u32>(11856u, ~0u, ~(~4294967295u)), var_2.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, -1283f, global3.x, global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(89321u, 27u)], 16u)]) * vec4<f32>(-328f, -979f, global3.x, -1237f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1467f, global2[_wgslsmith_index_u32(u_input.a.x, 16u)], global3.x, global2[_wgslsmith_index_u32(61477u, 16u)])) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, global2[_wgslsmith_index_u32(var_2.a, 16u)], -288f, global3.x) + vec4<f32>(1000f, global2[_wgslsmith_index_u32(0u, 16u)], global2[_wgslsmith_index_u32(4294967295u, 16u)], global3.x))))));
}

