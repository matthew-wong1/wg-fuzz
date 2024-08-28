struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: f32,
    d: bool,
    e: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: vec3<bool>,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<f32>,
    c: f32,
    d: Struct_3,
    e: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
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

var<private> global0: vec4<i32> = vec4<i32>(2147483647i, 1i, -1i, 0i);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_5) -> vec4<i32> {
    let var_0 = Struct_1(!arg_0.b.d.x, select(vec3<bool>(~arg_0.c.d.d.c.e.x != 4739u, select(!arg_0.b.c.b.x, any(vec4<bool>(false, arg_0.b.b.d, arg_0.b.c.b.x, arg_0.a.a)), !arg_0.b.d.x), false), arg_0.c.d.b.c.b, arg_0.b.b.a), 421f, arg_0.c.d.e.a, _wgslsmith_sub_vec4_u32(arg_0.c.d.e.e, min(_wgslsmith_mod_vec4_u32(arg_0.a.e, arg_0.c.d.d.c.e), _wgslsmith_mult_vec4_u32(select(vec4<u32>(5094u, 0u, arg_0.c.d.d.b.e.x, 4294967295u), arg_0.c.d.d.c.e, arg_0.a.a), vec4<u32>(arg_0.a.e.x, arg_0.c.a.d.b.e.x, 4294967295u, arg_0.c.a.e.e.x)))));
    var var_1 = ~53078u;
    var_1 = _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 2556u), var_0.e.xy);
    var_1 = 1u;
    var var_2 = Struct_5(Struct_1(var_0.d || true, vec3<bool>(true, true, any(!vec4<bool>(false, arg_0.b.b.d, var_0.d, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -952f)), false, select(_wgslsmith_div_vec4_u32(arg_0.a.e, var_0.e), select(vec4<u32>(89824u, var_0.e.x, 0u, arg_0.a.e.x), _wgslsmith_add_vec4_u32(arg_0.c.d.b.c.e, arg_0.a.e), var_0.a || false), !(!vec4<bool>(arg_0.a.d, false, arg_0.c.d.e.a, arg_0.b.b.b.x)))), arg_0.b, arg_0.c);
    return reverseBits(-vec4<i32>(max(-2147483647i, -1i), -8939i, var_2.b.a, 58608i));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: vec3<i32>) -> Struct_5 {
    global0 = min(func_3(Struct_5(Struct_1(arg_1, arg_0.b, -436f, true, vec4<u32>(71334u, arg_0.e.x, arg_0.e.x, 70822u)), Struct_2(1i, arg_0, arg_0, vec3<bool>(arg_0.b.x, arg_1, arg_1)), Struct_4(Struct_3(vec2<f32>(-940f, -2154f), Struct_2(global0.x, Struct_1(arg_0.b.x, arg_0.b, -344f, arg_0.a, vec4<u32>(14849u, arg_0.e.x, 51739u, arg_0.e.x)), arg_0, vec3<bool>(arg_0.b.x, true, arg_1)), vec3<bool>(arg_1, arg_1, false), Struct_2(2147483647i, Struct_1(true, vec3<bool>(true, false, arg_0.d), arg_0.c, false, arg_0.e), Struct_1(true, vec3<bool>(arg_0.d, true, false), arg_0.c, true, vec4<u32>(101156u, 0u, arg_0.e.x, 52695u)), vec3<bool>(false, arg_1, false)), arg_0), vec3<f32>(arg_0.c, -1000f, 1215f), 1595f, Struct_3(vec2<f32>(arg_0.c, arg_0.c), Struct_2(global0.x, arg_0, arg_0, arg_0.b), arg_0.b, Struct_2(48893i, arg_0, Struct_1(false, vec3<bool>(true, false, false), -560f, true, vec4<u32>(13704u, 0u, 2508u, arg_0.e.x)), vec3<bool>(true, arg_0.b.x, arg_1)), Struct_1(false, arg_0.b, -304f, true, arg_0.e)), arg_0.c))) | (_wgslsmith_clamp_vec4_i32(-vec4<i32>(-2147483647i, u_input.a.x, -38984i, arg_2.x), vec4<i32>(global0.x, global0.x, u_input.a.x, -37614i), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, -1i, global0.x, arg_2.x), vec4<i32>(u_input.b, 4653i, -50598i, -2147483647i))) & vec4<i32>(55945i, ~u_input.a.x, -2147483647i << (arg_0.e.x % 32u), 1i)), firstLeadingBit(~_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 21428i, -31301i, 1i), vec4<i32>(-1i, arg_2.x, arg_2.x, -17610i))) >> (reverseBits(vec4<u32>(arg_0.e.x, arg_0.e.x, 122476u, 701u) ^ firstLeadingBit(arg_0.e)) % vec4<u32>(32u)));
    global0 = vec4<i32>(~(~(~u_input.a.x)), -14145i, -38085i, arg_2.x) >> (~abs(_wgslsmith_div_vec4_u32(vec4<u32>(41630u, arg_0.e.x, arg_0.e.x, 0u), _wgslsmith_add_vec4_u32(vec4<u32>(arg_0.e.x, arg_0.e.x, 12244u, arg_0.e.x), arg_0.e))) % vec4<u32>(32u));
    var var_0 = Struct_4(Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-177f * arg_0.c), 572f) + vec2<f32>(_wgslsmith_f_op_f32(arg_0.c + arg_0.c), _wgslsmith_f_op_f32(f32(-1f) * -845f))), Struct_2(0i, Struct_1(arg_0.e.x == arg_0.e.x, select(vec3<bool>(true, false, arg_1), vec3<bool>(false, false, false), true), _wgslsmith_f_op_f32(arg_0.c * -351f), arg_1, ~vec4<u32>(arg_0.e.x, 23067u, arg_0.e.x, arg_0.e.x)), Struct_1(arg_1, select(arg_0.b, arg_0.b, arg_0.b), _wgslsmith_f_op_f32(-arg_0.c), !arg_0.d, ~vec4<u32>(74582u, 4294967295u, arg_0.e.x, arg_0.e.x)), select(vec3<bool>(arg_0.b.x, true, arg_1), arg_0.b, select(arg_1, true, true))), select(select(!vec3<bool>(arg_0.d, true, arg_0.b.x), arg_0.b, select(arg_0.b, vec3<bool>(false, false, arg_1), arg_0.b.x)), select(!arg_0.b, arg_0.b, false), vec3<bool>(arg_1, false, !arg_1)), Struct_2(global0.x, arg_0, Struct_1(any(arg_0.b.xx), arg_0.b, _wgslsmith_div_f32(694f, 455f), true, ~arg_0.e), !arg_0.b), arg_0), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1105f, 1171f, 1342f)) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1310f, 110f, 1000f) + vec3<f32>(-345f, 708f, arg_0.c)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.c, arg_0.c, arg_0.c), vec3<f32>(arg_0.c, arg_0.c, arg_0.c)))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_div_f32(1448f, arg_0.c), _wgslsmith_f_op_f32(1094f - arg_0.c)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.c, arg_0.c) - arg_0.c))), arg_0.c)), Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0.c, arg_0.c))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1011f, -478f) - vec2<f32>(arg_0.c, -1000f)))), Struct_2(u_input.a.x, arg_0, arg_0, arg_0.b), vec3<bool>(arg_0.b.x, true, arg_0.d), Struct_2(reverseBits(~2147483647i), arg_0, arg_0, !(!vec3<bool>(arg_1, arg_0.a, true))), arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1931f * 1041f)));
    var var_1 = var_0.d;
    global0 = ~abs(func_3(Struct_5(var_0.a.d.c, var_1.d, Struct_4(Struct_3(var_1.a, var_1.b, var_1.b.b.b, Struct_2(arg_2.x, Struct_1(true, var_0.d.b.c.b, -563f, true, arg_0.e), arg_0, vec3<bool>(arg_1, arg_1, var_1.b.b.a)), Struct_1(var_1.e.a, vec3<bool>(true, false, var_0.a.b.c.b.x), var_1.b.c.c, false, arg_0.e)), var_0.b, -871f, var_0.a, var_1.a.x))));
    return Struct_5(var_0.d.e, var_1.d, Struct_4(Struct_3(vec2<f32>(var_1.b.c.c, _wgslsmith_f_op_f32(arg_0.c + arg_0.c)), Struct_2(2147483647i, Struct_1(true, var_0.a.b.c.b, var_0.d.d.b.c, var_1.c.x, var_0.d.e.e), arg_0, !vec3<bool>(true, false, var_0.d.c.x)), select(!vec3<bool>(arg_1, arg_0.a, true), !arg_0.b, arg_0.b), Struct_2(global0.x, var_1.d.b, arg_0, !vec3<bool>(false, true, arg_1)), Struct_1(!var_1.c.x, var_1.c, _wgslsmith_f_op_f32(var_0.b.x * 643f), arg_0.d, var_0.d.e.e << (var_0.a.e.e % vec4<u32>(32u)))), _wgslsmith_f_op_vec3_f32(-var_0.b), -235f, var_0.a, _wgslsmith_f_op_f32(-var_1.d.b.c)));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_5, arg_2: f32) -> Struct_4 {
    let var_0 = 326f;
    let var_1 = !(-4920i > -global0.x);
    let var_2 = _wgslsmith_f_op_f32(exp2(var_0));
    let var_3 = all(!arg_1.c.a.e.b);
    let var_4 = func_2(func_2(arg_1.c.d.e, arg_1.c.a.b.a >= _wgslsmith_add_i32(arg_1.c.a.d.a, global0.x), min(global0.www, ~_wgslsmith_mod_vec3_i32(vec3<i32>(arg_1.b.a, -1i, u_input.b), vec3<i32>(arg_1.c.a.b.a, arg_1.c.a.b.a, 40711i)))).a, false, func_3(func_2(arg_1.c.a.b.b, !(!arg_0.x), vec3<i32>(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(36838i, global0.x, u_input.b, global0.x), vec4<i32>(26287i, global0.x, -1i, arg_1.b.a)), reverseBits(3478i)))).xyy).a;
    return arg_1.c;
}

fn func_1(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec3<f32>) -> vec3<bool> {
    let var_0 = !(!(!vec4<bool>(all(vec4<bool>(arg_0.d.b.c.a, arg_1.b.d, arg_1.c.d, false)), arg_1.d.x, !arg_1.d.x, all(vec2<bool>(arg_1.b.b.x, arg_2.a)))));
    let var_1 = func_4(arg_2.b.yx, func_2(Struct_1(true, !select(vec3<bool>(false, false, arg_0.a.d.d.x), arg_0.a.b.d, var_0.xwy), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(886f - arg_2.c) + _wgslsmith_f_op_f32(floor(arg_2.c))), true, arg_0.a.e.e), ~(arg_1.c.e.x << (arg_1.b.e.x % 32u)) < 35640u, _wgslsmith_mult_vec3_i32(-(~global0.yww), firstLeadingBit(global0.zyz))), _wgslsmith_f_op_f32(floor(630f)));
    var var_2 = func_4(vec2<bool>(true, var_1.d.b.c.d), func_2(Struct_1(true, vec3<bool>(all(arg_1.b.b), var_0.x, arg_1.c.d | arg_2.a), 1167f, false, var_1.a.d.c.e), func_2(func_2(arg_1.c, var_1.d.d.a <= -2147483647i, ~global0.zwx).c.d.b.c, true || all(vec3<bool>(true, false, var_1.a.e.b.x)), _wgslsmith_sub_vec3_i32(-global0.xzw, global0.xyx)).b.b.a, vec3<i32>(_wgslsmith_mod_i32(-global0.x, arg_0.d.b.a ^ 5982i), reverseBits(5430i) >> (var_1.a.d.b.e.x % 32u), -10493i)), arg_2.c);
    var var_3 = vec4<bool>(var_2.d.c.x, true, var_2.a.e.b.x, true);
    return select(!(!select(var_0.wzy, var_0.zxy, true)), vec3<bool>(func_2(func_4(vec2<bool>(arg_2.d, arg_1.d.x), func_2(Struct_1(false, vec3<bool>(var_3.x, true, false), arg_0.c, arg_0.a.d.c.b.x, vec4<u32>(17065u, arg_0.a.b.b.e.x, arg_1.b.e.x, arg_1.b.e.x)), true, global0.ywz), _wgslsmith_f_op_f32(-arg_1.b.c)).a.b.c, ~var_2.d.b.c.e.x > firstTrailingBit(101979u), -_wgslsmith_clamp_vec3_i32(vec3<i32>(var_2.d.d.a, 3035i, global0.x), vec3<i32>(arg_0.d.b.a, 0i, var_2.a.b.a), global0.ywy)).c.a.e.a, !func_4(vec2<bool>(var_0.x, false), Struct_5(arg_0.d.d.b, Struct_2(-68796i, Struct_1(true, vec3<bool>(true, var_1.d.c.x, false), 1019f, arg_0.d.c.x, arg_1.c.e), arg_0.d.b.b, var_0.xzz), arg_0), 1390f).a.c.x, true), arg_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_clamp_vec4_i32(~vec4<i32>(-u_input.b, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(0i, 0i, u_input.b, 0i)), -vec4<i32>(1i, global0.x, global0.x, u_input.a.x)), i32(-1i) * -global0.x, min(reverseBits(global0.x), ~(-1i))), vec4<i32>(0i, ~(min(u_input.b, 1i) ^ firstTrailingBit(1i)), _wgslsmith_dot_vec3_i32(countOneBits(global0.zxz & global0.yyy), vec3<i32>(_wgslsmith_add_i32(u_input.b, -1i), 1i, firstTrailingBit(-2147483647i))), 2147483647i), -abs(~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, -39072i, u_input.b, global0.x), vec4<i32>(u_input.a.x, u_input.b, -2147483647i, 13479i), vec4<i32>(60185i, -3472i, -17266i, 1i))));
    var var_0 = firstTrailingBit(u_input.a.x);
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f + -849f))) + _wgslsmith_f_op_f32(f32(-1f) * -207f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -2554f))), -235f), 431f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1526f, 270f))) * 504f)));
    var var_2 = !select(select(!func_1(Struct_4(Struct_3(vec2<f32>(var_1.x, 426f), Struct_2(-2147483647i, Struct_1(true, vec3<bool>(true, true, false), -1295f, true, vec4<u32>(4294967295u, 1u, 3860u, 4294967295u)), Struct_1(false, vec3<bool>(false, true, false), 374f, false, vec4<u32>(11354u, 37081u, 4294967295u, 25950u)), vec3<bool>(true, true, false)), vec3<bool>(false, false, false), Struct_2(global0.x, Struct_1(true, vec3<bool>(true, true, true), -1059f, false, vec4<u32>(1u, 56074u, 9051u, 29051u)), Struct_1(false, vec3<bool>(false, false, false), var_1.x, false, vec4<u32>(33461u, 31382u, 11803u, 59985u)), vec3<bool>(true, true, false)), Struct_1(false, vec3<bool>(false, false, true), 966f, true, vec4<u32>(4294967295u, 24647u, 0u, 27732u))), var_1.yww, var_1.x, Struct_3(vec2<f32>(var_1.x, var_1.x), Struct_2(global0.x, Struct_1(false, vec3<bool>(true, false, true), -1395f, false, vec4<u32>(1u, 0u, 4294967295u, 57u)), Struct_1(false, vec3<bool>(false, true, true), var_1.x, true, vec4<u32>(0u, 8688u, 4294967295u, 28741u)), vec3<bool>(false, true, false)), vec3<bool>(true, false, false), Struct_2(u_input.b, Struct_1(false, vec3<bool>(true, false, false), var_1.x, false, vec4<u32>(1u, 54724u, 9489u, 1u)), Struct_1(false, vec3<bool>(false, true, true), 419f, true, vec4<u32>(2863u, 0u, 4294967295u, 96088u)), vec3<bool>(true, false, true)), Struct_1(true, vec3<bool>(false, true, true), 868f, false, vec4<u32>(1u, 4137u, 1u, 6819u))), 389f), Struct_2(global0.x, Struct_1(false, vec3<bool>(true, true, true), var_1.x, false, vec4<u32>(0u, 60384u, 1u, 0u)), Struct_1(true, vec3<bool>(true, false, false), var_1.x, true, vec4<u32>(10197u, 1u, 4294967295u, 27423u)), vec3<bool>(true, true, true)), Struct_1(false, vec3<bool>(false, false, false), var_1.x, false, vec4<u32>(125095u, 4294967295u, 4294967295u, 1u)), vec3<f32>(var_1.x, -922f, -1000f)), vec3<bool>(false, false, true), true), select(func_4(vec2<bool>(false, false), func_2(Struct_1(true, vec3<bool>(false, false, false), var_1.x, false, vec4<u32>(766u, 1u, 71713u, 94048u)), true, global0.zyy), _wgslsmith_f_op_f32(-var_1.x)).d.e.b, vec3<bool>(true, func_4(vec2<bool>(true, false), Struct_5(Struct_1(true, vec3<bool>(false, true, false), var_1.x, false, vec4<u32>(11421u, 7741u, 4294967295u, 1u)), Struct_2(global0.x, Struct_1(true, vec3<bool>(true, false, true), 1036f, false, vec4<u32>(4294967295u, 44658u, 6973u, 13327u)), Struct_1(false, vec3<bool>(false, true, false), -1635f, true, vec4<u32>(1u, 0u, 53169u, 29506u)), vec3<bool>(true, true, false)), Struct_4(Struct_3(var_1.zw, Struct_2(-21235i, Struct_1(false, vec3<bool>(false, false, true), 396f, false, vec4<u32>(26495u, 4294967295u, 0u, 51197u)), Struct_1(true, vec3<bool>(false, true, false), var_1.x, false, vec4<u32>(1u, 28430u, 735u, 1u)), vec3<bool>(false, true, false)), vec3<bool>(false, false, false), Struct_2(u_input.a.x, Struct_1(false, vec3<bool>(false, true, false), -764f, false, vec4<u32>(4294967295u, 45372u, 5209u, 26060u)), Struct_1(false, vec3<bool>(false, false, false), 292f, false, vec4<u32>(1u, 4294967295u, 16522u, 1u)), vec3<bool>(false, true, true)), Struct_1(false, vec3<bool>(true, true, false), var_1.x, false, vec4<u32>(1u, 61691u, 68664u, 81136u))), var_1.xxx, var_1.x, Struct_3(var_1.xz, Struct_2(-2147483647i, Struct_1(true, vec3<bool>(false, false, false), -640f, true, vec4<u32>(23126u, 29026u, 42108u, 1032u)), Struct_1(true, vec3<bool>(false, false, false), var_1.x, true, vec4<u32>(3479u, 65068u, 0u, 41789u)), vec3<bool>(true, true, true)), vec3<bool>(false, true, false), Struct_2(7191i, Struct_1(false, vec3<bool>(true, true, false), -419f, false, vec4<u32>(4294967295u, 4294967295u, 10966u, 51910u)), Struct_1(false, vec3<bool>(false, false, true), 1468f, true, vec4<u32>(0u, 0u, 3948u, 0u)), vec3<bool>(false, true, false)), Struct_1(false, vec3<bool>(true, false, false), var_1.x, false, vec4<u32>(36371u, 4294967295u, 36001u, 0u))), 441f)), 432f).d.c.x, true), true), vec3<bool>(!any(vec3<bool>(true, true, true)), true, false));
    var var_3 = 0i;
    var var_4 = func_2(Struct_1(var_2.x | true, func_2(Struct_1(true, vec3<bool>(var_2.x, true, var_2.x), 1733f, var_1.x <= var_1.x, func_2(Struct_1(false, vec3<bool>(true, var_2.x, var_2.x), var_1.x, true, vec4<u32>(18923u, 4294967295u, 1u, 0u)), var_2.x, global0.zwz).a.e), false, -(vec3<i32>(-32272i, -208i, -10671i) & vec3<i32>(25863i, 51026i, u_input.a.x))).a.b, 1762f, any(!(!vec4<bool>(false, var_2.x, var_2.x, var_2.x))), select(func_4(vec2<bool>(true, true), func_2(Struct_1(false, vec3<bool>(false, var_2.x, true), 424f, true, vec4<u32>(16142u, 24618u, 17027u, 0u)), var_2.x, vec3<i32>(global0.x, u_input.b, 39158i)), -446f).d.d.b.e, vec4<u32>(1u, 1u, 1u, 1u), !select(vec4<bool>(var_2.x, false, var_2.x, var_2.x), vec4<bool>(var_2.x, true, false, false), var_2.x))), var_2.x, vec3<i32>(_wgslsmith_sub_i32(func_3(Struct_5(Struct_1(var_2.x, vec3<bool>(false, var_2.x, false), -1678f, false, vec4<u32>(0u, 61718u, 4294967295u, 55893u)), Struct_2(global0.x, Struct_1(var_2.x, vec3<bool>(true, true, var_2.x), var_1.x, var_2.x, vec4<u32>(61884u, 26296u, 4294967295u, 41955u)), Struct_1(var_2.x, vec3<bool>(var_2.x, var_2.x, true), var_1.x, false, vec4<u32>(19229u, 0u, 1212u, 1u)), vec3<bool>(var_2.x, var_2.x, var_2.x)), Struct_4(Struct_3(vec2<f32>(var_1.x, var_1.x), Struct_2(8356i, Struct_1(var_2.x, vec3<bool>(true, true, var_2.x), var_1.x, false, vec4<u32>(0u, 0u, 4294967295u, 1u)), Struct_1(var_2.x, vec3<bool>(false, var_2.x, var_2.x), -974f, var_2.x, vec4<u32>(0u, 1u, 45049u, 4294967295u)), vec3<bool>(var_2.x, var_2.x, true)), vec3<bool>(var_2.x, var_2.x, true), Struct_2(0i, Struct_1(false, vec3<bool>(true, false, var_2.x), 194f, true, vec4<u32>(36674u, 4294967295u, 1u, 0u)), Struct_1(var_2.x, vec3<bool>(false, var_2.x, var_2.x), -402f, false, vec4<u32>(2027u, 4294967295u, 85566u, 18843u)), vec3<bool>(var_2.x, var_2.x, var_2.x)), Struct_1(false, vec3<bool>(true, true, var_2.x), var_1.x, var_2.x, vec4<u32>(0u, 32655u, 35591u, 31303u))), var_1.wyy, 1033f, Struct_3(var_1.xy, Struct_2(global0.x, Struct_1(false, vec3<bool>(true, var_2.x, false), -1276f, var_2.x, vec4<u32>(34189u, 17772u, 4294967295u, 25733u)), Struct_1(var_2.x, vec3<bool>(true, true, var_2.x), -1059f, var_2.x, vec4<u32>(12815u, 52876u, 34496u, 0u)), vec3<bool>(true, var_2.x, var_2.x)), vec3<bool>(var_2.x, var_2.x, var_2.x), Struct_2(global0.x, Struct_1(var_2.x, vec3<bool>(true, var_2.x, true), var_1.x, true, vec4<u32>(14057u, 4294967295u, 1u, 30558u)), Struct_1(true, vec3<bool>(var_2.x, false, var_2.x), 704f, var_2.x, vec4<u32>(22727u, 57457u, 1u, 1u)), vec3<bool>(true, var_2.x, var_2.x)), Struct_1(var_2.x, vec3<bool>(var_2.x, var_2.x, true), var_1.x, var_2.x, vec4<u32>(4294967295u, 34475u, 83446u, 0u))), 1347f))).x, u_input.a.x), global0.x ^ _wgslsmith_div_i32(abs(0i), 5735i), -(~(-global0.x)))).b.b;
    var_0 = -2147483647i;
    var var_5 = !var_2.x;
    var_0 = _wgslsmith_sub_i32(abs(-2147483647i | u_input.b) >> (var_4.e.x % 32u), reverseBits(47225i));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(var_4.e.yw) & vec2<u32>(~var_4.e.x, var_4.e.x));
}

