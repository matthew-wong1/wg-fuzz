struct Struct_1 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_4;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: vec4<bool>, arg_3: vec4<i32>) -> f32 {
    var var_0 = _wgslsmith_add_i32(~arg_3.x, -24280i);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-179f, _wgslsmith_f_op_f32(round(global1.a.e)))));
    var var_2 = 1u;
    global1 = Struct_4(global1.a, ~abs(~_wgslsmith_div_u32(arg_0, 1u)));
    var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1.a.e - _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(floor(127f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.e + -434f) - global1.a.e)))));
    return global1.a.e;
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: Struct_2) -> u32 {
    var var_0 = Struct_2(select(select(select(select(global1.a.a, vec2<bool>(false, false), vec2<bool>(true, arg_0)), select(arg_2.c.a.xx, arg_2.c.a.yz, global1.a.b.a.wy), any(global1.a.b.a)), vec2<bool>(global1.a.a.x, true), !arg_2.c.a.x && true), !vec2<bool>(arg_2.b.b == global1.b, true), arg_2.a.x), global1.a.c, Struct_1(arg_2.b.a, 29157u), ~(~(_wgslsmith_mult_u32(41478u, u_input.d) & ~4294967295u)), _wgslsmith_f_op_f32(-global1.a.e));
    let var_1 = min(~(~_wgslsmith_mod_vec2_u32(min(vec2<u32>(0u, u_input.d), vec2<u32>(arg_2.d, arg_2.b.b)), _wgslsmith_sub_vec2_u32(vec2<u32>(var_0.d, 47561u), vec2<u32>(u_input.d, arg_2.d)))), vec2<u32>(arg_2.c.b, max(~26159u, 52581u)));
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.e * 1340f) + -1000f)), any(arg_2.b.a.zz))) < var_0.e;
    var var_3 = Struct_2(vec2<bool>(!var_0.b.a.x, any(var_0.c.a.yyx) && any(select(arg_2.c.a, arg_2.c.a, global1.a.c.a.x))), Struct_1(arg_2.b.a, ~arg_2.d), Struct_1(!(!(!arg_2.b.a)), 987u), 4294967295u, _wgslsmith_f_op_f32(f32(-1f) * -847f));
    let var_4 = _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(57669u << (var_0.c.b % 32u), ~var_3.d, 4294967295u, abs(u_input.d)), vec4<u32>(min(var_3.c.b, var_3.b.b), arg_2.c.b, var_3.b.b, ~var_0.c.b)), 2981u, ~_wgslsmith_sub_u32(~arg_2.c.b, ~arg_2.d)), ~select(vec3<u32>(var_0.c.b, 23096u, min(98310u, 0u)), firstTrailingBit(max(vec3<u32>(var_0.c.b, 1u, var_0.d), vec3<u32>(var_1.x, global1.b, 17124u))), vec3<bool>(true, true, true)));
    return ~(~_wgslsmith_clamp_u32(u_input.d, countOneBits(arg_2.c.b) >> (42654u % 32u), _wgslsmith_clamp_u32(16891u, 0u, global1.a.b.b)));
}

fn func_2() -> u32 {
    global0 = select(1u < _wgslsmith_clamp_u32(func_4(false, _wgslsmith_f_op_f32(func_3(29103u, global1.a.a.x, vec4<bool>(false, global1.a.c.a.x, global1.a.c.a.x, true), vec4<i32>(u_input.b.x, u_input.b.x, -32285i, -47009i))), Struct_2(global1.a.b.a.xw, Struct_1(global1.a.b.a, 1u), global1.a.c, 1u, -1025f)), global1.a.d, abs(_wgslsmith_clamp_u32(4294967295u, u_input.d, global1.a.b.b))), !all(!global1.a.a), !all(!global1.a.c.a));
    let var_0 = -15263i;
    global0 = !(global1.a.c.a.x | true);
    global1 = Struct_4(global1.a, _wgslsmith_mod_u32(0u, 4294967295u));
    var var_1 = _wgslsmith_sub_vec4_i32(countOneBits(~vec4<i32>(u_input.c.x, -13801i, u_input.a.x, 33378i)) ^ -vec4<i32>(-2147483647i, -1i, 55649i, 17254i), vec4<i32>(var_0, ~(-1i & u_input.a.x), 1i, _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(u_input.a.x, -14139i, var_0, -41050i)), vec4<i32>(35958i, 2147483647i, 44198i, var_0)))) >> (vec4<u32>(_wgslsmith_mod_u32(u_input.d, u_input.d), 1u, 0u, 4294967295u) % vec4<u32>(32u));
    return 26620u;
}

fn func_5(arg_0: u32, arg_1: Struct_4, arg_2: u32, arg_3: vec2<u32>) -> Struct_2 {
    global1 = Struct_4(Struct_2(vec2<bool>(all(vec4<bool>(arg_1.a.c.a.x, false, true, arg_1.a.c.a.x)), ~arg_0 < u_input.d), Struct_1(vec4<bool>(arg_1.a.a.x, false, u_input.a.x == u_input.b.x, arg_1.a.e >= -316f), ~(~1u)), Struct_1(select(vec4<bool>(true, arg_1.a.b.a.x, false, arg_1.a.c.a.x), select(vec4<bool>(false, global1.a.b.a.x, false, false), arg_1.a.b.a, arg_1.a.c.a.x), !arg_1.a.b.a), ~max(arg_3.x, arg_3.x)), ~select(40234u, 61288u, any(arg_1.a.b.a.zwx)), _wgslsmith_f_op_f32(func_3(1u, arg_1.a.b.a.x, arg_1.a.b.a, _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, u_input.b.x, u_input.a.x, u_input.b.x) << (vec4<u32>(arg_0, u_input.d, 4294967295u, arg_0) % vec4<u32>(32u)), abs(vec4<i32>(u_input.c.x, u_input.b.x, -2147483647i, 3183i)))))), 0u);
    let var_0 = -vec3<i32>(-countOneBits(-2147483647i), u_input.a.x, u_input.c.x) ^ select(~vec3<i32>(u_input.b.x, u_input.c.x, 2147483647i) | vec3<i32>(min(u_input.a.x, u_input.a.x), _wgslsmith_sub_i32(-2185i, -10444i), u_input.a.x >> (u_input.d % 32u)), vec3<i32>(_wgslsmith_mult_i32(-1i, u_input.b.x), reverseBits(-1i), ~u_input.b.x) ^ _wgslsmith_div_vec3_i32(-vec3<i32>(u_input.c.x, u_input.b.x, u_input.b.x), select(u_input.b, vec3<i32>(u_input.b.x, -2147483647i, u_input.a.x), global1.a.c.a.x)), vec3<bool>(true, true, any(!arg_1.a.b.a.zxx)));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-850f, 1000f)))), vec2<f32>(_wgslsmith_f_op_f32(arg_1.a.e + global1.a.e), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_1.a.e)), _wgslsmith_f_op_f32(abs(443f)))), global1.a.a.x)) * vec2<f32>(369f, global1.a.e));
    let var_2 = arg_1;
    global1 = arg_1;
    return Struct_2(select(select(select(var_2.a.c.a.ww, vec2<bool>(false, false), arg_1.a.c.a.xz), !arg_1.a.a, false), vec2<bool>(var_2.a.a.x, !any(vec4<bool>(arg_1.a.b.a.x, true, global1.a.c.a.x, var_2.a.c.a.x))), vec2<bool>(_wgslsmith_f_op_f32(min(global1.a.e, -182f)) <= _wgslsmith_f_op_f32(global1.a.e + -764f), var_2.a.b.a.x & true)), arg_1.a.b, Struct_1(select(!select(vec4<bool>(global1.a.a.x, var_2.a.c.a.x, arg_1.a.c.a.x, var_2.a.c.a.x), vec4<bool>(false, global1.a.b.a.x, true, var_2.a.b.a.x), var_2.a.c.a), select(select(global1.a.b.a, arg_1.a.b.a, var_2.a.c.a.x), select(vec4<bool>(global1.a.c.a.x, false, true, arg_1.a.a.x), vec4<bool>(var_2.a.c.a.x, global1.a.c.a.x, false, var_2.a.a.x), vec4<bool>(arg_1.a.b.a.x, global1.a.b.a.x, true, arg_1.a.b.a.x)), var_0.x == 2147483647i), global1.a.c.a.x), 1u), abs(abs(_wgslsmith_clamp_u32(0u, global1.b, arg_1.b) | arg_0)), _wgslsmith_f_op_f32(f32(-1f) * -264f));
}

fn func_1() -> Struct_1 {
    let var_0 = global1.a.a.x;
    let var_1 = Struct_4(func_5(func_2(), Struct_4(global1.a, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 32636u), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.d, 62422u), vec2<u32>(global1.b, global1.b)))), global1.b, vec2<u32>(u_input.d, func_2())), ~(((global1.b >> (4294967295u % 32u)) >> (~u_input.d % 32u)) | 1793u));
    let var_2 = !select(!(!vec2<bool>(global1.a.c.a.x, global1.a.c.a.x)), func_5(21634u, Struct_4(func_5(16467u, Struct_4(Struct_2(global1.a.c.a.xw, var_1.a.c, var_1.a.b, 53944u, -177f), 28441u), u_input.d, vec2<u32>(global1.b, 4294967295u)), ~4294967295u), u_input.d, ~_wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.a.b.b, 36315u), vec2<u32>(var_1.b, u_input.d), vec2<u32>(12590u, global1.b))).b.a.xw, select(~u_input.b.x < countOneBits(-24648i), !var_1.a.b.a.x, var_1.a.a.x));
    let var_3 = var_1;
    var var_4 = Struct_3(Struct_2(!func_5(~var_3.b, var_3, firstTrailingBit(48753u), vec2<u32>(23591u, 4294967295u)).c.a.zw, Struct_1(var_3.a.b.a, _wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.d, var_1.b), vec2<u32>(var_1.a.b.b, 0u), vec2<bool>(var_1.a.a.x, false)), countOneBits(vec2<u32>(u_input.d, 0u)))), var_3.a.b, ~_wgslsmith_div_u32(var_1.a.d, ~8186u), 1159f), select(firstLeadingBit(vec3<u32>(~23601u, 157518u | global1.b, _wgslsmith_div_u32(var_3.a.d, global1.b))), ~vec3<u32>(func_2(), 1u, u_input.d), global1.a.a.x));
    return func_5(~func_2(), Struct_4(var_4.a, var_4.a.c.b), ~var_1.a.c.b, reverseBits(var_4.b.xz)).c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = true;
    let var_2 = max(select(vec2<u32>(1u, func_2()), vec2<u32>(global1.a.b.b, min(42688u, var_0.b)), true), ~vec2<u32>(_wgslsmith_clamp_u32(var_0.b, u_input.d, 0u), var_0.b)) << (max(_wgslsmith_mult_vec2_u32(vec2<u32>(70012u, 1u), vec2<u32>(58977u, firstTrailingBit(1u))), _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.d, 36428u), vec2<u32>(var_0.b, 4294967295u)), vec2<u32>(global1.a.c.b, 26312u) & vec2<u32>(4294967295u, 67732u)), ~vec2<u32>(115399u, var_0.b))) % vec2<u32>(32u));
    var var_3 = Struct_4(Struct_2(!vec2<bool>(u_input.c.x < u_input.c.x, var_0.a.x || true), func_5(u_input.d, Struct_4(Struct_2(vec2<bool>(false, false), global1.a.c, var_0, var_2.x, -1309f), var_2.x), ~(~var_0.b), select(var_2, vec2<u32>(u_input.d, var_2.x), !var_0.a.zy)).c, Struct_1(select(global1.a.c.a, !vec4<bool>(global1.a.b.a.x, false, true, var_1), global1.a.c.a), var_2.x), var_0.b ^ 86453u, -787f), ~min(max(var_0.b, ~4294967295u), _wgslsmith_mod_u32(_wgslsmith_mod_u32(0u, u_input.d), 1u)));
    var_3 = Struct_4(var_3.a, _wgslsmith_mult_u32(~14779u, 1u));
    let var_4 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.a.e, -1559f, -978f) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-733f, var_3.a.e, -840f), vec3<f32>(global1.a.e, -1167f, 1347f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-119f, -295f, 731f)))) - vec3<f32>(_wgslsmith_f_op_f32(max(global1.a.e, 293f)), 897f, _wgslsmith_f_op_f32(var_3.a.e * 991f))), _wgslsmith_div_vec3_f32(vec3<f32>(-781f, _wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(-global1.a.e)), vec3<f32>(global1.a.e, var_3.a.e, var_3.a.e)), vec3<bool>(select(4294967295u, var_3.b, var_1) < (var_0.b >> (global1.a.c.b % 32u)), !all(vec4<bool>(var_0.a.x, true, var_0.a.x, global1.a.a.x)), true))));
    global0 = false;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(~(~(~u_input.a.x)), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, -22020i, 22090i, u_input.b.x), vec4<i32>(0i, u_input.c.x, u_input.b.x, 0i)), vec4<i32>(u_input.c.x, 33246i, u_input.c.x, u_input.a.x) | vec4<i32>(-2147483647i, u_input.b.x, -17801i, u_input.a.x)), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.c.x, u_input.b.x), u_input.b), -20180i))), _wgslsmith_add_u32(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(54350u, 0u), ~1u, _wgslsmith_mod_u32(var_3.b, var_2.x)) ^ min(1836u, global1.a.b.b >> (var_3.b % 32u)), var_2.x | func_5(global1.b, Struct_4(Struct_2(var_3.a.b.a.yz, var_3.a.b, Struct_1(vec4<bool>(false, true, true, var_3.a.c.a.x), global1.a.b.b), 4294967295u, var_4.x), 1u), 0u >> (var_3.b % 32u), var_2).d), -2147483647i);
}

