struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_3,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<u32>(1u, 1u, 25329u, 1u));

var<private> global1: bool = true;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_3) -> i32 {
    return 1i;
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<f32>, arg_2: Struct_3, arg_3: u32) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1570f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + arg_1.x) + _wgslsmith_f_op_f32(trunc(-1000f))))))));
    var var_1 = arg_2.b;
    var var_2 = 1446f;
    var var_3 = !select(select(select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), select(vec2<bool>(true, false), vec2<bool>(true, true), true), all(vec2<bool>(false, false))), vec2<bool>(true, true), any(vec3<bool>(false, false, true))), !select(vec2<bool>(false, false), vec2<bool>(true, true), arg_0.x <= -166f), !select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, true), vec2<bool>(true, false)));
    return arg_2.c.a;
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2, arg_3: u32) -> Struct_1 {
    var var_0 = Struct_3(Struct_1(vec4<u32>(1u, arg_2.a.a.x, arg_2.a.a.x, ~abs(0u))), Struct_2(arg_2.a, _wgslsmith_sub_vec3_i32(-(~vec3<i32>(u_input.b.x, u_input.a, 33883i)), -(arg_2.b >> (vec3<u32>(arg_3, u_input.c.x, arg_2.a.a.x) % vec3<u32>(32u))))), Struct_1(max(func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(974f, 266f) - vec2<f32>(-1127f, -1489f)), vec3<f32>(-406f, -1000f, -1242f), Struct_3(Struct_1(vec4<u32>(1u, 104463u, 49786u, arg_3)), Struct_2(arg_1, vec3<i32>(arg_2.b.x, -27722i, u_input.b.x)), arg_1), ~1u), arg_2.a.a)));
    global0 = arg_1;
    global0 = Struct_1(vec4<u32>(~(~reverseBits(var_0.c.a.x)), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(64520u, u_input.c.x) & arg_1.a.ww, arg_2.a.a.yx), ~abs(arg_2.a.a.x)), ~(arg_1.a.x << (u_input.c.x % 32u)), ~arg_1.a.x));
    let var_1 = select(!(!vec4<bool>(false, any(vec3<bool>(arg_0, arg_0, arg_0)), all(vec4<bool>(arg_0, arg_0, false, arg_0)), true)), !select(select(!vec4<bool>(true, arg_0, arg_0, arg_0), select(vec4<bool>(arg_0, true, arg_0, false), vec4<bool>(arg_0, arg_0, false, arg_0), vec4<bool>(arg_0, false, false, arg_0)), !vec4<bool>(true, arg_0, arg_0, true)), vec4<bool>(true, false, arg_0, !arg_0), true), vec4<bool>(all(!select(vec4<bool>(true, false, arg_0, true), vec4<bool>(arg_0, false, arg_0, false), vec4<bool>(arg_0, arg_0, false, arg_0))), any(vec2<bool>(all(vec3<bool>(false, true, false)), true)), true, all(vec4<bool>(true, any(vec3<bool>(arg_0, true, arg_0)), true, any(vec3<bool>(arg_0, arg_0, arg_0))))));
    global1 = select(-countOneBits(min(arg_2.b.x, -2147483647i)) < (74655i << (1u % 32u)), ~(~4294967295u) >= func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1127f, 390f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-901f, 1000f) + vec2<f32>(-178f, 121f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-225f, -102f, -1817f)))), Struct_3(var_0.a, arg_2, var_0.c), ~(1u << (1u % 32u))).x, (true || arg_0) && (_wgslsmith_sub_u32(_wgslsmith_mod_u32(1u, arg_2.a.a.x), ~50676u) >= u_input.c.x));
    return arg_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_2(false, Struct_1(vec4<u32>(~89149u & ~u_input.c.x, 71764u, global0.a.x, _wgslsmith_dot_vec4_u32(global0.a, _wgslsmith_add_vec4_u32(vec4<u32>(1752u, u_input.c.x, global0.a.x, 0u), global0.a)))), Struct_2(Struct_1(vec4<u32>(u_input.c.x, global0.a.x, 13410u, 1u)), vec3<i32>(_wgslsmith_clamp_i32(func_1(vec4<f32>(-594f, 480f, 1000f, 815f), Struct_3(Struct_1(global0.a), Struct_2(Struct_1(global0.a), vec3<i32>(-2147483647i, -44844i, u_input.a)), Struct_1(vec4<u32>(0u, global0.a.x, 25924u, 1u)))), _wgslsmith_mult_i32(u_input.b.x, -2147483647i), 1i), u_input.b.x, 2147483647i)), 0u);
    var var_0 = func_2(true, func_2(all(vec3<bool>(true, true, true)) && (min(10308i, u_input.a) >= u_input.b.x), func_2(true, func_2(true, Struct_1(global0.a), Struct_2(Struct_1(vec4<u32>(global0.a.x, u_input.c.x, u_input.c.x, 86453u)), u_input.b.yzz), u_input.c.x), Struct_2(func_2(true, Struct_1(global0.a), Struct_2(Struct_1(vec4<u32>(global0.a.x, 52574u, u_input.c.x, u_input.c.x)), u_input.b.yyy), global0.a.x), u_input.b.yyx), (global0.a.x >> (4400u % 32u)) & func_2(false, Struct_1(vec4<u32>(u_input.c.x, u_input.c.x, 0u, u_input.c.x)), Struct_2(Struct_1(vec4<u32>(4294967295u, 6452u, global0.a.x, 77771u)), u_input.b.xyz), u_input.c.x).a.x), Struct_2(Struct_1(vec4<u32>(global0.a.x, 78827u, u_input.c.x, global0.a.x)), vec3<i32>(1i, reverseBits(-45577i), -32652i >> (1u % 32u))), ~_wgslsmith_clamp_u32(125609u, u_input.c.x, 4294967295u) ^ 1u), Struct_2(func_2(false, func_2(true, func_2(true, Struct_1(global0.a), Struct_2(Struct_1(global0.a), u_input.b.wwx), 65174u), Struct_2(Struct_1(vec4<u32>(87813u, u_input.c.x, u_input.c.x, global0.a.x)), u_input.b.ywx), ~1u), Struct_2(Struct_1(global0.a), vec3<i32>(u_input.b.x, u_input.a, u_input.a)), 63165u), vec3<i32>(~(-30443i), -u_input.a, 1i)), min(~(func_3(vec2<f32>(496f, -309f), vec3<f32>(460f, 170f, 1000f), Struct_3(Struct_1(global0.a), Struct_2(Struct_1(global0.a), u_input.b.zwz), Struct_1(global0.a)), u_input.c.x).x & global0.a.x), 16086u));
    let var_1 = Struct_2(func_2(!select(u_input.c.x < 4294967295u, true, true), Struct_1(abs(global0.a) ^ vec4<u32>(4294967295u, 1u, var_0.a.x, 41513u)), Struct_2(Struct_1(vec4<u32>(0u, 31138u, 1u, u_input.c.x) ^ var_0.a), vec3<i32>(func_1(vec4<f32>(2539f, 405f, 1000f, -899f), Struct_3(Struct_1(vec4<u32>(4294967295u, u_input.c.x, 1u, 62592u)), Struct_2(Struct_1(vec4<u32>(u_input.c.x, 1u, var_0.a.x, 10982u)), u_input.b.yxx), Struct_1(var_0.a))), _wgslsmith_mult_i32(u_input.b.x, 2147483647i), 0i)), _wgslsmith_dot_vec4_u32(~global0.a, _wgslsmith_mult_vec4_u32(select(vec4<u32>(var_0.a.x, 0u, 10747u, global0.a.x), var_0.a, vec4<bool>(true, false, true, false)), vec4<u32>(u_input.c.x, global0.a.x, global0.a.x, global0.a.x)))), ~(-u_input.b.xww));
    var var_2 = i32(-1i) * -12012i;
    let var_3 = -27757i;
    var_0 = func_2(true, var_1.a, var_1, var_1.a.a.x);
    let var_4 = true && !all(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true)));
    global0 = Struct_1(vec4<u32>(1u, ~u_input.c.x, ~var_0.a.x, _wgslsmith_clamp_u32(~var_0.a.x, ~var_0.a.x, ~var_0.a.x)));
    let var_5 = func_2(true, Struct_1(func_2(all(select(vec4<bool>(false, var_4, var_4, var_4), vec4<bool>(var_4, var_4, var_4, false), vec4<bool>(false, var_4, var_4, var_4))), var_1.a, var_1, ~(4294967295u | u_input.c.x)).a), Struct_2(func_2(var_4, var_1.a, var_1, var_0.a.x), vec3<i32>(var_3, _wgslsmith_mod_i32(1i | u_input.b.x, var_3), func_1(vec4<f32>(-1559f, -1219f, -2161f, -1788f), Struct_3(var_1.a, Struct_2(Struct_1(var_0.a), vec3<i32>(-1i, -1i, var_3)), Struct_1(vec4<u32>(0u, var_0.a.x, 14594u, var_0.a.x)))))), ~0u | var_1.a.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_i32(-(vec4<i32>(-1i) * -vec4<i32>(var_1.b.x, 2147483647i, -27031i, u_input.b.x)), u_input.b));
}

