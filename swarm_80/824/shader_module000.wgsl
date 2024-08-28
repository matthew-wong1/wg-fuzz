struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 14>;

var<private> global1: Struct_2 = Struct_2(Struct_1(36187u, vec4<i32>(-19126i, 0i, 0i, -13773i), 30411i, 1104f), vec2<u32>(1u, 112u));

var<private> global2: Struct_2 = Struct_2(Struct_1(62987u, vec4<i32>(14114i, i32(-2147483648), 0i, i32(-2147483648)), -11086i, 113f), vec2<u32>(0u, 18684u));

var<private> global3: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(Struct_1(1u, vec4<i32>(1i, 4466i, -37058i, 2147483647i), i32(-2147483648), -724f), vec2<u32>(0u, 16741u)), Struct_2(Struct_1(16357u, vec4<i32>(2147483647i, 2147483647i, -45663i, 2147483647i), 1i, -669f), vec2<u32>(58544u, 56243u)), Struct_2(Struct_1(10007u, vec4<i32>(-1i, i32(-2147483648), 44866i, 15561i), i32(-2147483648), 441f), vec2<u32>(1u, 0u)), Struct_2(Struct_1(16057u, vec4<i32>(2147483647i, 1i, i32(-2147483648), 2147483647i), 27339i, -1761f), vec2<u32>(4294967295u, 8670u)), Struct_2(Struct_1(4294967295u, vec4<i32>(-1i, -1i, 1i, 65127i), 35662i, -650f), vec2<u32>(0u, 0u)), Struct_2(Struct_1(1u, vec4<i32>(-1i, 2147483647i, 0i, 26999i), 31687i, -934f), vec2<u32>(56125u, 4294967295u)), Struct_2(Struct_1(54497u, vec4<i32>(-6079i, 27996i, 3497i, i32(-2147483648)), i32(-2147483648), 1546f), vec2<u32>(0u, 0u)), Struct_2(Struct_1(4294967295u, vec4<i32>(16121i, -1i, -32562i, -22431i), 3365i, 420f), vec2<u32>(0u, 4294967295u)), Struct_2(Struct_1(53642u, vec4<i32>(12620i, -93664i, 2147483647i, 1i), 1i, -1245f), vec2<u32>(127992u, 14780u)), Struct_2(Struct_1(4294967295u, vec4<i32>(2147483647i, 1i, 1708i, -20913i), 31446i, 965f), vec2<u32>(52094u, 4294967295u)), Struct_2(Struct_1(0u, vec4<i32>(55129i, 1i, 1i, 0i), 34440i, 403f), vec2<u32>(0u, 0u)), Struct_2(Struct_1(68054u, vec4<i32>(0i, 0i, 47667i, 1i), -15776i, 356f), vec2<u32>(4294967295u, 14025u)), Struct_2(Struct_1(4294967295u, vec4<i32>(0i, -99681i, i32(-2147483648), 2139i), 13618i, 1000f), vec2<u32>(25855u, 1564u)), Struct_2(Struct_1(45850u, vec4<i32>(37314i, -7882i, 2147483647i, 1i), -53783i, -885f), vec2<u32>(1u, 38693u)), Struct_2(Struct_1(43097u, vec4<i32>(-23922i, i32(-2147483648), 3475i, i32(-2147483648)), 2147483647i, 785f), vec2<u32>(22214u, 4294967295u)), Struct_2(Struct_1(4294967295u, vec4<i32>(-34962i, 13380i, 1i, 0i), -50964i, -898f), vec2<u32>(4294967295u, 4294967295u)), Struct_2(Struct_1(77439u, vec4<i32>(0i, i32(-2147483648), i32(-2147483648), 19779i), 2147483647i, 335f), vec2<u32>(4294967295u, 1u)), Struct_2(Struct_1(10176u, vec4<i32>(0i, -25929i, -16436i, 0i), 0i, 1069f), vec2<u32>(31044u, 28299u)), Struct_2(Struct_1(26743u, vec4<i32>(31226i, -31646i, 1i, -6296i), i32(-2147483648), 1322f), vec2<u32>(4294967295u, 1u)), Struct_2(Struct_1(24539u, vec4<i32>(-1i, 1i, -34759i, -1i), -1128i, -513f), vec2<u32>(10136u, 19232u)), Struct_2(Struct_1(9051u, vec4<i32>(26622i, i32(-2147483648), 2147483647i, 2147483647i), 0i, -704f), vec2<u32>(77340u, 4294967295u)), Struct_2(Struct_1(0u, vec4<i32>(40307i, 0i, -1i, 0i), -72230i, -1000f), vec2<u32>(19314u, 26647u)));

var<private> global4: bool = false;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    var var_0 = 2147483647i;
    let var_1 = ~global2.a.b.x;
    var var_2 = Struct_1(u_input.b, ~reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(2785i, u_input.a, 9502i, global1.a.c), abs(arg_0.b))), global2.a.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-131f)), -1392f)))));
    let var_3 = min(vec3<u32>(arg_0.a, ~_wgslsmith_dot_vec2_u32(firstTrailingBit(global2.b), firstLeadingBit(vec2<u32>(u_input.b, 1u))), 195u), ~_wgslsmith_mod_vec3_u32((vec3<u32>(13757u, global2.a.a, arg_0.a) | vec3<u32>(global1.b.x, 1u, var_2.a)) & ~vec3<u32>(arg_0.a, arg_0.a, global1.a.a), vec3<u32>(arg_0.a, 4294967295u, 1u) << (select(vec3<u32>(1u, arg_0.a, 1u), vec3<u32>(u_input.b, var_2.a, 24147u), false) % vec3<u32>(32u))));
    global0 = array<vec4<u32>, 14>();
    return !vec4<bool>(true, select(any(vec3<bool>(false, false, false)), all(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), true)), true), true, !any(vec3<bool>(false, false, false)));
}

fn func_2(arg_0: u32, arg_1: vec3<i32>) -> bool {
    global4 = all(select(func_3(Struct_1(arg_0, vec4<i32>(-31175i, -32894i, u_input.a, u_input.a), -35179i, global1.a.d)), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false)), false)) || true;
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.a.d, _wgslsmith_f_op_f32(f32(-1f) * -1490f))));
    var var_1 = (_wgslsmith_dot_vec4_u32(vec4<u32>(~global1.a.a, ~26465u, _wgslsmith_mult_u32(60767u, 0u), 4567u), ~vec4<u32>(u_input.d, global1.b.x, 1u, global2.a.a)) & (select(38613u, abs(global1.b.x), true) ^ ~firstTrailingBit(78804u))) & u_input.d;
    let var_2 = Struct_1(_wgslsmith_mod_u32(1u, global1.a.a), abs(global2.a.b), arg_1.x >> (global2.a.a % 32u), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.a.d))), -232f)));
    var_0 = _wgslsmith_f_op_f32(global1.a.d + _wgslsmith_f_op_f32(global2.a.d + _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(763f, global1.a.d)), _wgslsmith_f_op_f32(round(-326f)))));
    return all(!vec2<bool>(any(vec3<bool>(true, false, false)), false || any(vec2<bool>(false, false))));
}

fn func_4(arg_0: bool, arg_1: vec2<bool>) -> Struct_1 {
    let var_0 = ~max(~vec3<u32>(u_input.d, select(global2.b.x, u_input.b, false), global1.b.x << (u_input.d % 32u)), vec3<u32>(_wgslsmith_mult_u32(global2.a.a, 73100u), ~(~4294967295u), ~0u));
    let var_1 = arg_1.x;
    var var_2 = vec3<u32>(17683u, u_input.d, ~min(var_0.x, ~u_input.d));
    var var_3 = Struct_1(~global1.b.x, select(global2.a.b, ~u_input.c, !vec4<bool>(false, global1.a.d >= global2.a.d, global2.b.x >= 1u, !arg_0)), ~_wgslsmith_mult_i32(abs(i32(-1i) * -1i), -u_input.a), 428f);
    var var_4 = _wgslsmith_mod_u32(~_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(var_0, abs(vec3<u32>(var_3.a, 12732u, var_0.x))), ~(~var_2.x), countOneBits(var_2.x)), (var_2.x << (~abs(0u) % 32u)) << (abs(1u) % 32u));
    return Struct_1(var_0.x, abs(max(~(-vec4<i32>(0i, var_3.b.x, u_input.c.x, -64559i)), ~vec4<i32>(u_input.a, u_input.a, u_input.c.x, -1i))), _wgslsmith_mod_i32(global2.a.c, u_input.c.x), 414f);
}

fn func_1(arg_0: bool) -> bool {
    let var_0 = func_4(any(!select(!vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(true, false, arg_0), any(vec2<bool>(arg_0, false)))), select(vec2<bool>((1209f < global1.a.d) & arg_0, true), vec2<bool>(arg_0, any(vec4<bool>(true, arg_0, true, arg_0)) | true), !func_2(global2.b.x, firstTrailingBit(u_input.c.zww))));
    global2 = Struct_2(global1.a, global1.b);
    var var_1 = global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, u_input.d, 1u, global1.b.x) | _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global1.a.a, 0u, global2.a.a, 20339u), vec4<u32>(4130u, 41850u, 0u, 29420u)), vec4<u32>(57503u, 4294967295u, global1.a.a, global1.a.a)), ~min(~vec4<u32>(var_0.a, global1.a.a, u_input.b, 0u), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global2.a.a, u_input.b, global2.a.a), 14u)])), 91340u), 22u)];
    let var_2 = Struct_1(3498u, abs(global2.a.b), _wgslsmith_add_i32(~min(var_1.a.c, 32072i) ^ global2.a.b.x, global1.a.c), 2282f);
    global1 = Struct_2(Struct_1(~select(var_0.a, max(4294967295u, 0u), true), select(select(global2.a.b, vec4<i32>(-22460i, -26555i, 0i, 12906i), vec4<bool>(true, arg_0, arg_0, arg_0)) & u_input.c, _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(u_input.c, global2.a.b), -var_1.a.b), arg_0), _wgslsmith_mult_i32(select(var_0.b.x, _wgslsmith_clamp_i32(-53167i, global2.a.c, 52519i), func_3(var_2).x), 74121i), 630f), abs(global2.b));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 49354u;
    global3 = array<Struct_2, 22>();
    global2 = global3[_wgslsmith_index_u32(~abs(0u), 22u)];
    let var_1 = global3[_wgslsmith_index_u32(global2.a.a, 22u)];
    var var_2 = true;
    global4 = any(!vec3<bool>(func_1(true) || true, 41633u != _wgslsmith_add_u32(4294967295u, global1.b.x), true));
    var var_3 = vec2<u32>(~u_input.d | ~(~var_1.b.x & 79805u), 90518u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(212f, 741f, 106f))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -473f), _wgslsmith_f_op_f32(max(-365f, -862f)), var_1.a.d)))));
}

