struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: Struct_1,
    d: i32,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: i32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: vec3<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec4<f32>) -> vec3<f32> {
    return arg_0.zzz;
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, 324f, -2355f, -1701f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(954f, 950f, -1375f, 1000f)))))));
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-212f, _wgslsmith_f_op_f32(-1679f * var_0.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1210f * var_0.x) - _wgslsmith_f_op_f32(890f - var_0.x))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.x)))))))));
    return 21015u;
}

fn func_1() -> vec4<u32> {
    let var_0 = ~(~u_input.a);
    return vec4<u32>(u_input.a, ~(~(~func_2())), 16816u >> (var_0 % 32u), _wgslsmith_clamp_u32(firstTrailingBit(func_2()), _wgslsmith_div_u32(25712u, 1u), 1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(4294967295u, abs(1u), ~_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.a, 45731u, 4022u, 0u) << (func_1() % vec4<u32>(32u)), ~(~vec4<u32>(u_input.a, u_input.a, 5522u, u_input.a)), vec4<u32>(reverseBits(u_input.a), ~u_input.a, ~u_input.a, min(1u, 29084u))), any(vec3<bool>(any(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false))), true & all(vec2<bool>(true, false)), true)));
    var_0 = Struct_1(~var_0.c.x, var_0.b, var_0.c, var_0.d);
    var var_1 = countOneBits(vec3<u32>(var_0.a, abs(~(~0u)), 1u));
    let var_2 = ~min(~_wgslsmith_div_vec2_u32(var_0.c.zy, ~vec2<u32>(1u, 0u)), _wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(var_1.zy, var_0.c.yw), var_0.c.xw, _wgslsmith_add_vec2_u32(var_0.c.xx, vec2<u32>(u_input.a, var_1.x))), _wgslsmith_add_vec2_u32(max(vec2<u32>(4294967295u, var_1.x), var_0.c.zx), reverseBits(vec2<u32>(43862u, 75705u)))));
    var var_3 = Struct_3(Struct_1(var_1.x, _wgslsmith_add_u32(_wgslsmith_add_u32(var_2.x, _wgslsmith_add_u32(u_input.a, 19051u)), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(var_0.c, var_0.c, vec4<u32>(4294967295u, 4294967295u, 0u, 30057u)), vec4<u32>(var_1.x, var_0.a, var_1.x, u_input.a))), ~(var_0.c ^ vec4<u32>(0u, 32067u, 0u, var_0.b)), all(select(vec4<bool>(false, var_0.d, var_0.d, true), vec4<bool>(false, true, var_0.d, false), any(vec2<bool>(false, true))))), Struct_2(vec4<u32>(u_input.a, 1u, 110870u, ~_wgslsmith_add_u32(var_1.x, var_2.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-950f, -1524f, 168f) * vec3<f32>(-391f, -2017f, -719f)))), Struct_1(_wgslsmith_mod_u32(var_1.x, 46140u), firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(60024u, var_2.x, u_input.a, u_input.a), vec4<u32>(1u, u_input.a, var_0.c.x, u_input.a))), _wgslsmith_mult_vec4_u32(var_0.c, vec4<u32>(37025u, var_0.c.x, 59183u, var_0.a)), true), _wgslsmith_sub_i32(2147483647i, i32(-1i) * -2147483647i), _wgslsmith_f_op_f32(floor(-1256f))), Struct_1(39343u, _wgslsmith_mult_u32(0u, var_2.x), ~(~(~vec4<u32>(var_0.b, var_2.x, u_input.a, var_0.c.x))), select(!all(vec4<bool>(var_0.d, true, true, var_0.d)), true, var_0.d)), _wgslsmith_dot_vec4_i32(abs(select(vec4<i32>(1i, -10284i, 1i, 2147483647i), vec4<i32>(6155i, -11610i, -5700i, -24323i), false)), max(vec4<i32>(-1i, 1i, _wgslsmith_clamp_i32(-40920i, 2147483647i, -62320i), _wgslsmith_add_i32(0i, 0i)), firstTrailingBit(vec4<i32>(-2147483647i, 1i, 0i, -2147483647i) >> (vec4<u32>(var_0.b, var_1.x, 1u, 22443u) % vec4<u32>(32u))))), select(var_0.c, _wgslsmith_div_vec4_u32(vec4<u32>(func_2(), var_1.x << (var_1.x % 32u), _wgslsmith_dot_vec4_u32(var_0.c, vec4<u32>(var_0.b, 3167u, u_input.a, 4294967295u)), u_input.a), ~(var_0.c | vec4<u32>(var_0.b, var_0.c.x, 21049u, var_1.x))), vec4<bool>(any(vec3<bool>(var_0.d, false, var_0.d)), any(vec4<bool>(true, var_0.d, false, var_0.d)), true, all(vec3<bool>(false, var_0.d, var_0.d)) && true)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(var_3.d), max(2147483647i, 1i), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_3.b.e))), var_3.b.b, var_0.c);
}

