struct Struct_1 {
    a: bool,
    b: u32,
    c: bool,
    d: vec2<bool>,
    e: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<f32>,
    d: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
}

struct Struct_5 {
    a: vec3<u32>,
    b: f32,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec3<f32>,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(0u, 1u, 81323u, 8182u);

var<private> global1: Struct_5 = Struct_5(vec3<u32>(29669u, 0u, 1529u), 406f, 1i, 0i);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> u32 {
    var var_0 = global1.b;
    global0 = vec4<u32>(abs(~(~u_input.c.x)), global1.a.x, global1.a.x, 18441u >> (global0.x % 32u));
    global1 = Struct_5(~global0.yyw, global1.b, u_input.a, _wgslsmith_add_i32(1i, ~(i32(-1i) * -u_input.a)));
    let var_1 = !(global1.c > -28369i);
    var var_2 = reverseBits(vec2<i32>(_wgslsmith_sub_i32(-2147483647i << (~u_input.c.x % 32u), _wgslsmith_add_i32(~645i, u_input.d)), global1.c));
    return firstLeadingBit(1u);
}

fn func_2() -> u32 {
    return ~_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(abs(u_input.c.wy), ~global0.xx), ~(select(3065u, global1.a.x, false) >> (func_3() % 32u)));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<u32>, arg_2: Struct_4) -> vec4<u32> {
    global0 = ~(~abs(~vec4<u32>(global0.x, arg_1.x, 1u, 0u)));
    var var_0 = Struct_1(true, arg_1.x, false, vec2<bool>(all(arg_2.a.b), any(select(vec3<bool>(arg_2.a.b.x, arg_2.a.b.x, arg_2.a.b.x), arg_2.a.b, select(arg_2.a.b, arg_2.a.b, vec3<bool>(arg_2.a.b.x, arg_2.a.b.x, true))))), 0i);
    global0 = abs(vec4<u32>(~func_2(), _wgslsmith_mult_u32(~arg_1.x, 1u), arg_2.b, _wgslsmith_clamp_u32(global0.x, _wgslsmith_div_u32(func_2(), countOneBits(arg_2.b)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b, 30851u), vec2<u32>(u_input.b, 15736u)))));
    var_0 = Struct_1(any(!vec4<bool>(true, !var_0.d.x, arg_2.a.b.x, var_0.c)), _wgslsmith_sub_u32((global1.a.x & 21170u) & _wgslsmith_dot_vec3_u32(vec3<u32>(global1.a.x, 0u, 0u) >> (vec3<u32>(arg_1.x, arg_1.x, 20560u) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.b, 1u), vec3<u32>(0u, u_input.c.x, u_input.b))), _wgslsmith_mult_u32(~(~var_0.b), arg_2.b << (4568u % 32u))), true, select(arg_2.a.a, vec2<bool>(arg_2.a.a.x, (false & var_0.c) == var_0.d.x), arg_2.a.b.yz), _wgslsmith_mult_i32(u_input.d | u_input.a, _wgslsmith_sub_i32(global1.c | _wgslsmith_clamp_i32(global1.d, 31838i, 41270i), u_input.a)));
    var var_1 = _wgslsmith_mod_vec2_u32(arg_1, reverseBits(_wgslsmith_sub_vec2_u32(u_input.c.ww, select(vec2<u32>(35317u, arg_2.b), global0.wx, false && var_0.d.x))));
    return ~_wgslsmith_add_vec4_u32(max(~vec4<u32>(u_input.c.x, 4294967295u, 1u, 1u), firstTrailingBit(vec4<u32>(u_input.b, 18508u, 4294967295u, arg_1.x))), vec4<u32>(countOneBits(4813u), var_0.b, arg_1.x | arg_2.b, ~0u)) ^ min(u_input.c >> (u_input.c % vec4<u32>(32u)), vec4<u32>(60811u, _wgslsmith_mult_u32(1u, 1u), func_3(), 61928u & _wgslsmith_mult_u32(var_1.x, global1.a.x)));
}

fn func_4(arg_0: f32, arg_1: u32) -> f32 {
    var var_0 = Struct_1(true, 0u, _wgslsmith_div_i32(~(~u_input.d), _wgslsmith_add_i32(_wgslsmith_add_i32(global1.c, -2147483647i), u_input.d)) >= u_input.d, select(vec2<bool>(false, true), select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(false, false)), select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), all(vec2<bool>(false, true))), any(vec2<bool>(true, true))), !all(vec2<bool>(false, false))), _wgslsmith_mod_i32(-2147483647i, _wgslsmith_dot_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(79120i, 0i, 2147483647i, global1.d), vec4<i32>(global1.c, u_input.d, -2147483647i, -2147483647i)), min(vec4<i32>(global1.d, global1.c, u_input.d, 2147483647i), vec4<i32>(global1.d, -16366i, u_input.a, 0i)) | -vec4<i32>(global1.d, u_input.d, 15189i, u_input.a))));
    global1 = Struct_5(~(~(~global0.yzw)), global1.b, u_input.a, min(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(global1.d, u_input.d), vec2<i32>(u_input.d, global1.d)), _wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, -9990i), vec2<i32>(0i, global1.d)), _wgslsmith_add_vec2_i32(vec2<i32>(-24887i, var_0.e), vec2<i32>(1i, -2147483647i)), _wgslsmith_add_vec2_i32(vec2<i32>(-18332i, u_input.a), vec2<i32>(u_input.d, global1.d)))), -30157i));
    var var_1 = Struct_3(Struct_2(select(select(select(vec2<bool>(var_0.c, true), vec2<bool>(false, var_0.d.x), false), var_0.d, all(vec3<bool>(var_0.a, var_0.c, var_0.c))), var_0.d, !select(var_0.d, var_0.d, true)), !(!vec3<bool>(var_0.a, var_0.a, var_0.c))), Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(20379i, -11340i, global1.c), abs(vec3<i32>(-24865i, -2147483647i, global1.d))) == -(~(-24307i)), global0.x, !(u_input.c.x < select(1u, u_input.b, var_0.c)), vec2<bool>(all(vec3<bool>(var_0.c, false, var_0.d.x)) || true, !var_0.a), var_0.e), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-524f, _wgslsmith_f_op_f32(arg_0 * -353f), _wgslsmith_f_op_f32(-global1.b)) - vec3<f32>(-647f, -435f, arg_0))), false);
    let var_2 = ~u_input.c;
    let var_3 = var_1.a;
    return 1776f;
}

fn func_5(arg_0: f32, arg_1: vec2<f32>) -> Struct_5 {
    global1 = Struct_5(~countOneBits(~min(u_input.c.xwy, vec3<u32>(global0.x, u_input.b, 1u))), _wgslsmith_f_op_f32(-486f + global1.b), _wgslsmith_dot_vec4_i32(vec4<i32>(reverseBits(abs(global1.d)), 1i, _wgslsmith_mult_i32(45995i, ~global1.d), _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a, -18910i), _wgslsmith_sub_vec2_i32(vec2<i32>(global1.c, global1.c), vec2<i32>(2147483647i, global1.d)))), firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(global1.c, 1i, global1.d, -2147483647i), vec4<i32>(u_input.d, global1.c, 2557i, global1.c))) & _wgslsmith_clamp_vec4_i32(vec4<i32>(-54839i, 53211i, 1i, -1i), vec4<i32>(-1i, u_input.a, u_input.d, global1.d), abs(vec4<i32>(u_input.a, -16945i, 2147483647i, u_input.a)))), ~_wgslsmith_sub_i32(global1.c, global1.d));
    global0 = ~(~u_input.c);
    var var_0 = vec4<bool>(true, select(!(_wgslsmith_add_u32(global0.x, global1.a.x) <= ~global0.x), !(!all(vec2<bool>(true, true))), true), ~57973i == global1.c, arg_1.x >= 387f);
    let var_1 = !any(!var_0.zz);
    global0 = u_input.c;
    return Struct_5(vec3<u32>(_wgslsmith_mod_u32(global0.x, ~u_input.b), global1.a.x, _wgslsmith_add_u32(func_1(vec2<f32>(global1.b, 196f), ~vec2<u32>(u_input.c.x, u_input.c.x), Struct_4(Struct_2(vec2<bool>(var_1, var_1), vec3<bool>(var_0.x, true, true)), global1.a.x)).x, ~_wgslsmith_div_u32(21229u, global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b)), global1.c, _wgslsmith_mod_i32(_wgslsmith_sub_i32(-2147483647i, _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(-26497i, 1i)), -vec2<i32>(u_input.a, -27945i))), 2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_5(global0.wyw, 872f, global1.d, countOneBits(2147483647i));
    let var_0 = Struct_5(u_input.c.wzy, _wgslsmith_div_f32(938f, global1.b), ~global1.c, global1.d);
    let var_1 = ~u_input.c;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(2015f, var_0.b))) + vec2<f32>(_wgslsmith_f_op_f32(step(-1057f, -536f)), _wgslsmith_f_op_f32(f32(-1f) * -1715f))))));
    global1 = func_5(_wgslsmith_f_op_f32(select(var_0.b, _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2.x))), _wgslsmith_dot_vec4_u32(func_1(vec2<f32>(119f, var_0.b), var_0.a.xx, Struct_4(Struct_2(vec2<bool>(false, false), vec3<bool>(true, true, false)), 29431u)), ~vec4<u32>(global0.x, 13971u, var_1.x, 1u)))), !(any(vec3<bool>(false, false, false)) == true))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-801f, var_0.b)));
    let var_3 = -1000f;
    var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-2068f, var_3)))))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-2743f, 494f) - vec2<f32>(767f, var_0.b)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_2.x, -157f), vec2<f32>(881f, var_0.b)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(1i, 15585i, -1i, 0i), vec4<i32>(var_0.c, var_0.c, var_0.c, global1.c)) ^ countOneBits(vec4<i32>(57563i, u_input.d, 2147483647i, var_0.d)), -(vec4<i32>(1i, 49858i, var_0.c, u_input.a) & vec4<i32>(-1i, 50130i, u_input.a, var_0.c)))), var_1.wzw, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, _wgslsmith_f_op_f32(global1.b * _wgslsmith_f_op_f32(round(1026f))), -895f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-449f, var_3) - vec2<f32>(-1000f, global1.b)), vec2<f32>(var_0.b, global1.b)) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(var_3, -183f), vec2<f32>(var_2.x, 996f)))))), _wgslsmith_dot_vec2_u32(~vec2<u32>(~73544u, var_1.x), func_5(953f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3, var_3))).a.yz << (abs(firstTrailingBit(vec2<u32>(global1.a.x, global0.x))) % vec2<u32>(32u))));
}

