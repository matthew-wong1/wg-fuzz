struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: f32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: f32,
    c: Struct_1,
    d: u32,
    e: vec3<bool>,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4) -> i32 {
    let var_0 = vec4<i32>(abs(-firstLeadingBit(arg_0.a.x)), -(~(-arg_0.a.x >> (~0u % 32u))), 2147483647i, arg_0.a.x);
    let var_1 = Struct_4(var_0.zyw);
    let var_2 = max(~((u_input.a ^ min(1u, 0u)) ^ max(u_input.b, u_input.b)), u_input.a);
    var var_3 = Struct_1(~_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, var_2), vec2<u32>(countOneBits(u_input.a), ~4294967295u)), -(abs(reverseBits(var_0.xxw)) << (vec3<u32>(219u, 1u, u_input.a) % vec3<u32>(32u))));
    var var_4 = all(!vec3<bool>(select(any(vec4<bool>(false, true, false, true)), false, false), true, true));
    return _wgslsmith_dot_vec3_i32(vec3<i32>(max(-9669i, 0i), select(37200i, var_1.a.x, false) >> (countOneBits(var_3.a.x) % 32u), ~arg_0.a.x >> (_wgslsmith_div_u32(0u, var_3.a.x) % 32u)), var_3.b) << (30265u % 32u);
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: i32) -> Struct_2 {
    return Struct_2(_wgslsmith_mult_vec3_i32(vec3<i32>(~2147483647i, min(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, arg_2, arg_2, arg_0), vec4<i32>(arg_0, 1i, arg_0, arg_2)), firstLeadingBit(arg_2)), -1i), min(vec3<i32>(-66510i, 1i, func_3(Struct_4(vec3<i32>(1i, 6482i, -43729i)))), vec3<i32>(arg_2, arg_0, arg_0) & vec3<i32>(arg_2, arg_0, -22996i))), _wgslsmith_div_f32(-126f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1672f)))), 1000f);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: vec3<f32>) -> bool {
    let var_0 = Struct_1(vec2<u32>(reverseBits(~_wgslsmith_mult_u32(u_input.b, 0u)), ~(min(u_input.b, arg_1.x) | arg_1.x)), vec3<i32>(firstLeadingBit(_wgslsmith_clamp_i32(i32(-1i) * -54638i, -22597i, -49393i)), countOneBits(-min(13887i, 32327i)), -arg_0.a.x));
    let var_1 = vec2<u32>(_wgslsmith_sub_u32(21431u, ~(~firstTrailingBit(21499u))), _wgslsmith_add_u32(_wgslsmith_mod_u32(var_0.a.x, min(abs(arg_1.x), 1u)), abs(~u_input.b & 0u)));
    var var_2 = !(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(any(vec2<bool>(true, false)), var_0.b.x != -28176i), vec2<bool>(arg_0.a.x < -58110i, true)));
    let var_3 = 53903u;
    return all(select(!vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), !vec4<bool>(false, true, false, var_2.x), select(!vec4<bool>(false, var_2.x, var_2.x, var_2.x), !vec4<bool>(false, false, true, var_2.x), select(vec4<bool>(var_2.x, false, var_2.x, true), vec4<bool>(var_2.x, false, var_2.x, var_2.x), var_2.x)))) != select(false, true | !var_2.x, false);
}

fn func_1(arg_0: vec3<i32>, arg_1: i32, arg_2: i32) -> Struct_3 {
    var var_0 = !vec2<bool>(func_4(func_2(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -2147483647i, -1i, -26505i), vec4<i32>(-1i, arg_2, arg_0.x, arg_1)), _wgslsmith_div_u32(81438u, 4294967295u), ~arg_0.x), abs(~vec2<u32>(53552u, u_input.b)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(782f, 1732f, 1000f), vec3<f32>(487f, -1000f, -1797f))), vec3<f32>(1f, 1f, 1f)))), firstLeadingBit(_wgslsmith_add_u32(u_input.b, u_input.a)) >= u_input.a);
    var var_1 = Struct_4(func_2(select(-abs(-5403i), 53413i, false), ~(~_wgslsmith_mod_u32(1105u, u_input.b)), _wgslsmith_sub_i32(arg_0.x, _wgslsmith_div_i32(arg_1 << (77715u % 32u), max(-1i, -20512i)))).a);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1081f, 1000f), vec2<f32>(1898f, 1000f), vec2<bool>(var_0.x, false)))))));
    var var_3 = ~_wgslsmith_div_u32(~abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 23544u), vec3<u32>(u_input.b, u_input.a, 34487u))), u_input.a);
    var_1 = Struct_4(vec3<i32>(56760i, 1i, -18246i));
    return Struct_3(vec4<f32>(_wgslsmith_f_op_f32(-var_2.x), var_2.x, var_2.x, _wgslsmith_f_op_f32(-var_2.x)), 135f, Struct_1(vec2<u32>(select(4294967295u, 0u, true), _wgslsmith_add_u32(u_input.b, u_input.b)) << (~vec2<u32>(34553u, u_input.a) % vec2<u32>(32u)), _wgslsmith_div_vec3_i32(var_1.a, abs(~var_1.a))), _wgslsmith_mult_u32(u_input.a, 1u), select(vec3<bool>(true, true, true), !(!select(vec3<bool>(true, var_0.x, true), vec3<bool>(var_0.x, var_0.x, var_0.x), true)), select(vec3<bool>(var_0.x, true, var_0.x || var_0.x), vec3<bool>(var_0.x, any(vec2<bool>(var_0.x, var_0.x)), false), !vec3<bool>(var_0.x, false, true))));
}

fn func_5(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: bool, arg_3: Struct_3) -> vec4<f32> {
    var var_0 = !arg_3.e;
    let var_1 = vec3<i32>(~(~arg_0.a.x), -arg_0.a.x, -52633i);
    let var_2 = Struct_4(arg_3.c.b);
    var_0 = !(!arg_3.e);
    let var_3 = arg_3.a.zy;
    return arg_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !any(vec3<bool>(true, true, true));
    var_0 = true;
    let var_1 = vec4<bool>(!(any(vec3<bool>(true, true, true)) | any(select(vec2<bool>(true, true), vec2<bool>(true, true), true))), true, select(true, true, any(vec2<bool>(true, false))) | true, select(true, true, true));
    var_0 = var_1.x;
    let var_2 = ~461i;
    var_0 = select(var_1.x, true, var_2 == -(abs(var_2) & ~(-1i)));
    var_0 = true;
    var var_3 = var_1;
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_5(Struct_2(select(vec3<i32>(-1i, var_2, 9373i), vec3<i32>(42756i, var_2, -21147i), var_3.zxw), _wgslsmith_div_f32(1227f, -1200f), _wgslsmith_f_op_f32(sign(-1218f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-683f, -251f, -337f)), false, func_1(_wgslsmith_add_vec3_i32(vec3<i32>(var_2, 1i, var_2), vec3<i32>(var_2, 2147483647i, var_2)), -var_2, 1i)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.xz, _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_add_i32(2147483647i, var_2), var_2, func_1(-vec3<i32>(var_2, var_2, var_2), _wgslsmith_div_i32(var_2, var_2), ~20306i).c.b.x), vec3<i32>(var_2, ~abs(57656i), -_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 0i), vec2<i32>(var_2, 2147483647i)))), i32(-1i) * -35313i, 16567u, countOneBits(abs(-35696i)));
}

