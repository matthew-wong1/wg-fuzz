struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3>;

var<private> global1: i32;

var<private> global2: array<i32, 12> = array<i32, 12>(1i, 10136i, 17992i, -38895i, -1i, -19911i, -62747i, -11970i, 7281i, 53182i, -17627i, 1i);

var<private> global3: array<vec2<u32>, 16>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1) -> vec4<i32> {
    let var_0 = Struct_1(!(!(!(!vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 3u)], true, global0[_wgslsmith_index_u32(46543u, 3u)], arg_0.b)))), false, true, 2147483647i < (reverseBits(reverseBits(global2[_wgslsmith_index_u32(u_input.a, 12u)])) >> (_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)), vec2<u32>(u_input.a, 40448u)) % 32u)));
    var var_1 = var_0;
    let var_2 = ~_wgslsmith_mod_u32(reverseBits(_wgslsmith_mod_u32(u_input.a, 0u)), ~(~u_input.a)) ^ max(firstLeadingBit(1u ^ ~u_input.a), _wgslsmith_dot_vec4_u32(firstTrailingBit(min(vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u), vec4<u32>(u_input.a, 1u, u_input.a, u_input.a))), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 3716u, u_input.a, u_input.a) << (vec4<u32>(u_input.a, 16863u, u_input.a, u_input.a) % vec4<u32>(32u)), vec4<u32>(u_input.a, 1u, 1386u, u_input.a))));
    global0 = array<bool, 3>();
    var var_3 = vec4<f32>(481f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(221f + 1f) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -654f)))), _wgslsmith_f_op_f32(step(285f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -113f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-660f)) * _wgslsmith_f_op_f32(f32(-1f) * -838f)))))));
    return -countOneBits(vec4<i32>(~global2[_wgslsmith_index_u32(4294967295u, 12u)], countOneBits(global2[_wgslsmith_index_u32(1u, 12u)]), 0i, firstTrailingBit(global2[_wgslsmith_index_u32(56975u, 12u)]))) << (vec4<u32>(~_wgslsmith_mod_u32(~u_input.a, ~var_2), ~21087u, 48224u, u_input.a) % vec4<u32>(32u));
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: i32, arg_3: vec4<i32>) -> vec4<bool> {
    global3 = array<vec2<u32>, 16>();
    var var_0 = vec4<bool>(any(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 3u)], true)), true, global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(_wgslsmith_div_u32(select(u_input.a, 8978u, true), ~u_input.a), 4294967295u), 3u)], !global0[_wgslsmith_index_u32(~(~40731u), 3u)] != global0[_wgslsmith_index_u32(21496u, 3u)]);
    var var_1 = 0u;
    let var_2 = vec4<u32>(_wgslsmith_sub_u32(u_input.a, u_input.a), u_input.a, ~1u, ~countOneBits(u_input.a)) << ((vec4<u32>(~(~4294967295u), ~4294967295u, min(u_input.a, 17696u) >> (countOneBits(1u) % 32u), ~_wgslsmith_div_u32(u_input.a, 0u)) << ((vec4<u32>(~0u, _wgslsmith_mult_u32(4294967295u, u_input.a), u_input.a, u_input.a) ^ vec4<u32>(u_input.a, _wgslsmith_add_u32(u_input.a, 4294967295u), u_input.a, _wgslsmith_clamp_u32(u_input.a, u_input.a, 0u))) % vec4<u32>(32u))) % vec4<u32>(32u));
    var var_3 = Struct_1(select(!vec4<bool>(select(global0[_wgslsmith_index_u32(67843u, 3u)], true, false), true || global0[_wgslsmith_index_u32(var_2.x, 3u)], any(vec4<bool>(var_0.x, false, global0[_wgslsmith_index_u32(var_2.x, 3u)], false)), var_0.x), select(select(select(vec4<bool>(global0[_wgslsmith_index_u32(30992u, 3u)], false, false, var_0.x), vec4<bool>(true, var_0.x, global0[_wgslsmith_index_u32(u_input.a, 3u)], global0[_wgslsmith_index_u32(4294967295u, 3u)]), true), vec4<bool>(false, false, global0[_wgslsmith_index_u32(5911u, 3u)], global0[_wgslsmith_index_u32(25638u, 3u)]), global0[_wgslsmith_index_u32(1u, 3u)]), select(select(vec4<bool>(global0[_wgslsmith_index_u32(11680u, 3u)], var_0.x, true, true), vec4<bool>(var_0.x, false, false, true), var_0.x), !vec4<bool>(var_0.x, false, false, global0[_wgslsmith_index_u32(var_2.x, 3u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(var_2.x, 3u)], var_0.x, true)), !(!vec4<bool>(false, false, global0[_wgslsmith_index_u32(u_input.a, 3u)], false))), false), true, !all(select(!vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 3u)], false), vec3<bool>(true, var_0.x, var_0.x), !var_0.wyz)), any(select(select(select(var_0.wzz, vec3<bool>(false, global0[_wgslsmith_index_u32(var_2.x, 3u)], var_0.x), false), !var_0.xxy, !global0[_wgslsmith_index_u32(u_input.a, 3u)]), select(vec3<bool>(true, true, true), var_0.zyw, var_0.wyz), var_0.x)));
    return !select(vec4<bool>(false, arg_0 > _wgslsmith_f_op_f32(abs(-249f)), !all(vec2<bool>(true, true)), !any(vec3<bool>(global0[_wgslsmith_index_u32(14051u, 3u)], false, true))), !var_3.a, select(!vec4<bool>(var_0.x, false, true, true), vec4<bool>(all(vec2<bool>(false, global0[_wgslsmith_index_u32(var_2.x, 3u)])), !var_3.c, arg_0 > arg_0, !global0[_wgslsmith_index_u32(25593u, 3u)]), !select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 3u)], global0[_wgslsmith_index_u32(u_input.a, 3u)], global0[_wgslsmith_index_u32(12595u, 3u)], true), vec4<bool>(true, true, true, true), var_3.a)));
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: f32, arg_3: f32) -> Struct_1 {
    global2 = array<i32, 12>();
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1067f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_3))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 + 1503f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(1052f)), arg_2, 347f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-941f, -234f, arg_3))))));
    global0 = array<bool, 3>();
    var var_1 = 6665i;
    var_1 = ~arg_0;
    return Struct_1(!func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(415f))), arg_0, -27161i, func_3(Struct_1(vec4<bool>(false, false, false, true), true, false, false))), any(select(vec3<bool>(true, arg_1, global0[_wgslsmith_index_u32(~49654u, 3u)]), !(!vec3<bool>(arg_1, arg_1, false)), !(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 3u)], arg_1, false)))), false, (arg_0 << (u_input.a % 32u)) != ~1i);
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = -573f;
    let var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, _wgslsmith_div_u32(u_input.a, u_input.a)), abs(firstTrailingBit(vec2<u32>(~4294967295u, u_input.a & u_input.a))));
    let var_2 = global0[_wgslsmith_index_u32(5470u, 3u)];
    var var_3 = func_2(global2[_wgslsmith_index_u32(0u, 12u)], true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1583f + -1145f)), 253f);
    let var_4 = vec2<f32>(1021f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1336f * -1014f) + 1275f)) + 673f));
    return func_2(-1i, var_3.a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_4.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-673f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_4.x, var_4.x)))))));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-223f, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(arg_0.x * arg_0.x), _wgslsmith_f_op_f32(-arg_0.x)))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.x, arg_0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-712f * arg_0.x))), arg_0.x)))));
    let var_1 = _wgslsmith_mod_i32(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(~u_input.a) ^ ~min(u_input.a, 0u), ~abs(u_input.a)), 12u)], 55421i ^ _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, -2147483647i, global2[_wgslsmith_index_u32(0u, 12u)]) | vec3<i32>(global2[_wgslsmith_index_u32(33687u, 12u)], 65665i, -2648i), _wgslsmith_sub_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(u_input.a, 12u)], global2[_wgslsmith_index_u32(u_input.a, 12u)], global2[_wgslsmith_index_u32(u_input.a, 12u)]), vec3<i32>(global2[_wgslsmith_index_u32(u_input.a, 12u)], -5724i, global2[_wgslsmith_index_u32(41544u, 12u)]))), reverseBits(vec3<i32>(global2[_wgslsmith_index_u32(7522u, 12u)], 1i, global2[_wgslsmith_index_u32(u_input.a, 12u)]))));
    var var_2 = _wgslsmith_f_op_f32(1893f + var_0.x);
    var_2 = _wgslsmith_f_op_f32(sign(var_0.x));
    let var_3 = vec4<i32>(-1i) * -vec4<i32>(var_1, (global2[_wgslsmith_index_u32(0u, 12u)] ^ 20838i) >> (0u % 32u), ~var_1, global2[_wgslsmith_index_u32(~u_input.a ^ _wgslsmith_mod_u32(25976u, 1u), 12u)]);
    return func_1(firstLeadingBit(_wgslsmith_clamp_vec4_i32(var_3, max(-var_3, var_3), vec4<i32>(var_3.x << (1u % 32u), -779i, 41849i, -24533i))), func_1(var_3, Struct_1(arg_1.a, all(arg_2.a.xw) | func_4(-1000f, -56946i, var_1, var_3).x, arg_3.c, 1171f != var_0.x))).a.xzz;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<u32>, 16>();
    var var_0 = Struct_1(select(vec4<bool>(u_input.a > u_input.a, global0[_wgslsmith_index_u32(1u, 3u)], false, true), vec4<bool>(!(global2[_wgslsmith_index_u32(0u, 12u)] > global2[_wgslsmith_index_u32(0u, 12u)]), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a, abs(4294967295u), 34803u), 3u)], any(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 3u)], false)) & true, global0[_wgslsmith_index_u32(4294967295u, 3u)]), all(vec4<bool>(true, any(vec4<bool>(true, false, false, global0[_wgslsmith_index_u32(1u, 3u)])), 1u > u_input.a, true))), all(!func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-803f, -1266f, 157f)), func_1(vec4<i32>(-1i, global2[_wgslsmith_index_u32(0u, 12u)], global2[_wgslsmith_index_u32(u_input.a, 12u)], global2[_wgslsmith_index_u32(1u, 12u)]), Struct_1(vec4<bool>(true, true, global0[_wgslsmith_index_u32(u_input.a, 3u)], true), true, true, global0[_wgslsmith_index_u32(0u, 3u)])), Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 3u)], false, global0[_wgslsmith_index_u32(103887u, 3u)], false), global0[_wgslsmith_index_u32(u_input.a, 3u)], global0[_wgslsmith_index_u32(u_input.a, 3u)], global0[_wgslsmith_index_u32(u_input.a, 3u)]), func_1(vec4<i32>(global2[_wgslsmith_index_u32(u_input.a, 12u)], global2[_wgslsmith_index_u32(u_input.a, 12u)], global2[_wgslsmith_index_u32(u_input.a, 12u)], global2[_wgslsmith_index_u32(23538u, 12u)]), Struct_1(vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 3u)], true, true), true, global0[_wgslsmith_index_u32(0u, 3u)], global0[_wgslsmith_index_u32(u_input.a, 3u)])))), global0[_wgslsmith_index_u32(~u_input.a, 3u)], u_input.a != _wgslsmith_div_u32(abs(0u), countOneBits(_wgslsmith_sub_u32(4294967295u, u_input.a))));
    let var_1 = global2[_wgslsmith_index_u32(min(abs(_wgslsmith_mod_u32(~(~4294967295u), 4294967295u)), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, _wgslsmith_add_u32(firstTrailingBit(u_input.a), u_input.a), ~u_input.a, max(8171u >> (0u % 32u), ~0u)), firstLeadingBit(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a, 37887u, 0u, u_input.a), vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a))))), 12u)];
    var var_2 = func_2(~(-16432i), (countOneBits(0u) != (18298u >> ((u_input.a >> (u_input.a % 32u)) % 32u))) || (global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, u_input.a) & 0u, 12u)] <= firstTrailingBit(~(-9242i))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2295f - _wgslsmith_f_op_f32(floor(-1864f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -117f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1000f + -2575f), 852f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1962f) * -733f));
    let var_3 = 2147483647i;
    var var_4 = func_1(vec4<i32>(var_3, min(_wgslsmith_dot_vec2_i32(-vec2<i32>(global2[_wgslsmith_index_u32(u_input.a, 12u)], var_3), vec2<i32>(global2[_wgslsmith_index_u32(4294967295u, 12u)], -4198i)), var_3), firstTrailingBit(var_3), _wgslsmith_mult_i32(23775i, var_3)), Struct_1(vec4<bool>(_wgslsmith_sub_u32(80443u, 17804u) == (u_input.a >> (u_input.a % 32u)), true & !global0[_wgslsmith_index_u32(25652u, 3u)], var_2.d, var_2.c), true, false, true));
    let var_5 = 1u >> (countOneBits(~_wgslsmith_sub_u32(u_input.a, max(u_input.a, 4294967295u))) % 32u);
    var_4 = Struct_1(var_0.a, var_4.a.x, false, var_0.b || true);
    global3 = array<vec2<u32>, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a & _wgslsmith_add_u32(abs(u_input.a), 58730u), global2[_wgslsmith_index_u32(4294967295u, 12u)]);
}

