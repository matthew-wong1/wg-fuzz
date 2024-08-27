struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: f32,
    d: u32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_1) -> i32 {
    var var_0 = select(!(!vec2<bool>(arg_1.b.a.x, !arg_1.b.a.x)), select(vec2<bool>(!all(arg_1.a.a), true), !vec2<bool>(all(vec4<bool>(arg_2.a.x, arg_2.a.x, false, true)), arg_2.a.x && arg_1.b.a.x), any(arg_2.a.yw)), arg_1.a.a.x && false);
    var_0 = vec2<bool>(all(select(vec4<bool>(var_0.x, arg_2.a.x, all(vec3<bool>(false, true, arg_2.a.x)), arg_1.a.a.x), vec4<bool>(false, true && arg_2.a.x, -2339f > arg_2.c, false), var_0.x)), all(arg_2.a.wyy) || arg_1.b.a.x);
    var_0 = !arg_2.a.yy;
    var var_1 = Struct_2(Struct_1(select(select(vec4<bool>(arg_1.b.a.x, false, false, arg_2.a.x), !arg_1.b.a, !var_0.x), arg_1.b.a, true), vec4<i32>(~max(18244i, arg_1.a.b.x), countOneBits(~arg_1.a.b.x), arg_1.a.b.x, ~select(arg_1.a.b.x, 1i, arg_1.a.a.x)), arg_2.c, 87788u & arg_1.a.e.x, ~arg_2.e), Struct_1(!arg_2.a, vec4<i32>(_wgslsmith_dot_vec2_i32(select(arg_2.b.yz, arg_1.a.b.yx, false), _wgslsmith_sub_vec2_i32(arg_2.b.wz, arg_1.a.b.xw)), i32(-1i) * -u_input.a, _wgslsmith_sub_i32(-arg_2.b.x, 0i), (33550i | arg_2.b.x) & ~(-2147483647i)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-1485f, _wgslsmith_div_f32(arg_1.a.c, arg_2.c))))), arg_2.d, ~(~vec4<u32>(0u, arg_1.a.d, 1u, u_input.b.x) ^ _wgslsmith_add_vec4_u32(arg_2.e, vec4<u32>(arg_1.a.e.x, 4294967295u, u_input.b.x, 1u)))));
    let var_2 = var_1.b;
    return max(reverseBits(_wgslsmith_add_i32(arg_1.a.b.x, reverseBits(0i))), firstTrailingBit(countOneBits(-4067i)) >> ((_wgslsmith_div_u32(12249u, 51251u) | firstTrailingBit(4294967295u)) % 32u)) << (arg_1.a.d % 32u);
}

fn func_2(arg_0: f32) -> Struct_2 {
    var var_0 = _wgslsmith_mult_vec4_i32(countOneBits(~vec4<i32>(u_input.a, countOneBits(1i), _wgslsmith_mult_i32(u_input.a, u_input.a), i32(-1i) * -13810i)), ~(~select(vec4<i32>(u_input.a, u_input.a, -46427i, 2147483647i), vec4<i32>(u_input.a, 38064i, u_input.a, -1i), vec4<bool>(true, true, false, true))) ^ vec4<i32>(u_input.a, firstLeadingBit(-1i), _wgslsmith_add_i32(select(u_input.a, 0i, false), ~u_input.a), _wgslsmith_mod_i32(-1i, u_input.a) ^ (u_input.a >> (u_input.b.x % 32u))));
    return Struct_2(Struct_1(!vec4<bool>(false, true, true, u_input.a == var_0.x), -vec4<i32>(0i >> (0u % 32u), ~var_0.x, _wgslsmith_mult_i32(-32325i, u_input.a), func_3(u_input.b.yzz, Struct_2(Struct_1(vec4<bool>(false, true, true, false), vec4<i32>(1i, u_input.a, var_0.x, 8262i), arg_0, u_input.b.x, vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), Struct_1(vec4<bool>(false, false, true, false), vec4<i32>(-74925i, var_0.x, 79389i, -1i), arg_0, 4294967295u, vec4<u32>(29418u, u_input.b.x, u_input.b.x, 1u))), Struct_1(vec4<bool>(true, true, false, true), vec4<i32>(var_0.x, -1i, u_input.a, 9567i), 176f, 47173u, u_input.b))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(arg_0, _wgslsmith_f_op_f32(-arg_0))))), 51896u, _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(u_input.b, vec4<u32>(70907u, u_input.b.x, 54815u, 0u)), _wgslsmith_clamp_vec4_u32(~u_input.b, abs(u_input.b), ~u_input.b))), Struct_1(vec4<bool>(all(vec2<bool>(true, true)), all(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), false)), all(vec4<bool>(true, true, true, true)), select(true, var_0.x <= u_input.a, true)), firstTrailingBit(-vec4<i32>(0i, -1i, -36862i, u_input.a)) & _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, u_input.a, 0i, 0i), ~vec4<i32>(var_0.x, var_0.x, var_0.x, u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0, -1034f)))), ~(~1u), vec4<u32>(u_input.b.x & ~u_input.b.x, ~u_input.b.x >> (_wgslsmith_sub_u32(67581u, 26686u) % 32u), u_input.b.x, u_input.b.x)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<f32>) -> f32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.a.c - arg_2.x))), func_2(_wgslsmith_f_op_f32(sign(arg_1.c))).a.c, true))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_0.b.c, arg_1.c)), _wgslsmith_f_op_f32(abs(arg_2.x)))), arg_1.c);
    let var_1 = _wgslsmith_div_vec2_i32(-arg_1.b.zy, firstTrailingBit(abs(vec2<i32>(-2147483647i, 29559i) ^ vec2<i32>(2147483647i, u_input.a)) | min(arg_0.b.b.zz, firstLeadingBit(arg_1.b.yw))));
    var var_2 = func_2(arg_2.x);
    var var_3 = select(~(vec4<i32>(u_input.a, -26363i, var_1.x, 8673i) ^ arg_1.b) << (_wgslsmith_mult_vec4_u32(vec4<u32>(func_2(1353f).b.e.x, var_2.b.e.x, 1u, 4294967295u), abs(arg_0.a.e) << (arg_0.a.e % vec4<u32>(32u))) % vec4<u32>(32u)), select(-abs(arg_0.b.b), -firstLeadingBit(func_2(-551f).a.b), func_2(-1104f).a.a.x), false);
    var_2 = func_2(_wgslsmith_f_op_f32(arg_2.x - var_0.x));
    return arg_0.a.c;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool) -> i32 {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.a.c, -374f, 987f, -120f))) - vec4<f32>(_wgslsmith_f_op_f32(1000f * 231f), _wgslsmith_f_op_f32(arg_0.a.c * arg_1.c), arg_0.a.c, _wgslsmith_f_op_f32(step(1200f, -208f)))))), vec4<f32>(_wgslsmith_div_f32(772f, arg_0.a.c), arg_0.b.c, arg_0.a.c, _wgslsmith_f_op_f32(func_4(func_2(_wgslsmith_f_op_f32(-arg_1.c)), arg_0.a, vec2<f32>(arg_1.c, _wgslsmith_div_f32(arg_0.a.c, -570f))))));
    var var_1 = Struct_2(func_2(_wgslsmith_f_op_f32(-650f * var_0.x)).b, arg_1);
    var var_2 = arg_0;
    let var_3 = true;
    let var_4 = select(vec3<bool>(!arg_0.b.a.x, var_1.a.a.x, any(func_2(830f).b.a.yxz) && func_2(_wgslsmith_f_op_f32(func_4(Struct_2(Struct_1(var_2.a.a, var_2.b.b, 274f, 25130u, var_2.a.e), Struct_1(vec4<bool>(false, true, false, var_2.a.a.x), var_2.b.b, var_2.b.c, 56639u, vec4<u32>(0u, var_2.b.e.x, arg_0.b.d, arg_1.d))), arg_0.a, vec2<f32>(730f, 363f)))).a.a.x), select(vec3<bool>(true, var_3, arg_0.b.a.x), arg_1.a.zxy, !(!vec3<bool>(var_1.b.a.x, true, var_2.b.a.x))), !vec3<bool>(!var_3, all(func_2(-1655f).b.a), true));
    return ~(~(~arg_1.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(vec3<i32>(_wgslsmith_sub_i32(firstTrailingBit(func_1(Struct_2(Struct_1(vec4<bool>(true, true, true, false), vec4<i32>(u_input.a, u_input.a, -27079i, u_input.a), -330f, u_input.b.x, vec4<u32>(0u, u_input.b.x, u_input.b.x, 62178u)), Struct_1(vec4<bool>(true, false, true, true), vec4<i32>(1i, u_input.a, u_input.a, u_input.a), 129f, u_input.b.x, vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 53740u))), Struct_1(vec4<bool>(true, true, false, false), vec4<i32>(-38383i, 31828i, u_input.a, u_input.a), -121f, 0u, u_input.b), true)), -1i), 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(22111i, -12317i, 1i), ~select(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(18830i, u_input.a, -1i), vec3<bool>(true, false, false)))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-146f, -566f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_4(func_2(_wgslsmith_f_op_f32(-980f + 2392f)), func_2(952f).a, vec2<f32>(func_2(1000f).a.c, 1f))), 1716f)));
    let var_2 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1 + _wgslsmith_div_f32(var_1, var_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_2(Struct_1(vec4<bool>(false, false, false, false), vec4<i32>(-30944i, var_0.x, -2147483647i, u_input.a), var_1, 33047u, u_input.b), Struct_1(vec4<bool>(true, true, false, false), vec4<i32>(u_input.a, var_0.x, u_input.a, var_0.x), var_1, u_input.b.x, vec4<u32>(0u, u_input.b.x, 0u, 1u))), Struct_1(vec4<bool>(true, false, true, true), vec4<i32>(var_0.x, u_input.a, 1i, u_input.a), var_1, 0u, u_input.b), vec2<f32>(var_1, 523f)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(abs(var_1))))), 510f)));
    var var_3 = Struct_1(!vec4<bool>(true, !(u_input.a > var_0.x), all(vec4<bool>(false, false, true, false)) || (-21374i > var_0.x), any(vec4<bool>(true, true, false, true))), vec4<i32>(firstTrailingBit(firstTrailingBit(u_input.a) << (13899u % 32u)), _wgslsmith_mod_i32(~(~(-2147483647i)), ~_wgslsmith_add_i32(var_0.x, -2147483647i)), select(-_wgslsmith_mod_i32(1i, var_0.x), -21493i, !(var_0.x < 2147483647i)), ~(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, var_0.x, u_input.a, var_0.x), vec4<i32>(14975i, u_input.a, var_0.x, u_input.a)))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1497f), _wgslsmith_f_op_f32(ceil(-1219f))))), _wgslsmith_mod_u32(~(~u_input.b.x) >> ((u_input.b.x >> (countOneBits(14446u) % 32u)) % 32u), ~4294967295u), ~vec4<u32>(abs(u_input.b.x) ^ 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 55316u, u_input.b.x, 3570u), vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.b.x)), ~abs(38096u), ~reverseBits(1u)));
    var var_4 = var_3.b;
    var var_5 = ~(var_3.e.xxx << (vec3<u32>((var_3.d >> (30646u % 32u)) ^ ~11787u, abs(u_input.b.x), _wgslsmith_clamp_u32(min(3396u, var_3.e.x), max(1u, var_3.d), u_input.b.x)) % vec3<u32>(32u)));
    var var_6 = func_2(_wgslsmith_f_op_f32(ceil(var_3.c))).b;
    var_5 = vec3<u32>(reverseBits(var_6.e.x << ((~109450u | ~u_input.b.x) % 32u)), var_3.e.x, 42898u);
    let x = u_input.a;
    s_output = StorageBuffer(-1000f, ~u_input.b.yxw, 1u | countOneBits(u_input.b.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-103f)))));
}

