struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
    c: vec3<bool>,
    d: vec2<i32>,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: Struct_2,
    e: u32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: i32,
    c: Struct_1,
    d: f32,
}

struct Struct_5 {
    a: vec4<u32>,
    b: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<i32>(-35357i, -74948i, 2147483647i, -1i), vec3<bool>(true, false, true), -20487i, 1u);

var<private> global1: vec4<f32>;

var<private> global2: vec2<bool>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: u32) -> f32 {
    global0 = Struct_1(firstLeadingBit(global0.a), vec3<bool>(all(!global0.b) & any(select(vec4<bool>(global2.x, false, global2.x, true), vec4<bool>(global0.b.x, global2.x, true, true), true)), all(vec2<bool>(true, true)), select(!(true != global2.x), _wgslsmith_mult_u32(1u, 1u) < (u_input.d ^ global0.d), !any(vec4<bool>(false, global2.x, global2.x, false)))), -49979i, 104516u);
    var var_0 = countOneBits(10337i);
    let var_1 = Struct_5(vec4<u32>(_wgslsmith_clamp_u32(global0.d, 4294967295u, 2905u), 4294967295u, _wgslsmith_clamp_u32(global0.d, 4294967295u, u_input.b) & 1u, 4294967295u) ^ (_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 57047u, 1u, 2289u), vec4<u32>(u_input.d, 0u, 4294967295u, global0.d)), _wgslsmith_clamp_vec4_u32(vec4<u32>(global0.d, global0.d, global0.d, 66947u), vec4<u32>(7380u, 56853u, 4294967295u, u_input.d), vec4<u32>(0u, u_input.d, u_input.d, 0u))) ^ ~_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.d, 54906u, global0.d, global0.d), vec4<u32>(arg_1, 9310u, 55485u, 0u), vec4<u32>(u_input.b, 1u, u_input.b, arg_1))), -2147483647i);
    var var_2 = Struct_5(min(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 15824u, u_input.b, 49372u), var_1.a, vec4<u32>(4294967295u, var_1.a.x, 23582u, u_input.d)) << ((vec4<u32>(20913u, var_1.a.x, 17453u, global0.d) >> (countOneBits(var_1.a) % vec4<u32>(32u))) % vec4<u32>(32u)), ~((vec4<u32>(global0.d, 9u, arg_1, arg_1) >> (var_1.a % vec4<u32>(32u))) << (var_1.a % vec4<u32>(32u)))), global0.a.x);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(103f, global1.x, global1.x, -1208f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(500f, -1708f, 1000f, 1345f)))), select(select(vec4<bool>(true, global2.x, global2.x, global2.x), vec4<bool>(false, true, false, false), vec4<bool>(false, global0.b.x, true, true)), select(vec4<bool>(true, false, global2.x, false), vec4<bool>(false, true, false, global2.x), true), false))))));
    return global1.x;
}

fn func_2(arg_0: Struct_2, arg_1: i32) -> bool {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(func_3(~arg_1, _wgslsmith_add_u32(8324u, 1u)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_dot_vec2_i32(arg_0.d, vec2<i32>(arg_0.d.x, arg_1)), select(10732u, u_input.d, arg_0.a.x)))) - _wgslsmith_f_op_f32(floor(global1.x))));
    let var_1 = _wgslsmith_f_op_f32(func_3(~4472i, global0.d));
    global0 = Struct_1(abs(u_input.c), arg_0.c, select(max(~arg_0.d.x, -(~(-2147483647i))), global0.a.x, false | !global2.x), min(firstLeadingBit(1u), _wgslsmith_add_u32(abs(u_input.b), global0.d)));
    let var_2 = firstTrailingBit(max(-select(u_input.c.ywy, vec3<i32>(arg_1, arg_0.d.x, -2147483647i), arg_0.c.x), _wgslsmith_mod_vec3_i32(global0.a.www, vec3<i32>(arg_1, -3645i, -2147483647i)) >> (vec3<u32>(global0.d, global0.d, 50259u) % vec3<u32>(32u))) | (global0.a.wxy ^ ~(-vec3<i32>(-3224i, 2147483647i, global0.c))));
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(297f, var_1, global1.x, var_1) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(481f, var_1, -2098f, global1.x)))) + _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1, global1.x, -906f, var_1), vec4<f32>(global1.x, global1.x, var_1, 407f)), vec4<f32>(-536f, global1.x, -280f, -843f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1.x, 1848f, -651f, -1564f))))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, !arg_0.a.x), !vec4<bool>(false, arg_0.a.x, false, global2.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-686f, -180f, 143f, var_1) - vec4<f32>(global1.x, var_1, global1.x, var_1)) * vec4<f32>(732f, global1.x, 562f, 1000f))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2500f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * var_1) * _wgslsmith_f_op_f32(var_1 * var_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1017f)), var_1)));
    return true;
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = Struct_2(global0.b.yx, i32(-1i) * -(30962i >> (abs(0u) % 32u)), global0.b, _wgslsmith_mult_vec2_i32(~(vec2<i32>(-82545i, global0.c) << (_wgslsmith_mult_vec2_u32(vec2<u32>(37269u, u_input.b), vec2<u32>(34165u, u_input.b)) % vec2<u32>(32u))), ~global0.a.xx), 1i);
    var var_1 = ~global0.c;
    var var_2 = !var_0.c.x;
    var var_3 = Struct_3(Struct_1(~_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(u_input.c, u_input.c), ~vec4<i32>(global0.a.x, global0.c, u_input.c.x, -2147483647i)), vec3<bool>(all(select(vec4<bool>(var_0.c.x, global0.b.x, false, false), vec4<bool>(false, true, false, true), vec4<bool>(global2.x, global2.x, false, true))), func_2(var_0, 1i), global2.x), _wgslsmith_mod_i32(select(-1i, var_0.e, false) >> ((u_input.b << (4294967295u % 32u)) % 32u), ~reverseBits(-2147483647i)), global0.d), ~max(~17689i ^ firstTrailingBit(-1i), max(var_0.d.x, global0.a.x)), true, var_0, u_input.d);
    var var_4 = ~vec2<u32>(47723u, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(var_3.e, var_3.a.d, global0.d), vec3<u32>(global0.d, u_input.b, 0u)));
    return var_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(-490f);
    var var_0 = ~(~firstLeadingBit(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.d, 4294967295u), vec2<u32>(u_input.b, 0u)), 20906u >> (u_input.d % 32u), firstTrailingBit(global0.d))));
    let var_1 = _wgslsmith_f_op_vec3_f32(select(global1.xww, global1.wxw, false));
    let var_2 = abs(_wgslsmith_add_vec2_u32(vec2<u32>(~_wgslsmith_dot_vec2_u32(var_0.xz, var_0.xy), _wgslsmith_sub_u32(~19249u, abs(u_input.b))), ~(~_wgslsmith_mod_vec2_u32(var_0.yz, var_0.zx))));
    global2 = global0.b.yy;
    global1 = vec4<f32>(_wgslsmith_f_op_f32(ceil(-566f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(global1.x)), _wgslsmith_f_op_f32(-global1.x))))) - _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(global0.c, ~var_2.x)) * _wgslsmith_f_op_f32(trunc(global1.x))), _wgslsmith_f_op_f32(abs(var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(1u, ~_wgslsmith_mod_u32(var_2.x, var_2.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -1293f, 541f, -1314f)) * vec4<f32>(var_1.x, 487f, var_1.x, -245f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.x, var_1.x, -1135f, -714f))))), vec4<bool>(!(global0.d < u_input.b), func_1(-956f).b.x && (var_1.x < var_1.x), func_2(Struct_2(vec2<bool>(global2.x, true), 1i, global0.b, global0.a.yz, global0.a.x), 0i), func_2(Struct_2(global0.b.zz, 14095i, global0.b, global0.a.yy, u_input.e), -2147483647i)))), global1.yy);
}

