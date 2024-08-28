struct Struct_1 {
    a: f32,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
    c: vec3<bool>,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: bool,
}

struct Struct_4 {
    a: i32,
    b: vec4<f32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3, arg_2: Struct_3) -> bool {
    global0 = Struct_1(arg_1.a.b, arg_0.a, 1329f);
    let var_0 = Struct_3(Struct_2(select(!select(vec2<bool>(arg_1.a.a.x, false), arg_2.a.c.xy, arg_1.c), !arg_2.a.c.zz, !any(vec3<bool>(true, arg_2.a.a.x, arg_1.c))), _wgslsmith_f_op_f32(-arg_1.a.b), arg_2.a.c, arg_1.a.d), _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a.x, 40560u, arg_2.a.d, u_input.a.x), vec4<u32>(arg_1.a.d & 0u, 1u, ~arg_1.b.x, u_input.a.x)), arg_1.b ^ _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 26922u, arg_1.b.x, u_input.a.x), vec4<u32>(4294967295u, arg_2.b.x, 1u, 38708u))), all(vec2<bool>(~arg_2.b.x <= u_input.b.x, !(!arg_2.a.c.x))));
    global0 = Struct_1(_wgslsmith_div_f32(arg_2.a.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)) + _wgslsmith_f_op_f32(abs(global0.c)))), ~min(1i | arg_0.c.x, arg_0.c.x) & firstLeadingBit(arg_0.a << (arg_2.a.d % 32u)), global0.a);
    var var_1 = arg_0.c;
    var var_2 = ~firstLeadingBit(select(firstLeadingBit(vec4<u32>(arg_1.b.x, u_input.b.x, u_input.a.x, 30344u) ^ u_input.b), vec4<u32>(select(var_0.b.x, var_0.a.d, var_0.a.a.x), 47350u | arg_1.a.d, u_input.b.x | 58742u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.b.x, arg_2.b.x, arg_1.b.x, arg_2.b.x), var_0.b)), true));
    return false;
}

fn func_2() -> Struct_4 {
    var var_0 = false;
    let var_1 = vec2<bool>(true, true);
    let var_2 = select(select(!var_1, var_1, var_1.x), var_1, vec2<bool>(504f == global0.c, var_1.x & false));
    var_0 = var_1.x;
    var_0 = !func_3(Struct_4(~7275i, vec4<f32>(_wgslsmith_f_op_f32(-1000f - 204f), -288f, _wgslsmith_f_op_f32(679f + -1791f), global0.c), abs(-vec3<i32>(-53096i, global0.b, global0.b))), Struct_3(Struct_2(select(vec2<bool>(var_2.x, false), vec2<bool>(var_1.x, true), var_2), _wgslsmith_f_op_f32(-global0.c), vec3<bool>(true, false, false), u_input.a.x), vec4<u32>(45416u, 44989u, u_input.a.x, u_input.a.x) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, 18997u, u_input.a.x, u_input.a.x), vec4<u32>(0u, u_input.a.x, u_input.b.x, 1u)) % vec4<u32>(32u)), true), Struct_3(Struct_2(!var_1, -1000f, select(vec3<bool>(var_2.x, var_1.x, true), vec3<bool>(var_1.x, var_1.x, var_2.x), vec3<bool>(var_1.x, var_2.x, var_2.x)), ~2182u), _wgslsmith_mod_vec4_u32(u_input.b, u_input.b), any(var_1)));
    return Struct_4(29488i, vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.a))), 295f, global0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(global0.c + global0.c)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.c))))), abs(vec3<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, 1i, global0.b), vec3<i32>(u_input.c, u_input.c, global0.b)), -1i, -38140i)));
}

fn func_4(arg_0: Struct_4, arg_1: f32, arg_2: vec2<bool>, arg_3: i32) -> Struct_1 {
    var var_0 = Struct_2(vec2<bool>(arg_1 <= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(675f, arg_0.b.x)), true), _wgslsmith_div_f32(-159f, _wgslsmith_f_op_f32(arg_1 + arg_0.b.x)), !vec3<bool>(-456f > _wgslsmith_f_op_f32(trunc(global0.c)), true, false), u_input.b.x);
    global0 = Struct_1(_wgslsmith_f_op_f32(-global0.c), select(func_2().a, _wgslsmith_dot_vec4_i32(~vec4<i32>(arg_3, -17346i, u_input.c, u_input.c), vec4<i32>(arg_3, arg_0.c.x, 1i, 36424i) ^ vec4<i32>(-78721i, 1i, u_input.c, -7849i)), true) ^ (arg_0.a & _wgslsmith_mult_i32(global0.b, -46229i)), arg_0.b.x);
    var var_1 = ~(countOneBits(-5260i) >> (_wgslsmith_mod_u32(~_wgslsmith_mod_u32(30716u, 4294967295u), 1u) % 32u));
    let var_2 = func_2().b;
    var var_3 = -firstLeadingBit(countOneBits(~vec2<i32>(u_input.c, -2147483647i)));
    return Struct_1(_wgslsmith_f_op_f32(round(global0.a)), ~(~2147483647i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(173f, 291f, false))) * 1899f));
}

fn func_1() -> u32 {
    let var_0 = vec2<u32>(1u, ~699u) & u_input.a;
    global0 = func_4(func_2(), global0.a, !(!select(vec2<bool>(true, true), vec2<bool>(true, false), u_input.c >= 1i)), u_input.c);
    let var_1 = 44520i;
    let var_2 = Struct_3(Struct_2(vec2<bool>(_wgslsmith_sub_i32(-2147483647i, -2147483647i) <= ~var_1, true), global0.a, !select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false))), 11506u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(13800u, var_0.x, var_0.x), ~vec3<u32>(u_input.b.x, u_input.b.x, var_0.x))), _wgslsmith_mult_vec4_u32(max(~(~vec4<u32>(13977u, u_input.b.x, 188u, u_input.b.x)), u_input.b), countOneBits((u_input.b ^ vec4<u32>(1u, 0u, u_input.b.x, var_0.x)) | vec4<u32>(u_input.a.x, 57150u, 35423u, 13481u))), (true || !(var_1 != 2147483647i)) | true);
    var var_3 = firstTrailingBit(~var_0.x) != ~u_input.a.x;
    return abs(4147u);
}

fn func_5(arg_0: u32, arg_1: vec2<bool>, arg_2: Struct_2) -> Struct_1 {
    var var_0 = arg_2;
    var_0 = Struct_2(select(select(vec2<bool>(1i > u_input.c, false), select(vec2<bool>(false, arg_1.x), vec2<bool>(arg_2.a.x, arg_1.x), arg_1.x), select(!arg_1, select(vec2<bool>(arg_1.x, true), vec2<bool>(false, true), vec2<bool>(arg_2.c.x, true)), true)), select(vec2<bool>(false, arg_2.c.x), arg_2.a, any(!var_0.a)), !vec2<bool>(arg_1.x, select(var_0.a.x, var_0.c.x, arg_1.x))), 599f, select(vec3<bool>(all(select(vec4<bool>(true, true, var_0.a.x, true), vec4<bool>(arg_1.x, var_0.c.x, var_0.c.x, arg_1.x), vec4<bool>(arg_1.x, var_0.c.x, false, true))), abs(u_input.b.x) <= ~arg_2.d, select(any(vec4<bool>(arg_1.x, arg_2.a.x, var_0.a.x, false)), any(arg_2.a), all(arg_2.c))), var_0.c, select(select(select(var_0.c, arg_2.c, true), vec3<bool>(false, true, arg_2.c.x), true), !(!arg_2.c), any(vec4<bool>(true, arg_2.c.x, false, arg_2.a.x)))), abs(_wgslsmith_mod_u32(4294967295u, 22511u)) ^ _wgslsmith_clamp_u32(_wgslsmith_sub_u32(~21857u, u_input.a.x), var_0.d, arg_0 << (24414u % 32u)));
    var_0 = Struct_2(vec2<bool>(any(arg_2.c), true), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(845f - _wgslsmith_f_op_f32(-arg_2.b)))), select(select(vec3<bool>(true, arg_2.c.x, true), vec3<bool>(true, arg_1.x, !arg_2.a.x), true), vec3<bool>(true, !arg_1.x, arg_2.a.x), !(!var_0.c)), u_input.a.x);
    let var_1 = _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(select(vec4<i32>(1i, countOneBits(1i), -2147483647i, -79589i), vec4<i32>(countOneBits(14001i), _wgslsmith_mod_i32(0i, global0.b), ~1i, ~global0.b), true), _wgslsmith_sub_vec4_i32(-vec4<i32>(global0.b, u_input.c, 2147483647i, global0.b) << (_wgslsmith_mod_vec4_u32(vec4<u32>(arg_2.d, 598u, 0u, var_0.d), vec4<u32>(arg_2.d, 21897u, u_input.b.x, 14385u)) % vec4<u32>(32u)), ~(vec4<i32>(-58372i, -2147483647i, global0.b, global0.b) >> (u_input.b % vec4<u32>(32u))))), _wgslsmith_sub_vec4_i32(~vec4<i32>(-1i, -34472i, 0i, global0.b), firstLeadingBit(vec4<i32>(u_input.c, u_input.c, -51946i, 1i) | vec4<i32>(u_input.c, 2147483647i, 1i, u_input.c))) & _wgslsmith_mult_vec4_i32(~(~vec4<i32>(3842i, global0.b, 0i, 17263i)), vec4<i32>(_wgslsmith_add_i32(-41209i, 0i), global0.b, 2147483647i & u_input.c, 1i)));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.c + _wgslsmith_div_f32(583f, _wgslsmith_f_op_f32(max(-738f, arg_2.b)))), global0.a)), _wgslsmith_add_i32(global0.b, _wgslsmith_dot_vec2_i32(var_1.zx, vec2<i32>(~(-1i), var_1.x))), 1587f);
    return Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(679f)) - _wgslsmith_f_op_f32(-arg_2.b)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -368f))))))), i32(-1i) * -(~u_input.c), global0.c);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(_wgslsmith_mod_u32(~45101u, _wgslsmith_sub_u32(~u_input.a.x << (_wgslsmith_mod_u32(1u, u_input.b.x) % 32u), _wgslsmith_sub_u32(func_1(), 1u))), !vec2<bool>(any(vec3<bool>(true, true, true)), false), Struct_2(vec2<bool>(true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(800f, global0.c))))), !vec3<bool>(all(vec2<bool>(false, true)), true, true), _wgslsmith_div_u32(~u_input.b.x, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x))));
    global0 = func_5(_wgslsmith_div_u32(min(u_input.a.x ^ 4294967295u, ~u_input.a.x), _wgslsmith_mod_u32(u_input.a.x, 1u)) | ~u_input.a.x, vec2<bool>(false, true), Struct_2(vec2<bool>(~u_input.c >= -19086i, true), -674f, !vec3<bool>(true, true, 185f > global0.c), 53565u));
    var var_0 = select(vec3<i32>(firstLeadingBit(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(global0.b, 0i), vec2<i32>(86328i, global0.b)), reverseBits(vec2<i32>(-1i, -16571i)))), global0.b, 8310i), vec3<i32>(u_input.c, func_4(Struct_4(-1i, vec4<f32>(832f, 196f, -697f, global0.a), vec3<i32>(13257i, u_input.c, 1i)), 513f, vec2<bool>(false, true), global0.b).b & func_5(1u, vec2<bool>(true, true), Struct_2(vec2<bool>(false, false), global0.c, vec3<bool>(false, true, false), u_input.a.x)).b, ~global0.b) & select(firstLeadingBit(vec3<i32>(21969i, global0.b, u_input.c)), -_wgslsmith_div_vec3_i32(vec3<i32>(u_input.c, u_input.c, -2147483647i), vec3<i32>(1i, u_input.c, 7568i)), vec3<bool>(false, true, true)), true);
    let var_1 = Struct_2(select(select(select(select(vec2<bool>(true, false), vec2<bool>(false, true), true), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec2<bool>(false, true)))), vec2<bool>(true, true), !(-global0.b < var_0.x)), global0.a, vec3<bool>(any(vec3<bool>(true, -1244f >= global0.a, true)), abs(u_input.a.x) >= u_input.b.x, false), ~max(_wgslsmith_mod_u32(u_input.a.x, ~1u), 31981u));
    var var_2 = Struct_3(var_1, vec4<u32>(var_1.d, 4294967295u, u_input.a.x, 1u), true);
    var var_3 = func_3(func_2(), Struct_3(Struct_2(!var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1048f, var_1.b)), vec3<bool>(var_2.a.c.x && var_2.c, false, false), reverseBits(var_1.d)), u_input.b, _wgslsmith_f_op_f32(var_1.b + _wgslsmith_f_op_f32(1548f + var_1.b)) > 495f), Struct_3(Struct_2(!(!var_1.a), 734f, vec3<bool>(func_3(Struct_4(u_input.c, vec4<f32>(var_1.b, 572f, 1170f, 622f), vec3<i32>(1i, var_0.x, var_0.x)), Struct_3(var_2.a, vec4<u32>(0u, var_2.a.d, 1u, 1u), var_2.a.a.x), Struct_3(Struct_2(var_1.c.xx, -647f, vec3<bool>(false, var_2.a.c.x, true), 51232u), vec4<u32>(var_2.a.d, 53905u, 1u, 37450u), false)), var_1.c.x, var_1.a.x), u_input.a.x), vec4<u32>(_wgslsmith_div_u32(~4294967295u, ~0u), _wgslsmith_clamp_u32(abs(var_2.b.x), var_1.d, var_1.d), ~reverseBits(0u), _wgslsmith_sub_u32(4294967295u, ~u_input.a.x)), all(vec2<bool>(!var_2.a.a.x, all(vec2<bool>(var_2.c, false))))));
    var_2 = Struct_3(Struct_2(!var_1.a, _wgslsmith_f_op_f32(-global0.a), select(!var_1.c, var_2.a.c, var_2.a.a.x), _wgslsmith_clamp_u32(var_2.a.d, func_1(), _wgslsmith_sub_u32(~u_input.a.x, var_1.d))), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.b.x, u_input.a.x, func_1(), u_input.a.x), select(u_input.b, firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.d, 4294967295u, 49907u, 36190u), var_2.b)), select(!vec4<bool>(var_2.c, var_1.c.x, true, true), !vec4<bool>(false, var_2.a.c.x, false, false), false)), ~(var_2.b ^ (vec4<u32>(var_1.d, var_1.d, var_2.b.x, var_2.a.d) & vec4<u32>(1u, var_1.d, var_2.a.d, 48650u)))), any(select(select(select(vec3<bool>(var_1.c.x, var_1.c.x, true), vec3<bool>(true, var_1.c.x, var_1.c.x), false), select(vec3<bool>(false, true, var_1.a.x), vec3<bool>(var_2.c, var_2.c, false), var_1.c), all(var_1.a)), !select(var_2.a.c, vec3<bool>(var_1.c.x, false, var_1.c.x), var_1.a.x), vec3<bool>(var_1.a.x, all(vec4<bool>(true, false, var_2.a.c.x, true)), true))));
    var_2 = Struct_3(var_2.a, max(vec4<u32>(var_1.d, ~0u, 0u, u_input.a.x), vec4<u32>(var_2.a.d & _wgslsmith_sub_u32(u_input.b.x, var_1.d), (u_input.b.x << (0u % 32u)) | min(21827u, 40055u), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(var_2.b.wx, var_2.b.xy), min(var_2.b.zy, vec2<u32>(var_2.b.x, u_input.b.x))), u_input.b.x)), var_2.a.d == _wgslsmith_sub_u32(~select(u_input.b.x, 0u, var_2.c), func_1()));
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_sub_u32(~var_2.a.d, ~_wgslsmith_dot_vec2_u32(u_input.b.wy, u_input.a)), (var_2.b.x & 4294967295u) | select(var_1.d, ~var_2.b.x, true)));
}

