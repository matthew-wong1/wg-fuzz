struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: Struct_2,
    d: vec3<i32>,
    e: vec2<bool>,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: f32,
    d: vec3<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 30> = array<bool, 30>(true, false, false, false, false, true, false, true, true, false, false, false, false, false, true, false, true, false, false, true, false, true, false, true, false, true, false, true, true, false);

var<private> global1: array<bool, 23>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> vec4<f32> {
    var var_0 = vec4<i32>(_wgslsmith_add_i32(select(u_input.c.x, -2147483647i, (u_input.a < 22438u) != true), u_input.c.x), 16781i, abs(2147483647i), firstTrailingBit(51420i));
    let var_1 = countOneBits(_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(6199u, 108315u), vec2<u32>(3517u, u_input.a)), ~(vec2<u32>(6834u, 1u) ^ vec2<u32>(1u, u_input.a))), abs(~vec2<u32>(u_input.a, 73700u) & _wgslsmith_div_vec2_u32(vec2<u32>(84960u, 4294967295u), vec2<u32>(1u, 37444u)))));
    let var_2 = vec2<f32>(1495f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1544f), 955f)))) + 1670f));
    global1 = array<bool, 23>();
    var var_3 = min(u_input.b.xzy, max(~vec3<i32>(min(0i, -686i), ~u_input.b.x, min(2147483647i, u_input.c.x)), vec3<i32>(max(var_0.x, -var_0.x), _wgslsmith_mult_i32(_wgslsmith_sub_i32(var_0.x, var_0.x), _wgslsmith_mod_i32(-2147483647i, u_input.b.x)), _wgslsmith_sub_i32(-1i, 1i))));
    return vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-377f, -475f)))), -805f, var_2.x, var_2.x);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: vec4<f32>) -> f32 {
    var var_0 = Struct_4(vec2<u32>(select(~firstTrailingBit(37721u), arg_1.a, global0[_wgslsmith_index_u32(abs(arg_1.a), 30u)] || false), ~arg_1.a));
    var_0 = Struct_4(_wgslsmith_mult_vec2_u32(~abs(firstTrailingBit(var_0.a)), _wgslsmith_clamp_vec2_u32(vec2<u32>(22630u ^ var_0.a.x, arg_1.a), ~(~vec2<u32>(0u, arg_1.a)), ~var_0.a)));
    return _wgslsmith_f_op_vec4_f32(func_3()).x;
}

fn func_2() -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)));
    global0 = array<bool, 30>();
    var var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2532f), 988f), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(min(1159f, -1649f))), -908f))));
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x))) + 358f)), _wgslsmith_f_op_f32(func_4(Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -341f), -2147483647i), Struct_1(~4294967295u & (u_input.a | u_input.a), vec3<f32>(1f, -1801f, var_1.x), vec3<i32>(2147483647i, u_input.b.x & u_input.c.x, 1i)), -u_input.c.yzz | u_input.b.wwx, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 665f, -314f, var_1.x))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3()), vec4<f32>(var_1.x, 1229f, 789f, -1341f))))));
    return Struct_4(~vec2<u32>(u_input.a, ~u_input.a) & ~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.a), ~vec2<u32>(65927u, u_input.a)));
}

fn func_1() -> StorageBuffer {
    global0 = array<bool, 30>();
    let var_0 = func_2();
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(-236f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1f)))));
    global1 = array<bool, 23>();
    global0 = array<bool, 30>();
    return StorageBuffer(vec3<u32>(u_input.a, u_input.a & ~(~var_0.a.x), 4294967295u), -min(vec2<i32>(~u_input.c.x, -2147483647i), vec2<i32>(~u_input.c.x, reverseBits(u_input.c.x))), _wgslsmith_f_op_f32(max(-679f, -678f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(368f, 715f, -443f), vec3<f32>(179f, -900f, -778f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1628f, -1149f, 1325f) * vec3<f32>(125f, -1000f, 263f))))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1772f, -1362f) + _wgslsmith_div_f32(2290f, -463f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1455f)) * _wgslsmith_f_op_f32(-692f - 1459f)))), min(vec2<i32>(abs(max(43177i, u_input.c.x)), 1i), vec2<i32>(-15053i, u_input.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 23>();
    let x = u_input.a;
    s_output = func_1();
}

