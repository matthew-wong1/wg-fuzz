struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: f32,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true);

var<private> global1: Struct_4 = Struct_4(Struct_2(true, Struct_1(false), 387f), Struct_2(false, Struct_1(true), -213f), vec2<f32>(715f, 926f));

var<private> global2: Struct_3 = Struct_3(vec3<u32>(24690u, 22871u, 4294967295u), Struct_2(true, Struct_1(true), -1713f), 644f, Struct_2(false, Struct_1(true), -710f));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: Struct_2) -> Struct_2 {
    global1 = Struct_4(arg_2, arg_1, _wgslsmith_f_op_vec2_f32(-global1.c));
    var var_0 = !arg_0.xx;
    var var_1 = Struct_4(Struct_2(global1.b.a, arg_2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1690f * arg_2.c) * -503f))), global1.a, _wgslsmith_f_op_vec2_f32(step(global1.c, _wgslsmith_f_op_vec2_f32(-global1.c))));
    let var_2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.c), vec2<f32>(_wgslsmith_f_op_f32(-607f * global1.c.x), _wgslsmith_f_op_f32(1023f + arg_1.c)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(global1.c)))) - _wgslsmith_f_op_vec2_f32(floor(var_1.c)))));
    var var_3 = !arg_0;
    return arg_2;
}

fn func_3(arg_0: Struct_2) -> i32 {
    global2 = Struct_3(countOneBits(~max(vec3<u32>(1u, 1u, global2.a.x), ~global2.a)), func_2(vec4<bool>(true, true, true, true), Struct_2(global2.d.b.a || select(true, false, true), Struct_1(true), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(global2.c))))), Struct_2(true, Struct_1(global0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(315f)) + global1.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.c + -501f), _wgslsmith_f_op_f32(trunc(arg_0.c))))), Struct_2(global2.b.a, func_2(select(!vec4<bool>(arg_0.a, global1.a.a, true, global1.b.a), vec4<bool>(global2.d.b.a, arg_0.a, true, global2.b.a), false), arg_0, Struct_2(global0.a, func_2(vec4<bool>(true, global0.a, global0.a, global0.a), Struct_2(arg_0.a, Struct_1(true), -1436f), Struct_2(global0.a, Struct_1(arg_0.a), 1261f)).b, 140f)).b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -882f) + arg_0.c)));
    var var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.c, global2.d.c, -1000f, arg_0.c), vec4<f32>(774f, -1009f, 659f, -180f), vec4<bool>(arg_0.b.a, true, true, false)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c, 1719f, global2.d.c, 1537f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.d.c, global1.c.x, -184f, 599f) * vec4<f32>(857f, 558f, 1000f, global2.b.c)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.c, -315f, global2.b.c, 1486f), vec4<f32>(1442f, 1000f, global2.c, -276f), global1.b.b.a))))))));
    var var_1 = u_input.b.wwz;
    var var_2 = vec3<i32>(var_1.x, _wgslsmith_mod_i32(-47630i, min(var_1.x << (global2.a.x % 32u), 2147483647i) >> ((u_input.e.x >> (~global2.a.x % 32u)) % 32u)), -_wgslsmith_div_i32(reverseBits(u_input.a), ~(~u_input.c)));
    global2 = Struct_3(vec3<u32>(countOneBits(1u), ~0u, firstTrailingBit(52860u)) << (global2.a % vec3<u32>(32u)), Struct_2(any(select(vec2<bool>(true, true), vec2<bool>(global1.b.a, true), global0.a)) | true, func_2(!vec4<bool>(global0.a, global2.d.a, global0.a, global0.a), func_2(!vec4<bool>(true, global2.d.b.a, false, true), func_2(vec4<bool>(false, global1.b.b.a, true, global0.a), Struct_2(global2.d.a, Struct_1(false), 1389f), global1.a), Struct_2(global1.b.a, Struct_1(true), -833f)), Struct_2(arg_0.a, func_2(vec4<bool>(arg_0.a, global0.a, arg_0.b.a, global2.b.b.a), global2.b, global2.d).b, -550f)).b, 158f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.x), arg_0.c))), global1.b);
    return ~max(min(-6749i, var_2.x), -1i);
}

fn func_4(arg_0: vec3<bool>, arg_1: i32, arg_2: bool) -> Struct_2 {
    let var_0 = vec3<f32>(1f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-944f + global2.d.c))))), _wgslsmith_f_op_f32(-369f + global1.a.c));
    global0 = Struct_1(!global1.b.a | true);
    global2 = Struct_3(vec3<u32>(u_input.e.x, ~(~(~u_input.e.x)), 63564u), global2.d, 389f, Struct_2(global0.a, Struct_1(arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -471f)));
    global0 = Struct_1(global0.a);
    let var_1 = true;
    return global2.b;
}

fn func_5(arg_0: bool, arg_1: vec3<i32>, arg_2: Struct_4, arg_3: Struct_4) -> Struct_4 {
    var var_0 = select(!(!vec2<bool>(false, any(vec3<bool>(false, false, false)))), !(!select(select(vec2<bool>(true, false), vec2<bool>(false, arg_0), false), !vec2<bool>(global1.a.b.a, false), select(vec2<bool>(global1.b.a, true), vec2<bool>(true, true), global0.a))), vec2<bool>(!(!(global2.b.a | false)), arg_0));
    global0 = func_2(vec4<bool>(true, true, arg_0, global1.b.a), arg_2.b, global2.d).b;
    global1 = arg_2;
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(222f, 809f)));
    let var_2 = Struct_3(_wgslsmith_clamp_vec3_u32(u_input.e, _wgslsmith_sub_vec3_u32(vec3<u32>(~global2.a.x, 52724u, _wgslsmith_clamp_u32(global2.a.x, u_input.e.x, 4294967295u)), u_input.e), ~vec3<u32>(u_input.e.x, u_input.e.x, u_input.e.x)), Struct_2(!all(vec3<bool>(true, false, var_0.x)) | (arg_3.a.a || (true || arg_0)), Struct_1(!(u_input.e.x > u_input.e.x)), -724f), _wgslsmith_f_op_f32(max(global2.b.c, _wgslsmith_f_op_f32(-1341f * _wgslsmith_f_op_f32(-arg_2.b.c)))), arg_3.b);
    return Struct_4(global2.b, Struct_2(_wgslsmith_f_op_f32(-arg_3.c.x) <= _wgslsmith_f_op_f32(-var_1), Struct_1(1u >= u_input.e.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(var_1, 1569f))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-global1.c))))) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(331f, arg_3.c.x), arg_3.c)))), global1.c))));
}

fn func_1(arg_0: u32, arg_1: bool) -> u32 {
    global1 = func_5(false, _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x | u_input.c, 25490i), select(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c, 2147483647i, u_input.d), u_input.b.xxy), vec3<i32>(u_input.c, u_input.a, 45337i), true)), u_input.b.zzz), Struct_4(global1.b, func_4(select(!vec3<bool>(global1.b.b.a, global0.a, true), select(vec3<bool>(global2.b.b.a, true, global2.b.b.a), vec3<bool>(true, global0.a, arg_1), vec3<bool>(arg_1, false, global0.a)), vec3<bool>(global2.d.a, global1.b.b.a, true)), func_3(func_2(vec4<bool>(arg_1, false, false, global2.b.a), global2.b, Struct_2(true, Struct_1(global0.a), global1.a.c))), true), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.c * vec2<f32>(global1.b.c, global2.d.c))), vec2<f32>(_wgslsmith_div_f32(-255f, -1000f), _wgslsmith_f_op_f32(round(1339f))), true))), Struct_4(global1.b, Struct_2(!global0.a, Struct_1(false | global1.b.a), -421f), vec2<f32>(_wgslsmith_f_op_f32(sign(global2.b.c)), func_4(vec3<bool>(false, arg_1, false), 2147483647i, select(false, arg_1, global2.d.a)).c)));
    var var_0 = select(vec2<bool>(!all(select(vec2<bool>(true, global1.a.a), vec2<bool>(false, true), false)), global2.d.a), !(!vec2<bool>(true, all(vec3<bool>(false, false, true)))), any(select(vec3<bool>(true, true, true), !vec3<bool>(arg_1, false, true), select(vec3<bool>(arg_1, false, false), !vec3<bool>(global1.a.a, false, true), !arg_1))));
    var var_1 = func_2(!select(vec4<bool>(!arg_1, true, true, false), !(!vec4<bool>(var_0.x, global2.d.b.a, var_0.x, true)), vec4<bool>(true, any(vec4<bool>(arg_1, arg_1, false, true)), global1.a.a, true)), global2.d, global2.b).a;
    let var_2 = global2.d.c;
    var var_3 = _wgslsmith_f_op_f32(-1571f * _wgslsmith_f_op_f32(global2.b.c - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-248f + global2.b.c)) - _wgslsmith_f_op_f32(1223f - global1.b.c))));
    return ~11009u;
}

fn func_6(arg_0: i32, arg_1: u32) -> Struct_3 {
    let var_0 = global1.a.b.a;
    global2 = Struct_3(~vec3<u32>(~(~global2.a.x), abs(_wgslsmith_dot_vec2_u32(u_input.e.yx, u_input.e.zy)), _wgslsmith_dot_vec2_u32(vec2<u32>(23264u, 4294967295u), select(vec2<u32>(global2.a.x, u_input.e.x), vec2<u32>(4294967295u, 19684u), vec2<bool>(true, global1.b.b.a)))), func_2(!vec4<bool>(global0.a, global2.d.a, func_2(vec4<bool>(true, true, false, global1.a.a), Struct_2(true, global2.d.b, 281f), Struct_2(true, global1.a.b, global1.c.x)).b.a, true && global2.b.b.a), Struct_2(global1.b.a, global1.b.b, global1.a.c), global1.a), _wgslsmith_f_op_f32(-global1.c.x), global1.a);
    let var_1 = _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.d, ~u_input.d, u_input.a), reverseBits(u_input.b.wwx));
    var var_2 = countOneBits(2147483647i) & var_1;
    let var_3 = _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(abs(firstLeadingBit(vec4<u32>(u_input.e.x, 0u, arg_1, arg_1))), ~(~(vec4<u32>(arg_1, global2.a.x, u_input.e.x, 16596u) << (vec4<u32>(4294967295u, 1u, arg_1, u_input.e.x) % vec4<u32>(32u))))), _wgslsmith_mult_vec4_u32(~(~vec4<u32>(116063u, 19754u, arg_1, arg_1)), _wgslsmith_mod_vec4_u32(~vec4<u32>(52407u, u_input.e.x, u_input.e.x, u_input.e.x), vec4<u32>(u_input.e.x, 0u << (u_input.e.x % 32u), 22651u, countOneBits(4294967295u)))));
    return Struct_3(var_3.wxy, global2.b, -693f, Struct_2(any(select(select(vec4<bool>(global2.b.a, global2.b.a, true, false), vec4<bool>(false, global1.b.b.a, global0.a, global2.d.b.a), global0.a), !vec4<bool>(global0.a, false, global2.d.b.a, global1.b.a), !vec4<bool>(global1.a.a, global2.d.b.a, global0.a, global1.a.a))), global2.d.b, _wgslsmith_f_op_f32(global2.b.c - 337f)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_6(65001i, func_1(0u, !any(vec2<bool>(global0.a, true))) ^ 70303u);
    var var_0 = Struct_4(global2.b, func_5(!global2.d.b.a | ((global1.a.b.a != false) & true), _wgslsmith_clamp_vec3_i32(-u_input.b.xzy << (~global2.a % vec3<u32>(32u)), u_input.b.xwy, vec3<i32>(u_input.d, u_input.c ^ 1i, firstTrailingBit(2147483647i))), Struct_4(global1.b, func_2(vec4<bool>(global1.b.b.a, false, global1.a.b.a, global2.d.a), global2.d, global2.b), vec2<f32>(_wgslsmith_f_op_f32(global1.b.c * 318f), _wgslsmith_f_op_f32(floor(global2.d.c)))), Struct_4(func_4(vec3<bool>(global1.a.b.a, global0.a, global0.a), u_input.b.x, false), func_6(u_input.d, ~17131u).b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.c + global1.c)))).b, global1.c);
    let var_1 = _wgslsmith_mod_i32(i32(-1i) * -(13579i | u_input.c), u_input.a);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.c.x, global2.c, global2.d.c) * vec3<f32>(1216f, -1734f, global2.b.c)))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-698f, var_0.c.x, -1153f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b.c, var_0.b.c, 1000f)), !vec3<bool>(global0.a, false, global0.a))))));
    let var_3 = _wgslsmith_f_op_vec2_f32(func_5(global0.a, ~select(vec3<i32>(-1i, u_input.b.x, var_1), vec3<i32>(2147483647i, 25413i, 1964i), all(vec3<bool>(var_0.b.a, var_0.b.b.a, global0.a))), func_5(false, u_input.b.yyy, func_5(global2.a.x == 37556u, vec3<i32>(u_input.b.x, 1i, -1i), func_5(global1.b.a, u_input.b.xyz, Struct_4(var_0.a, var_0.a, global1.c), Struct_4(Struct_2(global0.a, global2.b.b, var_2.x), Struct_2(global1.a.b.a, Struct_1(true), var_0.c.x), var_2.xy)), Struct_4(global1.b, global1.b, vec2<f32>(-191f, 672f))), Struct_4(global1.b, Struct_2(false, Struct_1(true), 109f), _wgslsmith_div_vec2_f32(vec2<f32>(-888f, 1166f), vec2<f32>(1000f, var_2.x)))), func_5(true, vec3<i32>(39497i, firstTrailingBit(u_input.b.x), _wgslsmith_mult_i32(28960i, var_1)), Struct_4(Struct_2(false, Struct_1(global1.a.b.a), var_2.x), global1.a, _wgslsmith_f_op_vec2_f32(global1.c - var_0.c)), func_5(true, vec3<i32>(-2147483647i, 0i, 20885i) & vec3<i32>(var_1, var_1, 45440i), Struct_4(var_0.a, Struct_2(var_0.a.a, Struct_1(var_0.b.b.a), global1.b.c), var_2.yz), Struct_4(Struct_2(true, global1.a.b, var_2.x), Struct_2(var_0.b.b.a, Struct_1(global1.a.b.a), global1.a.c), vec2<f32>(-1880f, -2655f))))).c + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-var_2.x), -880f))))));
    var var_4 = reverseBits(0i) << (min(_wgslsmith_dot_vec2_u32(vec2<u32>(global2.a.x >> (0u % 32u), u_input.e.x), min(_wgslsmith_sub_vec2_u32(vec2<u32>(28891u, 3996u), u_input.e.yz), reverseBits(global2.a.zy))), 0u) % 32u);
    let var_5 = global1.b;
    var_4 = abs(-1i << (u_input.e.x % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_clamp_i32(~2147483647i, 49912i, firstLeadingBit(u_input.b.x)), u_input.c, _wgslsmith_mod_i32(-select(13277i, u_input.c, true), -28732i)), var_2.x, ~_wgslsmith_mult_u32(104654u, 17871u), _wgslsmith_div_i32(countOneBits(-514i), var_1));
}

