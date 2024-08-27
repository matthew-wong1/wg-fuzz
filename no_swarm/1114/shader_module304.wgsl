struct Struct_1 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: bool,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
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

var<private> global0: array<vec4<f32>, 26>;

var<private> global1: Struct_1;

var<private> global2: vec2<u32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -1323f))))))));
    var var_1 = var_0;
    global0 = array<vec4<f32>, 26>();
    var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(1665f))));
    global0 = array<vec4<f32>, 26>();
    return global1.d.xy;
}

fn func_2() -> vec2<u32> {
    var var_0 = ~func_3(select(!vec3<bool>(false, global1.c, true), !vec3<bool>(global1.c, global1.c, false), vec3<bool>(false, global1.c, global1.c)), Struct_1(vec4<u32>(global1.d.x, global1.b.x, global1.d.x, global1.d.x), vec2<u32>(0u, global1.b.x), true, max(vec4<u32>(1u, global2.x, 68433u, 1u), vec4<u32>(47171u, global1.b.x, u_input.b, global1.a.x))), Struct_1(global1.a, global1.d.wx, all(vec4<bool>(global1.c, global1.c, global1.c, global1.c)), global1.a), Struct_1(global1.a, countOneBits(vec2<u32>(u_input.b, global2.x)), false, vec4<u32>(u_input.b, 62798u, global1.d.x, 0u) << (vec4<u32>(global1.d.x, u_input.b, u_input.b, 0u) % vec4<u32>(32u)))) ^ global1.a.zy;
    let var_1 = (i32(-1i) * -(~u_input.a.x)) <= u_input.a.x;
    var var_2 = 7029u;
    global2 = ~countOneBits(vec2<u32>(_wgslsmith_add_u32(0u, 27795u), _wgslsmith_clamp_u32(global1.d.x, global1.d.x, global2.x)) | _wgslsmith_mod_vec2_u32(global1.b, ~vec2<u32>(0u, global2.x)));
    global2 = _wgslsmith_sub_vec2_u32(~(global1.b | (~global1.a.yw >> (firstTrailingBit(vec2<u32>(46951u, 0u)) % vec2<u32>(32u)))), ~_wgslsmith_mod_vec2_u32(vec2<u32>(44400u, ~global2.x), vec2<u32>(~global1.d.x, 1u)));
    return global1.b;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: bool, arg_3: u32) -> u32 {
    var var_0 = abs(-_wgslsmith_add_i32(_wgslsmith_add_i32(-u_input.a.x, u_input.a.x), -75277i));
    let var_1 = ~arg_3;
    var var_2 = 41268u;
    global2 = (firstTrailingBit(arg_0.a.yx) & ~arg_0.b) << (max(firstTrailingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(var_1, 0u), ~vec2<u32>(4294967295u, 0u))), _wgslsmith_clamp_vec2_u32(func_2(), countOneBits(global1.d.zw), abs(arg_0.d.zz))) % vec2<u32>(32u));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.yzw), _wgslsmith_f_op_vec3_f32(-arg_1.xxy)) + vec3<f32>(-1436f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1.x - arg_1.x))), _wgslsmith_f_op_f32(622f + -837f))));
    return func_2().x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(global1.a, ~(~(~vec2<u32>(u_input.b, 4294967295u) | (vec2<u32>(32028u, 82349u) >> (global1.b % vec2<u32>(32u))))), all(!(!select(vec2<bool>(false, global1.c), vec2<bool>(global1.c, true), true))), min(vec4<u32>(global1.d.x, max(~u_input.b, global1.d.x), ~u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(global2.x, 1u), global1.a.ww)), _wgslsmith_clamp_vec4_u32(global1.a, ~_wgslsmith_sub_vec4_u32(global1.a, global1.d), global1.d)));
    var var_1 = vec3<bool>(true, false, global1.c);
    global1 = var_0;
    let var_2 = var_0;
    global0 = array<vec4<f32>, 26>();
    var var_3 = ~func_1(var_0, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, -1645f, -1927f, -1176f), vec4<f32>(-806f, -458f, -736f, -1000f), !vec4<bool>(var_1.x, true, var_2.c, global1.c))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -505f, 745f, -1723f))), select(vec4<bool>(var_0.c, false, global1.c, false), !vec4<bool>(false, false, var_2.c, false), select(vec4<bool>(var_2.c, true, global1.c, var_2.c), vec4<bool>(var_2.c, var_0.c, false, false), vec4<bool>(false, global1.c, false, var_1.x))))), var_0.c, ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(19929u, 40195u, 0u, 52489u), var_2.a)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_div_u32(var_0.a.x << (global2.x % 32u), abs(u_input.b))));
}

