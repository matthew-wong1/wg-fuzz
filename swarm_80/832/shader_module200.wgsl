struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec2<i32>,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: bool,
}

struct Struct_5 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec2<f32>,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 11749u;

var<private> global1: vec3<f32>;

var<private> global2: vec2<i32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> vec3<f32> {
    let var_0 = Struct_3(Struct_1(~2147483647i, reverseBits(_wgslsmith_sub_vec3_i32(-arg_1.b, vec3<i32>(global2.x, global2.x, -1763i))), select(9676u, select(4294967295u, arg_1.c, -9410i <= u_input.a), false), true), global1.x, _wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(arg_1.b.zz, select(countOneBits(vec2<i32>(-59965i, u_input.a)), ~arg_1.b.zz, select(arg_1.d, true, arg_1.d)), arg_1.b.yz), ~vec2<i32>(_wgslsmith_sub_i32(global2.x, 2147483647i), arg_1.a)), Struct_2(arg_1, Struct_1(-8411i, vec3<i32>(firstLeadingBit(1i), ~global2.x, _wgslsmith_clamp_i32(-45425i, -16614i, 0i)), arg_1.c, false)));
    global2 = -vec2<i32>(-1i, countOneBits(arg_1.b.x));
    global0 = _wgslsmith_sub_u32(u_input.b ^ 0u, 71076u);
    let var_1 = _wgslsmith_mult_vec4_i32(vec4<i32>(~var_0.d.b.b.x, var_0.d.a.b.x, ~arg_1.b.x, global2.x), vec4<i32>(u_input.a, arg_1.b.x << (7541u % 32u), -(~34725i), u_input.a));
    let var_2 = select(vec3<u32>(~(~(~4294967295u)), 0u, var_0.d.b.c), ~abs(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, var_0.d.a.c, 18797u) ^ vec3<u32>(u_input.b, u_input.b, 0u), vec3<u32>(1u, arg_1.c, 5599u) | vec3<u32>(u_input.b, 1u, 9927u))), vec3<bool>(false, true, ((var_0.c.x == var_0.c.x) | false) & true));
    return vec3<f32>(-1694f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(417f)))), _wgslsmith_f_op_f32(global1.x - -306f));
}

fn func_2(arg_0: Struct_1) -> vec2<bool> {
    global1 = _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(-global1.x)), Struct_1(arg_0.b.x, arg_0.b, arg_0.c ^ u_input.b, arg_0.d)));
    var var_0 = u_input.b;
    var_0 = 1u;
    var_0 = 4294967295u;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1.x, global1.x, 2889f, -862f))))) - vec4<f32>(716f, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-200f * 1436f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(772f + global1.x) * _wgslsmith_f_op_f32(round(global1.x))), global1.x)));
    return select(vec2<bool>(all(vec2<bool>(true, true)), !(_wgslsmith_f_op_f32(-864f * 525f) > var_1.x)), select(select(vec2<bool>(arg_0.d, u_input.a != arg_0.b.x), select(vec2<bool>(true, true), select(vec2<bool>(arg_0.d, false), vec2<bool>(arg_0.d, arg_0.d), vec2<bool>(false, arg_0.d)), arg_0.d == arg_0.d), !(global1.x >= var_1.x)), !(!(!vec2<bool>(arg_0.d, true))), select(select(select(vec2<bool>(true, arg_0.d), vec2<bool>(arg_0.d, arg_0.d), vec2<bool>(true, arg_0.d)), vec2<bool>(true, arg_0.d), vec2<bool>(false, arg_0.d)), !vec2<bool>(arg_0.d, false), vec2<bool>(any(vec3<bool>(false, true, false)), true))), all(vec2<bool>(arg_0.d, true)));
}

fn func_1(arg_0: bool) -> Struct_5 {
    var var_0 = !select(select(vec2<bool>(any(vec3<bool>(arg_0, arg_0, arg_0)), arg_0), vec2<bool>(!arg_0, arg_0 | true), arg_0), select(select(vec2<bool>(false, arg_0), !vec2<bool>(arg_0, arg_0), vec2<bool>(true, true)), select(!vec2<bool>(arg_0, false), func_2(Struct_1(2147483647i, vec3<i32>(64180i, u_input.a, 1i), u_input.b, arg_0)), arg_0), true), vec2<bool>(true, true));
    var_0 = vec2<bool>(true, !var_0.x);
    let var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-901f, 311f, global1.x)) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1634f), _wgslsmith_f_op_f32(-476f - 851f), global1.x))))));
    let var_2 = vec2<f32>(660f, _wgslsmith_f_op_f32(-574f - 969f));
    let var_3 = u_input.a;
    return Struct_5(vec4<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -716f)), var_1.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_2.x)) + _wgslsmith_f_op_f32(global1.x - -549f)))), 473f));
}

fn func_4(arg_0: i32, arg_1: Struct_5) -> Struct_1 {
    let var_0 = false;
    let var_1 = ((u_input.a > (~35814i << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 41148u, u_input.b), vec3<u32>(4294967295u, u_input.b, 4294967295u)) % 32u))) && true) || ((global2.x != _wgslsmith_dot_vec4_i32(~vec4<i32>(-2147483647i, global2.x, arg_0, arg_0), vec4<i32>(arg_0, -2264i, 2147483647i, u_input.a))) && (797f != arg_1.a.x));
    var var_2 = _wgslsmith_f_op_f32(select(502f, _wgslsmith_f_op_f32(global1.x + arg_1.a.x), !var_0));
    let var_3 = vec2<bool>(!all(select(select(vec4<bool>(true, var_0, true, var_0), vec4<bool>(true, true, true, var_0), vec4<bool>(var_1, false, true, var_1)), select(vec4<bool>(false, true, false, true), vec4<bool>(true, var_0, false, true), vec4<bool>(true, var_0, var_1, var_1)), true)), (true & all(select(vec3<bool>(var_1, false, false), vec3<bool>(var_0, var_1, true), var_1))) != func_2(Struct_1(_wgslsmith_sub_i32(global2.x, arg_0), vec3<i32>(arg_0, arg_0, -33472i), 0u, var_0)).x);
    global1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-600f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.a.x - -1992f), _wgslsmith_f_op_f32(max(global1.x, arg_1.a.x))))), 429f, 1804f);
    return Struct_1(~1i, vec3<i32>(_wgslsmith_dot_vec2_i32(~abs(vec2<i32>(arg_0, -30654i)), countOneBits(vec2<i32>(u_input.a, global2.x) << (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u)))), _wgslsmith_add_i32(-77294i, u_input.a), countOneBits(global2.x)), u_input.b, var_1);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = min(~(-(~vec2<i32>(-1i, 1019i))), _wgslsmith_sub_vec2_i32(abs(vec2<i32>(3516i, global2.x)) ^ vec2<i32>(u_input.a, _wgslsmith_mult_i32(u_input.a, 0i)), abs(select(vec2<i32>(u_input.a, -1i), vec2<i32>(global2.x, 2147483647i), vec2<bool>(true, false))) >> (_wgslsmith_div_vec2_u32(reverseBits(vec2<u32>(12820u, 4294967295u)), abs(vec2<u32>(u_input.b, u_input.b))) % vec2<u32>(32u))));
    var var_0 = func_4(-u_input.a, func_1(select(all(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true))), false, true)));
    var var_1 = Struct_4(Struct_3(Struct_1(-28800i, var_0.b, _wgslsmith_sub_u32(1u, _wgslsmith_div_u32(var_0.c, 20963u)), false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.x)) - _wgslsmith_f_op_f32(global1.x * global1.x)), _wgslsmith_div_vec2_i32(select(select(var_0.b.yy, vec2<i32>(global2.x, 525i), vec2<bool>(false, true)), select(vec2<i32>(u_input.a, var_0.a), vec2<i32>(u_input.a, 14961i), vec2<bool>(true, var_0.d)), !var_0.d), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.a), _wgslsmith_mod_vec2_i32(var_0.b.xy, vec2<i32>(0i, var_0.a)))), Struct_2(func_4(~global2.x, Struct_5(vec4<f32>(global1.x, global1.x, global1.x, global1.x))), Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.b.x, u_input.a, global2.x), vec3<i32>(u_input.a, var_0.a, -1i)), var_0.b, abs(var_0.c), !var_0.d))), Struct_3(Struct_1(2147483647i, var_0.b, _wgslsmith_add_u32(reverseBits(var_0.c), ~var_0.c), var_0.d), func_1(all(select(vec2<bool>(var_0.d, false), vec2<bool>(true, var_0.d), true))).a.x, _wgslsmith_div_vec2_i32(var_0.b.yx, var_0.b.zz), Struct_2(Struct_1(1i, vec3<i32>(global2.x, var_0.a, global2.x), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c, var_0.c), vec2<u32>(0u, var_0.c)), true), func_4(var_0.a, Struct_5(vec4<f32>(global1.x, 2749f, -929f, global1.x))))), _wgslsmith_f_op_f32(-456f * _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(832f, global1.x)))) <= global1.x);
    var_0 = var_1.a.a;
    let var_2 = u_input.b;
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_vec3_f32(func_3(global1.x, var_1.a.a)).x, 180f, _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(-383f - 1337f)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.a.b)))), _wgslsmith_f_op_f32(func_1(true).a.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-2166f)), global1.x)), var_1.a.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-993f)) + _wgslsmith_f_op_f32(global1.x * var_1.b.b)) - 1136f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.b)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(892f - global1.x), _wgslsmith_div_f32(global1.x, global1.x)))), ~vec4<i32>(_wgslsmith_add_i32(countOneBits(2441i), _wgslsmith_dot_vec3_i32(var_1.a.d.a.b, vec3<i32>(var_0.b.x, 2147483647i, -1i))), var_0.a, 4015i, -10389i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.a.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(244f, global1.x, true)), _wgslsmith_f_op_f32(var_1.b.b * global1.x))))));
}

