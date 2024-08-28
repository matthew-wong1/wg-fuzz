struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: vec2<u32>,
    d: Struct_3,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<bool>, arg_1: bool, arg_2: vec2<u32>, arg_3: bool) -> vec4<u32> {
    var var_0 = vec4<i32>((-1i >> (u_input.a % 32u)) & 49966i, 2147483647i, i32(-1i) * -58340i, _wgslsmith_clamp_i32(abs(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 0i, 0i), vec3<i32>(1i, 15994i, 2147483647i)), 0i, 7603i)), -17587i, reverseBits(_wgslsmith_mod_i32(15115i << (0u % 32u), reverseBits(-30205i)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-576f, -202f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-921f - 716f))))));
    global0 = array<Struct_1, 23>();
    let var_2 = Struct_5(~_wgslsmith_div_vec4_u32(max(vec4<u32>(u_input.a, arg_2.x, 15849u, 1u), vec4<u32>(41705u, u_input.a, 1u, arg_2.x)) ^ vec4<u32>(31257u, 1u, arg_2.x, 4294967295u), abs(max(vec4<u32>(130730u, 34136u, 8671u, u_input.a), vec4<u32>(5536u, u_input.a, u_input.a, 15047u)))), _wgslsmith_sub_vec2_u32(firstLeadingBit(arg_2), (arg_2 >> ((vec2<u32>(0u, 3117u) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))) % vec2<u32>(32u))) ^ vec2<u32>(arg_2.x ^ 10088u, 1u)));
    var_0 = vec4<i32>(var_0.x, -19690i ^ var_0.x, -2348i, var_0.x);
    return vec4<u32>(_wgslsmith_sub_u32(50293u, 45979u), 1u, 85388u, min(_wgslsmith_mod_u32(1u, arg_2.x), _wgslsmith_mult_u32(select(1u, 0u, true), ~46072u))) ^ ~vec4<u32>(firstLeadingBit(firstTrailingBit(4294967295u)), ~firstLeadingBit(4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.b.x, u_input.a, 4294967295u), var_2.a.wzw), _wgslsmith_clamp_u32(var_2.a.x, _wgslsmith_div_u32(var_2.b.x, u_input.a), firstTrailingBit(46646u)));
}

fn func_2(arg_0: i32) -> vec2<f32> {
    var var_0 = ~_wgslsmith_div_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.a, u_input.a), u_input.a), ~58926u) ^ _wgslsmith_div_u32(firstTrailingBit(u_input.a), _wgslsmith_mod_u32(~select(4294967295u, u_input.a, true), ~(~26434u)));
    let var_1 = Struct_3(func_3(vec2<bool>(any(vec2<bool>(true, true)), !all(vec4<bool>(false, false, false, true))), true, vec2<u32>(1u, _wgslsmith_add_u32(u_input.a, u_input.a) ^ u_input.a), true), _wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) << (~min(vec4<u32>(4294967295u, 0u, u_input.a, u_input.a), vec4<u32>(u_input.a, 4294967295u, 64229u, 4294967295u)) % vec4<u32>(32u)), ~vec4<u32>(~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(59717u, 1u, u_input.a)), _wgslsmith_mod_u32(u_input.a, 45456u), 4294967295u)));
    var_0 = (var_1.a.x ^ (~(u_input.a << (4294967295u % 32u)) << (~firstLeadingBit(var_1.a.x) % 32u))) << (_wgslsmith_mod_u32(var_1.a.x, ~_wgslsmith_mod_u32(1u, _wgslsmith_div_u32(var_1.b.x, var_1.b.x))) % 32u);
    var var_2 = !(select(_wgslsmith_mod_i32(44367i, arg_0) <= arg_0, true, !(u_input.a >= var_1.a.x)) & true);
    global0 = array<Struct_1, 23>();
    return _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(544f, -205f), _wgslsmith_f_op_vec2_f32(vec2<f32>(110f, -1000f) * vec2<f32>(730f, 101f)), select(vec2<bool>(false, false), vec2<bool>(true, false), false)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1097f - 1524f), _wgslsmith_f_op_f32(f32(-1f) * -722f))))));
}

fn func_1() -> f32 {
    global0 = array<Struct_1, 23>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(func_2(~(i32(-1i) * -4408i))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(~19501i)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1093f), _wgslsmith_f_op_f32(ceil(-926f)))))));
    let var_1 = Struct_4(global0[_wgslsmith_index_u32(20859u, 23u)], _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(~(-vec2<i32>(-1i, -1468i)), _wgslsmith_clamp_vec2_i32(-vec2<i32>(2147483647i, -2147483647i), abs(vec2<i32>(-1i, -48369i)), vec2<i32>(-1i, -18728i))), 0i), ~max(~(~vec2<u32>(u_input.a, u_input.a)), ~vec2<u32>(u_input.a, u_input.a)), Struct_3(_wgslsmith_add_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u), vec4<u32>(63909u, u_input.a, u_input.a, 1u)), abs(firstLeadingBit(vec4<u32>(8520u, u_input.a, 1u, u_input.a)))), ~_wgslsmith_sub_vec4_u32(max(vec4<u32>(u_input.a, u_input.a, 1u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 1u)), abs(vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a)))));
    let var_2 = var_0.x;
    let var_3 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-682f, 520f)));
    return var_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 23>();
    global0 = array<Struct_1, 23>();
    global0 = array<Struct_1, 23>();
    var var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-237f, 1000f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1230f), _wgslsmith_f_op_f32(abs(-2428f))) + _wgslsmith_f_op_f32(f32(-1f) * -225f)), -1180f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1())))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(100f + 2326f) * -197f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-1007f)))), 1f, _wgslsmith_f_op_f32(min(-973f, _wgslsmith_f_op_f32(select(-1058f, 202f, true))))) - _wgslsmith_div_vec4_f32(vec4<f32>(1111f, -990f, -702f, _wgslsmith_f_op_f32(-696f - 933f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(442f, -411f, -621f, -738f) - vec4<f32>(-861f, 837f, 1488f, 1105f)) + vec4<f32>(1306f, -115f, 1310f, 547f)))));
    global0 = array<Struct_1, 23>();
    let var_1 = !select(select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), true), vec4<bool>(false, false, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false))), vec4<bool>(true, true, true, true), true), !select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), true), vec4<bool>(true, true, true, true), true), any(vec2<bool>(true, true)));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -735f);
    let x = u_input.a;
    s_output = StorageBuffer(-reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, -1i, -1i, -19487i), vec4<i32>(-2147483647i, -11696i, 33141i, 26221i))) | vec4<i32>(~min(-3981i, 46235i), ~abs(34982i), -_wgslsmith_mod_i32(0i, 2147483647i), ~(-1707i) & _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 2147483647i), vec2<i32>(-2147483647i, 1i))), _wgslsmith_add_vec2_u32(~func_3(!var_1.wy, true, vec2<u32>(u_input.a, u_input.a) << (vec2<u32>(u_input.a, 12858u) % vec2<u32>(32u)), true).wx, _wgslsmith_add_vec2_u32(~vec2<u32>(u_input.a, 24016u), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 5328u), vec2<u32>(28289u, u_input.a))) ^ vec2<u32>(1u, ~0u)), _wgslsmith_dot_vec4_i32(abs(abs(vec4<i32>(40605i, -84126i, 1i, -31779i))), (-vec4<i32>(1i, 1i, -25992i, 6965i) & select(vec4<i32>(1i, -1i, -9437i, 2147483647i), vec4<i32>(2147483647i, 0i, -2147483647i, -2147483647i), vec4<bool>(true, var_1.x, var_1.x, false))) << (vec4<u32>(1u, ~57109u, u_input.a, firstTrailingBit(0u)) % vec4<u32>(32u))), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.x), -601f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(140f + -354f), -1279f)) + -498f)));
}

