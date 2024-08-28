struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
    c: vec4<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_3,
    c: u32,
}

struct Struct_5 {
    a: bool,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
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

var<private> global0: array<Struct_4, 20> = array<Struct_4, 20>(Struct_4(vec4<bool>(true, true, false, true), Struct_3(vec2<i32>(15633i, -1i)), 48568u), Struct_4(vec4<bool>(false, false, true, false), Struct_3(vec2<i32>(1i, -64202i)), 0u), Struct_4(vec4<bool>(false, false, true, true), Struct_3(vec2<i32>(-49437i, 70351i)), 46876u), Struct_4(vec4<bool>(true, false, true, true), Struct_3(vec2<i32>(2147483647i, 0i)), 4294967295u), Struct_4(vec4<bool>(false, true, false, true), Struct_3(vec2<i32>(-1i, 2147483647i)), 26372u), Struct_4(vec4<bool>(false, true, false, true), Struct_3(vec2<i32>(-27240i, 36356i)), 2175u), Struct_4(vec4<bool>(true, false, false, true), Struct_3(vec2<i32>(-1i, 87966i)), 0u), Struct_4(vec4<bool>(true, true, false, false), Struct_3(vec2<i32>(-13986i, i32(-2147483648))), 1u), Struct_4(vec4<bool>(true, true, false, false), Struct_3(vec2<i32>(-1i, -49487i)), 42029u), Struct_4(vec4<bool>(true, true, false, true), Struct_3(vec2<i32>(i32(-2147483648), 2147483647i)), 54299u), Struct_4(vec4<bool>(false, true, true, false), Struct_3(vec2<i32>(4337i, 1i)), 0u), Struct_4(vec4<bool>(false, false, false, true), Struct_3(vec2<i32>(5518i, 37378i)), 70515u), Struct_4(vec4<bool>(true, true, false, true), Struct_3(vec2<i32>(10158i, -1i)), 7531u), Struct_4(vec4<bool>(true, false, true, true), Struct_3(vec2<i32>(2147483647i, 9508i)), 600u), Struct_4(vec4<bool>(false, true, false, true), Struct_3(vec2<i32>(2147483647i, 2147483647i)), 0u), Struct_4(vec4<bool>(true, true, true, false), Struct_3(vec2<i32>(2147483647i, 0i)), 67647u), Struct_4(vec4<bool>(true, false, false, true), Struct_3(vec2<i32>(-1i, -31436i)), 1u), Struct_4(vec4<bool>(false, false, false, true), Struct_3(vec2<i32>(-24169i, i32(-2147483648))), 1u), Struct_4(vec4<bool>(true, true, true, true), Struct_3(vec2<i32>(1i, 30665i)), 4294967295u), Struct_4(vec4<bool>(false, true, true, false), Struct_3(vec2<i32>(i32(-2147483648), 0i)), 17758u));

var<private> global1: vec2<f32>;

var<private> global2: array<vec4<bool>, 27>;

var<private> global3: array<Struct_4, 26>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<i32>, arg_2: vec4<bool>) -> vec4<bool> {
    var var_0 = reverseBits(i32(-1i) * -2836i);
    let var_1 = Struct_3(vec2<i32>(arg_1.x, ~arg_1.x));
    let var_2 = Struct_1(any(!vec3<bool>(any(arg_0.zz), true, any(vec4<bool>(arg_0.x, arg_0.x, true, true)))));
    global3 = array<Struct_4, 26>();
    var var_3 = -(~(~(-(vec3<i32>(arg_1.x, arg_1.x, -20466i) ^ vec3<i32>(-24015i, 23066i, u_input.c)))));
    return !vec4<bool>(true, !var_2.a, any(select(global2[_wgslsmith_index_u32(42083u, 27u)], vec4<bool>(false, arg_2.x, arg_0.x, var_2.a), vec4<bool>(true, var_2.a, var_2.a, arg_0.x))), (arg_1.x ^ 2147483647i) >= -2147483647i);
}

fn func_2() -> vec2<f32> {
    var var_0 = vec4<bool>(true, false, true, !(!all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true))));
    var_0 = !func_3(select(vec3<bool>(u_input.b.x <= u_input.b.x, var_0.x, var_0.x), vec3<bool>(true, true, true), all(vec4<bool>(var_0.x, var_0.x, false, true))), -(~vec2<i32>(-18227i, u_input.c)), select(!(!vec4<bool>(var_0.x, true, var_0.x, false)), global2[_wgslsmith_index_u32(select(4294967295u, ~u_input.a.x, false), 27u)], var_0.x));
    global1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-457f + 417f), _wgslsmith_f_op_f32(f32(-1f) * -211f))))));
    var var_1 = global0[_wgslsmith_index_u32(1u | countOneBits(u_input.a.x), 20u)];
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(630f, -1000f, global1.x))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(-403f, global1.x, global1.x), vec3<f32>(global1.x, 1073f, 1582f)))), var_1.a.x)) - vec3<f32>(_wgslsmith_f_op_f32(trunc(global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.x, -1154f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)))) * vec3<f32>(484f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(223f))))), global1.x));
    return _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_2.x, global1.x)));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> vec2<f32> {
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-865f, arg_2, arg_1.a)) * arg_2)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1132f, global1.x)) * vec2<f32>(493f, global1.x)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2()), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.x, 1079f), vec2<f32>(-1000f, 170f), arg_3.a))))));
    global2 = array<vec4<bool>, 27>();
    global2 = array<vec4<bool>, 27>();
    global0 = array<Struct_4, 20>();
    var var_0 = global2[_wgslsmith_index_u32(u_input.a.x, 27u)];
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-634f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.x)))), 1f));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, global1.x)) - _wgslsmith_f_op_vec2_f32(func_1(Struct_3(vec2<i32>(-1491i, 2147483647i)), Struct_1(true), 423f, Struct_1(false)))))))));
    var var_0 = _wgslsmith_mult_u32(1u, select(u_input.b.x << (45041u % 32u), ~_wgslsmith_mult_u32(min(u_input.a.x, u_input.a.x), _wgslsmith_mod_u32(u_input.a.x, u_input.b.x)), !(!(global1.x < -1474f))));
    var var_1 = firstLeadingBit(_wgslsmith_mod_vec3_u32(~u_input.b.zxx, _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, _wgslsmith_div_u32(4294967295u, 3321u), u_input.b.x >> (40474u % 32u)), vec3<u32>(~0u, abs(1u), 4294967295u))));
    var var_2 = _wgslsmith_f_op_f32(-global1.x);
    var var_3 = true & func_3(func_3(vec3<bool>(true, true, true), reverseBits(~vec2<i32>(-2370i, -2147483647i)), global2[_wgslsmith_index_u32(14108u, 27u)]).zyy, vec2<i32>(2147483647i, ~(-15586i)), select(vec4<bool>(true, true, true, true), global2[_wgslsmith_index_u32(47714u, 27u)], global2[_wgslsmith_index_u32(min(u_input.b.x, var_1.x) | u_input.b.x, 27u)])).x;
    global0 = array<Struct_4, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i);
}

