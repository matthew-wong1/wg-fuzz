struct Struct_1 {
    a: vec3<i32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>) -> u32 {
    global0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-399f, arg_0.b)), global0.x, arg_0.b)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1391f, arg_0.b, arg_0.b, -466f)))))))));
    let var_0 = arg_0;
    var var_1 = var_0;
    var_1 = Struct_1(vec3<i32>(~_wgslsmith_div_i32(11035i, -7348i) | firstTrailingBit(2147483647i), 27207i, ~var_0.a.x), _wgslsmith_f_op_f32(579f * _wgslsmith_f_op_f32(step(var_0.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, -336f) + _wgslsmith_f_op_f32(exp2(var_0.b)))))));
    let var_2 = Struct_1(abs(var_1.a), -1000f);
    return 771u;
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: u32) -> f32 {
    let var_0 = global0.x;
    let var_1 = vec3<i32>(u_input.b, 28150i, abs(-1i));
    let var_2 = arg_0;
    var var_3 = _wgslsmith_add_i32(i32(-1i) * -arg_0.a.x, 19497i) & _wgslsmith_dot_vec3_i32(abs(~var_1), max(-(vec3<i32>(arg_1, arg_0.a.x, arg_0.a.x) >> (vec3<u32>(arg_3, u_input.c.x, arg_3) % vec3<u32>(32u))), vec3<i32>(~1i, arg_2.a.x, ~var_2.a.x)));
    let var_4 = Struct_1(vec3<i32>(-358i, i32(-1i) * -arg_0.a.x, i32(-1i) * -2147483647i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.b * 728f), -317f)) - global0.x));
    return 2757f;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<u32>) -> bool {
    global0 = vec4<f32>(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + _wgslsmith_div_f32(global0.x, 521f)) - -1113f) + global0.x), global0.x, -136f);
    let var_0 = func_2(Struct_1(_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, arg_0.x, arg_0.x), vec3<i32>(1i, -1i, arg_0.x)) << ((arg_1.xwy >> (u_input.c.wyy % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(vec3<i32>(4759i, 21931i, 2147483647i), vec3<i32>(1i, arg_0.x, 21323i)) >> (u_input.c.yww % vec3<u32>(32u)), select(vec3<i32>(arg_0.x, 0i, arg_0.x), abs(vec3<i32>(arg_0.x, 4582i, -2147483647i)), true)), -1411f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, global0.x, -442f, global0.x), vec4<f32>(global0.x, global0.x, 626f, global0.x)) - vec4<f32>(global0.x, global0.x, -334f, -563f)) - vec4<f32>(global0.x, _wgslsmith_f_op_f32(floor(1804f)), _wgslsmith_div_f32(1930f, 762f), global0.x)) + vec4<f32>(global0.x, -1254f, 1000f, global0.x)));
    global0 = vec4<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(vec3<i32>(2147483647i, u_input.b, u_input.b), -2001f), -1i, Struct_1(vec3<i32>(arg_0.x, u_input.a, 0i), 1206f), 67456u))) - _wgslsmith_f_op_f32(602f + _wgslsmith_f_op_f32(-global0.x)))), global0.x, _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.x - 1000f))))));
    var var_1 = ~_wgslsmith_add_u32(arg_1.x & reverseBits(1u), ~(~(~1u)));
    var var_2 = true;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<f32>(-142f, global0.x, _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.x), global0.x, false)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, -1412f)))), 317f);
    var var_0 = !vec3<bool>(((i32(-1i) * -1i) << (~u_input.c.x % 32u)) < u_input.b, func_1(vec2<i32>(abs(-14332i), u_input.a ^ 3148i), ~vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, u_input.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(159f))) <= _wgslsmith_f_op_f32(min(1496f, _wgslsmith_f_op_f32(-2179f - global0.x))));
    var var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_add_u32(func_2(Struct_1(vec3<i32>(2147483647i, -11078i, -1i), -870f), vec4<f32>(1489f, global0.x, 909f, global0.x)), u_input.c.x), ~_wgslsmith_dot_vec4_u32(vec4<u32>(63755u, u_input.c.x, 0u, u_input.c.x), u_input.c)), u_input.c.x, u_input.c.x), vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(abs(u_input.c), ~vec4<u32>(6121u, u_input.c.x, u_input.c.x, 0u)), _wgslsmith_mod_u32(reverseBits(33769u), 1u)), func_2(Struct_1(vec3<i32>(u_input.b, u_input.b, -42016i), _wgslsmith_div_f32(-378f, global0.x)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -786f, global0.x, 1276f) * vec4<f32>(566f, global0.x, -1550f, global0.x))))), ~(~u_input.c.x)));
    var var_2 = !select(!select(vec4<bool>(var_0.x, true, var_0.x, true), vec4<bool>(false, true, true, var_0.x), var_0.x), !vec4<bool>(var_0.x, var_0.x, !var_0.x, all(vec4<bool>(var_0.x, var_0.x, true, false))), !(!select(vec4<bool>(false, var_0.x, var_0.x, false), vec4<bool>(true, true, var_0.x, false), vec4<bool>(var_0.x, true, false, var_0.x))));
    let var_3 = abs(~(~u_input.c.x) << (46091u % 32u));
    var var_4 = -reverseBits(-vec2<i32>(40600i, 48063i) & (vec2<i32>(78632i, -1i) ^ vec2<i32>(u_input.b, -1i))) | -reverseBits(vec2<i32>(-33313i << (u_input.c.x % 32u), _wgslsmith_sub_i32(u_input.b, -31946i)));
    var var_5 = ~abs(u_input.c.ywz);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(~(u_input.c.x ^ u_input.c.x) << (_wgslsmith_div_u32(1u, var_3) % 32u), countOneBits((var_3 ^ var_5.x) | 1u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.zz) - global0.wx)) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(global0.xx + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0.x, global0.x))))))));
}

