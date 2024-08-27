struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<f32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> vec2<i32> {
    var var_0 = -global0.c;
    var var_1 = global0.d;
    return vec2<i32>(9113i, ~18733i);
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(780f, 1075f, global0.a.a.x, global0.a.a.x), vec4<f32>(global0.a.a.x, arg_0.a.x, -162f, arg_0.a.x))) - vec4<f32>(-2559f, -360f, _wgslsmith_f_op_f32(max(327f, 517f)), global0.a.a.x))));
    let var_1 = global0.a;
    let var_2 = -select(_wgslsmith_sub_vec2_i32(global0.b, vec2<i32>(global0.c.x, u_input.a.x)) | vec2<i32>(u_input.e, -9910i), _wgslsmith_clamp_vec2_i32(func_3(), _wgslsmith_mod_vec2_i32(global0.c.zw, u_input.d.xx), countOneBits(global0.b)), true) & (firstLeadingBit(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, u_input.b, global0.c.x), u_input.a), _wgslsmith_add_i32(3596i, -1i))) >> (_wgslsmith_clamp_vec2_u32(arg_0.c, var_1.c, countOneBits(vec2<u32>(u_input.c, arg_0.c.x) << (global0.a.c % vec2<u32>(32u)))) % vec2<u32>(32u)));
    let var_3 = _wgslsmith_f_op_vec3_f32(var_0.zxz + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.a.x, -403f, -614f), var_0.wyw)))))));
    global0 = Struct_2(arg_0, abs(-var_2), global0.c, ~arg_0.c);
    return Struct_3(Struct_2(global0.a, vec2<i32>(min(global0.c.x & global0.c.x, _wgslsmith_sub_i32(global0.b.x, -2147483647i)), _wgslsmith_add_i32(-2147483647i, var_2.x)), firstLeadingBit(max(vec4<i32>(2147483647i, -1i, u_input.d.x, u_input.b), global0.c) >> (abs(vec4<u32>(1u, 2506u, arg_0.c.x, 24888u)) % vec4<u32>(32u))), global0.d), !(!(!select(vec3<bool>(arg_0.b.x, var_1.b.x, arg_1), vec3<bool>(false, global0.a.b.x, false), false))), arg_0, 0i, arg_0);
}

fn func_1(arg_0: bool, arg_1: Struct_3) -> Struct_2 {
    global0 = arg_1.a;
    var var_0 = func_2(Struct_1(vec2<f32>(1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(488f + arg_1.c.a.x), global0.a.a.x))), select(!select(vec3<bool>(global0.a.b.x, arg_1.e.b.x, global0.a.b.x), vec3<bool>(global0.a.b.x, arg_0, false), global0.a.b.x), global0.a.b, vec3<bool>(global0.a.b.x, true, true)), ~(~arg_1.e.c | vec2<u32>(4294967295u, 11362u))), true);
    var var_1 = _wgslsmith_mult_u32(arg_1.c.c.x, select(1u, global0.a.c.x, true));
    let var_2 = vec2<bool>(arg_1.b.x, 1f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.e.a.x - 1302f)));
    var var_3 = ~(~_wgslsmith_mult_vec2_u32(global0.d, arg_1.c.c));
    return arg_1.a;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2) -> vec3<f32> {
    var var_0 = global0.a.b;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(select(true, arg_1.a.b.x, true), func_2(arg_1.a, global0.a.b.x)).a.a + vec2<f32>(_wgslsmith_f_op_f32(arg_1.a.a.x + 919f), -537f))));
    var_0 = vec3<bool>(!var_0.x, !any(vec3<bool>(arg_1.a.b.x, global0.a.b.x, false)) != arg_1.a.b.x, !all(arg_1.a.b));
    var var_2 = select(select(select(select(vec4<bool>(true, var_0.x, true, var_0.x), vec4<bool>(global0.a.b.x, false, true, false), vec4<bool>(true, global0.a.b.x, arg_1.a.b.x, arg_1.a.b.x)), !(!vec4<bool>(true, var_0.x, true, var_0.x)), !vec4<bool>(false, global0.a.b.x, true, false)), vec4<bool>(true, var_0.x, !(!var_0.x), true && arg_1.a.b.x), any(vec2<bool>(u_input.c >= global0.d.x, var_0.x))), !(!vec4<bool>(true, arg_1.a.b.x, true | global0.a.b.x, true)), any(func_1(all(vec2<bool>(true, global0.a.b.x)), func_2(Struct_1(global0.a.a, vec3<bool>(false, var_0.x, true), global0.d), true)).a.b));
    var_2 = select(select(vec4<bool>(false, var_0.x, all(vec4<bool>(global0.a.b.x, true, true, var_2.x)), global0.a.b.x || select(false, false, arg_1.a.b.x)), select(select(vec4<bool>(true, false, false, true), !vec4<bool>(false, false, false, var_2.x), 1u < u_input.c), !select(vec4<bool>(false, arg_1.a.b.x, true, true), vec4<bool>(global0.a.b.x, var_0.x, true, var_0.x), vec4<bool>(true, true, global0.a.b.x, arg_1.a.b.x)), 0u != arg_1.a.c.x), select(select(vec4<bool>(false, global0.a.b.x, true, false), select(vec4<bool>(var_2.x, true, arg_1.a.b.x, false), vec4<bool>(var_0.x, var_2.x, var_2.x, global0.a.b.x), true), vec4<bool>(false, var_0.x, true, var_0.x)), vec4<bool>(func_1(arg_1.a.b.x, Struct_3(arg_1, arg_1.a.b, Struct_1(vec2<f32>(891f, -195f), global0.a.b, vec2<u32>(1u, u_input.c)), -2147483647i, Struct_1(vec2<f32>(-417f, 700f), vec3<bool>(global0.a.b.x, var_2.x, false), global0.a.c))).a.b.x, !var_0.x, true, all(vec4<bool>(global0.a.b.x, true, var_2.x, false))), !(!vec4<bool>(var_0.x, arg_1.a.b.x, false, global0.a.b.x)))), select(vec4<bool>(false | !var_2.x, var_2.x, true, u_input.b < _wgslsmith_dot_vec4_i32(vec4<i32>(global0.b.x, arg_1.b.x, global0.b.x, 1i), global0.c)), select(select(!vec4<bool>(var_2.x, global0.a.b.x, true, var_2.x), select(vec4<bool>(var_0.x, false, true, var_2.x), vec4<bool>(true, arg_1.a.b.x, false, var_2.x), vec4<bool>(arg_1.a.b.x, false, false, false)), func_2(arg_1.a, var_2.x).a.a.b.x), !vec4<bool>(var_0.x, false, true, global0.a.b.x), select(vec4<bool>(arg_1.a.b.x, false, arg_1.a.b.x, false), select(vec4<bool>(var_0.x, var_0.x, global0.a.b.x, var_0.x), vec4<bool>(var_2.x, true, var_2.x, global0.a.b.x), var_0.x), select(vec4<bool>(var_2.x, arg_1.a.b.x, var_0.x, true), vec4<bool>(global0.a.b.x, true, global0.a.b.x, global0.a.b.x), false))), false), arg_1.a.b.x);
    return arg_0.xyx;
}

fn func_5(arg_0: vec3<f32>, arg_1: vec3<bool>, arg_2: u32) -> i32 {
    let var_0 = ~1u;
    global0 = func_1(global0.a.b.x, Struct_3(Struct_2(func_2(global0.a, all(vec4<bool>(false, true, true, false))).c, -firstLeadingBit(vec2<i32>(-2147483647i, 2147483647i)), -vec4<i32>(-1i, u_input.d.x, -2147483647i, u_input.a.x), vec2<u32>(_wgslsmith_div_u32(global0.d.x, u_input.c), _wgslsmith_mult_u32(var_0, var_0))), func_2(Struct_1(arg_0.xz, vec3<bool>(true, false, global0.a.b.x), vec2<u32>(arg_2, global0.d.x)), true).c.b, Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.a.x, -143f)))), func_2(global0.a, any(global0.a.b)).b, _wgslsmith_add_vec2_u32(select(global0.d, global0.d, global0.a.b.x), func_1(true, Struct_3(Struct_2(Struct_1(global0.a.a, vec3<bool>(arg_1.x, arg_1.x, arg_1.x), vec2<u32>(u_input.c, 1u)), global0.c.zz, vec4<i32>(global0.c.x, 22624i, global0.b.x, 1i), global0.a.c), arg_1, Struct_1(global0.a.a, global0.a.b, vec2<u32>(u_input.c, 4294967295u)), global0.c.x, Struct_1(global0.a.a, arg_1, vec2<u32>(arg_2, arg_2)))).d)), _wgslsmith_dot_vec3_i32(vec3<i32>(~global0.b.x, ~u_input.a.x, u_input.d.x), ~u_input.d << (_wgslsmith_add_vec3_u32(vec3<u32>(119860u, u_input.c, arg_2), vec3<u32>(28569u, global0.d.x, 35549u)) % vec3<u32>(32u))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(exp2(global0.a.a.x)), _wgslsmith_f_op_f32(-325f - arg_0.x)), select(func_2(Struct_1(arg_0.yy, vec3<bool>(true, arg_1.x, false), global0.d), arg_1.x).c.b, vec3<bool>(false, global0.a.b.x, false), arg_1.x != global0.a.b.x), ~select(vec2<u32>(var_0, u_input.c), vec2<u32>(var_0, 0u), global0.a.b.x))));
    global0 = Struct_2(Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -108f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1000f, global0.a.a.x)))), arg_1, global0.d), -vec2<i32>(func_1(global0.a.b.x, Struct_3(Struct_2(global0.a, u_input.d.yx, vec4<i32>(40450i, 2147483647i, global0.c.x, u_input.d.x), vec2<u32>(1u, 4294967295u)), vec3<bool>(false, false, arg_1.x), Struct_1(arg_0.xx, vec3<bool>(global0.a.b.x, arg_1.x, global0.a.b.x), vec2<u32>(0u, 7868u)), 0i, Struct_1(global0.a.a, vec3<bool>(false, arg_1.x, false), global0.a.c))).c.x, -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, global0.c.x, 2147483647i), global0.c)), -_wgslsmith_mult_vec4_i32((vec4<i32>(53979i, 1i, -1i, 19478i) & global0.c) | vec4<i32>(37226i, 448i, global0.b.x, 1i), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, -7901i, 1i, global0.c.x), global0.c) ^ _wgslsmith_clamp_vec4_i32(vec4<i32>(4023i, global0.b.x, u_input.e, u_input.a.x), vec4<i32>(u_input.b, 80190i, u_input.d.x, 19162i), global0.c)), _wgslsmith_add_vec2_u32(vec2<u32>(select(var_0, var_0, global0.a.a.x == -2673f), _wgslsmith_dot_vec3_u32(~vec3<u32>(2115u, 48805u, 0u), max(vec3<u32>(global0.d.x, global0.a.c.x, 0u), vec3<u32>(var_0, 48382u, global0.a.c.x)))), ~(global0.d << (firstTrailingBit(global0.a.c) % vec2<u32>(32u)))));
    global0 = func_1(any(func_2(func_1(!global0.a.b.x, Struct_3(Struct_2(Struct_1(vec2<f32>(1498f, -2447f), arg_1, global0.a.c), vec2<i32>(-16928i, u_input.d.x), global0.c, global0.a.c), global0.a.b, Struct_1(vec2<f32>(-179f, global0.a.a.x), vec3<bool>(true, global0.a.b.x, arg_1.x), vec2<u32>(0u, 1u)), -15593i, global0.a)).a, func_1(arg_1.x, func_2(Struct_1(arg_0.yz, arg_1, global0.a.c), global0.a.b.x)).a.b.x).a.a.b.xz), Struct_3(func_2(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.a.x, global0.a.a.x)), arg_1, ~vec2<u32>(53360u, 0u)), func_2(global0.a, global0.a.b.x).c.b.x | (global0.a.b.x | false)).a, !global0.a.b, global0.a, -(~1i), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(242f, -700f)) + vec2<f32>(924f, -686f)), global0.a.b, global0.d)));
    var var_1 = func_2(global0.a, global0.a.b.x);
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_i32(-26793i, -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e, 0i, u_input.a.x, 1i), vec4<i32>(global0.c.x, u_input.a.x, u_input.a.x, 69736i)) >> (u_input.c % 32u));
    var_0 = u_input.a.x;
    var_0 = func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.a.x, 2453f, -1020f, 818f) - vec4<f32>(803f, 561f, global0.a.a.x, -157f)), vec4<f32>(global0.a.a.x, global0.a.a.x, global0.a.a.x, -1074f), vec4<bool>(true, true, true, true))), func_1(global0.c.x <= 2147483647i, Struct_3(Struct_2(Struct_1(global0.a.a, vec3<bool>(true, false, false), global0.d), vec2<i32>(global0.b.x, global0.b.x), vec4<i32>(12047i, 0i, u_input.b, u_input.a.x), global0.a.c), global0.a.b, global0.a, 1i, global0.a)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.a.a.x, global0.a.a.x, -1132f)))))), vec3<bool>(!(!global0.a.b.x), !(global0.a.a.x <= global0.a.a.x), false), global0.d.x);
    var var_1 = u_input.c;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.a.x) - _wgslsmith_f_op_f32(-789f - global0.a.a.x)) - -1565f) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-1789f)), global0.a.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-266f)) - _wgslsmith_f_op_f32(global0.a.a.x * -299f))))), _wgslsmith_f_op_f32(exp2(global0.a.a.x)), global0.a.a.x, _wgslsmith_f_op_f32(657f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.a.x)))));
    var var_3 = !func_2(Struct_1(global0.a.a, global0.a.b, vec2<u32>(~global0.a.c.x, ~global0.a.c.x)), any(select(vec4<bool>(true, false, false, global0.a.b.x), select(vec4<bool>(global0.a.b.x, global0.a.b.x, global0.a.b.x, true), vec4<bool>(false, global0.a.b.x, true, true), false), global0.a.b.x))).b.zy;
    let x = u_input.a;
    s_output = StorageBuffer(~select(~vec4<u32>(63718u, 1u, 18055u, global0.d.x), ~vec4<u32>(global0.a.c.x, 1u, 4294967295u, 1u), !vec4<bool>(var_3.x, false, true, false)) & vec4<u32>(countOneBits(~1u), ~global0.d.x, u_input.c, max(global0.a.c.x << (u_input.c % 32u), firstLeadingBit(u_input.c))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-364f, 1110f, -291f, global0.a.a.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1954f, -1814f, var_2.x, global0.a.a.x) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.a.x, 553f, 2105f, -2592f)) + vec4<f32>(-814f, global0.a.a.x, 1284f, 552f)))), _wgslsmith_sub_vec3_u32(vec3<u32>(~func_1(false, Struct_3(Struct_2(Struct_1(global0.a.a, global0.a.b, global0.d), vec2<i32>(2147483647i, u_input.a.x), global0.c, global0.a.c), vec3<bool>(var_3.x, false, var_3.x), Struct_1(var_2.xz, global0.a.b, global0.a.c), -41048i, global0.a)).d.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(27024u, global0.d.x), global0.d), _wgslsmith_sub_u32(_wgslsmith_mult_u32(38889u, u_input.c), 0u)), ~vec3<u32>(_wgslsmith_mult_u32(0u, u_input.c), ~u_input.c, min(4294967295u, 0u))), _wgslsmith_div_vec4_f32(vec4<f32>(global0.a.a.x, _wgslsmith_div_f32(func_2(Struct_1(vec2<f32>(-1000f, var_2.x), global0.a.b, global0.d), var_3.x).e.a.x, global0.a.a.x), _wgslsmith_f_op_f32(f32(-1f) * -827f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -158f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, -823f, global0.a.a.x, -1713f)))));
}

