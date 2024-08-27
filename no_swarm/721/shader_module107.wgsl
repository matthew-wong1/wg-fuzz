struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: f32,
    d: vec2<i32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<f32>,
    d: f32,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: Struct_1) -> f32 {
    var var_0 = abs(_wgslsmith_dot_vec4_i32(max(_wgslsmith_div_vec4_i32(vec4<i32>(arg_0.a, arg_0.a, 42937i, arg_0.a), vec4<i32>(1i, arg_2.d.x, -32984i, 38493i)), vec4<i32>(arg_2.d.x, arg_2.d.x, arg_0.a, arg_2.d.x) & vec4<i32>(-36159i, arg_2.d.x, arg_2.d.x, arg_0.a)), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.a, arg_0.a, -65061i, arg_0.a), min(vec4<i32>(arg_0.a, 36568i, arg_2.d.x, 0i), vec4<i32>(-10530i, arg_0.a, arg_0.a, -1i))))) >> (_wgslsmith_mod_u32(reverseBits(min(u_input.a.x & u_input.a.x, ~u_input.a.x)), _wgslsmith_div_u32(4294967295u, u_input.b.x)) % 32u);
    var_0 = _wgslsmith_dot_vec2_i32(-arg_2.d, -vec2<i32>(reverseBits(-17660i), abs(9046i)));
    let var_1 = arg_2.b;
    var var_2 = any(!(!(!vec4<bool>(var_1, false, false, false))));
    let var_3 = 1000f;
    return 202f;
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: bool, arg_3: Struct_2) -> bool {
    let var_0 = vec2<i32>(~_wgslsmith_mod_i32(~_wgslsmith_mult_i32(arg_3.a.d.x, 1i), -_wgslsmith_clamp_i32(1396i, 40625i, arg_1.a.d.x)), arg_1.a.d.x);
    var var_1 = _wgslsmith_clamp_i32(~_wgslsmith_div_i32(firstTrailingBit(_wgslsmith_add_i32(51874i, var_0.x)), select(1i, 35536i, arg_0) ^ ~arg_1.a.d.x), abs(53184i), ~_wgslsmith_add_i32(-arg_1.a.d.x, max(firstLeadingBit(arg_1.a.d.x), -1i)));
    let var_2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(-150f)), _wgslsmith_f_op_f32(1320f + arg_1.c.x))) - _wgslsmith_f_op_vec2_f32(-arg_1.c))));
    var var_3 = Struct_1(!(!arg_3.a.a), arg_3.a.b, arg_3.b, _wgslsmith_mult_vec2_i32(arg_1.a.d, vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(var_0, vec2<i32>(arg_3.a.d.x, arg_3.a.d.x), arg_1.a.d), arg_1.a.d), ~var_0.x)), arg_1.a.b);
    let var_4 = true;
    return !(!any(vec2<bool>(select(arg_0, var_4, false), var_3.b)));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1, arg_2: bool) -> i32 {
    var var_0 = Struct_2(Struct_1(vec2<bool>(func_3(arg_1.b, Struct_2(Struct_1(vec2<bool>(arg_2, arg_1.b), arg_1.e, arg_1.c, arg_1.d, true), -1000f, vec2<f32>(arg_1.c, -1923f), 731f), !arg_1.a.x, Struct_2(arg_1, arg_1.c, vec2<f32>(-1046f, arg_1.c), arg_1.c)), u_input.d.x == _wgslsmith_mult_u32(u_input.e, u_input.e)), true, arg_1.c, _wgslsmith_add_vec2_i32(select(select(arg_1.d, vec2<i32>(18982i, arg_0.a), arg_1.a), _wgslsmith_mult_vec2_i32(arg_1.d, arg_1.d), arg_1.e), _wgslsmith_div_vec2_i32(~arg_1.d, vec2<i32>(arg_1.d.x, arg_1.d.x))), any(vec4<bool>(!arg_1.b, all(vec4<bool>(arg_1.e, arg_2, arg_2, false)), true, arg_1.e))), _wgslsmith_f_op_f32(-arg_1.c), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(func_1(arg_0, vec2<f32>(133f, arg_1.c), Struct_1(arg_1.a, false, arg_1.c, vec2<i32>(38808i, arg_0.a), arg_1.e))), arg_1.c))))), arg_1.c);
    var var_1 = ~0u;
    let var_2 = vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 1u, 4294967295u, 1u), ~min(~vec4<u32>(4294967295u, 0u, 0u, u_input.a.x), vec4<u32>(85323u, 85232u, u_input.e, 14112u) >> (vec4<u32>(4294967295u, 4294967295u, u_input.a.x, 4294967295u) % vec4<u32>(32u)))), 0u);
    return _wgslsmith_div_i32(~arg_1.d.x, var_0.a.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(170f, -727f)) + _wgslsmith_f_op_f32(f32(-1f) * -1226f))), -772f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1602f) + 1f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1(Struct_3(1i), vec2<f32>(-229f, 1923f), Struct_1(vec2<bool>(false, true), false, -1000f, vec2<i32>(0i, 0i), false))))))));
    var var_1 = vec3<bool>(any(vec2<bool>(true, true)), true, select(1i, ~func_2(Struct_3(51391i), Struct_1(vec2<bool>(false, true), true, -1149f, vec2<i32>(-2147483647i, 0i), true), true), true) != 2147483647i);
    var_1 = !vec3<bool>(true, any(select(select(vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(var_1.x, false, true), false), !vec3<bool>(false, var_1.x, var_1.x), var_1.x)), var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_0, vec2<f32>(_wgslsmith_f_op_f32(var_0.x * var_0.x), 1000f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(select(var_0.x, var_0.x, true)), _wgslsmith_f_op_f32(f32(-1f) * -297f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - var_0.x) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -515f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1125f)));
}

