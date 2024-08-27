struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<u32, 27>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<bool>, arg_1: f32, arg_2: vec4<i32>, arg_3: f32) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-arg_1);
    var var_1 = -1i;
    var var_2 = abs(-63525i);
    var_1 = i32(-1i) * -21182i;
    var var_3 = _wgslsmith_f_op_f32(-arg_3);
    return _wgslsmith_f_op_f32(select(-228f, arg_3, !((4294967295u >= ~global1[_wgslsmith_index_u32(0u, 27u)]) || true)));
}

fn func_2(arg_0: vec2<u32>, arg_1: i32, arg_2: f32) -> vec2<u32> {
    let var_0 = Struct_2(Struct_1(-1i, ~countOneBits(vec2<u32>(arg_0.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 27u)], 27u)])), _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_div_i32(-17279i, -16639i), -40802i, ~2147483647i), -vec3<i32>(global0.a, arg_1, arg_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec3<bool>(true, true, true), 292f, vec4<i32>(0i, arg_1, 2147483647i, global0.a), _wgslsmith_f_op_f32(1000f - global0.d))) * _wgslsmith_div_f32(global0.d, _wgslsmith_f_op_f32(step(2195f, 488f))))), select(!select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true)), select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), all(vec4<bool>(false, true, true, true))), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true))), true), Struct_1(min(1i, abs(_wgslsmith_mod_i32(41584i, 22147i))), vec2<u32>(global1[_wgslsmith_index_u32(min(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 27u)], 27u)], _wgslsmith_dot_vec3_u32(vec3<u32>(19032u, arg_0.x, 4294967295u), vec3<u32>(71189u, arg_0.x, 33993u))), 27u)], global0.b.x), ~(~global0.c), 695f));
    global1 = array<u32, 27>();
    global1 = array<u32, 27>();
    var var_1 = Struct_1(global0.c.x, global0.b, global0.c, var_0.a.d);
    var var_2 = !vec4<bool>(0u < _wgslsmith_clamp_u32(~global1[_wgslsmith_index_u32(1u, 27u)], ~arg_0.x, countOneBits(43342u)), !(!(var_0.b.x && false)), any(!var_0.b.yz), var_0.b.x);
    return ~(~abs(_wgslsmith_mult_vec2_u32(vec2<u32>(var_1.b.x, var_0.c.b.x), vec2<u32>(82952u, 4294967295u))));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>) -> Struct_1 {
    global0 = Struct_1(-16017i, global0.b, ~(~vec3<i32>(-27572i, -43336i ^ arg_0.c.a, arg_0.c.c.x)), arg_0.c.d);
    global0 = Struct_1(select(max(countOneBits(arg_1.x), -16025i), ~(max(global0.a, global0.a) | arg_0.c.a), any(vec3<bool>(true, false, any(arg_0.b.xy)))), ~(~_wgslsmith_sub_vec2_u32(arg_0.c.b, global0.b) >> (~reverseBits(vec2<u32>(32036u, 0u)) % vec2<u32>(32u))), (min(-arg_0.c.c, vec3<i32>(0i, -15131i, global0.c.x)) << (~vec3<u32>(4294967295u, 28169u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 27u)], 27u)], 27u)]) % vec3<u32>(32u))) << ((~vec3<u32>(arg_0.c.b.x, 40218u, 4294967295u) << (~firstTrailingBit(vec3<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(49349u, 27u)], 27u)], 27u)], global0.b.x)) % vec3<u32>(32u))) % vec3<u32>(32u)), 1f);
    var var_0 = Struct_2(Struct_1(global0.c.x, vec2<u32>((arg_0.a.b.x ^ 0u) & (23748u ^ arg_0.a.b.x), ~0u), -firstLeadingBit(arg_0.c.c), 957f), select(!arg_0.b, vec3<bool>(!arg_0.b.x, true, true), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-1006f)), global0.d)) == _wgslsmith_f_op_f32(f32(-1f) * -761f)), Struct_1(_wgslsmith_add_i32(countOneBits(arg_1.x | arg_0.c.c.x), firstLeadingBit(arg_0.a.c.x)), firstLeadingBit(vec2<u32>(_wgslsmith_div_u32(arg_0.c.b.x, u_input.a), ~59721u)), min(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_1.x, arg_0.a.c.x, global0.a), _wgslsmith_mult_vec3_i32(vec3<i32>(global0.a, 0i, 1i), global0.c), _wgslsmith_mod_vec3_i32(vec3<i32>(40756i, -2147483647i, 40638i), vec3<i32>(global0.a, 0i, 36812i))), -arg_0.c.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1153f) + 687f)));
    global1 = array<u32, 27>();
    var_0 = Struct_2(Struct_1(var_0.c.a, max(~_wgslsmith_mult_vec2_u32(var_0.c.b, var_0.c.b), _wgslsmith_add_vec2_u32(max(arg_0.a.b, vec2<u32>(u_input.a, global0.b.x)), _wgslsmith_div_vec2_u32(vec2<u32>(22533u, global1[_wgslsmith_index_u32(14473u, 27u)]), vec2<u32>(global0.b.x, global1[_wgslsmith_index_u32(97007u, 27u)])))), select(reverseBits(arg_0.a.c) << ((vec3<u32>(var_0.a.b.x, 61219u, var_0.c.b.x) & vec3<u32>(u_input.a, 84314u, global1[_wgslsmith_index_u32(80204u, 27u)])) % vec3<u32>(32u)), arg_0.c.c << (_wgslsmith_div_vec3_u32(vec3<u32>(0u, 1u, global0.b.x), vec3<u32>(var_0.c.b.x, 14039u, var_0.a.b.x)) % vec3<u32>(32u)), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), var_0.b)), _wgslsmith_f_op_f32(min(310f, _wgslsmith_f_op_f32(trunc(1181f))))), arg_0.b, Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(21081i, 1i, select(var_0.c.a, arg_0.c.a, false), -18152i), max(_wgslsmith_div_vec4_i32(vec4<i32>(arg_1.x, arg_0.a.c.x, 28782i, global0.a), vec4<i32>(52055i, 1i, global0.a, arg_0.c.a)), vec4<i32>(-1i, 1i, 50677i, 2147483647i))), var_0.c.b, countOneBits(vec3<i32>(-2147483647i >> (u_input.a % 32u), 15278i, max(var_0.c.a, -23575i))), -1187f));
    return var_0.c;
}

fn func_1() -> Struct_2 {
    global0 = Struct_1(0i, vec2<u32>(_wgslsmith_add_u32(min(_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(u_input.a, 27u)], global1[_wgslsmith_index_u32(0u, 27u)], global1[_wgslsmith_index_u32(global0.b.x, 27u)], global0.b.x), vec4<u32>(0u, global1[_wgslsmith_index_u32(4294967295u, 27u)], 0u, 0u)), max(global1[_wgslsmith_index_u32(7781u, 27u)], global0.b.x)), ~reverseBits(0u)), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(16348u, 79465u), global0.b), ~vec2<u32>(u_input.a, global0.b.x))), vec3<i32>(~4284i, -30589i, global0.c.x), _wgslsmith_f_op_f32(-global0.d));
    global0 = func_4(Struct_2(Struct_1(min(0i & global0.a, ~(-33184i)), _wgslsmith_add_vec2_u32(global0.b, ~vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(27103u, 27u)], 27u)], 61512u)), abs(vec3<i32>(-20659i, global0.a, 0i)), 1242f), vec3<bool>(true, true, true), Struct_1(~abs(2147483647i), func_2(global0.b, _wgslsmith_mult_i32(global0.a, 24497i), _wgslsmith_f_op_f32(min(-357f, global0.d))), vec3<i32>(global0.a, -1i, _wgslsmith_add_i32(51500i, global0.a)), -2511f)), countOneBits(~vec2<i32>(i32(-1i) * -18668i, global0.c.x)));
    return Struct_2(Struct_1(_wgslsmith_mult_i32(func_4(Struct_2(Struct_1(global0.c.x, global0.b, vec3<i32>(global0.c.x, global0.c.x, -19746i), 2350f), vec3<bool>(true, false, true), Struct_1(18946i, vec2<u32>(43464u, 43701u), global0.c, 1064f)), abs(global0.c.zy)).a, _wgslsmith_sub_i32(-2147483647i, 1i)), _wgslsmith_mod_vec2_u32(func_4(Struct_2(Struct_1(global0.c.x, vec2<u32>(u_input.a, 5419u), global0.c, global0.d), vec3<bool>(false, false, true), Struct_1(1i, global0.b, global0.c, global0.d)), vec2<i32>(global0.a, 11629i) | global0.c.xz).b, vec2<u32>(~0u, 51782u)), vec3<i32>(_wgslsmith_dot_vec3_i32(select(global0.c, vec3<i32>(global0.c.x, 0i, global0.a), true), vec3<i32>(261i, global0.c.x, global0.a)), global0.c.x, min(_wgslsmith_div_i32(global0.a, global0.c.x), global0.c.x & -2147483647i)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(346f, 1109f, true)), global0.d))), vec3<bool>(true, false, false), func_4(Struct_2(func_4(Struct_2(Struct_1(1i, global0.b, vec3<i32>(-43459i, 1i, global0.c.x), global0.d), vec3<bool>(true, false, false), Struct_1(global0.a, vec2<u32>(4294967295u, global0.b.x), global0.c, global0.d)), ~global0.c.xx), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), Struct_1(abs(2147483647i), global0.b, global0.c >> (vec3<u32>(global1[_wgslsmith_index_u32(25728u, 27u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 27u)], 27u)], 27u)], 68814u) % vec3<u32>(32u)), 1136f)), global0.c.zx));
}

fn func_5(arg_0: i32, arg_1: i32, arg_2: Struct_2, arg_3: bool) -> f32 {
    let var_0 = func_1().c.c.x;
    var var_1 = false;
    var var_2 = _wgslsmith_sub_vec3_i32(arg_2.c.c, -arg_2.a.c);
    let var_3 = 8758u;
    let var_4 = 10879i | var_0;
    return 1172f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(min(579f, _wgslsmith_f_op_f32(func_5(_wgslsmith_clamp_i32(-2147483647i | global0.c.x, 28207i ^ global0.c.x, -70484i >> (global0.b.x % 32u)), -max(global0.c.x, global0.c.x), func_1(), true)))), _wgslsmith_f_op_f32(max(1335f, 4350f)));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-504f, _wgslsmith_f_op_f32(var_0.x * global0.d)))) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(var_0.x)), -307f)))));
    var var_2 = func_1().c;
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(458f, -949f), vec2<f32>(1000f, -875f), true)))), vec2<f32>(var_1.x, -654f)))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, global0.d) - vec2<f32>(-213f, var_0.x)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1483f, -1393f), vec2<f32>(var_1.x, global0.d), vec2<bool>(true, true)))))))));
    let var_3 = func_1();
    let var_4 = firstLeadingBit(reverseBits(countOneBits(select(_wgslsmith_div_vec3_u32(vec3<u32>(var_2.b.x, 42922u, global1[_wgslsmith_index_u32(global0.b.x, 27u)]), vec3<u32>(var_2.b.x, u_input.a, global1[_wgslsmith_index_u32(4294967295u, 27u)])), firstLeadingBit(vec3<u32>(59107u, var_2.b.x, 27446u)), func_1().b))));
    var_0 = vec2<f32>(_wgslsmith_div_f32(-1839f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(322f - var_3.a.d)) + _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-103f, var_1.x), var_1.x)))), _wgslsmith_f_op_f32(var_3.c.d * 2512f));
    var var_5 = vec4<u32>(u_input.a, var_4.x, abs(_wgslsmith_dot_vec3_u32(var_4, ~var_4)) ^ _wgslsmith_mult_u32(u_input.a, 5818u), 1u);
    let var_6 = Struct_1(abs(abs(0i) & select(_wgslsmith_mod_i32(2147483647i, -26i), 1i, true)), abs(vec2<u32>(0u << (~global0.b.x % 32u), 15858u)), reverseBits(var_3.c.c), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + 504f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(537f + var_0.x) - 287f)))));
    let x = u_input.a;
    s_output = StorageBuffer(-vec2<i32>(-var_2.c.x, _wgslsmith_mod_i32(var_6.c.x, var_3.c.c.x)) ^ var_6.c.zy, _wgslsmith_mult_i32(func_1().a.c.x, -25376i), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(countOneBits(var_2.b.x), firstTrailingBit(87384u), var_3.c.b.x, global1[_wgslsmith_index_u32(u_input.a, 27u)] << (32436u % 32u)), _wgslsmith_div_vec4_u32(~vec4<u32>(var_6.b.x, var_4.x, 4294967295u, var_6.b.x), vec4<u32>(global1[_wgslsmith_index_u32(global0.b.x, 27u)], var_2.b.x, u_input.a, 0u))), func_2(vec2<u32>(_wgslsmith_add_u32(var_3.c.b.x, var_4.x), abs(58655u)), abs(reverseBits(var_2.a)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-911f, -1330f))))).x, ~_wgslsmith_mult_u32(~var_5.x, global1[_wgslsmith_index_u32(98398u, 27u)]), _wgslsmith_mod_u32(1u, 4294967295u)), firstLeadingBit(var_2.c.x), ~vec2<u32>(var_5.x, 4294967295u) ^ min(var_4.xz << (_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 4576u), vec2<u32>(var_6.b.x, 115196u)) % vec2<u32>(32u)), var_2.b));
}

