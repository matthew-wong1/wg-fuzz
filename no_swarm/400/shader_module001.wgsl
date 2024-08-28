struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> i32 {
    var var_0 = u_input.d.xzw;
    return 12160i;
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: i32) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(ceil(-1452f));
    let var_1 = _wgslsmith_sub_i32(func_3(), _wgslsmith_sub_i32(arg_1, -14106i));
    var var_2 = u_input.b;
    var_2 = 4294967295u << (_wgslsmith_clamp_u32(~(~_wgslsmith_mod_u32(u_input.d.x, u_input.d.x)), 1u, 1u) % 32u);
    let var_3 = arg_0;
    return _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-_wgslsmith_dot_vec3_i32(u_input.c.xzx, vec3<i32>(5036i, 15707i, arg_1)), ~_wgslsmith_mult_i32(var_1, 10660i), u_input.c.x), _wgslsmith_mult_vec3_i32(select(vec3<i32>(-1i, u_input.a, 2147483647i), u_input.c.yyy, select(vec3<bool>(true, true, true), vec3<bool>(var_3.b, var_3.a.x, false), vec3<bool>(var_3.b, arg_0.b, false))), -abs(u_input.c.xxy))), _wgslsmith_div_i32(-64500i, countOneBits(arg_2 | var_1) ^ -10208i));
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: vec2<i32>, arg_3: i32) -> vec3<bool> {
    var var_0 = arg_0.a.x;
    var var_1 = min(-_wgslsmith_mod_vec3_i32(vec3<i32>(-25697i, -24389i, u_input.c.x), u_input.c.wwz), _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(-2147483647i, _wgslsmith_add_i32(18298i, u_input.a)), ~27032i | -arg_2.x, -27810i), vec3<i32>(reverseBits(0i), _wgslsmith_dot_vec4_i32(-u_input.c, vec4<i32>(arg_3, u_input.c.x, u_input.c.x, arg_3)), func_2(Struct_2(vec2<bool>(arg_0.b, arg_0.b), false), 0i, u_input.a)), ~(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_3, -22666i, arg_2.x), vec3<i32>(38026i, 1i, arg_3), u_input.c.wxz) & ~u_input.c.zyx)));
    let var_2 = arg_0;
    var_0 = any(arg_0.a);
    let var_3 = Struct_1(true, !vec3<bool>(var_2.a.x, -1i == var_1.x, arg_0.a.x), 1u);
    return var_3.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(_wgslsmith_div_vec3_i32(~u_input.c.zyx, ~u_input.c.zyw >> (u_input.d.wwy % vec3<u32>(32u))));
    var_0 = _wgslsmith_add_vec3_i32(vec3<i32>(~u_input.a, var_0.x, _wgslsmith_mult_i32(0i, var_0.x)) & ~(~u_input.c.wyz), select(_wgslsmith_div_vec3_i32(-vec3<i32>(var_0.x, var_0.x, u_input.c.x), -vec3<i32>(var_0.x, 0i, u_input.a)), u_input.c.zww, any(func_1(Struct_2(vec2<bool>(false, true), true), 751f, vec2<i32>(-48202i, u_input.a), var_0.x)))) << (u_input.d.xwx % vec3<u32>(32u));
    let var_1 = abs(abs(abs(32163u)) >> (abs(u_input.b) % 32u)) ^ 79824u;
    var_0 = reverseBits(_wgslsmith_sub_vec3_i32(u_input.c.zyw, vec3<i32>(-1i, 36584i, -2147483647i)));
    var_0 = -(~min(u_input.c.xzw, -firstTrailingBit(u_input.c.wwy)));
    let var_2 = Struct_2(vec2<bool>(select(true, any(vec4<bool>(true, true, true, true)), true), true), false);
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-489f))), vec4<f32>(_wgslsmith_f_op_f32(floor(1f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(357f - -216f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(1529f)))))), -218f, -1148f));
}

