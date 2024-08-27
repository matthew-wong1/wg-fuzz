struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-37644i);

var<private> global1: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec2<u32>) -> i32 {
    global0 = Struct_1(_wgslsmith_mod_i32(12878i, -792i));
    let var_0 = vec3<i32>(global0.a, _wgslsmith_clamp_i32(4744i, 2147483647i, _wgslsmith_mod_i32(u_input.b.x, 1i)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(max(u_input.b.x, -1i), -2147483647i), -vec2<i32>(0i, global0.a) ^ _wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, global0.a), vec2<i32>(2147483647i, 0i))));
    var var_1 = Struct_2(_wgslsmith_sub_u32(abs(arg_0.x << (~1u % 32u)), _wgslsmith_mult_u32(1u, 43286u)), -25134i);
    let var_2 = Struct_1(~(-(-global0.a << (reverseBits(0u) % 32u))));
    global0 = Struct_1(-(~var_0.x));
    return ~(-reverseBits(-max(24774i, -21673i)));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec3<f32>) -> u32 {
    var var_0 = countOneBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(firstLeadingBit(1u), _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 0u, 118045u), reverseBits(vec3<u32>(82713u, 11704u, 4294967295u))), 1u), vec3<u32>(~_wgslsmith_clamp_u32(4294967295u, 1u, 1u), ~10762u, firstLeadingBit(1u))));
    global0 = arg_0;
    let var_1 = -(~46681i);
    var var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(max(-566f, -550f)), _wgslsmith_f_op_f32(step(-1526f, 756f)), arg_1, _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, 138f, 541f, -326f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1274f, -1000f, 120f, -244f))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-846f, arg_1, 782f, arg_2.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.x, -1000f, 662f, 1686f), vec4<f32>(arg_1, -151f, 529f, 132f), vec4<bool>(global1.x, false, false, global1.x)))))));
    var var_3 = arg_0;
    return var_0.x;
}

fn func_2() -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-249f - 727f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(363f)), _wgslsmith_f_op_f32(f32(-1f) * -417f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var var_1 = reverseBits(vec2<u32>(func_4(Struct_1(func_3(vec2<u32>(107408u, 39005u))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(f32(-1f) * -511f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(978f, 494f, -582f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1590f, var_0, -1653f) - vec3<f32>(var_0, 2210f, var_0)))), 81594u));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1400f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, -540f))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0, 441f, -1258f))) - _wgslsmith_div_vec3_f32(vec3<f32>(var_0, var_0, -346f), vec3<f32>(var_0, 643f, var_0)))))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0)) + -1512f)), -295f, var_0));
    global0 = Struct_1(reverseBits(_wgslsmith_div_i32(firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -2147483647i, -1i, global0.a), u_input.b)), global0.a)));
    let var_3 = vec4<bool>(all(vec3<bool>(false, global1.x, _wgslsmith_f_op_f32(1242f - var_0) <= _wgslsmith_f_op_f32(floor(-1459f)))), global1.x, (!global1.x && true) && all(select(select(vec3<bool>(global1.x, global1.x, true), vec3<bool>(false, false, global1.x), false), vec3<bool>(global1.x, global1.x, global1.x), global1.x)), global1.x);
    return var_3;
}

fn func_1(arg_0: bool, arg_1: i32) -> Struct_2 {
    global1 = vec2<bool>(!(any(func_2()) | true), true);
    return Struct_2(~select(_wgslsmith_dot_vec4_u32(vec4<u32>(5927u, 0u, 2833u, 4294967295u), vec4<u32>(460u, 32830u, 0u, 85436u)), 63650u, any(!vec4<bool>(arg_0, true, false, false))), -_wgslsmith_clamp_i32(_wgslsmith_mod_i32(45153i, 20702i), _wgslsmith_add_i32(u_input.b.x, arg_1), global0.a) << (~_wgslsmith_div_u32(~0u, 4294967295u) % 32u));
}

fn func_5(arg_0: u32, arg_1: Struct_2) -> vec3<bool> {
    global0 = Struct_1(global0.a);
    global0 = Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(~u_input.b, vec4<i32>(-9284i, -53442i, global0.a, -7994i) | vec4<i32>(4208i, arg_1.b, u_input.b.x, 0i)), vec4<i32>(_wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(arg_1.b, arg_1.b, -2147483647i, u_input.b.x)), -u_input.a, arg_1.b, _wgslsmith_div_i32(8284i, arg_1.b))), select(~max(vec4<i32>(14537i, 0i, arg_1.b, arg_1.b), u_input.b), ~(~vec4<i32>(0i, u_input.a, 30483i, 20394i)), !(!vec4<bool>(true, true, global1.x, false)))));
    global0 = Struct_1(-firstTrailingBit(_wgslsmith_add_i32(abs(global0.a), global0.a | 42168i)));
    global1 = func_2().yz;
    let var_0 = Struct_2(17727u, _wgslsmith_add_i32(u_input.b.x, _wgslsmith_mult_i32(arg_1.b, -arg_1.b)) ^ 0i);
    return vec3<bool>(all(vec4<bool>(true, global1.x, true, -1i <= (global0.a | 9472i))), max(_wgslsmith_add_u32(abs(52532u), ~arg_0), _wgslsmith_add_u32(arg_0, firstLeadingBit(arg_1.a))) != abs(var_0.a), !global1.x);
}

fn func_6(arg_0: vec4<f32>, arg_1: vec3<bool>, arg_2: vec4<bool>, arg_3: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_mod_i32(arg_3.b, i32(-1i) * -global0.a) << (arg_3.a % 32u);
    let var_1 = arg_3.a & firstTrailingBit(1u);
    var var_2 = arg_3.a;
    var var_3 = func_2().x;
    let var_4 = _wgslsmith_div_vec4_i32(-vec4<i32>(0i, arg_3.b, -func_3(vec2<u32>(arg_3.a, 1u)), min(~global0.a, u_input.b.x)), -vec4<i32>(abs(-174i), -select(var_0, var_0, global1.x), i32(-1i) * -9260i, ~global0.a));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1667f, -1830f, 2507f, -116f) - vec4<f32>(-415f, 913f, -1000f, 1470f))) + vec4<f32>(1289f, -510f, _wgslsmith_f_op_f32(trunc(575f)), 1147f)) - vec4<f32>(606f, 1791f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1351f + 155f), _wgslsmith_f_op_f32(max(1109f, 663f)))), _wgslsmith_f_op_f32(-1190f * _wgslsmith_f_op_f32(-193f - -920f)))), select(!select(select(vec3<bool>(global1.x, false, global1.x), vec3<bool>(false, global1.x, false), false), vec3<bool>(false, global1.x, global1.x), false), func_5(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(32217u, 0u), vec2<u32>(4294967295u, 53159u)), 0u), func_1(true, ~global0.a)), true), func_2(), Struct_2(countOneBits(func_1(func_2().x, 2147483647i).a), -2147483647i));
    let var_1 = vec4<bool>(false, !(!(!(!global1.x))), false, !all(select(!vec3<bool>(false, global1.x, true), !vec3<bool>(global1.x, global1.x, global1.x), func_2().x)));
    var var_2 = max(~u_input.a, ~(~13709i));
    let var_3 = var_1.x;
    let var_4 = ~vec3<u32>(var_0.a, ~(~(~var_0.a)), ~var_0.a);
    var var_5 = true;
    var var_6 = Struct_2(0u, 14657i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-741f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2375f - -1544f) - 1092f), -1789f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(2479f)) + _wgslsmith_f_op_f32(f32(-1f) * -1233f))) - vec4<f32>(_wgslsmith_f_op_f32(922f * _wgslsmith_f_op_f32(min(605f, 618f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1909f + -1080f) + -461f), _wgslsmith_f_op_f32(select(678f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), all(vec4<bool>(false, global1.x, false, var_3)))), _wgslsmith_f_op_f32(f32(-1f) * -1176f))), select((vec3<u32>(5417u, 0u, 1u) & select(var_4, vec3<u32>(157119u, 4294967295u, 4294967295u), true)) | ~(~var_4), ~(~(var_4 << (vec3<u32>(1u, 58149u, 4294967295u) % vec3<u32>(32u)))), true));
}

