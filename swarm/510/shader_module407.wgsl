struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec3<f32>(360f, -769f, -648f)), Struct_1(vec3<f32>(1548f, 1000f, -1613f)), Struct_1(vec3<f32>(-419f, -918f, -1297f)), Struct_1(vec3<f32>(352f, -1031f, -1000f)), Struct_1(vec3<f32>(-1000f, -599f, 1931f)), Struct_1(vec3<f32>(-1243f, 1205f, 632f)), Struct_1(vec3<f32>(-142f, -731f, 494f)), Struct_1(vec3<f32>(1319f, 1083f, -116f)), Struct_1(vec3<f32>(1668f, -888f, 233f)), Struct_1(vec3<f32>(248f, 644f, -1584f)), Struct_1(vec3<f32>(-1339f, 2063f, -221f)), Struct_1(vec3<f32>(1203f, -515f, -1351f)), Struct_1(vec3<f32>(-238f, -1205f, -217f)));

var<private> global1: vec4<bool>;

var<private> global2: array<vec3<bool>, 19> = array<vec3<bool>, 19>(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true));

var<private> global3: array<Struct_1, 3>;

var<private> global4: array<vec4<u32>, 32> = array<vec4<u32>, 32>(vec4<u32>(0u, 0u, 110319u, 4294967295u), vec4<u32>(4294967295u, 35435u, 0u, 2582u), vec4<u32>(80108u, 1u, 1u, 4294967295u), vec4<u32>(13665u, 19758u, 0u, 4294967295u), vec4<u32>(1u, 37240u, 0u, 1u), vec4<u32>(1u, 32111u, 0u, 1u), vec4<u32>(6430u, 0u, 4294967295u, 1u), vec4<u32>(4294967295u, 0u, 4294967295u, 0u), vec4<u32>(90859u, 0u, 0u, 102927u), vec4<u32>(0u, 8608u, 1u, 1u), vec4<u32>(54916u, 0u, 19039u, 56760u), vec4<u32>(1u, 4294967295u, 39030u, 1u), vec4<u32>(77177u, 1u, 1u, 4294967295u), vec4<u32>(36901u, 20577u, 4294967295u, 24530u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 15503u), vec4<u32>(1u, 4294967295u, 8566u, 28188u), vec4<u32>(52871u, 7598u, 0u, 1u), vec4<u32>(29415u, 4294967295u, 1u, 24895u), vec4<u32>(34558u, 7518u, 34012u, 0u), vec4<u32>(4409u, 15557u, 67814u, 4294967295u), vec4<u32>(21295u, 4294967295u, 39532u, 6556u), vec4<u32>(2158u, 0u, 4294967295u, 4294967295u), vec4<u32>(24832u, 0u, 12923u, 12880u), vec4<u32>(48775u, 1u, 0u, 19999u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 28388u), vec4<u32>(51631u, 4294967295u, 45749u, 16559u), vec4<u32>(1u, 0u, 1u, 1u), vec4<u32>(4294967295u, 69237u, 1u, 1u), vec4<u32>(0u, 4294967295u, 51244u, 5187u), vec4<u32>(57815u, 80307u, 0u, 0u), vec4<u32>(28052u, 14110u, 1253u, 118259u), vec4<u32>(16884u, 1u, 4294967295u, 1u));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_2) -> vec4<bool> {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.d.zy, vec2<u32>(~29061u, 1u) << (~u_input.d.xy % vec2<u32>(32u))), 13u)];
    var var_1 = global3[_wgslsmith_index_u32(firstLeadingBit(u_input.a), 3u)];
    global4 = array<vec4<u32>, 32>();
    var var_2 = arg_0;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0.a.x, 507f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.a.x))))) - -1000f));
    return !select(vec4<bool>(select(var_0.a.x == -2401f, true, all(global1.zw)), any(!global1.zx), all(global1.yx), global1.x), vec4<bool>(all(vec2<bool>(true, global1.x)), true, any(vec4<bool>(true, true, false, global1.x)), !global1.x || (-1000f < arg_0.b.a.x)), true);
}

fn func_2(arg_0: i32, arg_1: Struct_2) -> vec3<u32> {
    global3 = array<Struct_1, 3>();
    let var_0 = u_input.a;
    let var_1 = select(select(!select(!vec4<bool>(true, global1.x, global1.x, global1.x), select(vec4<bool>(false, global1.x, global1.x, global1.x), vec4<bool>(true, false, global1.x, true), false), !global1.x), select(!(!vec4<bool>(false, true, global1.x, global1.x)), vec4<bool>(true, global1.x, select(global1.x, true, true), global1.x), true), global1.x), vec4<bool>(all(vec3<bool>(all(global1.yz), !global1.x, false)), true, !global1.x, var_0 > 16115u), !(!select(select(vec4<bool>(false, true, true, false), vec4<bool>(global1.x, global1.x, false, global1.x), vec4<bool>(true, true, false, global1.x)), vec4<bool>(false, global1.x, global1.x, global1.x), vec4<bool>(global1.x, true, true, global1.x))));
    let var_2 = vec3<bool>(false, var_1.x && (arg_1.b.a.x < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -423f))), any(select(vec4<bool>(true, true, !var_1.x, true), vec4<bool>(false & global1.x, true, global1.x, true), func_3(arg_1))));
    var var_3 = global3[_wgslsmith_index_u32(min(~firstLeadingBit(99892u), _wgslsmith_dot_vec4_u32(reverseBits(global4[_wgslsmith_index_u32(var_0, 32u)]), ~(~_wgslsmith_div_vec4_u32(global4[_wgslsmith_index_u32(22674u, 32u)], global4[_wgslsmith_index_u32(49033u, 32u)])))), 3u)];
    return u_input.d;
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    let var_0 = true;
    let var_1 = -vec3<i32>(_wgslsmith_sub_i32(u_input.b.x, 1i), u_input.c, -countOneBits(u_input.c)) >> ((vec3<u32>(_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.a, 23384u), 19266u | u_input.a), ~103826u << (_wgslsmith_dot_vec4_u32(global4[_wgslsmith_index_u32(15419u, 32u)], vec4<u32>(u_input.d.x, 0u, u_input.a, u_input.d.x)) % 32u), _wgslsmith_mod_u32(firstTrailingBit(1u), _wgslsmith_dot_vec4_u32(global4[_wgslsmith_index_u32(u_input.d.x, 32u)], global4[_wgslsmith_index_u32(1u, 32u)]))) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(u_input.d.x, 1u), ~22244u, 1u), func_2(-1i, Struct_2(Struct_1(vec3<f32>(arg_0.a.x, -544f, 173f)), Struct_1(vec3<f32>(-892f, 1620f, arg_0.a.x)), vec4<i32>(u_input.b.x, 2147483647i, u_input.c, -1i))))) % vec3<u32>(32u));
    let var_2 = ~_wgslsmith_mod_vec2_i32(~select(vec2<i32>(u_input.b.x, u_input.b.x), reverseBits(u_input.b.xx), var_0 & global1.x), vec2<i32>(~(-u_input.b.x), firstTrailingBit(-u_input.c)));
    var var_3 = _wgslsmith_clamp_u32(4294967295u, u_input.a, 4294967295u ^ min(0u ^ u_input.d.x, 0u));
    var var_4 = vec2<u32>(countOneBits(_wgslsmith_dot_vec4_u32(~(vec4<u32>(u_input.d.x, u_input.e.x, 4294967295u, 0u) & u_input.e), u_input.e)), u_input.e.x);
    return Struct_2(arg_0, Struct_1(arg_0.a), vec4<i32>(~(-14754i), firstLeadingBit(var_2.x), _wgslsmith_mult_i32(u_input.c, _wgslsmith_div_i32(_wgslsmith_div_i32(1i, var_2.x), _wgslsmith_add_i32(15092i, -20085i))), var_1.x));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<f32>) -> vec4<bool> {
    let var_0 = func_1(Struct_1(arg_0.b.a));
    global3 = array<Struct_1, 3>();
    let var_1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(arg_1, vec2<f32>(-356f, -590f))))));
    let var_2 = vec3<bool>(!(1u != u_input.a) != (false || func_3(arg_0).x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-3641f + 1266f), _wgslsmith_f_op_f32(421f * _wgslsmith_div_f32(var_1.x, -885f))) <= -158f, false);
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-arg_0.b.a)), func_1(func_1(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(1663f, -227f, 681f) - vec3<f32>(-110f, var_1.x, -863f)))).b).a, vec4<i32>(_wgslsmith_sub_i32(~var_0.c.x, u_input.b.x), arg_0.c.x, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, arg_0.c.x, u_input.b.x), vec3<i32>(var_0.c.x, u_input.b.x, 17602i)), vec3<i32>(~(-1i), -u_input.b.x, ~(-1i))), _wgslsmith_dot_vec2_i32(~vec2<i32>(var_0.c.x, var_0.c.x) ^ _wgslsmith_mult_vec2_i32(vec2<i32>(arg_0.c.x, arg_0.c.x), vec2<i32>(-14075i, u_input.b.x)), _wgslsmith_clamp_vec2_i32(var_0.c.ww, select(vec2<i32>(30748i, u_input.c), var_0.c.xz, true), max(arg_0.c.ww, var_0.c.xw)))));
    return vec4<bool>(!(!(false | (var_2.x && true))), global1.x, var_2.x, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.xz;
    global1 = !select(select(select(!vec4<bool>(global1.x, false, global1.x, global1.x), vec4<bool>(true, global1.x, true, true), vec4<bool>(global1.x, global1.x, global1.x, global1.x)), !(!vec4<bool>(true, global1.x, false, true)), func_4(func_1(Struct_1(vec3<f32>(-552f, 858f, 423f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 470f)))), func_3(Struct_2(Struct_1(vec3<f32>(-1682f, -1998f, -1730f)), func_1(global3[_wgslsmith_index_u32(1641u, 3u)]).b, min(vec4<i32>(-1i, var_0.x, 0i, u_input.b.x), vec4<i32>(2147483647i, -11583i, -2027i, 1i)))), firstTrailingBit(u_input.a) <= _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e.x, 85562u), vec2<u32>(27857u, u_input.e.x)));
    let var_1 = _wgslsmith_mult_i32(0i, -(var_0.x | (select(var_0.x, 17785i, global1.x) << (u_input.e.x % 32u))));
    let var_2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-638f, _wgslsmith_f_op_f32(max(func_1(Struct_1(vec3<f32>(-2033f, -1000f, 756f))).a.a.x, -1548f)), _wgslsmith_div_f32(func_1(Struct_1(vec3<f32>(2254f, -249f, 463f))).b.a.x, -1000f), 833f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-560f, -2060f, 710f, 967f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1676f, 327f, 1759f, -1169f), vec4<f32>(-548f, -147f, 1966f, -1238f)))))));
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(var_2.wxx - vec3<f32>(_wgslsmith_f_op_f32(ceil(var_2.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(var_2.x, 797f, global1.x)), var_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x - -1000f) - var_2.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(i32(-1i) * -2147483647i, u_input.b.x, _wgslsmith_dot_vec2_i32(reverseBits(var_0), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b.x, var_1), u_input.b.yy)), -1i));
}

