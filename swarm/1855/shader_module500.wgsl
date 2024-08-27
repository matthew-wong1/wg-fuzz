struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: vec2<i32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: f32,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: u32) -> Struct_4 {
    let var_0 = -u_input.a;
    global0 = Struct_4(u_input.a, Struct_1(_wgslsmith_add_vec4_u32(u_input.b, ~(~global0.b.a))), global0.c, Struct_2(1i, global0.b, u_input.b.x, _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, 0i), -global0.d.d), _wgslsmith_sub_vec2_i32(global0.d.d, ~global0.d.d))));
    global0 = Struct_4(-global0.d.d.x, global0.b, global0.c, Struct_2(select(-24692i, -_wgslsmith_dot_vec3_i32(vec3<i32>(var_0, u_input.a, u_input.a), vec3<i32>(0i, -2147483647i, 51805i)), !all(vec2<bool>(false, true))), Struct_1(~(~vec4<u32>(32515u, arg_0, 1u, 4294967295u))), 1u ^ ~arg_0, countOneBits(vec2<i32>(~(-2147483647i), global0.d.a))));
    var var_1 = Struct_1(vec4<u32>(~_wgslsmith_add_u32(36787u, u_input.b.x), global0.b.a.x, 4294967295u << (_wgslsmith_clamp_u32(u_input.b.x, 1u, ~0u) % 32u), _wgslsmith_dot_vec4_u32(global0.b.a, u_input.b)));
    var var_2 = global0.d;
    return Struct_4(-reverseBits(global0.d.a), global0.d.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f * 375f)))) * 2142f), Struct_2(1i, Struct_1(max(reverseBits(global0.d.b.a), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.a.x, 1u, var_2.c, 0u), vec4<u32>(u_input.b.x, global0.b.a.x, arg_0, var_2.c), var_1.a))), var_1.a.x, vec2<i32>(_wgslsmith_clamp_i32(countOneBits(global0.a), ~11453i, _wgslsmith_clamp_i32(1i, u_input.a, -2147483647i)), -(0i & global0.a))));
}

fn func_3(arg_0: bool, arg_1: vec3<bool>, arg_2: u32) -> i32 {
    let var_0 = 1495f;
    let var_1 = Struct_3(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, _wgslsmith_div_u32(global0.b.a.x, 2079u), ~global0.b.a.x, countOneBits(global0.d.c)), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_2, 1u, arg_2, 4294967295u), global0.d.b.a) & (vec4<u32>(4294967295u, 4294967295u, global0.b.a.x, global0.d.c) << (global0.b.a % vec4<u32>(32u)))), max(arg_2, ~_wgslsmith_add_u32(43741u, 1u))), global0.d);
    var var_2 = 2113f;
    let var_3 = 1f;
    var_2 = _wgslsmith_f_op_f32(-650f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2642f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(485f, global0.c)) * -165f))));
    return countOneBits(func_2(global0.d.b.a.x).a) >> (var_1.b.b.a.x % 32u);
}

fn func_1() -> Struct_3 {
    global0 = func_2(u_input.c);
    let var_0 = vec3<i32>(func_3(true, !vec3<bool>(true, all(vec4<bool>(true, true, false, false)), true), min(countOneBits(global0.d.c), 22460u)), (i32(-1i) * -38004i) >> (~_wgslsmith_mult_u32(1148u, _wgslsmith_sub_u32(10145u, global0.d.b.a.x)) % 32u), global0.d.d.x);
    let var_1 = _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(379f - _wgslsmith_f_op_f32(global0.c + -1634f))));
    global0 = func_2(~global0.b.a.x);
    let var_2 = vec3<bool>(all(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), vec3<bool>(false, false, true), true)) && any(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(true, true))), any(vec3<bool>(true, true, true)), false);
    return Struct_3(countOneBits(~select(1u, _wgslsmith_sub_u32(41450u, global0.d.c), var_2.x)), global0.d);
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: Struct_3, arg_3: Struct_2) -> Struct_4 {
    global0 = Struct_4(abs(arg_1.b.a) >> (18544u % 32u), arg_3.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0, 1063f, true)) - _wgslsmith_f_op_f32(abs(-1376f)))))), arg_2.b);
    var var_0 = func_2(arg_1.a).d;
    return Struct_4(_wgslsmith_dot_vec3_i32(~(firstLeadingBit(vec3<i32>(u_input.a, arg_3.d.x, -1i)) << (abs(vec3<u32>(arg_2.a, 0u, 1u)) % vec3<u32>(32u))), _wgslsmith_sub_vec3_i32(vec3<i32>(-50138i, i32(-1i) * -19573i, arg_3.a), max(vec3<i32>(1i, arg_3.d.x, 2147483647i), vec3<i32>(-17975i, 27932i, -1323i)) | vec3<i32>(2147483647i, global0.a, -93153i))), func_2(1u).b, _wgslsmith_div_f32(global0.c, _wgslsmith_f_op_f32(-428f * _wgslsmith_f_op_f32(-1398f + 1027f))), arg_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(min(vec4<i32>(20805i, global0.a, -2147483647i, 2147483647i), vec4<i32>(-2147483647i, 2147483647i, -3108i, global0.d.d.x)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, 15451i, global0.a, u_input.a), select(vec4<i32>(0i, u_input.a, -2147483647i, global0.d.a), vec4<i32>(global0.d.a, u_input.a, 1i, global0.a), true))), vec4<i32>(u_input.a, u_input.a, global0.a, ~18715i >> (u_input.d % 32u))) & ((~select(vec4<i32>(1i, global0.d.a, 0i, 0i), vec4<i32>(global0.d.d.x, u_input.a, 1i, -1i), vec4<bool>(false, true, true, false)) >> (vec4<u32>(global0.d.c ^ u_input.b.x, _wgslsmith_div_u32(3158u, 4294967295u), _wgslsmith_add_u32(1u, global0.d.b.a.x), ~36526u) % vec4<u32>(32u))) & -_wgslsmith_sub_vec4_i32(-vec4<i32>(global0.d.a, 1i, -2147483647i, -1i), ~vec4<i32>(u_input.a, global0.a, 29271i, u_input.a)));
    global0 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.c, global0.c)))) - global0.c), func_1(), Struct_3(~_wgslsmith_add_u32(0u, reverseBits(1u)), func_2(global0.b.a.x).d), func_1().b);
    let var_1 = select(vec2<bool>(true, true), vec2<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, global0.d.d.x), -global0.d.d) < (1i ^ u_input.a)), vec2<bool>(!any(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false))), (_wgslsmith_f_op_f32(global0.c - global0.c) > global0.c) || (any(vec3<bool>(false, false, false)) && all(vec2<bool>(false, false)))));
    let var_2 = select(~(~u_input.d >> (0u % 32u)), global0.d.b.a.x, any(select(select(vec2<bool>(var_1.x, true), select(vec2<bool>(false, true), var_1, var_1), !var_1), vec2<bool>(true || var_1.x, var_1.x), var_1)));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.c))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1728f + global0.c), global0.c, var_1.x)), _wgslsmith_div_f32(global0.c, func_2(0u).c)))));
    global0 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-792f - _wgslsmith_f_op_f32(global0.c - var_3.x))) - var_3.x), func_1(), func_1(), func_1().b);
    global0 = Struct_4(func_3(var_1.x, select(select(!vec3<bool>(true, true, var_1.x), !vec3<bool>(var_1.x, true, true), true), select(select(vec3<bool>(false, false, var_1.x), vec3<bool>(false, false, var_1.x), var_1.x), select(vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(false, false, false), vec3<bool>(var_1.x, true, var_1.x)), !vec3<bool>(true, false, var_1.x)), all(!vec4<bool>(var_1.x, true, var_1.x, var_1.x))), max(~var_2, u_input.d) >> (~1u % 32u)), func_2(_wgslsmith_mod_u32(~(~13697u), max(countOneBits(4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(global0.b.a.x, var_2, u_input.b.x, 32078u), vec4<u32>(56595u, u_input.d, global0.b.a.x, global0.d.c))))).b, _wgslsmith_f_op_f32(global0.c + _wgslsmith_f_op_f32(max(global0.c, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.c, 163f) * _wgslsmith_f_op_f32(1355f - global0.c))))), func_4(1289f, func_1(), func_1(), global0.d).d);
    global0 = Struct_4(abs(33212i), global0.d.b, -2010f, Struct_2(_wgslsmith_sub_i32(var_0.x << (0u % 32u), 31451i >> (0u % 32u)), func_2(~var_2 | ~1u).b, 47384u, vec2<i32>(-(i32(-1i) * -8764i), ~func_2(var_2).a)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0, var_0.yz << (global0.b.a.wx % vec2<u32>(32u)), -71230i);
}

