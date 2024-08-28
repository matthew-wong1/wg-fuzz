struct Struct_1 {
    a: vec2<i32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<vec3<f32>, 3>;

var<private> global2: i32 = 0i;

var<private> global3: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(vec2<i32>(i32(-2147483648), -1i), vec4<bool>(true, false, false, false)), Struct_1(vec2<i32>(17198i, 1i), vec4<bool>(false, false, true, true)), Struct_1(vec2<i32>(33116i, 26520i), vec4<bool>(true, true, false, true)), Struct_1(vec2<i32>(-51989i, 47859i), vec4<bool>(true, true, false, false)), Struct_1(vec2<i32>(17990i, 1i), vec4<bool>(true, true, true, false)), Struct_1(vec2<i32>(27487i, -4681i), vec4<bool>(false, false, true, true)), Struct_1(vec2<i32>(2147483647i, 0i), vec4<bool>(true, false, false, false)), Struct_1(vec2<i32>(0i, 1i), vec4<bool>(true, false, true, false)), Struct_1(vec2<i32>(2147483647i, 49601i), vec4<bool>(true, false, true, false)), Struct_1(vec2<i32>(1677i, i32(-2147483648)), vec4<bool>(true, true, false, true)), Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), vec4<bool>(false, false, false, true)), Struct_1(vec2<i32>(-25939i, -20574i), vec4<bool>(true, true, true, true)), Struct_1(vec2<i32>(-61136i, 0i), vec4<bool>(false, false, true, false)), Struct_1(vec2<i32>(1i, -54688i), vec4<bool>(false, true, false, true)), Struct_1(vec2<i32>(0i, -22889i), vec4<bool>(false, true, true, false)));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: bool) -> bool {
    var var_0 = Struct_1(vec2<i32>(~_wgslsmith_div_i32(-1i, -u_input.b), ~min(-63088i, firstTrailingBit(1335i))), !(!(!(!vec4<bool>(arg_1, arg_1, arg_1, arg_1)))));
    let var_1 = -555f;
    global1 = array<vec3<f32>, 3>();
    var var_2 = var_0.b.yww;
    var var_3 = true;
    return arg_1;
}

fn func_2(arg_0: vec2<f32>) -> bool {
    global0 = func_3(_wgslsmith_mult_u32(37407u, ~select(4294967295u, max(61409u, 1u), false)), true);
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - arg_0.x)))));
    let var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1457f, var_0, true)), _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(-762f * 380f))), _wgslsmith_f_op_f32(arg_0.x - 2080f)), vec2<f32>(_wgslsmith_f_op_f32(-var_0), arg_0.x));
    let var_2 = Struct_1(_wgslsmith_mod_vec2_i32(~select(abs(vec2<i32>(u_input.b, -2147483647i)), abs(vec2<i32>(-2147483647i, -30284i)), vec2<bool>(true, true)), -vec2<i32>(-u_input.b, u_input.b)), !vec4<bool>(true, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(-2147483647i, -1i, -1i)) <= 14109i, 1u != _wgslsmith_sub_u32(u_input.a.x, u_input.c), any(select(vec2<bool>(false, false), vec2<bool>(true, false), true))));
    var var_3 = ~firstTrailingBit(u_input.a);
    return var_2.b.x;
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: vec2<f32>) -> Struct_1 {
    var var_0 = select(!(!arg_0.b), !vec4<bool>(true, _wgslsmith_f_op_f32(-1000f - arg_1) == 1406f, func_2(vec2<f32>(arg_2.x, arg_1)), true), any(!arg_0.b.wwx));
    let var_1 = firstLeadingBit(-abs(arg_0.a >> (vec2<u32>(u_input.a.x, u_input.d) % vec2<u32>(32u))));
    var var_2 = Struct_1(_wgslsmith_add_vec2_i32(vec2<i32>(-27615i, firstLeadingBit(~(-2147483647i))), vec2<i32>(1i, -16347i)), arg_0.b);
    var var_3 = _wgslsmith_f_op_f32(-arg_1);
    global0 = false;
    return global3[_wgslsmith_index_u32(17730u, 15u)];
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    global2 = -2147483647i;
    global2 = arg_2.a.x;
    var var_0 = func_1(global3[_wgslsmith_index_u32(1u, 15u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1849f, _wgslsmith_f_op_f32(-814f * -2002f))) - _wgslsmith_f_op_f32(max(-914f, _wgslsmith_div_f32(636f, -1120f)))) + -1250f), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-823f, 296f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(168f, -1000f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1999f, -1268f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(665f, 1673f), vec2<f32>(-1357f, -453f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 952f) - vec2<f32>(176f, -563f)))))));
    var var_1 = ~u_input.d;
    global1 = array<vec3<f32>, 3>();
    return _wgslsmith_f_op_f32(-534f + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -670f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-698f, -818f)) * _wgslsmith_f_op_f32(func_4(Struct_1(vec2<i32>(u_input.b, u_input.b), vec4<bool>(false, true, true, false)), func_1(global3[_wgslsmith_index_u32(u_input.c, 15u)], 755f, vec2<f32>(-1736f, -1214f)), Struct_1(vec2<i32>(u_input.b, u_input.b), vec4<bool>(false, false, true, false)))))) <= -1054f;
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-282f, 1429f, -1999f, 1020f))))) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(min(-193f, _wgslsmith_div_f32(-1137f, -1000f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-548f, 299f)), -885f)), -131f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-314f, -1423f, true))))))));
    var_0 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-485f - var_0.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(602f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(306f - _wgslsmith_f_op_f32(-var_0.x)))), 332f, var_0.x)));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-127f, var_0.x, var_0.x, var_0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1248f, var_0.x, var_0.x, 533f)), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.x, var_0.x, var_0.x, -2702f))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, 283f, 1527f, -784f))), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), true)))))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(-var_0.x), 1000f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -1342f, var_0.x)) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.x, -751f, 1322f, -1191f), vec4<f32>(var_0.x, var_0.x, -1070f, 1686f))))))));
    global0 = any(vec2<bool>(true, true));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(var_0.x, var_0.x), _wgslsmith_f_op_f32(var_0.x * -190f), _wgslsmith_f_op_f32(f32(-1f) * -1032f), _wgslsmith_f_op_f32(var_0.x * var_0.x)) + vec4<f32>(_wgslsmith_f_op_f32(select(var_0.x, -339f, true)), -359f, _wgslsmith_f_op_f32(-1330f - 972f), 751f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-658f, var_0.x, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x))))));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -291f);
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_1, _wgslsmith_f_op_f32(-1347f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(var_0.x, var_0.x))))), 1170f));
    global2 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(var_1 - 1076f), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(564f * var_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1)))))));
}

