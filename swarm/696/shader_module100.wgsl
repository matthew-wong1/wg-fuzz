struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec4<u32>,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<i32>) -> vec3<f32> {
    var var_0 = vec3<bool>(!any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true))), false, select(!all(vec2<bool>(true, true)), select(any(vec4<bool>(true, true, false, false)), any(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true))), false), any(vec3<bool>(false, true, false))));
    var var_1 = Struct_3(1f, Struct_1(vec4<f32>(-1097f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1950f + 232f) * _wgslsmith_f_op_f32(f32(-1f) * -1578f)), 894f)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(924f, _wgslsmith_f_op_f32(ceil(482f)))) - -2296f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -188f)), -897f, var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-932f * 105f)))));
    var var_2 = _wgslsmith_add_i32(_wgslsmith_mult_i32(~(-2147483647i), ~arg_0.x), -2147483647i);
    var var_3 = _wgslsmith_div_vec4_f32(var_1.b.a, _wgslsmith_f_op_vec4_f32(var_1.b.a - vec4<f32>(_wgslsmith_div_f32(176f, _wgslsmith_f_op_f32(f32(-1f) * -713f)), var_1.a, var_1.a, -836f)));
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(358f, var_1.a, var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.b.a.x, var_3.x)))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, var_3.x, var_3.x, var_3.x) - var_1.b.a), vec4<f32>(var_1.c.x, -759f, var_3.x, var_1.b.a.x))))) + var_1.b.a);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-798f, var_3.x, -397f)) - _wgslsmith_f_op_vec3_f32(-var_3.zyy)));
}

fn func_2() -> Struct_3 {
    let var_0 = vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(0u, 1u, 0u)), reverseBits(vec3<u32>(1u, 1u, 1u))) | 0u, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(73647u, 5056u, 4294967295u, 1u), ~firstTrailingBit(vec4<u32>(12810u, 1u, 0u, 1u))), 1u, 0u);
    let var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(u_input.c, u_input.b.zxz))) * _wgslsmith_f_op_vec3_f32(func_3(-(u_input.b.ywz & vec3<i32>(u_input.a.x, -1i, 60182i)), _wgslsmith_add_vec3_i32(-vec3<i32>(u_input.b.x, u_input.b.x, -2147483647i), ~vec3<i32>(u_input.b.x, u_input.b.x, u_input.a.x))))), vec3<f32>(-409f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -821f)), -532f)));
    let var_2 = -1216f;
    var var_3 = var_2;
    let var_4 = Struct_1(vec4<f32>(_wgslsmith_div_f32(1173f, _wgslsmith_div_f32(_wgslsmith_div_f32(-1321f, var_1.x), _wgslsmith_f_op_f32(min(var_1.x, var_1.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1592f)), _wgslsmith_f_op_f32(-115f - 966f)))), var_1.x, var_2));
    return Struct_3(_wgslsmith_f_op_f32(-1f), Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(var_4.a, vec4<f32>(var_1.x, var_1.x, 1237f, var_1.x), vec4<bool>(false, false, true, false))), var_4.a)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, 2595f) + _wgslsmith_f_op_vec3_f32(var_1 - var_1)) * var_1) * var_1));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>) -> Struct_2 {
    var var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-663f * _wgslsmith_f_op_f32(max(arg_0.a.x, arg_0.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(339f - 543f) + 1000f))), arg_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1269f - arg_0.a.x)), arg_0.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.a.x, _wgslsmith_f_op_f32(round(860f)), 1476f, -1000f), arg_0.a)));
    let var_1 = Struct_4(func_2());
    var var_2 = vec2<bool>(!arg_1.x || ((false != (var_0.x > -1039f)) || true), arg_1.x);
    return Struct_2(_wgslsmith_clamp_u32(~(~4294967295u), reverseBits(1u), 75039u), 41781u);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec2<u32>) -> Struct_1 {
    var var_0 = Struct_5(_wgslsmith_add_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, arg_2.x, arg_2.x, 28314u), vec4<u32>(60611u, arg_2.x, arg_2.x, arg_2.x), vec4<u32>(arg_0.b, arg_2.x, arg_2.x, arg_2.x)), _wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(0u, 51482u, 4294967295u, 1u)), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, arg_0.b, 10463u, arg_0.a), vec4<u32>(arg_0.b, arg_2.x, 38302u, arg_2.x)))) << (vec4<u32>(_wgslsmith_sub_u32(arg_0.b, _wgslsmith_sub_u32(4294967295u, arg_2.x)), 0u, 1u, ~(~1885u)) % vec4<u32>(32u)), select(false, any(select(vec2<bool>(false, true), vec2<bool>(true, false), true)) || true, -2147483647i == u_input.c.x));
    var var_1 = arg_1.b.a.x;
    let var_2 = Struct_4(Struct_3(-342f, arg_1.b, arg_1.c));
    let var_3 = -(~u_input.b);
    var var_4 = arg_2.x;
    return var_2.a.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-100f + -1000f))))), func_4(func_1(Struct_1(vec4<f32>(-1000f, 955f, 647f, 213f)), vec2<bool>(true, true)), Struct_3(-582f, func_2().b, vec3<f32>(-657f, -956f, _wgslsmith_f_op_f32(f32(-1f) * -1431f))), ~vec2<u32>(1u, 4294967295u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1000f, -390f, _wgslsmith_f_op_f32(226f + -1538f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(871f, -668f, 158f)) - vec3<f32>(-974f, 647f, -1922f)))));
    let var_1 = !all(!vec3<bool>(true, all(vec4<bool>(true, true, false, false)), true));
    var var_2 = Struct_5(abs(vec4<u32>(abs(1u), firstTrailingBit(max(0u, 11219u)), 1u, 17531u)), var_1);
    var_2 = Struct_5(_wgslsmith_clamp_vec4_u32(vec4<u32>(~5640u, 1u, _wgslsmith_add_u32(var_2.a.x & 1u, ~var_2.a.x), min(abs(var_2.a.x), func_1(var_0.b, vec2<bool>(var_2.b, var_2.b)).b)), ~(~vec4<u32>(64135u, var_2.a.x, var_2.a.x, 1u)), ~(~var_2.a)), u_input.c.x >= ~firstTrailingBit(_wgslsmith_mult_i32(u_input.c.x, u_input.c.x)));
    let var_3 = true;
    let var_4 = var_2.a.xw;
    let x = u_input.a;
    s_output = StorageBuffer(select(vec4<u32>(var_4.x, var_2.a.x, 49735u >> (var_4.x % 32u), var_2.a.x), vec4<u32>(4294967295u, var_2.a.x, ~var_4.x, 68177u), !all(!vec4<bool>(true, var_2.b, true, true))), u_input.a.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1051f * -258f)), 1063f, -299f) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(928f, -1065f, var_0.c.x))))));
}

