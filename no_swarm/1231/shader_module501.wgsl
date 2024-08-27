struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec3<bool>,
    d: vec3<u32>,
    e: f32,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec4<f32>, 19>;

var<private> global2: array<bool, 28>;

var<private> global3: array<Struct_4, 9> = array<Struct_4, 9>(Struct_4(vec2<f32>(-1522f, 176f), Struct_1(2147483647i, vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<u32>(17983u, 4294967295u, 1u), -145f), vec2<i32>(1i, -1i), Struct_3(Struct_1(0i, vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<u32>(0u, 1u, 4294967295u), -833f))), Struct_4(vec2<f32>(-1000f, 183f), Struct_1(-54768i, vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<u32>(0u, 51494u, 80768u), -813f), vec2<i32>(2147483647i, -8670i), Struct_3(Struct_1(-11905i, vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<u32>(13554u, 115199u, 4294967295u), 380f))), Struct_4(vec2<f32>(-874f, -1201f), Struct_1(2147483647i, vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<u32>(9698u, 1u, 4294967295u), 1403f), vec2<i32>(12123i, 0i), Struct_3(Struct_1(17744i, vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<u32>(1u, 30470u, 66876u), 478f))), Struct_4(vec2<f32>(-666f, -586f), Struct_1(i32(-2147483648), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<u32>(3381u, 0u, 11782u), 1000f), vec2<i32>(93187i, -24090i), Struct_3(Struct_1(0i, vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<u32>(66718u, 4016u, 15594u), 622f))), Struct_4(vec2<f32>(-1000f, 662f), Struct_1(2147483647i, vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<u32>(4294967295u, 75837u, 1u), -1334f), vec2<i32>(-1i, 1i), Struct_3(Struct_1(-26430i, vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<u32>(24447u, 4294967295u, 57427u), 1483f))), Struct_4(vec2<f32>(1865f, 201f), Struct_1(0i, vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<u32>(77609u, 4294967295u, 1u), -440f), vec2<i32>(-1i, 2147483647i), Struct_3(Struct_1(13018i, vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<u32>(4294967295u, 20714u, 0u), 734f))), Struct_4(vec2<f32>(-2535f, -700f), Struct_1(-1i, vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<u32>(0u, 32361u, 17221u), 719f), vec2<i32>(-7891i, 42313i), Struct_3(Struct_1(0i, vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<u32>(25945u, 0u, 84496u), -515f))), Struct_4(vec2<f32>(1000f, 651f), Struct_1(-7101i, vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<u32>(0u, 28763u, 27512u), -278f), vec2<i32>(1i, -27039i), Struct_3(Struct_1(-37550i, vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<u32>(1u, 23599u, 0u), 1146f))), Struct_4(vec2<f32>(-1860f, -430f), Struct_1(2147483647i, vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<u32>(49199u, 1u, 24466u), -1933f), vec2<i32>(i32(-2147483648), -21435i), Struct_3(Struct_1(-17423i, vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<u32>(30345u, 35539u, 17853u), 284f))));

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> i32 {
    let var_0 = u_input.b.x;
    return u_input.c;
}

fn func_2(arg_0: i32, arg_1: u32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(701f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1266f - -127f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1387f - 283f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-395f))), _wgslsmith_f_op_f32(-494f + _wgslsmith_f_op_f32(168f + _wgslsmith_f_op_f32(round(-646f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-226f * 125f) + _wgslsmith_f_op_f32(abs(-1357f))), -2741f)))));
    let var_1 = u_input.b.x;
    var var_2 = _wgslsmith_sub_vec4_i32(vec4<i32>(arg_0, _wgslsmith_add_i32(select(arg_0, 0i, global2[_wgslsmith_index_u32(79228u, 28u)]) & 1i, _wgslsmith_mod_i32(_wgslsmith_sub_i32(arg_0, arg_0), func_3(Struct_1(u_input.c, vec3<bool>(true, global2[_wgslsmith_index_u32(10820u, 28u)], true), vec3<bool>(false, global2[_wgslsmith_index_u32(arg_1, 28u)], true), u_input.d.wyy, var_0.x), false))), u_input.c, -(func_3(Struct_1(-9454i, vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<u32>(73815u, 0u, arg_1), var_0.x), global2[_wgslsmith_index_u32(var_1, 28u)]) >> (u_input.a.x % 32u))), vec4<i32>(abs(_wgslsmith_dot_vec4_i32(~vec4<i32>(arg_0, arg_0, -25845i, u_input.c), ~vec4<i32>(38492i, -1i, 20237i, 18953i))), ~max(2147483647i, -5588i), ~_wgslsmith_mult_i32(-1i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, 9032i), vec2<i32>(0i, 42398i))), -countOneBits(arg_0)));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1505f, _wgslsmith_f_op_f32(f32(-1f) * -113f), -129f)) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -725f, 287f)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-271f, var_0.x, var_0.x), vec3<f32>(-1133f, var_0.x, 1383f))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -628f, 1143f)) * vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x), -231f)))));
    var var_4 = Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, arg_1), 28u)], vec2<bool>(!global2[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(15988u, 55806u, 0u, u_input.d.x), vec4<u32>(1u, 0u, var_1, 1u))), 28u)], all(select(vec4<bool>(true, false, global2[_wgslsmith_index_u32(u_input.b.x, 28u)], false), vec4<bool>(true, false, true, global2[_wgslsmith_index_u32(arg_1, 28u)]), all(vec4<bool>(false, true, true, false))))), Struct_1(_wgslsmith_sub_i32(~0i, abs(max(26895i, arg_0))), !select(!vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.a.x, 28u)], global2[_wgslsmith_index_u32(arg_1, 28u)]), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), global2[_wgslsmith_index_u32(1u, 28u)]), global2[_wgslsmith_index_u32(~var_1, 28u)]), vec3<bool>(any(!vec2<bool>(false, global2[_wgslsmith_index_u32(0u, 28u)])), var_1 > u_input.b.x, global2[_wgslsmith_index_u32(u_input.d.x, 28u)]), _wgslsmith_div_vec3_u32(~(vec3<u32>(u_input.d.x, 47900u, 1u) ^ u_input.b), vec3<u32>(15682u, 49480u, arg_1) & u_input.d.wxz), _wgslsmith_f_op_f32(f32(-1f) * -880f)));
    return -929f;
}

fn func_1() -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1097f), _wgslsmith_f_op_f32(func_2(firstLeadingBit(u_input.c), 1u))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1006f * 243f)))))));
    var var_0 = vec3<bool>(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(firstTrailingBit(u_input.a.x), abs(_wgslsmith_div_u32(u_input.d.x, 4294967295u))), 28u)], 17278u > ~(~_wgslsmith_dot_vec3_u32(u_input.d.zyx, vec3<u32>(u_input.d.x, u_input.b.x, u_input.d.x))), all(!select(!vec3<bool>(global2[_wgslsmith_index_u32(u_input.d.x, 28u)], global2[_wgslsmith_index_u32(u_input.d.x, 28u)], global2[_wgslsmith_index_u32(u_input.a.x, 28u)]), select(vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 28u)], true, true), vec3<bool>(global2[_wgslsmith_index_u32(8876u, 28u)], global2[_wgslsmith_index_u32(u_input.a.x, 28u)], global2[_wgslsmith_index_u32(u_input.d.x, 28u)]), vec3<bool>(true, false, false)), vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 28u)], false, false))));
    global1 = array<vec4<f32>, 19>();
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-616f, 1892f))))))), _wgslsmith_div_f32(-1981f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1933f, -695f), _wgslsmith_f_op_f32(f32(-1f) * -676f), true))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-378f, -186f) * -1809f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -471f))) + 692f), -806f);
    var var_2 = vec4<i32>(min(-1i, abs(-15289i)), ~(~(-39263i) ^ u_input.c) >> (firstTrailingBit(reverseBits(42338u) & (u_input.a.x & u_input.b.x)) % 32u), _wgslsmith_clamp_i32(-(~_wgslsmith_dot_vec2_i32(vec2<i32>(13661i, -8978i), vec2<i32>(u_input.c, u_input.c))), 1i, i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(-27937i, u_input.c, u_input.c, u_input.c), vec4<i32>(u_input.c, 0i, 17776i, u_input.c))), _wgslsmith_mult_i32(-(2147483647i << (u_input.a.x % 32u)) | _wgslsmith_sub_i32(-2147483647i, -7851i), _wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.c, _wgslsmith_mod_i32(u_input.c, -2147483647i)), u_input.c)));
    return Struct_1(min(u_input.c, -(~45299i) >> (_wgslsmith_mult_u32(~u_input.d.x, ~u_input.a.x) % 32u)), !vec3<bool>(0u == _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.b.x), u_input.d.wz), var_0.x, true), select(vec3<bool>(var_0.x, _wgslsmith_mod_i32(-2147483647i, u_input.c) == ~var_2.x, !all(vec3<bool>(var_0.x, global2[_wgslsmith_index_u32(3447u, 28u)], false))), select(!select(vec3<bool>(true, var_0.x, global2[_wgslsmith_index_u32(u_input.a.x, 28u)]), vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(true, global2[_wgslsmith_index_u32(29574u, 28u)], global2[_wgslsmith_index_u32(1u, 28u)])), vec3<bool>(all(var_0.xy), true || global2[_wgslsmith_index_u32(u_input.d.x, 28u)], true), select(vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.d.x, 28u)], var_0.x), vec3<bool>(var_0.x, true, false), true)), !var_0.x), ~vec3<u32>(u_input.b.x, select(min(u_input.d.x, u_input.d.x), u_input.a.x, global2[_wgslsmith_index_u32(4636u, 28u)] != false), firstLeadingBit(~4294967295u)), var_1.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>) -> vec4<i32> {
    let var_0 = func_1();
    var var_1 = func_1().b.x;
    let var_2 = Struct_1(reverseBits(-arg_0.a), vec3<bool>(true, false, var_0.c.x | var_0.c.x), select(func_1().c, arg_0.c, func_1().c.x), _wgslsmith_add_vec3_u32(var_0.d, ~arg_0.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.e))));
    global3 = array<Struct_4, 9>();
    var var_3 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_2.e, 102f))))), func_1(), vec2<i32>(~max(-24012i, _wgslsmith_sub_i32(var_0.a, var_0.a)), 1i), Struct_3(var_0));
    return abs(vec4<i32>(1i, firstLeadingBit(arg_0.a), -20597i, ~19506i) & min(vec4<i32>(arg_0.a, 4990i, 2147483647i, var_2.a), vec4<i32>(2147483647i, u_input.c, u_input.c, var_2.a) | vec4<i32>(18572i, arg_0.a, 23874i, var_0.a))) | ~firstTrailingBit(vec4<i32>(-2147483647i, -1i << (var_0.d.x % 32u), i32(-1i) * -3808i, -1i));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<f32>, 19>();
    var var_0 = (max(func_4(func_1(), u_input.d), firstLeadingBit(vec4<i32>(u_input.c, u_input.c, u_input.c, -1i))) ^ _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-25921i, u_input.c, u_input.c, -8008i), ~vec4<i32>(1i, u_input.c, u_input.c, 8857i)), vec4<i32>(u_input.c, u_input.c, -22745i, countOneBits(u_input.c)))) ^ _wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.c, u_input.c, _wgslsmith_mod_i32(-2147483647i, u_input.c), u_input.c), abs(select(vec4<i32>(1i, -2563i, u_input.c, -2147483647i), abs(vec4<i32>(-10502i, -33474i, 1i, u_input.c)), !vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.b.x, 28u)], true, global2[_wgslsmith_index_u32(17577u, 28u)]))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(func_1().e)) + 1054f);
    var var_1 = Struct_2(!global2[_wgslsmith_index_u32(~u_input.a.x, 28u)], select(select(func_1().c.zx, select(func_1().c.xz, vec2<bool>(true, false), vec2<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 28u)], global2[_wgslsmith_index_u32(u_input.d.x, 28u)])), global2[_wgslsmith_index_u32(abs(u_input.a.x), 28u)]), !select(!vec2<bool>(global2[_wgslsmith_index_u32(28220u, 28u)], false), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(global2[_wgslsmith_index_u32(44514u, 28u)], global2[_wgslsmith_index_u32(u_input.b.x, 28u)])), global2[_wgslsmith_index_u32(u_input.a.x, 28u)]), any(vec4<bool>(any(vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.b.x, 28u)], global2[_wgslsmith_index_u32(0u, 28u)])), true, false && global2[_wgslsmith_index_u32(u_input.d.x, 28u)], all(vec4<bool>(true, false, false, false))))), func_1());
    var var_2 = Struct_3(Struct_1(15906i, !var_1.c.b, vec3<bool>(-var_1.c.a < _wgslsmith_mult_i32(var_1.c.a, -2147483647i), global2[_wgslsmith_index_u32(var_1.c.d.x << (u_input.a.x % 32u), 28u)], false), max(vec3<u32>(1u, var_1.c.d.x, ~var_1.c.d.x), u_input.d.yyy), var_1.c.e));
    let var_3 = ~vec4<u32>(var_1.c.d.x, 4294967295u, max(~var_1.c.d.x, 9886u), ~_wgslsmith_dot_vec2_u32(u_input.b.yy, ~vec2<u32>(var_2.a.d.x, var_2.a.d.x)));
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(var_1.c.e)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.c.e), _wgslsmith_f_op_f32(step(var_2.a.e, -386f)))), 380f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-664f, var_2.a.e, 373f)))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c.e, var_1.c.e, var_1.c.e) + vec3<f32>(var_2.a.e, -1677f, -465f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.c.e, -794f, var_2.a.e))), !vec3<bool>(false, var_1.c.b.x, var_1.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c.e, var_1.c.e, -1678f) - vec3<f32>(297f, -858f, 1326f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-812f, -652f, var_1.c.e) - vec3<f32>(var_2.a.e, -584f, 103f)) + vec3<f32>(var_1.c.e, var_1.c.e, -224f)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.c.e, 387f, -972f), vec3<f32>(-1065f, 374f, var_1.c.e))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c.e, 1339f) - vec2<f32>(-2079f, -798f)) - var_4.xz)) * vec2<f32>(_wgslsmith_f_op_f32(round(-1921f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.a.e), var_2.a.e))), vec4<i32>(_wgslsmith_dot_vec3_i32(var_0.wwz, -(~vec3<i32>(var_2.a.a, -8691i, var_0.x))), _wgslsmith_mod_i32((var_0.x & var_0.x) & firstLeadingBit(-2147483647i), _wgslsmith_mod_i32(0i, var_1.c.a << (1u % 32u))), countOneBits(i32(-1i) * -33549i) ^ firstTrailingBit(abs(var_0.x)), abs(u_input.c)), vec3<f32>(func_1().e, var_1.c.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.e) + _wgslsmith_div_f32(var_2.a.e, -540f)) - var_4.x)));
}

