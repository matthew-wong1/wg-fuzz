struct Struct_1 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: f32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27>;

var<private> global1: vec3<u32> = vec3<u32>(1535u, 55226u, 6905u);

var<private> global2: array<vec2<bool>, 26>;

var<private> global3: array<bool, 32> = array<bool, 32>(true, false, true, false, false, true, false, true, false, false, true, true, false, true, false, false, false, true, false, true, false, false, true, true, true, false, false, true, true, true, false, true);

var<private> global4: array<vec4<f32>, 4>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1() -> Struct_1 {
    global3 = array<bool, 32>();
    return global0[_wgslsmith_index_u32(38696u, 27u)];
}

fn func_3(arg_0: f32) -> Struct_1 {
    global2 = array<vec2<bool>, 26>();
    let var_0 = -768f;
    global2 = array<vec2<bool>, 26>();
    let var_1 = global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_add_u32(global1.x, _wgslsmith_sub_u32(global1.x >> (0u % 32u), global1.x ^ 4294967295u)) | _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(global1.x, 28716u), vec2<u32>(global1.x, global1.x)), global1.zx)), 27u)];
    var var_2 = func_1();
    return global0[_wgslsmith_index_u32(global1.x, 27u)];
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_1) -> f32 {
    var var_0 = func_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-1122f, _wgslsmith_f_op_f32(-194f - arg_3.a))))))));
    let var_1 = func_3(_wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a, 1810f) - -811f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -726f)))))).a;
    var var_2 = arg_1;
    let var_3 = vec2<u32>(0u, 53257u);
    global2 = array<vec2<bool>, 26>();
    return 272f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec3<u32>(_wgslsmith_clamp_u32(~(~min(0u, global1.x)), global1.x, ~15842u), 26613u, ~(~(~43001u)));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(global1.x, 12096u, 39267u, 1u), vec4<u32>(567u, global1.x, 43181u, 70166u)), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 1u, 92857u, 4294967295u), vec4<u32>(global1.x, global1.x, 0u, global1.x))), func_1(), ~(~u_input.a.zx), func_1())) - func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1147f - 139f))).a));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1096f - _wgslsmith_f_op_f32(-826f * _wgslsmith_f_op_f32(-288f + -926f)))), true & any(select(global2[_wgslsmith_index_u32(abs(global1.x), 26u)], select(vec2<bool>(global3[_wgslsmith_index_u32(2637u, 32u)], false), global2[_wgslsmith_index_u32(33123u, 26u)], vec2<bool>(global3[_wgslsmith_index_u32(global1.x, 32u)], false)), any(vec3<bool>(false, false, false)))));
    var_1 = global0[_wgslsmith_index_u32(~23751u, 27u)];
    let var_2 = global0[_wgslsmith_index_u32(global1.x, 27u)];
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1248f, var_2.a, -729f))))))) * _wgslsmith_div_vec3_f32(vec3<f32>(1127f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.a, var_1.a, var_1.b))), func_3(_wgslsmith_f_op_f32(var_1.a - -225f)).a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1462f, var_1.a, -239f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(~global1.yx, max(global1.yx, vec2<u32>(global1.x, 22453u))), global1.x), 4u)]), ~max(firstLeadingBit(vec3<u32>(global1.x, 1u, global1.x)), ~_wgslsmith_div_vec3_u32(vec3<u32>(global1.x, 0u, global1.x), vec3<u32>(1u, global1.x, 1u))), var_1.a, -583i, var_1.a);
}

