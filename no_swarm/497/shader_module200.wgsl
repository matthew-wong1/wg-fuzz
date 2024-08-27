struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: i32,
    d: vec2<f32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_3,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: f32,
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_4) -> i32 {
    var var_0 = u_input.b.x > -10593i;
    let var_1 = arg_0;
    let var_2 = Struct_4(-u_input.b.yy, Struct_3(_wgslsmith_div_vec2_i32(~reverseBits(vec2<i32>(6860i, -2147483647i)), vec2<i32>(arg_0.c, 1i)), select(vec3<bool>(arg_0.b.b.x, false, any(vec3<bool>(var_1.b.b.x, arg_0.b.b.x, arg_0.b.b.x))), vec3<bool>(select(var_1.b.b.x, true, var_1.b.b.x), true, true), !vec3<bool>(var_1.b.b.x, arg_0.b.b.x, var_1.b.b.x)), max(u_input.c.x, countOneBits(arg_0.c)), vec2<f32>(_wgslsmith_f_op_f32(-513f - arg_0.b.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -895f) * _wgslsmith_f_op_f32(var_1.b.d.x - -612f)))), select(~(-53766i), ~firstLeadingBit(-2147483647i), true), _wgslsmith_clamp_i32(2147483647i >> (_wgslsmith_mod_u32(42617u, 1u) % 32u), (var_1.a.x ^ min(arg_0.c, var_1.c)) >> ((u_input.a | u_input.a) % 32u), 1i));
    let var_3 = 2147483647i;
    var var_4 = false;
    return -u_input.c.x;
}

fn func_2() -> bool {
    let var_0 = Struct_3(firstLeadingBit(vec2<i32>(func_3(Struct_4(u_input.c, Struct_3(u_input.b.zy, vec3<bool>(true, true, false), 25419i, vec2<f32>(1000f, -657f)), u_input.b.x, 0i)), -u_input.b.x) << (~vec2<u32>(8899u, 51768u) % vec2<u32>(32u))), vec3<bool>(true, true, true), max(~u_input.b.x, _wgslsmith_clamp_i32(-28780i << ((u_input.a & 1u) % 32u), max(-u_input.c.x, 2147483647i), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, u_input.c.x, u_input.c.x, u_input.c.x), vec4<i32>(-2147483647i, u_input.b.x, 1732i, u_input.c.x)), -vec4<i32>(u_input.c.x, u_input.c.x, 1i, u_input.b.x)))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-445f - 1741f), _wgslsmith_f_op_f32(f32(-1f) * -1353f)), _wgslsmith_div_f32(1940f, _wgslsmith_f_op_f32(f32(-1f) * -539f))))));
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1086f) * _wgslsmith_f_op_f32(var_0.d.x - var_0.d.x)) * var_0.d.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(465f, var_0.d.x)), var_0.d.x))))));
    var var_2 = vec2<i32>(~var_0.c, var_0.c & min(u_input.b.x, -60138i));
    let var_3 = !(!vec2<bool>(any(vec2<bool>(true, true)), true));
    let var_4 = select(select(var_0.b, !var_0.b, select(var_0.b, select(vec3<bool>(var_0.b.x, var_3.x, var_3.x), vec3<bool>(false, true, var_0.b.x), !var_0.b), vec3<bool>(all(vec4<bool>(false, var_0.b.x, var_0.b.x, var_0.b.x)), !var_0.b.x, var_1 <= -438f))), var_0.b, var_0.b);
    return ~u_input.c.x <= -_wgslsmith_mod_i32(1i << (_wgslsmith_add_u32(1u, 0u) % 32u), reverseBits(_wgslsmith_mod_i32(1i, var_2.x)));
}

fn func_1() -> f32 {
    var var_0 = u_input.a >> (~4294967295u % 32u);
    var var_1 = !(!select(vec2<bool>(func_2(), true), select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false))), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), true), select(vec2<bool>(true, false), vec2<bool>(false, false), true))));
    let var_2 = _wgslsmith_div_vec2_i32(vec2<i32>(u_input.b.x, -2147483647i), _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_add_i32(-15105i & u_input.b.x, min(u_input.b.x, 0i)), 0i), firstTrailingBit(~(-u_input.b.zz))));
    var_1 = !select(!vec2<bool>(true, !var_1.x), vec2<bool>(all(!vec2<bool>(true, var_1.x)), true), (~u_input.a == ~u_input.a) != all(vec4<bool>(var_1.x, true, var_1.x, false)));
    var_1 = vec2<bool>(all(vec3<bool>(false, ~55616u == u_input.a, func_2())), var_1.x);
    return 249f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 420f;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, var_0)), var_0);
    let var_2 = var_1;
    let var_3 = 4294967295u & u_input.a;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()));
    let x = u_input.a;
    s_output = StorageBuffer(~(firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(2405u, 1u, 744u, var_3), vec4<u32>(u_input.a, var_3, var_3, 0u))) << ((reverseBits(vec4<u32>(var_3, 0u, u_input.a, 15699u)) ^ vec4<u32>(27420u, u_input.a, var_3, u_input.a)) % vec4<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-557f - 499f))) * 593f), _wgslsmith_f_op_f32(var_4 * _wgslsmith_f_op_f32(sign(239f))));
}

