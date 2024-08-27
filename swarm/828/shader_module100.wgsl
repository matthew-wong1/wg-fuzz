struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec4<f32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -747f;

var<private> global1: i32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1) -> u32 {
    global1 = u_input.b.x;
    let var_0 = -max(_wgslsmith_mult_vec3_i32(u_input.c.zzx, _wgslsmith_sub_vec3_i32(vec3<i32>(31326i, 0i, 22009i), vec3<i32>(u_input.b.x, u_input.b.x, u_input.c.x)) | vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x)), vec3<i32>(-u_input.b.x ^ (u_input.c.x & u_input.c.x), u_input.c.x, 1i));
    let var_1 = -firstTrailingBit(_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(-u_input.c.wxy, _wgslsmith_div_vec3_i32(u_input.c.yzw, var_0), -vec3<i32>(u_input.c.x, 45043i, var_0.x)), vec3<i32>(~(-100551i), min(-2147483647i, var_0.x), -2147483647i | var_0.x)));
    let var_2 = arg_0;
    global1 = _wgslsmith_mult_i32(-7614i, u_input.b.x);
    return min(arg_0.d.x, ~_wgslsmith_clamp_u32(abs(arg_0.d.x), ~(~1u), ~_wgslsmith_clamp_u32(var_2.d.x, 4294967295u, 15798u)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> f32 {
    let var_0 = -(-u_input.c.x ^ arg_0.x);
    global1 = -(~(0i));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.b)))));
    var var_1 = arg_3.b;
    let var_2 = min(_wgslsmith_add_vec3_i32(-vec3<i32>(arg_2, -22133i, -2147483647i) >> (vec3<u32>(arg_3.d.x, _wgslsmith_clamp_u32(4294967295u, 23531u, 4294967295u), 0u) % vec3<u32>(32u)), min(u_input.c.wxx, _wgslsmith_sub_vec3_i32(~u_input.c.ywy, vec3<i32>(2147483647i, 2147483647i, 0i)))), vec3<i32>(_wgslsmith_add_i32(u_input.b.x, u_input.b.x), -25393i, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(arg_0.x, -2147483647i, -2147483647i, arg_0.x), u_input.c | vec4<i32>(9174i, arg_2, 17537i, u_input.c.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.x, -2147483647i, arg_2, -47763i), u_input.c))));
    return -251f;
}

fn func_1(arg_0: i32, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: vec4<u32>) -> f32 {
    let var_0 = ~vec4<u32>(14995u, ~_wgslsmith_add_u32(13167u, _wgslsmith_div_u32(5710u, 27115u)), 0u & abs(abs(u_input.a.x)), _wgslsmith_clamp_u32(firstTrailingBit(66515u << (u_input.a.x % 32u)), 2584u, func_2(Struct_1(arg_2.a, arg_2.b, arg_2.c, u_input.a), ~vec4<u32>(4043u, 12733u, arg_3.x, arg_3.x), Struct_1(arg_2.c.yz, -1138f, arg_2.c, vec2<u32>(26812u, arg_2.d.x)))));
    let var_1 = vec2<bool>(true, true);
    let var_2 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1237f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(arg_1, Struct_1(vec2<f32>(arg_2.b, arg_2.a.x), arg_2.c.x, arg_2.c, u_input.a), 0i, Struct_1(arg_2.a, 1053f, arg_2.c, vec2<u32>(86681u, 48u)))))), arg_2.c.x)));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -707f) - -991f);
    var var_3 = var_1.x;
    return 1073f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(263f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1780f)))), _wgslsmith_f_op_f32(max(1010f, _wgslsmith_f_op_f32(602f - 944f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1682f, _wgslsmith_f_op_f32(step(1000f, -1230f)), -873f, _wgslsmith_f_op_f32(f32(-1f) * -658f)))) + vec4<f32>(_wgslsmith_f_op_f32(func_1(u_input.b.x, u_input.b | vec2<i32>(2147483647i, 1i), Struct_1(vec2<f32>(-1000f, 116f), 1822f, vec4<f32>(-688f, 255f, -703f, 139f), u_input.a), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 25585u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(815f, -278f))), 1f, _wgslsmith_f_op_f32(f32(-1f) * -1923f))), vec2<u32>(1u, 53108u << ((u_input.a.x << (86395u % 32u)) % 32u)));
    var var_1 = true;
    var var_2 = var_0;
    var var_3 = u_input.c.yyy;
    var var_4 = false;
    var var_5 = u_input.c.zxy;
    var_1 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(abs(~var_3.x), _wgslsmith_add_i32(-2147483647i, abs(48840i)), 2147483647i) | -1i, var_0.d.x, vec2<f32>(1f, 264f), firstLeadingBit(38554u) | _wgslsmith_mult_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 14225u, 1u), vec3<u32>(1u, u_input.a.x, 104395u)), firstTrailingBit(~u_input.a.x)));
}

