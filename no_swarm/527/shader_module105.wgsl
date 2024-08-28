struct Struct_1 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<u32>,
    d: bool,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(2147483647i, 2147483647i);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec3<u32>) -> f32 {
    global0 = _wgslsmith_add_vec2_i32(vec2<i32>(countOneBits(global0.x), 19027i), u_input.b.yx);
    global0 = _wgslsmith_add_vec2_i32(-vec2<i32>(abs(-2147483647i ^ arg_1.b.x), -arg_1.b.x), ~vec2<i32>(global0.x, 29047i));
    let var_0 = Struct_3(firstLeadingBit(_wgslsmith_add_i32(1i, u_input.b.x)), arg_1);
    var var_1 = var_0;
    let var_2 = 19990i;
    return _wgslsmith_f_op_f32(-var_0.b.a);
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: vec3<i32>, arg_3: Struct_1) -> vec4<bool> {
    let var_0 = vec3<u32>(u_input.c << (u_input.c % 32u), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.c, u_input.c), ~vec2<u32>(u_input.c, 60005u)), ~vec2<u32>(u_input.c, _wgslsmith_mult_u32(u_input.c, 39077u))), 0u);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_0, 508f) * vec3<f32>(859f, -1786f, arg_1))))))) * vec3<f32>(arg_0, _wgslsmith_div_f32(arg_3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * -772f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-845f)))));
    global0 = vec2<i32>(-_wgslsmith_clamp_i32(~(~(-1i)), _wgslsmith_mult_i32(2147483647i, ~u_input.b.x), abs(arg_3.b.x)), min(reverseBits(abs(_wgslsmith_mod_i32(-1i, u_input.a.x))), arg_2.x));
    var var_2 = ~0u;
    let var_3 = arg_3;
    return !vec4<bool>(!all(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true))), !any(select(vec2<bool>(true, false), vec2<bool>(false, false), true)), var_3.a != _wgslsmith_f_op_f32(ceil(190f)), any(vec3<bool>(true, true, true)));
}

fn func_2() -> vec2<i32> {
    global0 = _wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, _wgslsmith_mult_i32(-global0.x, _wgslsmith_add_i32(~0i, global0.x))), ~vec2<i32>(global0.x >> (u_input.c % 32u), global0.x << (u_input.c % 32u)) | u_input.b.yz);
    let var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -414f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1193f), _wgslsmith_f_op_f32(f32(-1f) * -1377f)))), _wgslsmith_mod_vec2_i32(vec2<i32>(~global0.x, u_input.b.x), _wgslsmith_div_vec2_i32(vec2<i32>(~u_input.b.x, 14883i), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.a.x, -1i), vec3<i32>(2147483647i, u_input.a.x, -2147483647i)), _wgslsmith_sub_i32(global0.x, u_input.a.x)))));
    global0 = var_0.b;
    global0 = ~u_input.a.xy;
    var var_1 = Struct_2(-31004i, var_0, vec2<u32>(35677u, 19289u), all(func_4(_wgslsmith_f_op_f32(func_3(vec4<bool>(true, true, true, true), Struct_1(-1598f, vec2<i32>(var_0.b.x, -2147483647i)), ~vec3<u32>(4294967295u, 1u, 68926u))), _wgslsmith_f_op_f32(350f + -1068f), vec3<i32>(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(var_0.b.x, 8805i, global0.x, -42007i)), 22906i, _wgslsmith_dot_vec2_i32(var_0.b, var_0.b)), Struct_1(-229f, -vec2<i32>(-10504i, 2147483647i)))));
    return vec2<i32>(max(-global0.x, _wgslsmith_dot_vec4_i32(-(~u_input.a), select(u_input.a, vec4<i32>(var_0.b.x, u_input.a.x, 0i, u_input.a.x) ^ vec4<i32>(-31756i, 2147483647i, -2147483647i, var_0.b.x), vec4<bool>(var_1.d, false, var_1.d, var_1.d)))), _wgslsmith_dot_vec2_i32(min(var_1.b.b, ~vec2<i32>(-36067i, var_0.b.x)) >> (_wgslsmith_add_vec2_u32(var_1.c & vec2<u32>(u_input.c, 0u), var_1.c) % vec2<u32>(32u)), var_1.b.b));
}

fn func_1(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: vec4<i32>, arg_3: vec4<bool>) -> vec3<f32> {
    global0 = _wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, 1i), -(~func_2()));
    var var_0 = 1736f;
    let var_1 = true;
    var_0 = _wgslsmith_f_op_f32(ceil(arg_0.b.a));
    var var_2 = countOneBits(abs(u_input.c) & u_input.c) << (u_input.c % 32u);
    return vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1111f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.b.a)) + -1359f), arg_0.b.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~vec2<i32>(_wgslsmith_mod_i32(-25375i, 1i), -firstLeadingBit(-u_input.b.x));
    global0 = vec2<i32>(_wgslsmith_clamp_i32(-1i, -38027i, ~min(2147483647i & global0.x, ~global0.x)), select(max(1i, global0.x), 13901i, true) | (_wgslsmith_add_i32(global0.x, -1i) | _wgslsmith_mod_i32(firstTrailingBit(global0.x), abs(1i))));
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(Struct_3(u_input.b.x, Struct_1(130f, vec2<i32>(global0.x, 2147483647i))), u_input.a, -vec4<i32>(20126i, global0.x, global0.x, u_input.b.x) >> (vec4<u32>(u_input.c & u_input.c, 1u, u_input.c, 4294967295u) % vec4<u32>(32u)), select(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(false, true, true)), true))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(184f, _wgslsmith_f_op_f32(step(1000f, 720f)), false)), _wgslsmith_f_op_f32(sign(788f)), -128f), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-192f - -312f) - _wgslsmith_f_op_f32(min(501f, 1436f))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(f32(-1f) * -1594f))));
    let var_1 = false;
    var var_2 = Struct_3(global0.x, Struct_1(407f, ~(min(vec2<i32>(u_input.a.x, -34222i), vec2<i32>(u_input.b.x, u_input.b.x)) & ~vec2<i32>(global0.x, global0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(u_input.c, ~4294967295u, abs(firstTrailingBit(_wgslsmith_sub_u32(66930u, u_input.c)))), abs(21879u));
}

