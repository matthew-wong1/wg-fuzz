struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_3 {
    a: f32,
    b: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: Struct_2,
    d: Struct_2,
    e: i32,
}

struct Struct_5 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: u32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 18576u;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: i32) -> vec4<i32> {
    global0 = 10234u;
    global0 = u_input.c;
    global0 = u_input.a;
    let var_0 = arg_0.x;
    global0 = _wgslsmith_mult_u32(43519u, u_input.a);
    return countOneBits(_wgslsmith_clamp_vec4_i32(~(-vec4<i32>(u_input.b, -21579i, -37820i, u_input.b)) & firstLeadingBit(-vec4<i32>(2147483647i, arg_2, -30634i, -2147483647i)), min(-vec4<i32>(arg_2, u_input.b, arg_2, u_input.b) >> (~vec4<u32>(u_input.d.x, u_input.a, 4294967295u, 0u) % vec4<u32>(32u)), vec4<i32>(u_input.b, u_input.b, u_input.b, -2147483647i)), -_wgslsmith_add_vec4_i32(vec4<i32>(-1i, u_input.b, -48704i, -6854i) | vec4<i32>(17247i, arg_2, 6993i, 41539i), _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, -32996i, -68968i, 22862i), vec4<i32>(-2147483647i, arg_2, -1i, 0i)))));
}

fn func_2() -> vec2<u32> {
    var var_0 = select(0i, u_input.b, !select(true, any(vec3<bool>(false, false, false)), true));
    var var_1 = countOneBits(u_input.b) << (_wgslsmith_div_u32(u_input.a, u_input.a) % 32u);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-713f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-278f, 1000f)))));
    var_0 = _wgslsmith_dot_vec4_i32(func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1871f, 153f, 438f), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-354f, -1736f, 1134f)))))), Struct_2(all(vec3<bool>(true, true, true)), Struct_1(false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-379f, 925f, -1878f, -276f), vec4<f32>(2042f, -870f, 637f, -478f)))), ~firstLeadingBit(~u_input.b)), firstLeadingBit(vec4<i32>(6862i, _wgslsmith_mult_i32(u_input.b, u_input.b), -17834i, abs(-2147483647i)) << (vec4<u32>(_wgslsmith_sub_u32(u_input.a, u_input.c), u_input.c, 52925u & u_input.d.x, u_input.c) % vec4<u32>(32u))));
    let var_3 = ~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.c, 17912u), u_input.d.yww) & ~min(1716u, 4294967295u), 1u);
    return vec2<u32>(65696u, ~(_wgslsmith_mod_u32(var_3.x, ~0u) & u_input.a));
}

fn func_4(arg_0: u32, arg_1: i32) -> f32 {
    var var_0 = _wgslsmith_mod_i32(~reverseBits(-22895i), arg_1 >> (reverseBits(select(1u, arg_0, false)) % 32u)) & _wgslsmith_div_i32(arg_1, _wgslsmith_mult_i32(-2147483647i, ~(-2147483647i) | _wgslsmith_clamp_i32(-16455i, -6589i, u_input.b)));
    let var_1 = ~select(min(~0u, min(u_input.a, 4294967295u)) >> (~u_input.a % 32u), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(u_input.d.xwy, u_input.d.xzy), 30168u), true);
    global0 = max((56286u >> (~_wgslsmith_sub_u32(arg_0, u_input.c) % 32u)) ^ firstLeadingBit(reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, arg_0, 4294967295u), u_input.d.wyx))), abs(u_input.a));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -195f) * _wgslsmith_f_op_f32(floor(-1358f)))), 1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1159f)), 1354f));
    var var_3 = Struct_1(false);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(609f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(207f + -546f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1351f, 1000f, true)) - _wgslsmith_div_f32(525f, 1071f)))));
}

fn func_1(arg_0: Struct_5, arg_1: vec2<u32>, arg_2: Struct_3) -> u32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-463f, 869f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_dot_vec2_u32(arg_1, func_2()), ~1i))));
    return ~(~arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 4294967295u;
    global0 = ~(~_wgslsmith_add_u32(u_input.a << (_wgslsmith_mult_u32(u_input.c, 73735u) % 32u), 6045u));
    global0 = ~(~88729u);
    global0 = ~18438u;
    var var_0 = -1063f;
    global0 = 1u;
    let var_1 = Struct_2(select(true, all(vec2<bool>(select(false, false, true), all(vec3<bool>(false, false, false)))), false), Struct_1(true | (func_1(Struct_5(1590f, Struct_1(false), 582f, 66370u, vec3<i32>(8948i, u_input.b, u_input.b)), u_input.d.xz, Struct_3(-829f, 0i)) > u_input.a)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-355f, -1296f, -752f, -182f) * vec4<f32>(-211f, 278f, -1139f, 403f)), vec4<f32>(1025f, -1670f, -1135f, 456f))) + vec4<f32>(248f, _wgslsmith_f_op_f32(floor(1277f)), -712f, _wgslsmith_f_op_f32(func_4(4294967295u, -2147483647i)))))));
    let var_2 = vec2<bool>(any(vec3<bool>(any(select(vec3<bool>(var_1.a, false, false), vec3<bool>(var_1.a, var_1.a, var_1.b.a), var_1.a)), var_1.a, all(!vec4<bool>(true, var_1.a, true, var_1.b.a)))), true);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

