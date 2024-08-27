struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(false, Struct_1(vec3<i32>(-1i, -43365i, -1i)), Struct_2(Struct_1(vec3<i32>(i32(-2147483648), 3596i, -66856i)), false), 12788u);

var<private> global1: vec2<bool> = vec2<bool>(true, true);

var<private> global2: array<Struct_2, 11>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> bool {
    global1 = !vec2<bool>(true, all(vec4<bool>(true, true, true, true)));
    global2 = array<Struct_2, 11>();
    var var_0 = _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(_wgslsmith_add_i32(global0.c.a.a.x, global0.c.a.a.x), global0.c.a.a.x, 2147483647i, ~global0.c.a.a.x), vec4<i32>(global0.c.a.a.x, -56570i, 2147483647i, global0.b.a.x)), _wgslsmith_clamp_vec4_i32(abs(-vec4<i32>(global0.c.a.a.x, global0.b.a.x, 3030i, 2147483647i)), -vec4<i32>(-31464i, _wgslsmith_dot_vec3_i32(vec3<i32>(global0.c.a.a.x, global0.b.a.x, 7144i), global0.b.a), ~1i, firstTrailingBit(global0.c.a.a.x)), -vec4<i32>(firstLeadingBit(28045i), max(-1475i, 1i), global0.b.a.x, _wgslsmith_mod_i32(-4070i, global0.b.a.x))));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -742f);
    var var_2 = ~vec3<u32>(select(_wgslsmith_dot_vec4_u32(~vec4<u32>(87178u, u_input.c.x, 18978u, u_input.b), vec4<u32>(global0.d, 0u, u_input.c.x, u_input.d)), _wgslsmith_sub_u32(4294967295u, select(0u, global0.d, true)), !global1.x), select(38718u, global0.d, global1.x), u_input.b);
    return false;
}

fn func_2(arg_0: bool) -> Struct_3 {
    let var_0 = -33514i >> (global0.d % 32u);
    var var_1 = vec3<bool>(true, true, func_3());
    var var_2 = Struct_1(~(-global0.b.a << (vec3<u32>(4294967295u, select(4294967295u, 1u, global0.a), 0u) % vec3<u32>(32u))));
    let var_3 = u_input.a.zz;
    var var_4 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1996f), _wgslsmith_div_f32(-830f, -1508f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(846f)), _wgslsmith_f_op_f32(f32(-1f) * -1379f)) + _wgslsmith_f_op_f32(trunc(1569f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-388f * _wgslsmith_f_op_f32(min(-140f, 142f))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-1000f)), 581f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(1f, -505f, !arg_0))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-181f * 915f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-802f, _wgslsmith_f_op_f32(1000f - -2388f))) * _wgslsmith_f_op_f32(f32(-1f) * -2087f))));
    return Struct_3(any(vec3<bool>(true, global1.x, true)), global0.c.a, global2[_wgslsmith_index_u32(1u, 11u)], 41507u);
}

fn func_4(arg_0: vec4<f32>, arg_1: u32, arg_2: Struct_3) -> Struct_3 {
    var var_0 = 566u;
    let var_1 = ~(~vec4<u32>(global0.d, u_input.d, 1u, 1u));
    var var_2 = func_2(!(all(!vec4<bool>(true, false, global1.x, true)) || true)).b;
    let var_3 = func_2(all(!(!(!vec3<bool>(false, arg_2.a, global1.x))))).b;
    var_2 = func_2(true).b;
    return arg_2;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(global0.b.a);
    var var_1 = func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-457f, 919f, -1186f, -1000f))), _wgslsmith_div_vec4_f32(vec4<f32>(-191f, -105f, -1142f, 652f), vec4<f32>(1602f, -753f, 320f, -855f)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(step(882f, 191f)), _wgslsmith_f_op_f32(389f - 1643f), _wgslsmith_f_op_f32(-100f + -1119f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-149f, -959f, 373f, 534f))))), (u_input.b << (62382u % 32u)) >> (~(~u_input.a.x) % 32u), func_2(!all(vec3<bool>(global0.c.b, true, true)) | global0.c.b));
    var var_2 = var_1.a;
    global2 = array<Struct_2, 11>();
    let var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(258f)))))), -169f, (i32(-1i) * -13879i) < arg_1.x));
    return func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(661f, _wgslsmith_f_op_f32(-var_3))), _wgslsmith_f_op_f32(max(116f, _wgslsmith_f_op_f32(max(var_3, var_3)))), var_3, var_3)), abs((_wgslsmith_mod_u32(u_input.c.x, global0.d) & 4294967295u) >> (u_input.a.x % 32u)), Struct_3(var_1.c.b, arg_0, global0.c, ~_wgslsmith_sub_u32(var_1.d, u_input.d))).b;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_3 {
    global1 = vec2<bool>(false, true);
    var var_0 = global0.c;
    let var_1 = func_1(Struct_1(~vec3<i32>(_wgslsmith_mult_i32(global0.c.a.a.x, 32915i), ~arg_1.a.x, max(2147483647i, global0.c.a.a.x))), select(arg_1.a, func_2(true & var_0.b).c.a.a ^ var_0.a.a, vec3<bool>(false, !select(true, global1.x, var_0.b), !(!global0.a))), Struct_1(countOneBits(vec3<i32>(-1i) * -arg_2.a)));
    var var_2 = global0.c;
    var var_3 = vec2<u32>(abs(0u), ~29800u);
    return func_2(!var_2.b);
}

fn func_6(arg_0: u32, arg_1: Struct_3, arg_2: i32) -> vec2<f32> {
    var var_0 = vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_sub_i32(-2147483647i, func_2(true).c.a.a.x), 1i), arg_2);
    global2 = array<Struct_2, 11>();
    let var_1 = _wgslsmith_div_vec3_u32(~firstTrailingBit(~vec3<u32>(global0.d, arg_0, 62059u)), select(u_input.a, ~(firstTrailingBit(u_input.a) >> (abs(vec3<u32>(51341u, 4294967295u, arg_1.d)) % vec3<u32>(32u))), all(!select(vec4<bool>(true, global0.a, global1.x, arg_1.c.b), vec4<bool>(global0.a, false, arg_1.c.b, false), vec4<bool>(global0.a, false, global0.c.b, true)))));
    let var_2 = 1u;
    var_0 = -select(vec2<i32>(global0.c.a.a.x, -arg_1.b.a.x), _wgslsmith_mod_vec2_i32(global0.b.a.xz, global0.b.a.xy), any(!(!vec4<bool>(global1.x, true, global1.x, arg_1.a))));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(762f, 1000f), _wgslsmith_div_f32(401f, -470f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1880f, 901f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-134f, 1175f) - vec2<f32>(1265f, -312f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 564f))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(137f * -1023f) + _wgslsmith_f_op_f32(round(133f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2129f + -232f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(func_6(global0.d, func_5(Struct_1(global0.c.a.a), func_1(global0.b, vec3<i32>(global0.b.a.x, global0.c.a.a.x, -1i), global0.b), func_4(vec4<f32>(-1000f, -1269f, -201f, -758f), 37322u, Struct_3(global1.x, Struct_1(global0.c.a.a), global0.c, 4294967295u)).c.a), ~_wgslsmith_div_i32(global0.c.a.a.x, global0.c.a.a.x))))));
    global1 = !(!vec2<bool>(global0.b.a.x == -1i, global1.x));
    let var_1 = select(global0.c.b, all(!vec4<bool>(false, global1.x, !global0.a, !global0.a)), all(!(!(!vec3<bool>(true, global1.x, true)))));
    let var_2 = func_5(func_1(Struct_1(vec3<i32>(~2147483647i, global0.c.a.a.x ^ 27691i, global0.b.a.x)), -global0.b.a, global0.b), func_2(func_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.x, var_0.x, 1000f, 402f))), vec4<f32>(var_0.x, var_0.x, 548f, -460f)), 4294967295u, func_2(any(vec2<bool>(false, global0.c.b)))).c.b).b, Struct_1(_wgslsmith_div_vec3_i32(-(vec3<i32>(global0.b.a.x, global0.b.a.x, 2147483647i) & vec3<i32>(-13480i, 1i, global0.c.a.a.x)), vec3<i32>(func_1(global0.b, global0.c.a.a, global0.b).a.x, 1i, abs(global0.c.a.a.x))))).c;
    var var_3 = Struct_1(~var_2.a.a);
    var var_4 = func_4(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -705f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-691f)), var_0.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-502f, _wgslsmith_f_op_f32(-var_0.x))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(843f)))))), ~_wgslsmith_mult_u32(~(90160u ^ global0.d), select(21292u ^ u_input.a.x, func_5(Struct_1(var_3.a), global0.c.a, var_2.a).d, any(vec3<bool>(true, false, global1.x)))), func_4(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)), vec4<f32>(-289f, -782f, var_0.x, var_0.x)))), _wgslsmith_mult_u32(u_input.b, firstTrailingBit(_wgslsmith_mod_u32(global0.d, global0.d))), Struct_3(all(vec4<bool>(true, true, true, true)), func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 634f, var_0.x, var_0.x) * vec4<f32>(1147f, 809f, 852f, -571f)), func_5(var_2.a, global0.c.a, var_2.a).d, func_5(Struct_1(vec3<i32>(var_3.a.x, 12826i, global0.b.a.x)), Struct_1(var_3.a), var_2.a)).b, func_4(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, var_0.x, -1252f, 285f))), 52974u, Struct_3(true, Struct_1(vec3<i32>(-3090i, var_2.a.a.x, var_2.a.a.x)), global0.c, 4294967295u)).c, max(1u, 1u))));
    var_3 = Struct_1(vec3<i32>(_wgslsmith_dot_vec4_i32(reverseBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_3.a.x, global0.c.a.a.x, -17163i, var_4.b.a.x), vec4<i32>(var_4.b.a.x, var_3.a.x, var_3.a.x, var_2.a.a.x), vec4<i32>(1i, var_3.a.x, global0.c.a.a.x, var_2.a.a.x))), vec4<i32>(var_2.a.a.x, ~1i, ~1i, reverseBits(-56870i))), ~var_4.b.a.x >> (_wgslsmith_sub_u32(var_4.d & 4294967295u, _wgslsmith_add_u32(var_4.d, 1647u)) % 32u), ~var_4.c.a.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(~(-15429i), _wgslsmith_add_i32(-var_4.b.a.x, var_3.a.x), ~max(-var_3.a.x, -global0.b.a.x)));
}

