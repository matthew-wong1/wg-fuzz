struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec3<bool>, 31> = array<vec3<bool>, 31>(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> f32 {
    global0 = true;
    global1 = array<vec3<bool>, 31>();
    let var_0 = select(!(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false)))), !(!(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), false))), select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true)), any(vec4<bool>(false, true, true, false))), vec4<bool>(true, false, true, true), true));
    let var_1 = var_0.x;
    let var_2 = Struct_1(~(-2858i));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-281f)) * 389f))))));
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: vec4<i32>) -> Struct_1 {
    global1 = array<vec3<bool>, 31>();
    let var_0 = 1191f <= _wgslsmith_f_op_f32(step(1091f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + _wgslsmith_f_op_f32(-177f * _wgslsmith_div_f32(-494f, 1000f)))));
    var var_1 = ~_wgslsmith_add_vec3_u32(vec3<u32>(select(arg_1, arg_1 & 39721u, true), 0u ^ _wgslsmith_clamp_u32(0u, 0u, 18013u), 104445u), vec3<u32>(min(~1u, u_input.b.x), arg_1, 80351u));
    var var_2 = vec2<i32>(-1i) * -vec2<i32>(u_input.e, firstLeadingBit(u_input.d.x));
    var_2 = reverseBits(vec2<i32>(1i, -1i ^ _wgslsmith_add_i32(1i, -var_2.x)));
    return Struct_1(-2147483647i);
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    global1 = array<vec3<bool>, 31>();
    global1 = array<vec3<bool>, 31>();
    let var_0 = (!all(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), false)) & !(~13554u < u_input.b.x)) | true;
    global0 = false;
    let var_1 = Struct_1(arg_0.a);
    return func_2(!any(vec2<bool>(true, var_0)), min(1u, abs(~u_input.a.x) ^ (_wgslsmith_div_u32(u_input.b.x, u_input.a.x) << (0u % 32u))), u_input.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~_wgslsmith_div_i32(min(u_input.c, 27519i), 7172i));
    let var_1 = func_1(Struct_1(1i));
    global1 = array<vec3<bool>, 31>();
    var var_2 = abs(firstTrailingBit(_wgslsmith_add_i32(-4269i, -(u_input.c >> (u_input.b.x % 32u)))));
    var_0 = Struct_1(firstLeadingBit(32076i));
    var var_3 = Struct_1(func_2(all(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), all(vec3<bool>(true, true, true)))), reverseBits(u_input.a.x), -_wgslsmith_div_vec4_i32(vec4<i32>(28162i, 22221i, 757i, 6862i), vec4<i32>(-1i, 0i, var_1.a, -28611i)) | (vec4<i32>(var_0.a, 0i, 0i, 18117i) >> ((vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.b.x) ^ vec4<u32>(1u, 47537u, 0u, u_input.a.x)) % vec4<u32>(32u)))).a);
    var var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(625f, -703f), _wgslsmith_f_op_vec2_f32(vec2<f32>(130f, 346f) + vec2<f32>(-1247f, -249f))))))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1748f, -1201f, -1502f) + vec3<f32>(219f, -829f, 828f)) + vec3<f32>(268f, -1257f, 1487f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 903f, 307f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-746f, -1556f, -1226f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-732f, _wgslsmith_f_op_f32(step(381f, 880f)), -352f) + vec3<f32>(2360f, _wgslsmith_f_op_f32(-619f - -937f), _wgslsmith_f_op_f32(round(294f))))), min(-1i, var_3.a));
}

