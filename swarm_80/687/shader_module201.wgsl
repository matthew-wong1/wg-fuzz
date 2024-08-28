struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<f32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
}

struct Struct_5 {
    a: bool,
    b: Struct_3,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 11>;

var<private> global1: vec3<i32>;

var<private> global2: f32;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: bool, arg_3: vec4<bool>) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -200f), _wgslsmith_f_op_f32(-112f - 818f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(594f, 672f)))), select(false, -2147483647i != global1.x, true))))));
    let var_1 = Struct_4(Struct_3(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-983f - var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -258f)))), vec2<i32>(-52040i, global1.x), Struct_1(!all(vec4<bool>(arg_2, false, true, false)), ~(~0u), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1745f, -1269f, 767f, var_0.x), vec4<f32>(117f, var_0.x, var_0.x, -750f)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(811f, var_0.x, var_0.x, var_0.x), vec4<f32>(426f, var_0.x, var_0.x, var_0.x), global0[_wgslsmith_index_u32(u_input.a.x, 11u)]))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(528f, -118f, 283f, var_0.x)))))), ~(1u >> (max(_wgslsmith_clamp_u32(27179u, 1u, 1u), firstLeadingBit(arg_1)) % 32u)));
    let var_2 = max(select(abs(~(~u_input.a.yx)), abs(reverseBits(~vec2<u32>(4294967295u, 4294967295u))), !(!(!arg_3.yz))), reverseBits(u_input.a.zw));
    var var_3 = Struct_2(select(arg_3, vec4<bool>(4294967295u > _wgslsmith_clamp_u32(0u, 1u, 1u), arg_3.x, false, any(vec3<bool>(arg_2, false, arg_2)) || all(vec2<bool>(arg_3.x, false))), false), 0i);
    var var_4 = select(~select(_wgslsmith_sub_vec3_i32(vec3<i32>(var_3.b, global1.x, global1.x), vec3<i32>(0i, -9678i, global1.x)), _wgslsmith_sub_vec3_i32(vec3<i32>(1i, -53301i, 2147483647i), vec3<i32>(2147483647i, var_1.a.b.x, var_1.a.b.x)), arg_3.x | false) | -reverseBits(-vec3<i32>(35141i, var_3.b, 8725i)), reverseBits(_wgslsmith_mod_vec3_i32(firstTrailingBit(vec3<i32>(-42524i, -28483i, var_1.a.b.x)), _wgslsmith_mod_vec3_i32(vec3<i32>(13347i, global1.x, -15863i), vec3<i32>(var_1.a.b.x, -6064i, var_1.a.b.x))) ^ max(vec3<i32>(-2147483647i, 1i, 10062i), select(vec3<i32>(0i, -2147483647i, var_1.a.b.x), vec3<i32>(global1.x, 38281i, 2147483647i), true))), !arg_3.xyw);
    return var_1.a.b;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<f32>) -> f32 {
    global2 = 856f;
    global1 = vec3<i32>(min(~_wgslsmith_mod_i32(-62389i, -31759i), -(~(global1.x & global1.x))), ~global1.x, -(-1i << (1u % 32u)));
    let var_0 = Struct_4(Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(arg_0)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1508f, 1212f, -1514f)))), min(func_3(countOneBits(u_input.a.x), 16825u | u_input.a.x, select(true, false, false), !global0[_wgslsmith_index_u32(u_input.b, 11u)]), global1.xz), Struct_1(false, 4394u, _wgslsmith_f_op_vec4_f32(arg_1 + _wgslsmith_f_op_vec4_f32(-arg_1)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-arg_1))))), _wgslsmith_mult_u32(abs(0u), u_input.b));
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(arg_0)))), var_0.a.c.c.zyy);
    var var_2 = Struct_5(true, var_0.a, _wgslsmith_f_op_f32(-1f));
    return -1000f;
}

fn func_1(arg_0: vec2<bool>, arg_1: i32) -> f32 {
    var var_0 = false;
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1383f)));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -482f), 1000f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec3<f32>(-1599f, -723f, 786f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1966f, 695f, -353f, 1039f)))) * 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -619f)), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1441f, -1057f, -612f) * vec3<f32>(883f, 744f, 1000f)))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(select(1365f, -1000f, arg_0.x)), -925f, 941f, -963f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-466f)), _wgslsmith_f_op_f32(f32(-1f) * -281f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-100f * -3148f) - 936f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1365f))))));
    var var_3 = ~u_input.a.x;
    let var_4 = select(~(~(~vec3<u32>(u_input.b, 54112u, 24995u))), _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(1u, 7805u), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.a.xy, u_input.a.wy), u_input.a.yy), countOneBits(countOneBits(31u))), _wgslsmith_add_vec3_u32(~(u_input.a.xxy << (vec3<u32>(1u, u_input.b, 7659u) % vec3<u32>(32u))), ~vec3<u32>(u_input.a.x, u_input.a.x, u_input.b))), any(vec4<bool>(false, true || !arg_0.x, arg_0.x, arg_0.x)));
    return 1396f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1i;
    let var_1 = vec4<f32>(2644f, _wgslsmith_f_op_f32(-1f), _wgslsmith_div_f32(_wgslsmith_div_f32(1227f, _wgslsmith_f_op_f32(func_1(vec2<bool>(true, true), ~(-2147483647i)))), 453f), _wgslsmith_f_op_f32(func_1(select(!select(vec2<bool>(true, false), vec2<bool>(true, false), false), vec2<bool>(true, true), vec2<bool>(false, true)), global1.x)));
    var var_2 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(586f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -325f)))), -1358f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.x)) - _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(-var_1.x))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-682f - var_1.x)))));
    global0 = array<vec4<bool>, 11>();
    var var_3 = select(!select(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b, _wgslsmith_div_u32(37722u, 4294967295u)), 11u)], select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true)), vec4<bool>(false, true, false, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), false)), vec4<bool>(true, true, true, true)), !global0[_wgslsmith_index_u32(1u, 11u)], !select(select(vec4<bool>(true, true, true, true), global0[_wgslsmith_index_u32(4294967295u, 11u)], true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec2<bool>(false, false))), true));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(global1.x, _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(-66736i, global1.x, global1.x, global1.x)), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, 1i, global1.x, global1.x), vec4<i32>(global1.x, global1.x, -51732i, global1.x), vec4<i32>(global1.x, global1.x, 0i, global1.x))), _wgslsmith_mult_i32(max(global1.x, min(global1.x, 1i)), _wgslsmith_mod_i32(_wgslsmith_div_i32(global1.x, 50865i), ~9462i)), ~global1.x), vec4<u32>(1u, max(~(u_input.b >> (0u % 32u)), u_input.b), _wgslsmith_mod_u32(min(_wgslsmith_clamp_u32(u_input.b, 25731u, 4294967295u), ~u_input.b), u_input.b), u_input.b), ~vec4<u32>(firstLeadingBit(u_input.b), 0u, _wgslsmith_mod_u32(u_input.b, 54529u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 70143u), vec2<u32>(u_input.b, u_input.b))) << (vec4<u32>(_wgslsmith_div_u32(u_input.a.x, u_input.b), 0u, ~57595u ^ _wgslsmith_add_u32(u_input.a.x, u_input.a.x), ~u_input.a.x >> (u_input.b % 32u)) % vec4<u32>(32u)), select(vec3<u32>(u_input.b, 4294967295u << (u_input.a.x % 32u), reverseBits(u_input.b)), vec3<u32>(~1u, 66506u, u_input.a.x), var_3.xzz) | countOneBits(_wgslsmith_mod_vec3_u32(u_input.a.wyy ^ u_input.a.wzw, select(vec3<u32>(1u, u_input.b, 1u), u_input.a.zxx, true))));
}

