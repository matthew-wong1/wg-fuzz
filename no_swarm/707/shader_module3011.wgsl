struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: vec4<f32>,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec4<u32>, arg_3: Struct_1) -> u32 {
    global0 = arg_3;
    global0 = Struct_1(vec4<i32>(-2147483647i, -1i, arg_0.a.x, 0i), global0.b, vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-2324f)) - arg_3.c.x), arg_3.c.x)), -1777f, 833f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(869f)))))), ~(~(~select(arg_2.x, u_input.b, true))), ~select(firstLeadingBit(reverseBits(1u)), max(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.d, 0u, global0.d, arg_2.x), arg_2), ~arg_2.x), all(select(arg_0.b, vec3<bool>(true, true, false), global0.b.x))));
    let var_0 = arg_0;
    global0 = arg_0;
    let var_1 = _wgslsmith_sub_vec3_u32(u_input.a, vec3<u32>(~_wgslsmith_div_u32(u_input.a.x, select(var_0.e, 38860u, arg_1.x)), 4294967295u, firstTrailingBit(53343u)));
    return ~28228u;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: u32, arg_3: vec4<i32>) -> u32 {
    global0 = Struct_1(select(vec4<i32>(firstTrailingBit(abs(-2147483647i)), _wgslsmith_dot_vec2_i32(arg_1.a.yw, select(vec2<i32>(u_input.e, arg_1.a.x), arg_3.xx, vec2<bool>(true, arg_1.b.x))), _wgslsmith_dot_vec4_i32(arg_3, _wgslsmith_add_vec4_i32(vec4<i32>(-26281i, arg_3.x, -1i, arg_3.x), global0.a)), 0i), reverseBits(global0.a), select(select(!vec4<bool>(arg_1.b.x, global0.b.x, true, arg_1.b.x), !vec4<bool>(arg_1.b.x, true, true, global0.b.x), select(vec4<bool>(arg_1.b.x, global0.b.x, global0.b.x, false), vec4<bool>(false, global0.b.x, false, global0.b.x), vec4<bool>(arg_1.b.x, global0.b.x, arg_1.b.x, true))), vec4<bool>(true, any(arg_1.b.yz), true, !arg_1.b.x), select(vec4<bool>(true, arg_1.b.x, global0.b.x, false), vec4<bool>(false, true, global0.b.x, false), vec4<bool>(global0.b.x, global0.b.x, false, true)))), vec3<bool>(true, global0.b.x, true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.x, -518f, _wgslsmith_f_op_f32(-global0.c.x), -257f)), ~(~(16929u ^ arg_2)) ^ _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.d.x, 25650u), u_input.a.zy), vec2<u32>(0u, reverseBits(arg_1.e))), u_input.a.x);
    let var_0 = 0u;
    var var_1 = -_wgslsmith_dot_vec3_i32(arg_1.a.yxw & vec3<i32>(global0.a.x, arg_1.a.x, select(-1i, 1i, true)), ~(vec3<i32>(-1i) * -arg_1.a.zxx));
    var var_2 = arg_1;
    let var_3 = Struct_1(vec4<i32>(_wgslsmith_dot_vec4_i32(global0.a, vec4<i32>(0i, arg_1.a.x ^ var_2.a.x, -19255i, 2147483647i)), ~_wgslsmith_dot_vec2_i32(~arg_3.xz, vec2<i32>(u_input.e, arg_3.x) ^ arg_3.xw), 2147483647i, countOneBits(-2147483647i)), !select(arg_1.b, var_2.b, global0.b), var_2.c, 4294967295u, var_2.d);
    return ~(~81010u);
}

fn func_2(arg_0: f32) -> Struct_1 {
    global0 = Struct_1(vec4<i32>(global0.a.x, u_input.e, u_input.e & firstTrailingBit(u_input.e), abs(~max(0i, -2147483647i))), global0.b, _wgslsmith_f_op_vec4_f32(-global0.c), func_4(vec4<f32>(_wgslsmith_f_op_f32(arg_0 + 1279f), 407f, _wgslsmith_f_op_f32(f32(-1f) * -245f), -1165f), Struct_1(global0.a, global0.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.c - global0.c)), ~8243u, _wgslsmith_sub_u32(~37957u, ~global0.d)), _wgslsmith_add_u32(firstLeadingBit(func_3(Struct_1(vec4<i32>(u_input.e, 2183i, 2147483647i, 0i), vec3<bool>(global0.b.x, false, true), global0.c, global0.d, 1u), global0.b, vec4<u32>(1u, 0u, global0.d, 0u), Struct_1(global0.a, global0.b, vec4<f32>(global0.c.x, 1119f, -1312f, 1104f), global0.e, u_input.c))), 0u), abs(global0.a << (vec4<u32>(global0.e, u_input.b, 73409u, u_input.b) % vec4<u32>(32u)))), global0.d);
    var var_0 = Struct_1(-(countOneBits(vec4<i32>(global0.a.x, u_input.e, 7294i, global0.a.x)) << (vec4<u32>(global0.e | global0.d, ~47028u, ~4294967295u, ~23421u) % vec4<u32>(32u))), global0.b, global0.c, 0u, _wgslsmith_dot_vec3_u32(u_input.a, u_input.a) << (firstTrailingBit(~2775u) % 32u));
    var var_1 = Struct_1(-var_0.a >> (countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.d.x, global0.e, 4294967295u), _wgslsmith_mult_vec4_u32(vec4<u32>(18449u, global0.e, var_0.e, 62025u), vec4<u32>(global0.e, u_input.d.x, u_input.b, u_input.a.x)), vec4<u32>(u_input.a.x, global0.e, 0u, u_input.c) >> (vec4<u32>(1u, var_0.e, u_input.b, global0.d) % vec4<u32>(32u)))) % vec4<u32>(32u)), !select(vec3<bool>(all(vec4<bool>(global0.b.x, true, var_0.b.x, true)), any(var_0.b), !var_0.b.x), select(var_0.b, vec3<bool>(false, false, false), select(vec3<bool>(false, true, global0.b.x), global0.b, var_0.b)), !(!var_0.b)), _wgslsmith_f_op_vec4_f32(-var_0.c), 52663u, var_0.e);
    global0 = Struct_1(var_1.a, var_1.b, _wgslsmith_f_op_vec4_f32(-var_1.c), var_1.e, _wgslsmith_mult_u32(0u, abs(~1u)));
    var var_2 = Struct_1(~global0.a, !(!var_0.b), _wgslsmith_f_op_vec4_f32(global0.c - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c.x, -608f, arg_0, global0.c.x) + global0.c) * global0.c))), ~global0.d, 42560u);
    return Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.a.x, -1i, -_wgslsmith_sub_i32(0i, var_0.a.x), 0i), ~var_2.a), var_0.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1508f, _wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(f32(-1f) * -911f), -1142f))) + _wgslsmith_f_op_vec4_f32(var_1.c - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1827f, -708f, 370f, -1756f) + global0.c)))), ~((global0.e >> (45332u % 32u)) | reverseBits(~var_1.e)), 2009u);
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.c.wzz) * global0.c.zxw)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(945f, -1386f, global0.c.x))), vec3<f32>(global0.c.x, arg_1.c.x, 1f))) - arg_2.c.zyx);
    global0 = arg_1;
    let var_1 = arg_0.x;
    var var_2 = !global0.b.x;
    global0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.c.x, _wgslsmith_div_f32(1045f, _wgslsmith_f_op_f32(trunc(-187f)))))));
    return vec4<i32>(-select(~(global0.a.x & 41320i), 0i, all(vec2<bool>(true, true))), u_input.e, arg_1.a.x, min(~_wgslsmith_clamp_i32(abs(-44187i), _wgslsmith_add_i32(u_input.e, 44465i), 19318i), max(_wgslsmith_sub_i32(min(arg_0.x, 63140i), arg_2.a.x), -8495i)));
}

fn func_1(arg_0: u32, arg_1: vec3<i32>) -> i32 {
    global0 = Struct_1(min(func_5(min(vec4<i32>(u_input.e, global0.a.x, -14173i, global0.a.x), global0.a & global0.a), func_2(590f), func_2(_wgslsmith_f_op_f32(global0.c.x * -1138f))), max(_wgslsmith_clamp_vec4_i32(firstLeadingBit(global0.a), ~global0.a, vec4<i32>(1i, 0i, -5760i, -45609i)), global0.a)), !func_2(_wgslsmith_f_op_f32(max(-532f, _wgslsmith_f_op_f32(f32(-1f) * -1450f)))).b, global0.c, global0.e, global0.e);
    let var_0 = global0.c.ww;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(489f, global0.c.x) - _wgslsmith_f_op_f32(-663f - 226f));
    let var_2 = Struct_1(firstLeadingBit(_wgslsmith_mult_vec4_i32(global0.a, global0.a)), vec3<bool>(false, !global0.b.x, select(global0.b.x, true, false)), _wgslsmith_f_op_vec4_f32(-global0.c), global0.e, 4294967295u);
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -190f);
    return 15379i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(countOneBits(vec4<i32>(0i, -20815i, _wgslsmith_sub_i32(~global0.a.x, _wgslsmith_add_i32(u_input.e, 0i)), _wgslsmith_clamp_i32(~global0.a.x, u_input.e, -12724i))), vec3<bool>(global0.b.x, true, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-621f, global0.c.x)) != _wgslsmith_f_op_f32(-886f - _wgslsmith_f_op_f32(exp2(global0.c.x)))), vec4<f32>(_wgslsmith_f_op_f32(floor(global0.c.x)), _wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1662f) - -780f))), _wgslsmith_f_op_f32(global0.c.x - global0.c.x)), u_input.d.x, ~u_input.c);
    let var_1 = _wgslsmith_sub_vec2_i32(firstTrailingBit(vec2<i32>(func_1(global0.d, global0.a.zzz), _wgslsmith_mod_i32(global0.a.x, u_input.e)) | ~_wgslsmith_add_vec2_i32(var_0.a.xz, var_0.a.xx)), abs(var_0.a.xx));
    var var_2 = vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.c.x))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.x - var_0.c.x))), !(4294967295u <= (4294967295u >> ((0u << (global0.e % 32u)) % 32u))), !select(func_2(global0.c.x).b.x, all(vec4<bool>(false, true, false, global0.b.x)), -955f < _wgslsmith_f_op_f32(-var_0.c.x)), global0.b.x);
    var_2 = vec4<bool>(true, (any(vec4<bool>(true, true, false, var_2.x)) || select(true, var_0.b.x & global0.b.x, !var_0.b.x)) | all(vec2<bool>(false, true)), false, true);
    var var_3 = ~u_input.a;
    let var_4 = var_0.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-587f - var_4), _wgslsmith_f_op_f32(f32(-1f) * -166f), !var_0.b.x)))), countOneBits(var_1.x));
}

