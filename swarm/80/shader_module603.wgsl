struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec2<i32>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: bool,
    d: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec3<u32>,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: vec4<i32>,
    d: bool,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: u32,
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

var<private> global0: array<Struct_3, 24>;

var<private> global1: Struct_4;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = i32(-1i) * -reverseBits(firstLeadingBit(u_input.a.x) >> (~607u % 32u));
    global1 = Struct_4(Struct_3(arg_0, select(select(global1.a.e.zz, select(global1.e.e.xy, global1.a.b, false), select(vec2<bool>(global1.a.e.x, global1.a.e.x), vec2<bool>(false, true), vec2<bool>(global1.d, true))), global1.a.e.zy, global1.a.e.yz), _wgslsmith_sub_vec3_u32(~(~vec3<u32>(arg_0.a, 4294967295u, arg_0.a)), vec3<u32>(min(global1.e.a.a, global1.a.d.e), ~u_input.d, global1.a.d.a)), Struct_1(1u, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(arg_0.b, vec3<f32>(global1.b.d, arg_0.b.x, global1.a.d.b.x)))), ~vec2<i32>(-9889i, -2147483647i) >> (vec2<u32>(arg_0.e, 4294967295u) % vec2<u32>(32u)), _wgslsmith_div_f32(global1.b.b.x, -723f), _wgslsmith_sub_u32(_wgslsmith_mult_u32(4294967295u, arg_0.a), ~arg_0.a)), !vec3<bool>(false | global1.d, true, global1.a.b.x)), Struct_1(4294967295u, _wgslsmith_f_op_vec3_f32(exp2(arg_0.b)), vec2<i32>(select(~var_0, arg_0.c.x >> (31303u % 32u), global1.d), 20188i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1063f - _wgslsmith_f_op_f32(arg_0.d - global1.a.d.b.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-533f, -138f, global1.d)))), global1.b.a), vec4<i32>(u_input.c.x, firstLeadingBit(~abs(19789i)), global1.b.c.x, abs(_wgslsmith_mod_i32(~0i, _wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(var_0, -1i))))), global1.b.c.x < ~(~(~1i)), Struct_3(global1.a.a, global1.a.e.xy, abs(global1.a.c), Struct_1(4294967295u, vec3<f32>(_wgslsmith_f_op_f32(select(292f, global1.a.d.b.x, true)), global1.e.d.b.x, -306f), countOneBits(abs(arg_0.c)), _wgslsmith_f_op_f32(step(2279f, 1711f)), 0u), global1.a.e));
    let var_1 = reverseBits(vec2<i32>(firstLeadingBit(select(24089i, -1i, true)), -36487i));
    let var_2 = ~1u;
    var var_3 = Struct_3(Struct_1(abs(global1.b.e) << (arg_0.a % 32u), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-950f - 259f) - _wgslsmith_f_op_f32(trunc(global1.e.a.d))), -481f, arg_0.b.x), abs(arg_0.c | u_input.c) ^ u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1045f)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-1103f, global1.b.b.x)), -158f, !global1.e.b.x))), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(arg_0.e, arg_0.a, var_2, 14874u)), vec4<u32>(var_2, _wgslsmith_mod_u32(u_input.b.x, 4446u), _wgslsmith_clamp_u32(global1.e.c.x, global1.b.e, arg_0.e), _wgslsmith_sub_u32(37573u, 0u)))), !vec2<bool>(true, global1.e.b.x), ~abs(vec3<u32>(~20637u, _wgslsmith_mult_u32(var_2, arg_0.a), 11359u)), arg_0, vec3<bool>(false, all(select(vec4<bool>(false, false, global1.e.e.x, global1.d), vec4<bool>(global1.a.b.x, global1.e.b.x, global1.a.e.x, true), true)), false));
    return select(any(vec4<bool>(!all(vec4<bool>(true, true, true, false)), global1.d, var_3.e.x, !var_3.b.x)), false, !any(vec4<bool>(false, all(vec4<bool>(false, true, true, var_3.b.x)), global1.d, true)));
}

fn func_2() -> Struct_3 {
    var var_0 = global1.b;
    var_0 = Struct_1(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(abs(global1.a.c.x) & _wgslsmith_add_u32(var_0.e, 8494u), 36421u, ~(~global1.b.e)), var_0.a), var_0.b, _wgslsmith_mult_vec2_i32(vec2<i32>(~global1.a.a.c.x, global1.e.d.c.x), vec2<i32>(_wgslsmith_mod_i32(2147483647i, var_0.c.x) | ~u_input.a.x, u_input.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) + _wgslsmith_f_op_f32(select(var_0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.b.x * global1.b.b.x)), func_3(global1.b)))), global1.e.c.x);
    let var_1 = vec3<f32>(-168f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1496f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1257f, 134f)) - _wgslsmith_f_op_f32(global1.b.b.x * 125f))), 134f)));
    let var_2 = firstTrailingBit(vec2<i32>(var_0.c.x, _wgslsmith_mult_i32(global1.b.c.x, i32(-1i) * -var_0.c.x)));
    global1 = Struct_4(Struct_3(global1.b, vec2<bool>(select(global1.e.e.x && false, 13384i >= var_0.c.x, any(global1.a.e)), global1.d), vec3<u32>(u_input.b.x, ~global1.b.a ^ 4294967295u, _wgslsmith_sub_u32(9451u, _wgslsmith_clamp_u32(53532u, 50654u, 0u))), global1.a.a, select(vec3<bool>(!global1.e.b.x, false, true), select(vec3<bool>(true, true, global1.a.e.x), select(global1.a.e, vec3<bool>(false, true, false), global1.e.e), func_3(global1.e.d)), vec3<bool>(global1.d, !global1.e.b.x, false))), global1.b, _wgslsmith_add_vec4_i32(global1.c, reverseBits(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(global1.c, vec4<i32>(6956i, 1i, var_2.x, 1i)), _wgslsmith_mult_vec4_i32(vec4<i32>(var_0.c.x, 23467i, global1.a.a.c.x, var_2.x), vec4<i32>(-1i, 23521i, global1.a.d.c.x, var_2.x))))), select(!func_3(Struct_1(var_0.e, vec3<f32>(global1.b.d, var_0.d, 177f), vec2<i32>(var_2.x, global1.e.a.c.x), 300f, var_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - var_1.x)) >= 995f, true), global1.a);
    return global1.e;
}

fn func_4(arg_0: i32, arg_1: Struct_4, arg_2: Struct_4, arg_3: Struct_2) -> bool {
    var var_0 = ~u_input.d;
    global0 = array<Struct_3, 24>();
    var_0 = global1.a.d.e;
    global1 = arg_1;
    var var_1 = _wgslsmith_mult_u32(~(1u >> ((arg_3.a.e ^ arg_3.a.a) % 32u)), 1u);
    return global1.e.e.x;
}

fn func_1(arg_0: Struct_1) -> Struct_3 {
    var var_0 = 1000f;
    var var_1 = all(vec3<bool>(true, global1.e.b.x, global1.d));
    var var_2 = Struct_2(arg_0, 9356u, !func_4(_wgslsmith_mod_i32(-1i, _wgslsmith_mod_i32(-2147483647i, u_input.a.x)), Struct_4(func_2(), arg_0, firstTrailingBit(vec4<i32>(u_input.a.x, global1.c.x, -19254i, -1i)), true || global1.e.e.x, Struct_3(Struct_1(19161u, vec3<f32>(arg_0.d, arg_0.b.x, 196f), vec2<i32>(24810i, 0i), -816f, u_input.d), vec2<bool>(true, global1.a.e.x), global1.a.c, Struct_1(arg_0.e, global1.b.b, vec2<i32>(arg_0.c.x, global1.a.a.c.x), -328f, arg_0.a), vec3<bool>(global1.e.e.x, false, global1.e.b.x))), Struct_4(func_2(), func_2().d, global1.c, global1.a.e.x, global1.a), Struct_2(func_2().d, ~65480u, true, global1.c.wxy)), global1.c.yyz);
    var_2 = Struct_2(global1.a.a, ~u_input.d, !global1.d, _wgslsmith_sub_vec3_i32(global1.c.wzz, abs(_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(var_2.d, var_2.d), ~vec3<i32>(-1i, -2147483647i, u_input.c.x)))));
    var_1 = !global1.d;
    return global0[_wgslsmith_index_u32(min(firstTrailingBit(global1.b.e), ~_wgslsmith_mult_u32(countOneBits(global1.a.d.a), 4294967295u)), 24u)];
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3) -> vec3<f32> {
    global0 = array<Struct_3, 24>();
    global0 = array<Struct_3, 24>();
    global0 = array<Struct_3, 24>();
    var var_0 = (vec2<i32>(-abs(-13590i), select(~77592i, u_input.c.x & 1i, true)) ^ -u_input.c) >> (countOneBits(~(~vec2<u32>(1u, 0u)) << (arg_1.c.xy % vec2<u32>(32u))) % vec2<u32>(32u));
    var var_1 = _wgslsmith_f_op_f32(ceil(-1026f));
    return _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1.e.a.d - -615f), -193f)), _wgslsmith_f_op_f32(abs(arg_1.a.d)), _wgslsmith_f_op_f32(-arg_0.a.b.x)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.d.b - _wgslsmith_f_op_vec3_f32(step(arg_1.d.b, arg_0.d.b)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_4(Struct_3(Struct_1(global1.e.c.x, _wgslsmith_f_op_vec3_f32(func_5(func_1(Struct_1(global1.a.a.e, global1.b.b, vec2<i32>(31363i, global1.c.x), global1.b.b.x, 23800u)), global0[_wgslsmith_index_u32(u_input.d >> (29302u % 32u), 24u)])), -global1.a.d.c, 319f, 32836u), select(select(!vec2<bool>(false, global1.a.b.x), func_1(global1.e.a).b, func_1(Struct_1(u_input.b.x, global1.b.b, u_input.a, 429f, u_input.d)).b), select(!global1.a.b, !global1.e.e.yz, global1.e.e.yy), !(!vec2<bool>(false, global1.a.b.x))), min(global1.e.c, global1.e.c), Struct_1(19334u ^ u_input.b.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.e.d.d, -748f, -1587f)), vec2<i32>(func_1(Struct_1(u_input.d, global1.a.d.b, u_input.c, 443f, 33066u)).d.c.x, i32(-1i) * -10036i), global1.e.a.b.x, global1.a.a.e), vec3<bool>(global1.e.e.x, any(vec2<bool>(true, global1.e.b.x)), global1.e.b.x)), func_2().d, _wgslsmith_clamp_vec4_i32(vec4<i32>(-6344i, 2147483647i, reverseBits(-1i), -19739i) ^ (global1.c << (_wgslsmith_sub_vec4_u32(vec4<u32>(global1.b.e, 30362u, 20416u, global1.b.a), vec4<u32>(4294967295u, 4294967295u, u_input.d, global1.a.d.e)) % vec4<u32>(32u))), abs((global1.c | vec4<i32>(global1.a.a.c.x, 1i, -33442i, -71574i)) ^ _wgslsmith_div_vec4_i32(vec4<i32>(u_input.c.x, 0i, global1.c.x, global1.b.c.x), vec4<i32>(u_input.c.x, u_input.c.x, -28389i, u_input.c.x))), vec4<i32>(-max(global1.a.a.c.x, 34574i), -(~(-1i)), u_input.c.x, _wgslsmith_mult_i32(u_input.a.x, u_input.a.x >> (u_input.b.x % 32u)))), func_3(global1.b), global1.e);
    global0 = array<Struct_3, 24>();
    var var_0 = func_1(func_1(Struct_1(global1.b.a, vec3<f32>(_wgslsmith_div_f32(global1.e.d.d, global1.b.d), _wgslsmith_f_op_f32(-global1.b.d), func_1(Struct_1(global1.b.a, global1.a.a.b, vec2<i32>(1i, u_input.a.x), global1.e.a.d, 0u)).d.b.x), ~min(vec2<i32>(0i, u_input.c.x), vec2<i32>(global1.a.d.c.x, global1.a.a.c.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1601f, -717f)), _wgslsmith_f_op_f32(sign(global1.e.d.b.x))), _wgslsmith_sub_u32(4294967295u, ~global1.a.d.a))).a).d;
    var var_1 = -1000f;
    var_0 = global1.a.a;
    var_0 = Struct_1(_wgslsmith_div_u32(global1.b.a & _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.b.x, 4294967295u), global1.e.c), _wgslsmith_sub_u32(25125u, 14576u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d, 380f, -665f) * vec3<f32>(-879f, 264f, var_0.b.x)))), select(firstLeadingBit(vec2<i32>(-u_input.c.x, u_input.a.x)), var_0.c, global1.e.d.a <= 1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1577f)) * _wgslsmith_f_op_f32(841f - _wgslsmith_f_op_f32(f32(-1f) * -574f))), 0u);
    let var_2 = Struct_4(Struct_3(Struct_1(25542u, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(var_0.b, global1.b.b))), abs(vec2<i32>(-2147483647i, 1i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.d, -1104f)) + global1.e.d.d), 3891u), vec2<bool>(global1.d, 0u != _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 2834u, global1.e.a.a), global1.a.c)), global1.a.c ^ (global1.e.c | ~vec3<u32>(1u, 56636u, 0u)), Struct_1(~(~1u), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d, 1312f, var_0.b.x) - _wgslsmith_f_op_vec3_f32(func_5(global1.a, global0[_wgslsmith_index_u32(u_input.b.x, 24u)]))), vec2<i32>(u_input.a.x, 1i), -498f, var_0.e), !vec3<bool>(global1.e.e.x, false, global1.a.b.x)), global1.b, reverseBits(vec4<i32>(-1i) * -select(global1.c, global1.c, vec4<bool>(false, false, false, false))), global1.d, func_1(func_2().d));
    let x = u_input.a;
    s_output = StorageBuffer(global1.c);
}

