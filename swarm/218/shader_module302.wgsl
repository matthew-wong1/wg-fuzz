struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 32> = array<vec2<f32>, 32>(vec2<f32>(1364f, -386f), vec2<f32>(564f, 635f), vec2<f32>(1438f, -230f), vec2<f32>(-516f, 1142f), vec2<f32>(-640f, 241f), vec2<f32>(-387f, -1317f), vec2<f32>(-382f, 763f), vec2<f32>(-768f, 949f), vec2<f32>(-155f, 1352f), vec2<f32>(803f, -1622f), vec2<f32>(1593f, 324f), vec2<f32>(-1678f, 692f), vec2<f32>(-491f, 726f), vec2<f32>(-364f, 129f), vec2<f32>(438f, 361f), vec2<f32>(538f, 1372f), vec2<f32>(-1064f, -205f), vec2<f32>(-892f, -1489f), vec2<f32>(-931f, -878f), vec2<f32>(168f, 1655f), vec2<f32>(-877f, -1861f), vec2<f32>(-1048f, -795f), vec2<f32>(-740f, -1325f), vec2<f32>(-1211f, 896f), vec2<f32>(-1693f, 690f), vec2<f32>(1407f, 750f), vec2<f32>(1714f, -1066f), vec2<f32>(-347f, 1042f), vec2<f32>(-1228f, -1823f), vec2<f32>(-350f, 1000f), vec2<f32>(1197f, -182f), vec2<f32>(329f, -450f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2) -> u32 {
    global0 = array<vec2<f32>, 32>();
    var var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1134f)), _wgslsmith_f_op_f32(max(-1172f, _wgslsmith_div_f32(210f, arg_1.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b - var_0.b) + _wgslsmith_div_f32(-806f, var_0.b))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(arg_1.b))))));
    let var_2 = Struct_1(u_input.a.wyw, 0u, false && (!var_0.a.c && (!var_0.a.c != !var_0.a.c)));
    var_0 = arg_1;
    return var_0.a.b;
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: vec2<u32>) -> Struct_1 {
    global0 = array<vec2<f32>, 32>();
    var var_0 = arg_1 << (arg_2.x % 32u);
    return Struct_1(u_input.a.zwy << (vec3<u32>(45759u, 69326u << (~arg_2.x % 32u), arg_2.x) % vec3<u32>(32u)), ~(func_3(_wgslsmith_mod_vec4_i32(u_input.d, vec4<i32>(arg_1, arg_1, -2017i, -25985i)), Struct_2(Struct_1(u_input.a.yzx, arg_2.x, false), arg_0)) << ((arg_2.x ^ arg_2.x) % 32u)), reverseBits(4294967295u) < _wgslsmith_mod_u32(_wgslsmith_add_u32(4294967295u, select(6701u, 1u, false)), ~_wgslsmith_sub_u32(0u, arg_2.x)));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<f32>, arg_2: vec2<f32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-arg_1.x);
    var var_1 = func_2(347f, ~(reverseBits(2147483647i) << (arg_0.x % 32u)), max(firstTrailingBit(arg_0), ~_wgslsmith_sub_vec2_u32(arg_0, _wgslsmith_clamp_vec2_u32(vec2<u32>(34672u, arg_0.x), vec2<u32>(120836u, arg_0.x), vec2<u32>(arg_0.x, arg_0.x)))));
    global0 = array<vec2<f32>, 32>();
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(var_0, arg_1.x, arg_2.x, var_0), vec4<f32>(arg_1.x, var_0, arg_1.x, -161f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_2.x, var_0, arg_1.x, arg_2.x), vec4<f32>(1801f, arg_1.x, -427f, 408f))))))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(240f, var_0, arg_1.x, var_0) - vec4<f32>(-907f, 448f, 537f, arg_1.x)))))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.x, arg_1.x, arg_2.x, 1071f), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0, arg_1.x, -1036f, -1890f))), !vec4<bool>(false, var_1.c, var_1.c, var_1.c))), vec4<f32>(_wgslsmith_f_op_f32(select(-1382f, 1599f, true)), _wgslsmith_f_op_f32(max(arg_1.x, 1159f)), _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(sign(arg_1.x)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1728f, arg_2.x, -183f, -334f), vec4<f32>(-451f, arg_2.x, var_0, -1120f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(483f, var_0, arg_1.x, 1444f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_2.x, -937f, arg_1.x))), vec4<bool>(false, false, true, false)))));
    let var_3 = u_input.c;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(445f - 457f) * _wgslsmith_f_op_f32(abs(-980f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-u_input.a.xzz, 1u, -226f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(_wgslsmith_mod_vec2_u32(vec2<u32>(26410u, 74646u), vec2<u32>(19903u, 46225u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-401f, -2271f, -445f) + vec3<f32>(2793f, -550f, -405f)), vec2<f32>(-1565f, 1202f))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(166f + -123f)))));
    let var_1 = true;
    global0 = array<vec2<f32>, 32>();
    let var_2 = vec2<bool>(all(!(!vec4<bool>(var_0.c, var_0.c, true, false))), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -307f)), min(countOneBits(u_input.d.x), 1998i), vec2<u32>(~var_0.b, abs(1u))).a.x > -firstLeadingBit(-2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(59287u, _wgslsmith_f_op_f32(max(1252f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1486f)))));
}

