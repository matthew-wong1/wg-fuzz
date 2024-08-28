struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: vec2<bool>,
    c: vec4<i32>,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<f32>(547f, 368f, -158f));

var<private> global1: Struct_1 = Struct_1(vec3<f32>(209f, -137f, 1000f));

var<private> global2: array<Struct_3, 10>;

var<private> global3: Struct_1 = Struct_1(vec3<f32>(247f, -694f, -716f));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> bool {
    global3 = Struct_1(_wgslsmith_f_op_vec3_f32(min(global1.a, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-660f, _wgslsmith_div_f32(global3.a.x, global0.a.x), _wgslsmith_f_op_f32(global0.a.x - global0.a.x)))))));
    global3 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1172f, -364f, global3.a.x), vec3<f32>(global1.a.x, global0.a.x, global3.a.x), vec3<bool>(true, false, true))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global3.a, vec3<f32>(global1.a.x, global3.a.x, -1000f), vec3<bool>(false, true, false))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1448f, global1.a.x, 887f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.a.x, global3.a.x, -1212f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, -165f, -1390f)))))));
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(742f + 1127f), -234f, -127f) + global1.a))));
    var var_0 = _wgslsmith_f_op_vec3_f32(global1.a * _wgslsmith_f_op_vec3_f32(-global1.a));
    global3 = Struct_1(global3.a);
    return false;
}

fn func_2(arg_0: Struct_3) -> Struct_1 {
    let var_0 = min(_wgslsmith_clamp_vec3_i32(arg_0.c.wwz, countOneBits(select(vec3<i32>(arg_0.c.x, -21245i, arg_0.c.x), -arg_0.c.xyz, func_3())), countOneBits(arg_0.c.xwx)), vec3<i32>(-15060i, ~(~32067i), -46085i) | max(-vec3<i32>(1i, 0i, arg_0.c.x), arg_0.c.zzx));
    global3 = Struct_1(global1.a);
    let var_1 = Struct_3(arg_0.a, vec2<bool>(false, any(select(arg_0.b, vec2<bool>(false, arg_0.b.x), true))), vec4<i32>(arg_0.c.x, ~_wgslsmith_sub_i32(1i, arg_0.c.x), 2124i, -(~(17776i & arg_0.c.x))), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x >> (u_input.a.x % 32u), arg_0.d, arg_0.d), ~u_input.a << (u_input.a % vec3<u32>(32u))), select(arg_0.d, _wgslsmith_mod_u32(~arg_0.d, _wgslsmith_clamp_u32(arg_0.d, 71556u, 4294967295u)), _wgslsmith_div_u32(arg_0.d, arg_0.d) < max(47329u, arg_0.d))), Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.e.a * vec3<f32>(global0.a.x, 193f, arg_0.e.a.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, global3.a.x, global0.a.x))), !select(vec3<bool>(false, arg_0.a, arg_0.a), vec3<bool>(true, false, true), arg_0.a)))));
    let var_2 = !select(vec3<bool>(true, var_1.a, select(var_1.b.x, false, var_1.b.x) != var_1.b.x), !vec3<bool>(false, any(vec3<bool>(var_1.a, var_1.a, false)), var_1.b.x), var_1.a);
    let var_3 = !select(select(!select(vec3<bool>(arg_0.a, var_2.x, true), var_2, var_2), !(!vec3<bool>(false, arg_0.b.x, var_1.a)), !var_2), vec3<bool>(false, true, (true && arg_0.a) | true), var_2);
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-1485f)))) * -261f), -1153f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.e.a.x + -690f)) - _wgslsmith_f_op_f32(min(-498f, -349f)))));
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: vec2<u32>) -> bool {
    global0 = func_2(global2[_wgslsmith_index_u32(u_input.b, 10u)]);
    let var_0 = func_2(Struct_3(func_3(), vec2<bool>(arg_0, any(!vec2<bool>(arg_0, arg_0))), vec4<i32>(firstTrailingBit(_wgslsmith_add_i32(29126i, 1i)), 1i, 1i >> (firstLeadingBit(u_input.a.x) % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(21782i, 17191i, -2147483647i, 24361i), vec4<i32>(0i, -72253i, 30598i, -22602i))), arg_1, Struct_1(_wgslsmith_f_op_vec3_f32(exp2(global1.a)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global3.a.x))), _wgslsmith_f_op_f32(select(func_2(global2[_wgslsmith_index_u32(67171u, 10u)]).a.x, global3.a.x, true)), 250f, _wgslsmith_f_op_f32(var_0.a.x + 406f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)))));
    var var_2 = vec3<i32>(2147483647i, _wgslsmith_dot_vec4_i32(~vec4<i32>(21725i, 27831i, 2147483647i, 2147483647i), ~vec4<i32>(-10964i, 2147483647i, 21555i, 0i)) ^ abs(1i), -_wgslsmith_dot_vec4_i32(~vec4<i32>(24078i, 1i, 37994i, 61960i), vec4<i32>(-1i, 27064i, -1i, -7819i))) >> (_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.b, arg_2.x), u_input.a), select(countOneBits(vec3<u32>(arg_2.x, 42122u, arg_1)), vec3<u32>(4294967295u, arg_1, 1u), false)), ~_wgslsmith_mult_vec3_u32(vec3<u32>(arg_1, 0u, 1u), vec3<u32>(88907u, arg_1, u_input.b)), u_input.a | _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_1, 64559u, 40777u), vec3<u32>(4036u, u_input.a.x, 6776u)), vec3<u32>(4821u, arg_2.x, 56260u), ~u_input.a)) % vec3<u32>(32u));
    var_2 = _wgslsmith_mult_vec3_i32(reverseBits(_wgslsmith_add_vec3_i32(select(vec3<i32>(-18145i, 4020i, var_2.x), -vec3<i32>(-3996i, var_2.x, -2147483647i), arg_0), firstLeadingBit(vec3<i32>(var_2.x, -2147483647i, -16956i) & vec3<i32>(var_2.x, var_2.x, -1i)))), -vec3<i32>(_wgslsmith_mod_i32(-1i, 5122i), var_2.x, ~_wgslsmith_sub_i32(-1i, -1i)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(true, true, !(!(all(vec4<bool>(true, true, true, true)) & func_1(false, 1u, u_input.a.yz))), all(vec3<bool>(true, global3.a.x >= _wgslsmith_f_op_f32(-global0.a.x), all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false))))));
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -650f)))));
    var var_2 = vec3<i32>(firstTrailingBit(_wgslsmith_div_i32(2147483647i, countOneBits(0i) | _wgslsmith_dot_vec4_i32(vec4<i32>(-112500i, -4263i, 18681i, 0i), vec4<i32>(2147483647i, 26660i, 64669i, -2147483647i)))), -_wgslsmith_sub_i32(_wgslsmith_sub_i32(countOneBits(-50764i), 1i), _wgslsmith_dot_vec4_i32(min(vec4<i32>(0i, 8100i, 0i, 48842i), vec4<i32>(-1i, 2147483647i, -15451i, 2147483647i)), vec4<i32>(-2147483647i, -1i, 2147483647i, -1i))), 1i);
    var var_3 = global3.a.x;
    var var_4 = !select(!vec4<bool>(var_0.x, false | var_0.x, all(var_0.xx), var_0.x || true), select(vec4<bool>(true, !var_0.x, true, var_0.x & var_0.x), vec4<bool>(true, any(vec2<bool>(var_0.x, var_0.x)), select(var_0.x, true, var_0.x), false), vec4<bool>(false, var_0.x && var_0.x, !var_0.x, !var_0.x)), select(vec4<bool>(-983f > global3.a.x, true, var_0.x, true), vec4<bool>(any(var_0.ww), select(false, var_0.x, var_0.x), true, var_0.x), !(global3.a.x > 1397f)));
    global2 = array<Struct_3, 10>();
    var var_5 = Struct_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3.a.x, _wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-399f - global1.a.x)), -109f), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(996f, global0.a.x, global3.a.x, 342f) - vec4<f32>(122f, global0.a.x, global3.a.x, -661f)), vec4<f32>(global3.a.x, global1.a.x, 1000f, global1.a.x), global0.a.x >= -393f)))), true)));
    let var_6 = !(!all(!vec4<bool>(false, var_0.x, var_0.x, true)) && !var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(0u, u_input.b), _wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.b, ~u_input.b, 4294967295u), u_input.a, false), vec3<u32>(~(~47113u), _wgslsmith_add_u32(~u_input.b, u_input.b), ~64725u)));
}

