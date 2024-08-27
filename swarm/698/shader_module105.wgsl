struct Struct_1 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_2(arg_0: u32, arg_1: vec2<i32>, arg_2: bool) -> f32 {
    return 384f;
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: vec2<u32>) -> f32 {
    var var_0 = select(vec4<bool>(true, arg_0.a, any(!vec4<bool>(arg_2.a, arg_2.a, arg_2.a, arg_2.a)), false), !select(!vec4<bool>(true, true, arg_0.a, arg_2.a), !(!vec4<bool>(true, arg_2.a, true, arg_2.a)), !(!arg_2.a)), !arg_0.a);
    var var_1 = vec3<bool>(any(var_0.xz), arg_0.a, all(select(!select(vec2<bool>(var_0.x, false), var_0.yw, true), !select(var_0.xw, var_0.yx, var_0.wy), select(var_0.xw, select(var_0.zz, var_0.xy, arg_2.a), !var_0.yw))));
    let var_2 = _wgslsmith_f_op_f32(round(-347f));
    var var_3 = arg_0;
    var var_4 = ~(4294967295u >> (~arg_2.b % 32u)) << (arg_2.b % 32u);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(ceil(var_2)));
}

fn func_4(arg_0: f32, arg_1: vec3<f32>) -> Struct_1 {
    let var_0 = Struct_1(!(any(vec3<bool>(false, true, true)) | all(vec2<bool>(true, false))) && all(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), true)), ~29404u);
    var var_1 = max(20703i, 37595i);
    let var_2 = var_0;
    let var_3 = _wgslsmith_dot_vec2_u32(vec2<u32>(1u, max(_wgslsmith_mult_u32(var_2.b, 0u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 1u, 28520u, u_input.c), _wgslsmith_add_vec4_u32(vec4<u32>(50617u, var_0.b, 19254u, var_2.b), vec4<u32>(var_2.b, 1u, 0u, 44149u))))), ~u_input.b);
    var_1 = 1i;
    return Struct_1(!(!var_2.a), _wgslsmith_dot_vec2_u32(min(u_input.b << (_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, 49086u), vec2<u32>(0u, 1u)) % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(max(vec2<u32>(var_0.b, var_3), vec2<u32>(0u, 3385u)), firstTrailingBit(vec2<u32>(var_3, 1u)))), u_input.b));
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    var var_0 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-645f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_2(~0u, vec2<i32>(arg_0.x, 5467i), 1u > u_input.c)), _wgslsmith_f_op_f32(f32(-1f) * -366f), _wgslsmith_f_op_f32(func_3(Struct_1(false, 5650u), 36489u, Struct_1(false, 74535u), u_input.b))), vec3<f32>(_wgslsmith_f_op_f32(trunc(560f)), -1310f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -695f))))));
    return func_4(_wgslsmith_f_op_f32(func_3(func_4(372f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(556f, -1393f, 999f)) + _wgslsmith_div_vec3_f32(vec3<f32>(422f, 770f, -773f), vec3<f32>(1251f, 286f, 2019f)))), var_0.b, func_4(-415f, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(863f, -116f, 259f)))))), u_input.b)), vec3<f32>(498f, -955f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1098f - _wgslsmith_f_op_f32(-1051f - -249f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-357f * 879f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_div_vec2_i32(vec2<i32>(-1i, -_wgslsmith_sub_i32(-1i, -1i)), vec2<i32>(u_input.d, _wgslsmith_clamp_i32(u_input.a << (u_input.e % 32u), -19661i, _wgslsmith_sub_i32(0i, u_input.a)))));
    let var_1 = select(vec2<i32>(firstTrailingBit(u_input.d), countOneBits(-u_input.a)), vec2<i32>(-min(-2147483647i, u_input.a) >> (0u % 32u), select(firstLeadingBit(u_input.d), u_input.a, var_0.a)), !vec2<bool>(all(!vec2<bool>(var_0.a, false)), var_0.a));
    var_0 = func_1(var_1);
    var var_2 = min(vec4<i32>(abs(var_1.x), u_input.a, firstTrailingBit(2147483647i), -12051i), reverseBits(vec4<i32>(max(-2147483647i, u_input.d), 21323i, select(var_1.x, var_1.x, var_0.a), 1i)) | ~reverseBits(vec4<i32>(u_input.a, 61545i, 21826i, 0i) & vec4<i32>(var_1.x, u_input.a, var_1.x, u_input.a)));
    var var_3 = ~var_0.b;
    var_2 = vec4<i32>(-29939i, var_2.x, var_1.x, -_wgslsmith_mod_i32(firstLeadingBit(u_input.a), 46248i)) >> (((((vec4<u32>(41955u, var_0.b, 0u, var_0.b) << (vec4<u32>(var_0.b, 1u, 43327u, u_input.e) % vec4<u32>(32u))) >> (_wgslsmith_div_vec4_u32(vec4<u32>(var_0.b, var_0.b, 4294967295u, u_input.b.x), vec4<u32>(var_0.b, var_0.b, 4294967295u, u_input.e)) % vec4<u32>(32u))) ^ ~(~vec4<u32>(41943u, var_0.b, 0u, 50717u))) | abs(vec4<u32>(~u_input.e, ~0u, 1u, ~u_input.c))) % vec4<u32>(32u));
    let var_4 = func_1(~var_1);
    let x = u_input.a;
    s_output = StorageBuffer(1f, -2147483647i, abs(1u), u_input.b.x);
}

