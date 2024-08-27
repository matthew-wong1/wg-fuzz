struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: vec4<i32>,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(vec3<bool>(false, false, true), Struct_1(vec2<i32>(-12966i, -24014i), 114654u, false, 316f), vec4<f32>(-840f, 1321f, -1388f, -322f), Struct_1(vec2<i32>(-2458i, 1i), 4294967295u, false, 1000f), false), Struct_2(vec3<bool>(false, true, false), Struct_1(vec2<i32>(36297i, -1i), 1u, false, 214f), vec4<f32>(-768f, -650f, 1512f, -152f), Struct_1(vec2<i32>(0i, 0i), 4294967295u, false, 1031f), true), Struct_2(vec3<bool>(true, false, true), Struct_1(vec2<i32>(1i, -1i), 4294967295u, true, -869f), vec4<f32>(-495f, -263f, 1537f, -709f), Struct_1(vec2<i32>(1i, 0i), 1u, true, 1248f), false), Struct_2(vec3<bool>(true, false, true), Struct_1(vec2<i32>(48038i, 2147483647i), 4294967295u, true, -686f), vec4<f32>(1000f, 1447f, 254f, -277f), Struct_1(vec2<i32>(-48725i, i32(-2147483648)), 1u, true, 1000f), true), Struct_2(vec3<bool>(false, true, true), Struct_1(vec2<i32>(0i, 66699i), 4294967295u, false, -301f), vec4<f32>(465f, -921f, -435f, -268f), Struct_1(vec2<i32>(0i, 1i), 6837u, true, -102f), true), Struct_2(vec3<bool>(true, false, false), Struct_1(vec2<i32>(10058i, -28382i), 1u, true, 882f), vec4<f32>(697f, -678f, -1119f, -409f), Struct_1(vec2<i32>(28958i, -38924i), 23884u, true, 1359f), true), Struct_2(vec3<bool>(true, false, true), Struct_1(vec2<i32>(-1i, -19174i), 1u, true, -1358f), vec4<f32>(-726f, -1717f, -1823f, 169f), Struct_1(vec2<i32>(-19626i, -6362i), 80543u, false, -954f), true), Struct_2(vec3<bool>(true, true, true), Struct_1(vec2<i32>(2147483647i, 0i), 74097u, true, 1000f), vec4<f32>(288f, -1307f, 662f, -1113f), Struct_1(vec2<i32>(0i, 13007i), 13146u, false, 760f), false), Struct_2(vec3<bool>(true, true, true), Struct_1(vec2<i32>(32262i, 1i), 0u, true, 778f), vec4<f32>(-1516f, 1222f, -318f, -769f), Struct_1(vec2<i32>(i32(-2147483648), 1i), 77574u, true, -928f), true), Struct_2(vec3<bool>(true, true, false), Struct_1(vec2<i32>(0i, -59881i), 0u, true, 1182f), vec4<f32>(-191f, 971f, 1000f, 1594f), Struct_1(vec2<i32>(26860i, -20324i), 16339u, true, -985f), true), Struct_2(vec3<bool>(true, false, true), Struct_1(vec2<i32>(-55440i, 2147483647i), 7009u, false, -1481f), vec4<f32>(1294f, -1138f, -1222f, 309f), Struct_1(vec2<i32>(0i, 2147483647i), 46196u, false, -381f), true), Struct_2(vec3<bool>(false, false, true), Struct_1(vec2<i32>(14171i, i32(-2147483648)), 25356u, false, 109f), vec4<f32>(1022f, 1415f, 278f, -719f), Struct_1(vec2<i32>(2147483647i, -35493i), 87415u, true, -141f), false), Struct_2(vec3<bool>(false, false, false), Struct_1(vec2<i32>(49628i, 21225i), 0u, false, 395f), vec4<f32>(-922f, 412f, 104f, -392f), Struct_1(vec2<i32>(26842i, -21423i), 6316u, false, -963f), true), Struct_2(vec3<bool>(true, false, false), Struct_1(vec2<i32>(2147483647i, 1i), 0u, true, 307f), vec4<f32>(-183f, -1516f, 184f, -446f), Struct_1(vec2<i32>(25721i, i32(-2147483648)), 0u, false, -2023f), true), Struct_2(vec3<bool>(true, true, true), Struct_1(vec2<i32>(-26711i, 16587i), 0u, true, 1000f), vec4<f32>(916f, 1000f, 1000f, -820f), Struct_1(vec2<i32>(-1i, -1i), 80405u, true, 232f), true), Struct_2(vec3<bool>(true, false, false), Struct_1(vec2<i32>(2147483647i, -41443i), 4294967295u, true, 305f), vec4<f32>(-133f, -171f, 252f, -1782f), Struct_1(vec2<i32>(1i, 0i), 88926u, false, -1003f), true), Struct_2(vec3<bool>(false, true, false), Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), 92519u, false, -936f), vec4<f32>(318f, 1101f, -1206f, -741f), Struct_1(vec2<i32>(2147483647i, 11320i), 4294967295u, false, 436f), true), Struct_2(vec3<bool>(true, false, false), Struct_1(vec2<i32>(-26837i, 40149i), 22492u, true, -877f), vec4<f32>(-110f, 2040f, 374f, -1000f), Struct_1(vec2<i32>(0i, 2147483647i), 0u, true, 290f), true), Struct_2(vec3<bool>(true, false, false), Struct_1(vec2<i32>(6376i, -23556i), 1u, true, 2062f), vec4<f32>(-236f, 1000f, -207f, 1762f), Struct_1(vec2<i32>(2147483647i, 0i), 45993u, true, -1000f), true), Struct_2(vec3<bool>(false, true, true), Struct_1(vec2<i32>(1123i, i32(-2147483648)), 32697u, true, -479f), vec4<f32>(-939f, 500f, 2381f, 233f), Struct_1(vec2<i32>(-1i, 1i), 4294967295u, true, -994f), true), Struct_2(vec3<bool>(false, false, false), Struct_1(vec2<i32>(0i, -34718i), 2976u, false, -1654f), vec4<f32>(-224f, -219f, 253f, 1475f), Struct_1(vec2<i32>(1i, 67803i), 0u, true, -1218f), true), Struct_2(vec3<bool>(false, true, false), Struct_1(vec2<i32>(1i, i32(-2147483648)), 0u, false, -132f), vec4<f32>(633f, 547f, 976f, 2328f), Struct_1(vec2<i32>(-3079i, 0i), 76656u, true, 407f), true), Struct_2(vec3<bool>(false, false, false), Struct_1(vec2<i32>(2147483647i, 5323i), 0u, false, 849f), vec4<f32>(-460f, 247f, 991f, -949f), Struct_1(vec2<i32>(1i, 1i), 0u, true, -875f), false), Struct_2(vec3<bool>(true, true, false), Struct_1(vec2<i32>(-13788i, -72959i), 4294967295u, false, -2821f), vec4<f32>(1622f, 890f, -1062f, 558f), Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), 0u, true, -3357f), true), Struct_2(vec3<bool>(true, false, false), Struct_1(vec2<i32>(-1i, 1i), 0u, false, 1034f), vec4<f32>(742f, -279f, -800f, 1000f), Struct_1(vec2<i32>(i32(-2147483648), 0i), 1u, false, 612f), false));

var<private> global1: f32;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: i32, arg_2: Struct_3) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_2.b), arg_2.b, _wgslsmith_f_op_f32(-1820f + 273f), arg_2.b), arg_0), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, 400f, -244f, -805f) - vec4<f32>(-1367f, arg_2.b, arg_0.x, -1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, arg_2.b, -1085f)))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1457f, 359f, -1947f, 1183f))))))), arg_0, any(vec4<bool>(true, false, false, -41621i >= _wgslsmith_dot_vec2_i32(arg_2.a.ww, vec2<i32>(arg_2.a.x, -45472i))))));
    let var_1 = global0[_wgslsmith_index_u32(~arg_2.c, 25u)];
    let var_2 = u_input.c;
    var var_3 = arg_0;
    global1 = _wgslsmith_f_op_f32(-187f + 688f);
    return var_2.x;
}

fn func_2(arg_0: bool, arg_1: u32) -> Struct_1 {
    let var_0 = Struct_3(_wgslsmith_mult_vec4_i32(-reverseBits(~vec4<i32>(-3602i, -16060i, u_input.d.x, u_input.d.x)), vec4<i32>(-reverseBits(u_input.d.x), -(u_input.d.x << (24780u % 32u)), u_input.d.x, -u_input.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1384f * -1413f) * _wgslsmith_f_op_f32(ceil(-904f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(627f))))))), func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(556f, -1015f, -1950f, -956f)), u_input.d.x, Struct_3(-vec4<i32>(u_input.d.x, u_input.d.x, 1i, u_input.d.x), 1f, arg_1 << (u_input.a % 32u))) >> (~_wgslsmith_sub_u32(func_3(vec4<f32>(-1520f, 656f, -2772f, 1511f), 24031i, Struct_3(vec4<i32>(2147483647i, -2147483647i, -31637i, u_input.d.x), -472f, 0u)), 1u) % 32u));
    var var_1 = Struct_3(reverseBits(vec4<i32>(select(-53961i, 2147483647i, true), var_0.a.x, 1i, u_input.d.x)) << (~(~_wgslsmith_sub_vec4_u32(u_input.c, vec4<u32>(u_input.a, u_input.b.x, var_0.c, var_0.c))) % vec4<u32>(32u)), var_0.b, 6697u);
    var var_2 = _wgslsmith_div_i32(-1i, ~var_0.a.x);
    var_2 = firstLeadingBit(var_0.a.x);
    var var_3 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(0u, arg_1), 11349u), 25u)];
    return var_3.d;
}

fn func_1(arg_0: f32) -> f32 {
    var var_0 = func_2((_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(u_input.c, vec4<u32>(0u, 0u, u_input.b.x, u_input.c.x)), u_input.c) <= ~25171u) & false, countOneBits(0u));
    let var_1 = _wgslsmith_f_op_f32(round(var_0.d));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-539f + _wgslsmith_f_op_f32(-1154f - _wgslsmith_f_op_f32(max(1000f, -1433f))))));
    var var_2 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(566f - -1352f)) + _wgslsmith_f_op_f32(exp2(var_1))) != _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.d))))), var_0.b);
    var_2 = Struct_1(vec2<i32>(1i, firstTrailingBit(1i)), _wgslsmith_add_u32(max(countOneBits(47056u) ^ firstLeadingBit(var_0.b), _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(34551u, u_input.a, u_input.b.x))), 0u), var_2.c, -1607f);
    return -1733f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-808f, _wgslsmith_f_op_f32(f32(-1f) * -878f)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -439f), 763f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1576f, _wgslsmith_div_f32(-640f, _wgslsmith_f_op_f32(-297f + -464f)))), _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(508f * 1909f) * _wgslsmith_f_op_f32(select(640f, -1158f, true)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-239f * -685f)) + 1f));
    global0 = array<Struct_2, 25>();
    var var_1 = all(select(!vec2<bool>(all(vec4<bool>(false, false, true, false)), select(true, false, true)), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>((u_input.c.x & u_input.b.x) == select(u_input.b.x, 110423u, false), all(vec3<bool>(true, true, true)) | true)));
    var var_2 = _wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.d.x, ~u_input.d.x >> (~0u % 32u)), u_input.d.x);
    let var_3 = Struct_3(~(~vec4<i32>(2480i, u_input.d.x, u_input.d.x, -2147483647i) & vec4<i32>(12845i, 14408i, -38506i, 48232i)) >> (_wgslsmith_div_vec4_u32(u_input.c, countOneBits(vec4<u32>(u_input.b.x, u_input.b.x, 89471u, 24260u))) % vec4<u32>(32u)), 1561f, ~(~u_input.a ^ ~u_input.c.x) ^ _wgslsmith_add_u32(u_input.c.x, ~(u_input.a ^ u_input.c.x)));
    let var_4 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(1i);
}

