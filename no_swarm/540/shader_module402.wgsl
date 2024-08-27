struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec4<u32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
    d: vec4<f32>,
    e: u32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: Struct_4,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<vec3<i32>, 2>;

var<private> global2: u32 = 4294967295u;

var<private> global3: array<vec4<f32>, 32> = array<vec4<f32>, 32>(vec4<f32>(288f, -474f, 466f, 415f), vec4<f32>(1636f, 747f, -101f, -434f), vec4<f32>(-544f, 2175f, 1298f, -108f), vec4<f32>(517f, 1330f, 1000f, 1049f), vec4<f32>(-1000f, -1055f, 1000f, -209f), vec4<f32>(-1000f, -189f, 1112f, -981f), vec4<f32>(-1680f, 615f, 1634f, 1280f), vec4<f32>(-405f, 770f, -1356f, 285f), vec4<f32>(679f, 674f, -1269f, 543f), vec4<f32>(154f, 143f, -153f, -404f), vec4<f32>(967f, 102f, 838f, -428f), vec4<f32>(1236f, -597f, -315f, -417f), vec4<f32>(1282f, 531f, 268f, 652f), vec4<f32>(-501f, 485f, -1722f, -1699f), vec4<f32>(-441f, -857f, 1667f, 799f), vec4<f32>(-208f, 1084f, 167f, 1000f), vec4<f32>(196f, 326f, -622f, -1146f), vec4<f32>(2193f, -875f, -569f, -138f), vec4<f32>(-144f, 253f, -2224f, 630f), vec4<f32>(-2279f, -696f, -1566f, 195f), vec4<f32>(-519f, -900f, 1411f, 952f), vec4<f32>(901f, -155f, -228f, -996f), vec4<f32>(1000f, 1104f, 1207f, 829f), vec4<f32>(1000f, 359f, 582f, 169f), vec4<f32>(761f, 1471f, -1000f, -675f), vec4<f32>(720f, 281f, -568f, 605f), vec4<f32>(717f, -827f, 326f, 682f), vec4<f32>(-323f, -1368f, -405f, 675f), vec4<f32>(191f, 2414f, -1000f, -290f), vec4<f32>(-1269f, 297f, -195f, -1136f), vec4<f32>(-517f, 105f, -1376f, -1129f), vec4<f32>(-1000f, 165f, -903f, -1521f));

var<private> global4: array<vec3<i32>, 14> = array<vec3<i32>, 14>(vec3<i32>(0i, 54182i, i32(-2147483648)), vec3<i32>(-1i, -2747i, 1i), vec3<i32>(i32(-2147483648), 2147483647i, -55635i), vec3<i32>(17460i, 48423i, 15068i), vec3<i32>(-13864i, -9214i, -1i), vec3<i32>(15559i, -37806i, 2147483647i), vec3<i32>(-27160i, 26558i, 1i), vec3<i32>(32409i, 1i, 0i), vec3<i32>(1i, 19994i, -23336i), vec3<i32>(0i, -1i, -40176i), vec3<i32>(2147483647i, 3142i, 2147483647i), vec3<i32>(-1i, 16690i, 1992i), vec3<i32>(0i, 1i, 14947i), vec3<i32>(1i, -52442i, 1i));

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec4<i32>, arg_1: bool, arg_2: vec4<u32>) -> vec4<i32> {
    let var_0 = !select(!(!vec4<bool>(arg_1, false, arg_1, true)), vec4<bool>(min(u_input.a, u_input.a) != abs(2147483647i), any(!vec3<bool>(arg_1, arg_1, arg_1)), arg_1, arg_1), select(!(!vec4<bool>(true, arg_1, true, arg_1)), vec4<bool>(arg_1 || arg_1, arg_1, arg_1 & arg_1, !arg_1), vec4<bool>(all(vec3<bool>(arg_1, true, arg_1)), true, false, true)));
    global4 = array<vec3<i32>, 14>();
    global4 = array<vec3<i32>, 14>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, -265f, arg_1))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-365f))))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(179f * 1109f)))), -1139f)));
    let var_2 = ~arg_2.xxz;
    return _wgslsmith_mult_vec4_i32(arg_0, -(~(~vec4<i32>(u_input.a, -2147483647i, global0.x, 23594i))));
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: i32, arg_3: vec3<i32>) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(181f, 1953f, -125f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-947f, -244f, 1683f)) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-2203f, 214f, -419f))))))));
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    let var_0 = vec2<i32>(-26260i, firstTrailingBit(_wgslsmith_div_i32(-833i, 2147483647i)));
    let var_1 = min(98813u, ~_wgslsmith_sub_u32(~53665u, 18548u));
    var var_2 = arg_0.d.x > _wgslsmith_f_op_f32(arg_0.d.x - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-947f * arg_0.d.x))))));
    global2 = 44621u;
    let var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(abs(var_1), _wgslsmith_dot_vec4_i32(~vec4<i32>(var_0.x, -2147483647i, 5454i, global0.x), func_3(vec4<i32>(var_0.x, var_0.x, var_0.x, global0.x), false, arg_0.c)), global0.x, -vec3<i32>(-42638i, 17644i, var_0.x))) - vec3<f32>(arg_0.d.x, _wgslsmith_f_op_f32(f32(-1f) * -327f), -996f)), Struct_2(arg_0, arg_0, firstTrailingBit(vec3<u32>(abs(arg_0.a.x), 19299u, ~arg_0.c.x)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(global3[_wgslsmith_index_u32(min(var_1, 8820u), 32u)])))), reverseBits(_wgslsmith_dot_vec2_u32(arg_0.c.xx, _wgslsmith_div_vec2_u32(vec2<u32>(var_1, var_1), arg_0.a.zz)))));
    return var_3.b;
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: vec3<bool>) -> vec2<u32> {
    var var_0 = func_2(Struct_1(vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(10107u, 4294967295u, 1u), 1u, 0u), 4294967295u, ~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(74203u, 22911u))), true, vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_div_vec2_f32(vec2<f32>(-618f, 1000f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1363f, -115f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(192f, 2060f))))));
    let var_1 = var_0.c.x;
    let var_2 = 1257f;
    var var_3 = var_0.c.x;
    global3 = array<vec4<f32>, 32>();
    return ~(~(vec2<u32>(var_0.b.c.x, 18554u) & vec2<u32>(~var_0.a.a.x, _wgslsmith_div_u32(4294967295u, var_0.e))));
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_5, arg_2: Struct_1) -> Struct_4 {
    let var_0 = arg_1.d;
    global4 = array<vec3<i32>, 14>();
    let var_1 = abs(arg_1.d.b.c.x & 81650u);
    global3 = array<vec4<f32>, 32>();
    global3 = array<vec4<f32>, 32>();
    return Struct_4(var_0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2(Struct_1(vec4<u32>(89692u, 2341u, arg_1.d.b.a.x, 36413u), var_0.a.b, vec4<u32>(arg_1.d.e, arg_1.d.b.c.x, 56546u, arg_1.d.e), var_0.d.xz)).d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(func_1(-countOneBits(2147483647i), all(vec2<bool>(true, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true))), vec2<u32>(1u, ~1u)), 14u)], Struct_5((vec3<i32>(global0.x, -2147483647i, 4121i) | firstTrailingBit(global0.zww)) << (firstLeadingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(18210u, 0u, 21505u), vec3<u32>(90849u, 8655u, 0u), vec3<u32>(82328u, 1u, 4294967295u))) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(131f, -623f, -738f), vec3<f32>(-1000f, 1000f, -520f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-471f, 1506f, -584f)))), Struct_4(vec4<f32>(1f, -212f, _wgslsmith_div_f32(-995f, -1286f), 866f), 1000f), func_2(Struct_1(vec4<u32>(1u, 1u, 1u, 1u), true, select(vec4<u32>(5035u, 0u, 64088u, 0u), vec4<u32>(4294967295u, 4294967295u, 113345u, 0u), true), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1080f, -340f) + vec2<f32>(1855f, -1081f))))), Struct_1(max(vec4<u32>(1u, 1u, ~1u, 30175u), vec4<u32>(1u, ~10872u, abs(70792u), 65025u)), select(true, true, any(vec4<bool>(false, false, false, true))), vec4<u32>(~firstLeadingBit(34464u), ~88096u, 0u, 1u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(466f, -124f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1285f, -1487f), vec2<f32>(976f, -1000f), vec2<bool>(true, true)))))));
    global3 = array<vec4<f32>, 32>();
    global4 = array<vec3<i32>, 14>();
    let var_1 = Struct_5(global0.zwy >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(func_4(select(func_2(func_2(Struct_1(vec4<u32>(19138u, 1u, 68664u, 0u), false, vec4<u32>(101171u, 31515u, 1u, 0u), var_0.a.zx)).a).e, _wgslsmith_dot_vec2_u32(vec2<u32>(9562u, 59032u), ~vec2<u32>(43682u, 0u)), true), _wgslsmith_clamp_i32(24460i, -6015i, 1i), _wgslsmith_dot_vec2_i32(global0.yy, global0.xx & global0.yy) ^ -_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -1i), vec2<i32>(-2147483647i, -1i)), global4[_wgslsmith_index_u32(func_1(_wgslsmith_mod_i32(global0.x, 0i) & -2126i, true | all(vec4<bool>(false, true, false, true)), vec3<bool>(select(true, true, false), true, true)).x, 14u)])), var_0, func_2(func_2(func_2(func_2(Struct_1(vec4<u32>(30732u, 4294967295u, 1u, 41277u), true, vec4<u32>(4294967295u, 0u, 0u, 20862u), vec2<f32>(-561f, 923f))).b).a).a));
    global3 = array<vec4<f32>, 32>();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-640f - -1351f) + var_0.a.x);
    global0 = vec4<i32>(2147483647i, var_1.a.x, -(u_input.a & (func_3(vec4<i32>(var_1.a.x, -14718i, u_input.a, global0.x), false, vec4<u32>(var_1.d.a.c.x, var_1.d.a.c.x, var_1.d.e, 0u)).x ^ global0.x)), _wgslsmith_add_i32(firstLeadingBit(abs(select(u_input.a, var_1.a.x, true))), global0.x));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.b.x)) - _wgslsmith_div_f32(-526f, _wgslsmith_f_op_f32(step(var_1.c.a.x, var_0.a.x)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(379f + 1480f))))))), _wgslsmith_f_op_f32(floor(1000f)));
}

