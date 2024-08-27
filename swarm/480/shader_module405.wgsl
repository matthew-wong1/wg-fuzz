struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32) -> f32 {
    let var_0 = _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.e.x, arg_0, firstLeadingBit(select(reverseBits(arg_0), _wgslsmith_mod_i32(arg_0, 7577i), true))), max(min(firstLeadingBit(min(vec3<i32>(38479i, 0i, arg_0), u_input.c.ywy)), vec3<i32>(-2147483647i << (u_input.d.x % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.c.x, 2147483647i, arg_0), vec4<i32>(arg_0, u_input.e.x, 55536i, -4299i)), 420i)), ~_wgslsmith_div_vec3_i32(vec3<i32>(u_input.c.x, -2147483647i, u_input.c.x), u_input.c.yxy)), vec3<i32>(-1i, -1i, u_input.c.x));
    var var_1 = Struct_1(u_input.c >> (_wgslsmith_sub_vec4_u32(vec4<u32>(~0u, _wgslsmith_mod_u32(u_input.a.x, 28272u), ~u_input.d.x, 4294967295u), ~(~u_input.b)) % vec4<u32>(32u)), false, vec2<u32>(~1u, (~u_input.a.x | reverseBits(u_input.b.x)) ^ reverseBits(1u)));
    var_1 = Struct_1(_wgslsmith_sub_vec4_i32(u_input.c, vec4<i32>(var_0.x, 1i, -14778i, _wgslsmith_mod_i32(arg_0, u_input.c.x))), var_1.b, ~(~vec2<u32>(27064u, select(var_1.c.x, var_1.c.x, true))));
    let var_2 = Struct_1(u_input.c << (vec4<u32>(select(abs(0u), min(u_input.d.x, u_input.b.x), var_1.b), ~0u, (u_input.a.x >> (1u % 32u)) << (u_input.a.x % 32u), 4546u) % vec4<u32>(32u)), true, vec2<u32>(1u, _wgslsmith_mult_u32(4294967295u, select(2050u ^ var_1.c.x, _wgslsmith_sub_u32(u_input.a.x, var_1.c.x), true))));
    var var_3 = var_2;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(283f)) * -1826f))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1610f, 1197f)))) - 419f));
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1112f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(u_input.e.x)) - _wgslsmith_f_op_f32(select(563f, -517f, false))))));
    return 8365i;
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    let var_0 = _wgslsmith_mod_i32(abs(u_input.e.x), i32(-1i) * -2147483647i) | arg_1.a.x;
    var var_1 = Struct_1(_wgslsmith_add_vec4_i32(arg_1.a, vec4<i32>(-func_2(), var_0, ~u_input.e.x, arg_1.a.x)), true, abs(~vec2<u32>(1u, 0u)) ^ arg_1.c);
    let var_2 = arg_1;
    var var_3 = _wgslsmith_dot_vec3_i32(var_2.a.yxw, _wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.c.yyz >> (u_input.b.zyx % vec3<u32>(32u)), ~vec3<i32>(arg_1.a.x, var_0, var_0)), vec3<i32>(var_0, var_1.a.x, -5918i)), var_1.a.yww));
    var var_4 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-527f, -540f))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1297f, 372f)) * _wgslsmith_div_vec2_f32(vec2<f32>(-1172f, arg_0), vec2<f32>(-141f, arg_0))))))));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(u_input.c, any(vec4<bool>(all(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false))), any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), true)), any(vec3<bool>(true, true, true)), true)), u_input.a & u_input.d.xw);
    var_0 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(856f))) - -377f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-2351f)))))), Struct_1(reverseBits(-var_0.a) ^ vec4<i32>(i32(-1i) * -19967i, u_input.c.x, u_input.c.x, _wgslsmith_clamp_i32(u_input.c.x, -1i, var_0.a.x)), any(vec3<bool>(true, all(vec2<bool>(var_0.b, var_0.b)), true)), vec2<u32>(~u_input.a.x, ~(~var_0.c.x))), 1u);
    let var_1 = -5792i;
    var_0 = Struct_1(firstLeadingBit(~countOneBits(u_input.c)), !any(select(select(vec4<bool>(false, false, var_0.b, false), vec4<bool>(false, var_0.b, false, var_0.b), var_0.b), select(vec4<bool>(false, var_0.b, var_0.b, var_0.b), vec4<bool>(var_0.b, var_0.b, true, var_0.b), false), any(vec4<bool>(var_0.b, false, var_0.b, var_0.b)))), vec2<u32>(_wgslsmith_add_u32(var_0.c.x, min(select(4294967295u, var_0.c.x, var_0.b), firstTrailingBit(15555u))), 57938u));
    var_0 = Struct_1(_wgslsmith_div_vec4_i32(u_input.c, ~u_input.c), ~_wgslsmith_mod_i32(~(-2147483647i), var_1) != 0i, abs(var_0.c));
    var_0 = func_1(1194f, func_1(242f, Struct_1(_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(var_0.a, vec4<i32>(var_1, var_1, 12805i, 19959i), u_input.c), vec4<i32>(31064i, u_input.c.x, var_0.a.x, -1i)), true, vec2<u32>(8303u, 2919u) << ((u_input.a ^ vec2<u32>(17173u, 32023u)) % vec2<u32>(32u))), ~u_input.a.x), u_input.a.x);
    var var_2 = 1i;
    var_0 = func_1(-798f, func_1(_wgslsmith_f_op_f32(f32(-1f) * -620f), func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1195f) - -929f), Struct_1(countOneBits(u_input.c), false & var_0.b, abs(vec2<u32>(0u, 22751u))), ~70855u >> (0u % 32u)), u_input.d.x), _wgslsmith_mod_u32(abs(u_input.d.x), var_0.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(~max(-var_0.a.x, i32(-1i) * -2147483647i), 2147483647i);
}

