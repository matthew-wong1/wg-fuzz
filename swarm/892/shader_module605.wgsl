struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: vec2<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<u32>) -> vec4<i32> {
    var var_0 = _wgslsmith_mod_u32(~(~(~10090u) | arg_0.x), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(u_input.a.yz, ~u_input.a.yx), countOneBits(u_input.a.x), _wgslsmith_div_u32(~(~2289u), arg_0.x)));
    let var_1 = true;
    let var_2 = Struct_1(~(_wgslsmith_add_vec2_i32(u_input.c.zz, u_input.b) >> (u_input.a.xx % vec2<u32>(32u))) & (u_input.c.zz >> (arg_0.wy % vec2<u32>(32u))), _wgslsmith_sub_u32(u_input.d | u_input.d, 12520u), _wgslsmith_div_vec3_i32(u_input.c, ~vec3<i32>(u_input.c.x, u_input.b.x, 0i)), var_1, 1252f);
    var var_3 = min(~u_input.a, vec4<u32>(u_input.d, var_2.b, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(arg_0, vec4<u32>(1u, arg_0.x, arg_0.x, arg_0.x)) ^ ~vec4<u32>(24788u, u_input.d, 28168u, arg_0.x), ~u_input.a), firstLeadingBit(select(_wgslsmith_add_u32(u_input.d, 1u), 11379u | var_2.b, all(vec4<bool>(var_1, var_1, var_2.d, var_2.d))))));
    let var_4 = ~(~arg_0);
    return abs(~vec4<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 1i, u_input.b.x, 2147483647i), firstLeadingBit(vec4<i32>(-33886i, var_2.a.x, -1i, u_input.b.x))), _wgslsmith_add_i32(31679i, min(u_input.b.x, 70i)), u_input.c.x));
}

fn func_2(arg_0: vec4<u32>, arg_1: bool) -> vec2<bool> {
    let var_0 = ~countOneBits(-func_3(firstLeadingBit(u_input.a)));
    var var_1 = vec4<bool>(false, select(arg_1, arg_1, true), arg_1, arg_1);
    var var_2 = var_1.zwx;
    return vec2<bool>(arg_1, true);
}

fn func_1() -> vec4<u32> {
    let var_0 = abs(u_input.a.ww);
    var var_1 = Struct_1(u_input.b, ~_wgslsmith_mod_u32(~47226u, 0u >> (var_0.x % 32u)) & u_input.a.x, u_input.c, !any(func_2(vec4<u32>(u_input.a.x, u_input.a.x, 6779u, u_input.d) >> (u_input.a % vec4<u32>(32u)), -508i != u_input.c.x)), 1508f);
    let var_2 = Struct_1(u_input.b, u_input.a.x, _wgslsmith_mod_vec3_i32(u_input.c & (-u_input.c & vec3<i32>(-8649i, u_input.c.x, 40160i)), vec3<i32>(u_input.c.x, _wgslsmith_sub_i32(2147483647i, 4406i), _wgslsmith_mod_i32(u_input.b.x, -1i)) & ~select(u_input.c, var_1.c, vec3<bool>(true, var_1.d, var_1.d))), !var_1.d, var_1.e);
    let var_3 = Struct_1(vec2<i32>(var_2.a.x, 32791i), abs(var_1.b), ~(~_wgslsmith_mod_vec3_i32(vec3<i32>(var_2.a.x, -8249i, u_input.b.x), vec3<i32>(var_1.c.x, u_input.c.x, var_1.a.x))) << (u_input.a.xzy % vec3<u32>(32u)), true, 911f);
    var var_4 = Struct_1(vec2<i32>(-1i, -60710i), firstLeadingBit(_wgslsmith_dot_vec3_u32(abs(u_input.a.wwy), vec3<u32>(var_1.b & var_1.b, _wgslsmith_dot_vec4_u32(vec4<u32>(39636u, 48218u, 1u, var_3.b), vec4<u32>(1729u, 1u, 54842u, 4294967295u)), countOneBits(1u)))), max(-vec3<i32>(var_2.c.x, -1i, firstLeadingBit(u_input.b.x)), select(var_2.c, vec3<i32>(0i, var_2.c.x, 39913i) >> (u_input.a.xwx % vec3<u32>(32u)), (var_1.d || false) || (var_1.c.x <= 2147483647i))), var_2.d, var_2.e);
    return reverseBits(vec4<u32>(0u, u_input.a.x, ~1u, ~150740u)) >> (u_input.a % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = _wgslsmith_mult_i32(_wgslsmith_sub_i32(_wgslsmith_div_i32(~u_input.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 0i, u_input.b.x, 2147483647i), vec4<i32>(u_input.b.x, 17908i, u_input.c.x, -573i))), ~u_input.b.x), firstLeadingBit(~func_3(vec4<u32>(56276u, u_input.d, 1u, 4294967295u)).x)) ^ _wgslsmith_div_i32(_wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.c.x, u_input.b.x), -2147483647i | u_input.b.x) & u_input.b.x, _wgslsmith_dot_vec2_i32(u_input.c.xz, u_input.c.zx) & reverseBits(~0i));
    var var_2 = u_input.a;
    let var_3 = var_2.zzz;
    let var_4 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, -365f, _wgslsmith_f_op_f32(max(-1000f, 1000f)), _wgslsmith_f_op_f32(floor(-315f))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-2320f, _wgslsmith_f_op_f32(-140f + 852f), -2193f, _wgslsmith_f_op_f32(1316f - 519f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(424f, 945f, 1000f, 145f))))))));
    var_2 = vec4<u32>(var_3.x, abs(select(~u_input.a.x & max(var_0.x, 5619u), var_2.x & (1u ^ var_0.x), true)), u_input.a.x, _wgslsmith_div_u32(var_0.x, ~u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1472f + _wgslsmith_f_op_f32(-var_4.x)), _wgslsmith_f_op_f32(sign(var_4.x))), var_2.x, ~(~func_1().zx), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-114f, 734f, true))), var_4.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-165f, var_4.x))), _wgslsmith_f_op_vec3_f32(step(var_4.wxw, vec3<f32>(_wgslsmith_f_op_f32(var_4.x * 991f), _wgslsmith_div_f32(977f, 741f), _wgslsmith_f_op_f32(step(var_4.x, 591f))))), func_2(u_input.a, countOneBits(u_input.b.x) >= ~u_input.c.x).x)));
}

