struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec2<bool>,
    d: vec3<bool>,
    e: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec4<u32>,
    d: i32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 16>;

var<private> global1: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(-1309f, vec4<f32>(-551f, -123f, 3255f, 890f), vec2<bool>(true, true), vec3<bool>(true, true, true), -800f), Struct_1(-1000f, vec4<f32>(901f, -605f, -299f, 1056f), vec2<bool>(true, true), vec3<bool>(false, false, true), -1471f), Struct_1(-912f, vec4<f32>(-1601f, -1058f, -951f, -966f), vec2<bool>(true, false), vec3<bool>(false, true, true), 1227f), Struct_1(-487f, vec4<f32>(-214f, -210f, 116f, -844f), vec2<bool>(false, false), vec3<bool>(false, false, true), -1484f), Struct_1(-794f, vec4<f32>(253f, -1148f, -530f, 265f), vec2<bool>(true, true), vec3<bool>(true, true, false), -970f), Struct_1(-1984f, vec4<f32>(-815f, 975f, 1259f, 1000f), vec2<bool>(true, true), vec3<bool>(false, false, false), -237f), Struct_1(-403f, vec4<f32>(1000f, -1000f, 196f, -1000f), vec2<bool>(true, true), vec3<bool>(true, true, false), 317f), Struct_1(-1657f, vec4<f32>(1103f, 741f, -136f, -1361f), vec2<bool>(false, true), vec3<bool>(false, false, true), -2713f), Struct_1(-1357f, vec4<f32>(-854f, 831f, -124f, -555f), vec2<bool>(false, true), vec3<bool>(false, true, true), -1000f), Struct_1(537f, vec4<f32>(-1000f, 1145f, -1741f, -208f), vec2<bool>(true, false), vec3<bool>(true, true, false), 164f), Struct_1(-766f, vec4<f32>(-210f, -1430f, -823f, 1895f), vec2<bool>(true, true), vec3<bool>(false, true, true), -638f), Struct_1(918f, vec4<f32>(1000f, 289f, 1037f, -2652f), vec2<bool>(true, true), vec3<bool>(true, true, true), -1000f), Struct_1(-1883f, vec4<f32>(-542f, 2264f, 571f, 951f), vec2<bool>(false, true), vec3<bool>(true, true, true), -1964f), Struct_1(992f, vec4<f32>(1631f, -223f, 174f, 1001f), vec2<bool>(false, true), vec3<bool>(true, true, true), 315f), Struct_1(703f, vec4<f32>(-233f, -1962f, 1339f, -1000f), vec2<bool>(true, true), vec3<bool>(true, false, true), 652f), Struct_1(-787f, vec4<f32>(1000f, 1019f, 251f, -1173f), vec2<bool>(false, false), vec3<bool>(false, true, false), 183f), Struct_1(468f, vec4<f32>(-808f, -1303f, 888f, 121f), vec2<bool>(true, true), vec3<bool>(false, false, true), 310f), Struct_1(1615f, vec4<f32>(352f, 168f, -1387f, -1229f), vec2<bool>(true, false), vec3<bool>(false, false, false), 337f));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_1(arg_0: bool) -> bool {
    global0 = array<u32, 16>();
    global1 = array<Struct_1, 18>();
    var var_0 = -(min(u_input.a << (~9272u % 32u), ~(~u_input.a)) & -22801i);
    global1 = array<Struct_1, 18>();
    var var_1 = firstLeadingBit(vec2<u32>(abs(max(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, global0[_wgslsmith_index_u32(1u, 16u)]), vec2<u32>(global0[_wgslsmith_index_u32(u_input.b, 16u)], 36215u)), 6020u)), _wgslsmith_dot_vec2_u32(~(vec2<u32>(u_input.b, 27247u) << (vec2<u32>(global0[_wgslsmith_index_u32(38040u, 16u)], global0[_wgslsmith_index_u32(40961u, 16u)]) % vec2<u32>(32u))), ~(vec2<u32>(0u, u_input.b) ^ vec2<u32>(27293u, 28273u)))));
    return true;
}

fn func_3() -> vec2<i32> {
    global0 = array<u32, 16>();
    let var_0 = Struct_2(_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(countOneBits(~vec2<i32>(u_input.a, u_input.a)), vec2<i32>(_wgslsmith_sub_i32(-15254i, u_input.a), -u_input.a)), vec2<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(-12028i, -2147483647i, u_input.a), vec3<i32>(u_input.a, u_input.a, -1i) ^ vec3<i32>(-9511i, u_input.a, u_input.a)), (-1i ^ u_input.a) | ~5166i)), vec4<bool>(true, u_input.a <= _wgslsmith_sub_i32(_wgslsmith_mod_i32(33327i, u_input.a), _wgslsmith_dot_vec2_i32(vec2<i32>(2294i, 55564i), vec2<i32>(2147483647i, 2147483647i))), true, -_wgslsmith_mult_i32(u_input.a, -2147483647i) <= (1032i ^ u_input.a)), ~0u);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1302f, -351f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(112f + 861f))))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(416f, 1000f), _wgslsmith_div_f32(-803f, -272f))), _wgslsmith_f_op_f32(step(-303f, -537f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1365f + -1109f)) * _wgslsmith_f_op_f32(select(464f, -1000f, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1247f - -654f)) - 2343f)), vec2<bool>(!(!(true && var_0.b.x)), true), select(var_0.b.zzx, !vec3<bool>(any(var_0.b.yw), var_0.b.x, !var_0.b.x), func_1(all(var_0.b.yw)) != true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -799f) * _wgslsmith_f_op_f32(-710f + -1487f)), 1f)) * _wgslsmith_f_op_f32(-618f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f + 403f))))));
    global0 = array<u32, 16>();
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1990f, _wgslsmith_f_op_f32(var_1.a + -332f))) - vec2<f32>(_wgslsmith_f_op_f32(-1016f * _wgslsmith_f_op_f32(exp2(var_1.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(958f * 127f) + _wgslsmith_f_op_f32(893f - var_1.a)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1569f, var_1.a)));
    return abs(select(_wgslsmith_add_vec2_i32(vec2<i32>(var_0.a.x, 2224i), ~vec2<i32>(u_input.a, u_input.a)), vec2<i32>(var_0.a.x, var_0.a.x), !var_1.c)) | var_0.a;
}

fn func_2(arg_0: vec4<bool>) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(110f, -1306f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-225f, 406f))))));
    let var_1 = global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(min(vec2<u32>(1u, u_input.b), ~vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(47825u, 16u)], 16u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(31295u, 16u)], 16u)])), _wgslsmith_mod_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(1u, 16u)], u_input.b), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(56707u, 16u)], 16u)], u_input.b)) | vec2<u32>(27283u, 0u)), min(~vec2<u32>(1u, global0[_wgslsmith_index_u32(11711u, 16u)]), ~(vec2<u32>(u_input.b, 4294967295u) >> (vec2<u32>(0u, global0[_wgslsmith_index_u32(0u, 16u)]) % vec2<u32>(32u)))))), 18u)];
    var_0 = vec2<f32>(var_1.b.x, -494f);
    var var_2 = Struct_2(~((_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(0i, u_input.a)) ^ _wgslsmith_add_vec2_i32(vec2<i32>(-1i, u_input.a), vec2<i32>(-2147483647i, -27510i))) ^ func_3()), select(select(select(!arg_0, select(arg_0, arg_0, vec4<bool>(arg_0.x, false, false, var_1.d.x)), !arg_0), arg_0, arg_0.x), !select(select(vec4<bool>(var_1.c.x, true, false, var_1.c.x), arg_0, true), select(arg_0, arg_0, vec4<bool>(var_1.c.x, false, true, var_1.c.x)), arg_0), !vec4<bool>(arg_0.x, select(var_1.c.x, var_1.c.x, true), !arg_0.x, all(vec2<bool>(true, var_1.c.x)))), abs(firstTrailingBit(_wgslsmith_dot_vec2_u32(~vec2<u32>(34761u, 35748u), vec2<u32>(u_input.b, u_input.b)))));
    var var_3 = Struct_2(var_2.a, vec4<bool>(true, !select(true, true, false), var_1.d.x, !(var_1.d.x != true)), ~1u | (_wgslsmith_add_u32(var_2.c ^ var_2.c, ~u_input.b) | abs(u_input.b ^ global0[_wgslsmith_index_u32(15105u, 16u)])));
    return var_3.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec2<bool>(func_1(true), func_2(vec4<bool>(false, true, func_1(true), 30414u != global0[_wgslsmith_index_u32(u_input.b, 16u)])));
    let var_1 = global1[_wgslsmith_index_u32(abs(countOneBits(min(u_input.b, u_input.b))), 18u)];
    var var_2 = Struct_2(~reverseBits(-vec2<i32>(u_input.a, u_input.a)), !(!(!(!vec4<bool>(var_0.x, var_1.c.x, var_1.c.x, var_0.x)))), ~(~(~u_input.b)) << (~abs(global0[_wgslsmith_index_u32(1u, 16u)]) % 32u));
    var var_3 = Struct_2(firstTrailingBit(var_2.a), !vec4<bool>(false, true, _wgslsmith_f_op_f32(-576f + 779f) <= _wgslsmith_f_op_f32(floor(-443f)), true), ~8040u);
    var var_4 = Struct_1(-1235f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(round(-1204f)), _wgslsmith_f_op_f32(trunc(var_1.a)), _wgslsmith_f_op_f32(ceil(303f)), -1633f)))), !var_1.d.zz, !var_2.b.yww, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-670f + 649f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a))), var_1.b.x)));
    global1 = array<Struct_1, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.e, var_4.b.x, 925f)))) + var_1.b.xxz), max(min(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 1u, 4294967295u, 1u), vec4<u32>(u_input.b, 4294967295u, var_2.c, var_3.c), reverseBits(vec4<u32>(var_3.c, var_3.c, 1u, var_2.c))), ~vec4<u32>(u_input.b, var_3.c, 1u, u_input.b)), ~vec4<u32>(62433u, _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(0u, 16u)], u_input.b), ~0u, select(48385u, 1u, false))), 1i, firstLeadingBit(~vec2<u32>(~var_2.c, u_input.b)));
}

