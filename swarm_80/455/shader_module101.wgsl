struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec3<f32>,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec2<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 13>;

var<private> global1: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec4<u32>(57713u, 1u, 116922u, 1u), vec3<u32>(24906u, 0u, 0u), vec3<f32>(1133f, 1461f, 366f), 4294967295u), Struct_1(vec4<u32>(4294967295u, 1u, 76625u, 1498u), vec3<u32>(4294967295u, 0u, 6934u), vec3<f32>(-1738f, -1993f, 191f), 148u), Struct_1(vec4<u32>(4294967295u, 70453u, 0u, 1719u), vec3<u32>(24458u, 1u, 0u), vec3<f32>(862f, -1000f, 1755f), 0u), Struct_1(vec4<u32>(14583u, 41816u, 47266u, 5721u), vec3<u32>(33411u, 1u, 4294967295u), vec3<f32>(1126f, -1710f, -1135f), 36571u), Struct_1(vec4<u32>(54868u, 1u, 4294967295u, 45083u), vec3<u32>(80810u, 53946u, 0u), vec3<f32>(-1078f, 1548f, -336f), 1u), Struct_1(vec4<u32>(48891u, 4294967295u, 4294967295u, 0u), vec3<u32>(0u, 7904u, 51918u), vec3<f32>(634f, 316f, -1174f), 0u), Struct_1(vec4<u32>(64130u, 628u, 0u, 36894u), vec3<u32>(43287u, 4294967295u, 22867u), vec3<f32>(-306f, -387f, 609f), 4294967295u), Struct_1(vec4<u32>(35141u, 0u, 1u, 0u), vec3<u32>(6906u, 4294967295u, 1u), vec3<f32>(3032f, 1017f, -350f), 4294967295u), Struct_1(vec4<u32>(28335u, 52945u, 4294967295u, 29434u), vec3<u32>(4294967295u, 4207u, 4294967295u), vec3<f32>(541f, -1562f, -742f), 1u), Struct_1(vec4<u32>(23130u, 27215u, 4294967295u, 56977u), vec3<u32>(45853u, 0u, 0u), vec3<f32>(-240f, 522f, 2003f), 4294967295u), Struct_1(vec4<u32>(27224u, 43226u, 13756u, 0u), vec3<u32>(2987u, 2181u, 1u), vec3<f32>(1671f, 861f, 1815f), 73585u), Struct_1(vec4<u32>(0u, 0u, 0u, 39665u), vec3<u32>(0u, 0u, 9787u), vec3<f32>(-1055f, 1727f, 1000f), 1u), Struct_1(vec4<u32>(0u, 0u, 1u, 44097u), vec3<u32>(0u, 0u, 0u), vec3<f32>(-1647f, -1648f, 714f), 14631u), Struct_1(vec4<u32>(4294967295u, 0u, 54190u, 4294967295u), vec3<u32>(35136u, 17293u, 27741u), vec3<f32>(1000f, -2127f, 1499f), 1u), Struct_1(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 1u), vec3<u32>(1u, 95u, 48155u), vec3<f32>(448f, -1097f, 412f), 65842u), Struct_1(vec4<u32>(1u, 0u, 1u, 1u), vec3<u32>(6428u, 4294967295u, 0u), vec3<f32>(-523f, 1000f, -734f), 12816u), Struct_1(vec4<u32>(1u, 4294967295u, 1u, 86967u), vec3<u32>(51371u, 1u, 4294967295u), vec3<f32>(520f, -413f, 1561f), 23779u), Struct_1(vec4<u32>(35917u, 1u, 71886u, 24798u), vec3<u32>(21176u, 31586u, 4294967295u), vec3<f32>(882f, 1119f, -584f), 4294967295u), Struct_1(vec4<u32>(22446u, 4294967295u, 98628u, 0u), vec3<u32>(25896u, 58937u, 0u), vec3<f32>(235f, -359f, -579f), 4294967295u), Struct_1(vec4<u32>(23014u, 36881u, 0u, 53097u), vec3<u32>(42487u, 37579u, 0u), vec3<f32>(-1487f, -232f, 147f), 0u), Struct_1(vec4<u32>(0u, 4363u, 9589u, 0u), vec3<u32>(2480u, 4294967295u, 25835u), vec3<f32>(726f, -1235f, 1842f), 4294967295u), Struct_1(vec4<u32>(1u, 1u, 4294967295u, 4294967295u), vec3<u32>(1u, 38800u, 35893u), vec3<f32>(-328f, 438f, -440f), 0u), Struct_1(vec4<u32>(0u, 38119u, 62323u, 1u), vec3<u32>(4294967295u, 28339u, 1u), vec3<f32>(-1249f, -971f, -686f), 4294967295u), Struct_1(vec4<u32>(39713u, 17328u, 4294967295u, 0u), vec3<u32>(1u, 57292u, 56898u), vec3<f32>(-2095f, 1000f, 1320f), 19275u), Struct_1(vec4<u32>(4294967295u, 1u, 8099u, 3845u), vec3<u32>(13183u, 0u, 1u), vec3<f32>(1117f, -569f, -488f), 53656u), Struct_1(vec4<u32>(4294967295u, 16264u, 0u, 35408u), vec3<u32>(32388u, 15085u, 4294967295u), vec3<f32>(-199f, -1215f, 744f), 65313u), Struct_1(vec4<u32>(1u, 1u, 1u, 25778u), vec3<u32>(0u, 1u, 14831u), vec3<f32>(-860f, 714f, 279f), 0u), Struct_1(vec4<u32>(5527u, 4294967295u, 4294967295u, 4294967295u), vec3<u32>(12171u, 52297u, 32669u), vec3<f32>(1385f, -1007f, 1431f), 6060u));

var<private> global2: array<vec3<f32>, 31>;

var<private> global3: array<vec4<i32>, 3> = array<vec4<i32>, 3>(vec4<i32>(28436i, 0i, 468i, i32(-2147483648)), vec4<i32>(40921i, i32(-2147483648), 49752i, 0i), vec4<i32>(2147483647i, i32(-2147483648), 15194i, -44652i));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: vec3<u32>) -> u32 {
    global3 = array<vec4<i32>, 3>();
    let var_0 = 480f;
    let var_1 = !(!(!vec2<bool>(all(vec4<bool>(false, true, true, false)), all(vec4<bool>(true, false, true, true)))));
    global0 = array<i32, 13>();
    var var_2 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(2141f, 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0)) - var_0), _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(-570f * -1103f)))));
    return max(~u_input.b.x, arg_0.x);
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = vec3<bool>(false, false, all(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, select(false, true, false)), !select(vec2<bool>(false, false), vec2<bool>(false, true), true))));
    global0 = array<i32, 13>();
    global0 = array<i32, 13>();
    let var_1 = global1[_wgslsmith_index_u32(reverseBits(_wgslsmith_clamp_u32(1u, arg_0.b.x, ~arg_0.a.x)), 28u)];
    return -828f;
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> u32 {
    global1 = array<Struct_1, 28>();
    var var_0 = arg_1;
    var var_1 = _wgslsmith_div_f32(var_0.c.x, arg_1.c.x);
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(228f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.c.x)))), -636f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(arg_1.c.zz)))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_0.c.zz), vec2<f32>(var_0.c.x, 138f), arg_0)), vec2<f32>(-1121f, _wgslsmith_f_op_f32(select(718f, -963f, false))))));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_3(arg_1)), arg_1.c.x)), var_0.c.xz)));
    return arg_1.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_i32(-8787i, -_wgslsmith_div_i32(_wgslsmith_add_i32(global0[_wgslsmith_index_u32(func_1(u_input.b), 13u)], 46214i), 32622i));
    var var_1 = _wgslsmith_add_vec2_u32(~vec2<u32>(~func_2(true, global1[_wgslsmith_index_u32(1u, 28u)]), reverseBits(~u_input.b.x)), u_input.b.xz);
    var var_2 = true;
    global3 = array<vec4<i32>, 3>();
    global1 = array<Struct_1, 28>();
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1433f, _wgslsmith_f_op_f32(-1000f * 269f)));
    var_1 = vec2<u32>(u_input.b.x, 13783u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1000f, -1000f, _wgslsmith_f_op_f32(select(-1061f, 1450f, true))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-148f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1003f + var_3.x), _wgslsmith_f_op_f32(-505f * 545f)))) + _wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(~(u_input.b.x >> (var_1.x % 32u)), 28u)]))), _wgslsmith_clamp_vec2_u32(~firstLeadingBit(~u_input.b.xy), vec2<u32>(~4294967295u, ~(~55393u)), u_input.b.zy), -(abs(_wgslsmith_div_vec2_i32(vec2<i32>(18060i, u_input.a.x), u_input.a.xz)) << (u_input.b.zz % vec2<u32>(32u))));
}

