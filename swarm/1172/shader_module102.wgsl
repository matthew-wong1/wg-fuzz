struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: u32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 29>;

var<private> global1: bool;

var<private> global2: array<vec2<i32>, 21>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<u32>, arg_1: i32) -> vec3<i32> {
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1629f, -1929f) + vec2<f32>(-494f, -138f))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1181f, -922f)))))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-505f, 2567f), vec2<f32>(-348f, 639f), false))), vec2<f32>(1f, 1f))))), arg_1, vec3<i32>(2147483647i, _wgslsmith_sub_i32(reverseBits(2076i), abs(u_input.a.x)), -arg_1));
    var var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_0.a, var_0.a) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1500f), _wgslsmith_f_op_f32(var_0.a.x * var_0.a.x))), _wgslsmith_dot_vec4_i32(firstLeadingBit(u_input.a), -(~u_input.a)), _wgslsmith_add_vec3_i32(u_input.a.wzw, ~vec3<i32>(u_input.a.x, -113054i, arg_1) ^ vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.b, 1i, var_0.c.x), vec3<i32>(65256i, 0i, arg_1)), 0i, arg_1)));
    var var_2 = var_1.a.x;
    var var_3 = Struct_1(0i, select(!select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, false), u_input.a.x > -2147483647i), select(vec2<bool>(true, true), vec2<bool>(false, false), true), select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, true), all(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true))))), 23731u ^ ~arg_0.x);
    var var_4 = false;
    return select(u_input.a.yww, vec3<i32>(_wgslsmith_div_i32(var_1.b, 1i), var_0.b, var_0.c.x), select(!(!select(vec3<bool>(var_3.b.x, var_3.b.x, var_3.b.x), vec3<bool>(true, var_3.b.x, var_3.b.x), var_3.b.x)), vec3<bool>(true, var_3.b.x, false), !select(vec3<bool>(var_3.b.x, false, true), vec3<bool>(var_3.b.x, var_3.b.x, true), !vec3<bool>(false, var_3.b.x, true))));
}

fn func_2() -> u32 {
    global2 = array<vec2<i32>, 21>();
    let var_0 = 1i;
    let var_1 = 73461i;
    var var_2 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(1f * 1447f), -1769f), 26884i, func_3(abs(vec2<u32>(~8921u, 11877u << (0u % 32u))), ~var_1));
    var var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.a) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.a)) + vec2<f32>(-308f, _wgslsmith_f_op_f32(floor(var_2.a.x))))), _wgslsmith_sub_i32(~var_2.c.x, countOneBits(-u_input.a.x)) ^ (firstTrailingBit(-48448i) ^ var_2.b), var_2.c);
    return _wgslsmith_sub_u32(~0u, 9220u);
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: f32, arg_3: Struct_3) -> u32 {
    let var_0 = firstTrailingBit(firstTrailingBit(~vec2<i32>(arg_0.x, ~23938i)));
    global2 = array<vec2<i32>, 21>();
    var var_1 = ~countOneBits(vec3<u32>(~1530u, ~4294967295u, 1u)) | _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, 1u) ^ vec3<u32>(~52443u, func_2(), ~90315u), min(~vec3<u32>(38353u, 126585u, 95438u), countOneBits(vec3<u32>(0u, 4294967295u, 4294967295u))));
    var var_2 = Struct_3(arg_1.yz, _wgslsmith_div_i32(_wgslsmith_div_i32(~2147483647i, -arg_3.b), arg_0.x), firstLeadingBit(vec3<i32>(firstLeadingBit(-8456i), firstLeadingBit(-1i & arg_0.x), 2147483647i)));
    var_2 = arg_3;
    return abs(~(~var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -65086i <= -_wgslsmith_clamp_i32(-14451i, -36606i, 40488i);
    let var_1 = reverseBits(~abs(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 37501u)))) & vec2<u32>(69647u | (func_1(vec3<i32>(2147483647i, 57902i, u_input.a.x), vec3<f32>(2257f, 597f, -1801f), 1143f, Struct_3(vec2<f32>(-1885f, 914f), u_input.a.x, vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i))) & ~1u), 41382u);
    global1 = any(!vec4<bool>(max(var_1.x, var_1.x) != var_1.x, all(vec4<bool>(false, true, false, false)), false, true));
    var var_2 = 48240u;
    let var_3 = Struct_1(-(~1i), vec2<bool>(all(vec4<bool>(select(true, false, false), true, true, false)), any(vec3<bool>(true, true, true)) || (_wgslsmith_sub_u32(var_1.x, var_1.x) <= _wgslsmith_div_u32(var_1.x, var_1.x))), 0u);
    let x = u_input.a;
    s_output = StorageBuffer(~max(-countOneBits(vec3<i32>(20850i, var_3.a, 13026i)), ~vec3<i32>(-4933i, var_3.a, u_input.a.x)));
}

