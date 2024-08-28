struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: bool,
    d: vec3<bool>,
    e: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(vec4<bool>(false, false, true, false), Struct_1(vec3<bool>(false, false, true), 0u, true, vec3<bool>(true, false, false), false)), Struct_2(vec4<bool>(false, false, true, false), Struct_1(vec3<bool>(true, true, false), 0u, false, vec3<bool>(true, true, false), true)), Struct_2(vec4<bool>(true, true, true, false), Struct_1(vec3<bool>(true, true, true), 2031u, false, vec3<bool>(true, false, true), true)), Struct_2(vec4<bool>(true, false, false, false), Struct_1(vec3<bool>(true, true, false), 28235u, true, vec3<bool>(true, true, true), false)), Struct_2(vec4<bool>(true, false, false, false), Struct_1(vec3<bool>(true, false, false), 97752u, true, vec3<bool>(true, false, true), false)), Struct_2(vec4<bool>(false, true, false, true), Struct_1(vec3<bool>(false, true, true), 21988u, false, vec3<bool>(true, false, false), false)), Struct_2(vec4<bool>(true, true, false, true), Struct_1(vec3<bool>(true, false, true), 51948u, true, vec3<bool>(true, true, false), true)), Struct_2(vec4<bool>(false, false, false, true), Struct_1(vec3<bool>(true, true, true), 39155u, true, vec3<bool>(false, false, true), true)), Struct_2(vec4<bool>(false, false, true, false), Struct_1(vec3<bool>(false, false, true), 37491u, true, vec3<bool>(false, true, true), false)), Struct_2(vec4<bool>(false, true, false, false), Struct_1(vec3<bool>(false, true, false), 0u, false, vec3<bool>(true, false, true), true)), Struct_2(vec4<bool>(true, false, true, false), Struct_1(vec3<bool>(false, true, true), 1u, true, vec3<bool>(true, false, false), false)), Struct_2(vec4<bool>(true, true, true, false), Struct_1(vec3<bool>(false, true, false), 50668u, true, vec3<bool>(true, false, true), false)), Struct_2(vec4<bool>(true, true, false, true), Struct_1(vec3<bool>(false, true, true), 2734u, true, vec3<bool>(false, true, true), true)), Struct_2(vec4<bool>(true, false, true, true), Struct_1(vec3<bool>(true, false, false), 4294967295u, false, vec3<bool>(false, false, false), false)), Struct_2(vec4<bool>(false, false, false, false), Struct_1(vec3<bool>(false, true, true), 63314u, true, vec3<bool>(true, false, false), true)), Struct_2(vec4<bool>(false, false, true, true), Struct_1(vec3<bool>(false, false, false), 4294967295u, true, vec3<bool>(false, true, true), false)));

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec3<i32>) -> u32 {
    global0 = array<Struct_2, 16>();
    global0 = array<Struct_2, 16>();
    global0 = array<Struct_2, 16>();
    let var_0 = ~(~abs(reverseBits(firstTrailingBit(vec4<i32>(arg_2.x, arg_2.x, 41795i, arg_2.x)))));
    global0 = array<Struct_2, 16>();
    return ~(u_input.a.x >> (~arg_0.x % 32u));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec4<u32>) -> f32 {
    let var_0 = -_wgslsmith_mult_i32(~1i, _wgslsmith_sub_i32(-firstLeadingBit(13643i), -1i));
    global0 = array<Struct_2, 16>();
    global0 = array<Struct_2, 16>();
    global0 = array<Struct_2, 16>();
    global0 = array<Struct_2, 16>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2919f) * -418f);
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<i32>) -> vec4<i32> {
    let var_0 = Struct_1(select(vec3<bool>(all(vec4<bool>(true, true, false, false)), true, true), select(vec3<bool>(all(arg_0.xw), !arg_0.x, true), vec3<bool>(any(vec2<bool>(arg_0.x, false)), true, arg_0.x), !select(arg_0.xwz, vec3<bool>(true, false, false), vec3<bool>(true, arg_0.x, arg_0.x))), !arg_0.zxx), 1u, any(vec4<bool>(true, true, true, true)), !arg_0.zwy, any(arg_0));
    global0 = array<Struct_2, 16>();
    let var_1 = var_0.a.xz;
    var var_2 = Struct_2(arg_0, Struct_1(!(!vec3<bool>(var_1.x, arg_0.x, var_0.d.x)), 1u, false, vec3<bool>(!any(vec2<bool>(arg_0.x, true)), _wgslsmith_mod_u32(u_input.b.x, var_0.b) > 18606u, false), any(arg_0)));
    let var_3 = 26234u;
    return _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.x, 32908i, arg_1.x, 21409i) >> ((u_input.a | u_input.a) % vec4<u32>(32u)), select(_wgslsmith_div_vec4_i32(vec4<i32>(arg_1.x, arg_1.x, 0i, arg_1.x), vec4<i32>(arg_1.x, -36010i, arg_1.x, arg_1.x)), firstTrailingBit(vec4<i32>(-5769i, arg_1.x, -2147483647i, 0i)), vec4<bool>(var_0.a.x, var_2.a.x, false, true))) ^ vec4<i32>(select(1i, arg_1.x, true), abs(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, arg_1.x), arg_1)), arg_1.x, arg_1.x), vec4<i32>(abs(-arg_1.x) >> (abs(var_3) % 32u), ~_wgslsmith_add_i32(arg_1.x >> (var_2.b.b % 32u), ~arg_1.x), reverseBits(_wgslsmith_add_i32(-1i, 0i)), (i32(-1i) * -arg_1.x) & arg_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 16>();
    var var_0 = vec2<bool>(false, true);
    var var_1 = firstTrailingBit(_wgslsmith_mod_i32(_wgslsmith_add_i32(5112i, _wgslsmith_add_i32(0i, 1i)), _wgslsmith_mult_i32(i32(-1i) * -22189i, min(2147483647i, -1i)))) ^ firstTrailingBit(-2147483647i);
    var var_2 = _wgslsmith_add_vec4_u32(vec4<u32>(~u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.b.yx) ^ _wgslsmith_mod_u32(func_1(u_input.a.zw, Struct_1(vec3<bool>(var_0.x, true, true), u_input.a.x, true, vec3<bool>(var_0.x, false, true), var_0.x), vec3<i32>(55242i, -1i, -1i)), ~2348u), reverseBits(u_input.a.x), ~u_input.a.x), _wgslsmith_mult_vec4_u32(u_input.a, u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1380f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1118f + 549f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-699f * 946f), _wgslsmith_f_op_f32(f32(-1f) * -942f)), _wgslsmith_f_op_f32(func_2(vec3<i32>(-15545i, 53149i, 0i) & select(vec3<i32>(-29696i, 36400i, -25117i), vec3<i32>(-1i, -8857i, -2147483647i), true), Struct_1(select(vec3<bool>(true, false, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, true, false)), func_1(vec2<u32>(u_input.b.x, 16307u), Struct_1(vec3<bool>(var_0.x, true, var_0.x), 7261u, var_0.x, vec3<bool>(true, var_0.x, false), true), vec3<i32>(-2147483647i, -8479i, 30274i)), true, select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, true, var_0.x), var_0.x), false), vec4<u32>(var_2.x, var_2.x, ~u_input.b.x, ~var_2.x)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-489f - -1000f), -248f, _wgslsmith_f_op_f32(func_2(vec3<i32>(-1i, 47643i, -2838i), Struct_1(vec3<bool>(var_0.x, false, var_0.x), 1u, true, vec3<bool>(var_0.x, false, false), false), vec4<u32>(0u, u_input.a.x, var_2.x, var_2.x)))) - vec3<f32>(-757f, 822f, _wgslsmith_f_op_f32(select(-1160f, 488f, true)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-360f, 789f, -544f))) * vec3<f32>(_wgslsmith_f_op_f32(round(1486f)), -589f, _wgslsmith_f_op_f32(f32(-1f) * -856f)))), _wgslsmith_div_vec4_i32(vec4<i32>(i32(-1i) * -60784i, 1i, abs(9733i), -2147483647i), vec4<i32>(firstTrailingBit(2147483647i), -2147483647i, -21390i, ~1i)) | ~func_3(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), select(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(2147483647i, 2147483647i), var_0.x)));
}

