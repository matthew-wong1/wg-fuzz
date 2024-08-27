struct Struct_1 {
    a: vec3<i32>,
    b: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_3 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 32>;

var<private> global1: f32 = -237f;

var<private> global2: Struct_1;

var<private> global3: array<vec2<u32>, 27> = array<vec2<u32>, 27>(vec2<u32>(41063u, 0u), vec2<u32>(70202u, 83372u), vec2<u32>(4294967295u, 32272u), vec2<u32>(1u, 1u), vec2<u32>(15635u, 4294967295u), vec2<u32>(49663u, 4294967295u), vec2<u32>(22957u, 9735u), vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 0u), vec2<u32>(3548u, 0u), vec2<u32>(21368u, 2496u), vec2<u32>(0u, 48068u), vec2<u32>(12478u, 14536u), vec2<u32>(1u, 59365u), vec2<u32>(0u, 0u), vec2<u32>(0u, 1u), vec2<u32>(74148u, 38439u), vec2<u32>(31769u, 26573u), vec2<u32>(41451u, 1u), vec2<u32>(4294967295u, 58424u), vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 40606u), vec2<u32>(76363u, 40632u), vec2<u32>(0u, 78884u), vec2<u32>(4294967295u, 62396u), vec2<u32>(71594u, 11316u), vec2<u32>(1u, 4294967295u));

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> u32 {
    global3 = array<vec2<u32>, 27>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1253f, 614f, 1032f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(728f, 1000f, 190f)))))));
    var var_1 = vec3<u32>(4294967295u, 1u, u_input.d.x);
    var var_2 = Struct_2(vec4<f32>(806f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.x - -115f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2798f * -1062f)), false)), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-2223f, 1144f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-300f)) - var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)));
    var var_3 = vec3<u32>(0u, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d.x, u_input.a, u_input.a, 1u), vec4<u32>(31320u, var_1.x, u_input.a, u_input.d.x)), abs(_wgslsmith_sub_vec4_u32(vec4<u32>(48655u, 1u, u_input.a, 4294967295u), vec4<u32>(61889u, u_input.a, u_input.d.x, var_1.x)))), 17227u), _wgslsmith_mod_u32(10792u, ~_wgslsmith_mod_u32(~var_1.x, ~u_input.e)));
    return var_3.x;
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: u32, arg_3: Struct_1) -> bool {
    global3 = array<vec2<u32>, 27>();
    let var_0 = global2.a.x;
    let var_1 = _wgslsmith_mod_i32(-23595i, global2.a.x & arg_3.a.x);
    let var_2 = Struct_3(abs(1u) >= _wgslsmith_clamp_u32(~(arg_2 & arg_2), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, 32148u, 6126u), vec3<u32>(14778u, u_input.d.x, 1u)), 10027u), abs(-select(-2147483647i, 2147483647i, arg_3.b)) | var_1);
    let var_3 = var_2;
    return !select(!global0[_wgslsmith_index_u32(func_3(), 32u)], any(vec3<bool>(arg_1.a.x != 1248f, global2.b & true, global2.b)), 2147483647i != (global2.a.x >> (~4294967295u % 32u)));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: vec4<f32>) -> bool {
    return any(select(vec3<bool>(_wgslsmith_f_op_f32(arg_2.x - 698f) <= arg_2.x, arg_1, func_2(-905f < arg_2.x, Struct_2(vec4<f32>(arg_2.x, arg_2.x, arg_2.x, -251f), -735f), 435u, Struct_1(global2.a, global2.b))), vec3<bool>(true, true, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, 2147483647i), vec2<i32>(u_input.c, -17310i)) > arg_0), vec3<bool>(false, !(!global0[_wgslsmith_index_u32(u_input.a, 32u)]), arg_1)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = -535f;
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(-255f)), _wgslsmith_f_op_f32(select(769f, 1188f, false)), -2089f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1413f, -871f, -773f, -231f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(230f, -1527f, -132f, -380f))))), 1f);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(var_0.a))) * _wgslsmith_f_op_vec4_f32(exp2(var_0.a)));
    let var_2 = !func_1(~firstLeadingBit(u_input.b), -1729f < _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1410f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_1, _wgslsmith_f_op_vec4_f32(-var_0.a))));
    let var_3 = Struct_1(~global2.a, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~u_input.a, 0u, 64626u), 32u)]);
    var var_4 = Struct_1(_wgslsmith_add_vec3_i32(~(-_wgslsmith_mult_vec3_i32(var_3.a, var_3.a)), abs(-max(var_3.a, global2.a))), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~u_input.a), firstLeadingBit(_wgslsmith_clamp_u32(firstTrailingBit(4294967295u), ~u_input.d.x, 24288u))), 32u)]);
    let var_5 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(var_0.a.x, _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(var_0.b - var_1.x)))), -306f, -1332f) + var_1.wwy);
    var var_6 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1f, 1f))))));
    let x = u_input.a;
    s_output = StorageBuffer(103060u);
}

