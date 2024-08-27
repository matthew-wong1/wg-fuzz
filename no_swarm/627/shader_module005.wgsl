struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_2,
    c: Struct_1,
    d: i32,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(52323u, 1u, 4294967295u, 1u);

var<private> global1: vec3<i32>;

var<private> global2: array<bool, 26>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: u32, arg_1: vec4<bool>) -> vec2<bool> {
    var var_0 = -1593f;
    let var_1 = ~arg_0;
    let var_2 = Struct_3(u_input.c.x);
    var var_3 = arg_1.yx;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(378f)))));
    return arg_1.ww;
}

fn func_3(arg_0: vec3<bool>, arg_1: bool, arg_2: vec3<u32>) -> vec2<bool> {
    let var_0 = u_input.d;
    return vec2<bool>(_wgslsmith_f_op_f32(f32(-1f) * -1000f) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-657f))))), any(arg_0));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: u32) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.c.a))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.c.a, _wgslsmith_f_op_f32(arg_1.b.c.a + -134f)))));
    var var_1 = 1648f;
    let var_2 = -1822f;
    global0 = reverseBits(reverseBits(u_input.e)) ^ _wgslsmith_sub_vec4_u32(~(vec4<u32>(arg_2, 54027u, arg_1.b.a.x, 4294967295u) >> (u_input.e % vec4<u32>(32u))) | countOneBits(~u_input.e), u_input.e << (u_input.e % vec4<u32>(32u)));
    global1 = vec3<i32>(~(-u_input.b), ~select(arg_1.d, arg_1.d, ~54895u < global0.x), _wgslsmith_div_i32(firstLeadingBit(_wgslsmith_mod_i32(u_input.a, -12289i)), arg_1.d));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-276f, var_2))), _wgslsmith_f_op_f32(trunc(-737f)))), 975f));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<i32>) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1200f * _wgslsmith_f_op_f32(min(-568f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(337f, 779f)))))) + _wgslsmith_f_op_f32(func_4(select(select(vec2<bool>(false, true), select(vec2<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 26u)]), vec2<bool>(global2[_wgslsmith_index_u32(95450u, 26u)], false), global2[_wgslsmith_index_u32(u_input.e.x, 26u)]), !vec2<bool>(false, global2[_wgslsmith_index_u32(46350u, 26u)])), func_2(global0.x, !vec4<bool>(global2[_wgslsmith_index_u32(u_input.e.x, 26u)], false, true, global2[_wgslsmith_index_u32(6628u, 26u)])), true), Struct_4(func_3(select(vec3<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 26u)], global2[_wgslsmith_index_u32(u_input.e.x, 26u)]), vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.e.x, 26u)], true), vec3<bool>(false, true, false)), false, max(global0.ywx, u_input.e.yyx)), Struct_2(vec2<u32>(0u, u_input.e.x), 1u, Struct_1(-1000f, vec3<u32>(46706u, 59556u, 0u), vec3<bool>(global2[_wgslsmith_index_u32(global0.x, 26u)], true, global2[_wgslsmith_index_u32(0u, 26u)])), global2[_wgslsmith_index_u32(u_input.e.x, 26u)] || false), Struct_1(749f, global0.zzx, !vec3<bool>(false, false, global2[_wgslsmith_index_u32(u_input.e.x, 26u)])), u_input.a), 13875u)));
}

fn func_5(arg_0: f32, arg_1: Struct_4, arg_2: Struct_5) -> Struct_3 {
    let var_0 = select(select(vec4<bool>(any(!vec4<bool>(arg_1.b.c.c.x, true, arg_2.a.a.x, global2[_wgslsmith_index_u32(global0.x, 26u)])), true, _wgslsmith_f_op_f32(ceil(656f)) >= _wgslsmith_f_op_f32(-arg_1.b.c.a), global2[_wgslsmith_index_u32(abs(50025u), 26u)]), select(vec4<bool>(arg_1.b.d, !arg_1.b.c.c.x, arg_2.a.c.c.x & false, true), vec4<bool>(true, arg_1.c.c.x, false, arg_1.c.c.x), arg_2.a.c.c.x), arg_2.a.b.c.c.x), !vec4<bool>(firstTrailingBit(4294967295u) < (89256u << (arg_1.b.a.x % 32u)), !(!arg_1.b.c.c.x), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.e.x, 23863u) | _wgslsmith_dot_vec4_u32(u_input.e, u_input.e), 26u)], false), !(func_2(~27552u, vec4<bool>(global2[_wgslsmith_index_u32(arg_2.a.c.b.x, 26u)], true, arg_1.c.c.x, arg_2.a.b.c.c.x)).x | global2[_wgslsmith_index_u32(~abs(u_input.e.x), 26u)]));
    let var_1 = arg_2;
    let var_2 = abs(firstTrailingBit(_wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-13156i, -19224i, arg_2.a.d), ~vec3<i32>(14834i, arg_2.a.d, -1i), reverseBits(vec3<i32>(2147483647i, u_input.c.x, 1i))), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.c.x, var_1.a.d, arg_2.a.d) >> (vec3<u32>(1u, var_1.a.b.a.x, arg_1.c.b.x) % vec3<u32>(32u)), vec3<i32>(1i, 1i, 1i)))));
    global0 = ~(~u_input.e);
    var var_3 = _wgslsmith_sub_vec4_u32(~(~_wgslsmith_sub_vec4_u32(~u_input.e, abs(u_input.e))), ~vec4<u32>(~_wgslsmith_mult_u32(arg_1.b.a.x, 0u), ~4294967295u, ~global0.x & global0.x, _wgslsmith_sub_u32(1u, var_1.a.b.a.x) | global0.x));
    return Struct_3(min(i32(-1i) * -(1i << (arg_2.a.c.b.x % 32u)), _wgslsmith_div_i32(firstTrailingBit(max(u_input.c.x, arg_1.d)), _wgslsmith_add_i32(arg_1.d, ~u_input.a))));
}

fn func_6(arg_0: Struct_3, arg_1: i32) -> Struct_2 {
    global2 = array<bool, 26>();
    let var_0 = Struct_5(Struct_4(vec2<bool>(func_2(u_input.e.x | 1u, vec4<bool>(global2[_wgslsmith_index_u32(global0.x, 26u)], true, global2[_wgslsmith_index_u32(global0.x, 26u)], global2[_wgslsmith_index_u32(global0.x, 26u)])).x, !select(true, global2[_wgslsmith_index_u32(16034u, 26u)], global2[_wgslsmith_index_u32(1u, 26u)])), Struct_2(select(~vec2<u32>(0u, 1u), global0.zz, global2[_wgslsmith_index_u32(max(u_input.e.x, 1u), 26u)]), u_input.e.x, Struct_1(-1681f, vec3<u32>(u_input.e.x, 26310u, global0.x) & global0.wzx, !vec3<bool>(true, global2[_wgslsmith_index_u32(global0.x, 26u)], true)), false), Struct_1(304f, select(min(u_input.e.zxx, vec3<u32>(0u, 12871u, 17928u)), u_input.e.zww, vec3<bool>(global2[_wgslsmith_index_u32(u_input.e.x, 26u)], false, global2[_wgslsmith_index_u32(u_input.e.x, 26u)])), !select(vec3<bool>(false, false, global2[_wgslsmith_index_u32(1u, 26u)]), vec3<bool>(global2[_wgslsmith_index_u32(63713u, 26u)], false, true), false)), ~(-9223i)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -375f)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(845f - -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-266f + -1356f))))));
    let var_1 = _wgslsmith_clamp_u32(var_0.a.b.c.b.x, firstLeadingBit(~(~_wgslsmith_mult_u32(1u, global0.x))), u_input.e.x);
    var var_2 = ~_wgslsmith_sub_vec4_u32(u_input.e, u_input.e);
    var var_3 = -1i;
    return var_0.a.b;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 26>();
    let var_0 = vec3<bool>(true, global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 38207u, u_input.e.x, global0.x), u_input.e), 26u)] && all(!select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.e.x, 26u)], true, false, false), vec4<bool>(global2[_wgslsmith_index_u32(19292u, 26u)], global2[_wgslsmith_index_u32(38245u, 26u)], true, global2[_wgslsmith_index_u32(u_input.e.x, 26u)]), false)), false);
    var var_1 = func_6(func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(vec4<i32>(u_input.d, 64985i, -12286i, global1.x), vec3<i32>(global1.x, -28419i, 10693i))))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(624f, -1367f))), Struct_4(vec2<bool>(true, u_input.e.x == 1874u), Struct_2(abs(global0.zz), firstTrailingBit(56186u), Struct_1(598f, vec3<u32>(global0.x, 0u, global0.x), var_0), var_0.x), Struct_1(-373f, vec3<u32>(u_input.e.x, u_input.e.x, u_input.e.x) ^ u_input.e.zwx, var_0), u_input.a), Struct_5(Struct_4(var_0.yy, Struct_2(vec2<u32>(u_input.e.x, 2652u), global0.x, Struct_1(-568f, global0.yxw, vec3<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 26u)], true)), global2[_wgslsmith_index_u32(55225u, 26u)]), Struct_1(-184f, vec3<u32>(u_input.e.x, u_input.e.x, 4294967295u), var_0), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, global1.x, -2147483647i, -1i), vec4<i32>(34054i, -564i, global1.x, u_input.d))), vec2<f32>(_wgslsmith_f_op_f32(floor(143f)), _wgslsmith_f_op_f32(-555f * -244f)))), global1.x);
    let var_2 = func_6(Struct_3(~(-2147483647i)), firstTrailingBit(global1.x)).c.c;
    var var_3 = -2147483647i;
    var var_4 = firstLeadingBit(select(countOneBits(min(vec3<i32>(-1i, 1045i, -1i), ~vec3<i32>(global1.x, u_input.d, 14381i))), vec3<i32>(-2147483647i >> (~var_1.a.x % 32u), -_wgslsmith_clamp_i32(1i, global1.x, -54328i), -2147483647i), !any(vec2<bool>(false, global2[_wgslsmith_index_u32(global0.x, 26u)]))));
    global0 = u_input.e;
    var var_5 = func_6(func_5(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.c.a, 357f) - var_1.c.a), Struct_4(func_3(vec3<bool>(false, false, global2[_wgslsmith_index_u32(global0.x, 26u)]), true, global0.wxz), func_6(Struct_3(2147483647i), u_input.b), var_1.c, _wgslsmith_clamp_i32(-29434i, var_4.x, global1.x)), Struct_5(Struct_4(vec2<bool>(true, var_1.d), Struct_2(var_1.a, 0u, var_1.c, var_1.c.c.x), Struct_1(-375f, var_1.c.b, vec3<bool>(var_0.x, false, var_1.d)), -15283i), vec2<f32>(924f, var_1.c.a))), _wgslsmith_div_i32(-2147483647i | ~global1.x, -func_5(-1270f, Struct_4(var_1.c.c.yz, Struct_2(vec2<u32>(u_input.e.x, u_input.e.x), u_input.e.x, var_1.c, var_2.x), Struct_1(1428f, vec3<u32>(4294967295u, 6620u, 4294967295u), vec3<bool>(global2[_wgslsmith_index_u32(29539u, 26u)], global2[_wgslsmith_index_u32(var_1.c.b.x, 26u)], false)), global1.x), Struct_5(Struct_4(var_1.c.c.yx, Struct_2(vec2<u32>(1496u, var_1.c.b.x), u_input.e.x, Struct_1(489f, global0.zxw, vec3<bool>(true, false, false)), var_2.x), var_1.c, 5587i), vec2<f32>(-1000f, 1082f))).a)).c.c.x && func_2(0u, vec4<bool>(func_3(!vec3<bool>(var_2.x, false, var_0.x), true, var_1.c.b).x, var_1.d, !func_3(var_1.c.c, var_0.x, u_input.e.wxx).x, var_1.c.a == 409f)).x;
    var var_6 = Struct_4(!(!var_2.yz), func_6(func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec4<i32>(1i, u_input.c.x, u_input.a, 47978i), vec3<i32>(global1.x, global1.x, -27110i)))), Struct_4(vec2<bool>(var_2.x, true), Struct_2(vec2<u32>(4294967295u, global0.x), global0.x, Struct_1(-676f, vec3<u32>(u_input.e.x, global0.x, u_input.e.x), var_0), var_1.d), func_6(Struct_3(global1.x), 1i).c, abs(global1.x)), Struct_5(Struct_4(var_2.xy, Struct_2(global0.yy, u_input.e.x, var_1.c, global2[_wgslsmith_index_u32(u_input.e.x, 26u)]), Struct_1(989f, global0.zzz, vec3<bool>(true, true, var_2.x)), -2147483647i), vec2<f32>(1000f, var_1.c.a))), u_input.d), var_1.c, var_4.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_i32(vec3<i32>(-49364i, -17598i, firstTrailingBit(~(-1i))), vec3<i32>(_wgslsmith_mod_i32(global1.x, _wgslsmith_clamp_i32(global1.x, -4571i, -90329i)), u_input.d, 0i)));
}

