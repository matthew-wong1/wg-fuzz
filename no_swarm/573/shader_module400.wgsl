struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: vec3<f32>,
    d: vec3<bool>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 1>;

var<private> global1: array<u32, 21>;

var<private> global2: array<Struct_4, 19> = array<Struct_4, 19>(Struct_4(Struct_1(vec3<bool>(true, false, true), vec4<f32>(1075f, 586f, -408f, 3208f), vec3<f32>(-856f, -2318f, 163f), vec3<bool>(false, true, false), vec4<f32>(179f, -1154f, 696f, -1000f)), vec2<u32>(0u, 5710u)), Struct_4(Struct_1(vec3<bool>(false, true, false), vec4<f32>(-133f, -373f, 2211f, -786f), vec3<f32>(697f, -1113f, 449f), vec3<bool>(false, false, true), vec4<f32>(251f, -337f, 900f, -526f)), vec2<u32>(13744u, 4294967295u)), Struct_4(Struct_1(vec3<bool>(false, true, false), vec4<f32>(484f, -1279f, -556f, -827f), vec3<f32>(-971f, 1000f, -758f), vec3<bool>(false, true, true), vec4<f32>(-855f, -137f, -421f, -139f)), vec2<u32>(7173u, 1u)), Struct_4(Struct_1(vec3<bool>(true, false, true), vec4<f32>(1000f, -1000f, -152f, -309f), vec3<f32>(-299f, -681f, 1000f), vec3<bool>(true, true, false), vec4<f32>(-336f, -1005f, -1251f, 104f)), vec2<u32>(9813u, 0u)), Struct_4(Struct_1(vec3<bool>(false, false, false), vec4<f32>(954f, 1224f, -565f, -968f), vec3<f32>(1774f, 347f, -100f), vec3<bool>(true, false, false), vec4<f32>(166f, -852f, -876f, 2776f)), vec2<u32>(12719u, 78072u)), Struct_4(Struct_1(vec3<bool>(false, true, false), vec4<f32>(161f, -1909f, 1000f, -281f), vec3<f32>(-1438f, 903f, 938f), vec3<bool>(true, true, false), vec4<f32>(-281f, -169f, 829f, 618f)), vec2<u32>(1u, 12776u)), Struct_4(Struct_1(vec3<bool>(false, true, true), vec4<f32>(-642f, -249f, -212f, 457f), vec3<f32>(471f, 718f, 1446f), vec3<bool>(true, false, false), vec4<f32>(1267f, 324f, -356f, -236f)), vec2<u32>(23241u, 51510u)), Struct_4(Struct_1(vec3<bool>(false, false, false), vec4<f32>(-919f, 508f, 506f, 123f), vec3<f32>(1079f, -557f, 619f), vec3<bool>(true, false, true), vec4<f32>(-422f, -823f, -106f, -702f)), vec2<u32>(6837u, 57119u)), Struct_4(Struct_1(vec3<bool>(false, true, true), vec4<f32>(1059f, 525f, -1108f, 2439f), vec3<f32>(1000f, 1427f, 881f), vec3<bool>(true, true, false), vec4<f32>(3327f, -668f, 1000f, 688f)), vec2<u32>(25693u, 1u)), Struct_4(Struct_1(vec3<bool>(false, false, true), vec4<f32>(-282f, 2966f, -1037f, -1031f), vec3<f32>(949f, 1361f, -253f), vec3<bool>(true, true, false), vec4<f32>(-1000f, -454f, 1334f, 639f)), vec2<u32>(5561u, 34615u)), Struct_4(Struct_1(vec3<bool>(true, false, true), vec4<f32>(-492f, -777f, 332f, 1294f), vec3<f32>(1399f, 409f, -788f), vec3<bool>(false, true, true), vec4<f32>(-589f, 1498f, -773f, 1715f)), vec2<u32>(21950u, 4294967295u)), Struct_4(Struct_1(vec3<bool>(false, false, true), vec4<f32>(970f, 1000f, -700f, -393f), vec3<f32>(-1000f, 2017f, 810f), vec3<bool>(true, false, false), vec4<f32>(160f, 828f, 851f, -1637f)), vec2<u32>(72438u, 6938u)), Struct_4(Struct_1(vec3<bool>(false, true, true), vec4<f32>(-1000f, 1000f, -2436f, 1087f), vec3<f32>(1000f, 1394f, 1000f), vec3<bool>(false, true, false), vec4<f32>(836f, 1321f, -1529f, -2625f)), vec2<u32>(76247u, 13264u)), Struct_4(Struct_1(vec3<bool>(false, false, false), vec4<f32>(1000f, 380f, -164f, 1515f), vec3<f32>(287f, 1144f, 1515f), vec3<bool>(false, true, true), vec4<f32>(641f, 725f, 370f, 316f)), vec2<u32>(2141u, 1u)), Struct_4(Struct_1(vec3<bool>(true, false, true), vec4<f32>(976f, 585f, -1000f, 291f), vec3<f32>(-122f, 272f, -2295f), vec3<bool>(true, false, false), vec4<f32>(-853f, -949f, -691f, -984f)), vec2<u32>(29172u, 0u)), Struct_4(Struct_1(vec3<bool>(false, false, true), vec4<f32>(706f, -582f, -1418f, 147f), vec3<f32>(-1602f, 1314f, -665f), vec3<bool>(false, false, true), vec4<f32>(-773f, 2159f, 1930f, -171f)), vec2<u32>(4294967295u, 1u)), Struct_4(Struct_1(vec3<bool>(false, false, true), vec4<f32>(-412f, -879f, 108f, 721f), vec3<f32>(845f, -1147f, 360f), vec3<bool>(false, false, false), vec4<f32>(1195f, -874f, 795f, 210f)), vec2<u32>(15675u, 39567u)), Struct_4(Struct_1(vec3<bool>(false, true, true), vec4<f32>(1083f, -1089f, -561f, -1080f), vec3<f32>(-1000f, 1717f, -267f), vec3<bool>(false, false, true), vec4<f32>(2630f, 706f, -281f, 821f)), vec2<u32>(1u, 0u)), Struct_4(Struct_1(vec3<bool>(true, false, true), vec4<f32>(-1522f, -1629f, -1741f, 528f), vec3<f32>(-1000f, -1131f, 307f), vec3<bool>(true, true, false), vec4<f32>(801f, -268f, 287f, 1000f)), vec2<u32>(3790u, 4294967295u)));

var<private> global3: bool = true;

var<private> global4: array<bool, 5> = array<bool, 5>(false, true, false, false, true);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: vec3<f32>) -> f32 {
    return _wgslsmith_f_op_f32(-716f * _wgslsmith_f_op_f32(-arg_0));
}

fn func_2(arg_0: vec4<bool>) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(-561f - -1552f);
    return vec2<f32>(-1648f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0, _wgslsmith_div_f32(1549f, 261f), true))) + var_0));
}

fn func_3(arg_0: vec2<f32>) -> f32 {
    let var_0 = Struct_4(Struct_1(vec3<bool>(false, false, false), _wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(23246u, 0u), 1u)] - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, -333f, arg_0.x, arg_0.x)), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~4294967295u, 21u)], 1u)])), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.x, 1119f, 1000f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, 2094f, 130f) - vec3<f32>(1571f, arg_0.x, arg_0.x))))), vec3<bool>(any(!vec2<bool>(false, global4[_wgslsmith_index_u32(47144u, 5u)])), global4[_wgslsmith_index_u32(~_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(u_input.b, 21u)], u_input.b), 5u)], !(!global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 21u)], 5u)])), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(461f, arg_0.x, arg_0.x, arg_0.x))))), ~(~vec2<u32>(u_input.b, ~u_input.b)));
    var var_1 = !select(var_0.a.a.x & global4[_wgslsmith_index_u32(_wgslsmith_add_u32(var_0.b.x, ~34387u), 5u)], var_0.a.a.x, false);
    var var_2 = Struct_2(0u, 2889i, Struct_1(!var_0.a.d, vec4<f32>(255f, 553f, var_0.a.c.x, _wgslsmith_div_f32(421f, 1000f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(865f - arg_0.x), _wgslsmith_f_op_f32(ceil(768f)), -492f) - var_0.a.c), var_0.a.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.c.x, -220f, 465f, var_0.a.e.x) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.x, arg_0.x, -1040f, 548f), vec4<f32>(-1197f, 115f, var_0.a.b.x, arg_0.x), global4[_wgslsmith_index_u32(var_0.b.x, 5u)]))) - _wgslsmith_f_op_vec4_f32(exp2(var_0.a.e)))));
    let var_3 = firstTrailingBit(u_input.a);
    var_1 = true;
    return -525f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(true, true);
    let var_1 = Struct_4(Struct_1(!(!vec3<bool>(false, true, var_0.x)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(-253f, u_input.b, vec3<f32>(-361f, -616f, -1435f)))), 919f, _wgslsmith_f_op_f32(step(1000f, -209f)), -1000f), vec3<f32>(1f, 1f, 1f), select(vec3<bool>(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 21u)], 5u)] || true, global4[_wgslsmith_index_u32(4294967295u, 5u)] && global4[_wgslsmith_index_u32(0u, 5u)], var_0.x), !select(vec3<bool>(global4[_wgslsmith_index_u32(4294967295u, 5u)], var_0.x, true), vec3<bool>(false, false, var_0.x), vec3<bool>(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 21u)], 21u)], 5u)], var_0.x, true)), !(!vec3<bool>(false, global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(54893u, 21u)], 5u)], var_0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 21u)], 1u)])))), ~min(firstTrailingBit(firstTrailingBit(vec2<u32>(u_input.b, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 21u)], 21u)]))), ~(~vec2<u32>(27123u, 16306u))));
    let var_2 = _wgslsmith_mod_u32(47128u, 1u);
    let var_3 = _wgslsmith_div_f32(var_1.a.e.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(func_2(vec4<bool>(false, var_1.a.a.x, true, var_0.x))))))));
    global4 = array<bool, 5>();
    global4 = array<bool, 5>();
    global4 = array<bool, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, vec2<i32>(~(-2147483647i), u_input.a.x), 0i, 15791i);
}

