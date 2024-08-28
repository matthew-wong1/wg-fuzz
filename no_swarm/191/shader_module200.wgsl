struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    var var_0 = arg_0;
    var_0 = Struct_1(var_0.a, vec2<u32>(var_0.d, _wgslsmith_add_u32(var_0.b.x, (var_0.b.x ^ 34423u) & ~var_0.b.x)), !((false || select(arg_0.c, false, true)) | all(!vec4<bool>(var_0.c, true, true, true))), ~(~var_0.b.x));
    var_0 = arg_0;
    var var_1 = arg_0.a.x;
    let var_2 = vec2<i32>(-u_input.a.x, -19303i);
    return select(select(!vec3<bool>(all(vec4<bool>(var_0.c, true, arg_0.c, true)), var_0.c, !arg_0.c), vec3<bool>(arg_0.c, arg_0.c, var_0.c), !(!(!vec3<bool>(var_0.c, var_0.c, var_0.c)))), vec3<bool>(true, !(_wgslsmith_f_op_f32(-arg_0.a.x) < var_0.a.x), any(vec2<bool>(arg_0.c, arg_0.c))), vec3<bool>(true, any(!vec3<bool>(true, false, var_0.c)), true));
}

fn func_2() -> Struct_1 {
    let var_0 = vec4<bool>(true, true, all(select(vec2<bool>(true, true), vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(true, true), true))), all(vec3<bool>(true, true, true)));
    let var_1 = Struct_1(vec3<f32>(-1000f, _wgslsmith_f_op_f32(floor(2565f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-400f, _wgslsmith_f_op_f32(-1748f - -148f)))), min(_wgslsmith_div_vec2_u32(abs(min(vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 1u))), vec2<u32>(_wgslsmith_clamp_u32(0u, 0u, 89647u), 1u)), abs(~vec2<u32>(1u, 27680u)) ^ firstTrailingBit(vec2<u32>(1u, 1u))), true, 1u);
    let var_2 = _wgslsmith_f_op_vec2_f32(ceil(var_1.a.zx));
    let var_3 = select(!vec3<bool>(!(var_1.c == false), true, (var_1.c || true) & true), select(!func_3(var_1), func_3(var_1), !(!var_0.xyz)), true);
    let var_4 = !select(!var_3.zx, var_0.wz, false);
    return Struct_1(var_1.a, ~vec2<u32>(84606u, firstLeadingBit(var_1.d)), var_4.x, firstTrailingBit(28616u));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<bool>) -> u32 {
    var var_0 = func_2();
    let var_1 = Struct_1(var_0.a, _wgslsmith_div_vec2_u32(var_0.b, ~vec2<u32>(var_0.b.x, var_0.b.x) >> ((max(vec2<u32>(0u, var_0.b.x), vec2<u32>(var_0.d, 101179u)) | ~var_0.b) % vec2<u32>(32u))), _wgslsmith_clamp_u32(func_2().b.x, 20208u & _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b.x, 4294967295u), vec2<u32>(var_0.b.x, var_0.b.x)), var_0.b.x) > ~_wgslsmith_clamp_u32(var_0.b.x >> (var_0.b.x % 32u), var_0.b.x, select(var_0.d, var_0.b.x, true)), _wgslsmith_sub_u32(var_0.b.x, var_0.b.x));
    var_0 = var_1;
    var_0 = var_1;
    let var_2 = var_1;
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(max(-1217f, -416f))), _wgslsmith_f_op_f32(round(-608f)), true)), 1400f, _wgslsmith_f_op_f32(floor(139f))), _wgslsmith_mult_vec2_u32(countOneBits(abs(~vec2<u32>(42718u, 4294967295u))), vec2<u32>(_wgslsmith_div_u32(max(33317u, 59334u), 4294967295u), _wgslsmith_mod_u32(1u, func_1(vec2<bool>(true, false), vec2<bool>(false, true))))), true, 1u);
    let var_1 = func_2().c;
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0.a.x + -1624f), _wgslsmith_f_op_f32(-611f + _wgslsmith_f_op_f32(f32(-1f) * -1030f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) * _wgslsmith_f_op_f32(-var_0.a.x)))), _wgslsmith_sub_vec2_u32(max(~_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.b.x, var_0.b.x), vec2<u32>(25731u, 1u)), var_0.b), vec2<u32>(60260u, var_0.d)), !any(func_3(func_2())), 3755u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_u32(vec4<u32>(func_1(!vec2<bool>(false, var_2.c), !vec2<bool>(var_0.c, var_1)), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_2.b.x, 30485u, 1u), vec3<u32>(8189u, 7767u, 4294967295u)), ~vec3<u32>(var_0.d, 1u, var_0.b.x)), ~(~var_2.d), 1u), firstLeadingBit(vec4<u32>(11178u, var_2.d, 4294967295u, var_0.b.x)) << ((_wgslsmith_div_vec4_u32(vec4<u32>(var_0.b.x, var_2.d, 40065u, var_0.b.x), vec4<u32>(var_2.b.x, 17522u, var_2.b.x, var_2.d)) ^ abs(vec4<u32>(var_0.b.x, 4294967295u, var_2.d, 4294967295u))) % vec4<u32>(32u))));
}

