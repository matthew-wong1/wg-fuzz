struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 22>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> u32 {
    global0 = array<f32, 22>();
    var var_0 = 500f;
    var_0 = _wgslsmith_f_op_f32(abs(arg_0.a.x));
    let var_1 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-989f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(482f))))), global0[_wgslsmith_index_u32(41441u, 22u)]), _wgslsmith_f_op_vec2_f32(arg_0.a.zw + _wgslsmith_f_op_vec2_f32(vec2<f32>(-743f, _wgslsmith_f_op_f32(-arg_0.a.x)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.x, global0[_wgslsmith_index_u32(arg_1, 22u)])) - _wgslsmith_f_op_vec2_f32(arg_0.a.xw - vec2<f32>(366f, 1059f)))))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-463f + arg_0.a.x) + _wgslsmith_f_op_f32(-234f + -604f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c.x, 22u)] * arg_0.a.x)))));
    return ~(~_wgslsmith_sub_u32(abs(arg_1) ^ (u_input.c.x << (u_input.c.x % 32u)), arg_1));
}

fn func_2() -> Struct_1 {
    global0 = array<f32, 22>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-472f))), -205f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c.x, 22u)] + global0[_wgslsmith_index_u32(24417u, 22u)])), _wgslsmith_div_f32(-1140f, 1000f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(638f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c.x, 22u)] + global0[_wgslsmith_index_u32(u_input.c.x, 22u)]), _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(u_input.c.x, 22u)], 651f)), -976f))));
    let var_1 = var_0.a.x;
    let var_2 = func_3(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c.x, 22u)]))), 1000f, _wgslsmith_f_op_f32(f32(-1f) * -787f), _wgslsmith_f_op_f32(select(var_0.a.x, 137f, all(vec4<bool>(true, false, true, false)))))), abs(~(~abs(u_input.c.x))));
    let var_3 = 1850f;
    return Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-var_0.a), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1212f, global0[_wgslsmith_index_u32(var_2, 22u)])) * _wgslsmith_div_f32(var_0.a.x, 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) * global0[_wgslsmith_index_u32(14444u, 22u)]), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1449f))), 601f))));
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    global0 = array<f32, 22>();
    let var_0 = ~firstTrailingBit(vec4<u32>(~6837u, 21436u | u_input.c.x, _wgslsmith_add_u32(25986u, u_input.c.x), ~63285u) | u_input.c);
    global0 = array<f32, 22>();
    let var_1 = arg_1;
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(arg_1.a.zzw, vec3<f32>(561f, var_1.a.x, global0[_wgslsmith_index_u32(4294967295u, 22u)]))), _wgslsmith_f_op_vec3_f32(ceil(var_1.a.xxy))), var_1.a.zyw), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(var_1.a.zzy, _wgslsmith_div_vec3_f32(var_1.a.xxz, vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 22u)], -511f, -334f))))))), _wgslsmith_f_op_vec3_f32(min(var_1.a.www, var_1.a.xwx)));
    return var_1;
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_1) -> i32 {
    var var_0 = select(firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(i32(-1i) * -9083i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -1i, 9801i), vec3<i32>(-62176i, u_input.b, 19470i)), u_input.b ^ -1i, 2698i), _wgslsmith_mod_vec4_i32(vec4<i32>(-21797i, u_input.a, u_input.a, 1i), vec4<i32>(u_input.b, u_input.a, 40815i, u_input.b) ^ vec4<i32>(0i, -23565i, u_input.b, u_input.a)))), (vec4<i32>(-1i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(6960i, 1i)), u_input.a, _wgslsmith_add_i32(u_input.a, u_input.a)) << (~(~u_input.c) % vec4<u32>(32u))) & vec4<i32>(u_input.b, -u_input.b, u_input.a, ~(u_input.b & u_input.a)), select(vec4<bool>(-1020f < _wgslsmith_f_op_f32(-806f - arg_1.a.x), true, any(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), false)), true | (-398f < global0[_wgslsmith_index_u32(0u, 22u)])), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), u_input.a == u_input.b), true));
    var var_1 = func_4(true, Struct_1(_wgslsmith_f_op_vec4_f32(-arg_1.a)));
    var var_2 = _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.c, u_input.c), ~select(vec4<u32>(firstLeadingBit(4294967295u), ~u_input.c.x, 52520u, ~0u), countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 4294967295u, 1u, 5375u), u_input.c)), true));
    var_2 = ~(~50690u);
    global0 = array<f32, 22>();
    return u_input.b;
}

fn func_6(arg_0: i32, arg_1: u32, arg_2: f32, arg_3: vec4<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(step(func_4(any(vec4<bool>(true, true, true, arg_3.x >= 0u)), func_2()).a.x, arg_2));
    let var_1 = ~((select(~arg_3.yzy, _wgslsmith_add_vec3_u32(vec3<u32>(arg_1, 4294967295u, arg_3.x), vec3<u32>(19053u, arg_1, arg_1)), vec3<bool>(true, true, true)) | ~(~arg_3.yyy)) ^ vec3<u32>(arg_3.x, ~u_input.c.x | firstLeadingBit(14013u), _wgslsmith_sub_u32(~u_input.c.x, u_input.c.x << (6198u % 32u))));
    var var_2 = any(vec3<bool>(!all(vec4<bool>(false, true, false, true)) != true, true, arg_2 <= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0 + arg_2), _wgslsmith_f_op_f32(arg_2 - -160f)))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-func_2().a.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1299f - _wgslsmith_f_op_f32(trunc(1034f)))))));
    var var_4 = vec3<bool>(true, any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(any(vec2<bool>(false, false)), true, 1056f == var_3))), true);
    return func_2();
}

fn func_1() -> Struct_1 {
    global0 = array<f32, 22>();
    global0 = array<f32, 22>();
    var var_0 = func_6(func_5(vec3<u32>(_wgslsmith_mod_u32(~23059u, u_input.c.x), ~(~u_input.c.x), u_input.c.x), func_4(true, func_2())), countOneBits(u_input.c.x), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(0u, 85994u), ~28535u), ~u_input.c.x & _wgslsmith_mod_u32(u_input.c.x, u_input.c.x)), 22u)]), abs(~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, u_input.c.x, u_input.c.x), u_input.c ^ vec4<u32>(84815u, u_input.c.x, u_input.c.x, 4294967295u), _wgslsmith_sub_vec4_u32(u_input.c, vec4<u32>(44901u, 17087u, 27241u, 4666u)))));
    var_0 = func_6(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, -11903i, u_input.b, 24868i) & vec4<i32>(u_input.b, u_input.b, -2147483647i, -33822i), vec4<i32>(-28718i, -1i, u_input.a, 11002i) ^ vec4<i32>(u_input.b, u_input.a, 2147483647i, u_input.a)), abs(vec4<i32>(u_input.a, u_input.a, u_input.a, 73013i))), u_input.a), 0u, -510f, ~(~(select(vec4<u32>(41156u, 1u, u_input.c.x, u_input.c.x), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), vec4<bool>(false, true, false, false)) & u_input.c)));
    let var_1 = vec4<i32>(2147483647i, ~25115i, ~(-34524i), -_wgslsmith_div_i32(u_input.b, _wgslsmith_mult_i32(u_input.b, firstLeadingBit(-5832i))));
    return func_2();
}

fn func_7(arg_0: Struct_1, arg_1: f32) -> StorageBuffer {
    let var_0 = u_input.a;
    let var_1 = ~(~vec3<i32>(u_input.b, 0i, _wgslsmith_sub_i32(u_input.b, u_input.b)) >> (abs(vec3<u32>(u_input.c.x, 1u, u_input.c.x)) % vec3<u32>(32u)));
    var var_2 = arg_0;
    var var_3 = arg_0;
    let var_4 = func_2();
    return StorageBuffer(func_1().a.x, select(vec4<u32>(0u << (1u % 32u), u_input.c.x ^ u_input.c.x, u_input.c.x, u_input.c.x) << (vec4<u32>(u_input.c.x, 1u, u_input.c.x, u_input.c.x) % vec4<u32>(32u)), abs(u_input.c), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true)), true), select(vec4<bool>(true, false, false, false), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true)), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -306f) * func_2().a.x), reverseBits(_wgslsmith_clamp_u32(u_input.c.x, 1u, 6092u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 22>();
    let x = u_input.a;
    s_output = func_7(func_1(), _wgslsmith_f_op_f32(f32(-1f) * -509f));
}

