struct Struct_1 {
    a: vec4<u32>,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 6>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: f32, arg_3: Struct_1) -> u32 {
    var var_0 = ~arg_3.a.x;
    var var_1 = arg_0;
    let var_2 = all(vec2<bool>(any(select(vec4<bool>(var_1.b, arg_3.b, var_1.b, var_1.b), vec4<bool>(true, var_1.b, true, false), vec4<bool>(arg_3.b, var_1.b, arg_3.b, arg_0.b))), var_1.b));
    let var_3 = abs(~(~(~(-vec3<i32>(u_input.b, -1i, u_input.b)))));
    var_0 = 46967u;
    return 1u;
}

fn func_3(arg_0: vec4<f32>, arg_1: f32, arg_2: bool) -> f32 {
    global0 = array<vec4<bool>, 6>();
    global0 = array<vec4<bool>, 6>();
    var var_0 = u_input.b;
    var var_1 = Struct_1(vec4<u32>(4294967295u, ~(~(~4294967295u)), 10034u, _wgslsmith_sub_u32(_wgslsmith_sub_u32(~u_input.a.x, 1u), _wgslsmith_mod_u32(~u_input.a.x, _wgslsmith_add_u32(u_input.a.x, u_input.a.x)))), all(vec2<bool>(!all(vec3<bool>(arg_2, arg_2, true)), !arg_2 | arg_2)));
    var var_2 = 4294967295u << (var_1.a.x % 32u);
    return -804f;
}

fn func_4(arg_0: i32, arg_1: f32) -> u32 {
    global0 = array<vec4<bool>, 6>();
    var var_0 = Struct_1(abs(_wgslsmith_mult_vec4_u32(~(~u_input.a), ~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.a.x, u_input.a.x, 37905u), vec4<u32>(u_input.a.x, 36u, 8592u, 10002u)))), true || !(!any(vec3<bool>(false, true, true))));
    global0 = array<vec4<bool>, 6>();
    var var_1 = Struct_1(~var_0.a >> (abs(~_wgslsmith_clamp_vec4_u32(var_0.a, u_input.a, var_0.a)) % vec4<u32>(32u)), true);
    var var_2 = Struct_1(vec4<u32>(~var_1.a.x, u_input.a.x, ~4294967295u, _wgslsmith_div_u32(var_0.a.x, ~4294967295u)) | reverseBits(var_1.a), !((true & var_1.b) && false));
    return 1u;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: u32, arg_3: vec2<f32>) -> Struct_1 {
    let var_0 = Struct_1(vec4<u32>(~arg_0.a.x, arg_0.a.x, reverseBits(_wgslsmith_mult_u32(func_2(arg_0, vec2<f32>(937f, arg_3.x), 428f, arg_0), arg_0.a.x)), firstLeadingBit(arg_2)), true);
    let var_1 = var_0;
    global0 = array<vec4<bool>, 6>();
    let var_2 = firstLeadingBit(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a.x, arg_0.a.x, 41557u, var_1.a.x), vec4<u32>(var_0.a.x, arg_0.a.x, arg_0.a.x, u_input.a.x)) ^ (arg_0.a.x & arg_0.a.x), 0u, func_4(countOneBits(u_input.b) >> (_wgslsmith_sub_u32(var_0.a.x, u_input.a.x) % 32u), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(710f, arg_1.x, arg_1.x, -420f)), _wgslsmith_f_op_f32(f32(-1f) * -1059f), true)))));
    global0 = array<vec4<bool>, 6>();
    return var_0;
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> vec4<u32> {
    let var_0 = ~(~1u);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(1171f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(578f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -237f))))), -983f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-605f - 188f), -303f, true)) - -1765f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1438f * _wgslsmith_f_op_f32(func_3(vec4<f32>(348f, -1328f, 117f, 1000f), 1000f, arg_2.b))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(1116f, _wgslsmith_div_f32(-1000f, 210f))), _wgslsmith_f_op_f32(f32(-1f) * -662f))));
    var var_2 = select(select(!vec3<bool>(-370i <= u_input.c, any(vec3<bool>(arg_3.b, false, true)), false & arg_0.b), select(vec3<bool>(true, true, any(vec2<bool>(arg_0.b, arg_2.b))), select(!vec3<bool>(arg_2.b, arg_0.b, arg_0.b), select(vec3<bool>(arg_3.b, arg_0.b, arg_3.b), vec3<bool>(arg_2.b, false, arg_2.b), vec3<bool>(arg_2.b, true, true)), true), false), select(select(!vec3<bool>(arg_2.b, arg_2.b, false), select(vec3<bool>(arg_2.b, arg_2.b, true), vec3<bool>(arg_3.b, true, true), true), true), vec3<bool>(all(vec3<bool>(arg_2.b, false, arg_2.b)), arg_2.b, func_1(arg_3, var_1, u_input.a.x, var_1.wz).b), arg_3.b)), select(select(select(vec3<bool>(false, arg_2.b, arg_2.b), select(vec3<bool>(true, true, false), vec3<bool>(true, arg_0.b, arg_3.b), arg_0.b), select(vec3<bool>(arg_3.b, true, arg_0.b), vec3<bool>(arg_3.b, false, arg_3.b), vec3<bool>(arg_3.b, arg_0.b, true))), select(!vec3<bool>(false, true, arg_0.b), select(vec3<bool>(false, false, arg_2.b), vec3<bool>(arg_0.b, arg_0.b, false), vec3<bool>(arg_3.b, false, arg_0.b)), vec3<bool>(arg_3.b, arg_0.b, arg_0.b)), true), !vec3<bool>(arg_3.b, select(arg_3.b, false, arg_3.b), false), false), select(vec3<bool>(!arg_2.b == true, !all(global0[_wgslsmith_index_u32(9420u, 6u)]), true), select(!vec3<bool>(arg_3.b, false, true), select(!vec3<bool>(arg_2.b, false, arg_3.b), select(vec3<bool>(arg_3.b, arg_2.b, arg_3.b), vec3<bool>(arg_0.b, true, false), vec3<bool>(true, false, arg_2.b)), false), select(vec3<bool>(false, false, arg_2.b), select(vec3<bool>(arg_3.b, arg_0.b, true), vec3<bool>(arg_0.b, true, arg_0.b), vec3<bool>(arg_2.b, true, arg_0.b)), arg_0.b)), vec3<bool>(arg_2.b, arg_2.b, all(select(vec3<bool>(false, true, arg_3.b), vec3<bool>(true, true, true), vec3<bool>(arg_2.b, arg_0.b, arg_2.b))))));
    var_2 = select(vec3<bool>(arg_0.b, !all(var_2.xz), false), vec3<bool>(true, true, true), vec3<bool>(arg_0.b, !arg_0.b, true));
    global0 = array<vec4<bool>, 6>();
    return arg_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0u;
    global0 = array<vec4<bool>, 6>();
    var_0 = 0u >> ((countOneBits(firstLeadingBit(abs(0u))) << (0u % 32u)) % 32u);
    var_0 = reverseBits(u_input.a.x);
    var_0 = u_input.a.x;
    var var_1 = ~(~_wgslsmith_div_vec4_u32(func_5(Struct_1(vec4<u32>(1u, 7884u, 37103u, u_input.a.x), false), 1u, func_1(Struct_1(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u), true), vec4<f32>(166f, -380f, 199f, 441f), u_input.a.x, vec2<f32>(-919f, 1017f)), func_1(Struct_1(u_input.a, true), vec4<f32>(1565f, -1101f, 2620f, -988f), 0u, vec2<f32>(-171f, -1978f))), (vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x) ^ u_input.a) & vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)));
    var var_2 = max(-u_input.b, firstLeadingBit(reverseBits(27947i)));
    var var_3 = Struct_1(u_input.a, all(select(vec4<bool>(false, true, true, true), !global0[_wgslsmith_index_u32(~7796u, 6u)], select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), false))));
    var_0 = var_1.x ^ 0u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-857f, -122f, -1165f, 1556f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-680f + -195f)), true)), _wgslsmith_f_op_f32(trunc(-237f)))), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -566f))), _wgslsmith_f_op_f32(f32(-1f) * -691f)));
}

