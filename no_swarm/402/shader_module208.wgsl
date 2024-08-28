struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec4<f32>,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(vec2<i32>(-1093i, 9767i), -48513i, 33079u, vec4<f32>(-296f, 448f, 715f, -540f), -292f), Struct_2(vec2<i32>(2147483647i, -30794i), 22919i, 4294967295u, vec4<f32>(-1000f, -291f, 1000f, 166f), 1561f), Struct_2(vec2<i32>(-1i, 2953i), i32(-2147483648), 4294967295u, vec4<f32>(-1000f, 131f, -1436f, 852f), -933f), Struct_2(vec2<i32>(i32(-2147483648), -47057i), 37991i, 0u, vec4<f32>(2142f, 2835f, 125f, 386f), 391f), Struct_2(vec2<i32>(i32(-2147483648), -58996i), i32(-2147483648), 79437u, vec4<f32>(-304f, 273f, -524f, 151f), 1277f), Struct_2(vec2<i32>(52587i, 0i), -20252i, 34836u, vec4<f32>(182f, 542f, -538f, 582f), -814f), Struct_2(vec2<i32>(i32(-2147483648), 1i), i32(-2147483648), 1u, vec4<f32>(-154f, 1314f, 632f, -921f), 1467f), Struct_2(vec2<i32>(-8990i, -3933i), i32(-2147483648), 0u, vec4<f32>(-1000f, 277f, -596f, -258f), 1361f), Struct_2(vec2<i32>(1i, 2147483647i), 2147483647i, 1u, vec4<f32>(-1439f, -1462f, -378f, 1000f), -1000f), Struct_2(vec2<i32>(2147483647i, 8168i), -1i, 18322u, vec4<f32>(-1078f, 240f, -983f, -297f), 339f), Struct_2(vec2<i32>(-62525i, 1i), -1i, 598u, vec4<f32>(-2109f, 772f, -724f, -125f), -221f), Struct_2(vec2<i32>(i32(-2147483648), 2147483647i), -1i, 46097u, vec4<f32>(-991f, 1329f, 105f, -742f), 1775f), Struct_2(vec2<i32>(i32(-2147483648), 1i), -43970i, 1u, vec4<f32>(-872f, -706f, -1148f, 791f), 1000f), Struct_2(vec2<i32>(0i, -1i), 13631i, 4294967295u, vec4<f32>(651f, 1000f, 1029f, 278f), -1180f), Struct_2(vec2<i32>(0i, 18348i), 9747i, 12895u, vec4<f32>(-1000f, -163f, -720f, 273f), 889f), Struct_2(vec2<i32>(15317i, i32(-2147483648)), 3541i, 16826u, vec4<f32>(382f, 550f, -2158f, -871f), 170f), Struct_2(vec2<i32>(-1i, -14665i), 1i, 0u, vec4<f32>(1509f, -898f, -682f, -1100f), 245f), Struct_2(vec2<i32>(-8056i, 0i), i32(-2147483648), 0u, vec4<f32>(-541f, -1000f, 1457f, 905f), 818f), Struct_2(vec2<i32>(-48315i, 48824i), 2147483647i, 44604u, vec4<f32>(-488f, -427f, -854f, -509f), -317f), Struct_2(vec2<i32>(i32(-2147483648), 0i), 0i, 1u, vec4<f32>(-766f, 381f, 1204f, 1000f), 151f), Struct_2(vec2<i32>(-84634i, -5729i), -30155i, 0u, vec4<f32>(-1216f, 1392f, -1667f, -353f), -472f), Struct_2(vec2<i32>(66615i, 1i), 18206i, 44010u, vec4<f32>(-665f, 186f, -1004f, 366f), 882f), Struct_2(vec2<i32>(19492i, -23417i), 43415i, 35121u, vec4<f32>(825f, 1810f, -1653f, 873f), -903f), Struct_2(vec2<i32>(i32(-2147483648), -49349i), 18278i, 4294967295u, vec4<f32>(-282f, 642f, 1242f, -1302f), 541f), Struct_2(vec2<i32>(1i, -65184i), 17182i, 17627u, vec4<f32>(661f, 968f, 1155f, -714f), -1468f), Struct_2(vec2<i32>(-1i, 0i), -1i, 1u, vec4<f32>(-1102f, 331f, 779f, 1761f), 1000f), Struct_2(vec2<i32>(-5132i, -1369i), -1i, 26088u, vec4<f32>(-1410f, 2117f, -816f, 1149f), -1000f));

var<private> global1: array<vec4<i32>, 16> = array<vec4<i32>, 16>(vec4<i32>(-1i, -18455i, 0i, 22631i), vec4<i32>(-18875i, 13620i, 1i, 10031i), vec4<i32>(73833i, -1920i, -1i, 16592i), vec4<i32>(37803i, 12267i, 2147483647i, 19712i), vec4<i32>(-1i, 10369i, -19749i, 2147483647i), vec4<i32>(12355i, -1i, -1i, -6957i), vec4<i32>(18061i, -170i, -52504i, 1i), vec4<i32>(25832i, 2147483647i, 1i, -1i), vec4<i32>(1i, 2147483647i, -7818i, 1i), vec4<i32>(-1i, 20610i, 1i, -16060i), vec4<i32>(-1i, 0i, -1i, 2147483647i), vec4<i32>(23655i, 0i, 19926i, 1i), vec4<i32>(-27249i, -19046i, i32(-2147483648), 42992i), vec4<i32>(2147483647i, i32(-2147483648), 13265i, 28633i), vec4<i32>(-1i, -1i, -1i, -19363i), vec4<i32>(-4492i, -1i, -19312i, 0i));

var<private> global2: array<bool, 4>;

var<private> global3: Struct_2 = Struct_2(vec2<i32>(8254i, -8942i), 1i, 4294967295u, vec4<f32>(1686f, -303f, -1042f, 116f), -299f);

var<private> global4: array<bool, 24>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: u32, arg_3: Struct_1) -> f32 {
    var var_0 = 263f;
    global2 = array<bool, 4>();
    var var_1 = 1u;
    let var_2 = -2147483647i;
    var var_3 = ~_wgslsmith_mod_vec4_i32(global1[_wgslsmith_index_u32(~global3.c << (abs(u_input.b.x) % 32u), 16u)], vec4<i32>(-52617i, ~(-7476i), global3.b, _wgslsmith_add_i32(arg_1.x, 26093i)));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-350f * -1000f))));
}

fn func_3(arg_0: i32, arg_1: vec3<bool>) -> f32 {
    return _wgslsmith_f_op_f32(global3.e - _wgslsmith_div_f32(225f, global3.d.x));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1) -> i32 {
    let var_0 = _wgslsmith_dot_vec3_u32(~(~(~vec3<u32>(u_input.b.x, global3.c, arg_0.x) & (vec3<u32>(4294967295u, 1u, u_input.b.x) << (u_input.b % vec3<u32>(32u))))), arg_0.ywx);
    global0 = array<Struct_2, 27>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec2<bool>(global4[_wgslsmith_index_u32(global3.c, 24u)], true), vec2<i32>(global3.a.x, u_input.a.x), 26720u, Struct_1(arg_1.a, arg_1.b, arg_0.x))))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1.b.x + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(global3.a.x, vec3<bool>(false, false, false)))))))));
    let var_2 = Struct_2(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a.x, -min(-2147483647i, 1i)), _wgslsmith_mod_vec2_i32(global3.a, global3.a), u_input.a.zz), -59217i, abs(~(~1u)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2275f, arg_1.b.x, arg_1.b.x, 689f) - vec4<f32>(global3.e, arg_1.b.x, -1137f, 806f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global3.e, -1226f, arg_1.b.x, global3.e), global3.d)))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_div_f32(arg_1.b.x, global3.d.x), _wgslsmith_f_op_f32(-global3.e), _wgslsmith_f_op_f32(global3.e * 235f), 1912f))))), global3.d.x);
    let var_3 = global0[_wgslsmith_index_u32(var_2.c, 27u)];
    return i32(-1i) * -10834i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.xz;
    var var_1 = -min(_wgslsmith_add_vec3_i32(vec3<i32>(reverseBits(u_input.a.x), global3.b, i32(-1i) * -2147483647i), u_input.a), vec3<i32>(abs(-2153i << (global3.c % 32u)), -2147483647i, u_input.a.x));
    var var_2 = !select(vec4<bool>(1150f == _wgslsmith_div_f32(462f, global3.d.x), global4[_wgslsmith_index_u32(~(~1u), 24u)], all(vec4<bool>(global4[_wgslsmith_index_u32(global3.c, 24u)], true, global4[_wgslsmith_index_u32(6108u, 24u)], global4[_wgslsmith_index_u32(u_input.b.x, 24u)])), global2[_wgslsmith_index_u32(abs(17002u), 4u)]), vec4<bool>(~global3.c != ~288u, global4[_wgslsmith_index_u32(u_input.b.x, 24u)], global2[_wgslsmith_index_u32(~19214u, 4u)], -130f < _wgslsmith_div_f32(837f, global3.e)), global3.b != func_1(vec4<u32>(1u, 4294967295u, var_0.x, 78722u) | vec4<u32>(global3.c, global3.c, var_0.x, 57219u), Struct_1(global2[_wgslsmith_index_u32(var_0.x, 4u)], vec2<f32>(global3.d.x, global3.d.x), var_0.x)));
    let var_3 = Struct_2(~_wgslsmith_mult_vec2_i32(-firstLeadingBit(vec2<i32>(var_1.x, -30046i)), countOneBits(-vec2<i32>(-2147483647i, var_1.x))), -77149i, global3.c << (~(var_0.x >> (~19507u % 32u)) % 32u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.e, global3.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global3.d.x))), -890f)), global3.d.x);
    var var_4 = -767f;
    let var_5 = ~var_0.x;
    global2 = array<bool, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~1u, reverseBits(~(~1u)), var_5, ~max(45815u, var_5)), vec3<u32>(u_input.b.x ^ _wgslsmith_mod_u32(4294967295u, ~10551u), 1u, 34288u), _wgslsmith_f_op_vec2_f32(-var_3.d.wy), ~var_3.b);
}

