struct Struct_1 {
    a: vec4<u32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> vec2<bool> {
    let var_0 = arg_1.b;
    let var_1 = ~reverseBits(vec2<u32>(~_wgslsmith_sub_u32(u_input.c.x, 28309u), ~(~27648u)));
    var var_2 = vec4<i32>(-1i) * -_wgslsmith_clamp_vec4_i32(vec4<i32>(-u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 0i, u_input.a.x), vec4<i32>(-19240i, 1943i, u_input.a.x, 1i)), -u_input.a.x, i32(-1i) * -5835i), -_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -69166i, 11819i), vec4<i32>(-2147483647i, 47587i, -46639i, u_input.a.x), vec4<i32>(u_input.a.x, -2147483647i, -1i, u_input.a.x)), min(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 49419i), vec4<i32>(u_input.a.x, u_input.a.x, 1i, u_input.a.x)) & -vec4<i32>(-1i, u_input.a.x, u_input.a.x, 0i));
    let var_3 = _wgslsmith_div_u32(1u, ~_wgslsmith_mod_u32(~1u, 6166u));
    var var_4 = -1000f;
    return !(!arg_1.b);
}

fn func_3(arg_0: vec3<i32>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-1f) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-427f))));
    var_0 = true;
    var_0 = ~_wgslsmith_dot_vec4_u32(~(~vec4<u32>(1u, u_input.c.x, u_input.c.x, 0u)), ~(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.b) << (vec4<u32>(1u, u_input.b, u_input.c.x, 45759u) % vec4<u32>(32u)))) == ~1u;
    var var_1 = ~u_input.c.x;
    let var_2 = Struct_2(func_1(!(!(u_input.b < u_input.b)), Struct_1(abs(vec4<u32>(0u, 0u, u_input.c.x, 0u) & vec4<u32>(9968u, u_input.b, u_input.c.x, 51113u)), func_1(true, Struct_1(vec4<u32>(u_input.c.x, 1u, u_input.c.x, 19631u), vec2<bool>(false, true))))));
    return arg_0.x;
}

fn func_2(arg_0: Struct_1) -> vec4<i32> {
    var var_0 = select(~(-2147483647i), firstTrailingBit(abs(func_3(vec3<i32>(-1i, 2147483647i, 41855i))) << (reverseBits(u_input.c.x) % 32u)), arg_0.b.x);
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-562f, _wgslsmith_f_op_f32(sign(-491f)), 410f));
    let var_2 = arg_0;
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(1711f))))), var_1.x, var_1.x));
    var_0 = _wgslsmith_sub_i32(2147483647i, u_input.a.x);
    return select(abs(_wgslsmith_mult_vec4_i32(-vec4<i32>(-4314i, u_input.a.x, u_input.a.x, u_input.a.x), ~(-vec4<i32>(u_input.a.x, u_input.a.x, -10474i, u_input.a.x)))), (abs(vec4<i32>(2147483647i, u_input.a.x, -1i, 25385i)) << (firstLeadingBit(~vec4<u32>(1u, var_2.a.x, u_input.c.x, arg_0.a.x)) % vec4<u32>(32u))) << (_wgslsmith_div_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(77053u, 67043u, 49855u, 0u), vec4<u32>(u_input.b, u_input.b, var_2.a.x, u_input.b)), var_2.a) % vec4<u32>(32u)), !(!(!vec4<bool>(var_2.b.x, false, true, false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(u_input.a.x, countOneBits(max(u_input.a.x, _wgslsmith_add_i32(~0i, firstLeadingBit(u_input.a.x)))), _wgslsmith_dot_vec4_i32(func_2(Struct_1(~vec4<u32>(u_input.c.x, u_input.b, u_input.b, 0u), func_1(false, Struct_1(vec4<u32>(u_input.c.x, u_input.b, u_input.b, u_input.c.x), vec2<bool>(false, false))))), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, 20980i, 0i, 24072i) >> ((vec4<u32>(0u, 29998u, u_input.b, 18289u) >> (vec4<u32>(u_input.b, 30672u, u_input.c.x, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u)), select(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, -1i, -19668i, u_input.a.x), vec4<i32>(13444i, u_input.a.x, u_input.a.x, -36041i)), select(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -26831i), vec4<i32>(-2147483647i, 2147483647i, 30290i, u_input.a.x), false), vec4<bool>(false, true, false, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(1f, _wgslsmith_mod_i32(0i, _wgslsmith_dot_vec3_i32(select(vec3<i32>(var_0.x, u_input.a.x, var_0.x), var_0, false), vec3<i32>(u_input.a.x, u_input.a.x, -58131i)) | (u_input.a.x ^ u_input.a.x)), -904f);
}

