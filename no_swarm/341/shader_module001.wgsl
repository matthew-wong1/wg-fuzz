struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec2<i32>,
    e: vec2<i32>,
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

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>) -> u32 {
    let var_0 = _wgslsmith_mult_vec4_u32(abs(firstLeadingBit(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x)))), vec4<u32>(27686u, 1u, _wgslsmith_mod_u32(4294967295u, firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(30474u, 1u), u_input.a))), ~(max(u_input.a.x, u_input.a.x) ^ u_input.a.x)));
    let var_1 = Struct_2(arg_0, vec4<u32>(14681u, countOneBits(4294967295u), var_0.x, 74385u));
    var var_2 = false;
    var_2 = true;
    let var_3 = _wgslsmith_f_op_f32(round(-1154f));
    return ~firstLeadingBit(_wgslsmith_sub_u32(~(~var_1.b.x), u_input.a.x ^ 1u));
}

fn func_2() -> Struct_2 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -3123f), -904f)) + _wgslsmith_div_f32(-1621f, -1400f))), 454f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -160f))) + 1f)));
    var var_1 = ~vec4<u32>(u_input.a.x, func_3(Struct_1(true), vec4<bool>(true, true, true, true)), _wgslsmith_add_u32(32406u, u_input.a.x & (u_input.a.x | 1u)), u_input.a.x);
    var_1 = select(~firstLeadingBit(vec4<u32>(0u, u_input.a.x, 28946u, 39319u)) << (~reverseBits(select(vec4<u32>(87244u, var_1.x, 76470u, 1u), vec4<u32>(u_input.a.x, u_input.a.x, 35469u, var_1.x), vec4<bool>(true, true, false, false))) % vec4<u32>(32u)), vec4<u32>(u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, 48840u), 1u, 69153u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-246f, _wgslsmith_div_f32(957f, -253f)))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(var_0.x)))) - _wgslsmith_f_op_f32(-364f + -929f)));
    var_1 = vec4<u32>(u_input.a.x ^ ~4294967295u, u_input.a.x, _wgslsmith_dot_vec3_u32(abs(var_1.yxy), _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_1.x, 5040u, var_1.x), var_1.yxy), var_1.zzy)), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(reverseBits(var_1.yzx)), _wgslsmith_clamp_vec3_u32(var_1.zyw, ~vec3<u32>(96737u, 0u, var_1.x), vec3<u32>(var_1.x, 4294967295u, var_1.x))), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(countOneBits(var_1.zw), vec2<u32>(var_1.x, var_1.x) >> (var_1.xx % vec2<u32>(32u))), ~abs(u_input.a.x))));
    return Struct_2(Struct_1(var_1.x <= var_1.x), ~(~(~(~vec4<u32>(u_input.a.x, var_1.x, 4941u, 1u)))));
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    var var_0 = select(vec2<bool>(true, true), vec2<bool>(func_2().a.a, true), select(vec2<bool>(true, true), vec2<bool>(!arg_0.a.a | true, arg_0.a.a), func_2().a.a | true));
    var var_1 = func_2().b;
    let var_2 = arg_0.a.a;
    var var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-264f, 301f, 1621f)))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1238f, -244f, 737f)))))));
    var var_4 = true;
    return func_2().a;
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    let var_0 = ~(~vec4<u32>(1u, _wgslsmith_add_u32(1u, u_input.a.x), 32791u, 30553u) << ((vec4<u32>(u_input.a.x, ~u_input.a.x, _wgslsmith_mod_u32(16407u, 46906u), 0u) ^ firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 0u, 1u, 1u), vec4<u32>(11797u, u_input.a.x, 1u, 1u)))) % vec4<u32>(32u)));
    return arg_2.a;
}

fn func_6(arg_0: u32, arg_1: Struct_1, arg_2: bool, arg_3: bool) -> Struct_1 {
    var var_0 = max(_wgslsmith_sub_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, u_input.b, 1i, u_input.b) << (vec4<u32>(1u, 13395u, arg_0, 4294967295u) % vec4<u32>(32u)), vec4<i32>(-2147483647i, u_input.e.x, -2147483647i, u_input.e.x) | vec4<i32>(u_input.d.x, u_input.b, -9598i, 1i)), vec4<i32>(24546i, reverseBits(_wgslsmith_mult_i32(u_input.e.x, -28907i)), u_input.d.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-26037i, -20841i, u_input.e.x), vec3<i32>(u_input.e.x, -59163i, u_input.c.x)))), vec4<i32>(~(u_input.b >> (4300u % 32u)) << (countOneBits(arg_0) % 32u), u_input.c.x, -1i, 32168i));
    var var_1 = arg_0;
    let var_2 = arg_0 <= ~(~1u);
    var_1 = 1u;
    var_1 = 0u;
    return arg_1;
}

fn func_7(arg_0: Struct_1, arg_1: i32, arg_2: bool) -> Struct_1 {
    var var_0 = 1i;
    var var_1 = func_2();
    var var_2 = func_4(Struct_2(var_1.a, ~vec4<u32>(u_input.a.x, ~38786u, 34942u, ~0u)));
    var_2 = func_2().a;
    var var_3 = _wgslsmith_div_i32(20995i >> (~_wgslsmith_sub_u32(~u_input.a.x, var_1.b.x ^ 0u) % 32u), arg_1);
    return Struct_1(arg_0.a);
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = countOneBits(~u_input.a.x) << (select(~(~1u), 52832u, arg_1.a) % 32u);
    let var_1 = func_7(func_6(9902u, Struct_1(true), true, func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-443f, 380f, 1325f, -166f)) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(578f, 651f, -437f, 1514f), vec4<f32>(-1839f, 365f, -2421f, 768f)))), func_4(func_2()), arg_1)), _wgslsmith_mult_i32(-(~_wgslsmith_clamp_i32(-1i, u_input.c.x, 33408i)), (-u_input.b & arg_0.x) | arg_0.x), var_0 >= (854u | _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, u_input.a.x, var_0), _wgslsmith_div_vec3_u32(vec3<u32>(79987u, var_0, 13095u), vec3<u32>(1u, 5844u, var_0)))));
    let var_2 = _wgslsmith_f_op_f32(ceil(-1000f));
    let var_3 = Struct_1(func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-340f, -573f, 490f, 345f) * vec4<f32>(var_2, var_2, 991f, 120f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, -328f, -1550f, -1314f)), !vec4<bool>(var_1.a, var_1.a, false, true))) * vec4<f32>(var_2, _wgslsmith_f_op_f32(-1000f * var_2), -1000f, _wgslsmith_f_op_f32(min(580f, -1138f)))), func_7(var_1, -abs(-2147483647i), _wgslsmith_f_op_f32(sign(-319f)) >= var_2), var_1));
    let var_4 = select(select(select(vec4<bool>(true, false, false, true), !(!vec4<bool>(var_3.a, var_1.a, false, arg_1.a)), true), select(!(!vec4<bool>(true, var_1.a, false, var_1.a)), !vec4<bool>(var_1.a, true, false, true), false), arg_1.a && var_1.a), vec4<bool>((arg_0.x & 2147483647i) < arg_0.x, false, !(!arg_1.a), var_1.a), select(true, !func_4(func_2()).a, true));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec2<u32>(_wgslsmith_dot_vec2_u32(abs(u_input.a), vec2<u32>(u_input.a.x, u_input.a.x)), u_input.a.x);
    var var_1 = func_1(countOneBits(vec3<i32>(39228i, -1i, ~u_input.c.x) << (_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.a.x, var_0.x, 0u), vec3<u32>(49242u, 0u, var_0.x)) % vec3<u32>(32u))), Struct_1(!any(vec2<bool>(true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(min(-u_input.e.x, min(-53277i, u_input.e.x)));
}

