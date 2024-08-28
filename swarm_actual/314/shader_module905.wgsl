struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
    c: Struct_1,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: u32,
    d: bool,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 5> = array<Struct_3, 5>(Struct_3(1u, Struct_2(2077f, vec4<f32>(-484f, 355f, 281f, -606f), Struct_1(-60704i), vec2<u32>(30143u, 163473u), vec2<i32>(2147483647i, -1i)), 4294967295u, true), Struct_3(54056u, Struct_2(153f, vec4<f32>(417f, 1063f, -2269f, -831f), Struct_1(-19584i), vec2<u32>(4294967295u, 56784u), vec2<i32>(-1i, -1i)), 4294967295u, false), Struct_3(1u, Struct_2(1000f, vec4<f32>(-200f, 594f, -1086f, -432f), Struct_1(32414i), vec2<u32>(4294967295u, 4294967295u), vec2<i32>(2147483647i, -1i)), 0u, false), Struct_3(0u, Struct_2(445f, vec4<f32>(1000f, 275f, 289f, -1011f), Struct_1(2147483647i), vec2<u32>(26422u, 1u), vec2<i32>(-1i, 23475i)), 1u, true), Struct_3(49873u, Struct_2(565f, vec4<f32>(-584f, -643f, 208f, 795f), Struct_1(1i), vec2<u32>(0u, 4789u), vec2<i32>(0i, i32(-2147483648))), 0u, true));

var<private> global1: Struct_3;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<f32>) -> vec4<bool> {
    global0 = array<Struct_3, 5>();
    let var_0 = firstLeadingBit(u_input.b) & select(_wgslsmith_dot_vec2_i32(-vec2<i32>(-1i, global1.b.c.a) ^ vec2<i32>(-24027i, u_input.a), global1.b.e), -1i, !any(vec2<bool>(global1.d, false)));
    let var_1 = !vec2<bool>(true, true || (_wgslsmith_f_op_f32(sign(224f)) != 729f));
    var var_2 = vec2<f32>(global1.b.b.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.b.a))));
    var var_3 = Struct_4(Struct_1(var_0));
    return !select(vec4<bool>(global1.d, global1.d, !global1.d, any(select(var_1, vec2<bool>(false, global1.d), var_1.x))), select(vec4<bool>(true, global1.d, any(vec4<bool>(false, global1.d, false, var_1.x)), !global1.d), !(!vec4<bool>(false, global1.d, true, true)), !select(vec4<bool>(var_1.x, true, false, false), vec4<bool>(true, global1.d, global1.d, false), true)), select(!select(vec4<bool>(global1.d, true, true, global1.d), vec4<bool>(global1.d, var_1.x, var_1.x, false), global1.d), vec4<bool>(!var_1.x, true, -2147483647i > var_0, !var_1.x), any(vec3<bool>(true, global1.d, false))));
}

fn func_2(arg_0: i32) -> Struct_3 {
    let var_0 = select(vec2<bool>(false, false), vec2<bool>((37133u == (global1.b.d.x ^ global1.c)) | false, false), !(!vec2<bool>(true, global1.d)));
    var var_1 = !vec4<bool>(_wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.c, 1u), 151961u) != ~(~global1.b.d.x), false, !var_0.x, ~global1.c == ~u_input.c);
    let var_2 = Struct_4(Struct_1(_wgslsmith_sub_i32(-7023i >> (~u_input.c % 32u), -arg_0)));
    var_1 = select(select(func_3(vec2<f32>(_wgslsmith_f_op_f32(global1.b.a * global1.b.a), global1.b.b.x)), vec4<bool>(true, (var_1.x & var_1.x) | false, var_0.x & (global1.b.b.x != -559f), true), any(vec2<bool>(global1.d | global1.d, true))), func_3(_wgslsmith_f_op_vec2_f32(global1.b.b.zx - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-862f, global1.b.b.x)))))), !((all(vec4<bool>(var_0.x, true, false, var_0.x)) | false) & false));
    global0 = array<Struct_3, 5>();
    return global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(global1.c, select(1u, 1u, global1.d) | _wgslsmith_mult_u32(68002u, 0u)) | (_wgslsmith_mult_u32(15765u, 0u) & global1.b.d.x), ~_wgslsmith_div_u32(~u_input.c, _wgslsmith_dot_vec3_u32(vec3<u32>(global1.c, global1.b.d.x, 0u), vec3<u32>(11994u, 79635u, global1.c))) & ~4294967295u, max(53949u, ~(~global1.b.d.x))), 5u)];
}

fn func_1() -> Struct_3 {
    global1 = func_2(-3693i);
    global1 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(11363u, u_input.c), 42818u, ~u_input.c), 5u)];
    global1 = global0[_wgslsmith_index_u32(global1.a, 5u)];
    let var_0 = ~global1.b.d;
    var var_1 = var_0.x;
    return Struct_3(select(1u, ~_wgslsmith_div_u32(u_input.c, 3875u) << (var_0.x % 32u), true), Struct_2(global1.b.b.x, global1.b.b, Struct_1(_wgslsmith_dot_vec3_i32(select(vec3<i32>(1i, u_input.b, u_input.a), vec3<i32>(u_input.a, 0i, u_input.a), global1.d), countOneBits(vec3<i32>(-10211i, u_input.b, -25854i)))), ~reverseBits(vec2<u32>(1u, global1.a)), _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_div_i32(global1.b.e.x, 2147483647i), 0i), reverseBits(global1.b.e))), global1.a, (any(!vec2<bool>(true, global1.d)) | false) & !(!(!global1.d)));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_3) -> Struct_3 {
    var var_0 = _wgslsmith_mult_vec3_i32(-(~(~vec3<i32>(global1.b.c.a, u_input.a, -1i))), vec3<i32>(_wgslsmith_clamp_i32(0i, global1.b.e.x, 15965i), i32(-1i) * -2147483647i, countOneBits(-1i))) | ~_wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(-vec3<i32>(global1.b.e.x, -1i, global1.b.e.x), vec3<i32>(arg_1.b.e.x, -31395i, -1i)), ~(vec3<i32>(u_input.b, -1i, u_input.b) ^ vec3<i32>(-1i, -1i, 1i)));
    let var_1 = Struct_4(arg_1.b.c);
    var var_2 = 602f;
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.b.x) - _wgslsmith_f_op_f32(-896f - _wgslsmith_f_op_f32(1000f - global1.b.b.x))))));
    var var_3 = ~(-38081i);
    return Struct_3(arg_1.c, global1.b, ~arg_1.c, any(!select(!vec2<bool>(true, arg_1.d), func_3(global1.b.b.zw).wz, global1.d != false)));
}

fn func_5(arg_0: Struct_3, arg_1: i32, arg_2: Struct_3, arg_3: Struct_2) -> Struct_4 {
    let var_0 = arg_0.b;
    var var_1 = Struct_4(Struct_1(-4241i));
    var_1 = Struct_4(func_1().b.c);
    let var_2 = ~(~_wgslsmith_mod_vec4_u32(min(~vec4<u32>(u_input.c, 1u, arg_0.c, 0u), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_3.d.x, 1u, global1.a, 4294967295u), vec4<u32>(38600u, 43739u, arg_0.a, arg_0.a), vec4<u32>(0u, u_input.c, 31078u, var_0.d.x))), _wgslsmith_mod_vec4_u32(~vec4<u32>(49804u, 3931u, arg_2.a, 1u), _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.d.x, global1.c, 57156u, 42827u), vec4<u32>(var_0.d.x, 38385u, global1.b.d.x, arg_3.d.x)))));
    var var_3 = vec3<u32>(~reverseBits(arg_2.b.d.x), arg_3.d.x, ~_wgslsmith_sub_u32(arg_2.c, arg_0.a));
    return Struct_4(Struct_1(-36806i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 5>();
    var var_0 = vec4<bool>(true, true, global1.d, !global1.d & (0u <= global1.a));
    var var_1 = func_5(func_4(_wgslsmith_f_op_vec4_f32(-global1.b.b), func_1()), ~firstTrailingBit(9120i) | u_input.b, global0[_wgslsmith_index_u32(reverseBits(global1.c), 5u)], global1.b);
    global0 = array<Struct_3, 5>();
    let var_2 = func_4(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_div_f32(func_4(global1.b.b, Struct_3(0u, Struct_2(global1.b.a, global1.b.b, Struct_1(u_input.a), vec2<u32>(global1.a, global1.b.d.x), global1.b.e), 0u, false)).b.a, _wgslsmith_f_op_f32(-global1.b.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2098f), 2857f), global1.b.b.x, 568f))), Struct_3(u_input.c, Struct_2(1019f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.b.x, global1.b.b.x, global1.b.a, global1.b.a))), func_5(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(3873u, global1.c), 5u)], u_input.a, Struct_3(1u, Struct_2(global1.b.a, vec4<f32>(global1.b.b.x, 280f, 619f, global1.b.b.x), Struct_1(0i), global1.b.d, vec2<i32>(0i, var_1.a.a)), 1u, false), Struct_2(global1.b.a, global1.b.b, var_1.a, global1.b.d, global1.b.e)).a, global1.b.d, _wgslsmith_clamp_vec2_i32(global1.b.e << (vec2<u32>(global1.b.d.x, global1.a) % vec2<u32>(32u)), global1.b.e, global1.b.e)), ~(~1u), func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(249f, global1.b.b.x, -477f, global1.b.b.x)))), func_2(u_input.a)).d)).b;
    global0 = array<Struct_3, 5>();
    let var_3 = !global1.d;
    let var_4 = vec4<u32>(_wgslsmith_clamp_u32(global1.c, 1u ^ u_input.c, var_2.d.x ^ global1.c), ~25438u, 3244u, 4294967295u);
    global0 = array<Struct_3, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(func_5(global0[_wgslsmith_index_u32(1u, 5u)], 22540i, func_2(-28192i), func_4(func_1().b.b, Struct_3(~var_4.x, Struct_2(317f, var_2.b, Struct_1(19354i), global1.b.d, vec2<i32>(global1.b.c.a, var_2.c.a)), ~1u, var_0.x)).b).a.a, global1.b.c.a);
}

