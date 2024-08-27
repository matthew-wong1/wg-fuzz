struct Struct_1 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: f32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<vec2<bool>, 18>;

var<private> global2: array<f32, 24> = array<f32, 24>(1305f, -545f, -828f, 675f, -1371f, -463f, 1260f, -1110f, -1554f, 920f, -713f, -139f, 1044f, 2717f, 1797f, 102f, 1115f, -1105f, -1160f, -1000f, 678f, 299f, 1000f, -1168f);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: f32) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2[_wgslsmith_index_u32(global0.x, 24u)], 1791f, 721f, 573f), _wgslsmith_div_vec4_f32(arg_0.c.a, vec4<f32>(-584f, 489f, -2890f, arg_2)), all(arg_0.b)))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_2 - global2[_wgslsmith_index_u32(u_input.a, 24u)]), global2[_wgslsmith_index_u32(u_input.a, 24u)], _wgslsmith_f_op_f32(select(arg_2, arg_0.c.c.x, arg_0.b.x)))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(arg_0.c.a)), arg_0.c.c, vec4<bool>(arg_0.b.x, arg_0.a.x, true, false)))), vec4<f32>(arg_0.c.a.x, _wgslsmith_f_op_f32(arg_0.c.a.x - global2[_wgslsmith_index_u32(u_input.a, 24u)]), _wgslsmith_f_op_f32(trunc(arg_0.c.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-286f + -1093f))), false)));
    global0 = vec2<u32>(abs(~global0.x), _wgslsmith_sub_u32(u_input.a, 1u));
    let var_1 = 1i | _wgslsmith_dot_vec3_i32(~countOneBits(vec3<i32>(5671i, 4673i, u_input.b)), -min(vec3<i32>(70339i, u_input.b, u_input.b), min(vec3<i32>(-1i, 12776i, 53265i), vec3<i32>(u_input.b, arg_1, 0i))));
    let var_2 = vec3<u32>(_wgslsmith_dot_vec4_u32(~(~max(vec4<u32>(u_input.a, u_input.a, 70419u, 87598u), vec4<u32>(1u, u_input.a, u_input.a, 1u))), vec4<u32>(global0.x, u_input.a, 6903u, ~global0.x)), _wgslsmith_mod_u32(1u, ~u_input.a), global0.x);
    return _wgslsmith_dot_vec4_u32(~(~(vec4<u32>(1u, u_input.a, 1u, u_input.a) & vec4<u32>(u_input.a, u_input.a, 1u, 14828u))) & vec4<u32>(~firstTrailingBit(38042u), var_2.x, global0.x, var_2.x), firstLeadingBit(vec4<u32>(u_input.a, var_2.x, var_2.x, global0.x) | vec4<u32>(0u, 4294967295u, u_input.a, 4294967295u)) << ((~(vec4<u32>(58420u, global0.x, var_2.x, global0.x) ^ vec4<u32>(1u, u_input.a, u_input.a, global0.x)) & vec4<u32>(var_2.x, max(var_2.x, 9050u), ~global0.x, firstTrailingBit(var_2.x))) % vec4<u32>(32u)));
}

fn func_2(arg_0: vec4<i32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(func_3(Struct_3(global1[_wgslsmith_index_u32(~21388u, 18u)], !global1[_wgslsmith_index_u32(25502u, 18u)], Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(0u, 24u)], -756f, -298f, -280f), vec4<f32>(-199f, global2[_wgslsmith_index_u32(34177u, 24u)], global2[_wgslsmith_index_u32(u_input.a, 24u)], -429f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1129f, -2273f, global2[_wgslsmith_index_u32(global0.x, 24u)]) - vec3<f32>(global2[_wgslsmith_index_u32(u_input.a, 24u)], global2[_wgslsmith_index_u32(global0.x, 24u)], 465f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1273f, -454f, 287f, 2070f), vec4<f32>(864f, -257f, -829f, global2[_wgslsmith_index_u32(7775u, 24u)]))))), -_wgslsmith_dot_vec2_i32(vec2<i32>(54893i, -27642i), vec2<i32>(31557i, 0i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(firstTrailingBit(37640u), 24u)] - global2[_wgslsmith_index_u32(global0.x | global0.x, 24u)]), 307f)), 24u)] - 1000f);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(432f, global2[_wgslsmith_index_u32(4294967295u, 24u)], global2[_wgslsmith_index_u32(global0.x, 24u)]), vec3<f32>(-250f, global2[_wgslsmith_index_u32(37696u, 24u)], global2[_wgslsmith_index_u32(u_input.a, 24u)])))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1000f, global2[_wgslsmith_index_u32(u_input.a, 24u)], global2[_wgslsmith_index_u32(1u, 24u)]), vec3<f32>(global2[_wgslsmith_index_u32(1u, 24u)], _wgslsmith_f_op_f32(round(1716f)), global2[_wgslsmith_index_u32(~global0.x, 24u)]))))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1651f, -201f, global2[_wgslsmith_index_u32(5508u, 24u)], var_1.x)) + vec4<f32>(global2[_wgslsmith_index_u32(global0.x, 24u)], global2[_wgslsmith_index_u32(4294967295u, 24u)], global2[_wgslsmith_index_u32(u_input.a, 24u)], -787f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-431f, -598f, var_1.x, var_1.x))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 24u)], 505f, 622f, var_1.x) + vec4<f32>(global2[_wgslsmith_index_u32(1u, 24u)], -580f, -388f, var_1.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1779f, global2[_wgslsmith_index_u32(30475u, 24u)], 728f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 773f, global2[_wgslsmith_index_u32(global0.x, 24u)])) * vec3<f32>(var_1.x, global2[_wgslsmith_index_u32(~global0.x, 24u)], 790f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.x, var_1.x, 1000f, global2[_wgslsmith_index_u32(u_input.a, 24u)])))))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(754f, -196f, global2[_wgslsmith_index_u32(126694u, 24u)], global2[_wgslsmith_index_u32(global0.x, 24u)]))))))));
    let var_3 = Struct_4(Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(var_2.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1855f, -1342f, var_2.a.x, var_1.x)))))), vec3<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 24u)] * _wgslsmith_f_op_f32(var_1.x + var_2.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(896f - -668f)), 982f), _wgslsmith_f_op_vec4_f32(var_2.a * vec4<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 24u)]), -1062f, _wgslsmith_f_op_f32(select(1000f, var_2.b.x, false)), _wgslsmith_f_op_f32(-137f * global2[_wgslsmith_index_u32(1u, 24u)])))));
    global0 = abs(~(abs(~vec2<u32>(620u, global0.x)) & ~(vec2<u32>(global0.x, global0.x) << (vec2<u32>(global0.x, 4294967295u) % vec2<u32>(32u)))));
    return Struct_2(var_3.a, arg_0.xw, vec3<i32>(i32(-1i) * -45447i, abs(2147483647i), ~32657i));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>) -> vec3<f32> {
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1152f, _wgslsmith_div_f32(arg_0.a.c.x, -972f)))) - _wgslsmith_f_op_f32(sign(arg_0.a.a.x)));
    let var_2 = var_1;
    var var_3 = Struct_4(Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(arg_0.a.a, _wgslsmith_f_op_vec4_f32(arg_0.a.c - arg_0.a.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(arg_0.a.c, arg_0.a.a) - arg_0.a.c), select(vec4<bool>(var_0, false, false, var_0), select(arg_1, vec4<bool>(false, true, true, true), arg_1.x), select(arg_1, arg_1, arg_1)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1638f, -1000f, 687f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global2[_wgslsmith_index_u32(76023u, 24u)], 1664f, -709f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, var_2, -249f) - vec3<f32>(496f, global2[_wgslsmith_index_u32(u_input.a, 24u)], 104f)))), arg_0.a.c));
    global2 = array<f32, 24>();
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-643f + global2[_wgslsmith_index_u32(global0.x, 24u)])), _wgslsmith_f_op_f32(f32(-1f) * -1114f), -1000f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(869f, global2[_wgslsmith_index_u32(1u, 24u)], -2286f) + _wgslsmith_f_op_vec3_f32(select(var_3.a.a.wzx, vec3<f32>(913f, -1530f, -465f), arg_1.x))))));
}

fn func_5(arg_0: Struct_3) -> Struct_1 {
    global2 = array<f32, 24>();
    global1 = array<vec2<bool>, 18>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.b.x)));
    let var_1 = true;
    let var_2 = firstTrailingBit(~37633i);
    return Struct_1(arg_0.c.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_0.c.a.wxy, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -753f), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a, 24u)]), _wgslsmith_f_op_f32(select(arg_0.c.c.x, global2[_wgslsmith_index_u32(78245u, 24u)], true))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0))), 1000f, _wgslsmith_f_op_f32(-824f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(20978u, 24u)]), -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.c.a.x))))));
}

fn func_1(arg_0: vec4<i32>) -> u32 {
    global0 = ~(~firstLeadingBit(~max(vec2<u32>(4294967295u, u_input.a), vec2<u32>(4294967295u, global0.x))));
    global1 = array<vec2<bool>, 18>();
    var var_0 = func_5(Struct_3(vec2<bool>(all(vec4<bool>(true, false, false, false)), 1u > (u_input.a & u_input.a)), !select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(true, true), true), Struct_1(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global2[_wgslsmith_index_u32(global0.x, 24u)], global2[_wgslsmith_index_u32(4294967295u, 24u)], global2[_wgslsmith_index_u32(15875u, 24u)], global2[_wgslsmith_index_u32(0u, 24u)]), vec4<f32>(-651f, 1816f, global2[_wgslsmith_index_u32(u_input.a, 24u)], global2[_wgslsmith_index_u32(u_input.a, 24u)]))), _wgslsmith_f_op_vec3_f32(func_4(func_2(vec4<i32>(-5522i, u_input.b, arg_0.x, arg_0.x)), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1294f, global2[_wgslsmith_index_u32(u_input.a, 24u)], global2[_wgslsmith_index_u32(50399u, 24u)], global2[_wgslsmith_index_u32(u_input.a, 24u)])))));
    var_0 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.c * vec4<f32>(109f, -2373f, 1743f, -1682f))))), _wgslsmith_f_op_vec4_f32(var_0.a * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2[_wgslsmith_index_u32(global0.x, 24u)], -1000f, global2[_wgslsmith_index_u32(16726u, 24u)], global2[_wgslsmith_index_u32(1u, 24u)]))))), _wgslsmith_f_op_vec3_f32(-var_0.a.wyw), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(780f, global2[_wgslsmith_index_u32(u_input.a, 24u)], 2704f, 1118f)) * _wgslsmith_f_op_vec4_f32(-func_5(Struct_3(vec2<bool>(true, false), global1[_wgslsmith_index_u32(global0.x, 18u)], Struct_1(var_0.c, vec3<f32>(var_0.a.x, 973f, -457f), vec4<f32>(var_0.c.x, global2[_wgslsmith_index_u32(u_input.a, 24u)], -1000f, -571f)))).a))));
    global0 = _wgslsmith_div_vec2_u32(reverseBits(max(vec2<u32>(~u_input.a, global0.x), _wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(0u, global0.x)), ~vec2<u32>(11368u, 4294967295u)))), abs(abs(firstTrailingBit(vec2<u32>(152585u, u_input.a))) ^ select(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 1019u), vec2<u32>(21132u, u_input.a)), select(vec2<u32>(1u, 43194u), vec2<u32>(u_input.a, global0.x), false), !global1[_wgslsmith_index_u32(u_input.a, 18u)])));
    return 46198u >> (abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, u_input.a, global0.x, u_input.a), vec4<u32>(15079u, 9257u, global0.x, global0.x)) & max(0u, ~0u)) % 32u);
}

fn func_6(arg_0: vec3<u32>, arg_1: vec2<u32>, arg_2: u32, arg_3: Struct_1) -> vec4<f32> {
    var var_0 = Struct_4(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -844f), _wgslsmith_div_f32(231f, -1000f), _wgslsmith_f_op_f32(-arg_3.a.x), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(81988u, 24u)] - -798f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(105997u, 24u)], 226f, -228f, arg_3.c.x) + arg_3.c)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_3.a.wyw) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_3.a.x, -178f, global2[_wgslsmith_index_u32(1u, 24u)]), arg_3.a.xxx) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(arg_2, 24u)], arg_3.c.x, -525f) + vec3<f32>(404f, arg_3.b.x, -1054f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(vec4<i32>(1i, u_input.b, 2147483647i, -2147483647i)).a.c * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-580f, global2[_wgslsmith_index_u32(12447u, 24u)], 201f, 713f)))))));
    let var_1 = arg_3;
    global1 = array<vec2<bool>, 18>();
    let var_2 = 13142u;
    global2 = array<f32, 24>();
    return var_0.a.a;
}

fn func_7(arg_0: i32, arg_1: Struct_5, arg_2: Struct_1, arg_3: vec3<i32>) -> f32 {
    let var_0 = global0.x;
    var var_1 = global0.x;
    var_1 = min(12393u, global0.x);
    global1 = array<vec2<bool>, 18>();
    global2 = array<f32, 24>();
    return -1114f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<bool>, 18>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(func_7(abs(max(~u_input.b, u_input.b)), Struct_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(166f, global2[_wgslsmith_index_u32(50428u, 24u)]))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1069f, global2[_wgslsmith_index_u32(31425u, 24u)], -1948f, 484f)))), 358f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(740f, global2[_wgslsmith_index_u32(u_input.a, 24u)], global2[_wgslsmith_index_u32(u_input.a, 24u)]))), Struct_1(_wgslsmith_f_op_vec4_f32(func_6(vec3<u32>(63877u, u_input.a, global0.x), min(vec2<u32>(u_input.a, 2583u), vec2<u32>(12247u, 0u)), func_1(vec4<i32>(-1i, u_input.b, 2147483647i, -10916i)), Struct_1(vec4<f32>(-2397f, -667f, global2[_wgslsmith_index_u32(57374u, 24u)], 797f), vec3<f32>(global2[_wgslsmith_index_u32(61276u, 24u)], -1096f, global2[_wgslsmith_index_u32(25438u, 24u)]), vec4<f32>(606f, global2[_wgslsmith_index_u32(u_input.a, 24u)], 511f, 2274f)))), _wgslsmith_f_op_vec3_f32(func_4(Struct_2(Struct_1(vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 24u)], global2[_wgslsmith_index_u32(88474u, 24u)], global2[_wgslsmith_index_u32(u_input.a, 24u)], 1444f), vec3<f32>(-105f, -1039f, global2[_wgslsmith_index_u32(u_input.a, 24u)]), vec4<f32>(296f, global2[_wgslsmith_index_u32(51029u, 24u)], global2[_wgslsmith_index_u32(4294967295u, 24u)], global2[_wgslsmith_index_u32(134840u, 24u)])), vec2<i32>(-1i, u_input.b), vec3<i32>(u_input.b, u_input.b, u_input.b)), vec4<bool>(true, true, true, true))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(515f, -688f, -590f, global2[_wgslsmith_index_u32(0u, 24u)]) - vec4<f32>(global2[_wgslsmith_index_u32(global0.x, 24u)], global2[_wgslsmith_index_u32(global0.x, 24u)], global2[_wgslsmith_index_u32(53799u, 24u)], global2[_wgslsmith_index_u32(global0.x, 24u)])), vec4<f32>(global2[_wgslsmith_index_u32(41867u, 24u)], 556f, 488f, global2[_wgslsmith_index_u32(1u, 24u)]))), max(vec3<i32>(u_input.b, u_input.b, 15431i) >> (countOneBits(vec3<u32>(u_input.a, u_input.a, u_input.a)) % vec3<u32>(32u)), countOneBits(vec3<i32>(-2261i, 2147483647i, u_input.b))))), _wgslsmith_f_op_f32(sign(449f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_add_u32(6743u, 61090u), 24u)])) - global2[_wgslsmith_index_u32(select(~u_input.a, 94889u, false), 24u)]), -1772f);
    global1 = array<vec2<bool>, 18>();
    var_0 = vec4<f32>(227f, -992f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-342f)) - _wgslsmith_f_op_f32(-var_0.x)) * _wgslsmith_f_op_f32(2099f + 1001f)))), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(ceil(1244f))));
    var var_1 = -24962i;
    var var_2 = var_0.zxx;
    global2 = array<f32, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -2147483647i, u_input.b), vec3<i32>(-31856i, u_input.b, u_input.b)), _wgslsmith_clamp_i32(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 0i, 35673i, -9465i), vec4<i32>(u_input.b, u_input.b, -2147483647i, -38094i)), 1i)), 0i), ~(vec4<u32>(4294967295u, func_1(vec4<i32>(1i, -80909i, u_input.b, -1i)), countOneBits(0u), _wgslsmith_sub_u32(u_input.a, global0.x)) << (~vec4<u32>(57426u, 11494u, 31463u, u_input.a) % vec4<u32>(32u))), _wgslsmith_sub_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(12551u, u_input.a), ~vec2<u32>(4294967295u, global0.x)), ~max(~vec2<u32>(u_input.a, 0u), ~vec2<u32>(6533u, 1u))));
}

