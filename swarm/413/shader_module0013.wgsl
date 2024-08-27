struct Struct_1 {
    a: f32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 26> = array<u32, 26>(15748u, 48164u, 1u, 38779u, 45855u, 1u, 4294967295u, 4294967295u, 1u, 4294967295u, 26370u, 30130u, 1u, 4294967295u, 0u, 25081u, 38974u, 4294967295u, 4294967295u, 103153u, 6745u, 0u, 4294967295u, 117277u, 1u, 4294967295u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: bool) -> vec4<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(select(-1216f, _wgslsmith_f_op_f32(1f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -162f), _wgslsmith_f_op_f32(min(358f, 145f)))), arg_0)), u_input.a);
    let var_1 = arg_0;
    var var_2 = var_0.a;
    global0 = array<u32, 26>();
    var_2 = _wgslsmith_f_op_f32(ceil(var_0.a));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a, _wgslsmith_f_op_f32(exp2(var_0.a)), var_0.a, 147f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-222f, -273f, -1917f, -1827f)))) - vec4<f32>(_wgslsmith_f_op_f32(max(var_0.a, -586f)), var_0.a, _wgslsmith_f_op_f32(-var_0.a), 1000f)), var_1)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1) -> vec2<i32> {
    global0 = array<u32, 26>();
    global0 = array<u32, 26>();
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_vec4_f32(func_2(!(arg_1.a > -1350f))).x)), arg_1.a));
    var_0 = _wgslsmith_f_op_f32(abs(517f));
    global0 = array<u32, 26>();
    return -u_input.c.yx >> (~abs(~_wgslsmith_div_vec2_u32(arg_1.b.xx, vec2<u32>(arg_1.b.x, 0u))) % vec2<u32>(32u));
}

fn func_1(arg_0: u32) -> f32 {
    let var_0 = 614f;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_f32(var_0 + 931f) <= -1209f))) - _wgslsmith_f_op_vec4_f32(func_2(all(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false)) || (all(vec4<bool>(false, false, false, false)) | true))));
    global0 = array<u32, 26>();
    let var_2 = func_3(vec3<u32>(arg_0, _wgslsmith_clamp_u32(_wgslsmith_div_u32(~0u, ~arg_0), _wgslsmith_mod_u32(_wgslsmith_sub_u32(1u, arg_0), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(38348u, 26u)], 26u)] & 0u), 4294967295u), _wgslsmith_sub_u32(~global0[_wgslsmith_index_u32(arg_0, 26u)], max(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0, 26u)], 26u)], 4294967295u)) | _wgslsmith_mult_u32(u_input.d, u_input.a.x << (arg_0 % 32u))), Struct_1(_wgslsmith_f_op_f32(abs(var_0)), _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 7011u, 0u, u_input.d), u_input.a), u_input.a)));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-1792f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-466f - var_1.x))) * _wgslsmith_f_op_f32(f32(-1f) * -657f)))), u_input.a);
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-917f + var_3.a)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_3.a))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_u32(0u, 4294967295u);
    global0 = array<u32, 26>();
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(func_1(1u)), _wgslsmith_f_op_f32(floor(2238f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1529f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(710f * -1110f), -911f)))));
    var var_2 = true;
    var var_3 = vec3<u32>(firstTrailingBit(u_input.d), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~_wgslsmith_div_u32(countOneBits(72083u), 1u), 1u), 26u)], var_0);
    let x = u_input.a;
    s_output = StorageBuffer(1i & _wgslsmith_mod_i32(u_input.c.x, _wgslsmith_dot_vec4_i32(~u_input.b, -vec4<i32>(u_input.c.x, u_input.b.x, u_input.e.x, u_input.e.x))), vec2<u32>(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_3.x, var_3.x, 0u), vec3<u32>(1u, global0[_wgslsmith_index_u32(var_0, 26u)], 0u))), 1u), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_div_f32(-281f, -309f))))));
}

