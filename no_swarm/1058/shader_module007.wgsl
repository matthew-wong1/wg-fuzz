struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-265f + _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(644f, -453f), 1f))))));
    var var_1 = -846f;
    let var_2 = 1f;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) + -1000f);
    var_1 = var_2;
    return reverseBits(~1u);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(abs(vec3<u32>(~1u, ~45802u, 1u) << (u_input.a.xzw % vec3<u32>(32u))), 32472u);
    var var_1 = Struct_2(~vec3<u32>(var_0.b, _wgslsmith_sub_u32(u_input.e, var_0.a.x), ~u_input.a.x) ^ u_input.a.zwz, ~reverseBits(~2480u));
    var var_2 = var_0;
    let var_3 = var_0;
    var_1 = Struct_2(vec3<u32>(50627u & _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(var_2.a.xz, var_2.a.xz), var_0.a.x << (var_2.a.x % 32u)), abs(u_input.b.x) & func_3(), _wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.a.x, 4294967295u) | countOneBits(16428u), reverseBits(0u))), _wgslsmith_clamp_u32(135952u, max(~var_3.b, var_2.b), 77324u) & (1u << (~4294967295u % 32u)));
    return Struct_1(u_input.b);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: i32, arg_3: Struct_1) -> Struct_2 {
    let var_0 = Struct_2(u_input.a.yxz, max(arg_3.a.x, arg_0.a.x) << (_wgslsmith_div_u32(~(arg_3.a.x & arg_3.a.x), 109017u) % 32u));
    let var_1 = -1i;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(614f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(sign(835f))))));
    let var_3 = vec4<i32>(i32(-1i) * -38137i, i32(-1i) * -8678i, arg_1.x, _wgslsmith_add_i32(2147483647i, _wgslsmith_clamp_i32(arg_2, u_input.d.x, arg_2)));
    let var_4 = -1000f;
    return var_0;
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: u32) -> u32 {
    let var_0 = arg_2 & max(~arg_2, _wgslsmith_add_u32(arg_2, abs(arg_2) ^ 0u));
    let var_1 = false;
    let var_2 = 1073f;
    var var_3 = func_4(func_2(), max(select(vec2<i32>(-u_input.d.x, -3836i), vec2<i32>(u_input.d.x | 25629i, 1i), _wgslsmith_add_i32(u_input.d.x, 1i) != firstTrailingBit(u_input.d.x)), -(vec2<i32>(0i, -3900i) >> (countOneBits(u_input.a.wz) % vec2<u32>(32u)))), ~u_input.c.x, Struct_1(min(abs(vec2<u32>(arg_1, arg_1)), _wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.b, u_input.b), u_input.a.zy, vec2<u32>(4294967295u, arg_1)))));
    let var_4 = 1u;
    return ~(~(~0u)) & _wgslsmith_add_u32(0u, arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -322f);
    let var_1 = 106096u;
    var var_2 = -2147483647i;
    var_2 = -2147483647i << (_wgslsmith_dot_vec3_u32(~abs(u_input.a.yyy), vec3<u32>(14815u, ~var_1, var_1 ^ 34442u) >> (u_input.a.wyw % vec3<u32>(32u))) % 32u);
    let var_3 = _wgslsmith_clamp_vec3_i32(~u_input.d, _wgslsmith_clamp_vec3_i32(min(_wgslsmith_mult_vec3_i32(u_input.d, vec3<i32>(u_input.c.x, 0i, u_input.c.x)), ~u_input.d) | u_input.d, -vec3<i32>(_wgslsmith_add_i32(2147483647i, u_input.d.x), u_input.c.x, 1i), select(u_input.d, -countOneBits(vec3<i32>(28218i, u_input.d.x, -23157i)), !(var_1 != u_input.b.x))), u_input.d);
    var_2 = ~u_input.d.x;
    var var_4 = vec2<i32>(~u_input.c.x, -37927i);
    let var_5 = Struct_2(~_wgslsmith_sub_vec3_u32(vec3<u32>(var_1, ~6816u, abs(10498u)), ~u_input.a.wzz), _wgslsmith_add_u32(~func_1(true, 14434u, ~var_1), ~1u));
    let x = u_input.a;
    s_output = StorageBuffer(1i, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-567f, -2440f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0))))))), var_3.x ^ 0i);
}

