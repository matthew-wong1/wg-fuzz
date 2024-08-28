struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: i32;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: Struct_3, arg_3: bool) -> u32 {
    var var_0 = vec2<u32>(~u_input.a.x, ~reverseBits(~(~arg_1.x)));
    return reverseBits(_wgslsmith_mult_u32(countOneBits(4294967295u), 1u)) << (arg_1.x % 32u);
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<u32>) -> vec2<bool> {
    let var_0 = true;
    var var_1 = Struct_3(u_input.a.x);
    let var_2 = _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, max(~4294967295u, _wgslsmith_mult_u32(u_input.b.x, arg_1.x)), 1u), ~vec3<u32>(1u, abs(1u), 16589u) ^ abs(~(~arg_1)));
    var_1 = Struct_3(select(u_input.d, min(_wgslsmith_clamp_u32(func_3(Struct_3(1u), u_input.b, Struct_3(12845u), true), 1u, _wgslsmith_sub_u32(var_1.a, 26721u)), u_input.a.x | countOneBits(4294967295u)), true));
    let var_3 = Struct_3(~0u);
    return select(vec2<bool>(false, global0.x), vec2<bool>(true, arg_1.x < ~var_1.a), !global0.x | global0.x);
}

fn func_1(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: vec4<f32>) -> i32 {
    global0 = vec4<bool>(false, all(func_2(vec2<i32>(arg_0.b ^ arg_0.b, abs(2147483647i)), vec3<u32>(1u, 810u, 0u ^ u_input.d))), true, false);
    global0 = vec4<bool>(false, global0.x, true, 2147483647i < (~1i & _wgslsmith_div_i32(-1i, arg_0.b)));
    global0 = !select(!(!vec4<bool>(global0.x, false, global0.x, false)), !select(vec4<bool>(true, global0.x, false, global0.x), vec4<bool>(global0.x, global0.x, global0.x, global0.x), false == global0.x), vec4<bool>(any(vec3<bool>(global0.x, false, global0.x)), ~14217i >= min(arg_0.b, arg_0.b), any(select(vec2<bool>(false, false), global0.ww, global0.x)), !any(vec2<bool>(global0.x, false))));
    global0 = !(!select(select(select(vec4<bool>(global0.x, global0.x, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, global0.x, global0.x, true)), vec4<bool>(true, global0.x, global0.x, false), vec4<bool>(false, global0.x, global0.x, global0.x)), select(select(vec4<bool>(global0.x, global0.x, false, global0.x), vec4<bool>(false, global0.x, global0.x, true), global0.x), !vec4<bool>(global0.x, false, global0.x, true), !vec4<bool>(true, global0.x, false, false)), vec4<bool>(all(vec4<bool>(true, true, global0.x, false)), false, true, func_2(vec2<i32>(arg_0.b, -16173i), u_input.b.zyz).x)));
    let var_0 = arg_1.zz;
    return 45095i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(764f, -481f, 1883f, 452f) - vec4<f32>(1000f, 1398f, 1063f, -114f)))))));
    var var_1 = Struct_3(0u);
    var var_2 = func_1(Struct_2(Struct_1(var_0.a), ~abs(_wgslsmith_sub_i32(-35462i, 1i)), Struct_1(var_0.a)), ~vec4<u32>(7364u, 4294967295u, ~var_1.a, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(u_input.b, vec4<u32>(u_input.b.x, 0u, u_input.d, 1u)), vec4<u32>(1u, var_1.a, u_input.c, 67432u))), _wgslsmith_f_op_vec4_f32(round(var_0.a)));
    var var_3 = _wgslsmith_f_op_f32(floor(-1104f));
    let var_4 = 53928u;
    let var_5 = ~min(-2420i, i32(-1i) * -2147483647i) << (u_input.c % 32u);
    var var_6 = Struct_3(4294967295u);
    var var_7 = Struct_1(var_0.a);
    global0 = select(select(vec4<bool>(all(!vec2<bool>(false, global0.x)), global0.x, !global0.x & all(vec4<bool>(global0.x, global0.x, global0.x, global0.x)), func_2(_wgslsmith_add_vec2_i32(vec2<i32>(var_5, -22855i), vec2<i32>(var_5, -1i)), reverseBits(vec3<u32>(0u, 0u, u_input.b.x))).x), vec4<bool>(var_7.a.x <= -556f, _wgslsmith_f_op_f32(floor(var_7.a.x)) > var_0.a.x, true & any(global0.xy), any(vec3<bool>(global0.x, global0.x, true))), !select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(global0.x, false, global0.x, global0.x), true)), select(select(!select(vec4<bool>(true, global0.x, false, global0.x), vec4<bool>(global0.x, global0.x, false, false), global0.x), select(vec4<bool>(global0.x, global0.x, false, global0.x), select(vec4<bool>(true, true, global0.x, false), vec4<bool>(false, global0.x, global0.x, global0.x), vec4<bool>(global0.x, false, false, true)), select(vec4<bool>(global0.x, global0.x, global0.x, false), vec4<bool>(true, global0.x, global0.x, global0.x), true)), vec4<bool>(true, any(vec2<bool>(true, global0.x)), !global0.x, 35401u > u_input.a.x)), vec4<bool>(any(select(vec4<bool>(true, global0.x, global0.x, false), vec4<bool>(false, true, global0.x, false), vec4<bool>(global0.x, global0.x, global0.x, global0.x))), true, false, -17545i == select(var_5, 1i, global0.x)), false & (-var_5 <= ~(-2147483647i))), global0.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.x);
}

