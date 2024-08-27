struct Struct_1 {
    a: i32,
    b: f32,
    c: u32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_2(arg_0: Struct_2, arg_1: bool) -> u32 {
    global0 = array<Struct_1, 28>();
    var var_0 = arg_0;
    let var_1 = global0[_wgslsmith_index_u32(var_0.b.c, 28u)];
    let var_2 = !select(select(select(vec4<bool>(false, true, arg_0.b.d.x, true), select(vec4<bool>(false, arg_0.a.d.x, arg_0.b.d.x, false), vec4<bool>(var_1.d.x, arg_1, arg_0.b.d.x, arg_0.b.d.x), vec4<bool>(false, true, false, arg_1)), true), !select(vec4<bool>(false, var_0.a.d.x, arg_0.b.d.x, false), vec4<bool>(arg_0.b.d.x, arg_0.a.d.x, true, var_0.a.d.x), arg_0.b.d.x), !var_0.b.d.x || true), !(!vec4<bool>(var_1.d.x, arg_1, true, var_0.b.d.x)), var_0.b.d.x);
    let var_3 = global0[_wgslsmith_index_u32(var_1.c, 28u)];
    return ~(~29018u);
}

fn func_3(arg_0: Struct_1) -> u32 {
    global0 = array<Struct_1, 28>();
    let var_0 = vec3<u32>(~1u, 1u, 1u);
    global0 = array<Struct_1, 28>();
    var var_1 = Struct_1(~_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, arg_0.a) | vec2<i32>(1736i, -11578i), -vec2<i32>(-6565i, -14178i)), u_input.a), arg_0.b, ~34507u, !(!select(select(arg_0.d, arg_0.d, true), arg_0.d, true)));
    let var_2 = vec4<u32>(~_wgslsmith_dot_vec4_u32(~(~vec4<u32>(4294967295u, 1u, 9780u, 4294967295u)), ~abs(vec4<u32>(6898u, 21259u, var_0.x, var_1.c))), 0u, arg_0.c, ~(_wgslsmith_dot_vec2_u32(var_0.xy, var_0.zx) | 25371u));
    return max(~4294967295u, arg_0.c & (countOneBits(_wgslsmith_mod_u32(0u, var_1.c)) | ~var_2.x));
}

fn func_1(arg_0: vec3<f32>, arg_1: i32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.x, arg_0.x, 639f, arg_0.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, arg_0.x, 968f))))))));
    let var_1 = _wgslsmith_sub_u32(abs(_wgslsmith_mod_u32(func_2(Struct_2(Struct_1(arg_1, 524f, 48184u, vec2<bool>(false, false)), global0[_wgslsmith_index_u32(83478u, 28u)]), true), func_3(Struct_1(u_input.a, var_0.x, 4294967295u, vec2<bool>(false, false))))), ~18569u);
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -1290f, -1000f, -2431f)))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -129f, -442f, arg_0.x) + vec4<f32>(351f, var_0.x, arg_0.x, 161f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -194f), -164f, -332f, arg_0.x) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, 776f, arg_0.x)), vec4<f32>(var_0.x, arg_0.x, arg_0.x, var_0.x))), vec4<bool>(true, true, true, true))) - vec4<f32>(var_0.x, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.x, var_0.x)) + _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) + _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_div_f32(var_0.x, -782f))), arg_0.x));
    var var_2 = Struct_2(global0[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec3_u32(~vec3<u32>(var_1, 0u, var_1), select(vec3<u32>(var_1, 21552u, var_1), vec3<u32>(var_1, var_1, var_1), false))), 28u)], global0[_wgslsmith_index_u32(86122u, 28u)]);
    let var_3 = ~select(~abs(u_input.a), firstTrailingBit(-2147483647i) >> (_wgslsmith_div_u32(0u, var_1) % 32u), !(-1i < _wgslsmith_sub_i32(arg_1, var_2.b.a)));
    return Struct_2(Struct_1(u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.x, 1377f)) + _wgslsmith_f_op_f32(ceil(261f))) + var_2.a.b), _wgslsmith_mult_u32(~1u, 1u), var_2.a.d), global0[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.b.c, 1u), vec2<u32>(16808u, 1u))), 28u)]);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: i32, arg_3: Struct_2) -> vec2<bool> {
    global0 = array<Struct_1, 28>();
    global0 = array<Struct_1, 28>();
    return select(!arg_3.b.d, func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(-502f, arg_3.b.b, arg_3.a.b), vec3<f32>(arg_0.b, arg_0.b, arg_3.b.b))))), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1.a.a, 60307i, arg_3.b.a, arg_1.b.a), vec4<i32>(-3304i, -2147483647i, arg_0.a, -25024i), vec4<i32>(1i, arg_0.a, 1i, arg_0.a)), ~vec4<i32>(arg_0.a, 2147483647i, -22940i, arg_2)), -_wgslsmith_mult_vec4_i32(vec4<i32>(-5011i, arg_0.a, arg_2, u_input.a), vec4<i32>(-4818i, 1i, -1i, arg_3.b.a)))).b.d, arg_1.b.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1i;
    let var_1 = Struct_1(-var_0, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(521f + _wgslsmith_div_f32(-484f, 114f)), -239f))), 28229u, select(!func_4(Struct_1(-2147483647i, 268f, 46678u, vec2<bool>(false, false)), func_1(vec3<f32>(-1000f, -1180f, 279f), u_input.a), _wgslsmith_div_i32(var_0, u_input.a), func_1(vec3<f32>(315f, -449f, 562f), -45293i)), vec2<bool>(true && any(vec2<bool>(true, false)), true), true || any(vec4<bool>(true, false, true, false))));
    global0 = array<Struct_1, 28>();
    global0 = array<Struct_1, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a, vec4<i32>(-4198i, _wgslsmith_sub_i32(abs(u_input.a), (u_input.a | var_1.a) & _wgslsmith_sub_i32(var_0, u_input.a)), -u_input.a, ~2147483647i));
}

