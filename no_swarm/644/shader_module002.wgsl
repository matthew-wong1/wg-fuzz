struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 25>;

var<private> global1: array<i32, 9>;

var<private> global2: vec4<f32> = vec4<f32>(-1212f, 271f, 170f, -381f);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1) -> u32 {
    global0 = array<f32, 25>();
    global1 = array<i32, 9>();
    var var_0 = arg_1;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -365f), global2.x);
    var var_2 = countOneBits(vec2<i32>(u_input.a ^ 1i, ~abs(_wgslsmith_mult_i32(var_0.a.x, 4002i))));
    return ~_wgslsmith_clamp_u32(firstTrailingBit(4294967295u), ~abs(~4294967295u), 46738u);
}

fn func_2() -> u32 {
    let var_0 = max(vec3<u32>(0u, 0u << (u_input.d % 32u), ~(~1u)), ~vec3<u32>(func_3(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), false), Struct_1(vec2<i32>(u_input.a, -2147483647i), true, global2.yy)), ~_wgslsmith_mult_u32(0u, u_input.d), 0u));
    global1 = array<i32, 9>();
    let var_1 = u_input.c;
    let var_2 = var_1;
    global1 = array<i32, 9>();
    return _wgslsmith_clamp_u32(var_0.x, var_0.x, firstTrailingBit(abs(_wgslsmith_dot_vec3_u32(~var_0, ~u_input.e))));
}

fn func_1() -> Struct_1 {
    global2 = vec4<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(max(u_input.d, func_2()), 25u)]), -468f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(344f, global0[_wgslsmith_index_u32(11842u, 25u)])))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(func_2() >> (4294967295u % 32u), 25u)]))));
    var var_0 = countOneBits(u_input.b) != _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, u_input.d, 72318u, u_input.d), vec4<u32>(u_input.b, u_input.e.x, 4294967295u, u_input.b))), countOneBits(u_input.d), 1u), vec3<u32>(u_input.e.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, 40860u, u_input.d, 0u), firstLeadingBit(vec4<u32>(u_input.b, 0u, u_input.e.x, 4294967295u))), ~(u_input.d | 48275u)));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.yw)) + global2.xw);
    global2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1471f), var_1.x, _wgslsmith_div_f32(1188f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1195f - -131f), _wgslsmith_f_op_f32(340f * global2.x))), _wgslsmith_div_f32(431f, var_1.x)));
    var var_2 = Struct_3(Struct_1(abs(~vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 9u)], 2147483647i) & vec2<i32>(1i, global1[_wgslsmith_index_u32(1u, 9u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 25u)])) == var_1.x, global2.xw));
    return Struct_1(var_2.a.a, all(select(select(select(vec4<bool>(var_2.a.b, true, var_2.a.b, false), vec4<bool>(false, var_2.a.b, false, var_2.a.b), var_2.a.b), select(vec4<bool>(false, false, var_2.a.b, true), vec4<bool>(false, var_2.a.b, var_2.a.b, true), vec4<bool>(false, var_2.a.b, var_2.a.b, false)), select(vec4<bool>(true, true, var_2.a.b, var_2.a.b), vec4<bool>(var_2.a.b, var_2.a.b, false, true), vec4<bool>(false, var_2.a.b, var_2.a.b, false))), select(!vec4<bool>(false, false, var_2.a.b, true), vec4<bool>(true, true, var_2.a.b, var_2.a.b), !vec4<bool>(var_2.a.b, true, var_2.a.b, var_2.a.b)), vec4<bool>(var_2.a.b, any(vec4<bool>(true, var_2.a.b, var_2.a.b, true)), select(var_2.a.b, false, false), !var_2.a.b))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.d, 25u)], -357f)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 1067f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(656f, var_2.a.c.x) + vec2<f32>(-1000f, var_2.a.c.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2263f, global2.x))))));
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: i32, arg_3: bool) -> Struct_3 {
    global0 = array<f32, 25>();
    global0 = array<f32, 25>();
    global2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-998f - _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(0u, 25u)]))) + global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.e.x, u_input.b, u_input.b, 2882u), vec4<u32>(4294967295u, u_input.d, 1436u, u_input.b)), 25u)]) * _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(func_2(), 25u)], _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.e.x | 0u, 25u)] + _wgslsmith_f_op_f32(arg_1.a.c.x * -1758f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -381f))))), arg_1.a.c.x, global2.x);
    var var_0 = select(!vec2<bool>(false, arg_1.a.b), select(!select(select(vec2<bool>(arg_1.a.b, true), vec2<bool>(arg_3, true), vec2<bool>(false, true)), vec2<bool>(arg_1.a.b, false), arg_3), !(!(!vec2<bool>(true, arg_3))), !(!any(vec3<bool>(false, arg_3, false)))), !(!select(select(vec2<bool>(true, false), vec2<bool>(arg_1.a.b, arg_1.a.b), true), select(vec2<bool>(arg_1.a.b, arg_3), vec2<bool>(false, true), vec2<bool>(true, true)), !arg_1.a.b)));
    global1 = array<i32, 9>();
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 9>();
    global0 = array<f32, 25>();
    let var_0 = func_4(_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(~122013u, 9u)], reverseBits(global1[_wgslsmith_index_u32(4294967295u << ((u_input.d << (0u % 32u)) % 32u), 9u)])), Struct_3(func_1()), func_1().a.x, any(!select(vec2<bool>(true, true), vec2<bool>(false, false), any(vec4<bool>(true, true, true, false)))));
    var var_1 = _wgslsmith_add_i32(~func_4(~1i, Struct_3(Struct_1(var_0.a.a, var_0.a.b, var_0.a.c)), _wgslsmith_dot_vec2_i32(var_0.a.a, var_0.a.a), true).a.a.x ^ ~(-1i), select(1i, var_0.a.a.x, 1f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2441f * global2.x))));
    var var_2 = reverseBits(abs(firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.a.a.x, global1[_wgslsmith_index_u32(1u, 9u)], 2147483647i, u_input.a), vec4<i32>(var_0.a.a.x, var_0.a.a.x, -18315i, var_0.a.a.x)) << (vec4<u32>(4294967295u, 75547u, u_input.d, u_input.e.x) % vec4<u32>(32u)))));
    let var_3 = ~firstTrailingBit(_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d, 4294967295u, 92300u, 0u), vec4<u32>(u_input.e.x, u_input.b, 50139u, u_input.e.x)), vec4<u32>(454u, u_input.d, u_input.b, 32964u)), vec4<u32>(min(24797u, 0u), func_3(vec4<bool>(true, var_0.a.b, false, false), var_0.a), _wgslsmith_mult_u32(42786u, u_input.d), u_input.b >> (0u % 32u)), max(vec4<u32>(u_input.d, u_input.e.x, 1u, u_input.d), vec4<u32>(u_input.d, 4294967295u, u_input.b, 1u))));
    let var_4 = vec4<u32>(0u, u_input.b, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(36376u, u_input.e.x, var_3.x), u_input.e), abs(var_3.x)), _wgslsmith_add_u32(1u ^ (u_input.d >> (var_3.x % 32u)), _wgslsmith_mod_u32(u_input.e.x, u_input.b))) | countOneBits(select(~(~var_3), reverseBits(vec4<u32>(var_3.x, 0u, 0u, 67224u)), var_0.a.b));
    let var_5 = Struct_2(select(vec3<bool>(true, true, !(global2.x >= global0[_wgslsmith_index_u32(57487u, 25u)])), vec3<bool>(all(!vec3<bool>(true, true, var_0.a.b)), func_4(i32(-1i) * -5999i, var_0, 1i, true).a.b, var_0.a.b), var_0.a.b), global2.x, global2.x);
    var var_6 = Struct_4(~(~(~var_3.x)) & 1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1586f)) * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(16100u, 25u)]))), _wgslsmith_f_op_f32(-var_0.a.c.x)));
}

