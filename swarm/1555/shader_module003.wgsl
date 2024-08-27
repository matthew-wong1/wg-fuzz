struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 6>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: u32) -> bool {
    let var_0 = Struct_1(max(1u, global0.a), select(vec2<bool>(true, arg_1), arg_0.b, global0.b), -458f);
    var var_1 = 28196u << (global0.a % 32u);
    var_1 = global0.a;
    var var_2 = ~(~vec3<u32>(var_0.a, ~1u, var_0.a)) & vec3<u32>(_wgslsmith_add_u32(1u, 1u), arg_2 & countOneBits(~global0.a), firstTrailingBit(abs(92750u)) | _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, arg_0.a, var_0.a, 6016u)), min(vec4<u32>(65140u, 0u, global0.a, 29325u), vec4<u32>(global0.a, arg_2, var_0.a, 46452u))));
    global0 = var_0;
    return arg_0.b.x;
}

fn func_2(arg_0: bool) -> bool {
    global1 = array<Struct_1, 6>();
    let var_0 = select(vec3<bool>(any(select(vec3<bool>(true, false, false), !vec3<bool>(global0.b.x, global0.b.x, global0.b.x), arg_0 & global0.b.x)), func_3(Struct_1(_wgslsmith_mult_u32(global0.a, 1u), !global0.b, -607f), false, ~global0.a), false), select(!select(!vec3<bool>(global0.b.x, false, arg_0), vec3<bool>(global0.b.x, true, arg_0), 2147483647i < u_input.b), vec3<bool>(true, u_input.a <= ~u_input.c, true), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global0.c, 1226f))) == global0.c), !select(false, true, arg_0));
    let var_1 = vec4<bool>(var_0.x, any(select(vec2<bool>(func_3(global1[_wgslsmith_index_u32(global0.a, 6u)], false, global0.a), global0.b.x), !vec2<bool>(global0.b.x, false), !global0.b.x & !var_0.x)), var_0.x, arg_0);
    var var_2 = vec3<f32>(-2453f, _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c) + global0.c))), _wgslsmith_f_op_f32(round(global0.c)));
    let var_3 = Struct_1(select(1u, _wgslsmith_mod_u32(~4294967295u, global0.a), false), vec2<bool>(all(select(select(vec2<bool>(false, global0.b.x), vec2<bool>(true, true), vec2<bool>(var_0.x, global0.b.x)), !var_1.xy, vec2<bool>(true, false))), false), _wgslsmith_f_op_f32(ceil(global0.c)));
    return all(select(var_0, !select(var_1.wwy, !var_1.xyy, var_3.b.x | global0.b.x), var_0));
}

fn func_1() -> vec2<bool> {
    return select(!select(vec2<bool>(any(vec4<bool>(global0.b.x, false, true, global0.b.x)), false), !vec2<bool>(true, global0.b.x), !(global0.c < -683f)), vec2<bool>((0i != -u_input.a) | select(false, global0.b.x, !global0.b.x), true), func_2(global0.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(~global0.a >> (~global0.a % 32u), !func_1(), _wgslsmith_f_op_f32(max(-966f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(548f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -418f) + _wgslsmith_div_f32(-1168f, 132f)))))));
    global1 = array<Struct_1, 6>();
    var var_0 = select(abs(abs((vec2<u32>(global0.a, 116044u) ^ vec2<u32>(10822u, 67099u)) << (~vec2<u32>(8869u, global0.a) % vec2<u32>(32u)))), vec2<u32>(global0.a, ~11231u) & (abs(~vec2<u32>(53221u, global0.a)) << (abs(min(vec2<u32>(global0.a, 44047u), vec2<u32>(4294967295u, global0.a))) % vec2<u32>(32u))), func_3(global1[_wgslsmith_index_u32(global0.a, 6u)], all(select(vec3<bool>(true, true, true), !vec3<bool>(global0.b.x, false, false), select(vec3<bool>(global0.b.x, false, global0.b.x), vec3<bool>(false, global0.b.x, false), vec3<bool>(false, global0.b.x, global0.b.x)))), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_add_u32(1u, global0.a), ~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.a, global0.a, global0.a), vec3<u32>(global0.a, global0.a, global0.a)), _wgslsmith_dot_vec4_u32(vec4<u32>(global0.a, 1u, global0.a, global0.a), vec4<u32>(13304u, global0.a, 1u, global0.a))), abs(~vec4<u32>(1u, 0u, 3318u, 10169u)))));
    let var_1 = global0.b;
    let var_2 = _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(min(firstTrailingBit(vec2<i32>(1i, u_input.a)), _wgslsmith_mod_vec2_i32(vec2<i32>(1i, u_input.b), vec2<i32>(u_input.a, -30796i))), -firstTrailingBit(vec2<i32>(u_input.b, u_input.a))) >> (vec2<u32>(firstLeadingBit(4294967295u), _wgslsmith_clamp_u32(global0.a, 4294967295u, var_0.x)) % vec2<u32>(32u)), select(countOneBits(vec2<i32>(-u_input.c, u_input.b)), ~abs(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, 3122i), vec2<i32>(u_input.c, u_input.b))), select(global0.b.x, func_2(!var_1.x), var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-global0.c), global0.c, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(global0.c + global0.c), _wgslsmith_f_op_f32(-global0.c), global0.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global0.c)), _wgslsmith_f_op_f32(sign(global0.c)))))));
}

