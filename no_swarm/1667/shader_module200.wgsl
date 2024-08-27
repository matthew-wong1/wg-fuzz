struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: u32,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> i32 {
    let var_0 = u_input.b.x;
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.b, 182f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.b))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(157f - 1035f)))))), ~_wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -arg_0.c, vec4<i32>(-534i, 1i, _wgslsmith_clamp_i32(32870i, -2147483647i, arg_0.c.x), i32(-1i) * -1i)), arg_0);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-947f * _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(ceil(arg_0.b)))));
    var var_3 = ~(~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0, var_0, var_0, var_0), vec4<u32>(1u, u_input.b.x, 0u, u_input.d)), ~u_input.b.x, 17322u, ~var_0) & vec4<u32>(_wgslsmith_dot_vec2_u32(select(u_input.b.yx, u_input.b.yx, var_1.c.a), u_input.b.xx << (u_input.b.xz % vec2<u32>(32u))), u_input.b.x, ~10247u, var_0));
    return ~max(-1i, ~_wgslsmith_mod_i32(-30082i, _wgslsmith_mult_i32(arg_1, -2147483647i)));
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    let var_0 = Struct_2(vec4<f32>(_wgslsmith_div_f32(arg_0.b, _wgslsmith_f_op_f32(arg_0.b - -1328f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.b, 614f, arg_0.a))) * -107f), 850f, arg_0.b), ~arg_0.c.x, Struct_1(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-841f)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-345f, -1000f))))), min(reverseBits(u_input.c) << (~vec4<u32>(u_input.d, 36591u, u_input.d, 3334u) % vec4<u32>(32u)), vec4<i32>(arg_1, ~(-1i), func_3(arg_0, 2147483647i), arg_1))));
    let var_1 = -2147483647i;
    var var_2 = ~(~arg_0.c.x);
    var_2 = _wgslsmith_mult_i32(-_wgslsmith_div_i32(-79143i, var_1 << (u_input.d % 32u)) | abs(~_wgslsmith_add_i32(u_input.c.x, arg_1)), ~2147483647i);
    var var_3 = ~_wgslsmith_mod_u32(0u, 1u);
    return var_0.c;
}

fn func_1() -> Struct_1 {
    let var_0 = func_2(Struct_1(all(vec3<bool>(true, true, false)), 318f, _wgslsmith_add_vec4_i32((vec4<i32>(-18439i, u_input.a, u_input.c.x, 2147483647i) & vec4<i32>(30066i, u_input.a, 9634i, 2147483647i)) << (abs(vec4<u32>(u_input.b.x, 60425u, u_input.b.x, 104079u)) % vec4<u32>(32u)), -vec4<i32>(u_input.e.x, u_input.c.x, 31611i, u_input.e.x) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, 1u, u_input.b.x, u_input.d), vec4<u32>(4294967295u, 0u, u_input.b.x, u_input.d)) % vec4<u32>(32u)))), -select(max(u_input.a, u_input.a ^ u_input.c.x), -29589i, all(vec4<bool>(true, true, true, true))));
    let var_1 = var_0.a && var_0.a;
    var var_2 = func_2(Struct_1(any(!select(vec2<bool>(true, var_0.a), vec2<bool>(var_0.a, var_0.a), var_1)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-136f + _wgslsmith_f_op_f32(max(var_0.b, 743f))))), vec4<i32>(-1i, -831i, var_0.c.x, func_3(var_0, func_2(Struct_1(false, var_0.b, u_input.c), -17132i).c.x))), 1i);
    var_2 = var_0;
    var var_3 = Struct_3(u_input.c, vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(var_0.b, 264f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1774f)))), _wgslsmith_f_op_f32(-var_2.b), var_2.b), -2147483647i, func_2(var_0, u_input.e.x));
    return Struct_1(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1832f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.b + var_0.b), -948f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(856f + 336f) * _wgslsmith_f_op_f32(-var_2.b)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b)))), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, select(-2147483647i, 1i, var_3.d.a), var_2.c.x & 0i, var_0.c.x) << (vec4<u32>(42727u, 0u, 36675u, u_input.b.x >> (99050u % 32u)) % vec4<u32>(32u)), ~(-_wgslsmith_div_vec4_i32(vec4<i32>(var_3.c, 26442i, -14269i, -2147483647i), vec4<i32>(var_0.c.x, 72543i, -2147483647i, var_0.c.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = !select(vec4<bool>(any(vec3<bool>(false, true, true)), var_0.a, false || (var_0.a | var_0.a), false), vec4<bool>(true, var_0.a, any(vec4<bool>(var_0.a, true, var_0.a, true)), !any(vec2<bool>(var_0.a, false))), select(!(!vec4<bool>(var_0.a, false, var_0.a, var_0.a)), !vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a), var_0.a));
    var_0 = func_1();
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-105f, 1086f, var_0.b, var_0.b), vec4<f32>(-190f, var_0.b, 222f, var_0.b), true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, 943f, -534f, 168f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, var_0.b, -2324f, var_0.b) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-439f, var_0.b, -1000f, var_0.b)))))), var_0.c.x, func_1());
    var_0 = func_1();
    let var_3 = !select(vec4<bool>(var_0.a, !(true | var_0.a), var_2.c.a & (u_input.b.x >= u_input.d), false), vec4<bool>(var_2.c.a, func_2(var_2.c, min(u_input.a, 1i)).a, var_1.x, true), select(select(var_1, !vec4<bool>(var_1.x, false, var_1.x, true), false), !var_1, select(var_2.c.a, true, var_0.a)));
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(5417u, 86309u, 22403u, u_input.b.x), ~vec4<u32>(u_input.b.x, 40491u, u_input.d, 19700u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(var_2.a.wzw, var_2.a.zxy)))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_2.a.xwz), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, -220f, var_0.b)), vec3<bool>(var_3.x, var_3.x, false)))))), 1u, 1356f, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(var_2.a.ww)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-376f, 267f)), var_2.a.zz)))));
}

