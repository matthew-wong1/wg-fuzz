struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1u);

var<private> global1: array<Struct_1, 14>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = any(!select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), any(vec4<bool>(false, false, true, false))), vec3<bool>(false, any(vec3<bool>(false, false, true)), all(vec2<bool>(false, false))), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true))));
    let var_1 = ~abs(~reverseBits(vec3<u32>(u_input.a.x, arg_0.a, 29139u)));
    let var_2 = global0.a > _wgslsmith_dot_vec2_u32(~max(vec2<u32>(u_input.b, var_1.x), vec2<u32>(4294967295u, 53117u) ^ u_input.a), vec2<u32>(~59104u << (~u_input.b % 32u), arg_0.a));
    var var_3 = global1[_wgslsmith_index_u32(firstTrailingBit(1u), 14u)];
    var var_4 = true;
    return 1u;
}

fn func_4(arg_0: Struct_1) -> f32 {
    let var_0 = true || select(!all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), true)), true, !(!all(vec4<bool>(false, true, true, false))));
    var var_1 = ~u_input.d;
    let var_2 = Struct_1(0u);
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -359f))), -1616f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(475f, -2464f)), _wgslsmith_f_op_f32(select(658f, 130f, var_0)), var_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-357f * -1113f) + _wgslsmith_f_op_f32(max(-1483f, -765f))))));
    global0 = Struct_1(global0.a);
    return -923f;
}

fn func_5(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_1) -> u32 {
    global1 = array<Struct_1, 14>();
    global1 = array<Struct_1, 14>();
    let var_0 = Struct_1(global0.a);
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(arg_1.x))));
    let var_2 = ~6847u;
    return countOneBits(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(89197u, _wgslsmith_mult_u32(var_0.a, 0u)), var_2, u_input.e)) ^ select(_wgslsmith_mult_u32(4294967295u, global0.a), 0u, arg_0);
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: f32) -> f32 {
    let var_0 = -vec4<i32>(-2766i, u_input.d, 16460i, firstTrailingBit(_wgslsmith_sub_i32(u_input.c.x, -31994i | u_input.c.x)));
    global0 = Struct_1(_wgslsmith_mult_u32(arg_1.x | 1u, min(firstTrailingBit(arg_1.x), _wgslsmith_mult_u32(1u, 73004u))) >> (~(~select(0u, global0.a, true)) % 32u));
    global1 = array<Struct_1, 14>();
    var var_1 = global1[_wgslsmith_index_u32(func_5(arg_2 < _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_4(global1[_wgslsmith_index_u32(func_3(global1[_wgslsmith_index_u32(global0.a, 14u)]), 14u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) + arg_2))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-396f, 831f)), global1[_wgslsmith_index_u32(arg_1.x, 14u)]), 14u)];
    var_1 = Struct_1(_wgslsmith_div_u32(arg_1.x, _wgslsmith_sub_u32(u_input.a.x, _wgslsmith_mod_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 29220u, arg_1.x, u_input.b), vec4<u32>(global0.a, arg_1.x, 1u, var_1.a))))));
    return arg_2;
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-495f, -1000f), _wgslsmith_f_op_f32(round(174f)))) * _wgslsmith_f_op_f32(select(-709f, _wgslsmith_f_op_f32(func_2(vec3<bool>(false, false, false), u_input.a, -517f)), any(vec2<bool>(true, true))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-276f, 1010f)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -858f))))));
    var var_1 = Struct_1((_wgslsmith_div_u32(arg_1.a, abs(81614u)) ^ ~53839u) << (arg_1.a % 32u));
    var_1 = Struct_1(~37008u);
    var_1 = global1[_wgslsmith_index_u32(var_1.a, 14u)];
    let var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(914f, -156f, -495f) + vec3<f32>(261f, -651f, -580f)), vec3<f32>(529f, 102f, var_0.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(699f, var_0.x, var_0.x) - vec3<f32>(-120f, var_0.x, var_0.x))))))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !all(select(vec2<bool>(func_1(global0.a, global1[_wgslsmith_index_u32(1u, 14u)]), true), !select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true)));
    let var_1 = -1000f;
    var_0 = false != (true || any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), true), vec4<bool>(true, true, true, true))));
    global0 = Struct_1(abs(abs(22236u)));
    let var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c);
}

