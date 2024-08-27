struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_5 {
    a: f32,
    b: i32,
    c: Struct_4,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 22>;

var<private> global1: array<Struct_5, 14>;

var<private> global2: array<bool, 13> = array<bool, 13>(false, true, false, false, false, false, false, true, false, true, false, false, true);

var<private> global3: Struct_2;

var<private> global4: Struct_2 = Struct_2(4294967295u);

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> vec4<u32> {
    let var_0 = !vec4<bool>(!any(vec4<bool>(global2[_wgslsmith_index_u32(global3.a, 13u)], false, true, global2[_wgslsmith_index_u32(u_input.b, 13u)])), true, true, any(select(vec4<bool>(global2[_wgslsmith_index_u32(arg_1.d.x, 13u)], true, global2[_wgslsmith_index_u32(1u, 13u)], global2[_wgslsmith_index_u32(76007u, 13u)]), select(vec4<bool>(true, true, global2[_wgslsmith_index_u32(arg_0, 13u)], global2[_wgslsmith_index_u32(45073u, 13u)]), vec4<bool>(false, false, global2[_wgslsmith_index_u32(global4.a, 13u)], global2[_wgslsmith_index_u32(global4.a, 13u)]), global2[_wgslsmith_index_u32(74794u, 13u)]), !vec4<bool>(global2[_wgslsmith_index_u32(80127u, 13u)], false, global2[_wgslsmith_index_u32(arg_1.c.x, 13u)], global2[_wgslsmith_index_u32(53520u, 13u)]))));
    var var_1 = -vec3<i32>(_wgslsmith_clamp_i32(-2147483647i, max(28787i, u_input.a.x), -2147483647i), ~_wgslsmith_div_i32(_wgslsmith_mult_i32(arg_1.b.x, 22093i), 0i), _wgslsmith_mult_i32(select(u_input.a.x, -1i, false), -5476i) >> (14599u % 32u));
    let var_2 = _wgslsmith_mult_u32(~_wgslsmith_div_u32(_wgslsmith_mod_u32(~u_input.b, global3.a & arg_0), 4294967295u), u_input.b);
    var var_3 = ~min(arg_1.b, firstTrailingBit(reverseBits(~vec3<i32>(1i, var_1.x, -1i))));
    let var_4 = global1[_wgslsmith_index_u32(26199u ^ global4.a, 14u)];
    return _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 10100u, var_4.c.d.a, _wgslsmith_mod_u32(~(~u_input.b), 7388u ^ u_input.b)), vec4<u32>(0u, global4.a, 7466u, ~firstTrailingBit(~4294967295u)));
}

fn func_2() -> vec4<f32> {
    var var_0 = _wgslsmith_sub_vec4_u32(~func_3(~_wgslsmith_mod_u32(global3.a, global4.a), Struct_1(_wgslsmith_f_op_f32(min(-603f, 114f)), abs(vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x)), ~vec2<u32>(global4.a, global3.a), max(vec4<u32>(global4.a, u_input.b, global3.a, global3.a), vec4<u32>(1u, global3.a, 3196u, 26991u)))), vec4<u32>(func_3(4294967295u, Struct_1(-520f, vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x), vec2<u32>(50363u, global3.a), vec4<u32>(global3.a, u_input.b, global3.a, 4294967295u))).x >> (~(~4294967295u) % 32u), _wgslsmith_clamp_u32(u_input.b, 45191u, ~global4.a | firstLeadingBit(u_input.b)), u_input.b & 4294967295u, 3019u));
    var var_1 = global3.a <= abs(u_input.b);
    global1 = array<Struct_5, 14>();
    var var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-607f, -672f, 1000f) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1190f, 1121f, 1110f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-866f, -2584f, -1165f), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-271f, -2190f, 247f), vec3<f32>(1000f, -241f, 1074f))), false))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-870f, 1444f, -1606f)), _wgslsmith_div_vec3_f32(vec3<f32>(-189f, -1245f, 1000f), vec3<f32>(1409f, -2413f, 1163f)), !vec3<bool>(global2[_wgslsmith_index_u32(71245u, 13u)], global2[_wgslsmith_index_u32(global4.a, 13u)], global2[_wgslsmith_index_u32(global3.a, 13u)]))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -105f, 1291f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -722f, -1277f)), global2[_wgslsmith_index_u32(1u, 13u)])), !select(vec3<bool>(false, global2[_wgslsmith_index_u32(0u, 13u)], global2[_wgslsmith_index_u32(global4.a, 13u)]), vec3<bool>(true, true, global2[_wgslsmith_index_u32(global4.a, 13u)]), global2[_wgslsmith_index_u32(4294967295u, 13u)]))))));
    let var_3 = vec2<i32>(52798i ^ -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 5392i, u_input.a.x, -178i) | vec4<i32>(-5814i, u_input.a.x, u_input.a.x, 1i), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, 1i, u_input.a.x, u_input.a.x), vec4<i32>(-1i, -44895i, u_input.a.x, -21421i))), -61788i);
    return vec4<f32>(_wgslsmith_f_op_f32(sign(var_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.x + var_2.x), _wgslsmith_f_op_f32(f32(-1f) * -743f))) * var_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-794f, 134f, global2[_wgslsmith_index_u32(u_input.b, 13u)])) + _wgslsmith_div_f32(-398f, -1109f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-945f + var_2.x))), 806f);
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: f32, arg_3: Struct_3) -> i32 {
    var var_0 = firstLeadingBit(~(~(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, global3.a, global4.a), arg_1.c.d.xyy) << (~global0[_wgslsmith_index_u32(arg_1.c.c.x, 22u)] % vec3<u32>(32u)))));
    global2 = array<bool, 13>();
    global1 = array<Struct_5, 14>();
    let var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(arg_1.a * arg_1.a), arg_1.a)))), _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 4294967295u, 4294967295u, global4.a), arg_1.b), vec4<u32>(abs(arg_0), countOneBits(global4.a), 1u, reverseBits(arg_0))), vec4<u32>(arg_1.c.c.x, arg_3.b.a, ~global4.a, min(arg_0, _wgslsmith_div_u32(17950u, global4.a)))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -408f), vec3<i32>(-abs(12563i), -2147483647i, reverseBits(arg_1.c.b.x)), arg_1.b.xw, ~(~vec4<u32>(4294967295u, 3801u, 20316u, 1059u))), arg_3.b);
    let var_2 = _wgslsmith_dot_vec2_i32(-_wgslsmith_mod_vec2_i32(arg_1.c.b.zy, u_input.a), ~(-(~firstLeadingBit(vec2<i32>(36914i, 24265i)))));
    return _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_add_i32(-30732i, _wgslsmith_mult_i32(~2147483647i, 1i ^ var_1.c.b.x)), _wgslsmith_dot_vec3_i32(abs(reverseBits(arg_1.c.b)), min(-var_1.c.b, vec3<i32>(var_2, 43107i, arg_1.c.b.x)))), arg_1.c.b.zy << (~vec2<u32>(_wgslsmith_mod_u32(1u, arg_1.b.x), 0u) % vec2<u32>(32u)));
}

fn func_1(arg_0: vec4<u32>) -> f32 {
    var var_0 = ~_wgslsmith_add_i32(_wgslsmith_div_i32(firstLeadingBit(18340i), -1840i), _wgslsmith_clamp_i32(u_input.a.x, _wgslsmith_div_i32(-2147483647i, 35937i), -2147483647i)) << (~firstLeadingBit(global3.a) % 32u);
    let var_1 = vec2<i32>(-_wgslsmith_dot_vec4_i32(-vec4<i32>(1i, 13498i, u_input.a.x, u_input.a.x), -countOneBits(vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, u_input.a.x))), -_wgslsmith_sub_i32(-(~(-2147483647i)), _wgslsmith_mult_i32(~u_input.a.x, 57201i)));
    global2 = array<bool, 13>();
    let var_2 = abs(vec4<i32>(var_1.x, u_input.a.x, 1i, ~2941i));
    var_0 = func_4(arg_0.x, Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2())), vec4<u32>(~(1u >> (u_input.b % 32u)), ~2644u, 1u, abs(global3.a | 1u)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1333f) + _wgslsmith_f_op_f32(-544f * 521f)), _wgslsmith_mult_vec3_i32(vec3<i32>(var_2.x, 2147483647i, 2147483647i), abs(vec3<i32>(-1i, var_1.x, 2147483647i))), ~(arg_0.zy << (arg_0.wx % vec2<u32>(32u))), vec4<u32>(29854u, 1u, firstLeadingBit(global4.a), _wgslsmith_dot_vec2_u32(arg_0.xy, arg_0.zy))), Struct_2(_wgslsmith_mult_u32(arg_0.x, u_input.b))), -936f, Struct_3(~_wgslsmith_mult_u32(0u, ~4294967295u), Struct_2(global3.a)));
    return _wgslsmith_f_op_f32(1f + -1110f);
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_5, arg_2: Struct_5) -> f32 {
    global1 = array<Struct_5, 14>();
    let var_0 = ~abs(countOneBits(arg_1.c.c.d.x));
    global4 = Struct_2(22244u << (_wgslsmith_dot_vec3_u32(~arg_1.c.b.zzw & vec3<u32>(u_input.b, arg_1.c.c.d.x, 26189u), vec3<u32>(~u_input.b, 1u, ~24468u)) % 32u));
    global1 = array<Struct_5, 14>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1316f, arg_1.c.a.x)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.c.a.wz)))));
    return arg_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(-653f, _wgslsmith_f_op_f32(func_5(abs(firstTrailingBit(vec4<i32>(u_input.a.x, -2631i, -2147483647i, 0i))) << (~(~vec4<u32>(global3.a, global4.a, 0u, 0u)) % vec4<u32>(32u)), Struct_5(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(826f + -1984f), _wgslsmith_f_op_f32(func_1(vec4<u32>(global4.a, u_input.b, 4294967295u, u_input.b))), true)), -2138i, Struct_4(_wgslsmith_f_op_vec4_f32(func_2()), select(vec4<u32>(u_input.b, global4.a, global4.a, global3.a), vec4<u32>(u_input.b, global4.a, 0u, 0u), false), Struct_1(-431f, vec3<i32>(u_input.a.x, 0i, u_input.a.x), vec2<u32>(28193u, global3.a), vec4<u32>(u_input.b, 4294967295u, global3.a, 46843u)), Struct_2(u_input.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(600f, 1864f) * vec2<f32>(1305f, 1391f)))), global1[_wgslsmith_index_u32(func_3(u_input.b, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1055f), ~vec3<i32>(1631i, u_input.a.x, u_input.a.x), vec2<u32>(global4.a, 4294967295u), ~vec4<u32>(global4.a, 1u, global4.a, global4.a))).x, 14u)])), -663f);
    let var_1 = _wgslsmith_mult_i32(_wgslsmith_div_i32(select(_wgslsmith_mult_i32(-55328i, max(u_input.a.x, u_input.a.x)), max(0i, ~u_input.a.x), global2[_wgslsmith_index_u32(u_input.b, 13u)]), u_input.a.x), _wgslsmith_div_i32(0i, u_input.a.x));
    var var_2 = ~(~firstLeadingBit(global0[_wgslsmith_index_u32(0u, 22u)]));
    global4 = Struct_2(u_input.b);
    var var_3 = u_input.a.x;
    var var_4 = Struct_2(func_3(u_input.b, Struct_1(var_0.x, vec3<i32>(u_input.a.x, 1i, var_1), ~vec2<u32>(768u, 72331u), vec4<u32>(global3.a, var_2.x, var_2.x, global4.a))).x ^ global4.a);
    var_2 = ~vec3<u32>(u_input.b, 0u, _wgslsmith_sub_u32(var_4.a, ~global3.a));
    var var_5 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(global3.a, var_4.a), 14u)];
    var var_6 = var_5.c.c.b;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a);
}

