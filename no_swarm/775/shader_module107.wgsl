struct Struct_1 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: u32,
    d: bool,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
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

var<private> global0: array<Struct_1, 22>;

var<private> global1: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec2<u32>(28236u, 1u), 46212i), Struct_1(vec2<u32>(4294967295u, 1u), 1i), Struct_1(vec2<u32>(27457u, 1u), -1i), Struct_1(vec2<u32>(29234u, 4294967295u), 16635i), Struct_1(vec2<u32>(37599u, 54124u), 0i), Struct_1(vec2<u32>(1u, 1160u), -30461i), Struct_1(vec2<u32>(49754u, 0u), -1i), Struct_1(vec2<u32>(53155u, 1u), 10639i), Struct_1(vec2<u32>(0u, 4294967295u), i32(-2147483648)), Struct_1(vec2<u32>(8430u, 4294967295u), i32(-2147483648)), Struct_1(vec2<u32>(15862u, 0u), 2147483647i), Struct_1(vec2<u32>(9152u, 0u), 1i), Struct_1(vec2<u32>(83278u, 76989u), 25537i), Struct_1(vec2<u32>(4294967295u, 42046u), 508i), Struct_1(vec2<u32>(164640u, 1u), 0i), Struct_1(vec2<u32>(64735u, 0u), 0i), Struct_1(vec2<u32>(37472u, 4294967295u), -8472i), Struct_1(vec2<u32>(4294967295u, 4294967295u), 2147483647i), Struct_1(vec2<u32>(34019u, 26151u), 14582i), Struct_1(vec2<u32>(4294967295u, 26u), 1i), Struct_1(vec2<u32>(28550u, 34692u), 48592i), Struct_1(vec2<u32>(67548u, 79849u), -4149i), Struct_1(vec2<u32>(0u, 0u), -1i), Struct_1(vec2<u32>(4294967295u, 1u), -40967i), Struct_1(vec2<u32>(0u, 21928u), 2147483647i), Struct_1(vec2<u32>(1u, 0u), -10734i), Struct_1(vec2<u32>(64226u, 4294967295u), -1i));

var<private> global2: array<Struct_3, 25> = array<Struct_3, 25>(Struct_3(vec3<bool>(true, true, false), vec4<f32>(522f, -1288f, 557f, 688f)), Struct_3(vec3<bool>(false, false, true), vec4<f32>(766f, -240f, 204f, 466f)), Struct_3(vec3<bool>(true, false, false), vec4<f32>(-1921f, 1336f, -1191f, -124f)), Struct_3(vec3<bool>(false, true, true), vec4<f32>(-765f, 396f, 762f, -744f)), Struct_3(vec3<bool>(true, false, false), vec4<f32>(-1000f, -1607f, 2760f, 2256f)), Struct_3(vec3<bool>(true, false, false), vec4<f32>(-1875f, -915f, -1681f, -749f)), Struct_3(vec3<bool>(false, true, false), vec4<f32>(-331f, 602f, -616f, -111f)), Struct_3(vec3<bool>(false, false, true), vec4<f32>(1044f, 1264f, -814f, 644f)), Struct_3(vec3<bool>(false, true, false), vec4<f32>(585f, 133f, -1830f, 550f)), Struct_3(vec3<bool>(false, false, false), vec4<f32>(-127f, 1207f, 931f, 401f)), Struct_3(vec3<bool>(false, false, false), vec4<f32>(229f, -1698f, -1847f, -846f)), Struct_3(vec3<bool>(false, true, true), vec4<f32>(365f, 804f, -810f, 514f)), Struct_3(vec3<bool>(true, true, false), vec4<f32>(851f, 1136f, -1539f, -2172f)), Struct_3(vec3<bool>(false, false, true), vec4<f32>(1345f, -1000f, -428f, 612f)), Struct_3(vec3<bool>(true, true, true), vec4<f32>(-808f, -1027f, -560f, -804f)), Struct_3(vec3<bool>(false, false, false), vec4<f32>(-1000f, 2505f, -561f, 333f)), Struct_3(vec3<bool>(false, false, true), vec4<f32>(-644f, 601f, 258f, -388f)), Struct_3(vec3<bool>(true, false, false), vec4<f32>(245f, 225f, 295f, -179f)), Struct_3(vec3<bool>(true, false, false), vec4<f32>(1550f, -330f, 908f, 836f)), Struct_3(vec3<bool>(false, true, false), vec4<f32>(1000f, -2805f, -1000f, 413f)), Struct_3(vec3<bool>(false, true, true), vec4<f32>(597f, 704f, 973f, -1627f)), Struct_3(vec3<bool>(true, true, true), vec4<f32>(1726f, 534f, -1176f, 156f)), Struct_3(vec3<bool>(false, true, false), vec4<f32>(-1292f, 1203f, -1020f, -1000f)), Struct_3(vec3<bool>(false, true, false), vec4<f32>(1000f, 107f, 584f, -494f)), Struct_3(vec3<bool>(true, true, false), vec4<f32>(172f, -425f, 880f, -131f)));

var<private> global3: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(vec4<f32>(-1015f, -2392f, -1211f, 519f), Struct_1(vec2<u32>(70603u, 1u), 2147483647i), 1u, true), Struct_2(vec4<f32>(714f, -2484f, -666f, -739f), Struct_1(vec2<u32>(0u, 11772u), 1i), 27846u, false));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: u32, arg_3: vec3<f32>) -> vec4<u32> {
    let var_0 = u_input.b.wy;
    let var_1 = Struct_2(arg_1.a, arg_1.b, ~(~arg_2) << (arg_0.x % 32u), arg_1.d);
    global1 = array<Struct_1, 27>();
    global2 = array<Struct_3, 25>();
    global1 = array<Struct_1, 27>();
    return firstLeadingBit(arg_0) & arg_0;
}

fn func_3(arg_0: u32, arg_1: vec3<bool>, arg_2: u32, arg_3: Struct_2) -> u32 {
    let var_0 = Struct_3(vec3<bool>(false, !(u_input.a > 34275u), false), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_3.a * arg_3.a) + arg_3.a), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(arg_3.a)), arg_3.a)))) + vec4<f32>(_wgslsmith_f_op_f32(select(2023f, _wgslsmith_f_op_f32(select(653f, arg_3.a.x, arg_1.x)), true)), 460f, arg_3.a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_3.a.x + 157f))))));
    let var_1 = Struct_3(var_0.a, _wgslsmith_f_op_vec4_f32(ceil(var_0.b)));
    let var_2 = select(~(~vec3<u32>(~35701u, _wgslsmith_clamp_u32(arg_2, arg_2, 20843u), ~arg_3.c)), func_1(_wgslsmith_add_vec4_u32(~(vec4<u32>(arg_3.c, arg_2, 13478u, 0u) | vec4<u32>(arg_0, 5582u, arg_0, 72624u)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_3.c, u_input.a, 19644u, arg_3.c), vec4<u32>(0u, 1u, arg_2, 12931u))), arg_3, 21535u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.b.ywz * vec3<f32>(var_1.b.x, var_1.b.x, 461f)), _wgslsmith_f_op_vec3_f32(select(var_1.b.zyz, arg_3.a.yyz, false))))).xyx, all(select(select(!vec4<bool>(true, var_1.a.x, arg_3.d, var_0.a.x), vec4<bool>(true, var_1.a.x, true, arg_3.d), select(vec4<bool>(var_1.a.x, false, false, true), vec4<bool>(false, var_1.a.x, true, false), vec4<bool>(var_0.a.x, var_1.a.x, arg_1.x, true))), vec4<bool>(true, !arg_3.d, !arg_3.d, true), arg_1.x)));
    let var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(-arg_3.a), Struct_1(var_2.xx, u_input.b.x), 3118u, !(!all(vec4<bool>(false, true, false, arg_3.d)) || true));
    global0 = array<Struct_1, 22>();
    return firstLeadingBit(arg_3.b.a.x);
}

fn func_2(arg_0: i32) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1391f));
    global0 = array<Struct_1, 22>();
    let var_1 = ~max(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(19243u, 63201u), vec2<u32>(1u, 29529u)), ~vec2<u32>(u_input.a, 2678u)), ~vec2<u32>(u_input.a, 4294967295u) ^ ~vec2<u32>(u_input.a, u_input.a)), ~_wgslsmith_mod_u32(u_input.a, u_input.a) | 4294967295u);
    let var_2 = vec3<bool>(true, true, true);
    let var_3 = -1i;
    return vec4<u32>(18021u, func_3(_wgslsmith_div_u32(min(4294967295u | u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, u_input.a), vec3<u32>(u_input.a, var_1, 15721u))), 44887u), select(var_2, !vec3<bool>(true, var_2.x, true), all(vec2<bool>(var_2.x, false)) && any(vec4<bool>(false, var_2.x, var_2.x, false))), _wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, var_1), vec2<u32>(1u, 1u)), ~vec2<u32>(var_1, 4294967295u)), Struct_2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1449f, var_0, var_0, var_0))))), Struct_1(vec2<u32>(var_1, u_input.a), ~0i), u_input.a, true)), 6636u, 0u);
}

fn func_4(arg_0: Struct_2) -> StorageBuffer {
    let var_0 = global2[_wgslsmith_index_u32(~func_2(arg_0.b.b).x, 25u)];
    var var_1 = ~(-u_input.b.zw);
    let var_2 = Struct_3(!vec3<bool>(true, var_0.a.x, true), arg_0.a);
    let var_3 = Struct_1(arg_0.b.a << (arg_0.b.a % vec2<u32>(32u)), -44780i);
    let var_4 = _wgslsmith_f_op_vec3_f32(arg_0.a.zzw - vec3<f32>(var_2.b.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.b.x, _wgslsmith_f_op_f32(ceil(2214f))) * var_2.b.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.a.x + arg_0.a.x), _wgslsmith_f_op_f32(182f - var_2.b.x)) - _wgslsmith_f_op_f32(-var_2.b.x))));
    return StorageBuffer(-23612i);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_2, 2>();
    global0 = array<Struct_1, 22>();
    global0 = array<Struct_1, 22>();
    let x = u_input.a;
    s_output = func_4(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32((func_1(vec4<u32>(4294967295u, 1u, u_input.a, 1u), Struct_2(vec4<f32>(-1184f, 180f, -1000f, -716f), Struct_1(vec2<u32>(u_input.a, 9501u), u_input.b.x), u_input.a, false), u_input.a, vec3<f32>(-585f, -1046f, -1000f)) | func_2(u_input.b.x)) ^ vec4<u32>(1u, u_input.a, reverseBits(0u), u_input.a), abs(max(countOneBits(vec4<u32>(1u, 1u, u_input.a, u_input.a)), firstTrailingBit(vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a))))), 2u)]);
}

