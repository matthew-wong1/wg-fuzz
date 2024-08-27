struct Struct_1 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec4<f32>,
    d: f32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(1808f, vec2<i32>(0i, 26988i)), Struct_2(979f, vec2<i32>(0i, 1i)), Struct_2(-733f, vec2<i32>(-1i, 0i)), Struct_2(234f, vec2<i32>(32728i, 17841i)), Struct_2(423f, vec2<i32>(14403i, -17300i)));

var<private> global1: vec3<u32> = vec3<u32>(109882u, 1u, 4294967295u);

var<private> global2: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(218f, vec2<i32>(1i, 0i)), Struct_2(-672f, vec2<i32>(37671i, i32(-2147483648))), Struct_2(-261f, vec2<i32>(17915i, 0i)), Struct_2(-600f, vec2<i32>(1i, -8983i)), Struct_2(769f, vec2<i32>(62003i, -1i)), Struct_2(588f, vec2<i32>(40156i, i32(-2147483648))), Struct_2(383f, vec2<i32>(14568i, i32(-2147483648))), Struct_2(289f, vec2<i32>(-12053i, 2147483647i)), Struct_2(977f, vec2<i32>(-15105i, 61925i)), Struct_2(-416f, vec2<i32>(-1i, -39089i)), Struct_2(1290f, vec2<i32>(-28554i, -12i)), Struct_2(-298f, vec2<i32>(-1i, i32(-2147483648))), Struct_2(1154f, vec2<i32>(-1i, 2147483647i)), Struct_2(1235f, vec2<i32>(-64396i, -1i)), Struct_2(-1291f, vec2<i32>(-1i, -51758i)), Struct_2(1374f, vec2<i32>(26872i, 16470i)), Struct_2(-756f, vec2<i32>(1i, 2147483647i)), Struct_2(-1362f, vec2<i32>(-37855i, -1i)));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>) -> vec4<bool> {
    var var_0 = u_input.d.x;
    global2 = array<Struct_2, 18>();
    var var_1 = vec3<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(-(~_wgslsmith_clamp_vec3_i32(u_input.d, vec3<i32>(arg_0.b.x, u_input.a, arg_0.b.x), u_input.b.xxw)), _wgslsmith_sub_vec3_i32(abs(vec3<i32>(-2147483647i, 1i, 2147483647i)), max(firstLeadingBit(u_input.b.zxz), vec3<i32>(arg_0.b.x, u_input.a, -2147483647i)))), _wgslsmith_sub_i32(-u_input.b.x, -2147483647i));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(281f, _wgslsmith_f_op_f32(-arg_0.d))))), vec2<i32>(2147483647i, 47532i));
    return select(select(select(vec4<bool>(arg_1.x & true, !arg_1.x, any(vec4<bool>(false, arg_1.x, true, arg_1.x)), !arg_1.x), vec4<bool>(arg_1.x, arg_1.x, false, false && arg_1.x), select(19214i < arg_0.b.x, false, false)), select(vec4<bool>(all(vec4<bool>(false, true, true, true)), arg_1.x, true, false), !select(vec4<bool>(arg_1.x, false, arg_1.x, true), vec4<bool>(arg_1.x, true, arg_1.x, false), vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x)), !arg_1.x || true), 81714u > u_input.c), select(vec4<bool>(arg_1.x, true, false, !(var_1.x != var_1.x)), vec4<bool>(all(select(vec4<bool>(arg_1.x, arg_1.x, false, false), vec4<bool>(true, false, true, arg_1.x), vec4<bool>(true, arg_1.x, true, arg_1.x))), !(!arg_1.x), !arg_1.x, arg_1.x), vec4<bool>(_wgslsmith_f_op_f32(-var_2.a) <= -1406f, all(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true)) & all(vec4<bool>(false, arg_1.x, true, arg_1.x)), arg_1.x, true)), select(vec4<bool>(all(select(vec4<bool>(false, arg_1.x, true, arg_1.x), vec4<bool>(false, true, false, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x))), true, arg_1.x, arg_1.x), select(select(vec4<bool>(arg_1.x, arg_1.x, true, false), vec4<bool>(false, arg_1.x, true, true), arg_1.x), vec4<bool>(false, u_input.c <= global1.x, false, arg_1.x), arg_1.x), vec4<bool>(arg_1.x, var_2.a <= _wgslsmith_f_op_f32(trunc(var_2.a)), min(0i, u_input.b.x) == (var_2.b.x ^ var_1.x), true)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec4<f32>) -> vec2<f32> {
    var var_0 = vec4<bool>(!arg_0.a.x, false, false, !arg_1.a.x);
    var var_1 = arg_1;
    let var_2 = Struct_1(vec3<u32>(global1.x, 4294967295u, 18029u), ~u_input.b.wz, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2.x))), _wgslsmith_f_op_f32(step(-1000f, arg_2.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_2.x), arg_2.x))) + arg_2), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(f32(-1f) * -1398f)))), max(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 4294967295u, firstTrailingBit(1u)), ~vec3<u32>(0u, global1.x, global1.x)), _wgslsmith_div_vec3_u32(abs(select(vec3<u32>(u_input.c, u_input.c, 64226u), vec3<u32>(4294967295u, 111353u, 53334u), true)), ~max(vec3<u32>(4294967295u, 1u, global1.x), vec3<u32>(44138u, 0u, u_input.c)))));
    let var_3 = vec4<u32>(var_2.a.x, ~4294967295u, (~(~1u) << (_wgslsmith_mult_u32(~1u, var_2.a.x) % 32u)) << (~u_input.c % 32u), _wgslsmith_mult_u32(_wgslsmith_div_u32(~28465u, _wgslsmith_mult_u32(global1.x, 0u)), 52449u) & global1.x);
    var var_4 = 7973u;
    return vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(var_2.c.x)))), arg_2.x);
}

fn func_2(arg_0: Struct_1) -> vec4<f32> {
    var var_0 = Struct_2(-986f, u_input.d.yz);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.d)) + 359f), var_0.a))) + _wgslsmith_f_op_vec2_f32(func_4(Struct_3(func_3(Struct_1(arg_0.e, vec2<i32>(var_0.b.x, u_input.d.x), arg_0.c, 534f, arg_0.e), vec3<bool>(true, true, true))), Struct_3(vec4<bool>(true, true, true, true)), arg_0.c)));
    let var_2 = firstTrailingBit(-2147483647i);
    let var_3 = var_1;
    global0 = array<Struct_2, 5>();
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(arg_0.c, vec4<f32>(_wgslsmith_f_op_f32(var_1.x * var_1.x), _wgslsmith_div_f32(var_3.x, var_0.a), _wgslsmith_f_op_f32(600f - var_3.x), _wgslsmith_div_f32(arg_0.d, var_0.a))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.a), var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.x)) + 543f), -373f) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(550f, arg_0.c.x, var_3.x, -525f))))));
}

fn func_5(arg_0: Struct_3, arg_1: bool, arg_2: vec4<f32>, arg_3: Struct_2) -> f32 {
    var var_0 = arg_0;
    var var_1 = ~_wgslsmith_dot_vec3_i32(u_input.b.wxy, u_input.b.xww) ^ 35652i;
    global1 = _wgslsmith_mod_vec3_u32(~vec3<u32>(~78156u, min(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, global1.x), vec2<u32>(1u, 5881u)), 63069u), reverseBits(_wgslsmith_clamp_u32(55965u, u_input.c, 28315u))), ~_wgslsmith_mult_vec3_u32(vec3<u32>(~global1.x, global1.x, u_input.c), firstTrailingBit(vec3<u32>(1u, global1.x, global1.x) | vec3<u32>(0u, global1.x, global1.x))));
    var var_2 = arg_3;
    let var_3 = u_input.d;
    return arg_2.x;
}

fn func_1() -> i32 {
    global2 = array<Struct_2, 18>();
    var var_0 = ~(~u_input.c) < global1.x;
    let var_1 = true;
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_5(Struct_3(vec4<bool>(var_1, true, true, var_1)), select(true, var_1, var_1), _wgslsmith_f_op_vec4_f32(func_2(Struct_1(vec3<u32>(1u, global1.x, global1.x), vec2<i32>(u_input.a, u_input.a), vec4<f32>(-1304f, -1393f, -563f, 299f), -721f, vec3<u32>(59093u, 129515u, 0u)))), Struct_2(-1091f, vec2<i32>(u_input.a, u_input.b.x)))))), 850f, 1442f));
    var var_3 = _wgslsmith_mult_i32(-2343i, u_input.a);
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(!(global1.x == 10520u), -u_input.a < func_1(), !all(vec4<bool>(true, true, false, true))), select(vec3<bool>(u_input.d.x != -1i, true, any(vec4<bool>(false, true, true, false))), select(func_3(Struct_1(vec3<u32>(0u, 1u, 39864u), u_input.d.yy, vec4<f32>(1123f, 1233f, 199f, -719f), 114f, vec3<u32>(global1.x, 63617u, global1.x)), vec3<bool>(false, false, true)).xzz, select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true), any(vec3<bool>(true, true, true))), true), any(vec4<bool>(true, all(vec2<bool>(false, true)), true, select(true, false, false)))), true);
    let x = u_input.a;
    s_output = StorageBuffer(-14091i, firstLeadingBit(global1.x));
}

