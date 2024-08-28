struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec4<i32>,
    d: u32,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: i32, arg_3: vec3<f32>) -> u32 {
    var var_0 = abs(vec3<u32>(_wgslsmith_div_u32(40694u, u_input.a.x & 21092u) >> (~1u % 32u), u_input.a.x, select(u_input.a.x, ~_wgslsmith_sub_u32(52220u, u_input.a.x), arg_0)));
    var var_1 = Struct_3(!(!(!(!vec4<bool>(arg_0, arg_0, arg_0, arg_0)))));
    var_0 = min(vec3<u32>(~(~(~4294967295u)), ~57447u, 43965u), _wgslsmith_sub_vec3_u32(vec3<u32>(~4294967295u, 35213u, 13625u), select(u_input.a, u_input.a, var_1.a.yxw)));
    var var_2 = select(_wgslsmith_mult_vec3_u32(u_input.a, vec3<u32>(abs(u_input.a.x), u_input.a.x, 1u)) | (~_wgslsmith_div_vec3_u32(vec3<u32>(var_0.x, u_input.a.x, 1u), vec3<u32>(16406u, 1u, u_input.a.x)) << (u_input.a % vec3<u32>(32u))), u_input.a, var_1.a.x);
    return ~min(~max(~4294967295u, reverseBits(1u)), _wgslsmith_dot_vec3_u32(~vec3<u32>(3537u, var_2.x, var_0.x), ~min(vec3<u32>(4294967295u, var_2.x, var_2.x), u_input.a)));
}

fn func_2(arg_0: Struct_3, arg_1: bool, arg_2: vec4<i32>) -> u32 {
    let var_0 = ~vec3<u32>(85132u, u_input.a.x, func_3(!(!arg_0.a.x), Struct_1(abs(vec2<i32>(46621i, arg_2.x))), firstLeadingBit(0i) & arg_2.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-668f, -467f, 740f), vec3<f32>(516f, -446f, -501f)))));
    var var_1 = Struct_4(select(!select(select(vec2<bool>(arg_0.a.x, false), arg_0.a.yw, arg_0.a.xx), !vec2<bool>(arg_1, true), arg_0.a.wx), arg_0.a.xw, all(select(arg_0.a.zzy, vec3<bool>(false, false, true), select(vec3<bool>(arg_0.a.x, arg_0.a.x, true), vec3<bool>(true, false, false), vec3<bool>(arg_0.a.x, true, true))))));
    var_1 = Struct_4(vec2<bool>(all(arg_0.a.wy), var_1.a.x));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(664f, 1207f), vec2<f32>(1000f, 842f)) + vec2<f32>(1522f, 541f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1018f, -641f))))) - vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(953f - -771f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1107f), -438f, false))), _wgslsmith_div_f32(484f, -307f)));
    var var_3 = Struct_2(Struct_1(-reverseBits(vec2<i32>(33374i, arg_2.x) & vec2<i32>(arg_2.x, -1i))), arg_0.a, arg_2, 81145u);
    return ~var_0.x;
}

fn func_1() -> u32 {
    var var_0 = u_input.a.x & 4294967295u;
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1407f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1532f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), 1000f, 2340f));
    var_0 = 0u;
    var_0 = ~1u;
    var_0 = 411u;
    return ~((~125720u ^ func_2(Struct_3(vec4<bool>(true, false, false, true)), true, vec4<i32>(1i, 1i, 1i, 1i))) & countOneBits(_wgslsmith_clamp_u32(26353u, 1u, u_input.a.x) >> (1u % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    var_0 = ~vec3<u32>(83321u, ~_wgslsmith_add_u32(26166u, var_0.x), _wgslsmith_add_u32(~8222u, _wgslsmith_clamp_u32(9328u, u_input.a.x, var_0.x))) & u_input.a;
    let var_1 = true;
    var_0 = select(~vec3<u32>(reverseBits(var_0.x), u_input.a.x, var_0.x), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.a.x | min(4294967295u, var_0.x), u_input.a.x), _wgslsmith_add_vec3_u32(vec3<u32>(~123294u, 61750u ^ var_0.x, func_1()), firstTrailingBit(~u_input.a))), var_1);
    let var_2 = _wgslsmith_add_vec2_i32(vec2<i32>(-1i) * -(~vec2<i32>(-23031i, 1i)), firstLeadingBit(_wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(-vec2<i32>(32011i, 27912i), vec2<i32>(1i, 1i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(-3295i, 36134i), countOneBits(vec2<i32>(19590i, 0i)), vec2<i32>(0i, 5849i)))));
    var var_3 = Struct_4(vec2<bool>(true, select(all(vec4<bool>(false, var_1, true, var_1)) == true, !var_1, all(!vec4<bool>(var_1, var_1, true, var_1)))));
    let var_4 = Struct_3(select(select(!select(vec4<bool>(var_1, var_1, true, var_3.a.x), vec4<bool>(var_1, false, false, var_3.a.x), true), select(select(vec4<bool>(true, true, true, var_3.a.x), vec4<bool>(true, true, var_1, true), false), select(vec4<bool>(var_3.a.x, false, var_1, true), vec4<bool>(false, var_1, true, var_3.a.x), vec4<bool>(false, false, true, var_3.a.x)), var_3.a.x), !select(vec4<bool>(false, var_1, true, false), vec4<bool>(var_3.a.x, true, var_3.a.x, true), vec4<bool>(var_3.a.x, var_3.a.x, var_3.a.x, var_1))), !(!select(vec4<bool>(var_1, var_3.a.x, var_1, var_3.a.x), vec4<bool>(false, var_3.a.x, true, true), vec4<bool>(var_1, false, false, var_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(646f, 646f))) != -1563f));
    let var_5 = ~var_0.yy ^ (vec2<u32>(u_input.a.x, _wgslsmith_mult_u32(abs(0u), var_0.x)) & (vec2<u32>(firstTrailingBit(var_0.x), ~u_input.a.x) >> ((var_0.zy & countOneBits(var_0.yz)) % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(abs(~vec3<i32>(2147483647i, var_2.x, var_2.x))), firstLeadingBit(vec2<u32>(abs(0u), var_0.x)), ~(~u_input.a.x), 17394i, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-349f, -1212f, 467f, -718f) * vec4<f32>(544f, -1080f, 878f, -893f))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-274f, 599f, -1115f, 726f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-133f, 744f, 740f, 674f) + vec4<f32>(2038f, 327f, 348f, 1000f))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-223f, 286f, -886f, 364f) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1323f, -581f, 1072f, 1328f), vec4<f32>(-543f, 1730f, -657f, -175f)))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1004f, 921f, 138f, -1366f))))));
}

