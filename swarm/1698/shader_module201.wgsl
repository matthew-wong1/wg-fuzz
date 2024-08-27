struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: bool,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: i32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<i32>, arg_2: f32) -> f32 {
    let var_0 = Struct_1(all(!vec4<bool>(true, arg_0.x | arg_0.x, select(global0.x, true, true), 46486u > u_input.b)), _wgslsmith_div_vec2_i32(select(_wgslsmith_mult_vec2_i32(-arg_1.xx, select(arg_1.wx, vec2<i32>(-26699i, -1i), global0.x)), vec2<i32>(-1i) * -u_input.a.xz, global0.x), arg_1.xy ^ vec2<i32>(-2147483647i, reverseBits(u_input.a.x))), global0.x);
    global0 = vec3<bool>(!all(select(vec4<bool>(var_0.a, true, var_0.a, var_0.c), select(vec4<bool>(true, true, false, var_0.c), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true)), all(vec3<bool>(global0.x, arg_0.x, var_0.c)))), !((u_input.b >> (~u_input.b % 32u)) > u_input.b), true);
    let var_1 = _wgslsmith_f_op_f32(-arg_2);
    global0 = select(!vec3<bool>(var_0.c, any(select(vec3<bool>(true, false, var_0.c), vec3<bool>(true, true, arg_0.x), false)), all(vec4<bool>(false, global0.x, false, global0.x)) | true), select(select(select(!vec3<bool>(true, var_0.c, var_0.a), !vec3<bool>(true, false, arg_0.x), select(vec3<bool>(true, global0.x, arg_0.x), vec3<bool>(true, false, false), vec3<bool>(global0.x, true, arg_0.x))), !select(vec3<bool>(false, true, global0.x), vec3<bool>(false, false, false), vec3<bool>(false, global0.x, true)), vec3<bool>(all(arg_0), false, true)), vec3<bool>(false & var_0.a, global0.x, true), vec3<bool>(true, true, true)), !(!(!arg_0.x) && false));
    global0 = !select(select(!select(vec3<bool>(var_0.c, arg_0.x, false), vec3<bool>(false, global0.x, global0.x), var_0.a), vec3<bool>(true, any(vec3<bool>(true, var_0.c, global0.x)), all(vec3<bool>(true, var_0.a, true))), true), vec3<bool>(!global0.x, any(vec3<bool>(global0.x, true, true)), true), !select(select(vec3<bool>(arg_0.x, true, true), vec3<bool>(arg_0.x, false, true), vec3<bool>(false, var_0.c, true)), vec3<bool>(true, true, true), vec3<bool>(false, var_0.c, false)));
    return -1532f;
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: u32, arg_3: vec4<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(!vec2<bool>(true, global0.x), min(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, -18875i, -1i, 1i), arg_1.a), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, 60360i, u_input.a.x, -15639i), vec4<i32>(2147483647i, u_input.a.x, arg_1.a.x, u_input.a.x))), arg_0.x)) + 678f)));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))) * _wgslsmith_f_op_f32(arg_3.x - _wgslsmith_f_op_f32(round(arg_0.x))));
    let var_1 = !vec2<bool>(true || !global0.x, global0.x);
    var var_2 = ~_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~(vec4<u32>(1u, u_input.c.x, u_input.c.x, 41332u) << (vec4<u32>(1u, arg_2, u_input.c.x, u_input.c.x) % vec4<u32>(32u))), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 35877u, 4294967295u, arg_2), _wgslsmith_div_vec4_u32(vec4<u32>(0u, arg_2, 4294967295u, 4294967295u), vec4<u32>(u_input.b, 1u, u_input.c.x, 4294967295u)))), vec4<u32>(min(arg_2, ~12909u), ~min(1u, arg_2), arg_2, _wgslsmith_clamp_u32(u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, arg_2), vec3<u32>(1u, 11994u, arg_2)), firstTrailingBit(u_input.b))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-3107f)))))) - arg_3.x);
    return Struct_1(!any(!(!vec3<bool>(true, global0.x, global0.x))), max(vec2<i32>(countOneBits(u_input.a.x & 18469i), _wgslsmith_clamp_i32(arg_1.a.x, -27389i, -arg_1.a.x)), u_input.a.xx), global0.x);
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: f32) -> vec3<i32> {
    global0 = vec3<bool>(!(-u_input.a.x != (arg_1.b.x << (u_input.b % 32u))) & !(all(vec4<bool>(true, global0.x, arg_1.c, global0.x)) || any(vec4<bool>(arg_1.a, arg_1.c, false, true))), arg_2.x != arg_0.x, true);
    global0 = select(!select(select(!vec3<bool>(global0.x, true, global0.x), vec3<bool>(false, false, false), true), !select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(false, arg_1.c, arg_1.c), vec3<bool>(true, arg_1.c, global0.x)), false), select(vec3<bool>(true, true, arg_1.b.x <= max(u_input.a.x, arg_1.b.x)), vec3<bool>(global0.x, any(global0.xx) || all(vec4<bool>(true, true, false, true)), true), vec3<bool>(all(global0.yx), arg_1.a, all(global0.zx))), true);
    global0 = vec3<bool>(false, arg_1.c, any(vec2<bool>(false, u_input.b > 40931u)) || any(!vec4<bool>(false, global0.x, global0.x, false)));
    let var_0 = Struct_3(u_input.a, firstTrailingBit(arg_1.b.x), _wgslsmith_f_op_vec2_f32(abs(arg_0.yy)));
    var var_1 = _wgslsmith_f_op_f32(abs(var_0.c.x));
    return -abs(vec3<i32>(1i, (i32(-1i) * -2147483647i) >> (abs(1u) % 32u), ~func_2(vec4<f32>(-903f, -1761f, -1358f, -978f), Struct_2(vec4<i32>(0i, 1i, -2147483647i, 1i)), 31605u, vec4<f32>(-1464f, -801f, arg_3, 2092f)).b.x));
}

fn func_1(arg_0: f32) -> vec4<i32> {
    let var_0 = Struct_3(_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, 1526f, arg_0, arg_0) + vec4<f32>(2190f, arg_0, -386f, arg_0)), func_2(vec4<f32>(arg_0, 858f, -782f, arg_0), Struct_2(vec4<i32>(u_input.a.x, 56131i, u_input.a.x, u_input.a.x)), 53255u, vec4<f32>(1000f, arg_0, -236f, 1118f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, arg_0) * vec3<f32>(-1282f, arg_0, arg_0)), 1f), vec3<i32>(u_input.a.x, 2147483647i, abs(-37993i))), u_input.a & u_input.a), 0i, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - 692f) - _wgslsmith_f_op_f32(-arg_0)), arg_0), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(arg_0 - arg_0), _wgslsmith_f_op_f32(step(-1000f, -2125f))))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(622f - arg_0), _wgslsmith_f_op_f32(floor(927f))), vec2<f32>(-669f, _wgslsmith_f_op_f32(abs(-1104f))), select(select(global0.yz, global0.xx, vec2<bool>(false, global0.x)), select(vec2<bool>(true, false), global0.yx, global0.x), var_0.b >= u_input.a.x))))));
    global0 = vec3<bool>(select(true || (true && global0.x), global0.x && all(select(vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(global0.x, global0.x, global0.x, global0.x), true)), true), select(false, all(select(vec4<bool>(global0.x, global0.x, global0.x, true), !vec4<bool>(true, global0.x, false, global0.x), select(vec4<bool>(false, global0.x, true, global0.x), vec4<bool>(global0.x, false, true, global0.x), global0.x))), !(true | global0.x)), true);
    var_1 = _wgslsmith_f_op_vec2_f32(ceil(var_0.c));
    var var_2 = Struct_2(vec4<i32>(firstTrailingBit(u_input.a.x), ~(-1i), _wgslsmith_add_i32(countOneBits(u_input.a.x), ~select(-44664i, u_input.a.x, false)), var_0.b));
    return abs(vec4<i32>(-2147483647i, var_0.a.x, var_0.a.x, reverseBits(0i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<bool>(any(!global0.yy), global0.x, global0.x);
    var var_0 = Struct_2(~func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1102f)) - -618f)));
    global0 = select(vec3<bool>(all(!(!vec2<bool>(true, global0.x))), !(!global0.x) || true, all(vec4<bool>(!global0.x, true, global0.x, true))), vec3<bool>(true, true, true), select(!vec3<bool>(global0.x & false, global0.x, true), !vec3<bool>(true, any(vec2<bool>(global0.x, true)), global0.x), -_wgslsmith_clamp_i32(52937i, 1i, var_0.a.x) <= u_input.a.x));
    var var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(-599f, -1847f)), -1057f, 1000f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1533f * _wgslsmith_div_f32(-988f, -749f)), -645f, _wgslsmith_f_op_f32(ceil(1664f))))));
    var_0 = Struct_2(vec4<i32>(_wgslsmith_mod_i32(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-283f, var_1.x, -802f, 167f)), Struct_2(var_0.a), 35877u, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, -1000f) - vec4<f32>(2717f, 1000f, var_1.x, var_1.x))).b.x, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(var_0.a.xww, vec3<i32>(7593i, u_input.a.x, var_0.a.x)), _wgslsmith_add_i32(-1i, 10880i))), reverseBits(1i | u_input.a.x), ~(func_4(vec4<f32>(-1764f, var_1.x, var_1.x, -1117f), Struct_1(true, u_input.a.yz, false), vec3<f32>(493f, var_1.x, -2275f), var_1.x).x >> (~4294967295u % 32u)), 25702i ^ -u_input.a.x));
    var var_2 = Struct_1(global0.x, vec2<i32>(40030i, -var_0.a.x), true);
    let x = u_input.a;
    s_output = StorageBuffer(max(~vec4<u32>(~u_input.c.x, 0u, _wgslsmith_clamp_u32(u_input.b, u_input.c.x, 1u), 7590u), ~(~(~vec4<u32>(46694u, u_input.b, 4294967295u, 24436u)))));
}

