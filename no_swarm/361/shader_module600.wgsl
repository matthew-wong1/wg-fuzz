struct Struct_1 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: vec4<u32>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_3,
    c: Struct_1,
    d: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_2(arg_0: u32, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: vec4<i32>) -> i32 {
    var var_0 = vec2<bool>(all(!select(select(arg_1, vec3<bool>(arg_2.b.x, arg_2.b.x, true), vec3<bool>(arg_1.x, arg_1.x, arg_1.x)), arg_1, vec3<bool>(false, false, arg_2.b.x))), select((false & arg_2.b.x) | any(arg_2.b.yxw), arg_2.b.x, !(!arg_2.b.x)) | arg_2.b.x);
    global0 = -160f;
    let var_1 = arg_3.yx;
    let var_2 = 1000f;
    global0 = -613f;
    return _wgslsmith_div_i32(~arg_3.x, firstTrailingBit(~max(arg_3.x, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_3.x, -41729i, -8023i), arg_3.yxx))));
}

fn func_3() -> f32 {
    var var_0 = !(!select(vec3<bool>(true, true, true), vec3<bool>(all(vec3<bool>(false, false, false)), true, false), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true)))));
    let var_1 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(581f * 690f), _wgslsmith_f_op_f32(f32(-1f) * -359f), false)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -823f)))), _wgslsmith_f_op_f32(-154f * _wgslsmith_f_op_f32(-1064f - -1000f))), u_input.a, ~countOneBits(vec4<u32>(11132u, u_input.d.x, 20942u, ~u_input.e)), Struct_1(-select(~vec3<i32>(u_input.b.x, 0i, 16399i), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c.x, -47182i, u_input.a), vec3<i32>(u_input.b.x, u_input.c.x, u_input.a)), all(vec3<bool>(var_0.x, false, false))), vec4<bool>(any(!vec3<bool>(var_0.x, var_0.x, var_0.x)), var_0.x & (var_0.x || var_0.x), true && !var_0.x, all(vec4<bool>(var_0.x, false, true, var_0.x))), countOneBits(vec4<u32>(u_input.e, 4294967295u, 4294967295u, 1u))), 359u);
    let var_2 = ~var_1.c.x;
    var_0 = var_1.d.b.yxy;
    var var_3 = _wgslsmith_div_i32(-46802i, _wgslsmith_mult_i32(u_input.a, -32683i));
    return -1350f;
}

fn func_1(arg_0: Struct_4, arg_1: Struct_4, arg_2: vec2<f32>) -> u32 {
    let var_0 = arg_1;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) * -1299f) - -483f);
    var var_1 = ~(~func_2(min(u_input.e, u_input.d.x), !vec3<bool>(var_0.b, false, arg_0.b), Struct_1(vec3<i32>(0i, 37044i, 0i), vec4<bool>(true, true, false, false), vec4<u32>(17365u, u_input.d.x, u_input.e, u_input.d.x)), -vec4<i32>(52450i, arg_1.a.x, -69712i, arg_0.a.x)) ^ 0i);
    var_1 = ~(~(-2147483647i));
    global0 = _wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(func_3()));
    return 72253u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(-171f, ~6311i, ~vec4<u32>(countOneBits(u_input.d.x), countOneBits(2776u) ^ u_input.e, ~min(u_input.d.x, u_input.e), 55229u), Struct_1(vec3<i32>(abs(-u_input.b.x), u_input.b.x, ~(-40436i)), vec4<bool>(true, true, true, true), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.e << (48533u % 32u), u_input.d.x, ~u_input.d.x, u_input.e), firstLeadingBit(vec4<u32>(15962u, u_input.e, 0u, 29541u) << (vec4<u32>(u_input.e, 50441u, u_input.d.x, 4294967295u) % vec4<u32>(32u))))), func_1(Struct_4(_wgslsmith_div_vec4_i32(vec4<i32>(30885i, u_input.a, -31201i, u_input.a), vec4<i32>(u_input.c.x, 28603i, u_input.a, -14166i)), true), Struct_4(~vec4<i32>(u_input.c.x, u_input.c.x, u_input.a, u_input.b.x), true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-989f, -1395f))) | max(4294967295u, ~(~28527u)));
    var_0 = Struct_2(var_0.a, -(~(~(0i >> (var_0.d.c.x % 32u)))), min((vec4<u32>(4294967295u, var_0.d.c.x, var_0.c.x, 4294967295u) & (var_0.d.c | vec4<u32>(126196u, var_0.d.c.x, 102123u, 15449u))) & var_0.c, var_0.c), var_0.d, ~_wgslsmith_dot_vec3_u32(var_0.d.c.xxx, ~var_0.c.wwy >> (vec3<u32>(4294967295u, u_input.d.x, 16286u) % vec3<u32>(32u))));
    let var_1 = var_0.d.a.x;
    var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a * var_0.a) - -1154f), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(min(vec2<i32>(var_0.d.a.x, 2147483647i), u_input.c), var_0.d.a.zx), var_0.d.a.zy) << (~_wgslsmith_mult_u32(var_0.e << (u_input.d.x % 32u), _wgslsmith_div_u32(u_input.e, 64395u)) % 32u), var_0.c, Struct_1(vec3<i32>(u_input.b.x >> (~u_input.e % 32u), var_0.b, _wgslsmith_mod_i32(u_input.a, _wgslsmith_clamp_i32(var_0.b, 1i, var_0.d.a.x))), var_0.d.b, vec4<u32>(~func_1(Struct_4(vec4<i32>(var_0.d.a.x, 2147483647i, 14428i, var_0.d.a.x), true), Struct_4(vec4<i32>(-16391i, 0i, var_0.d.a.x, var_0.d.a.x), var_0.d.b.x), vec2<f32>(-1032f, var_0.a)), _wgslsmith_clamp_u32(4294967295u, ~var_0.d.c.x, ~1u), min(_wgslsmith_div_u32(u_input.d.x, var_0.d.c.x), var_0.c.x), var_0.d.c.x)), 0u);
    let var_2 = var_0.c.xyz;
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 257f)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, var_0.a) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.a, -1000f), vec2<f32>(-976f, var_0.a))))) * vec2<f32>(_wgslsmith_f_op_f32(-var_0.a), var_0.a)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -787f), -1500f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, var_0.a)) + _wgslsmith_div_vec2_f32(vec2<f32>(-1200f, -1491f), vec2<f32>(-209f, 727f)))) - vec2<f32>(_wgslsmith_f_op_f32(-413f * -643f), var_0.a)));
    global0 = -585f;
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1836f)), -285f);
    let var_4 = 683i;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d.a, _wgslsmith_div_vec4_i32(vec4<i32>(-abs(-5987i), -37523i, 2147483647i | u_input.c.x, func_2(u_input.d.x, vec3<bool>(var_0.d.b.x, true, var_0.d.b.x), var_0.d, vec4<i32>(1i, var_4, var_4, u_input.b.x)) << (u_input.e % 32u)), -abs(vec4<i32>(54877i, u_input.b.x, u_input.a, 0i) ^ vec4<i32>(-1i, var_0.d.a.x, var_0.d.a.x, var_4))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_3.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.x * 1624f), var_0.a))));
}

