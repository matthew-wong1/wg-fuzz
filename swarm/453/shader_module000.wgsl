struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 27>;

var<private> global1: vec3<f32> = vec3<f32>(-142f, -762f, 492f);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3() -> f32 {
    var var_0 = !select(!all(vec3<bool>(true, true, true)), true, true);
    global0 = array<vec2<i32>, 27>();
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, global1.x))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global1.x * -988f), _wgslsmith_f_op_f32(-898f + 252f), _wgslsmith_f_op_f32(f32(-1f) * -1530f)) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1.x, global1.x, -928f))))));
    var_0 = true;
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1222f, 335f, 772f, 520f) - vec4<f32>(1097f, global1.x, 664f, var_1.x))) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.x, 1409f, 300f, -412f))))) * vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1051f + 1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1526f)), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(max(var_1.x, _wgslsmith_f_op_f32(abs(-1607f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - global1.x)))));
    return _wgslsmith_f_op_f32(336f * 783f);
}

fn func_4(arg_0: f32, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: i32) -> vec3<bool> {
    global1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(662f, -479f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(3042f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, global1.x, global1.x) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, arg_1.x, -240f) + vec3<f32>(-493f, 946f, 553f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, _wgslsmith_div_f32(arg_0, global1.x), _wgslsmith_f_op_f32(max(arg_0, 360f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1436f, -1580f, -802f)))), !(!any(arg_2.b.wy))));
    global1 = _wgslsmith_div_vec3_f32(vec3<f32>(1171f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1982f + arg_1.x)), 461f), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1.x, arg_0, global1.x))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1631f, global1.x, arg_1.x))))))));
    global1 = vec3<f32>(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.x, global1.x)) + _wgslsmith_f_op_f32(f32(-1f) * -1405f)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(554f + -959f), _wgslsmith_f_op_f32(f32(-1f) * -1345f), true))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -873f)))), global1.x);
    let var_0 = arg_2.b.yw;
    let var_1 = false;
    return vec3<bool>(_wgslsmith_dot_vec2_u32(~(~arg_2.a.ww), vec2<u32>(arg_2.a.x, arg_2.a.x & 69328u)) != arg_2.a.x, true, true);
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: vec4<bool>) -> u32 {
    global0 = array<vec2<i32>, 27>();
    let var_0 = arg_3.x;
    let var_1 = -1487f;
    global1 = vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1559f))))), _wgslsmith_f_op_f32(f32(-1f) * -1385f));
    global1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-392f, var_1, _wgslsmith_f_op_f32(floor(arg_1.x))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(global1.x, _wgslsmith_f_op_f32(490f - 1516f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)), 684f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, global1.x, 187f) - vec3<f32>(139f, arg_1.x, global1.x)) - _wgslsmith_f_op_vec3_f32(-arg_1)))), func_4(_wgslsmith_f_op_f32(func_3()), global1.zz, Struct_1(vec4<u32>(~4294967295u, firstLeadingBit(arg_0.a.x), firstTrailingBit(1u), 44722u), arg_0.b), select(~(-1i), 27127i >> (~arg_0.a.x % 32u), !all(vec2<bool>(arg_3.x, arg_2.b.x))))));
    return 38140u;
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -391f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) - -1631f), _wgslsmith_f_op_f32(f32(-1f) * -657f)))));
    var var_1 = abs(vec2<i32>(1329i, select(u_input.a.x, -u_input.a.x, all(arg_0.b.wzy)))) | abs(global0[_wgslsmith_index_u32(13924u, 27u)]);
    var_1 = ~global0[_wgslsmith_index_u32(firstLeadingBit(~(~(~45686u))), 27u)];
    var_1 = min(global0[_wgslsmith_index_u32(arg_0.a.x, 27u)], select(_wgslsmith_sub_vec2_i32(u_input.a, global0[_wgslsmith_index_u32(98156u, 27u)]), u_input.a, all(vec4<bool>(!arg_0.b.x, true, !arg_0.b.x, true && arg_0.b.x))));
    return Struct_1(~arg_0.a, arg_0.b);
}

fn func_1() -> u32 {
    var var_0 = Struct_1(~abs(_wgslsmith_mult_vec4_u32(vec4<u32>(31958u, 0u, 1u, 5899u), vec4<u32>(1196u, 4294967295u, 0u, 1u))), !vec4<bool>(any(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false))), true, false, true));
    var var_1 = vec3<f32>(-1734f, global1.x, -595f);
    var var_2 = func_5(Struct_1(vec4<u32>(var_0.a.x, max(var_0.a.x, _wgslsmith_dot_vec2_u32(var_0.a.wy, vec2<u32>(var_0.a.x, var_0.a.x))), abs(~var_0.a.x), _wgslsmith_sub_u32(func_2(Struct_1(var_0.a, var_0.b), vec3<f32>(global1.x, 300f, var_1.x), Struct_1(vec4<u32>(2431u, var_0.a.x, var_0.a.x, 87616u), var_0.b), var_0.b), ~0u)), select(!vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x), select(var_0.b, select(var_0.b, var_0.b, vec4<bool>(true, var_0.b.x, true, false)), var_0.b.x), var_0.b)));
    let var_3 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)) - var_1.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, 1000f))))), func_5(Struct_1(var_2.a, var_2.b)), ~_wgslsmith_div_i32(-1i, -1i));
    var var_4 = Struct_1(~vec4<u32>(64470u, func_2(func_5(Struct_1(var_0.a, var_0.b)), vec3<f32>(var_1.x, 530f, -243f), func_5(Struct_1(vec4<u32>(var_2.a.x, 4294967295u, var_0.a.x, 50578u), vec4<bool>(var_0.b.x, var_2.b.x, true, true))), select(var_2.b, vec4<bool>(var_0.b.x, var_0.b.x, var_2.b.x, var_2.b.x), var_0.b)), ~1u, ~var_0.a.x | 1u), vec4<bool>(false, false, true, select(var_2.b.x, false | (var_2.b.x != false), var_3.x)));
    return _wgslsmith_add_u32(_wgslsmith_sub_u32(abs(var_4.a.x), ~(~0u)), 52921u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec3<f32>(198f, _wgslsmith_f_op_f32(floor(503f)), global1.x);
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.x, _wgslsmith_f_op_f32(-global1.x))))), global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(1000f, -604f))))) - _wgslsmith_f_op_f32(step(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1003f * 1217f))))));
    var var_1 = vec3<f32>(440f, global1.x, -107f);
    let var_2 = Struct_1(~vec4<u32>(abs(_wgslsmith_mod_u32(4526u, 12525u)), ~func_1(), 40129u, ~min(0u, 56718u)), !(!(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(i32(-1i) * -23664i, _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, 0i), firstLeadingBit(-20810i))), _wgslsmith_add_vec3_i32(max(~vec3<i32>(u_input.a.x, 20970i, u_input.a.x), -vec3<i32>(u_input.a.x, u_input.a.x, 25764i)), _wgslsmith_mult_vec3_i32(abs(vec3<i32>(u_input.a.x, 0i, 12515i)), ~vec3<i32>(67072i, -2147483647i, 26932i)))));
}

