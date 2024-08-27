struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
    c: bool,
    d: vec4<f32>,
    e: bool,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<f32, 9>;

var<private> global2: i32 = 1i;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    var var_0 = ~(~2147483647i);
    var var_1 = Struct_5(23944u, Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.x), 433f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(9582u, 9u)]), _wgslsmith_f_op_f32(global0.x + global1[_wgslsmith_index_u32(6714u, 9u)]))), ~_wgslsmith_add_vec3_i32(vec3<i32>(-1i, u_input.c, u_input.c) | vec3<i32>(u_input.c, -21939i, u_input.a.x), vec3<i32>(u_input.c, 58816i, u_input.a.x)), global1[_wgslsmith_index_u32(1u, 9u)]));
    var var_2 = Struct_2(~(~_wgslsmith_mod_u32(~u_input.b.x, abs(4294967295u))), vec2<bool>(false, all(vec2<bool>(var_1.a <= 4294967295u, all(vec3<bool>(true, false, true))))), true, vec4<f32>(501f, _wgslsmith_f_op_f32(-var_1.b.a.x), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~u_input.b, vec2<u32>(u_input.b.x, u_input.b.x)), 9u)], _wgslsmith_f_op_f32(571f - 381f)), _wgslsmith_f_op_f32(var_1.b.a.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-789f - 845f), 285f))), true);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_1.a, 9u)]) - _wgslsmith_div_f32(global0.x, 1000f)))))));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<u32>) -> vec3<u32> {
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1000f * global1[_wgslsmith_index_u32(arg_1.x, 9u)]), _wgslsmith_f_op_f32(func_3()), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1766f + 978f))));
    var var_0 = arg_0.ww;
    global0 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-223f, _wgslsmith_f_op_f32(ceil(global0.x)), _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(~arg_1.x & 34257u, 9u)])), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b.x, 9u)] - global1[_wgslsmith_index_u32(arg_1.x, 9u)]))))));
    var var_1 = u_input.b.x;
    let var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, 1412f, global0.x) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 9u)], -1675f, 1254f, 259f), vec4<f32>(global0.x, 164f, 1000f, global1[_wgslsmith_index_u32(u_input.b.x, 9u)]))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-674f, -640f, global0.x, global0.x) * vec4<f32>(global0.x, global0.x, -663f, global1[_wgslsmith_index_u32(u_input.b.x, 9u)])))))), -vec3<i32>(10849i << (_wgslsmith_clamp_u32(u_input.b.x, arg_1.x, u_input.b.x) % 32u), -(var_0.x << (81783u % 32u)), -42711i), global1[_wgslsmith_index_u32(~1u, 9u)]);
    return _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x >> (1u % 32u), _wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(0u, u_input.b.x, arg_1.x), 0u), 1u)), max(~_wgslsmith_sub_vec3_u32(~vec3<u32>(61708u, arg_1.x, u_input.b.x), arg_1), vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_mult_u32(0u, 84171u), ~u_input.b.x), 87873u, select(4294967295u, 1u, false) << (firstLeadingBit(42289u) % 32u))));
}

fn func_1(arg_0: vec4<i32>, arg_1: f32, arg_2: vec2<u32>) -> bool {
    let var_0 = vec4<u32>(_wgslsmith_dot_vec3_u32(~(~(~vec3<u32>(u_input.b.x, u_input.b.x, 0u))), firstLeadingBit(func_2(_wgslsmith_clamp_vec4_i32(arg_0, arg_0, vec4<i32>(arg_0.x, arg_0.x, -2147483647i, arg_0.x)), vec3<u32>(54058u, arg_2.x, arg_2.x) | vec3<u32>(0u, 4294967295u, u_input.b.x)))), ~(~1u), u_input.b.x, ~_wgslsmith_mod_u32(~(~u_input.b.x), abs(_wgslsmith_dot_vec2_u32(u_input.b, u_input.b))));
    global2 = abs(-19308i);
    global0 = vec4<f32>(-1407f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(726f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - _wgslsmith_f_op_f32(sign(613f)))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1547f + -893f)));
    var var_1 = ~(~_wgslsmith_dot_vec3_u32(func_2(vec4<i32>(-1i, arg_0.x, u_input.c, u_input.a.x), var_0.yyy >> (vec3<u32>(102362u, arg_2.x, 31894u) % vec3<u32>(32u))), min(vec3<u32>(72939u, arg_2.x, 1u), vec3<u32>(4294967295u, var_0.x, 41559u))));
    let var_2 = Struct_4(Struct_1(var_0.wx, ~u_input.b.x, var_0.xwy), Struct_1(reverseBits(vec2<u32>(u_input.b.x, 1u)), firstTrailingBit(0u), var_0.xyy));
    return all(vec3<bool>(true, true, !(!all(vec3<bool>(true, false, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), true), select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), 19163i == u_input.c), vec3<bool>(true, true, func_1(u_input.a, global1[_wgslsmith_index_u32(4294967295u, 9u)], u_input.b)))), vec3<bool>(!all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false)), false, true), !all(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true))));
    let var_1 = u_input.a.xyx & u_input.a.wyw;
    global2 = var_1.x;
    global2 = abs(var_1.x);
    global1 = array<f32, 9>();
    global1 = array<f32, 9>();
    let var_2 = var_1.x;
    global2 = -(~(-u_input.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(757f * global0.x), vec3<u32>(~_wgslsmith_dot_vec2_u32(u_input.b, _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, u_input.b.x), u_input.b)), u_input.b.x, ~max(min(u_input.b.x, u_input.b.x), 23043u & u_input.b.x)));
}

