struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: bool,
    d: vec4<u32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: bool,
    c: vec2<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: vec2<f32>,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 12>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<u32>) -> u32 {
    global0 = array<Struct_3, 12>();
    return arg_0.x;
}

fn func_2() -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(abs(abs(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.a.x << (4294967295u % 32u), _wgslsmith_sub_u32(68121u, u_input.b), 33273u), reverseBits(firstLeadingBit(0u))))), 12u)];
    global0 = array<Struct_3, 12>();
    let var_1 = func_3(firstLeadingBit(firstTrailingBit(_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(u_input.a.zxy, u_input.a.xzw), vec3<u32>(u_input.a.x, 14102u, 63389u)))));
    var var_2 = !vec4<bool>(var_0.d, false, !var_0.b.b, false);
    var_2 = select(!select(select(select(vec4<bool>(var_0.b.b, false, var_0.b.b, var_2.x), vec4<bool>(false, false, var_2.x, false), var_2.x), !vec4<bool>(var_0.d, true, var_0.d, false), !vec4<bool>(true, var_0.b.b, var_2.x, var_0.d)), select(!vec4<bool>(true, var_2.x, false, true), vec4<bool>(false, var_0.d, true, var_0.b.b), vec4<bool>(var_2.x, var_2.x, var_2.x, var_0.b.b)), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, any(select(vec4<bool>(var_2.x, true, var_0.b.b, var_0.b.b), vec4<bool>(true, true, false, var_2.x), vec4<bool>(var_2.x, var_2.x, false, var_2.x))), all(vec4<bool>(true, false, var_2.x, var_0.b.b)) && !var_0.b.b, !select(true, var_0.b.b, var_2.x)), vec4<bool>(!select(true, var_0.b.b, var_0.b.b), true, false, abs(var_0.b.c.x) != ~var_0.b.c.x), !vec4<bool>(all(vec4<bool>(false, var_0.d, true, true)), var_0.d, true, true)), select(!(!vec4<bool>(var_2.x, true, var_0.d, false)), select(select(select(vec4<bool>(false, var_0.d, var_0.d, var_2.x), vec4<bool>(true, var_2.x, var_2.x, false), vec4<bool>(var_0.b.b, var_2.x, var_0.d, true)), vec4<bool>(var_2.x, var_0.b.b, false, var_0.d), 1073f != var_0.a.x), select(vec4<bool>(false, var_2.x, false, true), !vec4<bool>(true, false, var_0.d, false), vec4<bool>(true, var_2.x, false, true)), true), var_2.x));
    return Struct_1(u_input.a, true, (_wgslsmith_sub_u32(u_input.b & var_1, var_0.b.a.x) >= 4294967295u) | (!var_0.b.b | true), select(_wgslsmith_mod_vec4_u32(~vec4<u32>(var_1, 0u, var_1, 0u), vec4<u32>(15183u, var_0.b.a.x, ~var_1, var_1 & var_1)), ~(~(~vec4<u32>(4294967295u, u_input.a.x, 4368u, var_1))), !var_2.x), select(!(!(!vec4<bool>(true, false, var_2.x, false))), !select(select(vec4<bool>(false, false, var_2.x, true), vec4<bool>(true, var_2.x, var_2.x, var_0.d), vec4<bool>(var_2.x, true, var_0.d, false)), !vec4<bool>(false, true, var_2.x, var_2.x), true), !(!(!var_2.x))));
}

fn func_1() -> bool {
    var var_0 = func_2();
    var var_1 = Struct_2(u_input.a, all(func_2().e.xwz), ~abs(vec2<i32>(1i, 2147483647i)) | vec2<i32>(max(2147483647i, -1394i) << (u_input.b % 32u), 0i << (u_input.a.x % 32u)));
    var var_2 = u_input.a;
    global0 = array<Struct_3, 12>();
    var var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-485f * 209f), _wgslsmith_f_op_f32(select(1000f, 1223f, true))))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -253f)), vec2<f32>(_wgslsmith_f_op_f32(step(241f, -652f)), _wgslsmith_f_op_f32(428f - -2191f))), !select(vec2<bool>(true, var_1.b), vec2<bool>(true, false), var_0.e.yz))), Struct_2(~min(~vec4<u32>(1u, 19760u, var_2.x, var_0.a.x), var_0.d), true, vec2<i32>(var_1.c.x, var_1.c.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(1360f, -462f), -1576f))), func_2().b);
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(true, any(vec4<bool>(true, true, true, true)) | false, !(!any(vec2<bool>(false, false))));
    let var_1 = -966f;
    let var_2 = vec4<bool>(!all(vec4<bool>(true, false, select(var_0.x, var_0.x, var_0.x), any(var_0.xy))), any(select(vec2<bool>(any(var_0.zx), false), vec2<bool>(var_0.x, true), func_1())), !all(!select(var_0.zx, var_0.xx, var_0.x)), 0i != select(max(1i, -1i), -1i, var_0.x));
    var_0 = !(!(!var_2.wyy));
    let var_3 = reverseBits(~_wgslsmith_sub_vec3_i32(vec3<i32>(~(-14424i), -12998i << (u_input.a.x % 32u), firstTrailingBit(1i)), vec3<i32>(_wgslsmith_mod_i32(4791i, -2147483647i), firstTrailingBit(9377i), min(-1i, 0i))));
    var var_4 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(var_1 + var_1), -719f, 1571f, 533f), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1140f)) + _wgslsmith_f_op_f32(var_1 - var_1))), var_1, var_1, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(357f + _wgslsmith_f_op_f32(-var_1))))), var_0.x));
    global0 = array<Struct_3, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1771f - _wgslsmith_div_f32(var_4.x, -1346f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_4.x)) - _wgslsmith_f_op_f32(abs(-829f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1, -1464f))) - _wgslsmith_f_op_f32(floor(var_4.x))), var_1, _wgslsmith_f_op_f32(f32(-1f) * -127f)), _wgslsmith_add_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(-17204i, -2147483647i), var_3.yx), var_3.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_4.zx * vec2<f32>(var_4.x, 2068f)))) - _wgslsmith_f_op_vec2_f32(-var_4.xy)));
}

