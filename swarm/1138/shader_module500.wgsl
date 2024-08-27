struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec3<f32>,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_2,
}

struct Struct_5 {
    a: f32,
    b: bool,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(724f, true, Struct_1(vec4<i32>(40790i, 82906i, 2147483647i, 29590i)), true);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2(arg_0: i32, arg_1: vec2<f32>, arg_2: vec4<bool>, arg_3: vec3<i32>) -> f32 {
    var var_0 = ~arg_3.x;
    let var_1 = ~countOneBits(_wgslsmith_dot_vec4_i32(global0.c.a, vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-44098i, arg_3.x), global0.c.a.yw), u_input.b.x, u_input.b.x, 21820i)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a - _wgslsmith_f_op_f32(arg_1.x * arg_1.x)) + arg_1.x));
    var var_3 = ~vec2<u32>(8513u, u_input.a);
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a + 304f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.a)) - -257f), _wgslsmith_f_op_f32(-arg_1.x))));
    return arg_1.x;
}

fn func_3(arg_0: vec4<u32>, arg_1: i32, arg_2: vec2<u32>) -> vec2<f32> {
    global0 = Struct_5(-1700f, global0.b, Struct_1(global0.c.a), _wgslsmith_add_u32(~(~1u), 28950u) > _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(arg_0.zy, vec2<u32>(25922u, arg_0.x)), 1u));
    let var_0 = vec2<u32>(u_input.a, 4294967295u);
    global0 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1285f) + _wgslsmith_f_op_f32(f32(-1f) * -713f)), false, global0.c, true);
    var var_1 = global0.c.a;
    global0 = Struct_5(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.a))), true, global0.c, any(select(!(!vec2<bool>(true, global0.d)), !select(vec2<bool>(global0.b, global0.b), vec2<bool>(true, false), vec2<bool>(false, true)), !global0.d)));
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a, global0.a)) * -209f)) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(473f, global0.a))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0.a, -2164f))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a, -1280f))))));
}

fn func_1(arg_0: u32, arg_1: vec4<u32>, arg_2: u32) -> vec2<f32> {
    let var_0 = _wgslsmith_mult_u32(u_input.a, _wgslsmith_dot_vec4_u32(arg_1, ~arg_1)) == (arg_2 & 19918u);
    var var_1 = abs(arg_1);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(-35762i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(540f, global0.a), vec2<f32>(global0.a, global0.a), var_0)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a, 837f)))), !select(vec4<bool>(global0.d, var_0, global0.b, false), !vec4<bool>(true, var_0, true, true), any(vec4<bool>(false, var_0, false, global0.d))), abs(_wgslsmith_div_vec3_i32(vec3<i32>(2039i, 1i, global0.c.a.x) >> (vec3<u32>(19025u, 27373u, 0u) % vec3<u32>(32u)), min(global0.c.a.xyw, global0.c.a.xwz))))) + -932f);
    var_1 = arg_1;
    let var_3 = select(!(!vec3<bool>(true, -2147483647i <= u_input.b.x, false)), !vec3<bool>(arg_2 >= arg_1.x, false, var_0 == true), vec3<bool>(!(!global0.b), !((i32(-1i) * -1i) < global0.c.a.x), _wgslsmith_f_op_f32(-global0.a) == global0.a));
    return _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_div_vec4_u32(vec4<u32>(1u, _wgslsmith_sub_u32(~1u, arg_1.x), 1u, 0u), _wgslsmith_mult_vec4_u32(~(vec4<u32>(1u, 1u, var_1.x, arg_1.x) << (arg_1 % vec4<u32>(32u))), arg_1)), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.b.yx, u_input.b.xx), vec2<i32>(u_input.b.x, global0.c.a.x) << (arg_1.yz % vec2<u32>(32u))), u_input.b.x) | _wgslsmith_dot_vec3_i32(firstLeadingBit(~global0.c.a.xwz), u_input.b), arg_1.zw));
}

fn func_4(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_5, arg_3: vec3<bool>) -> Struct_5 {
    let var_0 = Struct_4(select(select(select(select(vec3<bool>(global0.b, true, arg_3.x), vec3<bool>(global0.d, arg_2.b, true), vec3<bool>(true, arg_2.b, true)), !vec3<bool>(global0.b, true, global0.d), true), arg_3, true), vec3<bool>(max(4360i, 1i) >= _wgslsmith_mod_i32(global0.c.a.x, arg_2.c.a.x), any(vec2<bool>(global0.b, false)), false), vec3<bool>(arg_2.b, true, all(vec4<bool>(true, false, true, arg_3.x)))), Struct_2(global0.c, max(global0.c.a.xy, vec2<i32>(_wgslsmith_div_i32(arg_0, u_input.b.x), ~2147483647i)), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -308f), -1754f, 793f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, 1413f, global0.a))), ~(u_input.a >> (1u % 32u))));
    global0 = Struct_5(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.a - global0.a))), !global0.b, arg_2.c, any(vec3<bool>(var_0.a.x, all(var_0.a), any(arg_3) || select(global0.d, true, global0.d))));
    var var_1 = true;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(firstTrailingBit(global0.c.a.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.a)))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.a, 1000f), vec2<f32>(233f, 1113f), global0.b)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(u_input.a, vec4<u32>(u_input.a, 0u, 63034u, u_input.a), 4294967295u))), false))), Struct_5(_wgslsmith_f_op_vec2_f32(func_1(u_input.a, vec4<u32>(u_input.a, 12503u, u_input.a, u_input.a) & vec4<u32>(u_input.a, 47991u, 23737u, 0u), _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, u_input.a, u_input.a), vec3<u32>(35658u, u_input.a, 47103u)))).x, global0.d && true, global0.c, !global0.d && (true && (u_input.a != u_input.a))), !select(select(vec3<bool>(global0.d, true, global0.b), !vec3<bool>(true, false, global0.d), vec3<bool>(true, global0.b, true)), !(!vec3<bool>(false, global0.d, global0.b)), select(!vec3<bool>(global0.b, true, global0.b), select(vec3<bool>(true, global0.d, true), vec3<bool>(true, true, global0.b), global0.d), false)));
    global0 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(617f - _wgslsmith_f_op_f32(func_2(u_input.b.x, vec2<f32>(-491f, 1066f), vec4<bool>(false, true, global0.d, global0.d), vec3<i32>(-3890i, global0.c.a.x, global0.c.a.x)))) + _wgslsmith_f_op_f32(min(global0.a, _wgslsmith_div_f32(715f, global0.a))))), !global0.b, Struct_1(-firstLeadingBit(global0.c.a)), !global0.d);
    let var_0 = Struct_3(Struct_2(func_4(_wgslsmith_add_i32(~(-1i), 1i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-756f, 529f)), Struct_5(global0.a, func_4(-3280i, vec2<f32>(global0.a, global0.a), Struct_5(-298f, global0.d, Struct_1(global0.c.a), global0.d), vec3<bool>(global0.d, global0.b, global0.d)).b, func_4(2147483647i, vec2<f32>(global0.a, global0.a), Struct_5(global0.a, global0.d, global0.c, true), vec3<bool>(false, true, global0.b)).c, all(vec2<bool>(true, true))), vec3<bool>(any(vec3<bool>(global0.d, true, true)), false, any(vec2<bool>(false, global0.b)))).c, vec2<i32>(-28129i, 2147483647i), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1050f - -135f), 1000f, _wgslsmith_f_op_f32(trunc(global0.a))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a, global0.a, -1071f) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.a, 300f, global0.a))))), u_input.a), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, ~(~u_input.a), countOneBits(~4294967295u)), vec3<u32>(u_input.a & firstLeadingBit(u_input.a), u_input.a, min(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.a, 4294967295u), vec4<u32>(u_input.a, 8497u, u_input.a, u_input.a)), select(u_input.a, 0u, global0.d))), select(select(vec3<u32>(35247u, 37534u, 0u), vec3<u32>(2255u, u_input.a, u_input.a), vec3<bool>(global0.b, true, global0.b)) & _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 4294967295u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)), vec3<u32>(1u, 1u, 1u) ^ vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<bool>(global0.d && false, true, select(false, true, true)))), global0.c, func_4(i32(-1i) * -global0.c.a.x, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(abs(global0.a))), Struct_5(148f, global0.d, func_4(-2147483647i, vec2<f32>(-1000f, global0.a), Struct_5(2080f, global0.b, Struct_1(vec4<i32>(-24110i, u_input.b.x, u_input.b.x, -9732i)), global0.b), vec3<bool>(false, global0.d, global0.d)).c, global0.b), vec3<bool>(false, global0.d, true)).d || (true || global0.d), Struct_1(select(countOneBits(vec4<i32>(global0.c.a.x, 1i, global0.c.a.x, u_input.b.x) << (vec4<u32>(4294967295u, u_input.a, 1u, 88504u) % vec4<u32>(32u))), ~vec4<i32>(u_input.b.x, 1i, -6815i, -40925i), !global0.b && true)));
    global0 = func_4(2147483647i, var_0.a.c.xx, func_4(~(-2147483647i), _wgslsmith_f_op_vec2_f32(-var_0.a.c.zz), Struct_5(global0.a, (var_0.a.b.x >> (var_0.b.x % 32u)) >= _wgslsmith_mod_i32(-4443i, -2147483647i), global0.c, !global0.b), vec3<bool>(true || global0.b, true, var_0.d || var_0.d)), select(vec3<bool>(true, true, true | (global0.d & false)), !select(select(vec3<bool>(false, global0.d, global0.d), vec3<bool>(var_0.d, global0.d, global0.d), global0.d), vec3<bool>(false, global0.d, var_0.d), any(vec2<bool>(false, var_0.d))), select(select(select(vec3<bool>(global0.d, false, false), vec3<bool>(false, true, var_0.d), false), select(vec3<bool>(true, false, global0.b), vec3<bool>(global0.d, var_0.d, true), vec3<bool>(global0.b, true, true)), false), vec3<bool>(true, var_0.d, true), !(!vec3<bool>(var_0.d, true, global0.d)))));
    global0 = func_4(_wgslsmith_add_i32(-2147483647i, i32(-1i) * -2147483647i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-541f, var_0.a.c.x))) * var_0.a.c.xx), Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-348f + var_0.a.c.x) + -210f) - var_0.a.c.x), var_0.d, var_0.c, -749f == global0.a), vec3<bool>(false, all(select(vec3<bool>(global0.b, var_0.d, global0.d), vec3<bool>(true, true, true), true)), !(~var_0.e.a.x != ~global0.c.a.x)));
    var var_1 = vec4<u32>(_wgslsmith_div_u32(_wgslsmith_sub_u32(10618u, ~var_0.a.d), ~4294967295u), 49689u, _wgslsmith_add_u32(0u, _wgslsmith_clamp_u32(var_0.b.x, 1u, countOneBits(u_input.a))), _wgslsmith_add_u32(51635u, 1u));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(0i, func_4(0i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a, 523f) - var_0.a.c.yz)), func_4(-1i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.c.x, var_0.a.c.x)), func_4(global0.c.a.x, var_0.a.c.zx, Struct_5(-1000f, global0.b, Struct_1(vec4<i32>(-2147483647i, 49284i, -9577i, global0.c.a.x)), true), vec3<bool>(var_0.d, false, true)), select(vec3<bool>(true, var_0.d, true), vec3<bool>(var_0.d, global0.b, true), var_0.d)), select(!vec3<bool>(false, var_0.d, global0.b), !vec3<bool>(var_0.d, true, true), vec3<bool>(var_0.d, false, true))).c.a.x, _wgslsmith_mult_i32(min(u_input.b.x, u_input.b.x), i32(-1i) * -26903i)));
}

