struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: i32,
    c: Struct_3,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_3) -> f32 {
    let var_0 = arg_1;
    return -1022f;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<bool>) -> vec3<u32> {
    let var_0 = Struct_4(arg_1, 0i, Struct_3(Struct_1(_wgslsmith_f_op_f32(func_3(u_input.b, Struct_3(Struct_1(arg_0.x, false), 15864i, Struct_1(arg_0.x, false)))), all(arg_1) | true), countOneBits(select(_wgslsmith_add_i32(-26625i, u_input.a), -1i, false)), Struct_1(1331f, arg_1.x)), abs(-vec2<i32>(_wgslsmith_div_i32(12978i, 2147483647i), u_input.a)));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * -996f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-471f)) - _wgslsmith_f_op_f32(ceil(772f))));
    var_1 = var_0.c.c.a;
    var_1 = var_0.c.a.a;
    let var_2 = var_0;
    return abs(vec3<u32>(_wgslsmith_add_u32(u_input.b, ~(~u_input.b)), select(_wgslsmith_mult_u32(1u, 31830u) | (u_input.b << (0u % 32u)), u_input.b, all(vec3<bool>(arg_1.x, true, var_0.c.c.b))), firstTrailingBit(~_wgslsmith_sub_u32(u_input.b, u_input.b))));
}

fn func_1() -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 886f) * vec2<f32>(964f, -470f)))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-135f, -1005f) * vec2<f32>(-1026f, -1155f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-173f, 472f), vec2<f32>(-238f, 1000f)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1238f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-909f)), _wgslsmith_f_op_f32(min(-1015f, 508f)))))));
    var_0 = vec2<f32>(var_0.x, var_0.x);
    let var_1 = ~u_input.b | _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(func_2(vec4<f32>(-1708f, -880f, var_0.x, 1763f), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false))), vec3<u32>(~u_input.b, ~0u, u_input.b)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, u_input.b, 1u), vec4<u32>(u_input.b, u_input.b, 18608u, 4294967295u)));
    let var_2 = min(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(max(vec3<i32>(u_input.a, u_input.a, -36143i), vec3<i32>(u_input.a, -2147483647i, 2147483647i)), vec3<i32>(-1i, u_input.a, -2147483647i)), reverseBits(-vec3<i32>(26187i, -1i, -14552i))), ~_wgslsmith_mult_i32(u_input.a, u_input.a)), _wgslsmith_div_i32(u_input.a ^ 2147483647i, 36802i));
    let var_3 = _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1350f)))) + _wgslsmith_f_op_f32(f32(-1f) * -611f)));
    return _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_div_u32(0u, 4294967295u), abs(u_input.b)), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 44497u), ~vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, u_input.b))), ~_wgslsmith_clamp_vec2_u32(~vec2<u32>(var_1, 487u), vec2<u32>(51101u, 1231u) >> (vec2<u32>(32732u, var_1) % vec2<u32>(32u)), vec2<u32>(4294967295u, u_input.b) ^ vec2<u32>(4294967295u, 1u))), _wgslsmith_div_vec2_u32((~vec2<u32>(4294967295u, var_1) | vec2<u32>(72199u, var_1)) & _wgslsmith_sub_vec2_u32(min(vec2<u32>(62570u, var_1), vec2<u32>(var_1, 64780u)), _wgslsmith_mult_vec2_u32(vec2<u32>(var_1, var_1), vec2<u32>(u_input.b, 21432u))), ~(~_wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(79959u, u_input.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(~_wgslsmith_mult_vec2_u32(~vec2<u32>(66056u, u_input.b), vec2<u32>(u_input.b, 78557u) << (vec2<u32>(24341u, 12156u) % vec2<u32>(32u))), _wgslsmith_add_vec2_u32(countOneBits(vec2<u32>(80532u, 71501u)), _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, u_input.b), vec2<u32>(u_input.b, 113720u))) & vec2<u32>(_wgslsmith_mult_u32(u_input.b, u_input.b), u_input.b)), _wgslsmith_clamp_vec2_u32(func_1(), ~_wgslsmith_div_vec2_u32(vec2<u32>(23463u, u_input.b), vec2<u32>(4351u, 1u)), vec2<u32>(u_input.b, u_input.b)) & abs(select(~vec2<u32>(19210u, u_input.b), abs(vec2<u32>(1u, u_input.b)), vec2<bool>(true, false))));
    let var_1 = vec4<i32>(max(u_input.a, -21631i), firstLeadingBit(u_input.a), u_input.a, 0i << (firstTrailingBit(func_2(vec4<f32>(173f, -946f, 1785f, -185f), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true)).x) % 32u));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(492f + _wgslsmith_f_op_f32(395f - 376f))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(423f, 2800f, _wgslsmith_f_op_f32(min(249f, -383f)))) - vec3<f32>(_wgslsmith_f_op_f32(min(-773f, _wgslsmith_f_op_f32(299f - -343f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(359f, 944f, false)), _wgslsmith_f_op_f32(abs(-1166f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, -2193f, true))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(814f, 642f))), -762f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-840f)), 342f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-480f)))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1714f)) + _wgslsmith_div_f32(-1279f, -280f)))))));
}

