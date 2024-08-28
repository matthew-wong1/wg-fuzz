struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: bool,
    d: vec4<bool>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec4<f32>,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, vec3<f32>(-615f, 1818f, 1317f), false, vec4<bool>(true, false, false, true), 1u);

var<private> global1: array<Struct_1, 2>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1) -> u32 {
    let var_0 = vec3<bool>(true, !((_wgslsmith_mod_u32(0u, u_input.b) == ~arg_2.e) | !all(vec2<bool>(false, true))), all(select(!vec4<bool>(arg_1.x, arg_0.d.x, arg_0.d.x, arg_2.d.x), select(arg_2.d, !vec4<bool>(true, false, false, arg_1.x), true), any(!arg_0.d.xz))));
    var var_1 = _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(~4294967295u, arg_0.e << (arg_2.e % 32u)), _wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 69704u), vec2<u32>(global0.e, 1u)), abs(vec2<u32>(u_input.b, 8457u)))) | abs(abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(global0.e, global0.e), vec2<u32>(global0.e, 4294967295u), vec2<u32>(arg_2.e, 4294967295u)))), vec2<u32>(~(~min(arg_2.e, 21734u)), _wgslsmith_div_u32(0u, 1u << (~u_input.b % 32u))));
    global0 = arg_2;
    global1 = array<Struct_1, 2>();
    global1 = array<Struct_1, 2>();
    return min(~max(75317u, 18989u), 4909u);
}

fn func_2(arg_0: bool, arg_1: f32) -> vec2<bool> {
    var var_0 = !global0.a;
    var_0 = !(true && arg_0);
    let var_1 = Struct_1(((~global0.e | u_input.b) & func_3(global1[_wgslsmith_index_u32(u_input.b, 2u)], !global0.d, global1[_wgslsmith_index_u32(1u, 2u)])) <= global0.e, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(select(483f, arg_1, true)), _wgslsmith_f_op_f32(round(199f)), _wgslsmith_f_op_f32(-1314f * arg_1)), vec3<f32>(-136f, _wgslsmith_f_op_f32(f32(-1f) * -1834f), _wgslsmith_f_op_f32(1329f * 409f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(global0.b.x, 520f, 292f), global0.b), _wgslsmith_f_op_vec3_f32(sign(global0.b)))))), global0.a, global0.d, ~_wgslsmith_div_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(21348u, 0u), 17347u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 94837u, u_input.b), vec3<u32>(0u, u_input.b, u_input.b)) & global0.e));
    let var_2 = Struct_1(true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.b * vec3<f32>(_wgslsmith_f_op_f32(ceil(arg_1)), _wgslsmith_f_op_f32(global0.b.x - -169f), global0.b.x)) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(468f, global0.b.x, arg_1))))), !(!(!global0.d.x) || arg_0), vec4<bool>(any(vec2<bool>(true, true)) && var_1.c, true, arg_0, false), global0.e);
    let var_3 = var_2;
    return select(!(!select(var_3.d.yw, vec2<bool>(true, true), global0.d.wz)), vec2<bool>(var_3.e > 4029u, var_2.d.x), var_2.d.zw);
}

fn func_1(arg_0: vec3<u32>, arg_1: u32) -> bool {
    global0 = global1[_wgslsmith_index_u32(~1u, 2u)];
    var var_0 = 210f;
    let var_1 = global1[_wgslsmith_index_u32(arg_1, 2u)];
    let var_2 = select(~vec2<u32>(abs(var_1.e), global0.e) & arg_0.yy, ~(~(~vec2<u32>(global0.e, 16499u))), !select(var_1.d.wy, func_2(global0.a, 2308f), !select(false, true, true)));
    var var_3 = var_1.d.yyx;
    return var_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(func_1(_wgslsmith_add_vec3_u32((vec3<u32>(1u, u_input.b, u_input.b) << (vec3<u32>(1u, 62561u, 24103u) % vec3<u32>(32u))) ^ select(vec3<u32>(0u, global0.e, global0.e), vec3<u32>(global0.e, 66313u, u_input.b), global0.d.x), vec3<u32>(~54275u, 4294967295u, _wgslsmith_div_u32(10968u, u_input.b))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(37742u, 41292u, 90300u, 1u), vec4<u32>(90227u, u_input.b, u_input.b, 4294967295u) ^ vec4<u32>(1u, 0u, u_input.b, u_input.b))), vec3<f32>(global0.b.x, -1983f, _wgslsmith_f_op_f32(floor(global0.b.x))), true, !select(!select(vec4<bool>(true, global0.c, global0.c, false), global0.d, global0.d), !(!vec4<bool>(global0.a, false, false, global0.c)), select(!vec4<bool>(global0.d.x, true, global0.c, global0.a), global0.d, global0.c | global0.c)), 8406u);
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1053f, _wgslsmith_div_f32(global0.b.x, _wgslsmith_f_op_f32(abs(-294f))), var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.b.x, _wgslsmith_f_op_f32(floor(global0.b.x))))));
    let var_2 = var_0;
    let var_3 = var_0;
    var var_4 = 15660u & ~abs(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_3.e, var_0.e, 44771u), vec4<u32>(u_input.b, 69610u, global0.e, global0.e)));
    global0 = global1[_wgslsmith_index_u32(~var_0.e ^ ~max(1u, min(51287u, ~global0.e)), 2u)];
    let var_5 = Struct_1(var_2.c, _wgslsmith_f_op_vec3_f32(abs(var_0.b)), global0.a, select(select(global0.d, !var_0.d, true), select(var_2.d, vec4<bool>(var_3.c | false, any(vec3<bool>(global0.c, var_3.a, var_0.c)), var_3.c, var_0.a & true), true || global0.d.x), func_2(global0.c, var_0.b.x).x), ~(~(~countOneBits(1u))));
    let var_6 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_3.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer((vec4<i32>(u_input.c, -30857i, -1i, u_input.c) << (vec4<u32>(1u, ~4294967295u, 38904u, _wgslsmith_add_u32(u_input.b, global0.e)) % vec4<u32>(32u))) | max(firstLeadingBit(vec4<i32>(4086i, u_input.a, 12618i, -2147483647i)) | ~vec4<i32>(u_input.a, -1i, u_input.a, -2147483647i), firstTrailingBit(vec4<i32>(u_input.a, u_input.c, 37503i, u_input.a)) << (~vec4<u32>(8327u, 41245u, 1u, var_2.e) % vec4<u32>(32u))), vec4<u32>(1u, u_input.b, ~_wgslsmith_clamp_u32(37732u, reverseBits(var_0.e), var_0.e), 37789u), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.b.x)) + var_0.b.x), _wgslsmith_f_op_f32(step(1000f, var_6)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.b.x))), _wgslsmith_f_op_f32(round(var_6))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-601f, -1083f, var_3.b.x, 890f), var_1, global0.d.x)))))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.b.x)) * 1f), 1000f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), -1i);
}

