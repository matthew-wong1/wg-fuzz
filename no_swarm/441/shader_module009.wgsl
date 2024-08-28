struct Struct_1 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec2<f32>,
    d: i32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec4<f32>,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 7>;

var<private> global1: array<vec4<i32>, 32>;

var<private> global2: Struct_1 = Struct_1(vec3<f32>(865f, -199f, -579f), vec4<i32>(-1i, -1i, 45960i, 0i), vec2<f32>(210f, 1448f), 30329i, vec2<u32>(4294967295u, 55090u));

var<private> global3: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec3<f32>(110f, 1489f, -647f), vec4<i32>(0i, 27171i, -84984i, 2147483647i), vec2<f32>(-299f, 186f), 40076i, vec2<u32>(4294967295u, 1u)), Struct_1(vec3<f32>(161f, 262f, 1304f), vec4<i32>(1i, 2147483647i, 20727i, -22846i), vec2<f32>(1000f, 1017f), 2147483647i, vec2<u32>(1u, 34156u)), Struct_1(vec3<f32>(482f, 1603f, -109f), vec4<i32>(i32(-2147483648), 1i, 2147483647i, -1i), vec2<f32>(-1500f, 761f), i32(-2147483648), vec2<u32>(20414u, 1u)), Struct_1(vec3<f32>(-1079f, 351f, -172f), vec4<i32>(69579i, i32(-2147483648), 19235i, 1i), vec2<f32>(-1260f, 1526f), 1i, vec2<u32>(0u, 42359u)), Struct_1(vec3<f32>(-731f, -538f, -837f), vec4<i32>(35370i, 19526i, 30592i, 6029i), vec2<f32>(1300f, -513f), 55528i, vec2<u32>(0u, 4294967295u)), Struct_1(vec3<f32>(-1000f, 793f, -644f), vec4<i32>(i32(-2147483648), -51306i, -6870i, 1i), vec2<f32>(-783f, -845f), 2147483647i, vec2<u32>(5793u, 1u)), Struct_1(vec3<f32>(733f, 447f, 1000f), vec4<i32>(-1i, 2147483647i, 4822i, 1i), vec2<f32>(450f, -307f), -1i, vec2<u32>(0u, 1u)), Struct_1(vec3<f32>(-1754f, 2071f, -778f), vec4<i32>(-42589i, 0i, 1i, 23374i), vec2<f32>(-1136f, 266f), 10090i, vec2<u32>(0u, 27341u)), Struct_1(vec3<f32>(1085f, 627f, 293f), vec4<i32>(8683i, 22787i, 70849i, -1i), vec2<f32>(1437f, 614f), 0i, vec2<u32>(10313u, 0u)), Struct_1(vec3<f32>(317f, -167f, -318f), vec4<i32>(2147483647i, -29631i, -48737i, -1i), vec2<f32>(-504f, -1067f), 41677i, vec2<u32>(44058u, 4294967295u)), Struct_1(vec3<f32>(1065f, -1179f, -1363f), vec4<i32>(0i, -25207i, 2147483647i, 1598i), vec2<f32>(-1361f, -257f), 0i, vec2<u32>(33967u, 61111u)), Struct_1(vec3<f32>(944f, -146f, -107f), vec4<i32>(0i, 2147483647i, i32(-2147483648), 82407i), vec2<f32>(1203f, 1753f), 1i, vec2<u32>(0u, 15857u)), Struct_1(vec3<f32>(284f, -552f, 655f), vec4<i32>(0i, -40798i, 1i, -1i), vec2<f32>(357f, 1119f), 74958i, vec2<u32>(47912u, 0u)), Struct_1(vec3<f32>(288f, 121f, -947f), vec4<i32>(0i, 1i, -30631i, -23385i), vec2<f32>(-1293f, 386f), -37601i, vec2<u32>(339u, 0u)), Struct_1(vec3<f32>(197f, -1486f, 505f), vec4<i32>(i32(-2147483648), -59186i, -1i, i32(-2147483648)), vec2<f32>(-1000f, 1753f), 1i, vec2<u32>(0u, 1u)), Struct_1(vec3<f32>(-565f, 1154f, 1443f), vec4<i32>(-56177i, -21944i, -1i, 2080i), vec2<f32>(249f, -125f), 1i, vec2<u32>(63491u, 4294967295u)), Struct_1(vec3<f32>(-209f, -1119f, 1000f), vec4<i32>(27704i, -24079i, 2147483647i, 1i), vec2<f32>(-426f, -504f), 16683i, vec2<u32>(1u, 1u)), Struct_1(vec3<f32>(-1987f, 1397f, -1360f), vec4<i32>(0i, 10686i, 86101i, 0i), vec2<f32>(-1667f, -1002f), 29100i, vec2<u32>(24465u, 70113u)), Struct_1(vec3<f32>(-1000f, 1016f, -1117f), vec4<i32>(i32(-2147483648), 36465i, 1i, i32(-2147483648)), vec2<f32>(-807f, 855f), 13902i, vec2<u32>(0u, 14362u)), Struct_1(vec3<f32>(1425f, 276f, 2250f), vec4<i32>(1i, 34962i, 0i, 0i), vec2<f32>(207f, -359f), 36710i, vec2<u32>(33132u, 0u)), Struct_1(vec3<f32>(-585f, 624f, -1259f), vec4<i32>(i32(-2147483648), 30055i, -1i, -1i), vec2<f32>(-1640f, 344f), i32(-2147483648), vec2<u32>(4294967295u, 0u)), Struct_1(vec3<f32>(1274f, 873f, -2036f), vec4<i32>(0i, -50827i, -34099i, i32(-2147483648)), vec2<f32>(131f, -3089f), -69189i, vec2<u32>(0u, 1u)), Struct_1(vec3<f32>(135f, -138f, -1000f), vec4<i32>(1090i, -1i, 14141i, 1i), vec2<f32>(-308f, 262f), 13156i, vec2<u32>(37838u, 52944u)));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    global3 = array<Struct_1, 23>();
    var var_0 = ((vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global2.e.x, 21931u, arg_0.e.x, 50150u), vec4<u32>(arg_0.e.x, 4294967295u, 0u, arg_0.e.x)), arg_1.e.x) & ~(~global2.e)) >> (vec2<u32>(abs(arg_0.e.x >> (0u % 32u)), firstLeadingBit(firstTrailingBit(arg_0.e.x))) % vec2<u32>(32u))) << (~(~reverseBits(max(vec2<u32>(4294967295u, 66753u), global2.e))) % vec2<u32>(32u));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-300f - -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-862f)), _wgslsmith_f_op_f32(step(arg_1.c.x, arg_0.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.x) + _wgslsmith_f_op_f32(1525f * arg_1.c.x)))), select(arg_1.b, abs(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.b.x, arg_1.b.x, arg_1.b.x, arg_1.d), ~arg_1.b)), any(vec3<bool>(true, true, true)) || (arg_0.e.x < ~1u)), vec2<f32>(global2.a.x, _wgslsmith_f_op_f32(arg_0.c.x * -313f)), _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -arg_1.b, vec4<i32>(~2147483647i, -arg_1.d, global2.b.x, firstTrailingBit(global2.d))), ~_wgslsmith_dot_vec4_i32(max(arg_1.b, vec4<i32>(-20540i, arg_1.d, global2.b.x, -1i)), _wgslsmith_add_vec4_i32(global1[_wgslsmith_index_u32(0u, 32u)], arg_0.b)), max(~2147483647i, max(arg_1.d, -63026i)) | -arg_1.b.x), ((~vec2<u32>(arg_0.e.x, global2.e.x) << (vec2<u32>(u_input.a, var_0.x) % vec2<u32>(32u))) << (arg_1.e % vec2<u32>(32u))) << (arg_1.e % vec2<u32>(32u)));
    var var_2 = global3[_wgslsmith_index_u32(30438u, 23u)];
    var_0 = var_1.e;
    return _wgslsmith_f_op_f32(f32(-1f) * -587f);
}

fn func_2() -> vec3<bool> {
    global3 = array<Struct_1, 23>();
    global2 = global3[_wgslsmith_index_u32(0u, 23u)];
    var var_0 = !(!(!vec2<bool>(false, 4294967295u < u_input.a)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(global2.a.x))))));
    global0 = array<vec2<u32>, 7>();
    return select(vec3<bool>(!(!any(vec4<bool>(var_0.x, true, var_0.x, var_0.x))), -482f < _wgslsmith_f_op_f32(func_3(Struct_1(global2.a, vec4<i32>(global2.d, -14233i, global2.b.x, global2.b.x), vec2<f32>(397f, 167f), global2.d, global0[_wgslsmith_index_u32(global2.e.x, 7u)]), global3[_wgslsmith_index_u32(4294967295u, 23u)])), all(!vec4<bool>(true, false, var_0.x, var_0.x))), !select(!select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(false, true, var_0.x), vec3<bool>(var_0.x, false, var_0.x)), vec3<bool>(select(false, var_0.x, true), var_0.x, false), false), vec3<bool>(!(all(vec2<bool>(false, true)) & true), any(vec4<bool>(var_0.x, var_0.x, false, var_0.x)) == any(select(vec4<bool>(var_0.x, true, var_0.x, true), vec4<bool>(var_0.x, false, false, var_0.x), true)), !var_0.x));
}

fn func_4(arg_0: vec3<bool>, arg_1: f32, arg_2: f32) -> vec3<bool> {
    let var_0 = vec4<u32>(_wgslsmith_dot_vec4_u32(select(vec4<u32>(1u, 75689u, ~1u, u_input.a & 19166u), vec4<u32>(1u, 1u, 17058u, global2.e.x) ^ ~vec4<u32>(0u, u_input.a, 44511u, 4242u), !vec4<bool>(true, arg_0.x, false, arg_0.x)), select(_wgslsmith_mult_vec4_u32(vec4<u32>(9767u, 96921u, 4294967295u, global2.e.x) >> (vec4<u32>(1u, 0u, global2.e.x, global2.e.x) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(44761u, u_input.a, global2.e.x, 1u), vec4<u32>(global2.e.x, 64906u, u_input.a, global2.e.x))), vec4<u32>(~0u, ~4294967295u, abs(u_input.a), ~global2.e.x), !arg_0.x)), 1u, ~5991u | ~u_input.a, _wgslsmith_add_u32(1u, abs(global2.e.x)));
    global3 = array<Struct_1, 23>();
    var var_1 = _wgslsmith_f_op_f32(-401f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1 - arg_2))));
    let var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global3[_wgslsmith_index_u32(global2.e.x, 23u)], global3[_wgslsmith_index_u32(var_0.x, 23u)]))) * _wgslsmith_f_op_f32(exp2(global2.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -408f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(global2.a, vec4<i32>(global2.d, -14399i, global2.b.x, 40270i), vec2<f32>(arg_2, 1261f), 1i, var_0.wz), global3[_wgslsmith_index_u32(4294967295u, 23u)])) * global2.c.x)), global1[_wgslsmith_index_u32(~u_input.a, 32u)] << (max(vec4<u32>(_wgslsmith_div_u32(1807u, 4294967295u), 19022u, 1u, max(2160u, global2.e.x)), var_0) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-147f, 1779f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global2.c * vec2<f32>(-699f, -1249f)) - vec2<f32>(global2.c.x, 224f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-global2.a.zy), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, -121f)))))), ~(global2.d << (0u % 32u)), vec2<u32>(19858u, 0u));
    global1 = array<vec4<i32>, 32>();
    return !(!arg_0);
}

fn func_1() -> vec4<i32> {
    global1 = array<vec4<i32>, 32>();
    let var_0 = select(select(vec3<bool>(!any(vec3<bool>(false, true, false)), any(vec4<bool>(true, false, false, true)), false), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-910f * global2.c.x) + 459f) >= global2.c.x), func_4(func_2(), _wgslsmith_f_op_f32(max(640f, 158f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1222f * global2.c.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-221f, -554f, false))))), -1i <= (~(global2.d ^ global2.d) >> (abs(u_input.a & u_input.a) % 32u)));
    var var_1 = func_2().zz;
    global3 = array<Struct_1, 23>();
    var var_2 = _wgslsmith_sub_u32(u_input.a, 4294967295u | countOneBits(global2.e.x));
    return global2.b;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(max(-1437f, 517f)), -1140f, 673f))) - arg_0.a), max(vec4<i32>(arg_1.b.x, -8319i, -(~arg_0.b.x), ~_wgslsmith_sub_i32(global2.b.x, arg_1.b.x)), vec4<i32>(arg_1.d, -1i, func_1().x, global2.b.x)), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(131f + 548f)), -506f), global2.c.x), arg_1.d, ~vec2<u32>(global2.e.x >> (arg_0.e.x % 32u), _wgslsmith_sub_u32(abs(u_input.a), 37931u)));
    var var_1 = var_0.b.x ^ -14356i;
    global3 = array<Struct_1, 23>();
    global0 = array<vec2<u32>, 7>();
    let var_2 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-367f, -1000f, _wgslsmith_f_op_f32(round(var_0.a.x)), arg_0.c.x)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global2.a, vec3<f32>(-128f, global2.a.x, global2.a.x), true)))), func_1() >> ((vec4<u32>(u_input.a, 1u, 100303u, 7329u) & ~vec4<u32>(1u, 1u, u_input.a, 59012u)) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1221f, _wgslsmith_f_op_f32(-global2.c.x)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-427f, global2.a.x))))), global2.d, vec2<u32>(~(4294967295u >> (u_input.a % 32u)), 11412u >> (min(u_input.a, 15739u) % 32u))), global3[_wgslsmith_index_u32(countOneBits(_wgslsmith_add_u32(_wgslsmith_sub_u32(494u, 0u), _wgslsmith_div_u32(4294967295u, global2.e.x) & ~48223u)), 23u)]);
    let var_1 = global3[_wgslsmith_index_u32(u_input.a, 23u)];
    var var_2 = ~(-var_1.b.zzw) | abs(firstTrailingBit(_wgslsmith_add_vec3_i32(-var_1.b.zzz, abs(vec3<i32>(global2.d, 1i, global2.d)))));
    global3 = array<Struct_1, 23>();
    var var_3 = -global2.b.wx;
    var_0 = any(!vec2<bool>(_wgslsmith_f_op_f32(-var_1.a.x) <= -1000f, 1u >= ~var_1.e.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1865f, var_1.c.x)))), -248f, 113f, 862f), _wgslsmith_mult_i32(var_3.x, -42295i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_1.a.x * -135f), var_1.c.x, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-global2.c.x))), ~global2.e.x, -(_wgslsmith_sub_vec4_i32(var_1.b >> (vec4<u32>(var_1.e.x, 69204u, 73562u, 71856u) % vec4<u32>(32u)), firstTrailingBit(global2.b)) & firstTrailingBit(global2.b)));
}

