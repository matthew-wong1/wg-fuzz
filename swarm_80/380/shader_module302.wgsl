struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: vec4<u32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: f32,
    c: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: bool,
    c: Struct_2,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: vec2<bool>) -> vec2<u32> {
    let var_0 = ~vec3<i32>(_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, i32(-1i) * -1i), 16046i, ~u_input.a.x);
    let var_1 = _wgslsmith_div_u32(33147u, ~22609u);
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1333f - 886f), 978f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(342f * -864f))) - 386f))));
    var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(478f + 1632f) + -723f), 1f) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-302f)))))));
    let var_3 = var_1;
    return firstLeadingBit(vec2<u32>(reverseBits(_wgslsmith_dot_vec2_u32(~vec2<u32>(var_1, 51396u), ~vec2<u32>(var_3, var_3))), _wgslsmith_mult_u32(1u, var_1)));
}

fn func_3(arg_0: vec3<f32>) -> u32 {
    return _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(0u, reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(60202u, 4294967295u))), ~firstLeadingBit(4294967295u))), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(~21690u, reverseBits(4964u), 1u)));
}

fn func_1(arg_0: i32) -> vec4<u32> {
    var var_0 = _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(~func_2(vec2<bool>(true, true), vec4<bool>(true, false, false, false), vec2<bool>(true, true)), ~min(firstTrailingBit(vec2<u32>(7398u, 25882u)), ~vec2<u32>(58092u, 0u))), abs(func_2(vec2<bool>(true, true), select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), false), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), false)), vec2<bool>(true, true))));
    let var_1 = false;
    let var_2 = i32(-1i) * -25815i;
    var_0 = _wgslsmith_add_u32(abs(_wgslsmith_dot_vec2_u32(abs(firstTrailingBit(vec2<u32>(1u, 1u))), func_2(!vec2<bool>(false, var_1), !vec4<bool>(var_1, false, true, false), select(vec2<bool>(var_1, false), vec2<bool>(true, false), vec2<bool>(true, true))))), firstTrailingBit(4294967295u));
    var_0 = ~4294967295u;
    return vec4<u32>(~(~(~0u)), ~(~(~12537u)), func_3(vec3<f32>(1f, 1f, 1f)), ~_wgslsmith_div_u32(85001u, 1u)) ^ firstTrailingBit(min(_wgslsmith_add_vec4_u32(min(vec4<u32>(10118u, 1u, 4294967295u, 0u), vec4<u32>(4294967295u, 4294967295u, 37472u, 1u)), vec4<u32>(1u, 1u, 1u, 1u)), ~vec4<u32>(1u, 1u, 1u, 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec4_u32(select(~vec4<u32>(39185u, _wgslsmith_div_u32(1u, 1u), 1u, _wgslsmith_div_u32(55261u, 1u)), max(~reverseBits(vec4<u32>(0u, 4294967295u, 1u, 1u)), reverseBits(abs(vec4<u32>(30805u, 50807u, 41696u, 1u)))), true), ~(func_1(41268i) & vec4<u32>(1u, 1u, 1u, 1u)));
    let var_1 = Struct_3(_wgslsmith_add_u32(var_0.x, var_0.x) ^ func_2(vec2<bool>(false, false), select(vec4<bool>(true, false, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false)), vec4<bool>(false, true, false, false)), vec2<bool>(select(true, true, false), true)).x, false, _wgslsmith_clamp_vec4_u32(~(~(~vec4<u32>(var_0.x, 0u, var_0.x, var_0.x))), var_0, vec4<u32>(var_0.x, ~func_3(vec3<f32>(1636f, -512f, 432f)), ~abs(var_0.x), func_1(u_input.a.x).x | 1u)));
    var var_2 = Struct_2(Struct_1(any(vec2<bool>(true, true)), var_1.c.x, var_1.c.xxw, 4294967295u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1785f, 830f) - -1000f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(614f * 3079f))))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(103f * _wgslsmith_f_op_f32(ceil(-855f)))))), Struct_1(!var_1.b, ~_wgslsmith_div_u32(_wgslsmith_sub_u32(var_0.x, 73355u), ~var_0.x), _wgslsmith_mult_vec3_u32(~_wgslsmith_mult_vec3_u32(var_0.ywy, var_1.c.yyy), ~vec3<u32>(8430u, var_1.c.x, 1u) << (firstLeadingBit(vec3<u32>(0u, var_0.x, 1u)) % vec3<u32>(32u))), _wgslsmith_sub_u32(var_0.x, max(var_1.a, ~0u))), abs(-_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, -50832i, 7432i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), select(vec4<i32>(-30814i, -70421i, 2147483647i, u_input.a.x), vec4<i32>(55190i, -13794i, -28388i, 0i), var_1.b))));
    var_2 = Struct_2(var_2.c, -482f, var_2.a, vec4<i32>(-1i, var_2.d.x | (~u_input.a.x ^ 0i), ~(_wgslsmith_mult_i32(u_input.a.x, var_2.d.x) << (var_2.c.c.x % 32u)), -u_input.a.x));
    var var_3 = (true && all(vec2<bool>(var_1.b, true))) || all(!vec4<bool>(!var_2.a.a, true & var_2.a.a, true, false));
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_2.b), var_2.b) + vec2<f32>(2117f, var_2.b)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2016f, var_2.b))));
    var_3 = false;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~max(var_1.c.x & var_1.a, 1u), 1u >> (~var_0.x % 32u), ~(~(~var_1.c.x)), ~var_1.c.x), var_4.x);
}

