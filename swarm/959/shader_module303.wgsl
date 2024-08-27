struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
}

struct Struct_5 {
    a: vec2<i32>,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
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

var<private> global0: array<Struct_2, 16>;

var<private> global1: f32 = -1613f;

var<private> global2: array<Struct_3, 22> = array<Struct_3, 22>(Struct_3(25440i), Struct_3(1i), Struct_3(i32(-2147483648)), Struct_3(1i), Struct_3(2147483647i), Struct_3(41304i), Struct_3(-1i), Struct_3(61476i), Struct_3(-17738i), Struct_3(27353i), Struct_3(-24883i), Struct_3(19363i), Struct_3(10699i), Struct_3(-1i), Struct_3(i32(-2147483648)), Struct_3(-3957i), Struct_3(-30665i), Struct_3(-32527i), Struct_3(49696i), Struct_3(2147483647i), Struct_3(-39023i), Struct_3(i32(-2147483648)));

var<private> global3: f32;

var<private> global4: vec4<f32>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: Struct_2) -> u32 {
    global2 = array<Struct_3, 22>();
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(197f, global4.x)));
    global1 = -424f;
    var var_2 = 1u;
    return ~(~min(_wgslsmith_sub_u32(4294967295u, 0u), 69830u));
}

fn func_2(arg_0: Struct_1) -> f32 {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(firstTrailingBit(_wgslsmith_add_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(34464u, 1u), vec2<u32>(6703u, 0u)), 1u)), _wgslsmith_add_u32(abs(~12688u & func_3(global0[_wgslsmith_index_u32(27397u, 16u)])), ~(~1u))), 16u)];
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(arg_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.a))), arg_0.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(1032f)), arg_0.a))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1268f, arg_0.a, arg_0.a, _wgslsmith_f_op_f32(floor(arg_0.a))))), vec4<f32>(arg_0.a, -503f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.x)))), _wgslsmith_f_op_f32(arg_0.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1577f)))));
    let var_2 = firstLeadingBit(~1u);
    global3 = _wgslsmith_f_op_f32(1315f * var_1.x);
    var var_3 = var_2 >> (max(~countOneBits(var_2 | var_2), 4294967295u << (select(abs(var_2), _wgslsmith_clamp_u32(1u, 8662u, var_2), var_0.a.x) % 32u)) % 32u);
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-635f, _wgslsmith_f_op_f32(sign(global4.x))));
}

fn func_1(arg_0: f32) -> vec2<i32> {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_1(_wgslsmith_f_op_f32(sign(482f))))) * arg_0));
    global4 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global4.x, global4.x, arg_0, -640f), vec4<f32>(global4.x, 1284f, global4.x, global4.x), vec4<bool>(false, true, false, true))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1047f, global4.x, arg_0, 863f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2069f, global4.x, 1011f, -294f))))) - vec4<f32>(global4.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1942f)) - _wgslsmith_f_op_f32(select(-562f, 618f, true))), global4.x, _wgslsmith_f_op_f32(trunc(-556f)))));
    global4 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, global4.x, global4.x, global4.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2012f), arg_0, -358f, _wgslsmith_f_op_f32(min(arg_0, _wgslsmith_f_op_f32(-arg_0))))), vec4<bool>(all(vec4<bool>(false, true, true, false)), !(_wgslsmith_clamp_i32(-2147483647i, u_input.a.x, -25619i) < ~u_input.a.x), false, false)));
    var var_0 = select(vec4<bool>(false, all(vec4<bool>(true, true, true, true)), global4.x > global4.x, true), vec4<bool>(any(vec4<bool>(true, true, true, true)), u_input.a.x != min(_wgslsmith_mod_i32(1079i, u_input.b), -42692i), false, all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))), _wgslsmith_f_op_f32(max(global4.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(global4.x)))))) < _wgslsmith_f_op_f32(_wgslsmith_div_f32(global4.x, _wgslsmith_div_f32(global4.x, 1000f)) + arg_0));
    var var_1 = global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec3_u32(min(vec3<u32>(1u, 1u, 1u), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 69624u), vec2<u32>(46193u, 1u)), 1u, ~632u)), ~abs(~vec3<u32>(4294967295u, 34228u, 4294967295u)))), 16u)];
    return vec2<i32>(0i, 0i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(_wgslsmith_mod_vec2_i32(u_input.a, vec2<i32>(_wgslsmith_add_i32(44468i, u_input.b), -2147483647i)) | _wgslsmith_add_vec2_i32(-vec2<i32>(u_input.a.x, 0i), ~func_1(333f)), global0[_wgslsmith_index_u32(~reverseBits(max(~48348u, 1u)), 16u)], false);
    global3 = global4.x;
    var var_1 = vec4<i32>(-abs(countOneBits(_wgslsmith_sub_i32(u_input.b, var_0.a.x))), 1i, 22614i, firstTrailingBit(29895i));
    global2 = array<Struct_3, 22>();
    var var_2 = vec2<bool>(var_0.b.a.x, var_0.b.a.x);
    global3 = _wgslsmith_f_op_f32(-global4.x);
    let var_3 = var_1.x;
    let var_4 = vec2<u32>(1u, 63638u);
    let var_5 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global4.x)) * _wgslsmith_f_op_f32(select(1499f, 412f, var_0.b.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) * -151f), global4.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(global4.x, global4.x, var_2.x)), 1312f))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global4.x, global4.x, -455f, 549f), vec4<f32>(604f, -212f, 1623f, -804f), true))), vec4<f32>(-1224f, _wgslsmith_f_op_f32(abs(-1000f)), -1273f, global4.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global4.x, global4.x, global4.x, global4.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, 1322f, 369f, 1518f)), vec4<bool>(false, true, var_2.x, var_0.c))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, global4.x, 696f, 1593f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global4.x, -1132f, global4.x, -125f) * vec4<f32>(global4.x, global4.x, -473f, global4.x))))))));
    let x = u_input.a;
    s_output = StorageBuffer(2426i);
}

