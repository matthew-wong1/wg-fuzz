struct Struct_1 {
    a: bool,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec4<i32>, arg_1: bool) -> i32 {
    var var_0 = Struct_1(all(!vec3<bool>(false, false, arg_1)) || select(arg_1, true, true), 38376u, min(~0i, -52107i));
    let var_1 = 1i;
    let var_2 = Struct_1(arg_1, _wgslsmith_clamp_u32(37046u, u_input.b.x, 4282u), _wgslsmith_mult_i32(arg_0.x & 2147483647i, -var_0.c >> (_wgslsmith_sub_u32(u_input.b.x, u_input.b.x) % 32u)) >> (~(~var_0.b) % 32u));
    global0 = _wgslsmith_mod_vec4_i32(~vec4<i32>(1i | u_input.a.x, -2147483647i | arg_0.x, select(-1i, var_1, arg_1), 8239i) | arg_0, abs(select(vec4<i32>(_wgslsmith_div_i32(1314i, u_input.a.x), 0i, 52910i, ~37421i), arg_0, vec4<bool>(u_input.b.x > 48487u, arg_1, all(vec2<bool>(arg_1, true)), true))));
    var var_3 = Struct_2(var_2);
    return 0i;
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: vec4<f32>, arg_3: u32) -> vec4<u32> {
    global0 = _wgslsmith_mod_vec4_i32(abs(~firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(global0.x, global0.x, -7022i, global0.x), u_input.a))), ~((~u_input.a << (~u_input.b % vec4<u32>(32u))) << ((firstTrailingBit(vec4<u32>(4294967295u, 0u, u_input.b.x, arg_3)) & u_input.b) % vec4<u32>(32u))));
    let var_0 = vec2<u32>(firstTrailingBit(87107u), ~_wgslsmith_sub_u32(u_input.b.x, _wgslsmith_mod_u32(12906u, 38197u) | ~u_input.b.x));
    return vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(30932u, var_0.x, var_0.x, abs(0u)) ^ ~(~vec4<u32>(1u, arg_3, u_input.b.x, 1u)), max(vec4<u32>(u_input.b.x ^ arg_3, _wgslsmith_mult_u32(var_0.x, var_0.x), arg_3, _wgslsmith_dot_vec2_u32(var_0, vec2<u32>(u_input.b.x, 21360u))), u_input.b)), 0u, select(abs(12838u), var_0.x, arg_1), 39277u);
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: vec4<u32>, arg_3: bool) -> vec3<f32> {
    global0 = vec4<i32>(arg_0.a.c | 1i, 2147483647i << (~arg_0.a.b % 32u), ~(~(~u_input.a.x)), max(_wgslsmith_sub_i32(-u_input.a.x, -arg_0.a.c), ~_wgslsmith_add_i32(~(-2147483647i), global0.x << (39355u % 32u))));
    global0 = reverseBits(u_input.a);
    let var_0 = Struct_1(false, ~(~u_input.b.x), 2577i);
    let var_1 = Struct_1(arg_3, ~func_3(-2158f, !(!arg_3), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(741f, -837f, -635f, -1044f) * vec4<f32>(-167f, -618f, -846f, -2401f))), countOneBits(_wgslsmith_dot_vec2_u32(u_input.b.yw, vec2<u32>(2825u, var_0.b)))).x, min(-_wgslsmith_mod_i32(1i, -21099i), u_input.a.x));
    var var_2 = _wgslsmith_f_op_f32(trunc(714f));
    return vec3<f32>(-2732f, 1024f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1673f), _wgslsmith_f_op_f32(-1000f + -711f), var_1.a != true))), _wgslsmith_f_op_f32(-107f + _wgslsmith_f_op_f32(632f * -271f))));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_0.x, _wgslsmith_f_op_f32(124f * arg_0.x), select(true, arg_2, arg_1.a))), _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_vec3_f32(func_4(Struct_2(arg_1), ~0i ^ -arg_1.c, _wgslsmith_div_vec4_u32(u_input.b >> (u_input.b % vec4<u32>(32u)), vec4<u32>(4294967295u, 1u, arg_1.b, 12941u)), any(select(vec4<bool>(arg_2, true, arg_2, arg_2), vec4<bool>(arg_1.a, false, false, arg_1.a), false)))).x));
    var var_1 = vec2<f32>(arg_0.x, arg_0.x);
    var var_2 = ~(-1i);
    return Struct_1(true, 0u, _wgslsmith_dot_vec4_i32(reverseBits(u_input.a), vec4<i32>(-max(1i, 4907i), -2147483647i, 1i, abs(max(-86037i, 26519i)))));
}

fn func_1(arg_0: bool, arg_1: Struct_2) -> vec3<bool> {
    var var_0 = arg_1.a;
    let var_1 = ~abs(~vec4<u32>(45600u, var_0.b, ~arg_1.a.b, 1u));
    global0 = ~(~reverseBits(-(vec4<i32>(var_0.c, arg_1.a.c, 21241i, -12481i) << (u_input.b % vec4<u32>(32u)))));
    let var_2 = arg_1.a;
    var_0 = func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(Struct_2(var_2), func_2(u_input.a << (vec4<u32>(24716u, var_0.b, 61638u, arg_1.a.b) % vec4<u32>(32u)), !arg_1.a.a), func_3(_wgslsmith_f_op_f32(246f + -603f), !var_2.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-981f, -756f, -713f, 2135f)), min(var_2.b, var_2.b)), true)) + vec3<f32>(-1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -479f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2867f * -755f)))), var_2, !all(vec2<bool>(true, true)));
    return vec3<bool>(var_2.a, !(!(!any(vec4<bool>(var_2.a, arg_1.a.a, var_2.a, true)))), arg_1.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(vec3<bool>(any(func_1(true, Struct_2(Struct_1(false, u_input.b.x, u_input.a.x)))), true, global0.x > global0.x), func_1(func_1(true, Struct_2(Struct_1(true, 36820u, -22240i))).x, Struct_2(func_5(vec3<f32>(-1683f, 1187f, -123f), Struct_1(false, 7295u, 681i), false))), !select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), true), vec3<bool>(false, true, true)));
    var var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(-118f, -150f)), _wgslsmith_f_op_f32(ceil(784f)))) - vec2<f32>(-777f, _wgslsmith_f_op_f32(f32(-1f) * -312f)))));
    var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, 960f)))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1.x, var_1.x))))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(874f, _wgslsmith_f_op_f32(var_1.x - var_1.x)))), _wgslsmith_f_op_f32(step(-1936f, -926f))), select(vec2<bool>(true, var_0.x), select(func_1(2147483647i > global0.x, Struct_2(Struct_1(var_0.x, 4294967295u, global0.x))).xz, !var_0.xz, vec2<bool>(true, true)), vec2<bool>(var_0.x, true))));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b.x, u_input.b.xy, ~_wgslsmith_mod_u32((0u << (u_input.b.x % 32u)) | (u_input.b.x >> (4294967295u % 32u)), countOneBits(u_input.b.x)), firstLeadingBit(select(u_input.b.x, u_input.b.x, true)));
}

