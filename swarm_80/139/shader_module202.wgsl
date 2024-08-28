struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: u32,
    d: vec4<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(9511i, 4741i, 0i, -5347i);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: f32, arg_1: i32) -> vec4<i32> {
    let var_0 = 0u;
    var var_1 = Struct_2(Struct_1(arg_0 > _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_0, arg_0), -1463f))), vec2<f32>(arg_0, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_0, 880f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1068f, -1988f)) - -145f), all(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)))))), ~max(u_input.b, ~4294967295u), select(vec4<bool>(_wgslsmith_div_f32(arg_0, arg_0) > arg_0, true, true, true), select(vec4<bool>(all(vec4<bool>(false, true, true, false)), true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false))), select(select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    let var_2 = _wgslsmith_dot_vec4_u32(countOneBits(~(vec4<u32>(15814u, 29693u, var_1.c, 0u) << (vec4<u32>(19297u, 31891u, 0u, 79001u) % vec4<u32>(32u)))), _wgslsmith_mod_vec4_u32(vec4<u32>(~u_input.b, var_1.c, var_1.c << (49208u % 32u), var_0), vec4<u32>(var_1.c, 9702u, ~var_1.c, reverseBits(var_1.c))) >> ((vec4<u32>(countOneBits(18194u), u_input.b, ~4294967295u, 4294967295u) | vec4<u32>(u_input.b, ~var_1.c, var_0 & 4294967295u, u_input.b)) % vec4<u32>(32u)));
    let var_3 = Struct_3(var_1.d.zyw, all(select(select(vec3<bool>(true, false, false), var_1.d.zwz, true), !(!var_1.d.wwz), true)));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -597f) + _wgslsmith_f_op_f32(max(188f, 1000f)))), 1f));
    return firstLeadingBit(-(~(~max(vec4<i32>(2147483647i, u_input.c.x, arg_1, 9827i), vec4<i32>(15273i, global0.x, arg_1, -2147483647i)))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = !(!vec2<bool>(arg_1.a, arg_0.a));
    global0 = _wgslsmith_sub_vec4_i32(-func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -224f) * 1f), -reverseBits(global0.x)), vec4<i32>(global0.x, u_input.a, ~_wgslsmith_mod_i32(global0.x, -12349i), ~_wgslsmith_dot_vec3_i32(select(global0.zzw, vec3<i32>(global0.x, global0.x, 48840i), false), -vec3<i32>(u_input.a, u_input.a, u_input.a))));
    var var_1 = _wgslsmith_mult_i32(~select(_wgslsmith_div_i32(16082i, -2147483647i) >> (~u_input.b % 32u), 2147483647i, !var_0.x), abs(_wgslsmith_clamp_i32(reverseBits(global0.x), -2147483647i, global0.x)) & -_wgslsmith_add_i32(2147483647i, ~36088i));
    global0 = func_3(-622f, u_input.a);
    global0 = vec4<i32>(global0.x, i32(-1i) * -(1i & global0.x), 0i, ~(-70969i) >> (~4294967295u % 32u));
    return Struct_1(26511u >= max(~_wgslsmith_mod_u32(4294967295u, u_input.b), ~(~u_input.b)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> Struct_2 {
    var var_0 = reverseBits(vec4<u32>(25684u, ~u_input.b, arg_1.c, _wgslsmith_div_u32(~(~arg_1.c), _wgslsmith_clamp_u32(arg_1.c, 7887u, _wgslsmith_mult_u32(21091u, 39187u)))));
    var_0 = ~_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(reverseBits(countOneBits(vec4<u32>(4294967295u, 4294967295u, u_input.b, u_input.b))), vec4<u32>(select(var_0.x, 4294967295u, true), reverseBits(arg_1.c), _wgslsmith_add_u32(4396u, 47369u), ~0u)), vec4<u32>(~0u, 87819u, countOneBits(~7918u), arg_1.c), abs(vec4<u32>(0u, 1u, 1u, arg_1.c)) & ((vec4<u32>(arg_1.c, var_0.x, arg_1.c, 117947u) >> (vec4<u32>(1847u, 1u, arg_1.c, u_input.b) % vec4<u32>(32u))) & max(vec4<u32>(u_input.b, arg_1.c, 1u, 1u), vec4<u32>(var_0.x, 38350u, u_input.b, u_input.b))));
    return Struct_2(func_2(Struct_1(select(true, arg_1.a.a && false, arg_1.d.x)), Struct_1(!any(arg_1.d.zy))), _wgslsmith_f_op_vec2_f32(select(arg_1.b, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.x)), arg_1.b.x), arg_1.d.yw)), u_input.b, vec4<bool>(all(arg_1.d.wzz), !(true | any(vec3<bool>(true, true, true))), func_2(Struct_1(true), Struct_1(true)).a, arg_0.a));
}

fn func_1(arg_0: vec3<f32>, arg_1: bool, arg_2: Struct_1) -> vec3<bool> {
    global0 = ~(~_wgslsmith_add_vec4_i32(~(vec4<i32>(8836i, -1i, global0.x, -10182i) & vec4<i32>(-18638i, global0.x, global0.x, u_input.a)), _wgslsmith_sub_vec4_i32(-vec4<i32>(global0.x, u_input.a, u_input.c.x, u_input.a), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, global0.x, 29498i, u_input.c.x), vec4<i32>(-1i, global0.x, u_input.a, 2147483647i)))));
    global0 = vec4<i32>(u_input.a, ~global0.x, -2147483647i, u_input.c.x);
    var var_0 = func_4(func_2(arg_2, arg_2), Struct_2(Struct_1(arg_1), _wgslsmith_f_op_vec2_f32(-arg_0.yz), 15497u, select(!(!vec4<bool>(arg_2.a, true, true, true)), select(vec4<bool>(true, true, true, arg_2.a), !vec4<bool>(false, arg_1, true, true), false), !vec4<bool>(true, arg_1, arg_1, true))));
    global0 = _wgslsmith_sub_vec4_i32(~vec4<i32>(-(u_input.a << (var_0.c % 32u)), -global0.x, abs(_wgslsmith_sub_i32(-1i, u_input.c.x)), global0.x), vec4<i32>(_wgslsmith_mod_i32(abs(select(-2147483647i, 12448i, var_0.d.x)), u_input.a), 0i, func_3(_wgslsmith_f_op_f32(835f + var_0.b.x), firstTrailingBit(_wgslsmith_mult_i32(global0.x, -1i))).x, firstLeadingBit(~(-global0.x))));
    var_0 = func_4(func_2(Struct_1(var_0.a.a), func_2(func_2(var_0.a, Struct_1(true)), Struct_1(var_0.a.a))), func_4(func_4(func_4(arg_2, Struct_2(arg_2, vec2<f32>(var_0.b.x, arg_0.x), u_input.b, vec4<bool>(arg_2.a, true, var_0.a.a, arg_2.a))).a, func_4(var_0.a, Struct_2(Struct_1(true), vec2<f32>(arg_0.x, var_0.b.x), u_input.b, var_0.d))).a, func_4(Struct_1(true), Struct_2(func_4(arg_2, Struct_2(Struct_1(arg_1), vec2<f32>(arg_0.x, arg_0.x), var_0.c, vec4<bool>(arg_2.a, var_0.a.a, false, false))).a, vec2<f32>(-503f, var_0.b.x), firstTrailingBit(var_0.c), vec4<bool>(true, arg_2.a, var_0.d.x, arg_1)))));
    return vec3<bool>(true, var_0.d.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_0.b.x, _wgslsmith_f_op_f32(-var_0.b.x)))) <= func_4(func_4(Struct_1(var_0.a.a), func_4(arg_2, Struct_2(Struct_1(arg_2.a), vec2<f32>(-1238f, arg_0.x), 49079u, vec4<bool>(arg_1, true, true, arg_2.a)))).a, Struct_2(var_0.a, var_0.b, u_input.b, var_0.d)).b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -124f));
    var var_1 = Struct_3(!select(select(func_1(vec3<f32>(-1684f, -2262f, -261f), false, Struct_1(true)), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), func_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(183f, -146f, 688f), vec3<f32>(1698f, 1527f, -1000f), vec3<bool>(false, true, false))), func_1(vec3<f32>(-539f, -771f, 287f), false, Struct_1(false)).x, func_4(Struct_1(false), Struct_2(Struct_1(false), vec2<f32>(386f, -727f), 22700u, vec4<bool>(true, false, false, false))).a), func_1(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-103f, 659f, -1097f))), true, func_2(Struct_1(false), Struct_1(false))).x), true);
    global0 = _wgslsmith_mod_vec4_i32(~vec4<i32>(23306i, _wgslsmith_dot_vec3_i32(u_input.c, global0.zzw) & u_input.a, u_input.a, select(-1i, u_input.a, var_1.b) ^ _wgslsmith_dot_vec2_i32(u_input.c.xx, u_input.c.yx)), vec4<i32>(-(~(-10716i)), -global0.x, min(-(~global0.x), u_input.a), global0.x ^ -2147483647i));
    global0 = -(~vec4<i32>(_wgslsmith_mod_i32(-1i, max(-32941i, global0.x)), firstLeadingBit(global0.x), 1i, -(global0.x & global0.x)));
    let var_2 = select(reverseBits(-vec3<i32>(global0.x, _wgslsmith_mod_i32(u_input.a, -89756i), -11458i)), -global0.www, !(true != (-1i == u_input.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-688f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1435f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(2214f * -335f), _wgslsmith_f_op_f32(max(-1040f, 672f)), var_1.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(671f, -993f)) * _wgslsmith_f_op_f32(f32(-1f) * -729f)))));
}

