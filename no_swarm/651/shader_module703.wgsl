struct Struct_1 {
    a: f32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8>;

var<private> global1: array<Struct_1, 13>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec3<i32> {
    var var_0 = vec2<f32>(600f, 1000f);
    var var_1 = Struct_1(var_0.x, ~countOneBits(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(u_input.a, 1u))));
    return -vec3<i32>(1i, 1i, 1i);
}

fn func_2(arg_0: i32, arg_1: vec3<i32>) -> Struct_1 {
    let var_0 = func_3();
    global0 = array<Struct_1, 8>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1982f) * _wgslsmith_f_op_f32(max(288f, -645f))) + 966f);
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -811f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-948f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -554f), _wgslsmith_div_f32(-1579f, 135f))))));
    let var_2 = Struct_1(1f, ~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4852u, u_input.a, u_input.a, u_input.a), ~vec4<u32>(4294967295u, 0u, 0u, 4294967295u)), ~reverseBits(u_input.a)));
    return Struct_1(-735f, _wgslsmith_add_vec2_u32(vec2<u32>(~u_input.a, (var_2.b.x >> (4294967295u % 32u)) >> (~7964u % 32u)), vec2<u32>(firstTrailingBit(u_input.a), select(min(2811u, u_input.a), ~50409u, true))));
}

fn func_1(arg_0: f32) -> vec3<bool> {
    global1 = array<Struct_1, 13>();
    var var_0 = func_2(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(-abs(0i), _wgslsmith_div_i32(5401i, 1662i)), -(~0i), min(24902i, -1i)), vec3<i32>(-(~(2147483647i << (u_input.a % 32u))), -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i) << (vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(vec4<i32>(-1i, 2147483647i, 0i, 2147483647i), -vec4<i32>(-9423i, 2147483647i, -37319i, 27069i)))));
    var var_1 = Struct_1(-138f, var_0.b ^ ~select(var_0.b, var_0.b, true));
    var_1 = Struct_1(var_1.a, vec2<u32>(min(~(~33136u), ~(~68919u)), _wgslsmith_sub_u32(4294967295u, ~_wgslsmith_dot_vec2_u32(var_1.b, vec2<u32>(var_0.b.x, u_input.a)))));
    global0 = array<Struct_1, 8>();
    return vec3<bool>(true, select(false, (abs(u_input.a) >= (1u | var_0.b.x)) | false, true), any(vec4<bool>(true, true, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 8>();
    var var_0 = !(!(!select(false, false, true))) | (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-485f * _wgslsmith_f_op_f32(trunc(-172f)))) < _wgslsmith_f_op_f32(-1300f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(1437f))))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f));
    var var_2 = any(func_1(_wgslsmith_div_f32(1700f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-998f - -330f)))));
    var var_3 = global1[_wgslsmith_index_u32(u_input.a, 13u)];
    let var_4 = select(19423u, ~u_input.a, !select(false, func_1(181f).x, false)) != _wgslsmith_dot_vec3_u32((_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, var_3.b.x, u_input.a), vec3<u32>(4294967295u, var_3.b.x, 1u)) | ~vec3<u32>(1u, 81581u, var_3.b.x)) >> (select(firstTrailingBit(vec3<u32>(u_input.a, u_input.a, 1u)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, var_3.b.x, var_3.b.x), vec3<u32>(37505u, var_3.b.x, 0u)), select(true, false, true)) % vec3<u32>(32u)), vec3<u32>(firstLeadingBit(80153u << (u_input.a % 32u)), u_input.a, u_input.a));
    var_0 = true & (var_3.a < _wgslsmith_div_f32(-870f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1433f, -1614f) + _wgslsmith_f_op_f32(f32(-1f) * -926f))));
    let var_5 = func_2(2147483647i, vec3<i32>(firstTrailingBit(_wgslsmith_mod_i32(firstLeadingBit(2147483647i), func_3().x)), select(~1i | (-9634i << (var_3.b.x % 32u)), (i32(-1i) * -4622i) >> ((6129u ^ u_input.a) % 32u), true), -5317i));
    global0 = array<Struct_1, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(max(countOneBits(-25824i), -2147483647i) << (0u % 32u), -41665i), ~(~abs(37538u)), -vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(16004i, -2147483647i), vec2<i32>(0i, -31975i)) | 1i, -countOneBits(2250i), 1i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(445f, 1793f), vec2<f32>(-896f, var_3.a)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -2015f))), vec2<f32>(-589f, _wgslsmith_f_op_f32(235f + -1142f)), vec2<bool>(var_3.a == 181f, var_4)))));
}

