struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: i32,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 24>;

var<private> global1: array<bool, 4>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    var var_0 = firstTrailingBit(~u_input.a.www);
    global0 = array<u32, 24>();
    global1 = array<bool, 4>();
    let var_1 = Struct_3(Struct_1(442f, any(vec2<bool>(true, true))), 1u);
    var var_2 = arg_0;
    return Struct_2(28649u);
}

fn func_3() -> u32 {
    global0 = array<u32, 24>();
    var var_0 = reverseBits(u_input.b);
    let var_1 = Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(firstTrailingBit(~0u), ~u_input.b ^ _wgslsmith_dot_vec2_u32(vec2<u32>(8514u, 68097u), ~vec2<u32>(global0[_wgslsmith_index_u32(u_input.b, 24u)], 1926u)), 7555u), 24u)]);
    global1 = array<bool, 4>();
    var var_2 = _wgslsmith_mod_vec4_u32(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(20955u, 45452u, 80213u, var_1.a), vec4<u32>(4294967295u, 37292u, var_1.a, u_input.b), vec4<u32>(0u, var_1.a, 30630u, u_input.b))) ^ countOneBits(~vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(143768u, 24u)], 24u)], 37110u, global0[_wgslsmith_index_u32(26836u, 24u)]) & min(vec4<u32>(1u, 13052u, global0[_wgslsmith_index_u32(49957u, 24u)], 21652u), vec4<u32>(global0[_wgslsmith_index_u32(0u, 24u)], 4294967295u, var_1.a, var_1.a))), ~(~vec4<u32>(~u_input.b, 63607u, 1u, 4294967295u)));
    return 0u | _wgslsmith_div_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(func_2(Struct_2(var_1.a)).a, 24u)], 24u)], ~_wgslsmith_sub_u32(0u, var_1.a));
}

fn func_1(arg_0: u32, arg_1: vec2<f32>, arg_2: Struct_1) -> Struct_3 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_1.x)), arg_2.a);
    let var_1 = _wgslsmith_f_op_vec2_f32(-arg_1);
    var var_2 = func_2(Struct_2(max(arg_0, u_input.c.x) >> (u_input.b % 32u)));
    var_2 = Struct_2((func_3() | _wgslsmith_add_u32(~61796u, _wgslsmith_mult_u32(var_2.a, 83678u))) << (func_2(func_2(Struct_2(15504u))).a % 32u));
    let var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(arg_1.x, _wgslsmith_f_op_f32(-arg_2.a)))));
    return Struct_3(arg_2, ~24397u);
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: vec3<i32>, arg_3: f32) -> Struct_3 {
    global1 = array<bool, 4>();
    var var_0 = -704f;
    var var_1 = func_1(45131u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(arg_3, arg_3)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -834f))))), Struct_1(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-arg_3)), (_wgslsmith_f_op_f32(step(-950f, -558f)) <= 1202f) && all(!vec4<bool>(false, global1[_wgslsmith_index_u32(1u, 4u)], arg_1.a.b, false)))).a;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0))))), -1174f);
    var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1706f)));
    return Struct_3(arg_1.a, _wgslsmith_add_u32(_wgslsmith_sub_u32(904u, max(func_2(Struct_2(0u)).a, arg_1.b)), global0[_wgslsmith_index_u32(func_2(func_2(Struct_2(28494u))).a, 24u)]));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: i32) -> Struct_2 {
    let var_0 = select(vec3<bool>(false, !any(vec3<bool>(arg_1.b, arg_1.b, false)), arg_1.b), vec3<bool>(!((false || arg_1.b) & all(arg_2)), any(!select(vec4<bool>(false, arg_1.b, false, arg_2.x), vec4<bool>(arg_0.a.b, false, false, arg_2.x), arg_0.a.b)), abs(u_input.d) == abs(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 1i, u_input.a.x), vec4<i32>(-11080i, u_input.e, arg_3, 2147483647i)))), !vec3<bool>(func_1(0u, _wgslsmith_div_vec2_f32(vec2<f32>(arg_1.a, arg_0.a.a), vec2<f32>(-121f, arg_0.a.a)), Struct_1(arg_1.a, true)).a.b, arg_1.b, true));
    global0 = array<u32, 24>();
    global1 = array<bool, 4>();
    global1 = array<bool, 4>();
    var var_1 = all(select(select(select(select(var_0.xy, vec2<bool>(true, true), vec2<bool>(global1[_wgslsmith_index_u32(arg_0.b, 4u)], false)), var_0.yx, vec2<bool>(true, true)), vec2<bool>(true, var_0.x), !vec2<bool>(var_0.x, arg_0.a.b)), arg_2, arg_2.x));
    return func_2(func_2(Struct_2(arg_0.b)));
}

fn func_6(arg_0: Struct_2, arg_1: bool) -> Struct_3 {
    global1 = array<bool, 4>();
    global0 = array<u32, 24>();
    global1 = array<bool, 4>();
    let var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(~(~u_input.e), _wgslsmith_mult_i32(u_input.d, -u_input.d), ~(-u_input.e)) << (u_input.c % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(abs(~u_input.a.zxz), u_input.a.yyx));
    global0 = array<u32, 24>();
    return Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(426f)))), true), 74060u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-126f))), func_1(~1u, vec2<f32>(1432f, 868f), Struct_1(-212f, true)), ~(-u_input.a.xzy), -641f), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2622f * 1000f)), !global1[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(0u, 24u)], 4u)]), vec2<bool>(true, true), u_input.e | _wgslsmith_div_i32(~u_input.d, _wgslsmith_dot_vec2_i32(u_input.a.zy, vec2<i32>(2147483647i, u_input.e)))), true);
    let var_1 = Struct_2(~reverseBits(~82091u) ^ _wgslsmith_mod_u32(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(~var_0.b, 24u)], ~0u), func_3()));
    var var_2 = func_6(func_5(Struct_3(func_4(var_0.a.a, func_6(Struct_2(var_1.a), global1[_wgslsmith_index_u32(var_1.a, 4u)]), vec3<i32>(-45386i, u_input.e, u_input.a.x), _wgslsmith_f_op_f32(step(728f, var_0.a.a))).a, var_1.a), var_0.a, select(!(!vec2<bool>(true, global1[_wgslsmith_index_u32(1u, 4u)])), select(!vec2<bool>(global1[_wgslsmith_index_u32(var_0.b, 4u)], var_0.a.b), select(vec2<bool>(global1[_wgslsmith_index_u32(var_1.a, 4u)], true), vec2<bool>(false, false), false), global1[_wgslsmith_index_u32(90938u, 4u)] == var_0.a.b), vec2<bool>(true & var_0.a.b, true)), -77167i), !var_0.a.b).a.b;
    var_2 = _wgslsmith_div_u32(~0u, ~_wgslsmith_mod_u32(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(var_1.a, 24u)], 1u), u_input.b)) < ~_wgslsmith_div_u32(var_1.a, (global0[_wgslsmith_index_u32(32684u, 24u)] ^ 1u) >> (~var_1.a % 32u));
    let var_3 = select(select(vec3<bool>(true, true, u_input.e > 1i), vec3<bool>(true || global1[_wgslsmith_index_u32(~1u, 4u)], true, _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], var_1.a) >= 14302u), all(select(select(vec3<bool>(false, false, false), vec3<bool>(var_0.a.b, var_0.a.b, true), var_0.a.b), select(vec3<bool>(global1[_wgslsmith_index_u32(21588u, 4u)], global1[_wgslsmith_index_u32(1u, 4u)], global1[_wgslsmith_index_u32(36026u, 4u)]), vec3<bool>(true, global1[_wgslsmith_index_u32(var_0.b, 4u)], global1[_wgslsmith_index_u32(var_1.a, 4u)]), vec3<bool>(true, true, global1[_wgslsmith_index_u32(4294967295u, 4u)])), !vec3<bool>(var_0.a.b, true, global1[_wgslsmith_index_u32(var_0.b, 4u)])))), vec3<bool>(var_0.a.b, var_0.a.b, global1[_wgslsmith_index_u32(var_1.a, 4u)]), vec3<bool>(false, all(select(vec3<bool>(var_0.a.b, false, var_0.a.b), select(vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.b, 4u)], global1[_wgslsmith_index_u32(1u, 4u)]), vec3<bool>(var_0.a.b, global1[_wgslsmith_index_u32(var_1.a, 4u)], false), vec3<bool>(global1[_wgslsmith_index_u32(13101u, 4u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(7975u, 24u)], 4u)], var_0.a.b)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, global1[_wgslsmith_index_u32(u_input.c.x, 4u)]), false))), true));
    global1 = array<bool, 4>();
    let var_4 = 2585f;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~61186u, u_input.b, ~1u, global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(var_0.b, 24u)], 24u)]), _wgslsmith_div_f32(-1372f, var_0.a.a), _wgslsmith_div_i32(u_input.d, firstLeadingBit(~1577i)) << (~26485u % 32u), u_input.c, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-335f, -1361f) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.a, -254f) * _wgslsmith_f_op_f32(-var_0.a.a))))));
}

