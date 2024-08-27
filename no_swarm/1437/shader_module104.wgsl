struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: u32;

var<private> global2: array<vec4<f32>, 2>;

var<private> global3: array<Struct_4, 1> = array<Struct_4, 1>(Struct_4(vec4<u32>(0u, 4003u, 4294967295u, 4294967295u)));

var<private> global4: bool = true;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> u32 {
    global1 = ~_wgslsmith_div_u32(~u_input.c.x, u_input.c.x);
    global3 = array<Struct_4, 1>();
    let var_0 = _wgslsmith_dot_vec4_u32(max(vec4<u32>(39732u, _wgslsmith_clamp_u32(84397u << (1u % 32u), countOneBits(8361u), 55411u), u_input.c.x, 38286u), ~vec4<u32>(u_input.c.x, abs(u_input.c.x), 37186u, 0u)), firstTrailingBit(~(~select(vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, u_input.c.x), vec4<u32>(u_input.c.x, u_input.c.x, 6616u, 4294967295u), vec4<bool>(false, false, false, false)))));
    var var_1 = _wgslsmith_clamp_vec2_i32(vec2<i32>(-25694i & (-u_input.b.x ^ (u_input.a.x | 2147483647i)), firstTrailingBit(_wgslsmith_sub_i32(u_input.a.x, u_input.b.x)) ^ ~1i), u_input.b.yz, vec2<i32>(u_input.a.x, 27159i));
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-392f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1458f)) + 408f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(680f, 1494f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(571f, 1069f, true))))), false));
    return 83833u;
}

fn func_2() -> Struct_1 {
    let var_0 = u_input.b.x;
    global0 = _wgslsmith_mult_u32(u_input.c.x, _wgslsmith_add_u32(func_3(), u_input.c.x << (6437u % 32u)));
    var var_1 = -u_input.b.x << (0u % 32u);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(23386u, 2u)] * vec4<f32>(-2182f, 1154f, 996f, -1743f))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -277f), _wgslsmith_f_op_f32(1000f * 473f), _wgslsmith_f_op_f32(min(-727f, -1101f)), 1f)), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(2253f * -344f), -1247f)), -1439f, 775f, _wgslsmith_f_op_f32(f32(-1f) * -276f)))) + vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(436f)), _wgslsmith_f_op_f32(round(422f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(906f * 1000f), _wgslsmith_div_f32(2076f, 2296f), false)))), _wgslsmith_f_op_f32(882f - 1902f), 1493f, 136f));
    var var_3 = vec2<bool>(!select(!all(vec2<bool>(false, true)), !all(vec4<bool>(true, false, false, true)), true), all(select(vec4<bool>(any(vec2<bool>(true, true)), select(true, false, false), all(vec4<bool>(false, false, false, false)), true), vec4<bool>(all(vec2<bool>(false, true)), true, u_input.c.x < u_input.c.x, true), vec4<bool>(false, true, all(vec2<bool>(false, true)), true))));
    return Struct_1(var_2.x);
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: Struct_1, arg_3: u32) -> bool {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -691f));
    global4 = (false && (true == !(u_input.a.x <= u_input.b.x))) & !(!any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), true)));
    let var_1 = func_2();
    let var_2 = !select(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(all(vec2<bool>(true, true)) && any(vec4<bool>(false, false, true, true)), all(vec2<bool>(false, true)) & select(true, true, false)));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(517f, 2328f) * _wgslsmith_f_op_f32(ceil(arg_2.a)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1328f - arg_2.a))));
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(select(any(vec3<bool>(false, false, false)), !func_1(81987u, u_input.c.x, Struct_1(-1026f), 0u), true) & any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true))));
    global4 = u_input.b.x < _wgslsmith_sub_i32(0i, -(~5385i));
    global2 = array<vec4<f32>, 2>();
    let var_1 = true;
    var var_2 = Struct_2(358f);
    global1 = _wgslsmith_add_u32(27252u, ~u_input.c.x);
    global4 = !any(!select(select(vec2<bool>(true, var_0), vec2<bool>(var_0, false), vec2<bool>(var_1, var_0)), vec2<bool>(true, true), select(vec2<bool>(var_1, var_1), vec2<bool>(true, var_0), false)));
    let var_3 = ~vec3<u32>(1u, u_input.c.x, ~_wgslsmith_add_u32(u_input.c.x, u_input.c.x) >> (0u % 32u));
    global4 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(vec2<f32>(var_2.a, 645f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(583f, var_2.a))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_2.a, var_2.a), vec2<f32>(var_2.a, -533f))))) * vec2<f32>(var_2.a, var_2.a))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_2.a, var_2.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(554f, -673f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1004f, 1441f))) - vec2<f32>(-323f, _wgslsmith_f_op_f32(-227f + var_2.a))))));
}

