struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 29>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    var var_0 = Struct_3(Struct_2(arg_2));
    var var_1 = u_input.c.zw;
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1630f))) + _wgslsmith_f_op_f32(-417f - _wgslsmith_f_op_f32(sign(373f)))), _wgslsmith_f_op_f32(floor(912f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(331f, -432f), _wgslsmith_f_op_f32(ceil(1362f))) - 1f)));
    var_0 = Struct_3(var_0.a);
    global0 = array<vec2<bool>, 29>();
    return _wgslsmith_mult_u32(~var_1.x, ~_wgslsmith_add_u32(arg_1.a, ~(~80892u)));
}

fn func_2(arg_0: i32, arg_1: bool) -> Struct_2 {
    global0 = array<vec2<bool>, 29>();
    global0 = array<vec2<bool>, 29>();
    var var_0 = !all(!global0[_wgslsmith_index_u32(u_input.a, 29u)]);
    var_0 = !arg_1;
    var var_1 = vec2<u32>(~func_3(Struct_1(u_input.b), Struct_1(4294967295u), Struct_1(20330u >> (u_input.b % 32u))), u_input.b);
    return Struct_2(Struct_1(~_wgslsmith_dot_vec2_u32(u_input.c.wz, u_input.c.zz) << (u_input.a % 32u)));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: vec3<u32>) -> vec4<f32> {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(506f + -350f), _wgslsmith_div_f32(-713f, 479f))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1412f, 362f), vec2<f32>(310f, 273f), global0[_wgslsmith_index_u32(15160u, 29u)]))), vec2<f32>(_wgslsmith_div_f32(1000f, -1048f), _wgslsmith_f_op_f32(1202f - -515f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(522f, -569f)))))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(ceil(-584f)), _wgslsmith_f_op_f32(721f - 823f)), vec2<f32>(_wgslsmith_f_op_f32(ceil(180f)), _wgslsmith_f_op_f32(ceil(518f))), !select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false))))));
    var_0 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(123f * _wgslsmith_f_op_f32(-var_0.x)))));
    global0 = array<vec2<bool>, 29>();
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(1145f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - _wgslsmith_div_f32(363f, -753f)))));
    global0 = array<vec2<bool>, 29>();
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-523f, var_0.x, var_0.x, -960f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, 1000f, -1263f) + vec4<f32>(-1644f, var_0.x, var_0.x, var_0.x))))))));
}

fn func_1() -> vec3<bool> {
    let var_0 = Struct_1(31520u);
    global0 = array<vec2<bool>, 29>();
    let var_1 = max(_wgslsmith_clamp_i32(_wgslsmith_div_i32(u_input.d, u_input.d), countOneBits(~(-1i)), select(_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.d, u_input.d, u_input.d), vec3<i32>(u_input.d, -2147483647i, 2147483647i)), _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.d, 8982i), firstTrailingBit(vec2<i32>(u_input.d, u_input.d))), false)), u_input.d);
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(func_4(select(min(vec3<i32>(-1i, var_1, 2147483647i), vec3<i32>(var_1, -16460i, 0i)), _wgslsmith_add_vec3_i32(vec3<i32>(-12686i, u_input.d, u_input.d), vec3<i32>(u_input.d, 22689i, var_1)), true), func_2(30825i, true), ~vec3<u32>(4294967295u, u_input.a, 62314u))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)));
    let var_3 = _wgslsmith_f_op_f32(var_2.x * -528f);
    return vec3<bool>(false, ~var_0.a <= min(7534u, _wgslsmith_div_u32(_wgslsmith_clamp_u32(u_input.a, var_0.a, var_0.a), _wgslsmith_dot_vec2_u32(u_input.c.xy, u_input.c.zy))), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(4294967295u);
    var var_1 = select(select(vec4<bool>(any(vec3<bool>(true, true, false)), any(vec4<bool>(false, true, false, false)) && true, true, true), vec4<bool>(~1u < ~u_input.c.x, true, false, any(global0[_wgslsmith_index_u32(94952u, 29u)]) || true), select(any(vec4<bool>(true, true, false, true)) && true, select(true, false, true), true)), !vec4<bool>(all(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), true)), true, !(u_input.a == u_input.c.x), all(global0[_wgslsmith_index_u32(u_input.b, 29u)])), abs(u_input.a >> (u_input.a % 32u)) == var_0.a);
    var var_2 = !select(select(vec3<bool>(select(var_1.x, true, true), true, all(var_1.wyz)), !func_1(), func_1().x || true), func_1(), vec3<bool>(any(global0[_wgslsmith_index_u32(0u, 29u)]), reverseBits(u_input.d) < ~1547i, any(var_1.yw) == true));
    var var_3 = Struct_3(Struct_2(func_2(_wgslsmith_sub_i32(~u_input.d, 75384i), all(global0[_wgslsmith_index_u32(var_0.a, 29u)])).a));
    let var_4 = var_1.x;
    let var_5 = var_3.a;
    var_2 = var_1.yyz;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(u_input.d, 0i), vec4<i32>(_wgslsmith_add_i32(-20936i, select(46698i, -778i, var_1.x) << (27586u % 32u)), ~(-(i32(-1i) * -65240i)), u_input.d, ~1i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-136f, -586f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -350f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(488f, 1211f), _wgslsmith_f_op_f32(f32(-1f) * -654f))))));
}

