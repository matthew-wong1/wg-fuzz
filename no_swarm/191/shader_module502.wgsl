struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> Struct_2 {
    global0 = arg_1;
    let var_0 = arg_1;
    var var_1 = Struct_1(_wgslsmith_dot_vec3_i32(firstTrailingBit(-(vec3<i32>(arg_1.a, 7347i, var_0.a) | vec3<i32>(var_0.a, -24604i, 32623i))), -_wgslsmith_sub_vec3_i32(-vec3<i32>(43252i, 2147483647i, var_0.a), vec3<i32>(global0.a, 1714i, 0i) | vec3<i32>(-14450i, arg_1.a, var_0.a))), _wgslsmith_f_op_vec4_f32(-global0.b), !arg_1.c);
    let var_2 = Struct_2(Struct_1(~var_0.a, vec4<f32>(_wgslsmith_f_op_f32(min(121f, _wgslsmith_div_f32(904f, -1589f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-770f - var_0.b.x) * _wgslsmith_div_f32(global0.b.x, var_0.b.x)), -1733f, 1193f), var_1.c));
    var_1 = Struct_1(min(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_2.a.a, -1i, 29685i) << (vec3<u32>(74356u, u_input.a.x, u_input.a.x) % vec3<u32>(32u)), max(vec3<i32>(-9317i, -6012i, var_2.a.a), vec3<i32>(var_0.a, var_0.a, 1i))), _wgslsmith_sub_vec3_i32(vec3<i32>(global0.a, arg_1.a, -1i), vec3<i32>(global0.a, -1i, 0i) ^ vec3<i32>(3554i, 62144i, arg_1.a))), global0.a), global0.b, !(!var_2.a.c));
    return Struct_2(Struct_1((~var_0.a ^ reverseBits(73305i)) & arg_1.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, _wgslsmith_div_f32(global0.b.x, arg_0), -242f, _wgslsmith_f_op_f32(global0.b.x * arg_1.b.x))), _wgslsmith_sub_u32(_wgslsmith_mod_u32(4294967295u, u_input.a.x), ~u_input.a.x) != _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a.x, 4294967295u) << (vec3<u32>(4294967295u, u_input.a.x, u_input.a.x) % vec3<u32>(32u)), ~vec3<u32>(u_input.a.x, 57330u, 1u))));
}

fn func_1() -> i32 {
    global0 = Struct_1(countOneBits(firstTrailingBit(-global0.a)), _wgslsmith_f_op_vec4_f32(-global0.b), global0.c);
    var var_0 = func_2(_wgslsmith_f_op_f32(max(-489f, global0.b.x)), Struct_1(-3449i, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1288f, global0.b.x, -1027f, global0.b.x))), vec4<f32>(global0.b.x, global0.b.x, _wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -747f))), false));
    var var_1 = 683f;
    var var_2 = func_2(_wgslsmith_f_op_f32(floor(global0.b.x)), func_2(_wgslsmith_f_op_f32(-var_0.a.b.x), var_0.a).a).a;
    var_2 = var_0.a;
    return _wgslsmith_sub_i32(-global0.a, _wgslsmith_clamp_i32(countOneBits(~(-13577i)), abs(~(-2147483647i)), 2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -449f;
    var var_1 = global0.c;
    global0 = Struct_1(~firstLeadingBit(~func_1()), _wgslsmith_f_op_vec4_f32(global0.b - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.b.x, global0.b.x, global0.b.x, 2725f)))))), true);
    global0 = Struct_1(18930i, global0.b, global0.c);
    let var_2 = -(~(~(_wgslsmith_add_vec2_i32(vec2<i32>(global0.a, global0.a), vec2<i32>(global0.a, global0.a)) ^ abs(vec2<i32>(global0.a, -1i)))));
    var var_3 = func_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1338f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0 - 1000f), 649f)))), Struct_1(i32(-1i) * -36942i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(global0.b + global0.b), _wgslsmith_f_op_vec4_f32(global0.b - vec4<f32>(var_0, var_0, global0.b.x, -447f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-731f, var_0, -603f, global0.b.x) + vec4<f32>(global0.b.x, -1192f, 375f, global0.b.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(896f, 592f, -577f, var_0)))), 28812u == select(~10422u, _wgslsmith_mod_u32(u_input.a.x, u_input.a.x), any(vec2<bool>(global0.c, global0.c))))).a;
    let x = u_input.a;
    s_output = StorageBuffer(global0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.b.x - -1511f), _wgslsmith_f_op_f32(ceil(var_3.b.x)))))), var_3.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -657f)));
}

