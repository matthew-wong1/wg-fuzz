struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<f32>, 24> = array<vec2<f32>, 24>(vec2<f32>(403f, -598f), vec2<f32>(220f, -796f), vec2<f32>(-462f, -108f), vec2<f32>(319f, 1235f), vec2<f32>(505f, -588f), vec2<f32>(-1015f, 1147f), vec2<f32>(604f, 747f), vec2<f32>(1000f, -1765f), vec2<f32>(-430f, -1179f), vec2<f32>(-207f, 961f), vec2<f32>(-839f, 873f), vec2<f32>(-1000f, -431f), vec2<f32>(108f, -124f), vec2<f32>(738f, -133f), vec2<f32>(-1000f, -778f), vec2<f32>(-1496f, 876f), vec2<f32>(224f, -522f), vec2<f32>(2185f, -384f), vec2<f32>(189f, -2253f), vec2<f32>(1264f, 484f), vec2<f32>(1297f, 428f), vec2<f32>(-1500f, -1000f), vec2<f32>(-1000f, -272f), vec2<f32>(-345f, -1476f));

var<private> global2: f32 = 1456f;

var<private> global3: array<vec2<f32>, 4> = array<vec2<f32>, 4>(vec2<f32>(1653f, 466f), vec2<f32>(-993f, 1469f), vec2<f32>(-629f, -1000f), vec2<f32>(-350f, 556f));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2() -> Struct_1 {
    global1 = array<vec2<f32>, 24>();
    global2 = _wgslsmith_f_op_f32(floor(-968f));
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(1651f - -680f), _wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(552f - 549f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(413f, 1000f, 567f))) - vec3<f32>(1757f, 1068f, -782f)), select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true), vec3<bool>(false, true, false), true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-716f, 1819f, 522f))) * vec3<f32>(_wgslsmith_f_op_f32(1012f * -895f), _wgslsmith_f_op_f32(select(-498f, -234f, false)), _wgslsmith_f_op_f32(950f * -1099f)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-519f, 1033f, 835f) * vec3<f32>(-1179f, 963f, -2095f)))))));
    global3 = array<vec2<f32>, 4>();
    let var_1 = Struct_1(firstTrailingBit(_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(global0.a, vec3<i32>(48897i, -8460i, u_input.a)) << (vec3<u32>(0u, 10884u, 1u) % vec3<u32>(32u)), -vec3<i32>(global0.a.x, global0.a.x, u_input.a))));
    return var_1;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    var var_0 = vec2<u32>(select(0u, ~14261u, false), ~abs(~1u));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1215f - 824f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-631f)) * -838f)))));
    var var_2 = var_1;
    var var_3 = min(firstTrailingBit(vec3<u32>(~16862u | ~var_0.x, abs(var_0.x), _wgslsmith_dot_vec4_u32(select(vec4<u32>(1u, 51281u, 54526u, var_0.x), vec4<u32>(var_0.x, 82436u, 37743u, var_0.x), false), vec4<u32>(var_0.x, var_0.x, var_0.x, 4294967295u)))), ~vec3<u32>(1u, (var_0.x ^ 4294967295u) << ((var_0.x & 31164u) % 32u), 1802u));
    var_0 = ~reverseBits(var_3.zx);
    return -385f;
}

fn func_1() -> StorageBuffer {
    global0 = func_2();
    var var_0 = vec4<i32>(i32(-1i) * -global0.a.x, global0.a.x, _wgslsmith_div_i32(-1i, min(_wgslsmith_sub_i32(-31231i, global0.a.x >> (48483u % 32u)), ~u_input.a)), -56960i << (reverseBits(abs(0u)) % 32u));
    global2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(Struct_1(vec3<i32>(32216i, 16867i, select(global0.a.x, var_0.x, true))), Struct_1(global0.a)))));
    global0 = func_2();
    let var_1 = _wgslsmith_f_op_f32(360f - 539f);
    return StorageBuffer(36537u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(global0.a);
    global0 = Struct_1(vec3<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(1i, 1i)), vec2<i32>(u_input.a, global0.a.x)), ~_wgslsmith_dot_vec3_i32(global0.a, vec3<i32>(global0.a.x, 1i, u_input.a))), global0.a.x | firstLeadingBit(global0.a.x), firstTrailingBit(u_input.a & -u_input.a)));
    var var_0 = Struct_1(-(global0.a & (_wgslsmith_clamp_vec3_i32(global0.a, global0.a, global0.a) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)))));
    var var_1 = vec4<i32>(-(~_wgslsmith_mod_i32(1i, ~global0.a.x)), var_0.a.x, u_input.a, 17289i);
    global3 = array<vec2<f32>, 4>();
    let x = u_input.a;
    s_output = func_1();
}

