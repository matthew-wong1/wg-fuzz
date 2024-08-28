struct Struct_1 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: vec4<u32>,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: bool,
    c: u32,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 22>;

var<private> global1: array<vec4<i32>, 8>;

var<private> global2: array<Struct_3, 17>;

var<private> global3: u32;

var<private> global4: f32 = 1000f;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1() -> i32 {
    var var_0 = any(vec3<bool>(true, true, true));
    let var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-628f, -494f, 988f, 512f))))) + vec4<f32>(-1094f, -1274f, _wgslsmith_f_op_f32(155f * 950f), _wgslsmith_f_op_f32(f32(-1f) * -1614f))))));
    global4 = var_1.x;
    let var_2 = vec2<bool>(true, true);
    var_0 = !all(vec2<bool>(all(select(vec3<bool>(var_2.x, true, true), vec3<bool>(true, false, var_2.x), true)), any(vec4<bool>(false, var_2.x, var_2.x, false))));
    return _wgslsmith_add_i32(firstLeadingBit(firstLeadingBit(_wgslsmith_clamp_i32(u_input.a, u_input.a, 1i))), abs(firstLeadingBit(1i)));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: vec3<bool>) -> f32 {
    var var_0 = Struct_5(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1205f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(121f, arg_0)))))), arg_2.x, ~(~arg_1), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-237f, 1027f, arg_0, 1283f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, 720f, arg_0, arg_0) - vec4<f32>(arg_0, 1000f, arg_0, 487f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0, 758f, arg_0))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -268f, arg_0) * vec3<f32>(arg_0, -493f, 1613f))), 31300u, -764f)));
    var var_1 = 903f;
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(~min(var_0.d.a.c, arg_1) & 55593u), arg_1, ~select(~0u, 43115u, any(!vec2<bool>(false, arg_2.x)))), 17u)];
    let var_3 = _wgslsmith_f_op_f32(sign(var_0.d.a.d));
    var var_4 = global2[_wgslsmith_index_u32(18930u, 17u)];
    return _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1178f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1299f - -1000f)))), _wgslsmith_f_op_f32(var_4.b.a.d + -1414f), all(vec2<bool>(false, false))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: vec3<u32>) -> vec4<i32> {
    let var_0 = u_input.a ^ u_input.a;
    let var_1 = ~vec3<u32>(_wgslsmith_mult_u32(arg_0.c, ~1u), arg_3.x, ~arg_3.x);
    let var_2 = -2147483647i;
    var var_3 = _wgslsmith_f_op_vec2_f32(select(arg_2, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -766f), -270f), !all(vec3<bool>(true, true, true))));
    return vec4<i32>(u_input.a, -var_2, _wgslsmith_mult_i32(_wgslsmith_add_i32(var_0 >> (0u % 32u), -5771i) << (var_1.x % 32u), u_input.a), _wgslsmith_dot_vec3_i32((vec3<i32>(u_input.a, u_input.a, 15556i) << (~vec3<u32>(89229u, arg_1.c, 0u) % vec3<u32>(32u))) | (_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, -56655i, 34948i), vec3<i32>(var_2, u_input.a, -12662i)) ^ _wgslsmith_mod_vec3_i32(vec3<i32>(-25694i, var_2, var_0), vec3<i32>(-14567i, 23147i, 19551i))), vec3<i32>(-1i, var_2, u_input.a >> (~var_1.x % 32u))));
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: Struct_5) -> vec3<u32> {
    let var_0 = func_4(arg_2.d.a, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_2.a, -572f), _wgslsmith_f_op_f32(sign(arg_0)), arg_2.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + 190f)), _wgslsmith_f_op_f32(316f * _wgslsmith_f_op_f32(func_3(1684f, 1u, vec3<bool>(false, true, arg_2.b)))), -803f), _wgslsmith_f_op_vec3_f32(abs(arg_2.d.a.b)), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(arg_2.d.a.c, ~0u, ~60809u), ~arg_2.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1499f * _wgslsmith_f_op_f32(-arg_0)))), arg_2.d.a.b.yz, _wgslsmith_add_vec3_u32(vec3<u32>(firstTrailingBit(~55897u), arg_2.c, arg_2.c), ~(~vec3<u32>(94739u, arg_2.d.a.c, 53930u))));
    var var_1 = _wgslsmith_dot_vec4_i32(-(max(firstTrailingBit(vec4<i32>(arg_1, 103i, 0i, 13687i)), _wgslsmith_add_vec4_i32(global1[_wgslsmith_index_u32(arg_2.d.a.c, 8u)], vec4<i32>(1i, var_0.x, u_input.a, var_0.x))) >> (~vec4<u32>(48489u, arg_2.d.a.c, 7150u, arg_2.c) % vec4<u32>(32u))), -abs(var_0));
    let var_2 = Struct_5(-162f, arg_2.b, firstLeadingBit(abs(_wgslsmith_sub_u32(arg_2.c, _wgslsmith_div_u32(3433u, 12372u)))), arg_2.d);
    global1 = array<vec4<i32>, 8>();
    return ~(~vec3<u32>(~var_2.d.a.c, 1u, 4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(func_1(), -355i);
    global1 = array<vec4<i32>, 8>();
    global0 = array<vec4<i32>, 22>();
    global0 = array<vec4<i32>, 22>();
    let var_1 = ~vec4<i32>(-var_0.x, ~(~30664i), _wgslsmith_mod_i32(~u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, var_0.x), vec2<i32>(var_0.x, -87672i))), i32(-1i) * -2147483647i);
    global3 = ~((~(~53127u) << (~abs(4294967295u) % 32u)) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, reverseBits(0u)), func_2(_wgslsmith_f_op_f32(-286f + 1000f), u_input.a, Struct_5(1113f, true, 1u, Struct_2(Struct_1(vec4<f32>(1226f, -1617f, -1038f, 862f), vec3<f32>(1162f, 568f, -1804f), 1u, -2842f))))));
    let var_2 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-449f * _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(f32(-1f) * -1327f), 23878u, vec3<bool>(true, false, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(614f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1157f + -1285f) - _wgslsmith_div_f32(-903f, -445f))), 1400f, _wgslsmith_f_op_f32(ceil(-192f))), vec3<f32>(-115f, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -556f) - -104f), 0u, vec3<bool>(false, true, all(vec3<bool>(true, false, false))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(114f - _wgslsmith_f_op_f32(f32(-1f) * -453f)), -465f))), ~_wgslsmith_add_u32(select(~0u, ~4294967295u, any(vec3<bool>(false, false, true))), 0u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -434f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_dot_vec3_i32(var_1.yxw, -(vec3<i32>(u_input.a, u_input.a, var_1.x) & vec3<i32>(-24656i, var_1.x, var_0.x))), i32(-1i) * -1i), u_input.a, ~vec3<u32>(var_2.c, ~13280u ^ ~var_2.c, 4294967295u), abs(-1i), _wgslsmith_mod_u32(~var_2.c << ((var_2.c << (_wgslsmith_sub_u32(303u, var_2.c) % 32u)) % 32u), ~(65991u >> (1u % 32u))));
}

