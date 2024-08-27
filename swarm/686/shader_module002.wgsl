struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<f32>,
    d: vec3<u32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 14>;

var<private> global1: vec2<u32>;

var<private> global2: f32;

var<private> global3: array<vec3<bool>, 27> = array<vec3<bool>, 27>(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true));

var<private> global4: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(-896f, 1666i, vec3<f32>(1493f, 436f, -1796f), vec3<u32>(4294967295u, 4294967295u, 64667u), vec2<bool>(true, true)), Struct_1(-1150f, -1688i, vec3<f32>(-1941f, -145f, -711f), vec3<u32>(80740u, 16497u, 80773u), vec2<bool>(true, true)), Struct_1(1079f, -16875i, vec3<f32>(-698f, 1127f, -1000f), vec3<u32>(11584u, 8426u, 33791u), vec2<bool>(false, false)), Struct_1(-504f, 36238i, vec3<f32>(-1053f, -1514f, 162f), vec3<u32>(1u, 1u, 1u), vec2<bool>(true, false)), Struct_1(682f, -34952i, vec3<f32>(713f, -1287f, -1183f), vec3<u32>(4294967295u, 1u, 40555u), vec2<bool>(true, false)), Struct_1(884f, -35364i, vec3<f32>(727f, 137f, 749f), vec3<u32>(4294967295u, 28013u, 108143u), vec2<bool>(false, true)), Struct_1(-357f, 36605i, vec3<f32>(297f, -343f, 600f), vec3<u32>(16292u, 0u, 0u), vec2<bool>(false, true)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<bool>) -> vec3<f32> {
    var var_0 = Struct_2(!vec4<bool>(select(all(global3[_wgslsmith_index_u32(1u, 27u)]), arg_1.x, false | arg_1.x), !select(arg_1.x, true, false), false, !all(vec2<bool>(arg_1.x, arg_1.x))), 1i, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(2095f, 617f)) * _wgslsmith_f_op_f32(f32(-1f) * -1144f))), ~(-(~29962i)), arg_0.yww, _wgslsmith_div_vec3_u32(select(vec3<u32>(73440u, 4294967295u, global1.x), ~vec3<u32>(21900u, u_input.b.x, 71650u), arg_1.x), min(vec3<u32>(u_input.c.x, 28283u, u_input.b.x), u_input.b ^ vec3<u32>(78336u, 23013u, 1u))), vec2<bool>(true, all(!arg_1))));
    var var_1 = true;
    let var_2 = vec2<f32>(var_0.c.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.c.c.x + -720f))) + _wgslsmith_f_op_f32(sign(arg_0.x)))));
    global1 = u_input.b.xz;
    let var_3 = 1114f;
    return arg_0.wzw;
}

fn func_3(arg_0: vec3<f32>) -> u32 {
    let var_0 = Struct_2(select(vec4<bool>(!any(vec2<bool>(false, false)), true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true)), !select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), false)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, arg_0.x <= arg_0.x, true, false), false)), ~(-1i), Struct_1(-1718f, _wgslsmith_add_i32(_wgslsmith_sub_i32(0i, abs(21136i)), -countOneBits(2147483647i)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0 + vec3<f32>(258f, arg_0.x, 1273f)), arg_0), _wgslsmith_div_vec3_f32(arg_0, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, 527f))), all(vec4<bool>(true, true, true, true)))), min(vec3<u32>(global1.x, countOneBits(global1.x), _wgslsmith_mult_u32(global1.x, u_input.c.x)), _wgslsmith_clamp_vec3_u32(max(vec3<u32>(58866u, global1.x, u_input.c.x), vec3<u32>(global1.x, 29360u, global1.x)), vec3<u32>(global1.x, 4294967295u, 1u) << (vec3<u32>(global1.x, 1u, 14202u) % vec3<u32>(32u)), abs(vec3<u32>(60854u, global1.x, 9945u)))), vec2<bool>(true | (1u >= u_input.a), !select(false, true, false))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(1487f)), _wgslsmith_f_op_f32(select(arg_0.x, _wgslsmith_f_op_f32(-1171f - var_0.c.c.x), any(vec2<bool>(var_0.c.e.x, var_0.c.e.x)))), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(681f)) - -539f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1939f, var_0.c.a, -989f, arg_0.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-188f, arg_0.x, var_0.c.c.x, arg_0.x) + vec4<f32>(var_0.c.a, arg_0.x, var_0.c.c.x, -1149f)), select(vec4<bool>(var_0.c.e.x, false, var_0.a.x, false), vec4<bool>(var_0.c.e.x, true, false, var_0.c.e.x), var_0.a))))));
    var var_2 = var_0.b ^ ((i32(-1i) * -var_0.c.b) & reverseBits(~_wgslsmith_mod_i32(14001i, -2147483647i)));
    return 147967u;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: bool) -> Struct_2 {
    var var_0 = !global3[_wgslsmith_index_u32(func_3(_wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.c.a, arg_2.c.a, 1167f, arg_2.c.c.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -700f, -1642f, arg_2.c.a))), vec2<bool>(true, true)))), 27u)];
    global1 = max(arg_2.c.d.yy, u_input.b.zz << (_wgslsmith_sub_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b.x, 2538u), vec2<u32>(0u, 17969u)), firstLeadingBit(u_input.c.zx)) % vec2<u32>(32u)));
    global0 = array<vec2<u32>, 14>();
    var_0 = select(select(select(arg_2.a.xzz, vec3<bool>(true, true, !arg_3), select(!arg_2.a.wzy, vec3<bool>(true, arg_1.x, false), var_0.x)), vec3<bool>(true, true, ~arg_2.b <= arg_0.x), false), vec3<bool>(all(global3[_wgslsmith_index_u32(~1u, 27u)]), arg_3, _wgslsmith_f_op_f32(arg_2.c.a - _wgslsmith_div_f32(arg_2.c.c.x, arg_2.c.c.x)) < arg_2.c.a), select(select(arg_2.a.yzz, vec3<bool>(true, true, true), vec3<bool>(true, true, select(arg_1.x, arg_3, arg_1.x))), vec3<bool>(_wgslsmith_clamp_u32(0u, 1u, 42229u) == ~13634u, var_0.x, true), all(select(vec3<bool>(false, true, arg_3), global3[_wgslsmith_index_u32(1u, 27u)], vec3<bool>(arg_2.c.e.x, arg_1.x, false))) | (arg_2.c.a >= -749f)));
    var var_1 = Struct_2(select(vec4<bool>(var_0.x, true, false, arg_1.x), select(select(select(arg_2.a, arg_2.a, vec4<bool>(false, true, arg_1.x, true)), select(vec4<bool>(arg_1.x, false, true, arg_1.x), vec4<bool>(arg_2.a.x, false, arg_2.c.e.x, arg_1.x), vec4<bool>(false, arg_3, true, false)), false), arg_2.a, select(select(vec4<bool>(arg_2.c.e.x, arg_3, arg_2.c.e.x, false), arg_2.a, vec4<bool>(true, var_0.x, true, false)), arg_2.a, vec4<bool>(arg_1.x, arg_1.x, var_0.x, true))), !vec4<bool>(true, false, !arg_2.a.x, true)), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(i32(-1i) * -2147483647i, 1i | arg_0.x, 1i), ~(vec3<i32>(2147483647i, arg_0.x, -49146i) | vec3<i32>(-5901i, arg_0.x, arg_2.b))), vec3<i32>(arg_0.x, i32(-1i) * -1i, ~arg_0.x)), arg_2.c);
    return arg_2;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2) -> u32 {
    global3 = array<vec3<bool>, 27>();
    global4 = array<Struct_1, 7>();
    let var_0 = -1956f;
    var var_1 = func_1(vec2<i32>(arg_1.c.b, -countOneBits(arg_1.c.b) ^ (-59940i >> (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, global1.x), arg_1.c.d.xz) % 32u))), arg_1.c.e, arg_1, 2147483647i <= _wgslsmith_dot_vec3_i32(abs(vec3<i32>(arg_1.c.b, arg_1.b, arg_1.c.b) ^ vec3<i32>(0i, arg_1.c.b, arg_1.b)), -firstLeadingBit(vec3<i32>(arg_1.c.b, arg_1.c.b, arg_1.b))));
    global2 = arg_0.x;
    return ~_wgslsmith_dot_vec4_u32(~(~select(vec4<u32>(0u, u_input.a, 4294967295u, arg_1.c.d.x), vec4<u32>(u_input.c.x, global1.x, global1.x, 59122u), vec4<bool>(arg_1.a.x, arg_1.a.x, false, arg_1.a.x))), vec4<u32>(var_1.c.d.x, ~var_1.c.d.x << (11152u % 32u), u_input.c.x, 1u));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<bool>, 27>();
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1289f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1825f, 2453f)))), true)));
    global2 = -274f;
    global4 = array<Struct_1, 7>();
    var var_0 = _wgslsmith_mod_u32(func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-762f, -655f, -1000f, -1355f) - vec4<f32>(647f, 127f, -646f, -939f))), func_1(-vec2<i32>(1i, 1i), vec2<bool>(true, false), Struct_2(vec4<bool>(true, true, false, false), -7386i, Struct_1(1178f, 0i, vec3<f32>(215f, 246f, 1091f), u_input.b, vec2<bool>(true, true))), true)) | _wgslsmith_mod_u32(select(8603u, 4294967295u, false) << (~global1.x % 32u), ~(u_input.c.x & u_input.b.x)), global1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(i32(-1i) * -10138i, -46593i) >> (u_input.b.x % 32u), _wgslsmith_f_op_f32(-540f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-369f + 2174f))))), ~1u, _wgslsmith_add_u32(global1.x, abs(~global1.x)) & ~func_4(vec4<f32>(-502f, -550f, 443f, 2380f), func_1(vec2<i32>(19095i, -1i), vec2<bool>(true, false), Struct_2(vec4<bool>(true, false, true, false), -47540i, global4[_wgslsmith_index_u32(u_input.b.x, 7u)]), false)));
}

