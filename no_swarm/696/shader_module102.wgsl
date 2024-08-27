struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1047f * 1256f), _wgslsmith_f_op_f32(-128f + -250f))), 2006f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1057f)))));
    let var_1 = _wgslsmith_f_op_f32(step(var_0.a.x, var_0.a.x));
    let var_2 = !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), select(vec4<bool>(false, false, false, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), false), false)));
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(var_0.a - var_0.a));
    let var_4 = var_0;
    return Struct_1(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(min(-314f, _wgslsmith_f_op_f32(-var_0.a.x))), 328f))));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    var var_0 = arg_1;
    let var_1 = -2147483647i;
    var_0 = arg_2;
    var_0 = func_2(~u_input.a.x);
    let var_2 = Struct_1(arg_1.a);
    return var_2.a.x;
}

fn func_1(arg_0: vec2<i32>) -> StorageBuffer {
    var var_0 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1096f, -202f, 269f) - vec3<f32>(958f, -1654f, 262f)))), vec3<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(sign(375f)), Struct_1(vec3<f32>(-1140f, -186f, 1413f)), func_2(u_input.a.x))), 877f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-1197f)))))));
    let var_1 = _wgslsmith_clamp_vec2_u32(u_input.a.yx, u_input.a.zx >> (~_wgslsmith_mod_vec2_u32(reverseBits(u_input.a.yz), u_input.a.xx) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(62989u, u_input.a.x >> (0u % 32u)), vec2<u32>(~u_input.a.x, 13472u)), _wgslsmith_add_vec2_u32(u_input.a.xz, _wgslsmith_div_vec2_u32(vec2<u32>(8974u, u_input.a.x), min(vec2<u32>(95865u, 0u), u_input.a.xy)))));
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a)) + vec3<f32>(-1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.a.x))), var_0.a.x)));
    var var_2 = ~abs(arg_0.x);
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-var_0.a));
    return StorageBuffer(~_wgslsmith_add_u32(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_1.x, 1u, 0u), vec4<u32>(28069u, var_1.x, 1u, 0u))), _wgslsmith_clamp_u32(var_1.x, 4294967295u, 1u) << (4294967295u % 32u)), _wgslsmith_f_op_f32(round(-446f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(u_input.b, vec4<i32>(17214i, abs(u_input.c), -2147483647i, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, u_input.c, u_input.c, u_input.b.x), vec4<i32>(u_input.b.x, 1i, u_input.b.x, u_input.b.x)) & ~u_input.b, u_input.b)));
    var_0 = u_input.b;
    var_0 = u_input.b;
    var_0 = vec4<i32>(~1i, ~reverseBits(firstLeadingBit(_wgslsmith_clamp_i32(0i, u_input.b.x, var_0.x))), ~(i32(-1i) * -8631i), -17465i);
    var_0 = ~_wgslsmith_mult_vec4_i32(min(u_input.b, max(u_input.b, firstLeadingBit(u_input.b))), -vec4<i32>(u_input.b.x, -2147483647i, 0i, u_input.c) >> (vec4<u32>(1u, abs(4294967295u), u_input.a.x, reverseBits(u_input.a.x)) % vec4<u32>(32u)));
    let var_1 = ~4294967295u;
    var_0 = u_input.b;
    let var_2 = !(!any(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true))));
    var_0 = -(u_input.b ^ ~u_input.b);
    let x = u_input.a;
    s_output = func_1(_wgslsmith_add_vec2_i32(var_0.xw, var_0.zx & max(u_input.b.xy, abs(vec2<i32>(73693i, 11178i)))));
}

