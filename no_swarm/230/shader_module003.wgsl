struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: u32;

var<private> global2: array<u32, 27> = array<u32, 27>(1u, 6028u, 15567u, 52435u, 4294967295u, 4294967295u, 82114u, 0u, 14394u, 50136u, 4294967295u, 4294967295u, 4294967295u, 6484u, 38215u, 0u, 929u, 0u, 56690u, 0u, 42425u, 42979u, 35585u, 67621u, 66645u, 4294967295u, 1u);

var<private> global3: f32 = 559f;

var<private> global4: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(vec2<bool>(false, false)), Struct_2(vec2<bool>(false, true)), Struct_2(vec2<bool>(false, false)), Struct_2(vec2<bool>(false, false)), Struct_2(vec2<bool>(true, true)), Struct_2(vec2<bool>(true, false)), Struct_2(vec2<bool>(true, true)), Struct_2(vec2<bool>(false, false)), Struct_2(vec2<bool>(true, false)), Struct_2(vec2<bool>(true, true)), Struct_2(vec2<bool>(false, true)), Struct_2(vec2<bool>(true, true)), Struct_2(vec2<bool>(false, true)), Struct_2(vec2<bool>(false, false)), Struct_2(vec2<bool>(false, true)), Struct_2(vec2<bool>(false, false)), Struct_2(vec2<bool>(false, false)), Struct_2(vec2<bool>(true, false)), Struct_2(vec2<bool>(true, false)), Struct_2(vec2<bool>(false, false)), Struct_2(vec2<bool>(false, false)), Struct_2(vec2<bool>(false, true)), Struct_2(vec2<bool>(true, true)), Struct_2(vec2<bool>(true, false)), Struct_2(vec2<bool>(true, true)));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec4<u32>) -> bool {
    global0 = false;
    let var_0 = max(_wgslsmith_add_u32(52021u, ~min(abs(global2[_wgslsmith_index_u32(u_input.c.x, 27u)]), _wgslsmith_clamp_u32(u_input.a, global2[_wgslsmith_index_u32(60026u, 27u)], arg_0.x))), _wgslsmith_div_u32(1u, 39643u));
    global4 = array<Struct_2, 25>();
    global2 = array<u32, 27>();
    let var_1 = Struct_1(vec2<f32>(1f, 1f));
    return !(u_input.d <= countOneBits(-2147483647i));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = !(!all(vec4<bool>(func_3(u_input.c), all(vec4<bool>(false, false, false, true)), true, true)));
    var var_1 = arg_1;
    var var_2 = Struct_1(var_1.a);
    var var_3 = Struct_2(!vec2<bool>(u_input.d == abs(u_input.d), var_0));
    let var_4 = !vec4<bool>(true, var_3.a.x, !(!var_3.a.x), !all(vec2<bool>(true, false)));
    return Struct_1(var_2.a);
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: u32) -> vec2<bool> {
    var var_0 = arg_0;
    let var_1 = func_2(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -436f)))), arg_0);
    let var_2 = -326f;
    global4 = array<Struct_2, 25>();
    var var_3 = var_1;
    return select(!select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), select(select(vec2<bool>(true, false), vec2<bool>(false, true), true), vec2<bool>(true, true), all(vec3<bool>(false, false, true))), true), vec2<bool>(true, true), !(all(vec3<bool>(true, true, true)) == any(vec2<bool>(true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -866f;
    global3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(f32(-1f) * -712f)))))));
    var var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0, -274f)) + _wgslsmith_f_op_f32(f32(-1f) * -181f)))), 1344f));
    var var_2 = Struct_2(select(func_1(Struct_1(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(141f, var_0), vec2<f32>(-595f, var_1.a.x)))), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 2147483647i) ^ vec2<i32>(u_input.d, 2147483647i), firstTrailingBit(vec2<i32>(u_input.d, u_input.d))), u_input.a), vec2<bool>(func_1(Struct_1(var_1.a), -1i, 0u ^ global2[_wgslsmith_index_u32(u_input.a, 27u)]).x, func_1(Struct_1(var_1.a), _wgslsmith_div_i32(u_input.d, 1i), ~u_input.c.x).x), true));
    global4 = array<Struct_2, 25>();
    let var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1460f, -321f, -105f)) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(958f, var_1.a.x, var_0)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(493f, 390f, -1000f)))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(946f))), _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(-var_1.a.x))), 1000f)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -488f), -1588f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1603f) * -736f)));
    var var_4 = _wgslsmith_mod_u32(~u_input.c.x, _wgslsmith_dot_vec4_u32(~u_input.c ^ ~vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 27u)], 27u)], 99175u, u_input.c.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 27u)], 27u)], 27u)]), u_input.c)) >> (~select(~u_input.a, 4294967295u, var_2.a.x) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(global2[_wgslsmith_index_u32(~(global2[_wgslsmith_index_u32(u_input.a, 27u)] >> (~0u % 32u)), 27u)], 43988u, ~58020u));
}

