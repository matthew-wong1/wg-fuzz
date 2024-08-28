struct Struct_1 {
    a: i32,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<f32, 27>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<bool>) -> i32 {
    let var_0 = 648f;
    var var_1 = _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(15556u, 18281u ^ u_input.a.x), 4294967295u), _wgslsmith_mult_u32(~34636u | (u_input.a.x & u_input.a.x), _wgslsmith_mod_u32(u_input.a.x, 0u) << (99982u % 32u)), 39023u), ~_wgslsmith_clamp_vec3_u32(select(vec3<u32>(1u, 89440u, 41946u), vec3<u32>(57054u, u_input.a.x, 63828u) | vec3<u32>(u_input.a.x, 0u, 0u), false), vec3<u32>(firstLeadingBit(92030u), u_input.a.x, _wgslsmith_add_u32(u_input.a.x, u_input.a.x)), select(vec3<u32>(u_input.a.x, 4294967295u, 31467u), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, 1u, u_input.a.x), vec3<u32>(30793u, u_input.a.x, u_input.a.x)), arg_0.wxw)));
    let var_2 = -u_input.c.x;
    let var_3 = Struct_1(-40137i, true, 0u);
    var_1 = vec3<u32>(~(~u_input.a.x), ~abs(_wgslsmith_div_u32(countOneBits(u_input.a.x), u_input.a.x)), var_3.c);
    return u_input.d;
}

fn func_2(arg_0: Struct_1) -> i32 {
    global1 = array<f32, 27>();
    let var_0 = true;
    let var_1 = -2147483647i;
    var var_2 = !select(vec2<bool>(true, true), select(vec2<bool>(true, true != arg_0.b), select(vec2<bool>(arg_0.b, true), vec2<bool>(true, arg_0.b), select(vec2<bool>(true, true), vec2<bool>(false, true), arg_0.b)), vec2<bool>(any(vec2<bool>(true, false)), true)), var_0);
    var var_3 = 2147483647i;
    return _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -17621i, 2147483647i), ~_wgslsmith_sub_vec3_i32(abs(select(u_input.c, vec3<i32>(13140i, global0.x, 11548i), false)), vec3<i32>(i32(-1i) * -10900i, -1i, func_3(vec4<bool>(false, false, true, var_2.x)))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: bool, arg_3: Struct_1) -> vec3<f32> {
    global0 = select(vec2<i32>(i32(-1i) * -1i, u_input.d), vec2<i32>(~0i, -6451i), true || arg_2);
    let var_0 = 13171i;
    let var_1 = Struct_1(var_0, arg_3.b, arg_1.x);
    var var_2 = var_1.c;
    global1 = array<f32, 27>();
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1552f, global1[_wgslsmith_index_u32(23900u, 27u)], global1[_wgslsmith_index_u32(1u, 27u)])))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-514f, global1[_wgslsmith_index_u32(4294967295u, 27u)], global1[_wgslsmith_index_u32(var_1.c, 27u)]))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1000f, global1[_wgslsmith_index_u32(1u, 27u)], 329f)))))))));
}

fn func_1(arg_0: f32, arg_1: vec4<u32>) -> StorageBuffer {
    let var_0 = vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(2059f, global1[_wgslsmith_index_u32(arg_1.x, 27u)]))) + global1[_wgslsmith_index_u32(~u_input.a.x, 27u)]) < _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -2322f)), false);
    global1 = array<f32, 27>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(Struct_1(func_2(Struct_1(1i, true, 1u)), 17337u != _wgslsmith_dot_vec3_u32(arg_1.yyy, arg_1.www), 1u), ~arg_1.wx, true, Struct_1(~(-2147483647i), var_0.x, max(select(0u, arg_1.x, var_0.x), _wgslsmith_clamp_u32(0u, arg_1.x, 45325u))))));
    global0 = u_input.c.zy;
    var var_2 = _wgslsmith_f_op_vec3_f32(func_4(Struct_1(u_input.b, var_0.x & (var_0.x || (arg_0 > 1531f)), ~u_input.a.x), _wgslsmith_mod_vec2_u32(abs(max(u_input.a, ~vec2<u32>(1u, u_input.a.x))), firstLeadingBit(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 0u), vec4<u32>(u_input.a.x, arg_1.x, 28503u, 4294967295u)), 4294967295u & arg_1.x))), !(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_1.x)), _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(29785u, 27u)]))) <= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(arg_0))))), Struct_1(46422i, false, u_input.a.x))).x;
    return StorageBuffer(global1[_wgslsmith_index_u32(~(~(~arg_1.x) & firstLeadingBit(9214u)), 27u)], ~(vec2<i32>(i32(-1i) * -1i, ~(-67569i)) ^ _wgslsmith_add_vec2_i32(abs(vec2<i32>(global0.x, u_input.b)), firstTrailingBit(u_input.c.yx))), _wgslsmith_mult_vec2_i32(firstLeadingBit(u_input.c.xy), countOneBits(u_input.c.xx & u_input.c.xy) & _wgslsmith_mult_vec2_i32(vec2<i32>(-62380i, global0.x) | vec2<i32>(u_input.c.x, u_input.b), vec2<i32>(global0.x, u_input.c.x))), _wgslsmith_dot_vec4_u32(arg_1 << ((_wgslsmith_add_vec4_u32(arg_1, vec4<u32>(u_input.a.x, 1u, u_input.a.x, arg_1.x)) | vec4<u32>(97919u, 4294967295u, 4294967295u, arg_1.x)) % vec4<u32>(32u)), ~vec4<u32>(~u_input.a.x, 1u, 0u, u_input.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 27u)], global1[_wgslsmith_index_u32(1u, 27u)], 544f, arg_0))) + vec4<f32>(arg_0, arg_0, arg_0, arg_0))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global1 = array<f32, 27>();
    global1 = array<f32, 27>();
    global0 = u_input.c.yx;
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 27u)]), 518f, global1[_wgslsmith_index_u32(~4294967295u, 27u)], 641f))), vec4<f32>(-704f, global1[_wgslsmith_index_u32(~u_input.a.x, 27u)], -1365f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 27u)]) * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 27u)])), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f - global1[_wgslsmith_index_u32(u_input.a.x, 27u)]))))));
    let x = u_input.a;
    s_output = func_1(237f, ~_wgslsmith_add_vec4_u32(vec4<u32>(~6532u, firstTrailingBit(u_input.a.x), 35630u >> (u_input.a.x % 32u), 1u), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), ~vec4<u32>(u_input.a.x, u_input.a.x, 351u, 4294967295u))));
}

