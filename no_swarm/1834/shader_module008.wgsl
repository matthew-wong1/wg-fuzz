struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: u32,
    d: vec3<u32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
}

struct Struct_5 {
    a: vec3<u32>,
    b: f32,
    c: Struct_1,
    d: i32,
    e: Struct_4,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec3<f32>,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 32> = array<vec3<bool>, 32>(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true));

var<private> global1: i32 = 26308i;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: Struct_5, arg_3: u32) -> vec2<u32> {
    global0 = array<vec3<bool>, 32>();
    global1 = _wgslsmith_mod_i32(-1i, ~1i);
    global0 = array<vec3<bool>, 32>();
    global1 = select(u_input.a ^ -_wgslsmith_add_i32(i32(-1i) * -2147483647i, 0i), u_input.a, true);
    global1 = -u_input.a;
    return reverseBits(_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(firstTrailingBit(arg_2.e.b.c.xy), firstTrailingBit(vec2<u32>(0u, 0u))), arg_2.e.b.c.yz) << (~arg_2.e.b.c.xy % vec2<u32>(32u)));
}

fn func_3() -> u32 {
    var var_0 = Struct_4(~u_input.a, Struct_2(true, Struct_1(all(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false))), !global0[_wgslsmith_index_u32(select(1u, 30788u, true), 32u)], min(-25613i, -8725i), 46607u), ~vec3<u32>(min(0u, 1u), ~9075u, 4294967295u)));
    var var_1 = vec2<bool>((var_0.b.b.c ^ -21032i) != -1i, any(var_0.b.b.b.zy));
    global1 = 2147483647i;
    var var_2 = all(!global0[_wgslsmith_index_u32(_wgslsmith_mod_u32((61226u & var_0.b.c.x) >> (6211u % 32u), ~var_0.b.b.d), 32u)]);
    let var_3 = abs(select(~select(firstLeadingBit(var_0.b.c), vec3<u32>(var_0.b.c.x, var_0.b.b.d, var_0.b.b.d), var_0.b.a), vec3<u32>(1u, 1u, ~_wgslsmith_sub_u32(var_0.b.b.d, 0u)), var_0.b.b.b));
    return var_0.b.b.d;
}

fn func_2(arg_0: vec2<u32>, arg_1: u32) -> Struct_3 {
    global0 = array<vec3<bool>, 32>();
    let var_0 = vec2<u32>(_wgslsmith_clamp_u32(arg_0.x, arg_0.x, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, arg_1, 19924u, 1u), vec4<u32>(arg_0.x, 23876u, 318u, arg_1))), _wgslsmith_add_u32(arg_1, _wgslsmith_mult_u32(64584u, arg_0.x) ^ ~_wgslsmith_mod_u32(arg_0.x, 0u)));
    global1 = _wgslsmith_div_i32(-2147483647i, -1i);
    global0 = array<vec3<bool>, 32>();
    let var_1 = Struct_4(-21111i, Struct_2(true, Struct_1(true, select(select(global0[_wgslsmith_index_u32(var_0.x, 32u)], global0[_wgslsmith_index_u32(var_0.x, 32u)], global0[_wgslsmith_index_u32(75865u, 32u)]), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true), select(vec3<bool>(false, false, false), global0[_wgslsmith_index_u32(arg_0.x, 32u)], false)), -_wgslsmith_clamp_i32(-35530i, 2147483647i, u_input.a), ~(~var_0.x)), select(_wgslsmith_add_vec3_u32(~vec3<u32>(arg_0.x, arg_0.x, 4294967295u), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, arg_0.x, arg_1), vec3<u32>(arg_0.x, 4294967295u, var_0.x))), ~vec3<u32>(arg_1, var_0.x, 4294967295u), true)));
    return Struct_3(var_1.b.b.c, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(1f)), 1f)), ~func_3(), vec3<u32>(arg_1, _wgslsmith_div_u32(16719u, var_1.b.c.x), ~max(var_1.b.b.d, 4294967295u | var_1.b.b.d)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 32>();
    let var_0 = func_2(~(~(~vec2<u32>(46087u, 14939u)) & (~vec2<u32>(4294967295u, 4804u) >> (func_1(true, 2086f, Struct_5(vec3<u32>(0u, 24352u, 32533u), -1760f, Struct_1(true, global0[_wgslsmith_index_u32(4294967295u, 32u)], u_input.a, 0u), 26118i, Struct_4(u_input.a, Struct_2(true, Struct_1(true, vec3<bool>(false, true, false), u_input.a, 4294967295u), vec3<u32>(8452u, 16430u, 0u)))), 4294967295u) % vec2<u32>(32u)))), ~(~_wgslsmith_mod_u32(1u, 1u)));
    global1 = firstLeadingBit(u_input.a);
    let var_1 = all(vec4<bool>(any(vec4<bool>(true, true, var_0.a > var_0.a, true)), all(vec3<bool>(false, true, true)) && all(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), false)), ~abs(var_0.d.x) >= _wgslsmith_div_u32(~72135u, var_0.d.x), any(vec4<bool>(true, true, true, true))));
    global1 = reverseBits(-select(var_0.a << (var_0.d.x % 32u), -var_0.a, true)) | (2147483647i | -firstTrailingBit(-var_0.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(-2071f)), _wgslsmith_f_op_f32(round(var_0.b)), _wgslsmith_f_op_f32(step(var_0.b, var_0.b)), -587f) - vec4<f32>(-1410f, _wgslsmith_f_op_f32(-1000f * var_0.b), _wgslsmith_f_op_f32(trunc(-1321f)), 136f)))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1710f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -522f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -298f) * var_0.b), var_0.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-778f, var_0.b), -871f, -941f, _wgslsmith_f_op_f32(ceil(var_0.b)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1083f, -738f, var_0.b) * vec3<f32>(var_0.b, 1000f, -1138f)) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1040f, var_0.b, 719f))))))), var_0.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1547f))), -2149f, _wgslsmith_f_op_f32(406f * _wgslsmith_f_op_f32(max(1354f, -1076f))))));
}

