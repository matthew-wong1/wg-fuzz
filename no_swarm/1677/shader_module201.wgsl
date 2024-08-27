struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: vec2<f32>,
    d: vec4<f32>,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec4<bool>(true, false, true, true), Struct_1(vec2<u32>(1u, 0u), vec2<bool>(false, false), vec2<f32>(329f, 1422f), vec4<f32>(-706f, 1000f, -556f, 1541f), 2059u));

var<private> global1: array<i32, 30> = array<i32, 30>(1i, 13631i, -4248i, 0i, -1i, 1i, 0i, -18090i, 21605i, -753i, -16412i, 24392i, 47883i, 2147483647i, -13959i, -39592i, 16130i, -51050i, 2147483647i, 1i, -28861i, -25583i, -11533i, -16353i, 0i, 7410i, -1i, 21518i, 13560i, -1i);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec4<bool>) -> vec2<u32> {
    var var_0 = Struct_5(_wgslsmith_add_i32(i32(-1i) * -29431i, 0i));
    var var_1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1000f - global0.b.d.x), 1403f)) * vec2<f32>(431f, global0.b.d.x))));
    var var_2 = vec4<u32>(reverseBits(_wgslsmith_add_u32(~u_input.a.x, global0.b.a.x)), firstTrailingBit(~u_input.b), abs(global0.b.a.x), global0.b.a.x);
    var_0 = Struct_5(1i);
    var var_3 = (~firstTrailingBit(var_2.x) >> (39805u % 32u)) >= _wgslsmith_mult_u32(global0.b.a.x | var_2.x, ~_wgslsmith_sub_u32(min(57194u, u_input.b), _wgslsmith_clamp_u32(global0.b.a.x, 42567u, global0.b.e)));
    return _wgslsmith_sub_vec2_u32(~global0.b.a, vec2<u32>(u_input.a.x, firstTrailingBit(firstLeadingBit(_wgslsmith_dot_vec2_u32(var_2.zz, var_2.zw)))));
}

fn func_2(arg_0: vec2<f32>, arg_1: bool) -> Struct_2 {
    let var_0 = firstTrailingBit(~_wgslsmith_clamp_i32(~1i, -_wgslsmith_div_i32(global1[_wgslsmith_index_u32(1u, 30u)], global1[_wgslsmith_index_u32(50425u, 30u)]), ~(-2147483647i)));
    let var_1 = _wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.a.x, ~_wgslsmith_div_u32(global0.b.e, global0.b.e)), u_input.b) & u_input.b;
    let var_2 = global0.b.a.x;
    let var_3 = Struct_1(func_3(!vec4<bool>(arg_1 | arg_1, any(global0.a.xy), arg_1, !arg_1)), vec2<bool>(global0.a.x, !(var_1 == (u_input.a.x | 38607u))), _wgslsmith_f_op_vec2_f32(-arg_0), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, arg_0.x, 169f, -274f)), _wgslsmith_div_vec4_f32(vec4<f32>(333f, arg_0.x, 1220f, global0.b.d.x), vec4<f32>(global0.b.d.x, -1038f, global0.b.d.x, arg_0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-682f, global0.b.d.x, global0.b.d.x, arg_0.x)), vec4<bool>(true, arg_1, true, false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.b.d) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1276f, arg_0.x, arg_0.x, -383f)))))), ~global0.b.a.x);
    let var_4 = Struct_2(_wgslsmith_div_i32(_wgslsmith_clamp_i32(-firstTrailingBit(-23487i), -var_0, reverseBits(~(-2147483647i))), (-var_0 | 6340i) & (_wgslsmith_dot_vec3_i32(vec3<i32>(-5389i, 1i, var_0), vec3<i32>(2147483647i, var_0, -23157i)) | (-2147483647i >> (var_1 % 32u)))), Struct_1(_wgslsmith_mod_vec2_u32(vec2<u32>(global0.b.e, 4294967295u), ~u_input.a.yy), !global0.b.b, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.c.x, var_3.c.x)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(arg_0 + vec2<f32>(1066f, var_3.d.x)), vec2<f32>(186f, global0.b.d.x), all(var_3.b))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.c.x, -425f, 262f, -701f) - _wgslsmith_f_op_vec4_f32(global0.b.d * vec4<f32>(var_3.d.x, global0.b.c.x, var_3.d.x, var_3.c.x))), var_3.d), firstLeadingBit(_wgslsmith_mod_u32(~4294967295u, select(1u, 17529u, true)))), global0.b, var_3, var_3);
    return var_4;
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: vec4<i32>) -> Struct_3 {
    global0 = Struct_3(!global0.a, global0.b);
    let var_0 = vec3<bool>(true, arg_0.b.b.x, true);
    let var_1 = _wgslsmith_mult_vec3_u32(~(vec3<u32>(global0.b.a.x, abs(arg_0.b.a.x), ~u_input.a.x) ^ abs(vec3<u32>(0u, arg_0.e.a.x, u_input.b))), abs(vec3<u32>(_wgslsmith_mod_u32(global0.b.a.x, 0u), ~(~20572u), abs(~14387u))));
    global0 = Struct_3(global0.a, func_2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(298f, 461f)))), global0.a.x).e);
    var var_2 = Struct_5(~_wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483647i, 27231i, arg_1), vec3<i32>(arg_2.x, -6015i, arg_1)));
    return Struct_3(!select(vec4<bool>(!arg_0.d.b.x, true, var_0.x, arg_0.b.a.x <= 7637u), global0.a, true || global0.b.b.x), global0.b);
}

fn func_1() -> Struct_2 {
    let var_0 = vec4<i32>(-global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(11042u, 16872u, 4294967295u), u_input.a.www), 30u)], ~(~1i), -1i, _wgslsmith_clamp_i32(-global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b, 4294967295u), 30u)] & ~reverseBits(global1[_wgslsmith_index_u32(global0.b.e, 30u)]), max(countOneBits(global1[_wgslsmith_index_u32(u_input.b, 30u)]) | (global1[_wgslsmith_index_u32(u_input.a.x, 30u)] & -2147483647i), firstLeadingBit(~global1[_wgslsmith_index_u32(4294967295u, 30u)])), global1[_wgslsmith_index_u32(~4294967295u, 30u)]));
    var var_1 = global0.a.x;
    global0 = func_4(func_2(_wgslsmith_div_vec2_f32(global0.b.d.xz, global0.b.c), global0.b.b.x), ~_wgslsmith_div_i32(-1i, i32(-1i) * -2147483647i), -firstLeadingBit(var_0));
    var var_2 = 51616i;
    var_1 = select(true, global0.a.x, any(vec2<bool>(true, all(vec2<bool>(false, true)))));
    return func_2(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(129f, global0.b.d.x)))), global0.b.d.x), global0.b.b.x);
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_2) -> Struct_1 {
    global0 = func_4(arg_1, 1i, abs(vec4<i32>(0i, -18223i, _wgslsmith_clamp_i32(1i, firstLeadingBit(arg_0.x), arg_0.x), 50931i)));
    let var_0 = Struct_5(arg_1.a);
    global0 = func_4(Struct_2(~global1[_wgslsmith_index_u32(~47263u & arg_1.b.e, 30u)], Struct_1(~vec2<u32>(0u, u_input.a.x), select(global0.b.b, !global0.a.yy, vec2<bool>(arg_1.b.b.x, arg_1.d.b.x)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_1.d.d.wz), arg_1.e.c, arg_1.e.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1790f, 637f, global0.b.d.x, arg_1.c.c.x), vec4<f32>(166f, arg_1.d.c.x, 1000f, 690f), global0.a.x)) * vec4<f32>(arg_1.c.d.x, global0.b.d.x, 486f, global0.b.d.x)), 80113u), func_1().b, global0.b, Struct_1(~u_input.a.xy, !(!global0.a.xy), arg_1.c.d.xy, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.c.x, global0.b.c.x, global0.b.d.x, 2360f)), (0u & u_input.b) & 0u)), var_0.a, _wgslsmith_mod_vec4_i32(((vec4<i32>(12011i, 2147483647i, -1i, -1i) >> (vec4<u32>(7174u, u_input.b, 41852u, 4294967295u) % vec4<u32>(32u))) << (select(vec4<u32>(0u, 81872u, u_input.a.x, arg_1.e.a.x), u_input.a, global0.a) % vec4<u32>(32u))) << (vec4<u32>(36498u, ~55424u, _wgslsmith_clamp_u32(global0.b.e, 0u, 16220u), 16873u) % vec4<u32>(32u)), -(vec4<i32>(-1i) * -vec4<i32>(arg_1.a, arg_1.a, arg_0.x, global1[_wgslsmith_index_u32(u_input.a.x, 30u)]))));
    let var_1 = i32(-1i) * -26729i;
    var var_2 = vec4<i32>(_wgslsmith_sub_i32(countOneBits(_wgslsmith_mult_i32(reverseBits(var_1), ~77148i)), (-20753i << (_wgslsmith_mult_u32(global0.b.e, 77677u) % 32u)) >> (select(min(79126u, 1u), u_input.a.x, true) % 32u)), var_1 | ~min(-4349i, ~arg_1.a), _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(_wgslsmith_div_i32(arg_1.a, arg_0.x), 39635i, 0i, var_0.a)), vec4<i32>(firstTrailingBit(arg_0.x), -37349i, i32(-1i) * -1i, -1i) ^ select(max(vec4<i32>(var_1, -34102i, arg_0.x, 0i), vec4<i32>(0i, var_1, 48393i, 2147483647i)), vec4<i32>(1784i, var_1, -18761i, arg_1.a) >> (u_input.a % vec4<u32>(32u)), !arg_1.c.b.x)), _wgslsmith_div_i32(2147483647i, _wgslsmith_sub_i32(_wgslsmith_sub_i32(select(30185i, -1i, global0.a.x), arg_1.a), _wgslsmith_mod_i32(0i, 0i | arg_0.x))));
    return Struct_1(vec2<u32>(~max(4294967295u & global0.b.a.x, 1u), _wgslsmith_mult_u32(_wgslsmith_mod_u32(abs(1u), func_2(vec2<f32>(865f, global0.b.d.x), true).c.a.x), 53374u)), vec2<bool>(!(!(!global0.a.x)), global0.b.b.x & (firstTrailingBit(arg_1.a) == -3112i)), _wgslsmith_f_op_vec2_f32(global0.b.c + arg_1.c.c), _wgslsmith_f_op_vec4_f32(round(global0.b.d)), arg_1.d.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_sub_vec2_i32(-reverseBits(countOneBits(vec2<i32>(1i, -1i))), vec2<i32>(abs(1i), _wgslsmith_dot_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(26510u, 30u)], global1[_wgslsmith_index_u32(0u, 30u)], global1[_wgslsmith_index_u32(86364u, 30u)]), vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 30u)], -40231i, global1[_wgslsmith_index_u32(global0.b.a.x, 30u)])) | ~global1[_wgslsmith_index_u32(global0.b.a.x, 30u)])), func_1());
    global1 = array<i32, 30>();
    var var_1 = vec4<i32>(func_1().a, _wgslsmith_dot_vec2_i32(-vec2<i32>(1i, 1i), ~_wgslsmith_mod_vec2_i32(-vec2<i32>(0i, -7756i), countOneBits(vec2<i32>(-10855i, global1[_wgslsmith_index_u32(1u, 30u)])))), -(~66683i) & global1[_wgslsmith_index_u32(1u, 30u)], 2147483647i);
    let var_2 = Struct_5(func_1().a);
    let var_3 = Struct_4(-min(var_1.xx, _wgslsmith_sub_vec2_i32(vec2<i32>(1i, var_1.x), var_1.yz)), global0.b.a, ~u_input.b, _wgslsmith_clamp_u32(~0u, u_input.b, var_0.a.x));
    global1 = array<i32, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(abs(~var_1.x)) | global1[_wgslsmith_index_u32(26726u, 30u)], (global0.b.a.x << (_wgslsmith_mult_u32(~46241u, 1u) % 32u)) & 12175u, ~min(u_input.a.zxw, u_input.a.xyx), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(var_0.d.x, -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.x, 1220f))))), -287f);
}

