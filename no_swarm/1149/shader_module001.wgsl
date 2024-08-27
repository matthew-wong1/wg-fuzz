struct Struct_1 {
    a: i32,
    b: bool,
    c: f32,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec3<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(361f, 941f);

var<private> global1: Struct_1;

var<private> global2: vec4<bool> = vec4<bool>(false, true, false, false);

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> bool {
    let var_0 = ~17101u;
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(282f, -1137f) - vec2<f32>(global1.c, global0.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 706f)) * vec2<f32>(arg_0.a.c, arg_0.a.c))) - vec2<f32>(arg_0.a.c, _wgslsmith_f_op_f32(-853f * 568f))));
    let var_1 = Struct_2(Struct_1(-36874i, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.a.c, -357f))) - _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_sub_i32(~(~(-2147483647i)), global1.e), global1.d));
    var var_2 = _wgslsmith_f_op_f32(-169f + _wgslsmith_div_f32(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-201f)) * 1099f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c * _wgslsmith_f_op_f32(arg_0.a.c - arg_0.a.c)))));
    let var_3 = select(select(!(!vec4<bool>(true, true, global2.x, false)), vec4<bool>(false, any(vec4<bool>(arg_0.a.b, global2.x, arg_0.a.b, true)), arg_1.b, true), vec4<bool>(global2.x && (161f < arg_1.c), any(global2.wyw), true & !global1.b, global1.b && false)), vec4<bool>(false, false, any(global2.xw), true), !select(select(!vec4<bool>(global2.x, arg_0.a.b, global1.b, global1.b), select(vec4<bool>(true, true, arg_0.a.b, false), vec4<bool>(true, false, false, true), false), select(vec4<bool>(false, global2.x, true, true), vec4<bool>(global2.x, arg_1.b, arg_1.b, false), vec4<bool>(false, arg_0.a.b, true, global2.x))), select(vec4<bool>(true, arg_1.b, false, arg_0.a.b), !vec4<bool>(arg_0.a.b, global1.b, true, false), select(vec4<bool>(true, global1.b, false, arg_0.a.b), vec4<bool>(false, true, global2.x, false), vec4<bool>(arg_1.b, var_1.a.b, global2.x, false))), !vec4<bool>(true, false, var_1.a.b, true)));
    return !(!(1u <= _wgslsmith_add_u32(0u, ~var_0)));
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> vec4<bool> {
    return !vec4<bool>(false, global1.b && !arg_0.b, all(select(global2.yxw, select(vec3<bool>(arg_0.b, false, true), global2.wxw, vec3<bool>(global1.b, false, global2.x)), !vec3<bool>(global2.x, false, true))), true);
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<i32>) -> vec4<u32> {
    global2 = func_4(Struct_1(_wgslsmith_mult_i32(0i, u_input.d.x & ~arg_1.x), !(!(!global2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(f32(-1f) * -435f))), _wgslsmith_mod_i32(33757i, countOneBits(-8778i)), _wgslsmith_div_i32(_wgslsmith_div_i32(_wgslsmith_add_i32(global1.e, -1i), -1i), -8153i)), func_3(Struct_2(Struct_1(u_input.d.x, false, _wgslsmith_div_f32(1000f, -1172f), _wgslsmith_dot_vec3_i32(vec3<i32>(35448i, 0i, u_input.a), vec3<i32>(u_input.c, u_input.c, -2147483647i)), 1i)), Struct_1(_wgslsmith_div_i32(-2147483647i, i32(-1i) * -1i), !(global1.b | false), global0.x, -max(arg_1.x, arg_1.x), u_input.a)));
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(arg_0))))) + _wgslsmith_f_op_vec3_f32(arg_0 * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0)))));
    let var_1 = Struct_1(~(-u_input.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.c))) <= _wgslsmith_div_f32(-161f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(583f, -256f))))), 573f, global1.d >> (1u % 32u), -global1.a);
    let var_2 = global1.b;
    global2 = vec4<bool>(!(!any(global2.xw)) & global1.b, !var_1.b, func_4(Struct_1(4254i, !(!var_1.b), -1177f, ~23890i & (-26165i ^ var_1.e), firstLeadingBit(var_1.a) ^ arg_1.x), !var_1.b).x, global2.x);
    return _wgslsmith_sub_vec4_u32(min(~(~vec4<u32>(1u, 1u, 1u, 1u)), ~vec4<u32>(1u, 0u, 1u, countOneBits(105611u))), ~firstTrailingBit(vec4<u32>(1u, 1u, 1u, 1u)) ^ ~vec4<u32>(~0u, abs(11083u), ~40652u, reverseBits(4294967295u)));
}

fn func_5(arg_0: f32, arg_1: vec4<i32>, arg_2: u32, arg_3: f32) -> Struct_1 {
    let var_0 = arg_3;
    global1 = Struct_1(-54829i, true, -103f, u_input.d.x, arg_1.x);
    let var_1 = i32(-1i) * -(~_wgslsmith_div_i32(0i, -21273i));
    global1 = Struct_1(-(~u_input.c), global2.x, 1912f, var_1, ~global1.a);
    let var_2 = _wgslsmith_mod_i32(_wgslsmith_add_i32(_wgslsmith_mult_i32(-38230i, 1i), -(var_1 ^ ~(-45505i))), global1.a);
    return Struct_1(u_input.d.x, !all(!vec3<bool>(global2.x, global2.x, true)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * global0.x)) - 583f))), firstTrailingBit(i32(-1i) * -max(0i, u_input.a)), 1i);
}

fn func_1(arg_0: i32, arg_1: vec2<u32>, arg_2: vec3<f32>) -> u32 {
    global0 = arg_2.zz;
    let var_0 = func_5(_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.c)))), ~(-vec4<i32>(0i, -1606i, -39978i, arg_0) >> (~vec4<u32>(4294967295u, arg_1.x, 56518u, arg_1.x) % vec4<u32>(32u))) >> (_wgslsmith_mult_vec4_u32(func_2(vec3<f32>(arg_2.x, 353f, global0.x), firstTrailingBit(vec2<i32>(global1.a, global1.e))), ~min(vec4<u32>(30347u, 59681u, 0u, 0u), vec4<u32>(arg_1.x, arg_1.x, 1u, 0u))) % vec4<u32>(32u)), 4294967295u, _wgslsmith_f_op_f32(-1192f * 1440f));
    let var_1 = Struct_3(558f, Struct_1(22155i, false, global0.x, global1.a, -14820i));
    let var_2 = 4294967295u;
    let var_3 = var_1;
    return ~1u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(_wgslsmith_dot_vec2_i32(u_input.b, reverseBits(firstTrailingBit(abs(vec2<i32>(u_input.a, global1.a))))), 1u > (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 12817u), ~vec3<u32>(51932u, 46396u, 0u)) & _wgslsmith_div_u32(func_1(2147483647i, vec2<u32>(27304u, 4294967295u), vec3<f32>(432f, 189f, global0.x)), abs(43411u))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(min(1f, global0.x)))), 2147483647i, i32(-1i) * -1335i);
    global1 = Struct_1(32504i, global2.x, _wgslsmith_f_op_f32(global1.c - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * -1208f) + 188f) + -1030f)), 6046i, global1.a | global1.a);
    var var_0 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-1474f, func_5(422f, vec4<i32>(global1.e, -29896i, global1.d, -2147483647i), 65080u, global1.c).c)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(global0.x)))), true)), _wgslsmith_f_op_f32(-1786f * _wgslsmith_f_op_f32(global1.c * _wgslsmith_f_op_f32(-global1.c)))), Struct_1(u_input.c, !all(!global2.zxy), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))), firstTrailingBit(u_input.a), -u_input.b.x));
    var_0 = Struct_3(_wgslsmith_f_op_f32(sign(var_0.a)), Struct_1(~((var_0.b.a ^ -2147483647i) << (abs(0u) % 32u)), !select(global2.x, true, true), global1.c, max(0i, _wgslsmith_sub_i32(~1i, firstTrailingBit(global1.e))), ~min(~24121i, ~(-1026i))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.a))), global1.c);
    var var_2 = var_0.b;
    var var_3 = countOneBits(~firstTrailingBit(vec2<u32>(1u, 1u)));
    var_0 = Struct_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.c))))), func_5(1865f, vec4<i32>(11117i, firstTrailingBit(_wgslsmith_div_i32(var_2.a, global1.d)), max(~0i, 1i), firstLeadingBit(global1.a)), _wgslsmith_sub_u32(_wgslsmith_mult_u32(1u, var_3.x), var_3.x) | (~1u >> (~var_3.x % 32u)), _wgslsmith_f_op_f32(step(-824f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1, var_2.c)))))));
    var_2 = func_5(_wgslsmith_f_op_f32(sign(var_2.c)), (vec4<i32>(2147483647i, -19801i, ~(-2147483647i), global1.e) >> (select(max(vec4<u32>(var_3.x, 36590u, 23679u, var_3.x), vec4<u32>(var_3.x, var_3.x, var_3.x, 16898u)), ~vec4<u32>(var_3.x, 1u, var_3.x, 0u), !vec4<bool>(true, true, global2.x, var_2.b)) % vec4<u32>(32u))) >> (min(vec4<u32>(_wgslsmith_div_u32(37844u, var_3.x), var_3.x, ~1u, ~var_3.x), firstTrailingBit(~vec4<u32>(69881u, 0u, 7389u, 1u))) % vec4<u32>(32u)), ~(~(~0u & var_3.x)), _wgslsmith_f_op_f32(-1701f * 1422f));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x, 2147483647i, 0i), _wgslsmith_mult_vec3_i32(vec3<i32>(global1.e, u_input.c, var_2.d), vec3<i32>(var_0.b.a, -282i, 2147483647i))) ^ firstLeadingBit(min(vec3<i32>(-1i, 1i, var_2.d), vec3<i32>(var_0.b.d, -2147483647i, 12847i))), _wgslsmith_mod_vec3_i32(max(vec3<i32>(u_input.d.x, -2147483647i, u_input.a), -vec3<i32>(global1.e, var_0.b.d, u_input.a)), -select(vec3<i32>(-37671i, -42431i, global1.e), vec3<i32>(1i, global1.a, 21293i), vec3<bool>(false, false, global2.x)))), _wgslsmith_dot_vec4_u32(vec4<u32>(48315u, 4294967295u, ~4294967295u, 91198u), min(vec4<u32>(reverseBits(var_3.x), ~34309u, ~var_3.x, ~var_3.x), func_2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_2.c, global1.c, global1.c))), select(u_input.d, vec2<i32>(0i, var_2.a), global2.x)))), _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(abs(vec3<u32>(var_3.x, 35u, 4294967295u)), _wgslsmith_add_vec3_u32(vec3<u32>(var_3.x, var_3.x, var_3.x) | vec3<u32>(26435u, 70806u, var_3.x), vec3<u32>(var_3.x, 1u, var_3.x) >> (vec3<u32>(0u, 22209u, var_3.x) % vec3<u32>(32u)))), _wgslsmith_add_vec3_u32(~vec3<u32>(4294967295u, 63402u, 1u), ~(~vec3<u32>(var_3.x, var_3.x, var_3.x)))), vec4<u32>(~func_1(u_input.b.x, vec2<u32>(var_3.x, 12280u), vec3<f32>(303f, global1.c, global1.c)), ~4294967295u, 1u, 11968u) | vec4<u32>(~(~81237u), ~var_3.x, ~(~34499u), ~4294967295u));
}

