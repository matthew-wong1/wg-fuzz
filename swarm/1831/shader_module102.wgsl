struct Struct_1 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 24>;

var<private> global2: i32;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    var var_0 = ~arg_1.b;
    let var_1 = Struct_1(55992i, _wgslsmith_clamp_i32(u_input.c.x, -(~(-26545i)), global0.a >> (_wgslsmith_mod_u32(_wgslsmith_mod_u32(4294967295u, 1u), countOneBits(u_input.e)) % 32u)));
    var_0 = abs(max(9495i, 49830i) << (_wgslsmith_add_u32(firstLeadingBit(u_input.a.x), u_input.a.x ^ _wgslsmith_add_u32(0u, 4294967295u)) % 32u));
    let var_2 = u_input.a.x;
    let var_3 = -1117f;
    return -arg_1.b;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec2<bool>) -> f32 {
    global1 = array<Struct_1, 24>();
    global0 = Struct_1(u_input.c.x, ~func_2(arg_0, global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(u_input.d, 0u, 35238u), 24u)]));
    return arg_1.x;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = arg_1;
    global2 = 0i;
    let var_1 = ~u_input.a.yy;
    global2 = _wgslsmith_dot_vec2_i32(u_input.c.xz, vec2<i32>(1i, -arg_1.a));
    global2 = _wgslsmith_mod_i32(1i, 27611i);
    return select(!select(select(vec4<bool>(true, false, true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), false), any(vec2<bool>(true, true))), vec4<bool>(true, true, false, any(vec2<bool>(false, false))), true), !(!vec4<bool>(true, true, true, any(vec4<bool>(false, true, true, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1193f)))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-472f - _wgslsmith_div_f32(-1000f, 191f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-684f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(global1[_wgslsmith_index_u32(4294967295u, 24u)], vec3<f32>(-709f, 353f, 1136f), vec2<bool>(true, true))) * _wgslsmith_f_op_f32(f32(-1f) * -801f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-379f + -705f) + _wgslsmith_div_f32(1292f, -917f)))) * -358f);
    let var_1 = u_input.d;
    var var_2 = Struct_1(-11481i, 2147483647i);
    let var_3 = !(!func_3(Struct_1(1i, _wgslsmith_clamp_i32(var_2.b, u_input.c.x, u_input.c.x)), global1[_wgslsmith_index_u32(var_1, 24u)]));
    let var_4 = !var_3;
    var_2 = global1[_wgslsmith_index_u32(~(~(~u_input.a.x)), 24u)];
    var var_5 = Struct_1((~(~u_input.c.x) >> (var_1 % 32u)) & u_input.c.x, global0.a);
    var var_6 = _wgslsmith_clamp_vec4_u32(max(~vec4<u32>(4294967295u, 0u, var_1 ^ 42363u, ~u_input.d), ~(~(~vec4<u32>(u_input.a.x, 108290u, 4294967295u, u_input.d)))), vec4<u32>(var_1, firstTrailingBit(0u), ~(~(~18268u)), ~firstLeadingBit(25018u)), vec4<u32>(u_input.d, min(_wgslsmith_mult_u32(1u, var_1), ~0u), (4294967295u << (u_input.a.x % 32u)) >> ((var_1 ^ var_1) % 32u), ~(~var_1)) << (firstLeadingBit(vec4<u32>(33864u, _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(var_1, u_input.e, 41283u)), 4294967295u, 16630u)) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(round(var_0)), _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(sign(141f)), _wgslsmith_div_f32(var_0, var_0)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, var_0, var_0, var_0))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1060f, var_0, -1331f, var_0) + vec4<f32>(var_0, -1565f, var_0, var_0))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-479f, -786f, var_0, var_0))), any(vec3<bool>(var_4.x, var_4.x || true, true)))), vec2<u32>(0u, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(max(4294967295u, 93527u), 1u), ~abs(19079u), ~_wgslsmith_mod_u32(4294967295u, u_input.d))));
}

