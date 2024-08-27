struct Struct_1 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: i32,
    d: bool,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: i32,
    b: vec3<f32>,
    c: u32,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: vec4<f32>) -> vec4<bool> {
    var var_0 = min(~(-2147483647i), u_input.a.x >> (_wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.c.x, ~u_input.c.x), u_input.c.x >> (10750u % 32u)) % 32u));
    let var_1 = Struct_5(global0.x, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1.x)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.x), arg_1.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(851f)), 1512f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)))), _wgslsmith_mult_u32(u_input.c.x, u_input.c.x), Struct_1(select(!vec4<bool>(arg_0, true, arg_0, true), select(vec4<bool>(arg_0, arg_0, false, arg_0), vec4<bool>(false, false, arg_0, true), vec4<bool>(arg_0, arg_0, arg_0, arg_0)), vec4<bool>(true, true, true, true)), ~(~vec4<u32>(4294967295u, u_input.c.x, 1u, u_input.c.x)), u_input.c.x, reverseBits(_wgslsmith_add_i32(-u_input.b.x, 1i))), i32(-1i) * -_wgslsmith_div_i32(u_input.d, _wgslsmith_mod_i32(1i, -17814i)));
    let var_2 = Struct_2(_wgslsmith_mod_vec2_i32(global0.xw, u_input.b.wx), all(vec3<bool>(var_1.d.a.x, var_1.d.a.x, arg_0)) && !(!(!var_1.d.a.x)));
    let var_3 = reverseBits(~var_1.d.b.yzw);
    let var_4 = u_input.c.x << (_wgslsmith_mod_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(1u, var_1.c), 43288u) ^ ~10864u, _wgslsmith_div_u32(_wgslsmith_mult_u32(var_1.c, 0u) << ((47607u ^ var_3.x) % 32u), ~32836u)) % 32u);
    return var_1.d.a;
}

fn func_2(arg_0: Struct_4, arg_1: vec3<i32>) -> vec3<f32> {
    let var_0 = Struct_1(!func_3(true, vec4<f32>(-402f, -104f, -1165f, _wgslsmith_f_op_f32(select(1890f, 412f, true)))), ~(~vec4<u32>(~u_input.c.x, ~68078u, reverseBits(u_input.c.x), 1u)), u_input.c.x, global0.x);
    global0 = min((-u_input.b | ~u_input.a) << (abs(vec4<u32>(var_0.b.x, var_0.c, u_input.c.x, u_input.c.x)) % vec4<u32>(32u)), ~min(~vec4<i32>(32748i, -1i, -1i, -6924i), u_input.b)) ^ vec4<i32>(u_input.a.x, _wgslsmith_sub_i32(~arg_0.a, ~(-27003i)), u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.a, 1i, ~var_0.d), ~_wgslsmith_add_vec3_i32(vec3<i32>(global0.x, 95522i, -18603i), global0.yyy)));
    let var_1 = var_0.a.x;
    let var_2 = ~select(58869u, var_0.c, select(true, var_0.a.x || true, true));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-522f, -1766f))))) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -869f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-1690f)))))));
    return vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_3.x * _wgslsmith_f_op_f32(var_3.x - var_3.x)), _wgslsmith_f_op_f32(min(var_3.x, var_3.x)))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(f32(-1f) * -480f)), var_3.x), var_3.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-480f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(var_3.x, var_3.x)), _wgslsmith_f_op_f32(select(var_3.x, var_3.x, false))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_3.x * -371f), 902f)))));
}

fn func_1(arg_0: bool) -> i32 {
    let var_0 = -527f;
    var var_1 = Struct_5(global0.x, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(func_2(Struct_4(global0.x), global0.xxy)))), 14892u, Struct_1(select(func_3(true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(441f, var_0, var_0, 2412f))), func_3(arg_0, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, var_0, var_0))), !vec4<bool>(true, arg_0, false, arg_0)), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x & _wgslsmith_mult_u32(u_input.c.x, 27349u), min(1u, ~0u)), _wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(58726u, 1u, 78282u, u_input.c.x), vec4<u32>(1u, u_input.c.x, u_input.c.x, 46375u)), 4294967295u), i32(-1i) * -_wgslsmith_clamp_i32(14717i, global0.x, 0i)), ~(-u_input.a.x ^ _wgslsmith_dot_vec2_i32(select(u_input.a.zw, vec2<i32>(45088i, u_input.a.x), false), ~vec2<i32>(23650i, u_input.d))));
    var_1 = Struct_5(~(-28182i ^ _wgslsmith_dot_vec4_i32(select(u_input.b, vec4<i32>(var_1.a, -2817i, global0.x, global0.x), var_1.d.a.x), ~vec4<i32>(-27169i, 0i, var_1.e, -1i))), vec3<f32>(-627f, var_0, _wgslsmith_f_op_f32(-var_1.b.x)), 52936u, var_1.d, 1i);
    let var_2 = Struct_5(13279i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.b))) * vec3<f32>(var_1.b.x, _wgslsmith_f_op_f32(step(-581f, _wgslsmith_f_op_f32(var_0 + var_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)))), abs(~53820u), Struct_1(func_3(false, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(443f, var_1.b.x, var_0, var_1.b.x)) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-2164f, var_1.b.x, 923f, -1112f), vec4<f32>(var_0, var_1.b.x, var_1.b.x, var_0))))), ~(vec4<u32>(var_1.d.c, var_1.c, 0u, var_1.c) << (vec4<u32>(var_1.c, var_1.d.c, 31260u, 1u) % vec4<u32>(32u))) | (select(vec4<u32>(4294967295u, 43244u, 39964u, 53493u), var_1.d.b, true) >> (vec4<u32>(u_input.c.x, 0u, 54808u, u_input.c.x) % vec4<u32>(32u))), _wgslsmith_sub_u32(~37377u, 39432u), ~_wgslsmith_add_i32(~44964i, u_input.a.x | u_input.b.x)), -2147483647i);
    var_1 = var_2;
    return ~abs(var_1.d.d);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_div_vec4_i32(vec4<i32>(~(-global0.x), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(global0.xy, vec2<i32>(-26216i, 22740i)), global0.x) << (1u % 32u), ~(-33204i), ((1i | u_input.d) << (1u % 32u)) & (2147483647i >> (u_input.c.x % 32u))), ~(~u_input.b | (u_input.b >> (vec4<u32>(29228u, 28625u, 55109u, 1u) % vec4<u32>(32u)))) | (vec4<i32>(-18209i, u_input.b.x, global0.x, _wgslsmith_mod_i32(u_input.d, u_input.b.x)) ^ vec4<i32>(~u_input.d, i32(-1i) * -2147483647i, global0.x & u_input.b.x, func_1(true))));
    global0 = vec4<i32>(max(u_input.b.x | 9231i, ~(global0.x ^ ~(-24891i))), u_input.b.x, 42352i >> ((firstLeadingBit(abs(u_input.c.x)) << (_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c.x, 36946u, u_input.c.x, 4294967295u), abs(vec4<u32>(81398u, u_input.c.x, 1u, 27162u))) % 32u)) % 32u), firstTrailingBit(global0.x));
    var var_0 = Struct_1(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(any(vec3<bool>(false, true, true)), false, true, true)), select(vec4<bool>(true, true, true, true), func_3(true, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-110f, -1333f, 1976f, 892f)))), vec4<bool>(select(true, false, false), true, u_input.c.x <= u_input.c.x, false)), select(select(vec4<bool>(true, true, true, false), func_3(false, vec4<f32>(-297f, 789f, 464f, -1960f)), true), vec4<bool>(true, true, true, true), true)), vec4<u32>(~(~u_input.c.x) >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c.x, 100572u, 3360u, u_input.c.x), vec4<u32>(0u, u_input.c.x, u_input.c.x, u_input.c.x) >> (vec4<u32>(51079u, u_input.c.x, 28479u, u_input.c.x) % vec4<u32>(32u))) % 32u), _wgslsmith_mult_u32(u_input.c.x & max(u_input.c.x, 1u), u_input.c.x), u_input.c.x ^ 4294967295u, u_input.c.x), max(countOneBits(23067u) | u_input.c.x, u_input.c.x << (4294967295u % 32u)), ~25993i);
    let var_1 = Struct_4(u_input.b.x);
    global0 = _wgslsmith_sub_vec4_i32(~vec4<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, -10070i), vec2<i32>(var_0.d, 0i)), abs(23286i)), ~(~0i), var_0.d, _wgslsmith_div_i32(firstLeadingBit(global0.x), _wgslsmith_add_i32(global0.x, -12185i))), -_wgslsmith_mult_vec4_i32(u_input.a, vec4<i32>(-1i, firstTrailingBit(-1i), _wgslsmith_add_i32(global0.x, -2147483647i), ~(-514i))));
    var_0 = Struct_1(!vec4<bool>(true, true, false, var_0.a.x), vec4<u32>(var_0.c, var_0.b.x, 34510u, u_input.c.x), 57414u, global0.x ^ 1i);
    var_0 = Struct_1(vec4<bool>(true, var_0.a.x, !(abs(var_0.b.x) == ~u_input.c.x), any(!select(var_0.a.zw, vec2<bool>(var_0.a.x, true), vec2<bool>(false, false)))), max(select(~vec4<u32>(u_input.c.x, var_0.b.x, 1u, var_0.c), vec4<u32>(var_0.b.x, u_input.c.x, u_input.c.x, 34421u) ^ vec4<u32>(var_0.c, 9407u, 0u, 1u), !vec4<bool>(true, var_0.a.x, var_0.a.x, false)), reverseBits(var_0.b) | select(var_0.b, vec4<u32>(var_0.b.x, 0u, 1u, 2733u), vec4<bool>(true, true, false, var_0.a.x))) ^ ~_wgslsmith_div_vec4_u32(var_0.b, ~var_0.b), _wgslsmith_clamp_u32(var_0.b.x, 1u, 43670u), (firstLeadingBit(17148i) & firstTrailingBit(-global0.x)) & -33542i);
    var_0 = Struct_1(vec4<bool>(any(vec2<bool>(!var_0.a.x, !var_0.a.x)), any(var_0.a), all(select(!var_0.a, vec4<bool>(var_0.a.x, true, false, var_0.a.x), false)), (firstLeadingBit(var_0.c) <= firstLeadingBit(13292u)) || (select(var_0.a.x, var_0.a.x, false) & any(var_0.a))), _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(min(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.b.x, 1u, u_input.c.x, u_input.c.x), vec4<u32>(var_0.c, u_input.c.x, var_0.b.x, u_input.c.x), vec4<u32>(u_input.c.x, 1u, var_0.c, 1u)), _wgslsmith_add_vec4_u32(vec4<u32>(var_0.c, u_input.c.x, var_0.c, 54063u), var_0.b)), abs(vec4<u32>(var_0.b.x, u_input.c.x, 73196u, var_0.c)), var_0.b), ~min(~var_0.b, var_0.b)), ~(~var_0.b.x), 40228i);
    var var_2 = Struct_1(select(select(!(!var_0.a), !(!var_0.a), !any(vec4<bool>(false, var_0.a.x, false, false))), select(var_0.a, vec4<bool>(true, var_0.a.x, false, var_0.a.x), var_0.a), all(func_3(false, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-159f, 1146f, -1103f, -1000f))).wyz)), select(~min(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 8581u, u_input.c.x), vec4<u32>(86688u, 0u, var_0.c, var_0.c)), vec4<u32>(4294967295u, u_input.c.x, var_0.b.x, 1u) << (vec4<u32>(u_input.c.x, u_input.c.x, 0u, 1u) % vec4<u32>(32u))), var_0.b, var_0.a.x), _wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(abs(59320u), u_input.c.x << (u_input.c.x % 32u)), _wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.c, u_input.c.x), var_0.b.wz)), ~_wgslsmith_div_u32(~0u, 1u)), -select(-1i, -1667i, var_0.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(abs(firstTrailingBit(~_wgslsmith_sub_vec2_u32(u_input.c, var_2.b.zz))));
}

