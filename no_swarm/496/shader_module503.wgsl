struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
    d: vec4<f32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 17>;

var<private> global1: array<vec3<u32>, 26>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: u32, arg_1: i32) -> f32 {
    let var_0 = all(select(select(vec3<bool>(true, true, arg_0 >= u_input.d.x), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), true), !select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true), any(vec2<bool>(false, false))), true));
    let var_1 = Struct_1(var_0);
    var var_2 = _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.b.xx, vec2<i32>(max(2147483647i, 2147483647i), _wgslsmith_mult_i32(1i, u_input.a)) & vec2<i32>(_wgslsmith_div_i32(33002i, arg_1), 5184i)), vec2<i32>(reverseBits(select(-16328i, arg_1 << (4294967295u % 32u), var_0)), 1i), vec2<i32>(49571i, -66975i));
    let var_3 = !var_1.a;
    let var_4 = vec2<i32>(1i, u_input.c.x);
    return -994f;
}

fn func_2() -> Struct_1 {
    global1 = array<vec3<u32>, 26>();
    global0 = array<vec2<f32>, 17>();
    let var_0 = Struct_2(Struct_1(all(vec4<bool>(false, true, true, false)) & true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 948f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(256f, 646f, 1776f))) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-193f, 1084f, 277f)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1000f, -1092f))))))), Struct_1(all(vec2<bool>(true, true))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -686f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f * -837f))) * _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(857f, -157f), _wgslsmith_f_op_f32(max(1706f, 968f))))), _wgslsmith_f_op_f32(func_3(4294967295u, ~(i32(-1i) * -77597i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(646f)), _wgslsmith_f_op_f32(576f + -942f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(4294967295u, 17u)]), _wgslsmith_f_op_vec2_f32(step(global0[_wgslsmith_index_u32(u_input.d.x << (1u % 32u), 17u)], _wgslsmith_f_op_vec2_f32(round(global0[_wgslsmith_index_u32(4294967295u, 17u)])))))) + global0[_wgslsmith_index_u32(max(~u_input.d.x, 43898u), 17u)]));
    let var_1 = 1u;
    let var_2 = var_0;
    return Struct_1(true);
}

fn func_1() -> Struct_1 {
    global1 = array<vec3<u32>, 26>();
    global0 = array<vec2<f32>, 17>();
    var var_0 = func_2();
    var_0 = func_2();
    let var_1 = vec3<i32>(37015i, u_input.a, firstLeadingBit(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(-33126i, select(0i, u_input.b.x, true), u_input.b.x), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(0i, 9995i, -1i), _wgslsmith_clamp_i32(u_input.b.x, -2147483647i, u_input.a)))));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(true, true, !all(vec4<bool>(all(vec2<bool>(false, true)), true, true, false)), !any(vec4<bool>(false, select(false, false, false), true, true)));
    global1 = array<vec3<u32>, 26>();
    global1 = array<vec3<u32>, 26>();
    var var_1 = func_1();
    global1 = array<vec3<u32>, 26>();
    let var_2 = Struct_2(func_1(), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(329f, 814f, -419f) - vec3<f32>(-326f, -258f, 3024f)), vec3<f32>(1114f, 1189f, 1670f)), var_1.a))), func_1(), vec4<f32>(159f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(183f))), 191f)), 1427f, 1691f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(min(-1052f, 625f)), _wgslsmith_f_op_f32(max(-1000f, -389f))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global0[_wgslsmith_index_u32(64067u, 17u)], global0[_wgslsmith_index_u32(1800u, 17u)])), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(148f, 1567f), global0[_wgslsmith_index_u32(u_input.d.x, 17u)], false)))))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -533f) * 572f);
    global1 = array<vec3<u32>, 26>();
    var var_4 = 4294967295u > (u_input.d.x ^ abs(u_input.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, 0i, vec3<u32>(62202u, 86755u, countOneBits(88733u) ^ _wgslsmith_sub_u32(59739u, ~u_input.d.x)), global0[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(2214u, u_input.d.x, u_input.d.x), ~global1[_wgslsmith_index_u32(u_input.d.x, 26u)])), 17u)], u_input.a);
}

