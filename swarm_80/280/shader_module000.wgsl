struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: f32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: vec3<bool>,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 27>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: u32) -> vec3<i32> {
    var var_0 = _wgslsmith_div_f32(arg_1.c, arg_1.c);
    return abs(vec3<i32>(~reverseBits(arg_0.x), arg_1.a, -27763i));
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1464f))))), _wgslsmith_f_op_f32(563f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(2212f, 3041f, false))))))) - -208f);
    global0 = array<Struct_2, 27>();
    var var_1 = select(vec2<i32>(-2147483647i, 2147483647i), select(_wgslsmith_add_vec2_i32(select(vec2<i32>(1i, 1i), vec2<i32>(u_input.c.x, -16240i), vec2<bool>(true, false)), u_input.c.zx) & ((vec2<i32>(u_input.a.x, u_input.c.x) & u_input.b) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(59514u, u_input.d), vec2<u32>(84825u, u_input.d), vec2<u32>(u_input.d, u_input.d)) % vec2<u32>(32u))), u_input.a.xx, !vec2<bool>(true, -826f > var_0)), all(select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, false), true), !select(vec2<bool>(true, true), vec2<bool>(true, false), true))));
    global0 = array<Struct_2, 27>();
    var var_2 = Struct_1(_wgslsmith_dot_vec3_i32(reverseBits(u_input.a) | _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, -27202i), vec3<i32>(var_1.x, var_1.x, u_input.a.x)), vec3<i32>(func_2(abs(u_input.b), Struct_1(2147483647i, vec3<u32>(1u, u_input.d, 0u), -1212f, vec2<u32>(44380u, u_input.d)), 0u).x, var_1.x, u_input.a.x)), vec3<u32>(46415u, ~(u_input.d >> (~u_input.d % 32u)), min(~u_input.d, countOneBits(14160u << (u_input.d % 32u)))), _wgslsmith_f_op_f32(sign(926f)), vec2<u32>(_wgslsmith_clamp_u32(~(~u_input.d), ~u_input.d, max(u_input.d, u_input.d)), u_input.d));
    return _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>((236i | u_input.b.x) & _wgslsmith_dot_vec3_i32(vec3<i32>(0i, var_1.x, var_2.a), vec3<i32>(u_input.a.x, var_1.x, -1i)), 2147483647i, var_2.a, 45917i)), ~firstLeadingBit(vec4<i32>(var_2.a, var_2.a, 0i, 2147483647i) & vec4<i32>(-2147483647i, -2147483647i, 16922i, -18596i)) << (~(~vec4<u32>(0u, var_2.d.x, 0u, u_input.d)) % vec4<u32>(32u)));
}

fn func_1(arg_0: u32, arg_1: f32) -> f32 {
    let var_0 = vec3<i32>(max(-1i, 2147483647i), -9345i, -u_input.c.x) | _wgslsmith_div_vec3_i32(reverseBits(_wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.c, u_input.c, u_input.a), vec3<i32>(1i, 17497i, 29526i) & u_input.c)), ~countOneBits(func_2(vec2<i32>(0i, 2147483647i), Struct_1(u_input.e, vec3<u32>(arg_0, arg_0, u_input.d), -362f, vec2<u32>(4294967295u, u_input.d)), 1u)));
    let var_1 = arg_1;
    var var_2 = 4294967295u;
    global0 = array<Struct_2, 27>();
    var var_3 = func_3();
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(1u, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(909f + 145f))))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1281f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f + -218f))))), _wgslsmith_mod_u32(u_input.d, _wgslsmith_dot_vec3_u32(max(vec3<u32>(u_input.d, u_input.d, u_input.d), vec3<u32>(u_input.d, u_input.d, u_input.d)), vec3<u32>(4294967295u, 16240u, u_input.d)) & (countOneBits(u_input.d) << (u_input.d % 32u))));
}

