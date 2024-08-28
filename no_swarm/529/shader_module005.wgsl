struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: bool,
    d: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 17>;

var<private> global1: vec2<f32>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: vec2<f32>, arg_3: Struct_3) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-1086f, arg_3.b.x), 2782f)));
    global0 = array<vec2<f32>, 17>();
    global0 = array<vec2<f32>, 17>();
    global1 = arg_3.b;
    global0 = array<vec2<f32>, 17>();
    return vec2<i32>(44585i, 10400i);
}

fn func_2(arg_0: bool) -> i32 {
    return min(~(~u_input.b), _wgslsmith_dot_vec2_i32(vec2<i32>(-u_input.b, countOneBits(_wgslsmith_add_i32(-15569i, 52489i))), func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-701f, -936f, -144f, 267f))), _wgslsmith_clamp_vec4_i32(select(vec4<i32>(u_input.b, u_input.c.x, 0i, -74463i), vec4<i32>(-21844i, 74902i, -17303i, -75406i), vec4<bool>(arg_0, arg_0, arg_0, arg_0)), vec4<i32>(-17513i, u_input.c.x, u_input.c.x, u_input.c.x) << (vec4<u32>(u_input.a, 1u, u_input.a, u_input.a) % vec4<u32>(32u)), vec4<i32>(u_input.b, u_input.c.x, 0i, 6809i)), vec2<f32>(1795f, _wgslsmith_f_op_f32(global1.x * global1.x)), Struct_3(all(vec3<bool>(arg_0, false, arg_0)), _wgslsmith_div_vec2_f32(vec2<f32>(-1090f, global1.x), global0[_wgslsmith_index_u32(1u, 17u)])))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1) -> Struct_1 {
    var var_0 = arg_1;
    var_0 = Struct_2(_wgslsmith_f_op_f32(-global1.x), Struct_1(arg_1.b.a, abs(-1i), vec4<i32>(_wgslsmith_div_i32(arg_2.b, var_0.b.c.x), func_2(arg_1.c || true), _wgslsmith_div_i32(-3236i, arg_2.b ^ -27404i), arg_1.b.c.x)), false, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0.a - var_0.d.x), _wgslsmith_div_f32(var_0.d.x, -1707f), _wgslsmith_div_f32(arg_1.a, arg_1.d.x), _wgslsmith_f_op_f32(-arg_1.a)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -981f, 937f, arg_1.a) + var_0.d), _wgslsmith_div_vec4_f32(arg_1.d, vec4<f32>(arg_1.d.x, var_0.a, 511f, arg_1.d.x))))) - var_0.d));
    var var_1 = var_0.c;
    var_1 = arg_0.a.x;
    var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.d.x + global1.x), global1.x), global1.x)) - var_0.d.x), Struct_1(select(!arg_2.a, arg_0.a, true), ~1i, firstLeadingBit(_wgslsmith_div_vec4_i32(abs(vec4<i32>(u_input.b, -40665i, arg_0.b, -25056i)), -vec4<i32>(-1i, var_0.b.c.x, arg_2.b, -1i)))), !(!(1i < (2147483647i | u_input.c.x))), vec4<f32>(var_0.a, -1524f, _wgslsmith_f_op_f32(select(930f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), all(vec3<bool>(true, arg_2.a.x, var_0.b.a.x)))), _wgslsmith_f_op_f32(-global1.x)));
    return arg_1.b;
}

fn func_4(arg_0: Struct_1) -> vec2<f32> {
    global0 = array<vec2<f32>, 17>();
    global0 = array<vec2<f32>, 17>();
    let var_0 = Struct_3(!(global1.x >= _wgslsmith_f_op_f32(max(global1.x, _wgslsmith_f_op_f32(step(global1.x, -589f))))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global1.x, global1.x, arg_0.a.x)), _wgslsmith_f_op_f32(global1.x * 235f))), _wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-701f)))))));
    global1 = global0[_wgslsmith_index_u32(4294967295u, 17u)];
    var var_1 = max(~vec2<u32>(u_input.a, 57056u), abs(~_wgslsmith_mult_vec2_u32(vec2<u32>(22321u, u_input.a), vec2<u32>(u_input.a, 0u)) & firstTrailingBit(reverseBits(vec2<u32>(1u, 15799u)))));
    return global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(14171u, var_1.x, 0u), vec3<u32>(40499u, var_1.x, 30022u)), reverseBits(vec3<u32>(u_input.a, 704u, var_1.x))) | ~vec3<u32>(var_1.x, ~1u, 4294967295u), ~_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.a, var_1.x), vec3<u32>(0u, 2474u, 1u)), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 2205u, var_1.x), vec3<u32>(0u, 4294967295u, 1u))), ~vec3<u32>(1u, var_1.x, u_input.a))), 17u)];
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: bool) -> Struct_3 {
    let var_0 = global0[_wgslsmith_index_u32(~45708u, 17u)];
    global1 = global0[_wgslsmith_index_u32(u_input.a, 17u)];
    var var_1 = Struct_1(vec2<bool>(all(vec4<bool>(false, true, u_input.a < 0u, !arg_2)), ~countOneBits(u_input.a) < u_input.a), -2147483647i, _wgslsmith_sub_vec4_i32(select(vec4<i32>(_wgslsmith_sub_i32(u_input.c.x, -1i), func_1(Struct_1(vec2<bool>(false, false), u_input.b, vec4<i32>(42383i, u_input.b, 14608i, -2147483647i)), Struct_2(global1.x, Struct_1(vec2<bool>(arg_1.a, true), u_input.b, vec4<i32>(34753i, u_input.b, u_input.b, u_input.c.x)), true, vec4<f32>(arg_0.x, -929f, -605f, var_0.x)), Struct_1(vec2<bool>(arg_2, false), u_input.c.x, vec4<i32>(u_input.c.x, u_input.b, 15158i, 0i))).b, 2147483647i, u_input.c.x), vec4<i32>(_wgslsmith_sub_i32(u_input.b, 33575i), 1i, ~u_input.b, -2147483647i), !any(vec2<bool>(arg_1.a, true))), reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(-3635i, 1281i, 1i, -20135i) | vec4<i32>(-21356i, u_input.b, 26025i, u_input.c.x), vec4<i32>(u_input.b, -2147483647i, u_input.c.x, u_input.c.x)))));
    let var_2 = vec2<f32>(499f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1533f + -840f)), any(!vec4<bool>(false, var_1.a.x, arg_2, false)))) * _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.x + 108f), _wgslsmith_div_f32(367f, -1000f))))));
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, arg_1.b.x)), _wgslsmith_f_op_vec2_f32(arg_1.b * vec2<f32>(arg_1.b.x, arg_1.b.x)), vec2<bool>(var_1.a.x, true))))) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(162f, global1.x)))));
    return arg_1;
}

fn func_6(arg_0: u32, arg_1: vec4<i32>, arg_2: Struct_3, arg_3: Struct_2) -> f32 {
    global0 = array<vec2<f32>, 17>();
    var var_0 = select(~_wgslsmith_clamp_u32(~0u, 55174u, ~59487u) << (abs(max(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, u_input.a), vec2<u32>(76111u, arg_0)), arg_0)) % 32u), 17370u, any(select(vec2<bool>(arg_1.x >= u_input.c.x, any(vec2<bool>(arg_2.a, false))), vec2<bool>(true, !arg_3.b.a.x), true)));
    global1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_2.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1140f), arg_2.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2.b.x))) + _wgslsmith_f_op_f32(f32(-1f) * -166f)) + arg_2.b.x));
    let var_1 = func_1(Struct_1(!(!arg_3.b.a), -_wgslsmith_add_i32(arg_3.b.c.x, arg_3.b.b) & arg_3.b.c.x, arg_1), Struct_2(-166f, Struct_1(!arg_3.b.a, func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, arg_2.b.x, -412f, -619f)), reverseBits(vec4<i32>(arg_1.x, -13272i, u_input.c.x, arg_3.b.b)), global0[_wgslsmith_index_u32(arg_0, 17u)], arg_2).x, abs(arg_1)), true, _wgslsmith_f_op_vec4_f32(-arg_3.d)), Struct_1(select(vec2<bool>(!arg_2.a, select(false, false, true)), vec2<bool>(arg_2.b.x < 1182f, all(vec4<bool>(arg_3.b.a.x, arg_3.c, false, true))), vec2<bool>(any(vec4<bool>(arg_3.b.a.x, true, arg_2.a, arg_2.a)), all(arg_3.b.a))), u_input.c.x, select(arg_3.b.c, vec4<i32>(0i, _wgslsmith_add_i32(0i, arg_1.x), -38452i, ~(-25968i)), vec4<bool>(true, true, true, true))));
    let var_2 = 1i;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1166f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -915f))))))) - _wgslsmith_f_op_f32(-arg_2.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, 558f, global1.x)))) * vec3<f32>(-240f, -1099f, 900f)), vec3<f32>(-1364f, 199f, _wgslsmith_f_op_f32(ceil(global1.x))), !(1u >= ~u_input.a)));
    var var_1 = _wgslsmith_f_op_f32(func_6(1u, _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(1i, -1548i, 0i, u_input.b), -_wgslsmith_add_vec4_i32(vec4<i32>(-4793i, u_input.c.x, u_input.b, 35783i), vec4<i32>(4905i, u_input.b, u_input.b, u_input.c.x)), vec4<i32>(firstLeadingBit(u_input.c.x), max(2147483647i, -2147483647i), -u_input.c.x, i32(-1i) * -58632i)), -(~(vec4<i32>(2147483647i, -12859i, -20851i, -7697i) >> (vec4<u32>(u_input.a, u_input.a, 54983u, 0u) % vec4<u32>(32u))))), func_5(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_4(func_1(Struct_1(vec2<bool>(true, false), u_input.b, vec4<i32>(13729i, u_input.c.x, -37799i, u_input.b)), Struct_2(562f, Struct_1(vec2<bool>(true, false), -1i, vec4<i32>(u_input.b, -18356i, -53334i, -27746i)), false, vec4<f32>(-397f, -1357f, var_0.x, -133f)), Struct_1(vec2<bool>(false, false), -8847i, vec4<i32>(2147483647i, 43530i, u_input.c.x, -2147483647i))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, -341f) + vec2<f32>(global1.x, 1046f)), func_1(func_1(Struct_1(vec2<bool>(true, true), u_input.b, vec4<i32>(u_input.c.x, 81960i, -1i, u_input.b)), Struct_2(504f, Struct_1(vec2<bool>(false, false), -1491i, vec4<i32>(u_input.c.x, u_input.c.x, -2147483647i, 1i)), true, vec4<f32>(502f, -963f, var_0.x, 420f)), Struct_1(vec2<bool>(false, false), u_input.b, vec4<i32>(4148i, u_input.c.x, 2147483647i, 1i))), Struct_2(global1.x, Struct_1(vec2<bool>(false, false), u_input.b, vec4<i32>(-44882i, -1i, 9099i, 1i)), true, vec4<f32>(-531f, var_0.x, -488f, global1.x)), Struct_1(vec2<bool>(true, false), u_input.b, vec4<i32>(0i, -25255i, u_input.b, u_input.c.x))).a)), Struct_3(!all(vec2<bool>(false, false)), _wgslsmith_f_op_vec2_f32(func_4(Struct_1(vec2<bool>(false, false), -2147483647i, vec4<i32>(u_input.c.x, -1i, -28157i, 4988i))))), true), Struct_2(-1242f, func_1(Struct_1(vec2<bool>(true, true), select(-53022i, -35533i, false), select(vec4<i32>(u_input.c.x, u_input.c.x, -54402i, 0i), vec4<i32>(u_input.b, u_input.b, -4426i, 48477i), false)), Struct_2(-421f, Struct_1(vec2<bool>(true, true), u_input.b, vec4<i32>(u_input.b, -1022i, 45827i, u_input.c.x)), func_5(vec2<f32>(var_0.x, 736f), Struct_3(true, vec2<f32>(var_0.x, var_0.x)), false).a, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1.x, -801f, var_0.x, var_0.x)))), Struct_1(vec2<bool>(true, true), _wgslsmith_clamp_i32(-25168i, -5545i, u_input.b), firstTrailingBit(vec4<i32>(u_input.b, u_input.b, 25937i, 2147483647i)))), func_1(Struct_1(vec2<bool>(false, true), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 15155i, -1i), vec3<i32>(u_input.c.x, u_input.c.x, -47440i)), min(vec4<i32>(u_input.b, -75707i, -2147483647i, 0i), vec4<i32>(u_input.c.x, u_input.b, u_input.b, 0i))), Struct_2(-127f, func_1(Struct_1(vec2<bool>(false, true), u_input.b, vec4<i32>(-65894i, u_input.c.x, u_input.c.x, -2147483647i)), Struct_2(-356f, Struct_1(vec2<bool>(true, false), u_input.c.x, vec4<i32>(-55341i, u_input.b, u_input.b, u_input.b)), true, vec4<f32>(global1.x, global1.x, 166f, global1.x)), Struct_1(vec2<bool>(false, false), 0i, vec4<i32>(2147483647i, u_input.b, -13122i, 0i))), any(vec4<bool>(false, true, true, true)), _wgslsmith_div_vec4_f32(vec4<f32>(1135f, var_0.x, var_0.x, var_0.x), vec4<f32>(global1.x, var_0.x, -516f, -161f))), func_1(Struct_1(vec2<bool>(true, false), u_input.b, vec4<i32>(-29574i, u_input.b, -2147483647i, u_input.c.x)), Struct_2(571f, Struct_1(vec2<bool>(true, true), 0i, vec4<i32>(-1i, -2147483647i, u_input.b, -67363i)), false, vec4<f32>(var_0.x, -671f, global1.x, -779f)), Struct_1(vec2<bool>(false, true), u_input.b, vec4<i32>(2147483647i, -4112i, u_input.b, 1i)))).a.x, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, 1055f, global1.x, 429f), vec4<f32>(var_0.x, var_0.x, 719f, global1.x), vec4<bool>(true, false, true, true))))))));
    let var_2 = -_wgslsmith_sub_i32(abs(1596i), u_input.b & _wgslsmith_div_i32(_wgslsmith_add_i32(u_input.c.x, -2147483647i), min(29262i, u_input.c.x)));
    var_1 = var_0.x;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_vec2_f32(func_4(Struct_1(vec2<bool>(true, false), u_input.b, vec4<i32>(16531i, 43414i, var_2, -5552i)))).x)) - -208f)) * _wgslsmith_f_op_f32(min(1f, var_0.x)));
    let var_4 = Struct_4(func_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(u_input.a, 17u)])) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-350f, global1.x), var_0.yx, select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true))))), func_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -1172f))), Struct_3(true, global0[_wgslsmith_index_u32(1u, 17u)]), true), any(select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), false), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), true), global1.x != -684f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(483f * -1317f))), _wgslsmith_f_op_f32(max(172f, -171f))), u_input.a);
    var var_5 = Struct_1(!(!select(!vec2<bool>(true, var_4.a.a), !vec2<bool>(var_4.a.a, true), func_1(Struct_1(vec2<bool>(var_4.a.a, var_4.a.a), var_2, vec4<i32>(u_input.c.x, var_2, 33904i, -933i)), Struct_2(var_0.x, Struct_1(vec2<bool>(true, var_4.a.a), 1i, vec4<i32>(8891i, var_2, u_input.b, 0i)), var_4.a.a, vec4<f32>(1345f, 1000f, var_0.x, -196f)), Struct_1(vec2<bool>(var_4.a.a, var_4.a.a), var_2, vec4<i32>(var_2, 1773i, u_input.b, var_2))).a)), _wgslsmith_clamp_i32(-18312i, u_input.c.x, -1i), vec4<i32>(func_1(Struct_1(vec2<bool>(true, true), ~0i, vec4<i32>(1i, 1i, 1i, 1i)), Struct_2(var_4.a.b.x, func_1(Struct_1(vec2<bool>(false, var_4.a.a), u_input.c.x, vec4<i32>(u_input.b, u_input.b, -16438i, 75904i)), Struct_2(371f, Struct_1(vec2<bool>(false, var_4.a.a), u_input.b, vec4<i32>(u_input.c.x, var_2, u_input.b, 55869i)), var_4.a.a, vec4<f32>(global1.x, 191f, var_4.a.b.x, var_0.x)), Struct_1(vec2<bool>(var_4.a.a, false), -2147483647i, vec4<i32>(3222i, var_2, 1i, -1i))), true, vec4<f32>(-1319f, -1003f, -1625f, -694f)), func_1(func_1(Struct_1(vec2<bool>(var_4.a.a, var_4.a.a), 8071i, vec4<i32>(6969i, -2147483647i, -2147483647i, u_input.c.x)), Struct_2(-1000f, Struct_1(vec2<bool>(var_4.a.a, var_4.a.a), -35712i, vec4<i32>(u_input.b, -2147483647i, -55729i, -2147483647i)), var_4.a.a, vec4<f32>(1362f, 1488f, -674f, 1797f)), Struct_1(vec2<bool>(false, false), u_input.c.x, vec4<i32>(u_input.b, var_2, 33964i, u_input.b))), Struct_2(global1.x, Struct_1(vec2<bool>(var_4.a.a, true), 0i, vec4<i32>(2147483647i, -39458i, u_input.b, -2147483647i)), var_4.a.a, vec4<f32>(global1.x, var_4.b, -274f, global1.x)), func_1(Struct_1(vec2<bool>(false, false), var_2, vec4<i32>(7558i, var_2, var_2, 1i)), Struct_2(global1.x, Struct_1(vec2<bool>(var_4.a.a, true), u_input.b, vec4<i32>(456i, -18761i, var_2, -1i)), var_4.a.a, vec4<f32>(-337f, -1665f, 1511f, -217f)), Struct_1(vec2<bool>(var_4.a.a, var_4.a.a), var_2, vec4<i32>(var_2, 2147483647i, u_input.b, -2147483647i))))).b, -var_2, select(_wgslsmith_mult_i32(u_input.b, 1i), 34708i, !(!var_4.a.a)), var_2));
    var_3 = -457f;
    var_1 = _wgslsmith_f_op_f32(floor(-800f));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(var_4.b - _wgslsmith_f_op_f32(trunc(var_4.a.b.x)))), _wgslsmith_f_op_f32(ceil(global1.x))), countOneBits((countOneBits(var_5.c.xx) ^ _wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, 1i), var_5.c.zx)) | var_5.c.zy), _wgslsmith_add_u32(u_input.a, var_4.c), _wgslsmith_dot_vec3_u32(vec3<u32>(max(u_input.a, ~4294967295u), ~1u, var_4.c & var_4.c), ~(~select(vec3<u32>(0u, 39139u, 0u), vec3<u32>(6411u, var_4.c, 8576u), false))));
}

