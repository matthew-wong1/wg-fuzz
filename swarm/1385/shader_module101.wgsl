struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec3<f32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1197f;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: f32) -> bool {
    global0 = 1504f;
    var var_0 = Struct_1(~abs(vec2<u32>(21832u, 1u)) << (_wgslsmith_mod_vec2_u32(u_input.b.xx, u_input.b.zy) % vec2<u32>(32u)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-907f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1454f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_1, arg_1, false)), 1000f)))), vec3<f32>(-587f, arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1917f, arg_1)) * _wgslsmith_f_op_f32(1282f + arg_1)))), vec2<bool>(all(vec4<bool>(true, arg_0, arg_0, all(vec2<bool>(true, arg_0)))), !any(vec3<bool>(arg_0, true, true)) && (any(vec4<bool>(true, arg_0, false, true)) && (-2147483647i < u_input.d))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.c)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1089f, 526f, var_0.c.x)), _wgslsmith_f_op_vec3_f32(exp2(var_0.c)), false)) - var_0.c))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -452f), _wgslsmith_f_op_f32(step(-1103f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1))) - -863f)));
    let var_2 = select(!var_0.d, vec2<bool>(-672f < _wgslsmith_f_op_f32(var_0.c.x + _wgslsmith_f_op_f32(-arg_1)), var_0.d.x), true);
    let var_3 = Struct_1(~(~(vec2<u32>(4597u, var_0.a.x) >> (_wgslsmith_mult_vec2_u32(u_input.b.xz, vec2<u32>(u_input.b.x, 852u)) % vec2<u32>(32u)))), arg_1, var_0.c, vec2<bool>(true, var_0.d.x));
    return var_0.d.x;
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> f32 {
    global0 = _wgslsmith_f_op_f32(arg_1.b + arg_1.b);
    let var_0 = true;
    global0 = arg_1.b;
    var var_1 = arg_1;
    var var_2 = ~min(~(u_input.a | min(var_1.a.x, u_input.a)), ~_wgslsmith_mult_u32(u_input.c.x, 20180u) ^ 23685u);
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.c.x)));
}

fn func_2(arg_0: f32, arg_1: vec2<u32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_3(~u_input.c.x < 19236u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))), Struct_1(~arg_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1548f), arg_0), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2217f, -854f, 802f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-3209f, arg_0, arg_0) * vec3<f32>(-1170f, 695f, arg_0))), vec2<bool>(true, true)))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0))));
    let var_1 = !(!(!(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
    var var_2 = 32847u;
    global0 = arg_0;
    return var_0;
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(f32(-1f) * -1142f), ~u_input.c)))) + _wgslsmith_f_op_f32(-1f));
    global0 = var_0;
    let var_1 = ~(vec4<u32>(u_input.c.x, u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(9354u, u_input.b.x), vec2<u32>(u_input.a, u_input.a)) & u_input.c.x, 4294967295u) ^ firstTrailingBit(vec4<u32>(_wgslsmith_mod_u32(69759u, u_input.a), ~0u, u_input.a << (89202u % 32u), ~u_input.b.x)));
    let var_2 = max(_wgslsmith_div_vec3_i32(vec3<i32>(~u_input.d, ~(-2147483647i), 53833i) ^ _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.e, vec3<i32>(1i, -48011i, u_input.e.x)), u_input.e << (var_1.yzz % vec3<u32>(32u))), abs(vec3<i32>(u_input.e.x, u_input.e.x ^ u_input.d, min(0i, -2147483647i)))), firstTrailingBit(max(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.d, 0i, 2147483647i), vec3<i32>(u_input.d, 35650i, -15769i), vec3<i32>(u_input.d, 2147483647i, 10611i)), u_input.e)));
    let var_3 = min(vec4<u32>(~u_input.b.x, ~min(_wgslsmith_sub_u32(var_1.x, 33998u), firstTrailingBit(1u)), var_1.x, reverseBits(1u)), ~_wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(44932u, 0u, u_input.a, 40962u)) >> (var_1 % vec4<u32>(32u)), reverseBits(var_1)));
    return _wgslsmith_f_op_f32(func_2(var_0, u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-225f))) - _wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1782f, -631f, false)), 1123f)))));
    global0 = _wgslsmith_f_op_f32(-708f - -383f);
    global0 = 2652f;
    let var_0 = abs(u_input.c.x);
    var var_1 = Struct_1(~(~(~abs(u_input.b.zz))), -222f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), vec2<bool>(false, any(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)))));
    var var_2 = Struct_1(~firstTrailingBit(_wgslsmith_sub_vec2_u32(~u_input.b.xz, vec2<u32>(4751u, 0u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(424f, var_1.b)), 720f, true))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c.x - -1374f) - _wgslsmith_f_op_f32(round(var_1.b))), -1456f))), vec2<bool>(all(vec3<bool>(true, var_1.b > -330f, var_1.d.x)), false));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.x, 61113i, u_input.e.zx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(821f * var_2.b), _wgslsmith_f_op_f32(func_4(var_2.d.x, Struct_1(vec2<u32>(0u, 29212u), var_1.b, vec3<f32>(var_2.b, 1530f, var_1.c.x), var_2.d))))))), 27517i);
}

