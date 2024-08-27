struct Struct_1 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
    c: vec4<bool>,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 23>;

var<private> global1: array<vec4<f32>, 1>;

var<private> global2: Struct_2 = Struct_2(0u, vec3<i32>(-26908i, i32(-2147483648), -1i), vec4<bool>(true, true, true, true), -1078f, 1u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec4<u32> {
    var var_0 = ~(~(vec4<u32>(u_input.b, u_input.b, global2.e, global2.a) ^ vec4<u32>(u_input.b, 106086u, 4294967295u, 4294967295u)) ^ ~abs(vec4<u32>(35000u, 3867u, u_input.b, 26799u))) | ~vec4<u32>(0u, _wgslsmith_add_u32(~global2.a, ~4294967295u), 78124u, max(~global2.e, ~20008u));
    global1 = array<vec4<f32>, 1>();
    global0 = array<bool, 23>();
    let var_1 = Struct_2(~(~u_input.b), -min(select(_wgslsmith_clamp_vec3_i32(global2.b, vec3<i32>(1i, global2.b.x, global2.b.x), vec3<i32>(u_input.c.x, u_input.e, -2147483647i)), vec3<i32>(75252i, u_input.d, u_input.c.x), global2.a == 0u), vec3<i32>(i32(-1i) * -6708i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -17179i, global2.b.x), global2.b), -1i)), !select(select(select(vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(0u, 23u)], true), vec4<bool>(false, true, true, false), global2.c), select(global2.c, vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 23u)], false, global2.c.x, global2.c.x), true), select(vec4<bool>(global0[_wgslsmith_index_u32(1u, 23u)], global0[_wgslsmith_index_u32(38096u, 23u)], true, global2.c.x), global2.c, global2.c)), global2.c, global2.c), 280f, 2312u);
    global2 = Struct_2(var_1.a, ~var_1.b, select(select(!(!vec4<bool>(global2.c.x, var_1.c.x, false, global2.c.x)), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 23u)], global2.c.x, global0[_wgslsmith_index_u32(var_1.a, 23u)], true), all(select(vec3<bool>(true, global2.c.x, false), vec3<bool>(false, global2.c.x, false), vec3<bool>(global2.c.x, global0[_wgslsmith_index_u32(var_0.x, 23u)], global0[_wgslsmith_index_u32(44359u, 23u)])))), select(var_1.c, global2.c, !(var_1.c.x | true)), global2.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(357f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(1859f))))))), var_0.x);
    return _wgslsmith_clamp_vec4_u32(~(_wgslsmith_add_vec4_u32(select(vec4<u32>(4294967295u, 4294967295u, 58600u, 26026u), vec4<u32>(14029u, global2.a, 1u, u_input.b), var_1.c.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(12502u, u_input.b, 0u, var_0.x), vec4<u32>(u_input.b, 46912u, 4294967295u, var_1.e), vec4<u32>(var_0.x, 23221u, global2.a, global2.e))) << (vec4<u32>(_wgslsmith_mod_u32(var_1.e, var_1.e), abs(1u), var_0.x, var_0.x) % vec4<u32>(32u))), ~select(vec4<u32>(0u, ~0u, _wgslsmith_div_u32(global2.e, var_1.e), var_1.e), vec4<u32>(0u | global2.e, 54979u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 52545u, var_0.x, 52996u), vec4<u32>(53680u, global2.a, 31005u, u_input.b)), 1u), select(!global2.c, !vec4<bool>(global2.c.x, global0[_wgslsmith_index_u32(4294967295u, 23u)], true, var_1.c.x), !global2.c.x)), ~(~vec4<u32>(4294967295u << (global2.e % 32u), 2185u, var_1.e, _wgslsmith_div_u32(0u, 21326u))));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: vec3<i32>, arg_3: Struct_2) -> u32 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2.d))) - -1351f), -119f);
    var var_1 = var_0.x;
    let var_2 = Struct_1(global2.c.x, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2268f - -1077f)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(var_0.x, -975f, true)), _wgslsmith_f_op_f32(-arg_3.d)))), -450f));
    let var_3 = var_2;
    var var_4 = func_3();
    return abs(~abs(~arg_1.x) | firstLeadingBit(u_input.b));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: f32, arg_3: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.b.x)))));
    var var_1 = Struct_2(~35898u, max(select(vec3<i32>(-u_input.d, reverseBits(u_input.a.x), 1i), global2.b, any(global2.c.zzz)), countOneBits(global2.b)), vec4<bool>((50193i <= -global2.b.x) & !global2.c.x, global2.c.x, any(!global2.c), global2.c.x), arg_0, 56455u);
    global1 = array<vec4<f32>, 1>();
    global0 = array<bool, 23>();
    var var_2 = vec4<bool>(global0[_wgslsmith_index_u32(global2.a, 23u)], global2.c.x, (_wgslsmith_f_op_f32(global2.d * _wgslsmith_f_op_f32(545f - -660f)) <= 885f) & true, 1u > arg_3);
    return arg_1;
}

fn func_5(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: bool) -> vec2<f32> {
    global2 = Struct_2(u_input.b, vec3<i32>(_wgslsmith_dot_vec3_i32(global2.b, ~global2.b), 1i, max(~u_input.d, _wgslsmith_div_i32(-29049i, _wgslsmith_dot_vec2_i32(vec2<i32>(-11237i, 64155i), vec2<i32>(2147483647i, global2.b.x))))), select(global2.c, vec4<bool>(arg_1.x, global2.c.x, (arg_0.a != false) == arg_2, true), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global2.d, arg_0.b.x), _wgslsmith_f_op_f32(trunc(global2.d)))) > global2.d), arg_0.b.x, ~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(reverseBits(global2.e), reverseBits(u_input.b), ~0u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, global2.e, 4294967295u), vec3<u32>(4294967295u, 15412u, 24862u) & vec3<u32>(28062u, u_input.b, u_input.b))));
    global2 = Struct_2(21415u, global2.b, !select(select(global2.c, select(vec4<bool>(true, true, false, arg_0.a), vec4<bool>(true, true, global2.c.x, global0[_wgslsmith_index_u32(1u, 23u)]), vec4<bool>(false, false, global2.c.x, global2.c.x)), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), global2.c)), !select(global2.c, global2.c, true), global2.c), arg_0.b.x, 4294967295u);
    global1 = array<vec4<f32>, 1>();
    let var_0 = arg_0;
    var var_1 = 10322i;
    return _wgslsmith_f_op_vec2_f32(-func_4(_wgslsmith_f_op_f32(f32(-1f) * -628f), func_4(_wgslsmith_f_op_f32(f32(-1f) * -1000f), Struct_1(global0[_wgslsmith_index_u32(1u, 23u)], _wgslsmith_div_vec2_f32(vec2<f32>(arg_0.b.x, arg_0.b.x), vec2<f32>(global2.d, 1060f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)), ~(~global2.a)), global2.d, firstTrailingBit(~global2.a & ~global2.e)).b);
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_5(func_4(_wgslsmith_f_op_f32(round(222f)), Struct_1(global2.c.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global2.d, global2.d))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.d, global2.d)))), global2.d, func_2(-vec2<i32>(-1581i, u_input.a.x) ^ vec2<i32>(1i, -2147483647i), abs(vec2<u32>(0u, u_input.b)) << (vec2<u32>(u_input.b, global2.e) % vec2<u32>(32u)), abs(global2.b) >> (~vec3<u32>(0u, 38509u, global2.a) % vec3<u32>(32u)), Struct_2(global2.a, vec3<i32>(u_input.d, 12267i, u_input.c.x), !vec4<bool>(global0[_wgslsmith_index_u32(global2.e, 23u)], global0[_wgslsmith_index_u32(1u, 23u)], true, global0[_wgslsmith_index_u32(0u, 23u)]), global2.d, select(0u, 8090u, false)))), !select(global2.c.wwz, vec3<bool>(true, true, true), !select(vec3<bool>(global2.c.x, global2.c.x, global2.c.x), vec3<bool>(true, true, true), vec3<bool>(true, true, global2.c.x))), any(select(vec4<bool>(any(global2.c.zx), false, true, global0[_wgslsmith_index_u32(abs(4294967295u), 23u)]), select(global2.c, !global2.c, !vec4<bool>(global0[_wgslsmith_index_u32(global2.a, 23u)], false, false, true)), all(select(global2.c.zw, vec2<bool>(global2.c.x, true), vec2<bool>(global2.c.x, global0[_wgslsmith_index_u32(global2.a, 23u)])))))));
    return Struct_1(global2.c.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0 - vec2<f32>(-247f, 583f)))));
}

fn func_6(arg_0: bool, arg_1: Struct_1) -> Struct_2 {
    let var_0 = ~abs(~_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(u_input.b, 85937u)) << (~vec2<u32>(u_input.b, 46138u) % vec2<u32>(32u)));
    var var_1 = -619f;
    var_1 = 191f;
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-626f, 2828f));
    var var_3 = _wgslsmith_sub_i32(-_wgslsmith_mod_i32(-18650i, select(u_input.a.x, 17428i, global0[_wgslsmith_index_u32(global2.a, 23u)])), _wgslsmith_div_i32((global2.b.x | -10742i) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(global2.a, 0u, 22387u, global2.e), vec4<u32>(global2.a, 4294967295u, global2.a, 1u)) % 32u), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(global2.b.x, 1i, u_input.c.x), global2.b), reverseBits(global2.b)))) ^ _wgslsmith_mult_i32(-(~1i), i32(-1i) * -u_input.c.x);
    return Struct_2(_wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.b, select(4294967295u, ~var_0.x, !global0[_wgslsmith_index_u32(0u, 23u)])), _wgslsmith_dot_vec4_u32(select(vec4<u32>(1u, global2.a, var_0.x, var_0.x), vec4<u32>(20238u, var_0.x, var_0.x, u_input.b), global2.c.x) & (vec4<u32>(global2.e, 100495u, global2.a, var_0.x) << (vec4<u32>(u_input.b, 1111u, 12231u, var_0.x) % vec4<u32>(32u))), abs(select(vec4<u32>(global2.a, 35941u, 49934u, 11084u), vec4<u32>(1u, u_input.b, var_0.x, 0u), vec4<bool>(false, arg_0, arg_1.a, false))))), min(_wgslsmith_sub_vec3_i32(vec3<i32>(-36781i, -2147483647i, -u_input.e), abs(vec3<i32>(global2.b.x, u_input.a.x, u_input.c.x)) | reverseBits(global2.b)), global2.b), !select(vec4<bool>(arg_0 || true, true, true, true), global2.c, true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2.d)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-858f * 1084f) - _wgslsmith_f_op_f32(round(arg_1.b.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(377f, -1626f, true)) - _wgslsmith_f_op_f32(min(global2.d, arg_1.b.x))))), 7182u);
}

fn func_7(arg_0: Struct_2, arg_1: bool) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.d, _wgslsmith_f_op_f32(1290f * _wgslsmith_f_op_f32(select(1197f, -1046f, arg_1)))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(794f, arg_0.d))))))) * vec2<f32>(arg_0.d, _wgslsmith_div_f32(753f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d) + global2.d))));
    global2 = func_6(!(!arg_0.c.x), Struct_1(global0[_wgslsmith_index_u32(4294967295u, 23u)], var_0));
    var var_1 = select(vec2<bool>(false, func_6(arg_1, func_4(var_0.x, Struct_1(arg_0.c.x, vec2<f32>(var_0.x, -1623f)), _wgslsmith_f_op_f32(min(arg_0.d, 713f)), 4294967295u)).c.x), !global2.c.xx, !any(select(!vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 23u)], global2.c.x, true), vec4<bool>(global0[_wgslsmith_index_u32(arg_0.e, 23u)], false, false, true), select(arg_0.c, global2.c, arg_0.c))));
    return Struct_1(func_1().a, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_0.d, -933f)))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -614f)), _wgslsmith_f_op_vec2_f32(-var_0), !global2.c.yx)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2.d))), 1274f))) + global2.d);
    let var_1 = global2.c.wyy;
    var var_2 = func_7(func_6(!all(select(var_1.xz, var_1.yy, vec2<bool>(false, true))), func_1()), func_6(true, Struct_1(select(!var_1.x, !global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(~40489u, 23u)]), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(104f, global2.d), vec2<f32>(global2.d, global2.d)))))).c.x);
    global1 = array<vec4<f32>, 1>();
    let var_3 = global2.d;
    var_0 = 212f;
    global1 = array<vec4<f32>, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(~(_wgslsmith_add_i32(u_input.c.x, 92580i) ^ global2.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1360f, _wgslsmith_f_op_f32(-830f - -577f)), _wgslsmith_f_op_f32(ceil(func_4(var_2.b.x, Struct_1(true, var_2.b), var_2.b.x, 0u).b.x))))), ~(~vec4<u32>(~u_input.b, abs(22430u), ~2711u, global2.a)));
}

