struct Struct_1 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: vec2<i32>,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: vec2<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: f32,
    b: bool,
}

struct Struct_5 {
    a: f32,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 21> = array<vec4<bool>, 21>(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false));

var<private> global1: vec3<f32> = vec3<f32>(189f, 636f, -1495f);

var<private> global2: array<vec2<u32>, 7> = array<vec2<u32>, 7>(vec2<u32>(4294967295u, 43337u), vec2<u32>(0u, 1u), vec2<u32>(0u, 90428u), vec2<u32>(0u, 4294967295u), vec2<u32>(32902u, 25279u), vec2<u32>(0u, 29147u), vec2<u32>(35688u, 46554u));

var<private> global3: array<vec2<i32>, 23>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_2) -> vec2<bool> {
    var var_0 = Struct_1(_wgslsmith_mult_vec3_u32(u_input.d, u_input.d), select(vec4<bool>(all(global0[_wgslsmith_index_u32(select(arg_0.c.x, u_input.d.x, true), 21u)]), arg_0.a, arg_0.a, !arg_0.a == !arg_0.a), !global0[_wgslsmith_index_u32((u_input.d.x >> (u_input.d.x % 32u)) << (4294967295u % 32u), 21u)], arg_0.b != global1.x), firstTrailingBit(reverseBits(~vec2<i32>(2147483647i, -24174i))) ^ _wgslsmith_sub_vec2_i32(vec2<i32>(1i, u_input.c), global3[_wgslsmith_index_u32(~(~u_input.d.x), 23u)]), max(_wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(u_input.d, vec3<u32>(1u, 33012u, u_input.d.x)), vec3<u32>(abs(arg_0.c.x), u_input.d.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 4294967295u, arg_0.c.x, u_input.d.x), vec4<u32>(u_input.d.x, arg_0.c.x, u_input.d.x, 29856u)))), ~4294967295u));
    var_0 = Struct_1(~_wgslsmith_add_vec3_u32(var_0.a, vec3<u32>(abs(1u), var_0.d, ~37995u)), vec4<bool>(var_0.b.x, _wgslsmith_mod_i32(firstTrailingBit(u_input.c), 21792i) > countOneBits(_wgslsmith_clamp_i32(1i, -1i, 2147483647i)), arg_0.b <= 2435f, true), vec2<i32>(~var_0.c.x, var_0.c.x), _wgslsmith_sub_u32(var_0.a.x, abs(0u)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(1005f, 1412f)))))));
    global3 = array<vec2<i32>, 23>();
    let var_2 = -(~(_wgslsmith_sub_i32(reverseBits(var_0.c.x), abs(-1i)) >> (~arg_0.c.x % 32u)));
    return var_0.b.wx;
}

fn func_2(arg_0: Struct_4, arg_1: Struct_2) -> f32 {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, arg_1.b, arg_0.a, arg_1.b) * vec4<f32>(arg_0.a, global1.x, arg_0.a, arg_0.a)))), vec4<f32>(-121f, 509f, _wgslsmith_f_op_f32(411f - arg_1.b), arg_1.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1307f, _wgslsmith_div_f32(-435f, global1.x), _wgslsmith_f_op_f32(floor(-1374f)), arg_1.b))));
    global0 = array<vec4<bool>, 21>();
    let var_1 = firstLeadingBit(23160u);
    var var_2 = Struct_3(func_3(arg_1));
    var var_3 = _wgslsmith_f_op_f32(step(-1770f, -544f));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1045f - _wgslsmith_f_op_f32(f32(-1f) * -1165f)) * _wgslsmith_f_op_f32(-329f + -867f)) - arg_1.b), true));
}

fn func_1(arg_0: Struct_4, arg_1: u32, arg_2: vec2<i32>, arg_3: vec2<bool>) -> vec3<bool> {
    global0 = array<vec4<bool>, 21>();
    global1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(-1608f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(round(-2178f)))))), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(642f - arg_0.a)), _wgslsmith_f_op_f32(round(arg_0.a))));
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -743f), _wgslsmith_div_f32(2594f, -154f))), 973f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1984f)) - _wgslsmith_f_op_f32(func_2(Struct_4(arg_0.a, arg_0.b), Struct_2(false, -924f, vec2<u32>(u_input.b.x, u_input.b.x)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, global1.x, global1.x)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, -2427f, 1126f) + vec3<f32>(arg_0.a, arg_0.a, 904f))))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, arg_0.a, _wgslsmith_div_f32(-486f, global1.x))), vec3<f32>(global1.x, 687f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x * -343f), arg_0.a))));
    global3 = array<vec2<i32>, 23>();
    global1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(370f, -305f, 261f) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-2490f, arg_0.a, global1.x), vec3<f32>(arg_0.a, 671f, 1297f)))))));
    return vec3<bool>(arg_3.x, !(arg_0.a != -1295f), !all(arg_3));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, any(vec3<bool>(true, false, false))), !select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false)), select(!func_1(Struct_4(global1.x, true), 43025u, select(vec2<i32>(4709i, -30878i), global3[_wgslsmith_index_u32(28454u, 23u)], false), vec2<bool>(false, true)), func_1(Struct_4(global1.x, true), 57017u, vec2<i32>(-1i) * -global3[_wgslsmith_index_u32(u_input.d.x, 23u)], select(func_1(Struct_4(561f, false), u_input.d.x, global3[_wgslsmith_index_u32(4294967295u, 23u)], vec2<bool>(false, true)).xz, vec2<bool>(true, true), false)), vec3<bool>(false, !func_1(Struct_4(-602f, false), u_input.b.x, u_input.a.xz, vec2<bool>(false, true)).x, false)), !func_1(Struct_4(-1632f, true), 9555u, _wgslsmith_mod_vec2_i32(min(vec2<i32>(0i, 15811i), u_input.a.zx), global3[_wgslsmith_index_u32(u_input.b.x, 23u)] >> (vec2<u32>(u_input.b.x, 0u) % vec2<u32>(32u))), select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(true, true))));
    var var_1 = vec3<u32>(1u, _wgslsmith_add_u32(u_input.b.x, _wgslsmith_clamp_u32(min(66011u, reverseBits(u_input.d.x)), u_input.b.x, ~(~u_input.d.x))), ~(~0u));
    let x = u_input.a;
    s_output = StorageBuffer(-214f, vec3<i32>(u_input.c, countOneBits(1i), 45609i), ~_wgslsmith_add_vec4_u32(~(~vec4<u32>(0u, u_input.b.x, u_input.b.x, 0u)), reverseBits(vec4<u32>(0u, var_1.x, 0u, u_input.d.x))));
}

