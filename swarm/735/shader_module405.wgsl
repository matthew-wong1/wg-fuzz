struct Struct_1 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec3<i32>,
    d: vec4<u32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: Struct_3,
    d: vec2<i32>,
}

struct Struct_5 {
    a: f32,
    b: vec2<u32>,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: array<f32, 7> = array<f32, 7>(-795f, -1812f, -480f, -338f, 339f, 1249f, 1000f);

var<private> global2: array<bool, 6>;

var<private> global3: vec3<bool> = vec3<bool>(true, false, false);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: vec2<u32>, arg_2: i32) -> vec4<bool> {
    let var_0 = Struct_1(vec4<f32>(global0.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(896f)) - _wgslsmith_f_op_f32(min(global0.c, global1[_wgslsmith_index_u32(0u, 7u)]))))), 221f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1149f)), _wgslsmith_div_f32(-162f, _wgslsmith_f_op_f32(-1019f + 943f)), _wgslsmith_f_op_f32(global0.a * -624f)) * _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(30495u, 7u)]), _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(global0.b.x, 7u)])), _wgslsmith_f_op_f32(-496f * arg_0)), vec3<f32>(248f, _wgslsmith_f_op_f32(f32(-1f) * -446f), _wgslsmith_f_op_f32(select(-826f, -1635f, true))))), ~(-vec3<i32>(26749i, arg_2, -4490i)), vec4<u32>(~1u, arg_1.x | max(4294967295u, firstTrailingBit(arg_1.x)), 22024u, 9649u), false);
    var var_1 = u_input.b;
    let var_2 = Struct_2(var_0, Struct_1(vec4<f32>(1000f, _wgslsmith_f_op_f32(sign(var_0.a.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-2010f + arg_0))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(143f, -183f))))), var_0.b, _wgslsmith_clamp_vec3_i32(vec3<i32>(min(var_0.c.x, arg_2), -u_input.b, 25572i | u_input.b), vec3<i32>(24934i, -3654i, 52751i), select(~vec3<i32>(u_input.b, 9760i, 2147483647i), -vec3<i32>(29628i, -2147483647i, -23808i), vec3<bool>(global2[_wgslsmith_index_u32(arg_1.x, 6u)], global3.x, false))), ~_wgslsmith_mod_vec4_u32(~vec4<u32>(var_0.d.x, arg_1.x, 1u, 27443u), ~vec4<u32>(var_0.d.x, var_0.d.x, 47174u, 0u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)) > global0.a), vec3<i32>(arg_2, var_0.c.x, _wgslsmith_dot_vec3_i32(-(~vec3<i32>(-1i, 0i, 0i)), reverseBits(vec3<i32>(u_input.b, -26152i, -17260i)))));
    return !(!select(!(!vec4<bool>(global2[_wgslsmith_index_u32(64643u, 6u)], true, global3.x, true)), !select(vec4<bool>(var_0.e, global2[_wgslsmith_index_u32(var_2.a.d.x, 6u)], global2[_wgslsmith_index_u32(4294967295u, 6u)], global2[_wgslsmith_index_u32(global0.b.x, 6u)]), vec4<bool>(var_0.e, global2[_wgslsmith_index_u32(1u, 6u)], global2[_wgslsmith_index_u32(89399u, 6u)], true), vec4<bool>(global3.x, var_2.b.e, true, false)), !select(vec4<bool>(true, var_2.b.e, true, var_0.e), vec4<bool>(true, true, true, global3.x), var_0.e)));
}

fn func_2(arg_0: vec2<u32>) -> f32 {
    var var_0 = 1i ^ (u_input.b << (arg_0.x % 32u));
    var var_1 = global3.x;
    var var_2 = select(_wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(2147483647i, 43804i, -54666i, -49856i)) << (vec4<u32>(_wgslsmith_mult_u32(arg_0.x, 50848u), _wgslsmith_dot_vec2_u32(arg_0, global0.b), u_input.a.x, ~4294967295u) % vec4<u32>(32u)), firstTrailingBit(-vec4<i32>(3310i, -3380i, u_input.b, u_input.b)), func_3(-560f, ~select(vec2<u32>(global0.b.x, arg_0.x), vec2<u32>(global0.b.x, 1u), true), _wgslsmith_add_i32(-41243i, ~u_input.b))) >> (vec4<u32>(_wgslsmith_clamp_u32(17253u, _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(0u, global0.b.x, 88176u)), ~vec3<u32>(5230u, 1u, u_input.a.x)), 1u), _wgslsmith_mod_u32(~(~global0.b.x), 1u), _wgslsmith_add_u32(34625u, u_input.c), select(u_input.a.x, arg_0.x, !(!global3.x))) % vec4<u32>(32u));
    var var_3 = 1115f;
    var var_4 = -vec4<i32>(var_2.x & 0i, reverseBits(abs(-1i)), u_input.b, u_input.b);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1194f + 346f) * global0.c);
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_4, arg_2: Struct_5, arg_3: vec4<f32>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(u_input.a))), all(!select(vec3<bool>(true, false, false), vec3<bool>(global2[_wgslsmith_index_u32(15919u, 6u)], global3.x, global2[_wgslsmith_index_u32(u_input.c, 6u)]), vec3<bool>(true, true, arg_1.c.a.x)))))));
    return !all(!vec4<bool>(global3.x & false, 69123u != arg_2.b.x, global2[_wgslsmith_index_u32(u_input.c >> (0u % 32u), 6u)], arg_1.c.a.x & global3.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(min(~(~reverseBits(~56209u)), global0.b.x), 7u)];
    var_0 = _wgslsmith_div_f32(-1000f, -587f);
    var var_1 = firstTrailingBit(abs(-(vec2<i32>(-2347i, -1200i) | vec2<i32>(u_input.b, u_input.b)) << (vec2<u32>(min(6864u, u_input.c), 4294967295u) % vec2<u32>(32u))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1837f, 159f, 599f, -900f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1[_wgslsmith_index_u32(global0.b.x, 7u)], -1000f, global1[_wgslsmith_index_u32(global0.b.x, 7u)], global1[_wgslsmith_index_u32(u_input.a.x, 7u)]), vec4<f32>(1979f, 697f, 889f, global0.a))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, -469f, -333f, -191f))), vec4<bool>(global3.x, func_1(vec4<f32>(global1[_wgslsmith_index_u32(15443u, 7u)], -306f, global1[_wgslsmith_index_u32(1u, 7u)], 685f), Struct_4(vec4<i32>(0i, -20278i, -18017i, var_1.x), vec2<i32>(34914i, 23059i), Struct_3(vec2<bool>(true, global3.x)), vec2<i32>(15159i, var_1.x)), Struct_5(1000f, vec2<u32>(74755u, 50481u), -687f), vec4<f32>(-1115f, global1[_wgslsmith_index_u32(global0.b.x, 7u)], global1[_wgslsmith_index_u32(0u, 7u)], -1559f)), global3.x, true))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(global0.b.x, 7u)], global0.a, global0.c, global1[_wgslsmith_index_u32(4294967295u, 7u)])), vec4<f32>(-598f, global0.c, -559f, -203f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global0.a - _wgslsmith_f_op_f32(1963f + -532f)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~u_input.c, 7u)] + _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(7265u, 7u)] + 1000f)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 7u)])) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(u_input.c, 7u)]))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.c, 7u)] * global1[_wgslsmith_index_u32(0u, 7u)]), _wgslsmith_f_op_f32(141f - global0.c)), _wgslsmith_f_op_f32(global0.c + global1[_wgslsmith_index_u32(global0.b.x, 7u)]))), max(select(vec3<i32>(u_input.b, 8279i, u_input.b) << (vec3<u32>(u_input.c, global0.b.x, global0.b.x) % vec3<u32>(32u)), vec3<i32>(-696i, u_input.b, 9507i), !vec3<bool>(false, global3.x, global2[_wgslsmith_index_u32(global0.b.x, 6u)])), vec3<i32>(-u_input.b, -11486i, _wgslsmith_mod_i32(0i, 7003i))) & (vec3<i32>(-47510i, var_1.x << (global0.b.x % 32u), max(-1i, -39517i)) ^ abs(vec3<i32>(1i, var_1.x, u_input.b) << (vec3<u32>(global0.b.x, u_input.a.x, global0.b.x) % vec3<u32>(32u)))), _wgslsmith_mod_vec4_u32(abs(select(vec4<u32>(28066u, global0.b.x, u_input.a.x, 0u), vec4<u32>(4294967295u, u_input.c, u_input.c, global0.b.x), vec4<bool>(false, global2[_wgslsmith_index_u32(0u, 6u)], global3.x, false))), ~_wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.a.x, u_input.a.x, 0u), vec4<u32>(u_input.a.x, 0u, 4294967295u, u_input.c))) >> (vec4<u32>(19375u, ~_wgslsmith_mult_u32(u_input.a.x, 82649u), ~(global0.b.x << (4294967295u % 32u)), abs(_wgslsmith_mod_u32(u_input.c, 0u))) % vec4<u32>(32u)), global3.x);
    global0 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.x)), vec2<u32>(var_2.d.x, min(global0.b.x, 19509u)), 850f);
    var var_3 = var_1.x;
    let var_4 = 1u;
    global3 = !(!select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, global3.x), true), select(!vec3<bool>(var_2.e, global3.x, false), vec3<bool>(true, true, true), !vec3<bool>(var_2.e, false, var_2.e)), func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c, var_2.a.x, global0.c, 378f)), Struct_4(vec4<i32>(u_input.b, var_1.x, 2147483647i, 19674i), var_2.c.yy, Struct_3(global3.zy), var_2.c.zz), Struct_5(var_2.b.x, vec2<u32>(38599u, 749u), global0.c), _wgslsmith_f_op_vec4_f32(var_2.a + var_2.a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_2.b.x + global1[_wgslsmith_index_u32(4294967295u, 7u)]), 266f, _wgslsmith_f_op_f32(func_2(var_2.d.zy)))))), ~(~39722u >> (_wgslsmith_div_u32(countOneBits(var_4), firstTrailingBit(48660u)) % 32u)), global1[_wgslsmith_index_u32(~firstLeadingBit(4294967295u), 7u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(var_2.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.a.yyw)))) - var_2.a.yxz));
}

