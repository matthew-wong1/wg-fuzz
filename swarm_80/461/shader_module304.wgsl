struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec3<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(4294967295u, 4294967295u, 9827u, 0u);

var<private> global1: i32 = i32(-2147483648);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec4<u32>) -> bool {
    let var_0 = arg_1.b.x;
    global1 = _wgslsmith_dot_vec3_i32(~_wgslsmith_mult_vec3_i32(-vec3<i32>(u_input.b, 17931i, -10681i) >> (_wgslsmith_div_vec3_u32(global0.zxw, u_input.a) % vec3<u32>(32u)), vec3<i32>(-1i) * -vec3<i32>(arg_1.a.x, 56613i, -2147483647i)), arg_1.a.xzy);
    global0 = select(~(~min(~vec4<u32>(0u, u_input.c, global0.x, 32371u), ~arg_2)), _wgslsmith_clamp_vec4_u32(vec4<u32>(60075u, (global0.x & 40941u) << (~u_input.c % 32u), (u_input.a.x >> (arg_2.x % 32u)) & _wgslsmith_div_u32(59124u, global0.x), _wgslsmith_clamp_u32(u_input.c, ~23303u, 1u)), ~((vec4<u32>(37942u, 68827u, 18371u, arg_2.x) | arg_2) ^ (vec4<u32>(u_input.c, arg_2.x, arg_2.x, 0u) ^ vec4<u32>(u_input.a.x, 23142u, global0.x, 42248u))), ~arg_2), !any(select(select(vec3<bool>(arg_1.b.x, arg_0, false), vec3<bool>(arg_0, var_0, var_0), vec3<bool>(true, false, var_0)), !vec3<bool>(true, arg_0, false), vec3<bool>(false, arg_1.b.x, false))));
    global1 = _wgslsmith_mod_i32(min(arg_1.a.x, _wgslsmith_div_i32(arg_1.a.x, u_input.b)), arg_1.a.x & firstTrailingBit(arg_1.a.x)) & u_input.b;
    var var_1 = Struct_1(_wgslsmith_div_vec4_i32(arg_1.a << (_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(arg_2, vec4<u32>(48629u, 2196u, u_input.c, 123549u)), vec4<u32>(u_input.a.x, 76138u, global0.x, global0.x), _wgslsmith_add_vec4_u32(arg_2, vec4<u32>(u_input.a.x, global0.x, u_input.a.x, 4294967295u))) % vec4<u32>(32u)), arg_1.a), arg_1.b);
    return var_1.b.x | any(vec2<bool>(true, select(false, !var_1.b.x, arg_1.b.x)));
}

fn func_2(arg_0: f32) -> Struct_1 {
    let var_0 = abs(global0.ywx) & vec3<u32>(~(~u_input.c) >> (u_input.c % 32u), u_input.a.x, abs(~0u));
    let var_1 = Struct_1(firstLeadingBit(max(vec4<i32>(0i, u_input.b, u_input.b, -2147483647i) >> (select(vec4<u32>(0u, var_0.x, global0.x, global0.x), vec4<u32>(39885u, u_input.c, global0.x, 45024u), false) % vec4<u32>(32u)), vec4<i32>(u_input.b & -2147483647i, abs(34056i), u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, -704i), vec4<i32>(u_input.b, u_input.b, 25600i, u_input.b))))), select(vec2<bool>(any(vec4<bool>(false, true, true, true)) != func_3(true, Struct_1(vec4<i32>(1i, u_input.b, u_input.b, 1i), vec2<bool>(true, false)), vec4<u32>(var_0.x, 4294967295u, u_input.c, 5127u)), _wgslsmith_f_op_f32(-arg_0) > _wgslsmith_f_op_f32(f32(-1f) * -269f)), select(vec2<bool>(true, func_3(true, Struct_1(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec2<bool>(true, true)), vec4<u32>(736u, 4294967295u, 43847u, 4294967295u))), !select(vec2<bool>(true, false), vec2<bool>(true, true), true), all(vec4<bool>(false, true, false, false))), true));
    var var_2 = _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(f32(-1f) * -1216f));
    var_2 = _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + arg_0))));
    let var_3 = vec4<f32>(-2008f, _wgslsmith_f_op_f32(max(arg_0, _wgslsmith_f_op_f32(sign(arg_0)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-594f, _wgslsmith_f_op_f32(trunc(arg_0)))))) + -3170f), arg_0);
    return Struct_1(_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(var_1.a, var_1.a), select(vec4<i32>(u_input.b, -22780i | u_input.b, u_input.b, -866i >> (global0.x % 32u)), abs(var_1.a), true)), select(select(!(!var_1.b), vec2<bool>(all(var_1.b), true), true), select(!vec2<bool>(var_1.b.x, var_1.b.x), vec2<bool>(any(var_1.b), false), select(!vec2<bool>(var_1.b.x, var_1.b.x), select(vec2<bool>(var_1.b.x, false), var_1.b, vec2<bool>(var_1.b.x, var_1.b.x)), var_1.b.x || var_1.b.x)), var_1.b.x));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: f32) -> i32 {
    let var_0 = vec4<u32>(global0.x, 4851u, 1u, countOneBits(~u_input.a.x ^ ~4294967295u));
    global1 = ~(~_wgslsmith_sub_i32(u_input.b, abs(arg_0.a.x)));
    let var_1 = ~arg_2.a & vec4<i32>(-30221i, 26037i, ~arg_0.a.x, abs(func_2(_wgslsmith_div_f32(-1230f, arg_3)).a.x));
    let var_2 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 415f, arg_3, -553f)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_3, arg_3, arg_3, arg_3), vec4<f32>(arg_3, arg_3, -1190f, arg_3))), vec4<f32>(arg_3, -630f, arg_3, arg_3)))), vec4<f32>(1295f, _wgslsmith_f_op_f32(select(arg_3, arg_3, false & arg_0.b.x)), 1183f, -2739f)));
    var var_3 = -19978i;
    return ~(-2147483647i);
}

fn func_1(arg_0: u32) -> i32 {
    global0 = _wgslsmith_sub_vec4_u32(vec4<u32>(31177u, abs(reverseBits(1u & arg_0)), ~0u, 72891u), abs(~vec4<u32>(global0.x | 4294967295u, reverseBits(1u), select(4294967295u, 4294967295u, true), u_input.a.x)));
    global1 = func_4(func_2(_wgslsmith_f_op_f32(-808f - _wgslsmith_f_op_f32(f32(-1f) * -1387f))), -39173i, func_2(_wgslsmith_f_op_f32(max(-361f, _wgslsmith_f_op_f32(floor(-710f))))), -1163f);
    global1 = u_input.b;
    var var_0 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1252f) * -1312f));
    var_0 = func_2(_wgslsmith_f_op_f32(f32(-1f) * -139f));
    return -_wgslsmith_dot_vec2_i32(var_0.a.yz, vec2<i32>(func_2(_wgslsmith_div_f32(1436f, -130f)).a.x, _wgslsmith_clamp_i32(_wgslsmith_add_i32(var_0.a.x, u_input.b), -2147483647i, 0i)));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: Struct_1) -> vec4<u32> {
    var var_0 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-242f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1734f - 242f))))) - -990f));
    var var_1 = arg_2;
    var var_2 = func_2(-336f);
    var var_3 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1047f * 220f)))), 194f), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(574f + -1187f) + _wgslsmith_f_op_f32(select(289f, -329f, arg_1.x))))), -971f));
    var var_4 = true;
    return vec4<u32>(~u_input.c & (1u & _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.a.x, global0.x, global0.x), vec4<u32>(33935u, 1u, u_input.c, 71915u) & vec4<u32>(4294967295u, 866u, 9224u, global0.x))), _wgslsmith_dot_vec4_u32(vec4<u32>(~4294967295u, ~global0.x, u_input.a.x, ~global0.x), ~vec4<u32>(8948u, 55661u, u_input.a.x, 4294967295u) & vec4<u32>(3964u, 37990u, global0.x, 4294967295u)) | u_input.a.x, 32012u, ~max(0u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(40554u, 28263u, 88969u, 1u), vec4<u32>(1u, 58819u, global0.x, global0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(Struct_1(vec4<i32>(44948i, _wgslsmith_div_i32(-u_input.b, u_input.b), abs(u_input.b >> (u_input.c % 32u)), -min(0i, 33566i)), vec2<bool>(true, true)), select(select(vec3<bool>(true, u_input.c <= 4294967295u, all(vec2<bool>(true, true))), vec3<bool>(true, true, true), vec3<bool>(true, true, all(vec4<bool>(false, true, false, false)))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), vec3<bool>(true, any(vec4<bool>(true, true, true, false)), false), select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), vec3<bool>(false, true, false))), vec3<bool>(!any(vec2<bool>(true, true)), !any(vec3<bool>(false, true, false)), select(any(vec4<bool>(true, true, false, true)), u_input.a.x > 93889u, all(vec2<bool>(false, true))))), Struct_1(max(vec4<i32>(_wgslsmith_sub_i32(u_input.b, u_input.b), 37702i, _wgslsmith_sub_i32(u_input.b, u_input.b), func_1(1u)), ~vec4<i32>(u_input.b, -39341i, -2147483647i, u_input.b) & select(vec4<i32>(2147483647i, u_input.b, -1780i, u_input.b), vec4<i32>(u_input.b, u_input.b, 1i, 2147483647i), vec4<bool>(false, false, false, false))), vec2<bool>(true, func_3(true, func_2(1319f), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, 0u, 77107u, 0u), vec4<u32>(global0.x, 0u, global0.x, 3712u), vec4<u32>(0u, 0u, 1u, u_input.a.x))))), func_2(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1773f)), _wgslsmith_f_op_f32(ceil(-280f)))))));
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-692f * _wgslsmith_f_op_f32(ceil(857f)))))), -637f));
    var_0 = 407f;
    var var_1 = _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -52466i, u_input.b, 22027i), vec4<i32>(0i, u_input.b, u_input.b, -43061i)), u_input.b | -2147483647i, ~(-39637i)) >> (_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.c, u_input.a.x), vec3<u32>(global0.x, global0.x, 4294967295u)), countOneBits(global0.xyx)) % vec3<u32>(32u)), min(abs(vec3<i32>(-23514i, u_input.b, 8618i)) ^ vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(u_input.b << (4294967295u % 32u), _wgslsmith_sub_i32(u_input.b, u_input.b), u_input.b))) >> (~((_wgslsmith_sub_vec3_u32(vec3<u32>(43267u, u_input.c, u_input.c), u_input.a) & vec3<u32>(global0.x, 67428u, u_input.c)) << (~(~global0.xyx) % vec3<u32>(32u))) % vec3<u32>(32u));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(538f, -498f) - _wgslsmith_f_op_f32(-631f * -983f))))));
    var var_2 = firstTrailingBit(vec4<u32>(0u, ~(~global0.x), global0.x, firstLeadingBit(1u) >> (0u % 32u))) ^ ~(~_wgslsmith_mult_vec4_u32(select(vec4<u32>(u_input.a.x, 24443u, 4294967295u, global0.x), vec4<u32>(1u, 1u, 28376u, global0.x), true), vec4<u32>(3159u, 4319u, 1u, global0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-839f, 212f, -620f, 732f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-356f, -1812f, 220f, -497f))))), vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-129f, -282f))), 1f, -294f)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, var_1.x, ~(~(-1i))), _wgslsmith_div_vec3_i32(select(-vec3<i32>(var_1.x, -46204i, 1i), vec3<i32>(-1i, -2147483647i, -26620i), true), select(~vec3<i32>(u_input.b, 2147483647i, var_1.x), -vec3<i32>(var_1.x, 2147483647i, 0i), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1140f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -616f) - _wgslsmith_f_op_f32(1730f + 173f)))));
}

