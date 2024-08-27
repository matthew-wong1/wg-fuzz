struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<f32>,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: f32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> vec3<u32> {
    global0 = max(u_input.a.x, ~117920u);
    let var_0 = abs(~(~(firstTrailingBit(arg_0.a.zy) & select(vec2<u32>(arg_0.a.x, arg_0.a.x), vec2<u32>(13518u, 9114u), true))));
    var var_1 = Struct_1(~arg_0.a);
    let var_2 = Struct_2(Struct_1(~(u_input.a & vec3<u32>(0u, 59239u, 1u)) & (vec3<u32>(1u, arg_0.a.x, u_input.a.x) & firstTrailingBit(var_1.a))), 2147483647i, arg_0);
    var_1 = Struct_1(arg_0.a >> (~u_input.a % vec3<u32>(32u)));
    return max(firstTrailingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, countOneBits(arg_0.a.x), u_input.a.x), max(var_2.c.a, vec3<u32>(24722u, u_input.a.x, 4354u)) >> (vec3<u32>(var_0.x, 0u, 4294967295u) % vec3<u32>(32u)), countOneBits(_wgslsmith_mod_vec3_u32(arg_0.a, u_input.a)))), u_input.a);
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(func_3(Struct_1(_wgslsmith_mod_vec3_u32(u_input.a, vec3<u32>(4294967295u, u_input.a.x, 4294967295u))), _wgslsmith_f_op_f32(-arg_0.x))), firstTrailingBit(_wgslsmith_mod_i32(-17387i, -69494i)), Struct_1(u_input.a));
    global1 = _wgslsmith_f_op_f32(exp2(arg_0.x));
    var_0 = Struct_2(Struct_1(~vec3<u32>(4294967295u, u_input.a.x, u_input.a.x) << (vec3<u32>(_wgslsmith_add_u32(0u, u_input.a.x), var_0.c.a.x, u_input.a.x) % vec3<u32>(32u))), -var_0.b, Struct_1(~_wgslsmith_div_vec3_u32(vec3<u32>(var_0.c.a.x, 38883u, 15391u), u_input.a) & _wgslsmith_div_vec3_u32(var_0.a.a, max(var_0.c.a, var_0.a.a))));
    global1 = -2341f;
    return var_0.c;
}

fn func_1() -> Struct_1 {
    var var_0 = func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))))));
    let var_1 = -25878i;
    var var_2 = _wgslsmith_div_i32(1i, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(countOneBits(var_1), var_1 & var_1, -var_1), abs(vec3<i32>(-39055i, 21744i, 9934i))), vec3<i32>(var_1, ~var_1, _wgslsmith_add_i32(7545i, var_1) | max(-2147483647i, var_1))));
    return func_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(831f)))) * _wgslsmith_f_op_f32(round(1399f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1063f)))));
}

fn func_4(arg_0: Struct_2, arg_1: u32) -> f32 {
    let var_0 = func_1();
    let var_1 = _wgslsmith_f_op_f32(max(205f, _wgslsmith_f_op_f32(-1617f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(433f, 503f) - _wgslsmith_f_op_f32(min(-1295f, -1000f)))))) == _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1672f, -503f))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-347f * 933f), 809f, false))), true));
    global0 = arg_0.c.a.x;
    global0 = ~4294967295u;
    global0 = 33077u;
    return -617f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec3<u32>(~0u, u_input.a.x, ~(~61479u)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(var_0.a.x, 56482u), u_input.a.xx), vec2<u32>(u_input.a.x, var_0.a.x))), _wgslsmith_f_op_f32(step(3399f, _wgslsmith_f_op_f32(f32(-1f) * -704f))), vec3<f32>(-580f, 535f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1423f - -2121f))), -_wgslsmith_mult_vec2_i32(-(~vec2<i32>(48920i, 1i)), firstTrailingBit(max(vec2<i32>(-291i, 0i), vec2<i32>(26173i, -19209i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_2(Struct_1(vec3<u32>(0u, u_input.a.x, var_0.a.x)), 767i >> (var_0.a.x % 32u), func_1()), _wgslsmith_add_u32(_wgslsmith_div_u32(1u, var_0.a.x), 1u))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1734f * 474f), _wgslsmith_f_op_f32(188f * -993f)))));
}

