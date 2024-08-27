struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<u32>,
    c: vec2<f32>,
    d: vec2<i32>,
}

struct Struct_5 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: i32,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, false);

var<private> global1: array<vec4<bool>, 1>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-203f)), _wgslsmith_f_op_f32(-745f - 1144f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1119f) - -1330f) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(243f + -735f), _wgslsmith_f_op_f32(-1590f - 1753f))))));
    global0 = select(!vec3<bool>(arg_0.c, arg_0.c, arg_0.c), select(vec3<bool>(!(!global0.x), !(-1709i != u_input.a.x), any(vec3<bool>(false, false, true))), vec3<bool>(false, true, all(global1[_wgslsmith_index_u32(firstLeadingBit(arg_0.a.x), 1u)])), !(all(vec3<bool>(false, true, arg_0.c)) | true)), select(select(!vec3<bool>(false, arg_0.c, global0.x), !(!vec3<bool>(arg_0.c, arg_0.c, false)), select(vec3<bool>(arg_0.c, arg_0.c, false), vec3<bool>(false, true, global0.x), vec3<bool>(true, arg_0.c, false))), vec3<bool>(arg_0.c, !arg_0.c || false, true), !select(vec3<bool>(false, true, global0.x), !vec3<bool>(global0.x, global0.x, arg_0.c), select(vec3<bool>(true, false, true), vec3<bool>(false, false, arg_0.c), global0.x))));
    let var_1 = Struct_2(select(global1[_wgslsmith_index_u32(8756u, 1u)], !select(global1[_wgslsmith_index_u32(min(arg_0.a.x, 13284u), 1u)], vec4<bool>(global0.x, false, true, true), vec4<bool>(false, true, global0.x, false)), !(!vec4<bool>(arg_0.c, true, true, false))));
    global1 = array<vec4<bool>, 1>();
    let var_2 = reverseBits(_wgslsmith_div_vec4_u32(~(~firstTrailingBit(vec4<u32>(78673u, arg_0.a.x, arg_0.a.x, 2523u))), abs(~(vec4<u32>(arg_0.a.x, 4294967295u, 0u, arg_0.a.x) ^ vec4<u32>(35099u, 485u, 23924u, arg_0.a.x)))));
    return var_0;
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: u32) -> vec3<f32> {
    global1 = array<vec4<bool>, 1>();
    var var_0 = Struct_1(_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(~select(vec3<u32>(12349u, arg_2, arg_2), vec3<u32>(1u, 0u, 69212u), false), vec3<u32>(arg_2, min(33646u, arg_2), arg_2)), _wgslsmith_div_vec3_u32(abs(~vec3<u32>(1u, arg_2, 4294967295u)), _wgslsmith_div_vec3_u32(vec3<u32>(arg_2, 34005u, 6278u), vec3<u32>(0u, arg_2, arg_2)))), -2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-630f)) + 169f)) < _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(vec3<u32>(arg_2, 0u, arg_2), -2147483647i, true)))))));
    global1 = array<vec4<bool>, 1>();
    let var_1 = arg_1;
    global1 = array<vec4<bool>, 1>();
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-149f - _wgslsmith_f_op_f32(693f + -193f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1589f, 704f, var_0.c)) - _wgslsmith_f_op_f32(-612f - -1973f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(1000f, 276f, false))))), -765f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-526f, -871f, 387f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1398f, 1314f, -270f))));
}

fn func_1() -> vec3<f32> {
    var var_0 = -324f;
    var_0 = -320f;
    var_0 = -1186f;
    let var_1 = 1000f;
    var var_2 = _wgslsmith_dot_vec3_i32(u_input.a, ~max(select(-u_input.a, -vec3<i32>(u_input.b.x, 5898i, u_input.a.x), false), ~(-u_input.a)));
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(u_input.a.yx, Struct_2(vec4<bool>(true, true, false, true)), 56094u))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(177f, var_1, var_1) + vec3<f32>(327f, -669f, 257f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, _wgslsmith_f_op_f32(-var_1), 289f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(!select(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(89086u, 20669u), vec2<u32>(0u, 4294967295u)), 1u)], global1[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 10189u), vec3<u32>(6190u, 0u, 4294967295u))), 1u)], global0.x));
    var var_1 = -1171f;
    var var_2 = true;
    var_2 = !var_0;
    let var_3 = -1000f;
    var var_4 = ~u_input.a.xy;
    var_4 = reverseBits(u_input.b);
    global0 = vec3<bool>(_wgslsmith_mod_i32(~firstTrailingBit(var_4.x), u_input.b.x) >= _wgslsmith_add_i32(_wgslsmith_div_i32(u_input.a.x, -2147483647i), 0i), true, all(!select(vec3<bool>(global0.x, var_0, false), !vec3<bool>(true, true, var_0), true)));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(min(firstTrailingBit(57364u), ~1u)), _wgslsmith_f_op_vec3_f32(func_1()), u_input.a.x, 622f, ~u_input.a);
}

