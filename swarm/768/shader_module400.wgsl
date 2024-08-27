struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: i32,
    d: vec4<f32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_1) -> u32 {
    var var_0 = arg_1.d.b;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1489f - arg_1.d.d.x)))) <= _wgslsmith_f_op_f32(-arg_1.d.a.x);
    let var_2 = 550f;
    var_1 = true && (-(~_wgslsmith_mod_i32(0i, 2147483647i)) != (arg_1.d.c & (i32(-1i) * -1i)));
    var var_3 = arg_2.c;
    return 4294967295u;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(all(vec4<bool>(true, !select(true, false, true), false, true || any(vec4<bool>(false, false, false, false)))), firstTrailingBit(u_input.a), ~_wgslsmith_dot_vec4_i32(vec4<i32>(1i, ~0i, ~2147483647i, 0i), vec4<i32>(max(41034i, 61856i), _wgslsmith_sub_i32(-5298i, -43047i), 2147483647i, 6500i)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-325f, -255f, 374f))), vec4<u32>(u_input.a, u_input.a, firstTrailingBit(~u_input.a), _wgslsmith_sub_u32(func_3(vec3<u32>(u_input.a, u_input.a, u_input.a), Struct_2(true, 8187u, -2147483647i, Struct_1(vec3<f32>(-1441f, 1726f, -456f), vec4<u32>(u_input.a, 51237u, 38638u, u_input.a), -1i, vec4<f32>(-314f, -2833f, 163f, 1642f), vec2<bool>(false, true))), Struct_1(vec3<f32>(-334f, -526f, 1000f), vec4<u32>(0u, 31818u, 59091u, 10989u), -31659i, vec4<f32>(451f, 317f, -1297f, 754f), vec2<bool>(false, true))), u_input.a)), -reverseBits(1i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-748f, -762f, -966f, 436f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1839f, 421f, -682f, 480f) + vec4<f32>(-357f, 2251f, 389f, -1199f)))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(1630f, 762f, -440f, 955f), vec4<f32>(-1476f, 1000f, 615f, -2368f))))), select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))));
    let var_1 = select(~(~(~(~45892u))), 29357u << (u_input.a % 32u), all(vec4<bool>(!(!var_0.a), var_0.d.e.x, true | all(vec3<bool>(false, true, var_0.a)), !all(vec4<bool>(var_0.d.e.x, false, var_0.d.e.x, var_0.a)))));
    let var_2 = var_0;
    let var_3 = ~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, var_1, ~(var_2.b & var_0.b)), vec3<u32>(~(~var_1), 4294967295u, countOneBits(~var_0.b)), ~abs(~vec3<u32>(var_2.b, 4294967295u, 4294967295u)));
    var var_4 = var_2.d.e.x;
    return var_2.d;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: vec4<u32>, arg_3: Struct_1) -> f32 {
    var var_0 = arg_3.d.x;
    var_0 = _wgslsmith_f_op_f32(select(arg_3.d.x, _wgslsmith_f_op_f32(565f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-773f * arg_3.a.x))), !arg_0.x));
    var var_1 = vec2<u32>(func_2().b.x, 16818u);
    var_1 = _wgslsmith_div_vec2_u32(arg_3.b.wx, abs(arg_3.b.wx));
    var_1 = func_2().b.ww;
    return arg_3.d.x;
}

fn func_1(arg_0: bool, arg_1: vec3<i32>) -> Struct_3 {
    var var_0 = 216f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1110f) - _wgslsmith_f_op_f32(func_4(vec3<bool>(arg_0, arg_0, false), Struct_3(arg_0), firstLeadingBit(vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u)), func_2()))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-379f, -750f, true)), _wgslsmith_f_op_f32(func_4(select(vec3<bool>(arg_0, false, false), vec3<bool>(arg_0, arg_0, true), vec3<bool>(arg_0, true, false)), Struct_3(false), vec4<u32>(u_input.a, 1u, 67857u, u_input.a) >> (vec4<u32>(4294967295u, u_input.a, u_input.a, 1u) % vec4<u32>(32u)), func_2())))));
    var var_1 = func_2();
    let var_2 = Struct_2(!all(vec2<bool>(true, true)), 4294967295u, ~arg_1.x, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.a.x, var_1.d.x, 902f))) - var_1.d.zxz)), ~min(var_1.b, vec4<u32>(23416u, u_input.a, 30086u, var_1.b.x) | vec4<u32>(19315u, 0u, u_input.a, 0u)), reverseBits(arg_1.x) ^ (arg_1.x << (_wgslsmith_mod_u32(u_input.a, u_input.a) % 32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.d + _wgslsmith_f_op_vec4_f32(-var_1.d)) - var_1.d), !vec2<bool>(true && var_1.e.x, var_1.e.x)));
    var_1 = func_2();
    return Struct_3(select(var_2.a, true, all(vec4<bool>(true, var_2.a, true, true))));
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: u32) -> i32 {
    return _wgslsmith_add_i32(-func_2().c, -3781i);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(0i, -66038i, 1i), -_wgslsmith_mod_vec3_i32(vec3<i32>(0i, 2147483647i, 2147483647i), vec3<i32>(2147483647i, 16268i, 3585i))), -2147483647i), -_wgslsmith_mod_vec3_i32(vec3<i32>(-54397i, i32(-1i) * -38805i, ~(-46668i)), ~abs(vec3<i32>(-73765i, 2147483647i, 30096i))), _wgslsmith_dot_vec2_i32(select(_wgslsmith_add_vec2_i32(vec2<i32>(17310i, -53349i), vec2<i32>(-22704i, 2680i)), -vec2<i32>(-2147483647i, 9261i), vec2<bool>(true, false)), vec2<i32>(min(0i, 3827i), -2147483647i)) ^ func_5(vec2<f32>(1f, 1f), func_1(any(vec2<bool>(false, true)), vec3<i32>(1i, 1i, 1i)), 1u));
}

