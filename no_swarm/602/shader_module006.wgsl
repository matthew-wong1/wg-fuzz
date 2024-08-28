struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 9>;

var<private> global1: f32 = 406f;

var<private> global2: array<Struct_1, 10>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<f32>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.x)) - _wgslsmith_f_op_f32(540f * arg_0.x)));
    var var_1 = -1635f;
    var var_2 = u_input.a;
    var var_3 = global2[_wgslsmith_index_u32(20132u, 10u)];
    global2 = array<Struct_1, 10>();
    return _wgslsmith_dot_vec3_i32(abs(vec3<i32>(-1i) * -vec3<i32>(var_3.a.x, u_input.a, 41728i)) << (~vec3<u32>(~4294967295u, max(53832u, 0u), 1u) % vec3<u32>(32u)), -_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(~vec3<i32>(1i, var_3.a.x, -23934i), vec3<i32>(-2908i, u_input.a, 0i), vec3<i32>(var_3.a.x, var_3.a.x, 1i) << (vec3<u32>(4294967295u, 10729u, 0u) % vec3<u32>(32u))), -vec3<i32>(-1i, 37588i, -2147483647i) ^ ~vec3<i32>(var_3.a.x, 1i, u_input.a)));
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: bool) -> u32 {
    var var_0 = vec4<i32>(~53042i, -u_input.a, 0i, _wgslsmith_mod_i32(firstLeadingBit(func_3(vec4<f32>(-1000f, 821f, -1619f, 377f))), -_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(global0[_wgslsmith_index_u32(0u, 9u)], global0[_wgslsmith_index_u32(0u, 9u)]), abs(vec4<i32>(arg_1, 53601i, u_input.a, -5818i)))));
    var_0 = global0[_wgslsmith_index_u32(reverseBits(~46418u), 9u)] & select(_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_add_i32(arg_1, 25716i), arg_0 >> (118295u % 32u), -1i, -1i), vec4<i32>(~arg_0, _wgslsmith_sub_i32(arg_1, -2147483647i), u_input.a, 0i)), _wgslsmith_add_vec4_i32(global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(4913u, 49569u, 1u), vec3<u32>(4294967295u, 47051u, 21842u))), 9u)], vec4<i32>(-1i, -var_0.x, ~(-1i), arg_0)), true);
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(548f, -331f, -360f))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(312f, -2443f, -1132f), vec3<f32>(538f, 165f, 1795f), arg_2))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-873f, -1000f, 363f))) * vec3<f32>(_wgslsmith_f_op_f32(-946f + 294f), _wgslsmith_f_op_f32(f32(-1f) * -1379f), 1000f)), !arg_2)));
    var var_2 = Struct_1(vec2<i32>(0i, arg_0));
    var var_3 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.zz * var_1.zz)))), vec2<f32>(1000f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(var_1.x)))))), var_1.yx));
    return 1u;
}

fn func_1(arg_0: Struct_1) -> u32 {
    let var_0 = global2[_wgslsmith_index_u32(reverseBits(abs(~(~1u))), 10u)];
    global0 = array<vec4<i32>, 9>();
    global0 = array<vec4<i32>, 9>();
    var var_1 = any(vec3<bool>(!any(vec3<bool>(true, true, false)), false, any(vec2<bool>(true, true))));
    var var_2 = global2[_wgslsmith_index_u32(max(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(9297u, 0u, 4294967295u, 4294967295u), ~vec4<u32>(1u, 82981u, 1u, 4294967295u))), _wgslsmith_clamp_u32(func_2(~(-1i), var_0.a.x, true), select(1u, 22731u, true || (-1i > var_0.a.x)), ~(~_wgslsmith_clamp_u32(4051u, 0u, 0u)))), 10u)];
    return ~max(1u, ~(~select(4294967295u, 4294967295u, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(abs(firstLeadingBit(1i))) << (min(~(func_1(global2[_wgslsmith_index_u32(17763u, 10u)]) << (~14206u % 32u)), _wgslsmith_mod_u32(12477u, reverseBits(18374u)) | firstLeadingBit(select(4294967295u, 4294967295u, true))) % 32u);
    var_0 = u_input.a;
    let var_1 = vec2<u32>(1u, _wgslsmith_mult_u32((0u | _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 83801u, 4294967295u), vec4<u32>(25493u, 4294967295u, 23053u, 4294967295u))) << (abs(1528u) % 32u), firstTrailingBit(1u)));
    var_0 = ~u_input.a;
    let var_2 = var_1 ^ countOneBits(~(var_1 ^ ~var_1));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(u_input.a, firstLeadingBit(abs(-866i))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2702f - -559f) * _wgslsmith_f_op_f32(1873f + 1818f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(966f, _wgslsmith_f_op_f32(-1000f + -321f)) * _wgslsmith_f_op_f32(f32(-1f) * -1282f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -264f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -368f))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-396f, _wgslsmith_f_op_f32(round(-1101f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -901f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-110f))))));
}

