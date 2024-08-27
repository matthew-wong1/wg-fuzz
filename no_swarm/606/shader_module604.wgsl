struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: bool,
    c: vec3<f32>,
}

struct Struct_4 {
    a: u32,
    b: vec3<i32>,
    c: vec3<f32>,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 25>;

var<private> global1: array<vec3<bool>, 7>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: bool, arg_2: Struct_5, arg_3: vec4<u32>) -> bool {
    global0 = array<Struct_3, 25>();
    let var_0 = vec2<f32>(arg_2.a.c.x, _wgslsmith_f_op_f32(arg_2.a.c.x + arg_2.a.c.x));
    let var_1 = Struct_4(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.x | 40166u, arg_3.x, arg_2.a.a, _wgslsmith_div_u32(arg_2.a.a, abs(u_input.a))), _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(~arg_3, abs(vec4<u32>(0u, 75672u, 47187u, u_input.b))), vec4<u32>(reverseBits(53684u), 4294967295u, ~arg_2.a.a, u_input.b))), vec3<i32>(-13608i, 1i, _wgslsmith_div_i32(28463i, abs(i32(-1i) * -1i))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-917f, -410f, arg_2.a.c.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1539f, -1252f, 986f)) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(2760f, -1153f, 930f))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-857f)) + _wgslsmith_f_op_f32(-arg_2.a.c.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, 711f) - _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_0.x, 1000f)), _wgslsmith_f_op_f32(min(-1449f, arg_2.a.c.x))))));
    global0 = array<Struct_3, 25>();
    let var_2 = ~(~(~_wgslsmith_mult_u32(~u_input.b, 0u)));
    return arg_1;
}

fn func_2(arg_0: Struct_4) -> Struct_3 {
    var var_0 = Struct_1(select(vec4<bool>(!(-14037i <= u_input.c), true, false, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, func_3(vec2<i32>(2147483647i, 2147483647i), true, Struct_5(arg_0), vec4<u32>(18156u, arg_0.a, 0u, u_input.a)), all(vec4<bool>(true, false, false, true)), false), all(vec2<bool>(true, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)))));
    var var_1 = vec3<bool>(false, var_0.a.x, false);
    var var_2 = func_3(u_input.d.zz, !any(!var_1.zx), Struct_5(arg_0), ~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(14203u, arg_0.a, arg_0.a, 125401u), ~vec4<u32>(1u, 0u, u_input.b, arg_0.a), vec4<u32>(u_input.a, 17134u, u_input.a, 4294967295u))));
    let var_3 = _wgslsmith_mod_u32(2125u, ~arg_0.a >> (41718u % 32u));
    let var_4 = Struct_1(!select(!var_0.a, !var_0.a, vec4<bool>(true, all(vec4<bool>(false, var_0.a.x, false, var_0.a.x)), !var_1.x, any(var_0.a.zx))));
    return Struct_3(vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.c.x, arg_0.c.x)) <= _wgslsmith_f_op_f32(arg_0.c.x + _wgslsmith_f_op_f32(-arg_0.c.x)), !(!var_1.x) || !var_1.x, all(var_0.a), _wgslsmith_mod_u32(1u, arg_0.a) != var_3), func_3(u_input.d.yz, ((1u ^ u_input.a) == 1u) || true, Struct_5(arg_0), (vec4<u32>(arg_0.a, 43731u, var_3, 4294967295u) & _wgslsmith_mult_vec4_u32(vec4<u32>(34826u, arg_0.a, 1u, 1u), vec4<u32>(1u, 0u, 106972u, 61660u))) & (~vec4<u32>(arg_0.a, u_input.b, 1u, arg_0.a) & (vec4<u32>(1u, u_input.a, var_3, arg_0.a) << (vec4<u32>(arg_0.a, 40109u, 0u, arg_0.a) % vec4<u32>(32u))))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(min(arg_0.c.x, _wgslsmith_f_op_f32(524f * 394f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1173f))), arg_0.c.x))));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: Struct_4, arg_3: Struct_2) -> vec3<f32> {
    let var_0 = _wgslsmith_mod_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(_wgslsmith_mod_i32(arg_2.b.x, arg_2.b.x), -10647i), ~vec2<i32>(arg_2.b.x, _wgslsmith_dot_vec3_i32(-vec3<i32>(arg_2.b.x, -1i, arg_2.b.x), arg_2.b)));
    var var_1 = Struct_4(82730u, arg_2.b, _wgslsmith_f_op_vec3_f32(exp2(arg_2.c)));
    let var_2 = !arg_3.b.a.x;
    global0 = array<Struct_3, 25>();
    var var_3 = arg_3;
    return _wgslsmith_div_vec3_f32(arg_3.a, _wgslsmith_f_op_vec3_f32(var_3.a * var_3.a));
}

fn func_1(arg_0: vec2<i32>, arg_1: u32, arg_2: Struct_4) -> i32 {
    global1 = array<vec3<bool>, 7>();
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_2.c * arg_2.c))) * _wgslsmith_f_op_vec3_f32(func_4(vec3<bool>(true, any(vec4<bool>(false, true, false, true)), false), func_2(arg_2), Struct_4(arg_2.a, arg_2.b, _wgslsmith_f_op_vec3_f32(-arg_2.c)), Struct_2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_2.c.x, -291f, 675f))), Struct_1(vec4<bool>(true, false, false, true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.c.x, -1044f, arg_2.c.x, -536f)))))), Struct_1(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_2.c.x, -1521f, -327f, arg_2.c.x))))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -793f, -1317f, arg_2.c.x) + vec4<f32>(arg_2.c.x, arg_2.c.x, -125f, arg_2.c.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.c.x, arg_2.c.x, arg_2.c.x, 133f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(970f, arg_2.c.x, arg_2.c.x, arg_2.c.x))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_2.c.x, arg_2.c.x, -888f, 717f))))))));
    let var_1 = ~vec3<i32>(-_wgslsmith_mod_i32(~(-1i), arg_2.b.x), -_wgslsmith_sub_i32(_wgslsmith_sub_i32(16906i, 2147483647i), 0i), _wgslsmith_mult_i32(u_input.d.x >> (firstLeadingBit(94533u) % 32u), _wgslsmith_mult_i32(0i << (0u % 32u), i32(-1i) * -37180i)));
    var var_2 = arg_2.b;
    var var_3 = var_0.b.a;
    return ~2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec4_i32(select(select(u_input.d, _wgslsmith_mod_vec4_i32(vec4<i32>(1i, 45030i, u_input.d.x, 0i), vec4<i32>(-1i, 53223i, u_input.d.x, u_input.c)), true), vec4<i32>(func_1(vec2<i32>(1i, u_input.c), 1u, Struct_4(u_input.b, u_input.d.wzw, vec3<f32>(-869f, 600f, 1646f))), u_input.c, -u_input.c, 1i), true) << (vec4<u32>(u_input.a, select(_wgslsmith_add_u32(0u, u_input.a), u_input.a | 0u, true), u_input.a, abs(countOneBits(u_input.a))) % vec4<u32>(32u)), -vec4<i32>(2147483647i << (~4294967295u % 32u), -2147483647i, _wgslsmith_clamp_i32(-u_input.d.x, 2147483647i, -1i), min(~u_input.c, 1i)));
    let var_1 = ~abs(min(max(vec4<u32>(u_input.a, u_input.a, 0u, 37772u), vec4<u32>(0u, u_input.b, u_input.b, u_input.a)), vec4<u32>(14314u, 5802u, u_input.b, 4294967295u) | vec4<u32>(1u, u_input.b, 0u, u_input.a)) ^ vec4<u32>(4294967295u, _wgslsmith_clamp_u32(u_input.b, u_input.b, 94082u), ~0u, 21587u));
    global1 = array<vec3<bool>, 7>();
    global0 = array<Struct_3, 25>();
    let var_2 = Struct_4(~((u_input.b & ~u_input.a) ^ u_input.b), vec3<i32>(_wgslsmith_mult_i32(u_input.d.x, firstLeadingBit(u_input.d.x)), 1i, var_0.x), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -424f)), 563f, _wgslsmith_div_f32(_wgslsmith_div_f32(func_2(Struct_4(70909u, var_0.yxw, vec3<f32>(-1610f, 544f, 152f))).c.x, _wgslsmith_f_op_f32(round(1000f))), _wgslsmith_f_op_f32(-1089f + 1f))));
    var var_3 = Struct_5(Struct_4(~var_2.a, ~(~reverseBits(u_input.d.zwz)), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_2.c.x - -951f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-513f - 382f) * var_2.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(348f, 1058f))))));
    let var_4 = ~_wgslsmith_clamp_i32(i32(-1i) * -12667i, _wgslsmith_clamp_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(0i, var_2.b.x, var_3.a.b.x, -44508i), u_input.d), u_input.d.x, -(31723i | u_input.d.x)), -reverseBits(_wgslsmith_dot_vec2_i32(u_input.d.xz, var_0.yw)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(abs(~_wgslsmith_mult_vec3_u32(var_1.xxz, var_1.yzy)), vec3<u32>(~u_input.a, ~_wgslsmith_mod_u32(0u, var_2.a), ~1u)), 1u, -(~(-17839i)), 33666u, 29587u);
}

