struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 30> = array<vec2<i32>, 30>(vec2<i32>(-11745i, -4713i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(2147483647i, 33736i), vec2<i32>(28170i, i32(-2147483648)), vec2<i32>(i32(-2147483648), -44535i), vec2<i32>(-52563i, 36342i), vec2<i32>(56096i, 4911i), vec2<i32>(2147483647i, -17717i), vec2<i32>(2147483647i, 40740i), vec2<i32>(6871i, 13875i), vec2<i32>(4570i, 81518i), vec2<i32>(2147483647i, -58954i), vec2<i32>(-1i, 22272i), vec2<i32>(0i, 8988i), vec2<i32>(1i, 2147483647i), vec2<i32>(1i, -1i), vec2<i32>(1i, 2147483647i), vec2<i32>(1i, -24175i), vec2<i32>(1i, -1i), vec2<i32>(i32(-2147483648), 966i), vec2<i32>(-25755i, 2147483647i), vec2<i32>(-43967i, -23915i), vec2<i32>(0i, 15086i), vec2<i32>(-64142i, 35164i), vec2<i32>(-1i, 2147483647i), vec2<i32>(9858i, 18366i), vec2<i32>(-34074i, 33066i), vec2<i32>(-40103i, 1i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(7571i, 1i));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: vec4<u32>) -> bool {
    return ~(-2147483647i) < _wgslsmith_sub_i32(-(~_wgslsmith_div_i32(arg_1.a.a, -27993i)), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(~vec3<i32>(arg_1.a.a, -38401i, arg_1.a.a), vec3<i32>(arg_1.a.a, -2147483647i, 2147483647i)), vec3<i32>(arg_1.a.a >> (u_input.b.x % 32u), ~arg_1.a.a, -arg_1.a.a)));
}

fn func_2() -> vec4<i32> {
    global0 = array<vec2<i32>, 30>();
    global0 = array<vec2<i32>, 30>();
    let var_0 = vec4<bool>(true, select(_wgslsmith_clamp_i32(2147483647i, -11835i, 2430i) >= 1i, true, true), false, !all(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false))));
    global0 = array<vec2<i32>, 30>();
    global0 = array<vec2<i32>, 30>();
    return select(vec4<i32>(abs(i32(-1i) * -2147483647i), 2147483647i, ~0i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, i32(-1i) * -1i, firstLeadingBit(81484i), -24308i), vec4<i32>(~45489i, 2147483647i, -1i, -21480i))), _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(~59299i, ~10915i), -abs(1i), -(~(-922i)), 37037i), vec4<i32>(1i, 1i, 1i, 1i), -vec4<i32>(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 122285i, 19213i), vec3<i32>(0i, 1i, 0i)), select(1i, 2147483647i, var_0.x), -606i)), select(vec4<bool>(true, true, !(!var_0.x), true), !vec4<bool>(select(var_0.x, var_0.x, false), var_0.x, !var_0.x, !var_0.x), func_3(u_input.a, Struct_2(Struct_1(2147483647i)), u_input.b << (vec4<u32>(u_input.a, u_input.a, 25047u, 1u) % vec4<u32>(32u))) == !var_0.x));
}

fn func_4(arg_0: i32, arg_1: vec4<i32>, arg_2: Struct_2) -> Struct_2 {
    global0 = array<vec2<i32>, 30>();
    var var_0 = any(vec2<bool>(all(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true))), !select(true, true, false)));
    let var_1 = Struct_1(~(-2147483647i));
    var var_2 = arg_2.a;
    global0 = array<vec2<i32>, 30>();
    return arg_2;
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec2<i32>) -> Struct_2 {
    var var_0 = arg_1;
    let var_1 = vec2<bool>(true, select(true, true != any(vec3<bool>(true, true, true)), !all(vec2<bool>(true, true))));
    var var_2 = func_4(var_0.a, -min(vec4<i32>(~var_0.a, _wgslsmith_div_i32(arg_1.a, arg_1.a), arg_2.x, var_0.a), func_2()), Struct_2(arg_1));
    var_2 = func_4(-5634i, ~vec4<i32>(-(~var_0.a), -70240i, ~_wgslsmith_sub_i32(-62147i, var_0.a), arg_2.x ^ _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.a, -2147483647i, var_0.a), vec3<i32>(2147483647i, -2147483647i, arg_2.x))), func_4(-_wgslsmith_dot_vec2_i32(arg_2, arg_2), ~vec4<i32>(0i, var_2.a.a, var_0.a, arg_2.x) ^ min(vec4<i32>(var_0.a, var_0.a, 6673i, 48761i), vec4<i32>(arg_1.a, -1i, var_2.a.a, -28028i)), func_4(1i, max(vec4<i32>(arg_2.x, var_2.a.a, 0i, arg_2.x), vec4<i32>(var_0.a, -2147483647i, -11991i, arg_2.x)) >> (vec4<u32>(u_input.a, u_input.a, arg_0.x, u_input.b.x) % vec4<u32>(32u)), Struct_2(var_2.a))));
    var_0 = Struct_1(_wgslsmith_add_i32(9940i, var_2.a.a));
    return Struct_2(arg_1);
}

fn func_5(arg_0: Struct_2, arg_1: vec2<bool>) -> f32 {
    var var_0 = arg_0.a;
    global0 = array<vec2<i32>, 30>();
    var var_1 = _wgslsmith_sub_u32(21975u, u_input.a);
    var var_2 = arg_0.a;
    var var_3 = u_input.a;
    return 496f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 30>();
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 311f, 481f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(304f, -1783f, -2626f) * vec3<f32>(-1019f, 1626f, 238f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1014f, 1082f, -312f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1217f, 1074f, -364f) * vec3<f32>(-1406f, 1000f, 909f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-445f, 168f, -128f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2054f, 564f, -415f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-223f, 448f, -515f)))))));
    global0 = array<vec2<i32>, 30>();
    var_0 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1469f, var_0.x, _wgslsmith_f_op_f32(func_5(func_1(u_input.b, Struct_1(-48031i), ~global0[_wgslsmith_index_u32(u_input.a, 30u)]), vec2<bool>(true, true))))));
    global0 = array<vec2<i32>, 30>();
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 1064f, -1081f))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.x, var_0.x, var_0.x))), select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1044f, var_0.x, var_0.x) * vec3<f32>(142f, var_0.x, 809f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -161f, 1000f))))), vec3<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1435f, 300f)) * _wgslsmith_f_op_f32(var_0.x + 1501f)), _wgslsmith_f_op_f32(floor(var_0.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 196f, -258f, _wgslsmith_f_op_f32(trunc(var_0.x))))), -257f, firstLeadingBit(1i), ~min(max(0u, 5655u) << (u_input.a % 32u), 1u));
}

