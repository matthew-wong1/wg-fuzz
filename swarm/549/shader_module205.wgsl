struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: bool,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec2<i32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: f32 = 657f;

var<private> global2: array<bool, 31>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec2<i32>) -> vec4<u32> {
    let var_0 = vec4<u32>(u_input.b, max(arg_0.d.x, 2512u), abs(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, u_input.d.x, 35314u, u_input.b), arg_0.d | vec4<u32>(17532u, arg_1.x, 4294967295u, global0.b.a.x)), vec4<u32>(arg_1.x, 1u, ~37271u, max(arg_1.x, global0.e.a.a.x)))), ~(~(~(~arg_1.x))));
    let var_1 = _wgslsmith_div_vec4_u32(min(vec4<u32>(arg_0.a.x, ~1u, ~(~4294967295u), ~var_0.x), ~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 3265u, 2835u, arg_1.x), _wgslsmith_sub_vec4_u32(global0.b.d, vec4<u32>(2502u, 1u, u_input.a, global0.e.e.a.x)))), vec4<u32>(u_input.d.x, ~((8518u ^ global0.e.a.d.x) | 97279u), 51205u, ~33578u >> (abs(_wgslsmith_add_u32(arg_0.d.x, 43480u)) % 32u)));
    global2 = array<bool, 31>();
    let var_2 = global0.d;
    let var_3 = vec2<u32>(17004u, ~var_0.x);
    return max(var_0, ~var_2.d);
}

fn func_2(arg_0: vec3<bool>, arg_1: u32, arg_2: u32) -> Struct_3 {
    let var_0 = Struct_4(global0.e.a, select(global0.e.a.d.xy, global0.d.a, global0.c) >> (~vec2<u32>(_wgslsmith_mod_u32(4294967295u, 71186u), 1u) % vec2<u32>(32u)), global0.b.b.xy, _wgslsmith_f_op_f32(global0.a * _wgslsmith_f_op_f32(f32(-1f) * -2135f)));
    global2 = array<bool, 31>();
    global1 = global0.a;
    global2 = array<bool, 31>();
    global2 = array<bool, 31>();
    return Struct_3(global0.a, global0.b, ~(-_wgslsmith_sub_i32(-29404i, 60584i)) > -var_0.c.x, Struct_1(var_0.b, vec3<i32>(-u_input.c, -2147483647i, -var_0.a.b.x), (true && (true || global2[_wgslsmith_index_u32(5905u, 31u)])) & !arg_0.x, func_3(var_0.a, vec3<u32>(_wgslsmith_mod_u32(var_0.a.a.x, 32333u), ~var_0.a.a.x, ~arg_1), ~vec2<i32>(u_input.c, var_0.c.x))), global0.e);
}

fn func_4(arg_0: Struct_3, arg_1: u32) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.a)) - -1033f)), global0.a));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(2239f, arg_0.a, global0.a))))));
    var var_2 = global0.e.e.b.x;
    var var_3 = firstTrailingBit(arg_0.b.d.xz);
    var var_4 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, 997f, global0.a)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(657f - arg_0.a), _wgslsmith_f_op_f32(174f - global0.a), func_2(vec3<bool>(false, false, false), u_input.b, 4294967295u).a))) * vec3<f32>(116f, _wgslsmith_f_op_f32(1187f + _wgslsmith_f_op_f32(-1114f * arg_0.a)), 1456f))));
    return !select(vec4<bool>(any(vec4<bool>(global2[_wgslsmith_index_u32(12666u, 31u)], false, false, global2[_wgslsmith_index_u32(0u, 31u)])), any(vec3<bool>(global0.d.c, false, false)), arg_0.c | global2[_wgslsmith_index_u32(~u_input.b, 31u)], !all(vec4<bool>(arg_0.d.c, arg_0.e.b.c, true, false))), select(select(select(vec4<bool>(arg_0.d.c, true, false, global2[_wgslsmith_index_u32(34950u, 31u)]), vec4<bool>(global2[_wgslsmith_index_u32(arg_0.d.d.x, 31u)], global0.d.c, true, global0.b.c), vec4<bool>(global0.e.a.c, false, global2[_wgslsmith_index_u32(67213u, 31u)], arg_0.d.c)), select(vec4<bool>(false, false, global2[_wgslsmith_index_u32(arg_1, 31u)], arg_0.b.c), vec4<bool>(global2[_wgslsmith_index_u32(arg_1, 31u)], false, arg_0.d.c, arg_0.c), vec4<bool>(global2[_wgslsmith_index_u32(global0.d.a.x, 31u)], false, true, false)), !vec4<bool>(false, false, true, global0.b.c)), !select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.d.x, 31u)], global0.c, arg_0.d.c, true), vec4<bool>(false, true, arg_0.d.c, arg_0.e.b.c), vec4<bool>(false, true, global0.b.c, false)), vec4<bool>(false, true, global0.c, true)), !vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 31u)], global0.c, true, global2[_wgslsmith_index_u32(15905u << (global0.d.a.x % 32u), 31u)]));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<bool>) -> Struct_3 {
    global2 = array<bool, 31>();
    var var_0 = max(select(select(vec4<u32>(u_input.d.x, u_input.a, 0u, 0u), vec4<u32>(1u, u_input.a, global0.b.d.x, u_input.a), vec4<bool>(global0.e.b.c, global0.d.c, false, false)) & reverseBits(vec4<u32>(global0.d.d.x, global0.d.a.x, 32978u, 1548u)), _wgslsmith_div_vec4_u32(vec4<u32>(0u, global0.d.a.x, 59688u, global0.e.a.d.x), firstTrailingBit(vec4<u32>(u_input.d.x, global0.e.b.d.x, 21312u, u_input.d.x))), func_4(func_2(arg_1.xyy, 1u, 9207u), global0.b.a.x >> (global0.d.a.x % 32u))), vec4<u32>(2584u, u_input.a, 41376u, u_input.a)) ^ vec4<u32>(global0.e.a.a.x, ~(~(~4294967295u)), 59928u, min(global0.d.a.x, u_input.b));
    var var_1 = Struct_4(global0.b, abs(global0.d.a), vec2<i32>(1i, _wgslsmith_sub_i32(_wgslsmith_add_i32(-8324i, ~0i), firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(u_input.c, global0.e.e.b.x))))), 427f);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-114f, arg_0.x, 458f, -339f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.d, global0.a, -102f, -1392f) - vec4<f32>(arg_0.x, var_1.d, global0.a, global0.a)) + _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, var_1.d, arg_0.x, var_1.d), vec4<f32>(1843f, -931f, arg_0.x, -1685f))))))));
    var var_3 = arg_1.wx;
    return func_2(func_4(Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(779f)) * _wgslsmith_f_op_f32(-990f + global0.a)), global0.e.e, true, func_2(!vec3<bool>(true, global0.b.c, false), u_input.b ^ var_1.b.x, ~u_input.d.x).e.a, Struct_2(func_2(vec3<bool>(false, false, arg_1.x), 23193u, 63518u).b, var_1.a, -vec3<i32>(global0.b.b.x, u_input.c, global0.e.b.b.x), select(arg_1.x, false, true), Struct_1(var_0.xy, var_1.a.b, global2[_wgslsmith_index_u32(16149u, 31u)], var_1.a.d))), _wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(var_0.xy, vec2<u32>(u_input.a, 4294967295u), vec2<u32>(8399u, var_0.x)), func_2(func_4(Struct_3(global0.a, var_1.a, true, global0.e.b, Struct_2(global0.d, var_1.a, vec3<i32>(u_input.c, 8830i, var_1.a.b.x), true, Struct_1(global0.d.a, global0.b.b, arg_1.x, global0.d.d))), var_0.x).wyz, _wgslsmith_dot_vec4_u32(global0.e.e.d, vec4<u32>(0u, var_1.b.x, u_input.a, var_0.x)), 44203u).b.a)).xwz, max(128949u, ~_wgslsmith_add_u32(global0.d.a.x, abs(var_1.b.x))), firstTrailingBit(54802u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.e.d;
    let var_1 = 0u;
    global0 = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(799f, global0.a, global0.a)) - vec3<f32>(787f, 201f, global0.a)))), vec4<bool>(true, false != global2[_wgslsmith_index_u32(~(~global0.e.b.a.x), 31u)], true, global0.d.c));
    global1 = _wgslsmith_f_op_f32(global0.a + -1314f);
    let var_2 = Struct_3(_wgslsmith_f_op_f32(846f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -404f), 117f))), func_1(vec3<f32>(_wgslsmith_f_op_f32(abs(1313f)), 1f, global0.a), select(select(!vec4<bool>(true, global2[_wgslsmith_index_u32(var_1, 31u)], global0.d.c, global2[_wgslsmith_index_u32(4294967295u, 31u)]), !vec4<bool>(global0.d.c, global0.d.c, true, global2[_wgslsmith_index_u32(var_1, 31u)]), false), vec4<bool>(any(vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 31u)], false, true)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.e.e.a.x, u_input.a, 0u), global0.e.a.d.xyy), 31u)], true, 21281i >= u_input.c), select(select(vec4<bool>(true, global0.d.c, true, global2[_wgslsmith_index_u32(25318u, 31u)]), vec4<bool>(global2[_wgslsmith_index_u32(26527u, 31u)], global2[_wgslsmith_index_u32(var_1, 31u)], true, global2[_wgslsmith_index_u32(14522u, 31u)]), global0.c), vec4<bool>(global0.b.c, false, global0.b.c, global0.b.c), vec4<bool>(global2[_wgslsmith_index_u32(46527u, 31u)], global2[_wgslsmith_index_u32(16867u, 31u)], global0.d.c, false)))).d, global2[_wgslsmith_index_u32(~(~func_2(!vec3<bool>(global0.c, false, true), _wgslsmith_dot_vec3_u32(vec3<u32>(global0.e.a.a.x, var_1, var_1), vec3<u32>(u_input.a, 4294967295u, 60814u)), ~16904u).e.b.a.x), 31u)], func_2(select(vec3<bool>(all(vec4<bool>(true, false, false, true)), true, func_4(Struct_3(-424f, Struct_1(global0.d.d.wz, vec3<i32>(u_input.c, 1i, 9717i), true, global0.e.a.d), true, Struct_1(global0.d.a, global0.d.b, false, vec4<u32>(138u, var_1, global0.e.b.a.x, 1u)), global0.e), 111536u).x), !vec3<bool>(true, global0.b.c, global0.c), true), 1u, ~_wgslsmith_clamp_u32(0u ^ var_1, var_1, func_3(global0.b, global0.d.d.wwy, vec2<i32>(u_input.c, global0.b.b.x)).x)).e.a, global0.e);
    global0 = Struct_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a))))), Struct_1(~vec2<u32>(func_3(Struct_1(global0.d.a, var_2.e.c, false, global0.d.d), global0.d.d.wzx, vec2<i32>(-63078i, -39574i)).x, var_1), vec3<i32>(52257i, i32(-1i) * -u_input.c, var_2.e.b.b.x), false, global0.d.d), var_2.d.c, Struct_1(~(~vec2<u32>(6655u, 0u)) << (var_2.e.b.a % vec2<u32>(32u)), _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(~var_2.e.c, -var_2.d.b), vec3<i32>(-1i) * -vec3<i32>(var_2.b.b.x, u_input.c, -1i)), var_2.e.d || true, vec4<u32>(~1u, min(~global0.b.d.x, global0.e.e.d.x), _wgslsmith_sub_u32(global0.d.a.x, ~45217u), _wgslsmith_dot_vec4_u32(abs(global0.e.e.d), vec4<u32>(var_2.e.a.d.x, 17724u, 1u, u_input.d.x)))), global0.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_u32(u_input.d, _wgslsmith_clamp_vec3_u32(~func_3(var_2.d, global0.b.d.xxw, var_2.e.b.b.zz).ywz, select(func_1(vec3<f32>(323f, -652f, var_2.a), vec4<bool>(true, global2[_wgslsmith_index_u32(22197u, 31u)], global0.c, var_2.d.c)).b.d.zwy, ~vec3<u32>(global0.d.d.x, 0u, 1567u), func_4(Struct_3(-165f, Struct_1(u_input.d.zy, global0.e.e.b, false, vec4<u32>(global0.e.e.a.x, var_2.b.a.x, var_1, 1u)), global0.b.c, var_2.e.a, Struct_2(global0.e.a, var_2.d, var_2.e.a.b, true, Struct_1(vec2<u32>(var_1, 1u), vec3<i32>(1i, u_input.c, global0.d.b.x), global0.d.c, vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 4294967295u)))), 0u).x), _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 34778u, var_1), vec3<u32>(var_2.b.a.x, 4294967295u, 1u)), firstTrailingBit(var_2.d.d.www)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(208f, 1150f)), 546f) + -986f));
}

