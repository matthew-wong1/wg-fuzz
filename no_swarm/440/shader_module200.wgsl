struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: vec2<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: bool) -> vec4<u32> {
    var var_0 = Struct_2(u_input.e.x, _wgslsmith_add_u32(firstLeadingBit((arg_0.b << (arg_0.c.x % 32u)) >> (arg_0.c.x % 32u)), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(56229u, arg_0.b, arg_0.c.x), vec3<u32>(u_input.d, 9817u, 4294967295u)), 8355u)), _wgslsmith_add_vec2_u32(max(vec2<u32>(u_input.b.x, u_input.d), ~vec2<u32>(83505u, 78095u)), vec2<u32>(u_input.b.x, arg_0.b)) | select(~_wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.b, 48751u), arg_0.c), u_input.b, !(1250f <= arg_1)));
    let var_1 = Struct_3(vec2<f32>(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(170f - -1141f)) + arg_1)), ~arg_0.a);
    let var_2 = max(~_wgslsmith_div_i32(abs(_wgslsmith_mod_i32(2147483647i, u_input.e.x)), arg_0.a), -(i32(-1i) * -(~var_1.b)));
    var var_3 = select(!vec2<bool>(!arg_2, true), vec2<bool>(all(!select(vec3<bool>(arg_2, false, false), vec3<bool>(arg_2, arg_2, true), vec3<bool>(true, arg_2, false))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(var_1.a.x)), _wgslsmith_div_f32(571f, arg_1))) <= _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_1, 503f)))), true);
    let var_4 = ~(-52554i);
    return abs(countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, var_0.c.x, 4294967295u, 4294967295u), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.b, 0u, var_0.c.x, var_0.b), vec4<u32>(1u, 52121u, 109438u, 21272u)))) << (vec4<u32>(firstLeadingBit(select(u_input.d, arg_0.c.x, false)), _wgslsmith_sub_u32(~96705u, 15590u), _wgslsmith_add_u32(_wgslsmith_add_u32(var_0.b, 3685u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c.x, var_0.b, u_input.d, u_input.b.x), vec4<u32>(1u, u_input.b.x, arg_0.b, 56543u))), ~_wgslsmith_mod_u32(arg_0.c.x, 3394u)) % vec4<u32>(32u)));
}

fn func_2(arg_0: Struct_3) -> Struct_1 {
    let var_0 = min(reverseBits(firstTrailingBit(vec4<u32>(u_input.d, 4294967295u, u_input.b.x, u_input.d)) ^ vec4<u32>(u_input.b.x, u_input.d, u_input.b.x, 4294967295u)), func_3(Struct_2(-u_input.e.x, u_input.d, ~u_input.b), arg_0.a.x, true)) >> (~vec4<u32>(~(58657u ^ u_input.d), 0u, u_input.d, ~u_input.d) % vec4<u32>(32u));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_0.a.x * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(arg_0.a.x))))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_0.a.x, _wgslsmith_f_op_f32(arg_0.a.x - arg_0.a.x)))), arg_0.a.x, _wgslsmith_f_op_f32(abs(arg_0.a.x))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(747f, 693f), _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -1193f)), _wgslsmith_f_op_f32(-var_1.x))), ~reverseBits(~reverseBits(u_input.d)), var_0.x, countOneBits(-u_input.e), ~firstLeadingBit(1i));
    let var_3 = arg_0.a.x;
    var var_4 = !(42079u != var_2.c) | all(!vec3<bool>(all(vec4<bool>(true, false, true, true)), true, true));
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.a.x, var_2.a.x, var_1.x), var_2.a, vec3<bool>(false, true, true)))))), 18969u, 0u, vec4<i32>(-1i) * -var_2.d, -1i);
}

fn func_4(arg_0: Struct_1) -> Struct_3 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(1428f, arg_0.a.x, arg_0.a.x) - _wgslsmith_f_op_vec3_f32(arg_0.a + vec3<f32>(arg_0.a.x, arg_0.a.x, -284f))), arg_0.a)) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-144f, arg_0.a.x, arg_0.a.x), arg_0.a))), abs(u_input.d), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, arg_0.b, u_input.b.x, 1u), ~_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.b, u_input.d, 0u, u_input.d), vec4<u32>(1u, u_input.d, 0u, 0u))), vec4<i32>(reverseBits(_wgslsmith_mult_i32(arg_0.d.x, arg_0.d.x)) | 2147483647i, ~arg_0.d.x, firstLeadingBit(u_input.c.x << (_wgslsmith_sub_u32(0u, arg_0.c) % 32u)), -1i), -19706i);
    var var_1 = _wgslsmith_mult_u32(4294967295u, reverseBits(select(_wgslsmith_mult_u32(0u, u_input.b.x << (8433u % 32u)), ~arg_0.b, any(vec2<bool>(false, true)) & select(true, true, true))));
    var_1 = ~(~u_input.d);
    let var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a.yz)))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, var_0.a.x)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1526f, arg_0.a.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(138f, arg_0.a.x) + vec2<f32>(-954f, -143f)))))), var_0.d.x);
    var_1 = ~(~var_0.c);
    return Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(154f * var_0.a.x), _wgslsmith_f_op_f32(-1184f - var_2.a.x)) - vec2<f32>(_wgslsmith_div_f32(-224f, -1129f), _wgslsmith_f_op_f32(-arg_0.a.x))), _wgslsmith_div_vec2_f32(arg_0.a.yz, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.a), vec2<f32>(var_2.a.x, 1069f)))), var_0.e);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3) -> Struct_1 {
    var var_0 = reverseBits(min(~(vec4<u32>(114012u, 3880u, u_input.b.x, u_input.d) | vec4<u32>(43736u, u_input.b.x, u_input.d, 4294967295u)), ~(~vec4<u32>(0u, 2878u, u_input.d, 0u))));
    var_0 = ~(~vec4<u32>(25598u, select(1u, 1u, u_input.c.x < arg_1.b), 4294967295u, 0u));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-459f, -226f, 1941f), vec3<f32>(arg_0.a.x, 696f, -1216f))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0.a.x, -385f, arg_0.a.x))), any(vec4<bool>(false, true, false, false)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_1.a.x, -1086f, 693f), vec3<f32>(arg_1.a.x, 747f, arg_0.a.x)))))))), 7702u >> (_wgslsmith_sub_u32(~(~u_input.d), ~(~u_input.d)) % 32u), ~(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 16299u, u_input.d), var_0.www))), max(u_input.e, abs(u_input.e) & (vec4<i32>(20642i, 0i, -2147483647i, 2780i) << (vec4<u32>(38961u, u_input.b.x, u_input.d, 0u) % vec4<u32>(32u)))) << (vec4<u32>(~(~18921u), ~firstLeadingBit(36818u), select(u_input.d, var_0.x, true) | _wgslsmith_dot_vec3_u32(var_0.yzx, var_0.yyy), reverseBits(var_0.x >> (9277u % 32u))) % vec4<u32>(32u)), -6234i);
    var_0 = vec4<u32>(38581u, 4294967295u | u_input.b.x, ~(~var_1.b | u_input.d), abs(reverseBits(min(abs(var_0.x), 12790u))));
    var_0 = ~(~_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(abs(vec4<u32>(u_input.b.x, var_0.x, 0u, var_0.x)), ~vec4<u32>(1u, 0u, 17382u, 16447u)), vec4<u32>(firstTrailingBit(1u), var_0.x, u_input.b.x, ~1u)));
    return Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.a * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.a))), func_2(arg_1).a), var_0.x, 51996u, ~(-u_input.e), -arg_0.b);
}

fn func_1() -> Struct_1 {
    let var_0 = func_5(func_4(func_2(Struct_3(_wgslsmith_div_vec2_f32(vec2<f32>(-1504f, 822f), vec2<f32>(-267f, 174f)), -1i))), Struct_3(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-773f + 416f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-850f - -947f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), ~u_input.a));
    let var_1 = true;
    var var_2 = vec2<u32>(~_wgslsmith_add_u32(~_wgslsmith_mod_u32(1u, u_input.b.x), min(12315u, 1u)), ~select(u_input.d, u_input.d, all(!vec2<bool>(false, var_1))));
    var_2 = ~firstLeadingBit(vec2<u32>(~(~var_2.x), func_5(func_4(Struct_1(var_0.a, var_0.b, 54612u, u_input.e, var_0.e)), Struct_3(var_0.a.xy, 2147483647i)).b));
    var_2 = ~vec2<u32>(var_0.b, 53053u);
    return var_0;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_3, arg_2: i32) -> f32 {
    var var_0 = _wgslsmith_div_vec4_i32(u_input.e, func_1().d);
    var_0 = abs(vec4<i32>((i32(-1i) * -14571i) >> (u_input.d % 32u), -15556i & ~u_input.c.x, arg_1.b, ~(-71768i))) ^ _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(-arg_0.d, -(~u_input.e)), arg_0.d << (firstTrailingBit(vec4<u32>(72768u, u_input.b.x, arg_0.c, 30003u) & vec4<u32>(arg_0.c, u_input.b.x, 4294967295u, 4294967295u)) % vec4<u32>(32u)));
    var var_1 = !any(select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), false), select(vec2<bool>(false, true), vec2<bool>(false, true), true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false))), select(vec2<bool>(false, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true))), vec2<bool>(true, true)));
    let var_2 = Struct_2(firstTrailingBit(arg_1.b & _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2, 1i), vec2<i32>(arg_2, arg_2))), abs(~(~_wgslsmith_add_u32(arg_0.b, u_input.b.x))), select(func_3(Struct_2(51079i, 103023u, u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.a.x))), false).yx, u_input.b, select(false, !(var_0.x <= -2147483647i), false || all(vec3<bool>(false, false, true)))));
    var_0 = -max(-vec4<i32>(var_0.x, i32(-1i) * -1i, _wgslsmith_dot_vec3_i32(var_0.yzz, vec3<i32>(var_0.x, var_2.a, var_0.x)), ~53078i), u_input.e & vec4<i32>(arg_0.d.x, arg_1.b, 1i, ~arg_1.b));
    return 1419f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_6(func_1(), Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(348f, 3637f) - vec2<f32>(1000f, -568f)), -29135i), u_input.a)), -169f));
    let var_1 = func_2(func_4(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.x, var_0.x, 624f)))), u_input.b.x, u_input.b.x & ~30489u, ~u_input.e, select(~u_input.e.x, u_input.c.x, all(vec3<bool>(false, false, false))))));
    var var_2 = vec3<f32>(-809f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.a.x), var_0.x)), _wgslsmith_f_op_f32(-var_1.a.x));
    var var_3 = _wgslsmith_f_op_f32(159f + 1265f);
    var_2 = _wgslsmith_f_op_vec3_f32(sign(func_2(func_4(Struct_1(var_1.a, u_input.b.x, firstTrailingBit(4294967295u), var_1.d | var_1.d, 1i))).a));
    let var_4 = u_input.b.x >> (countOneBits(func_1().b) % 32u);
    var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(-377f + _wgslsmith_f_op_f32(f32(-1f) * -1008f))), 1810f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.x), -134f, select(true, false, false))) + 522f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(func_2(Struct_3(var_1.a.zy, var_1.d.x)).a.x)), 1146f)));
    var var_5 = Struct_1(vec3<f32>(2851f, var_2.x, 893f), 16198u, _wgslsmith_dot_vec2_u32(~u_input.b, u_input.b), firstLeadingBit(vec4<i32>(0i, 2147483647i, ~(-u_input.c.x), ~0i | _wgslsmith_div_i32(u_input.a, 5014i))), 37197i);
    var_5 = Struct_1(var_5.a, ~var_5.b, ~(u_input.b.x & ~_wgslsmith_add_u32(var_1.b, 4294967295u)), vec4<i32>(-1i, 2147483647i, func_2(func_4(Struct_1(var_1.a, var_4, 1u, vec4<i32>(u_input.a, var_5.e, u_input.e.x, var_1.e), 1i))).e, -14000i), 18497i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(u_input.a ^ ~(-14073i), -_wgslsmith_dot_vec3_i32(var_5.d.wxy, _wgslsmith_sub_vec3_i32(vec3<i32>(0i, 0i, 2147483647i), vec3<i32>(-2147483647i, u_input.c.x, var_5.d.x)))), max(var_5.e << ((~4294967295u >> (~u_input.d % 32u)) % 32u), ~(~(-2147483647i))), -18618i);
}

