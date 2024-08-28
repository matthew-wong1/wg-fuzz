struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: f32,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-445f, vec3<u32>(4294967295u, 4294967295u, 4294967295u), 496f);

var<private> global1: bool;

var<private> global2: vec2<bool> = vec2<bool>(true, true);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -585f), u_input.a.xyz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c - global0.a)));
    var var_1 = any(select(vec3<bool>(true, all(select(vec2<bool>(false, global2.x), vec2<bool>(global2.x, true), global2.x)), all(vec2<bool>(false, global2.x))), select(vec3<bool>(true, true, true), !select(vec3<bool>(global2.x, true, false), vec3<bool>(global2.x, global2.x, false), vec3<bool>(global2.x, true, global2.x)), !select(vec3<bool>(global2.x, global2.x, global2.x), vec3<bool>(global2.x, true, global2.x), vec3<bool>(true, global2.x, false))), true));
    var_1 = global2.x;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(step(715f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-2129f))), var_0.a, global2.x)))), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.a.x, _wgslsmith_clamp_u32(u_input.a.x, 4294967295u, 25718u), 1u, global0.b.x), _wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, var_0.b.x, 74415u, 3513u), ~vec4<u32>(global0.b.x, 0u, 1u, u_input.a.x))), ~var_0.b.x, 55909u), _wgslsmith_f_op_f32(-897f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -272f)))));
    var var_3 = min(vec2<u32>(~_wgslsmith_clamp_u32(var_0.b.x, reverseBits(1u), _wgslsmith_sub_u32(0u, var_2.b.x)), 34349u), u_input.a.xz);
    return ~13534u;
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = -((firstTrailingBit(i32(-1i) * -16562i) & -1i) << (~4294967295u % 32u));
    global0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.a + arg_1.c))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-219f * global0.c) - _wgslsmith_f_op_f32(select(-1000f, arg_1.c, arg_0.x))))), global0.b ^ ~(~(arg_1.b & vec3<u32>(global0.b.x, global0.b.x, u_input.a.x))), 171f);
    global1 = true;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0.a, -470f))))) * vec2<f32>(global0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c))));
    global1 = !any(arg_0);
    return Struct_1(arg_1.a, vec3<u32>(func_3(), _wgslsmith_dot_vec4_u32(~u_input.a | u_input.a, ~vec4<u32>(59738u, 0u, global0.b.x, u_input.a.x)), _wgslsmith_mod_u32(0u, global0.b.x)), 768f);
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec2<i32>) -> Struct_1 {
    var var_0 = arg_1;
    var var_1 = ~(~vec3<u32>(0u, _wgslsmith_clamp_u32(0u, u_input.a.x | var_0.b.x, _wgslsmith_clamp_u32(arg_1.b.x, 0u, var_0.b.x)), reverseBits(firstTrailingBit(1u))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(588f, 272f, global0.a) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-407f, global0.c, arg_0)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a, -252f, arg_0) + vec3<f32>(global0.c, -707f, global0.c)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_0.a * arg_0), _wgslsmith_f_op_f32(595f * 200f), _wgslsmith_f_op_f32(step(arg_0, -111f))) - vec3<f32>(_wgslsmith_div_f32(717f, -832f), _wgslsmith_f_op_f32(-148f * -1754f), _wgslsmith_f_op_f32(-var_0.c)))));
    let var_3 = _wgslsmith_div_u32(u_input.a.x, _wgslsmith_mult_u32(var_0.b.x >> (abs(42629u) % 32u), ~1u)) ^ _wgslsmith_mult_u32(~_wgslsmith_dot_vec3_u32(~u_input.a.xzy, ~global0.b), countOneBits(func_2(vec2<bool>(global2.x, global2.x), Struct_1(global0.c, arg_1.b, -866f)).b.x << (abs(global0.b.x) % 32u)));
    let var_4 = !select(vec4<bool>(any(vec4<bool>(global2.x, false, false, false)), -arg_2.x > reverseBits(0i), true, global2.x), select(!(!vec4<bool>(true, global2.x, global2.x, global2.x)), !select(vec4<bool>(global2.x, false, true, global2.x), vec4<bool>(global2.x, true, true, global2.x), false), select(vec4<bool>(true, global2.x, global2.x, true), vec4<bool>(true, true, global2.x, global2.x), vec4<bool>(global2.x, global2.x, global2.x, global2.x))), global2.x);
    return arg_1;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2168f + -1018f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a + global0.c) - 1272f)));
    global2 = vec2<bool>(true, arg_1.x);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1694f, _wgslsmith_div_f32(293f, _wgslsmith_f_op_f32(221f + -1214f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(var_0, 535f)), var_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - global0.a) - _wgslsmith_f_op_f32(f32(-1f) * -706f))), vec4<f32>(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0))), global0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) - _wgslsmith_div_f32(-1317f, var_0)))));
    global0 = func_4(-585f, func_2(arg_1.yx, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.x))), ~global0.b ^ ~u_input.a.xzx, var_1.x)), -vec2<i32>(1i, 1i) ^ (_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-34280i, 39324i), vec2<i32>(-1890i, 12533i)), select(vec2<i32>(0i, -1i), vec2<i32>(2147483647i, 0i), arg_1.x)) << (_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(global0.b.yy, arg_0.zy), u_input.a.zw) % vec2<u32>(32u))));
    global0 = func_4(_wgslsmith_f_op_f32(-var_1.x), Struct_1(var_1.x, ~u_input.a.wyy, _wgslsmith_f_op_f32(round(var_0))), abs(firstTrailingBit(_wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, -30553i), vec2<i32>(-34740i, -1i)), ~vec2<i32>(-2147483647i, 1162i)))));
    return func_4(-1221f, func_4(-568f, func_4(_wgslsmith_f_op_f32(exp2(func_4(-1311f, Struct_1(var_0, vec3<u32>(u_input.a.x, arg_0.x, arg_0.x), -810f), vec2<i32>(-34011i, -37199i)).c)), Struct_1(-282f, firstTrailingBit(arg_0.zzx), -523f), _wgslsmith_div_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(-2147483647i, -2147483647i))), vec2<i32>(select(abs(4191i), reverseBits(7944i), true), ~(-2147483647i) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -1i, 0i, 2147483647i), vec4<i32>(-2147483647i, -2147483647i, -32730i, -5981i)))), max(select(~_wgslsmith_sub_vec2_i32(vec2<i32>(23243i, 29112i), vec2<i32>(-40209i, 1i)), vec2<i32>(59089i >> (global0.b.x % 32u), 57486i), global2.x), abs(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(1i, 1i)))));
}

fn func_5(arg_0: vec2<i32>, arg_1: f32, arg_2: vec4<i32>, arg_3: Struct_1) -> vec2<bool> {
    global2 = vec2<bool>(true, arg_2.x == ~arg_2.x);
    var var_0 = false;
    global1 = !global2.x;
    var var_1 = func_4(_wgslsmith_div_f32(func_2(select(select(vec2<bool>(true, true), vec2<bool>(global2.x, global2.x), vec2<bool>(false, false)), !vec2<bool>(true, global2.x), true), func_2(select(vec2<bool>(false, global2.x), vec2<bool>(false, global2.x), true), arg_3)).a, arg_3.a), arg_3, vec2<i32>(arg_2.x, -_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(arg_2, arg_2), countOneBits(arg_2.x), arg_0.x >> (arg_3.b.x % 32u))));
    let var_2 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(83676u, _wgslsmith_mod_u32(var_1.b.x, ~4294967295u), 22971u), func_2(!select(vec2<bool>(global2.x, false), vec2<bool>(false, false), true), arg_3).b);
    return !(!vec2<bool>(func_2(vec2<bool>(global2.x, global2.x), Struct_1(-1000f, global0.b, 754f)).b.x < ~var_2, _wgslsmith_f_op_f32(456f * var_1.c) < -420f));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = !(!func_5(vec2<i32>(_wgslsmith_div_i32(-9867i, -37706i), -19812i), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-547f, global0.a)), select(-vec4<i32>(-2147483647i, -2147483647i, -18412i, -43032i), vec4<i32>(-32606i, 23218i, 17691i, -17468i), true), func_1(vec4<u32>(59231u, global0.b.x, 0u, u_input.a.x), vec3<bool>(true, true, global2.x))));
    let var_0 = _wgslsmith_div_u32(abs(~u_input.a.x), 33831u ^ (_wgslsmith_div_u32(4294967295u >> (0u % 32u), func_1(vec4<u32>(global0.b.x, global0.b.x, 90382u, u_input.a.x), vec3<bool>(global2.x, global2.x, global2.x)).b.x) | ~(global0.b.x << (0u % 32u))));
    let var_1 = !(!select(vec4<bool>(true, false, all(vec4<bool>(true, true, global2.x, global2.x)), !global2.x), vec4<bool>(all(vec3<bool>(true, false, global2.x)), false, true, global2.x), !vec4<bool>(global2.x, global2.x, global2.x, true)));
    var var_2 = _wgslsmith_mod_vec3_i32((vec3<i32>(-1i) * -vec3<i32>(2147483647i, -24393i, 2147483647i)) ^ vec3<i32>(33132i, ~(i32(-1i) * -12228i), _wgslsmith_dot_vec3_i32(~vec3<i32>(-4437i, 1i, 8402i), ~vec3<i32>(1i, 2147483647i, 30059i))), _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(select(vec3<i32>(1i, -1i, 2147483647i), vec3<i32>(-2147483647i, 1i, -2147483647i), vec3<bool>(var_1.x, var_1.x, var_1.x)), _wgslsmith_sub_vec3_i32(vec3<i32>(0i, -19319i, 0i), vec3<i32>(-7805i, -2147483647i, 2147483647i))), countOneBits(select(vec3<i32>(-20745i, 79245i, -1i), vec3<i32>(-2147483647i, 14709i, -57176i), false))), vec3<i32>(firstTrailingBit(61351i), select(-2147483647i, 0i, select(false, false, true)), countOneBits(1i))));
    let var_3 = 50957i;
    global2 = !vec2<bool>(global2.x, any(vec4<bool>(var_1.x, func_5(var_2.yx, -1364f, vec4<i32>(var_2.x, -24724i, 2674i, -39433i), Struct_1(global0.c, u_input.a.yzx, -1000f)).x, true, !global2.x)));
    global1 = all(var_1) || true;
    global1 = true;
    let var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(func_1(~firstLeadingBit(u_input.a), vec3<bool>(true, any(vec2<bool>(false, global2.x)), !var_1.x)).a, -201f, _wgslsmith_f_op_f32(-937f - global0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a * global0.c)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(select(vec4<i32>(1i, -1i, ~var_3, _wgslsmith_mult_i32(var_3, var_3)), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<i32>(-2147483647i, 2147483647i, var_3, 2147483647i) ^ vec4<i32>(-18987i, -1i, -1i, var_2.x), vec4<i32>(var_3, var_2.x, -8484i, 20743i)), var_1), vec4<i32>(-17838i, 1i, var_3, var_2.x)), _wgslsmith_mult_vec2_u32(u_input.a.wz, ~vec2<u32>(1u, 1u) | abs(~u_input.a.yz)), global0.c, var_4.xz, 24746i);
}

