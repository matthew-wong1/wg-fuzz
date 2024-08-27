struct Struct_1 {
    a: f32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 5236u;

var<private> global1: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(592f, vec3<f32>(454f, -1502f, -325f)), Struct_1(-865f, vec3<f32>(-938f, 594f, -234f)), Struct_1(-1178f, vec3<f32>(1622f, -1777f, -273f)), Struct_1(-1000f, vec3<f32>(-477f, 364f, 2536f)), Struct_1(-2326f, vec3<f32>(-2157f, -712f, -310f)), Struct_1(304f, vec3<f32>(702f, -1414f, -105f)), Struct_1(-549f, vec3<f32>(103f, -1223f, 273f)), Struct_1(-1172f, vec3<f32>(460f, -2686f, 988f)), Struct_1(1690f, vec3<f32>(915f, -416f, -914f)), Struct_1(-1394f, vec3<f32>(-490f, -1841f, -238f)), Struct_1(-1000f, vec3<f32>(539f, 922f, -153f)), Struct_1(-902f, vec3<f32>(-376f, 207f, 2092f)), Struct_1(-690f, vec3<f32>(1119f, -315f, 1000f)), Struct_1(-520f, vec3<f32>(-322f, 331f, 2102f)), Struct_1(-402f, vec3<f32>(-1947f, -1127f, -218f)), Struct_1(-267f, vec3<f32>(-1563f, 815f, 654f)), Struct_1(846f, vec3<f32>(1119f, -595f, -1062f)), Struct_1(1820f, vec3<f32>(-225f, 709f, 431f)), Struct_1(-510f, vec3<f32>(-360f, 1770f, -593f)), Struct_1(1000f, vec3<f32>(-1000f, 965f, -718f)), Struct_1(-606f, vec3<f32>(403f, -418f, -525f)), Struct_1(-232f, vec3<f32>(1264f, 315f, -1603f)), Struct_1(558f, vec3<f32>(-1175f, 651f, 328f)), Struct_1(274f, vec3<f32>(1061f, 2601f, 643f)), Struct_1(-643f, vec3<f32>(-2050f, -587f, 1199f)), Struct_1(1341f, vec3<f32>(-288f, 213f, 1435f)), Struct_1(-201f, vec3<f32>(426f, -188f, 1000f)), Struct_1(1553f, vec3<f32>(1097f, -1754f, -171f)), Struct_1(1231f, vec3<f32>(409f, -1038f, 682f)), Struct_1(175f, vec3<f32>(-1118f, -393f, -1895f)), Struct_1(-198f, vec3<f32>(322f, 350f, 1946f)), Struct_1(512f, vec3<f32>(421f, -985f, 134f)));

var<private> global2: Struct_1;

var<private> global3: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(115f, vec3<f32>(453f, 173f, 455f)), Struct_1(1762f, vec3<f32>(-143f, 1000f, -1368f)), Struct_1(-1531f, vec3<f32>(-1167f, 510f, 716f)), Struct_1(198f, vec3<f32>(249f, -952f, 343f)), Struct_1(438f, vec3<f32>(1000f, 1000f, 878f)), Struct_1(892f, vec3<f32>(334f, 1094f, -1202f)), Struct_1(219f, vec3<f32>(524f, 873f, 1152f)));

var<private> global4: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(163f, vec3<f32>(1191f, -1761f, -123f)), Struct_1(-2226f, vec3<f32>(-388f, -292f, -2335f)), Struct_1(2012f, vec3<f32>(3153f, 385f, 351f)), Struct_1(-364f, vec3<f32>(-1545f, 830f, -493f)), Struct_1(1080f, vec3<f32>(873f, 1000f, -1154f)), Struct_1(-165f, vec3<f32>(1184f, 601f, 993f)), Struct_1(876f, vec3<f32>(606f, -125f, -202f)), Struct_1(412f, vec3<f32>(2644f, -302f, 900f)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: Struct_1, arg_3: i32) -> f32 {
    global1 = array<Struct_1, 32>();
    let var_0 = Struct_1(global2.a, vec3<f32>(global2.a, arg_2.b.x, global2.a));
    let var_1 = -(~_wgslsmith_div_vec3_i32(-select(vec3<i32>(arg_3, arg_3, -2147483647i), vec3<i32>(26841i, arg_3, arg_3), arg_0), firstTrailingBit(max(vec3<i32>(arg_3, -2147483647i, 275i), vec3<i32>(arg_3, 82539i, arg_3)))));
    global3 = array<Struct_1, 7>();
    global1 = array<Struct_1, 32>();
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.b.x), var_0.b.x);
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> f32 {
    let var_0 = i32(-1i) * -1i;
    global1 = array<Struct_1, 32>();
    global2 = arg_1;
    global4 = array<Struct_1, 8>();
    let var_1 = _wgslsmith_f_op_f32(arg_1.b.x + _wgslsmith_f_op_f32(-arg_1.b.x));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-130f - var_1)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(true, ~u_input.b.x, Struct_1(arg_0, vec3<f32>(1064f, arg_0, -397f)), reverseBits(-2147483647i))))) - _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(abs(-979f)) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.b.x), 1303f), abs(0u), global3[_wgslsmith_index_u32(0u, 7u)], -11484i)));
}

fn func_1() -> vec3<i32> {
    global3 = array<Struct_1, 7>();
    global1 = array<Struct_1, 32>();
    let var_0 = -2147483647i >= _wgslsmith_clamp_i32(-(~10165i), -14809i, -1i << ((firstLeadingBit(u_input.a.x) << (~38826u % 32u)) % 32u));
    let var_1 = u_input.b;
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-313f + global2.a), _wgslsmith_f_op_f32(func_2(global2.b.x, global4[_wgslsmith_index_u32(131658u, 8u)])));
    return _wgslsmith_clamp_vec3_i32(-max(vec3<i32>(1i, 1i, 1i), vec3<i32>(-2147483647i, -1i, 0i)) << (_wgslsmith_sub_vec3_u32(~var_1.wzz, vec3<u32>(var_1.x, 4294967295u, 4294967295u)) % vec3<u32>(32u)), countOneBits(select(-(~vec3<i32>(-56518i, 0i, -1i)), vec3<i32>(20637i, _wgslsmith_sub_i32(-34760i, 45778i), 1i), all(vec3<bool>(true, true, true)))), _wgslsmith_mod_vec3_i32(min(min(_wgslsmith_div_vec3_i32(vec3<i32>(-25715i, 8057i, -2147483647i), vec3<i32>(-36502i, 5027i, -16098i)), ~vec3<i32>(30993i, 49084i, 1i)), max(firstTrailingBit(vec3<i32>(-1i, -37775i, -58676i)), ~vec3<i32>(0i, -2147483647i, 0i))), -firstTrailingBit(~vec3<i32>(-36918i, -2147483647i, 37880i))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = min(u_input.b.x, abs(35939u & u_input.b.x));
    global0 = 4294967295u;
    var var_0 = global4[_wgslsmith_index_u32(u_input.a.x, 8u)];
    var var_1 = vec2<u32>(52565u, ~_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(13843u, u_input.c.x, u_input.a.x, 4294967295u), u_input.b), u_input.c.x));
    global3 = array<Struct_1, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(643f, _wgslsmith_f_op_f32(global2.a - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.b.x + var_0.b.x) - _wgslsmith_f_op_f32(abs(global2.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(460f, -210f))))), -vec3<i32>(1i, 1i, 1i) & func_1(), u_input.c.zy, _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, 52220i, 14067i, 1i), vec4<i32>(~(-1i), firstLeadingBit(_wgslsmith_div_i32(0i, -2147483647i)), ~(~(-18271i)), 1i)), 55821i);
}

