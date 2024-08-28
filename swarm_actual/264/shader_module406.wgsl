struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 9>;

var<private> global1: array<vec3<f32>, 2>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1) -> f32 {
    var var_0 = ~reverseBits(arg_1.b.x ^ 1u);
    var var_1 = firstLeadingBit(u_input.b.xzw);
    let var_2 = any(arg_0.yy);
    var var_3 = _wgslsmith_clamp_u32(45137u, arg_1.b.x, _wgslsmith_dot_vec3_u32(arg_1.b, max(~(~vec3<u32>(37206u, arg_1.b.x, u_input.b.x)), u_input.b.ywz)));
    global1 = array<vec3<f32>, 2>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1348f))) * _wgslsmith_f_op_f32(-arg_1.a.x));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-362f + -1730f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-352f + -415f))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-121f * _wgslsmith_f_op_f32(sign(1261f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(777f))))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1089f)))));
    let var_1 = Struct_1(vec2<f32>(-204f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(var_0))))), u_input.b.yxx, -(vec2<i32>(-1i) * -_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(1i, u_input.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(695f, var_0)))));
    var var_2 = global0[_wgslsmith_index_u32(~(~1u), 9u)];
    var_2 = vec4<bool>(!var_2.x, true, (firstLeadingBit(0i) ^ _wgslsmith_add_i32(min(u_input.a.x, -13929i), var_1.c.x)) >= 1i, any(vec2<bool>(var_2.x, var_2.x)));
    var_2 = !(!(!select(vec4<bool>(var_2.x, var_2.x, var_2.x, true), !vec4<bool>(var_2.x, var_2.x, var_2.x, true), global0[_wgslsmith_index_u32(0u, 9u)])));
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-960f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x + var_0)))), u_input.b.wxy, vec2<i32>(0i, -_wgslsmith_mult_i32(firstTrailingBit(var_1.c.x), u_input.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(var_2.ywx, var_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(717f)) * _wgslsmith_f_op_f32(var_0 - 600f)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> vec2<u32> {
    var var_0 = arg_2.a;
    var var_1 = 75407u;
    let var_2 = Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1542f - 1157f) * 2218f), _wgslsmith_f_op_f32(336f - -1076f)), arg_1.a), ~arg_1.b, _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(abs(arg_2.c), select(vec2<i32>(arg_2.c.x, -2147483647i), vec2<i32>(1i, arg_2.c.x), vec2<bool>(true, false))), func_2().c) << (~arg_2.b.yx % vec2<u32>(32u)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-360f - _wgslsmith_f_op_f32(trunc(633f))))))));
    let var_3 = firstTrailingBit(min(firstLeadingBit(~vec4<i32>(u_input.a.x, var_2.c.x, 1i, 2147483647i)), ~min(vec4<i32>(arg_2.c.x, arg_0.c.x, 1i, -11311i), vec4<i32>(arg_2.c.x, var_2.c.x, arg_1.c.x, -11921i))) >> (firstLeadingBit(u_input.b) % vec4<u32>(32u)));
    var_1 = _wgslsmith_clamp_u32(var_2.b.x, _wgslsmith_add_u32(~arg_2.b.x, _wgslsmith_div_u32(var_2.b.x, 11688u)), 4294967295u);
    return ~((arg_2.b.zz & _wgslsmith_mult_vec2_u32(u_input.b.zy, u_input.b.xy | arg_0.b.zy)) | vec2<u32>(func_2().b.x, ~(55294u ^ u_input.b.x)));
}

fn func_1() -> bool {
    global0 = array<vec4<bool>, 9>();
    var var_0 = _wgslsmith_mod_vec2_u32(u_input.b.yz, min(vec2<u32>(u_input.b.x, u_input.b.x), ~func_4(func_2(), Struct_1(vec2<f32>(730f, -430f), u_input.b.zyw, u_input.a.yx, -1912f), func_2(), 35083i)));
    global1 = array<vec3<f32>, 2>();
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1796f, 726f, _wgslsmith_f_op_f32(f32(-1f) * -468f), _wgslsmith_f_op_f32(f32(-1f) * -947f)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(661f, -1436f, -880f, 221f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-102f, 273f, 1098f, 1066f))))))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(458f, 292f, -2222f, 368f) + vec4<f32>(547f, 118f, 680f, 465f)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, -343f, -862f, 1818f))))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(abs(var_1.yyy));
    return all(select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), !select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true)), vec2<bool>(true, all(vec3<bool>(true, false, false)) & true), all(vec2<bool>(select(true, false, false), true))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<f32>, 2>();
    let var_0 = !(!vec3<bool>(true & func_1(), true, all(vec4<bool>(true, true, true, true))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-842f, _wgslsmith_f_op_f32(576f * 822f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-829f))))) <= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2().a.x * _wgslsmith_f_op_f32(1548f + -290f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-205f)) - _wgslsmith_f_op_f32(ceil(1415f))))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), u_input.b.yxw, u_input.a.xx, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1397f - -563f), 125f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    global1 = array<vec3<f32>, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, _wgslsmith_f_op_vec2_f32(ceil(var_2.a)), ~vec3<u32>(4294967295u, var_2.b.x, ~u_input.b.x), var_2.b.x);
}

