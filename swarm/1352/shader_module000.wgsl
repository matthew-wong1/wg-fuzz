struct Struct_1 {
    a: vec3<i32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: u32,
    c: f32,
    d: vec2<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_3,
    d: f32,
    e: i32,
}

struct Struct_5 {
    a: f32,
    b: vec3<bool>,
    c: Struct_2,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 21>;

var<private> global1: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(Struct_1(vec3<i32>(8415i, 1i, 2147483647i), true), 0u, vec3<u32>(8006u, 9967u, 4294967295u)), Struct_2(Struct_1(vec3<i32>(58298i, -930i, 2147483647i), false), 42013u, vec3<u32>(0u, 4294967295u, 0u)), Struct_2(Struct_1(vec3<i32>(2147483647i, 0i, -44493i), true), 4294967295u, vec3<u32>(78760u, 36908u, 79042u)), Struct_2(Struct_1(vec3<i32>(1i, 4865i, i32(-2147483648)), false), 42753u, vec3<u32>(82318u, 12439u, 4674u)), Struct_2(Struct_1(vec3<i32>(-23026i, i32(-2147483648), i32(-2147483648)), false), 1u, vec3<u32>(4294967295u, 34261u, 4294967295u)), Struct_2(Struct_1(vec3<i32>(16634i, -1i, -1i), false), 0u, vec3<u32>(14210u, 4294967295u, 0u)), Struct_2(Struct_1(vec3<i32>(-24641i, -1i, -39178i), true), 3623u, vec3<u32>(18784u, 1u, 28310u)), Struct_2(Struct_1(vec3<i32>(19139i, -1787i, 28708i), true), 4294967295u, vec3<u32>(0u, 103843u, 49392u)), Struct_2(Struct_1(vec3<i32>(-876i, 1i, -1i), true), 56106u, vec3<u32>(1u, 1u, 0u)), Struct_2(Struct_1(vec3<i32>(-6306i, 1i, -13764i), true), 0u, vec3<u32>(10305u, 3395u, 5263u)), Struct_2(Struct_1(vec3<i32>(i32(-2147483648), -1i, -22516i), true), 4294967295u, vec3<u32>(0u, 1u, 85079u)), Struct_2(Struct_1(vec3<i32>(2147483647i, 29530i, -19142i), false), 4294967295u, vec3<u32>(1u, 4294967295u, 1u)), Struct_2(Struct_1(vec3<i32>(-40844i, 1i, 1i), false), 4294967295u, vec3<u32>(1u, 96133u, 15779u)), Struct_2(Struct_1(vec3<i32>(74163i, 1i, 37391i), false), 36864u, vec3<u32>(22485u, 1u, 1u)), Struct_2(Struct_1(vec3<i32>(i32(-2147483648), 58640i, i32(-2147483648)), false), 4294967295u, vec3<u32>(0u, 1u, 4294967295u)), Struct_2(Struct_1(vec3<i32>(-1i, 2147483647i, 1i), true), 27843u, vec3<u32>(11873u, 0u, 82604u)), Struct_2(Struct_1(vec3<i32>(-17879i, 1i, -1i), false), 55883u, vec3<u32>(3218u, 47316u, 4294967295u)), Struct_2(Struct_1(vec3<i32>(i32(-2147483648), 1i, 44952i), false), 62928u, vec3<u32>(1226u, 1u, 4294967295u)), Struct_2(Struct_1(vec3<i32>(-18630i, 1i, 0i), true), 32364u, vec3<u32>(0u, 0u, 10010u)), Struct_2(Struct_1(vec3<i32>(2147483647i, 0i, 61512i), false), 75030u, vec3<u32>(73422u, 34444u, 0u)), Struct_2(Struct_1(vec3<i32>(-1i, 9000i, i32(-2147483648)), true), 0u, vec3<u32>(27957u, 1u, 115288u)), Struct_2(Struct_1(vec3<i32>(-12797i, 33437i, 0i), false), 1u, vec3<u32>(31955u, 0u, 4294967295u)), Struct_2(Struct_1(vec3<i32>(0i, i32(-2147483648), i32(-2147483648)), false), 22943u, vec3<u32>(9503u, 1u, 4294967295u)));

var<private> global2: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(Struct_1(vec3<i32>(-12968i, 0i, 2147483647i), false), 4811u, vec3<u32>(35991u, 0u, 4294967295u)), Struct_2(Struct_1(vec3<i32>(1i, -12651i, 2147483647i), true), 116333u, vec3<u32>(56347u, 1u, 4294967295u)), Struct_2(Struct_1(vec3<i32>(0i, 1i, 1i), false), 4294967295u, vec3<u32>(1u, 0u, 1u)));

var<private> global3: Struct_1;

var<private> global4: Struct_3;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: i32) -> vec3<bool> {
    var var_0 = 4294967295u;
    let var_1 = select(global3.b, arg_0.b, any(vec3<bool>(false, true, true)));
    global3 = arg_0;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-318f * global4.c), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global4.c, -1446f))))));
    global4 = Struct_3(~vec4<u32>(22030u, u_input.a, u_input.a, ~4294967295u), ~_wgslsmith_dot_vec2_u32(~countOneBits(vec2<u32>(41520u, 27164u)), ~(~vec2<u32>(4294967295u, global4.a.x))), 890f, vec2<u32>(global4.a.x, arg_1.x));
    return !vec3<bool>(var_1, true, true);
}

fn func_2(arg_0: vec3<f32>) -> u32 {
    global0 = array<vec4<f32>, 21>();
    var var_0 = Struct_5(global4.c, select(func_3(Struct_1(global3.a << (global4.a.xxz % vec3<u32>(32u)), global3.b), vec4<u32>(27419u, ~global4.d.x, max(u_input.a, 13204u), u_input.a), select(select(2147483647i, 9536i, global3.b), -36287i, global3.b)), select(!(!vec3<bool>(global3.b, global3.b, global3.b)), func_3(Struct_1(global3.a, global3.b), firstTrailingBit(global4.a), _wgslsmith_sub_i32(global3.a.x, global3.a.x)), func_3(Struct_1(global3.a, global3.b), ~global4.a, 1i)), abs(u_input.a) != min(u_input.a | global4.a.x, 4294967295u)), Struct_2(Struct_1(countOneBits(global3.a) | select(global3.a, vec3<i32>(global3.a.x, global3.a.x, 48142i), vec3<bool>(true, false, true)), all(select(vec4<bool>(global3.b, global3.b, global3.b, true), vec4<bool>(false, true, false, true), global3.b))), ~13058u, global4.a.wxy), !select(!(!vec3<bool>(global3.b, global3.b, global3.b)), vec3<bool>(all(vec4<bool>(global3.b, false, global3.b, global3.b)), all(vec4<bool>(true, true, true, true)), false), vec3<bool>(global3.b, all(vec3<bool>(true, true, true)), true)));
    global1 = array<Struct_2, 23>();
    let var_1 = vec2<u32>(52684u, 4294967295u ^ select(global4.d.x, ~firstTrailingBit(var_0.c.c.x), false));
    global4 = Struct_3(global4.a, u_input.a | global4.d.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global4.c + _wgslsmith_f_op_f32(var_0.a + -1220f)), 933f)), select(vec2<u32>(var_1.x, ~1u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, var_1.x, var_0.c.b, 4294967295u), global4.a)), countOneBits(~vec2<u32>(32924u, 70794u)), false));
    return ~(~firstTrailingBit(~(var_1.x & var_1.x)));
}

fn func_1(arg_0: f32, arg_1: Struct_3, arg_2: Struct_3) -> u32 {
    var var_0 = false;
    let var_1 = Struct_1(countOneBits(global3.a), true);
    global4 = arg_1;
    let var_2 = _wgslsmith_f_op_f32(max(global4.c, 1823f));
    global0 = array<vec4<f32>, 21>();
    return func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(631f, _wgslsmith_f_op_f32(step(649f, arg_1.c))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_2.c + arg_2.c))), -1000f) * vec3<f32>(_wgslsmith_f_op_f32(sign(arg_2.c)), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-464f)) * _wgslsmith_f_op_f32(-arg_1.c)))));
}

fn func_4(arg_0: Struct_4, arg_1: bool) -> Struct_3 {
    let var_0 = arg_0.b;
    let var_1 = !(!select(!(!vec3<bool>(var_0.b, var_0.b, global3.b)), vec3<bool>(true, true, true), false));
    let var_2 = -314f;
    global3 = var_0;
    let var_3 = var_1.zx;
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = Struct_3(global4.a, _wgslsmith_add_u32(firstTrailingBit(33879u), 4294967295u), global4.c, global4.d);
    global4 = func_4(Struct_4(Struct_3(global4.a, ~func_1(-1025f, Struct_3(global4.a, 0u, global4.c, vec2<u32>(global4.d.x, u_input.a)), Struct_3(global4.a, 54735u, global4.c, global4.d)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global4.c))), firstTrailingBit(vec2<u32>(1u, u_input.a))), Struct_1(global3.a, global3.b), Struct_3(vec4<u32>(11991u, 0u, global4.b, u_input.a) >> ((vec4<u32>(global4.a.x, 25873u, global4.a.x, u_input.a) & vec4<u32>(global4.b, 4294967295u, u_input.a, u_input.a)) % vec4<u32>(32u)), global4.a.x, _wgslsmith_f_op_f32(exp2(global4.c)), global4.a.zx), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global4.c - global4.c), 448f) - -811f), _wgslsmith_mod_i32(select(-39187i, min(76399i, 0i), all(vec3<bool>(global3.b, global3.b, true))), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(global3.a, vec3<i32>(global3.a.x, 2147483647i, global3.a.x)), firstLeadingBit(global3.a.x)))), !select(_wgslsmith_dot_vec4_i32(vec4<i32>(global3.a.x, 2147483647i, global3.a.x, 0i), vec4<i32>(-15759i, 51148i, global3.a.x, 23209i)) <= abs(global3.a.x), true, false));
    global4 = func_4(Struct_4(func_4(Struct_4(func_4(Struct_4(Struct_3(vec4<u32>(global4.a.x, 33151u, 12964u, global4.a.x), global4.a.x, 1710f, global4.a.xy), Struct_1(global3.a, global3.b), Struct_3(global4.a, global4.b, global4.c, global4.d), -418f, global3.a.x), false), Struct_1(global3.a, global3.b), func_4(Struct_4(Struct_3(vec4<u32>(u_input.a, 1u, 59893u, 0u), global4.d.x, -1719f, global4.a.zw), Struct_1(vec3<i32>(global3.a.x, global3.a.x, global3.a.x), false), Struct_3(global4.a, u_input.a, global4.c, vec2<u32>(u_input.a, global4.a.x)), -1000f, global3.a.x), global3.b), _wgslsmith_f_op_f32(max(global4.c, global4.c)), i32(-1i) * -2147483647i), !(u_input.a <= 4294967295u)), Struct_1(vec3<i32>(global3.a.x, ~global3.a.x, global3.a.x << (1u % 32u)), !global3.b), Struct_3(vec4<u32>(_wgslsmith_mod_u32(40409u, 4294967295u), 1u, func_4(Struct_4(Struct_3(vec4<u32>(u_input.a, 22210u, u_input.a, u_input.a), 1u, 1312f, global4.a.yy), Struct_1(global3.a, false), Struct_3(vec4<u32>(9414u, u_input.a, 17276u, 0u), global4.b, global4.c, vec2<u32>(1u, 0u)), global4.c, global3.a.x), false).d.x, ~global4.b), select(global4.d.x, 41647u, global3.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.c - global4.c)), ~(~vec2<u32>(u_input.a, u_input.a))), _wgslsmith_f_op_f32(trunc(1321f)), _wgslsmith_sub_i32(select(~global3.a.x, countOneBits(global3.a.x), false), max(-global3.a.x, global3.a.x ^ global3.a.x))), global3.b);
    global3 = Struct_1(_wgslsmith_sub_vec3_i32(~select(vec3<i32>(global3.a.x, 2147483647i, 17719i) | vec3<i32>(global3.a.x, 1i, -2147483647i), ~global3.a, select(vec3<bool>(false, global3.b, false), vec3<bool>(true, global3.b, false), false)), global3.a), global3.b);
    global1 = array<Struct_2, 23>();
    global3 = Struct_1(-_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i >> (0u % 32u), ~global3.a.x, global3.a.x << (8207u % 32u)), global3.a), true);
    var var_0 = Struct_3(~_wgslsmith_mod_vec4_u32(vec4<u32>(102350u, u_input.a | global4.d.x, global4.b, _wgslsmith_sub_u32(global4.d.x, 0u)), reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(43764u, global4.b, global4.b, 4294967295u), vec4<u32>(0u, 34688u, global4.b, global4.a.x)))), u_input.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(345f)))), 914f)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, global4.a.x) & abs(global4.d), ~vec2<u32>(67442u, 1u)));
    let x = u_input.a;
    s_output = StorageBuffer(~select(var_0.b, min(4294967295u, ~u_input.a), global3.b), var_0.a.yx);
}

