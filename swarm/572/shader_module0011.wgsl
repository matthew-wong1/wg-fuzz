struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
    c: bool,
    d: vec3<i32>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: vec4<f32>,
    d: vec4<u32>,
    e: i32,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: Struct_1) -> vec3<bool> {
    let var_0 = Struct_4(!(!all(vec3<bool>(false, true, false)) & (abs(u_input.a) > _wgslsmith_add_u32(arg_2.a, u_input.a))));
    let var_1 = max(_wgslsmith_div_i32(u_input.b, select(~(~10945i), -2147483647i, !(arg_2.b.x < arg_2.b.x))), u_input.b);
    var var_2 = _wgslsmith_f_op_f32(-arg_2.b.x);
    var var_3 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.b.x + -1000f), _wgslsmith_f_op_f32(364f + 2603f))), 251f), vec2<f32>(852f, 1000f));
    var_3 = arg_2.b;
    return !(!select(vec3<bool>(22398u != arg_2.a, true, !arg_0), select(!vec3<bool>(arg_0, false, true), !vec3<bool>(var_0.a, false, var_0.a), all(vec2<bool>(arg_1, false))), !(!vec3<bool>(false, false, arg_1))));
}

fn func_3(arg_0: u32, arg_1: Struct_2) -> u32 {
    var var_0 = vec3<f32>(1515f, 1801f, _wgslsmith_div_f32(arg_1.b.x, _wgslsmith_f_op_f32(floor(arg_1.b.x))));
    var_0 = vec3<f32>(1646f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_1.a, -841f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1384f)) * _wgslsmith_f_op_f32(step(904f, 602f))) - -135f)));
    var_0 = arg_1.e;
    var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(arg_1.e.x, _wgslsmith_f_op_f32(-760f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1.b.x - var_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2799f * arg_1.b.x) - _wgslsmith_f_op_f32(-var_0.x)) * _wgslsmith_div_f32(-901f, 369f))), arg_1.e);
    let var_1 = vec2<i32>(0i, ~firstLeadingBit(~arg_1.d.x));
    return 4294967295u >> (min(~49401u, _wgslsmith_dot_vec4_u32(firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0, 1u, 4294967295u, arg_0), vec4<u32>(4294967295u, 44018u, 1u, 4294967295u))), vec4<u32>(8412u, ~27175u, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, arg_0, u_input.a), vec3<u32>(4294967295u, u_input.a, arg_0))))) % 32u);
}

fn func_2(arg_0: vec4<i32>) -> Struct_4 {
    var var_0 = ~abs(_wgslsmith_mod_u32(_wgslsmith_sub_u32(func_3(u_input.a, Struct_2(1000f, vec2<f32>(493f, 844f), true, arg_0.yxz, vec3<f32>(1913f, -588f, 755f))), func_3(4294967295u, Struct_2(-1000f, vec2<f32>(772f, -1105f), true, vec3<i32>(arg_0.x, -79726i, 0i), vec3<f32>(448f, -1567f, -2136f)))), u_input.a));
    var_0 = u_input.a;
    let var_1 = vec2<i32>(_wgslsmith_dot_vec2_i32(min(-(vec2<i32>(9107i, u_input.b) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))), arg_0.xx), _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(arg_0.yz, vec2<i32>(u_input.b, u_input.b)), ~vec2<i32>(arg_0.x, arg_0.x)) | arg_0.yw), _wgslsmith_div_i32(firstLeadingBit(-18316i), 2147483647i));
    return Struct_4((_wgslsmith_mod_i32(_wgslsmith_clamp_i32(2147483647i, 0i, u_input.b), arg_0.x) ^ ~u_input.b) < ((2147483647i << (u_input.a % 32u)) ^ 31498i));
}

fn func_4(arg_0: Struct_4) -> vec3<bool> {
    var var_0 = !select(select(select(!vec4<bool>(arg_0.a, arg_0.a, arg_0.a, false), vec4<bool>(arg_0.a, false, arg_0.a, false), vec4<bool>(false, arg_0.a, false, false)), !vec4<bool>(arg_0.a, true, arg_0.a, true), true), !select(!vec4<bool>(arg_0.a, arg_0.a, false, arg_0.a), vec4<bool>(arg_0.a, arg_0.a, false, false), !vec4<bool>(true, true, false, arg_0.a)), select(!(!vec4<bool>(arg_0.a, arg_0.a, false, true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(arg_0.a, arg_0.a, true, arg_0.a), vec4<bool>(true, true, arg_0.a, arg_0.a), vec4<bool>(true, arg_0.a, true, arg_0.a)), false), vec4<bool>(all(vec4<bool>(arg_0.a, arg_0.a, arg_0.a, arg_0.a)), true, select(arg_0.a, false, true), false)));
    var var_1 = -u_input.b;
    var var_2 = select(vec4<bool>(arg_0.a, func_2(vec4<i32>(u_input.b, u_input.b, -2147483647i, u_input.b)).a == (_wgslsmith_f_op_f32(round(-1293f)) == _wgslsmith_f_op_f32(-1199f + -2039f)), select(!(!var_0.x), false, all(vec3<bool>(false, arg_0.a, arg_0.a))), false), vec4<bool>(true, true, false, true), !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(119f * 1613f) + _wgslsmith_f_op_f32(select(283f, -951f, arg_0.a))) == 254f));
    let var_3 = vec4<bool>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(849f, -1544f))))) <= 957f, arg_0.a, arg_0.a, true);
    var var_4 = 574f;
    return !(!var_3.xwz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(335f * 1019f);
    var var_1 = !vec3<bool>(select(true, true, any(select(vec2<bool>(false, false), vec2<bool>(false, true), true))), true, true);
    var var_2 = vec2<bool>(!(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 23729i), countOneBits(vec2<i32>(2147483647i, 13939i))) < _wgslsmith_div_i32(-u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(16521i, u_input.b, u_input.b), vec3<i32>(32369i, 0i, u_input.b)))), all(!vec4<bool>(var_1.x, !var_1.x, false, true)));
    var_1 = select(!func_1(!(u_input.a > u_input.a), any(select(vec3<bool>(true, var_1.x, true), vec3<bool>(var_1.x, var_2.x, var_1.x), vec3<bool>(false, var_2.x, false))), Struct_1(_wgslsmith_mult_u32(0u, 88824u), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) - vec2<f32>(282f, var_0)), vec2<u32>(u_input.a, u_input.a))), !func_4(func_2(vec4<i32>(u_input.b, -22601i, u_input.b, u_input.b))), !select(vec3<bool>(any(vec2<bool>(true, false)), !var_1.x, var_2.x), !(!vec3<bool>(var_1.x, var_1.x, var_1.x)), var_2.x | !var_2.x));
    var_2 = !select(select(vec2<bool>(!var_1.x, false || var_2.x), !var_1.zz, !(!var_1.yx)), vec2<bool>(all(vec2<bool>(false, true)), false), true);
    var_2 = func_4(Struct_4(true || var_1.x)).yx;
    var var_3 = Struct_2(_wgslsmith_f_op_f32(-var_0), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + _wgslsmith_f_op_f32(312f + var_0)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(var_0))))), all(!vec4<bool>(!var_1.x, !var_1.x, true, true)), _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(2147483647i, -1i), u_input.b, reverseBits(-21675i)), vec3<i32>(u_input.b | -2147483647i, _wgslsmith_div_i32(-1i, 2147483647i), u_input.b)) | select(firstTrailingBit(-vec3<i32>(1i, u_input.b, -97300i)), _wgslsmith_sub_vec3_i32(firstLeadingBit(vec3<i32>(u_input.b, 0i, u_input.b)), vec3<i32>(0i, 43509i, u_input.b)), false), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 463f, var_0)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0, -1731f, var_0))), !var_1.x))))));
    let var_4 = var_3.d.x;
    let var_5 = vec3<f32>(-1511f, _wgslsmith_f_op_f32(898f - -1000f), _wgslsmith_f_op_f32(-372f - _wgslsmith_f_op_f32(f32(-1f) * -1057f)));
    let x = u_input.a;
    s_output = StorageBuffer(1i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-753f, var_3.e.x, var_5.x, var_0))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1522f, 574f, 1165f, -782f), vec4<f32>(-585f, var_5.x, -1071f, -608f)))), vec4<f32>(_wgslsmith_f_op_f32(-var_3.b.x), 1f, _wgslsmith_f_op_f32(floor(902f)), 611f))));
}

