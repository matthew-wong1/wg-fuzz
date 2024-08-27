struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec4<f32> {
    let var_0 = Struct_1(~(~21451u));
    let var_1 = var_0;
    let var_2 = Struct_2(max(firstLeadingBit(vec4<i32>(u_input.a, 1i, u_input.b, u_input.a) & vec4<i32>(1i, u_input.a, 27488i, u_input.a)) | (_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.a, -44338i), vec4<i32>(0i, u_input.b, u_input.b, 13202i)) << (abs(vec4<u32>(var_1.a, var_0.a, global0.a, global0.a)) % vec4<u32>(32u))), reverseBits(vec4<i32>(0i, 2147483647i, ~10166i, -34787i))), (_wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(global0.a, var_0.a, 33442u), vec3<u32>(4294967295u, global0.a, 89865u), vec3<u32>(global0.a, 37388u, var_1.a)), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, var_1.a, 18137u), vec3<u32>(global0.a, 51169u, var_0.a)), max(vec3<u32>(global0.a, var_0.a, 2200u), vec3<u32>(30933u, 8570u, 52801u))) & vec3<u32>(global0.a, _wgslsmith_sub_u32(0u, global0.a), ~global0.a)) & vec3<u32>(~0u, select(var_1.a ^ var_0.a, _wgslsmith_mod_u32(44616u, 21695u), 2147483647i <= u_input.b), _wgslsmith_add_u32(var_1.a, 4294967295u)));
    global0 = Struct_1(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(select(select(vec4<u32>(global0.a, 63547u, 110384u, var_2.b.x), vec4<u32>(45243u, var_2.b.x, 1u, global0.a), false), ~vec4<u32>(4294967295u, 4294967295u, 91352u, var_1.a), any(vec4<bool>(true, true, false, true))), select(vec4<u32>(global0.a, var_1.a, 35237u, 6121u), vec4<u32>(12059u, 100768u, 4294967295u, 45554u), true)), ~(~(~var_1.a))));
    let var_3 = !(!select(vec3<bool>(all(vec4<bool>(true, false, false, false)), true, any(vec2<bool>(true, true))), vec3<bool>(false, any(vec3<bool>(false, false, false)), true), vec3<bool>(true, true, true)));
    return _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-781f, 604f))), -139f, 262f, -1000f))));
}

fn func_2(arg_0: u32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3())), vec4<f32>(-1064f, 1f, _wgslsmith_f_op_f32(132f + 1f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(626f - -827f)))))));
    global0 = Struct_1(~4294967295u);
    global0 = Struct_1(global0.a ^ select(min(arg_0, 0u), _wgslsmith_add_u32(48353u, _wgslsmith_div_u32(34735u, arg_0)), true));
    global0 = Struct_1(arg_0);
    var var_1 = Struct_1((global0.a ^ ~0u) >> (global0.a % 32u));
    return _wgslsmith_f_op_f32(1381f + _wgslsmith_f_op_vec4_f32(func_3()).x);
}

fn func_1(arg_0: i32, arg_1: vec4<bool>, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    var var_0 = 851f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1755f)));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(firstTrailingBit(~arg_3.a))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-553f, 418f)) * 487f), _wgslsmith_f_op_f32(-664f * 531f), all(vec3<bool>(arg_1.x, false, arg_1.x))))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(195f - _wgslsmith_f_op_f32(f32(-1f) * -399f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2170f + -880f)))));
    let var_1 = Struct_2(_wgslsmith_sub_vec4_i32(~(vec4<i32>(91927i, -31938i, arg_0, 1i) & vec4<i32>(-1i, -2147483647i, -50908i, -1i)), abs(firstTrailingBit(vec4<i32>(u_input.b, 1106i, arg_0, -2147483647i)))) | ~max(firstLeadingBit(vec4<i32>(arg_0, arg_0, -14096i, -2643i)), vec4<i32>(arg_0, arg_0, 1i, arg_0)), vec3<u32>(~(~global0.a), 0u, 0u));
    return Struct_1(~reverseBits(60665u));
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    let var_0 = _wgslsmith_mult_vec3_u32(~(~(~(~vec3<u32>(global0.a, global0.a, 4294967295u)))), abs(vec3<u32>(_wgslsmith_div_u32(arg_0.a & global0.a, 0u), ~global0.a, 22750u)));
    global0 = func_1(~_wgslsmith_sub_i32(u_input.b, -5930i), vec4<bool>(arg_1, arg_1, all(vec3<bool>(arg_1, any(vec3<bool>(true, arg_1, true)), any(vec3<bool>(true, false, false)))), all(!vec2<bool>(false, arg_1))), !arg_1, func_1(_wgslsmith_div_i32(-19458i, _wgslsmith_mod_i32(u_input.a, ~2147483647i)), select(vec4<bool>(!arg_1, all(vec2<bool>(arg_1, arg_1)), !arg_1, false), select(vec4<bool>(arg_1, arg_1, arg_1, arg_1), vec4<bool>(arg_1, arg_1, true, true), select(vec4<bool>(false, arg_1, arg_1, arg_1), vec4<bool>(arg_1, false, true, false), true)), true), true, func_1(firstLeadingBit(_wgslsmith_div_i32(-2147483647i, -1i)), !select(vec4<bool>(true, arg_1, false, arg_1), vec4<bool>(arg_1, arg_1, arg_1, arg_1), false), all(!vec4<bool>(arg_1, arg_1, arg_1, arg_1)), Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.a, global0.a), vec2<u32>(15063u, global0.a))))));
    let var_1 = func_1(_wgslsmith_mod_i32(-12893i << (~global0.a % 32u), ~(-_wgslsmith_add_i32(u_input.a, 2147483647i))), !select(select(select(vec4<bool>(true, arg_1, arg_1, false), vec4<bool>(false, arg_1, arg_1, true), false), !vec4<bool>(arg_1, arg_1, arg_1, arg_1), true), vec4<bool>(false, u_input.b <= u_input.a, u_input.a == u_input.a, 4294967295u != arg_0.a), !arg_1), -_wgslsmith_sub_i32(-2147483647i, firstTrailingBit(-50519i)) != firstTrailingBit(~3700i), func_1(-firstTrailingBit(~0i), !select(vec4<bool>(true, arg_1, false, true), vec4<bool>(true, arg_1, arg_1, false), arg_1 && false), any(select(!vec2<bool>(false, arg_1), select(vec2<bool>(true, arg_1), vec2<bool>(false, arg_1), arg_1), vec2<bool>(arg_1, true))), Struct_1(var_0.x)));
    global0 = Struct_1(var_1.a);
    global0 = Struct_1((_wgslsmith_mult_u32(firstTrailingBit(32152u), select(global0.a, global0.a, arg_1)) ^ ~4294967295u) & _wgslsmith_sub_u32(41547u, arg_0.a));
    return Struct_1(_wgslsmith_sub_u32(func_1(min(-1i, min(u_input.b, u_input.b)), select(!vec4<bool>(false, arg_1, false, arg_1), vec4<bool>(arg_1, arg_1, arg_1, false), vec4<bool>(true, false, arg_1, false)), arg_1, var_1).a, 4294967295u));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> vec4<i32> {
    global0 = func_4(Struct_1(~(~max(arg_1.a, 4294967295u))), true);
    global0 = Struct_1(~(~_wgslsmith_mod_u32(123872u, _wgslsmith_mult_u32(global0.a, arg_0.a))));
    let var_0 = Struct_2(abs(firstLeadingBit(~(~vec4<i32>(1i, -23322i, u_input.a, 75378i)))), vec3<u32>(select(~arg_1.a, ~arg_0.a, false), global0.a, 15744u) ^ vec3<u32>(_wgslsmith_add_u32(arg_1.a, 0u), _wgslsmith_add_u32(arg_0.a, 24123u ^ arg_1.a), 11166u));
    global0 = func_1(-((u_input.a << (14472u % 32u)) & abs(select(u_input.b, 2147483647i, true))), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true))), all(vec3<bool>(true, false, false)), arg_1);
    global0 = Struct_1(select(~(~arg_1.a), ~global0.a, true));
    return var_0.a;
}

fn func_6(arg_0: f32, arg_1: Struct_2) -> Struct_1 {
    var var_0 = any(!vec3<bool>(!(557f >= arg_0), any(vec2<bool>(true, true)), false));
    let var_1 = Struct_1(~1u);
    var var_2 = 94176u;
    let var_3 = select(vec2<bool>(global0.a >= func_1(~arg_1.a.x, vec4<bool>(true, false, false, true), any(vec2<bool>(false, true)), var_1).a, any(vec2<bool>(true, true))), vec2<bool>(all(!select(vec2<bool>(true, false), vec2<bool>(true, true), true)), select(true, firstTrailingBit(1i) <= _wgslsmith_div_i32(-2147483647i, arg_1.a.x), all(vec2<bool>(false, true)))), !vec2<bool>(all(vec4<bool>(true, true, true, true)), false));
    let var_4 = ~vec2<i32>(arg_1.a.x, -arg_1.a.x);
    return func_4(Struct_1(var_1.a), var_3.x == var_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_6(_wgslsmith_f_op_f32(-911f * _wgslsmith_f_op_f32(trunc(-764f))), Struct_2(func_5(Struct_1(global0.a), func_4(func_1(u_input.a, vec4<bool>(true, true, true, true), false, Struct_1(37088u)), all(vec2<bool>(true, true)))), vec3<u32>(_wgslsmith_mod_u32(0u, global0.a) << (global0.a % 32u), countOneBits(1u), ~abs(global0.a))));
    let var_0 = Struct_2(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(~u_input.a, -40608i, u_input.b << (6888u % 32u), ~u_input.b), -select(vec4<i32>(19162i, 5332i, u_input.a, -10205i), vec4<i32>(u_input.a, u_input.a, 19333i, -1i), vec4<bool>(true, false, true, true))), u_input.b, _wgslsmith_mod_i32(5913i, u_input.b), func_5(func_4(Struct_1(9281u), 1i < u_input.b), Struct_1(~66239u)).x), _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(firstLeadingBit(11559u), 1u), func_6(_wgslsmith_f_op_f32(f32(-1f) * -625f), Struct_2(vec4<i32>(u_input.a, u_input.b, u_input.a, u_input.b), vec3<u32>(1u, global0.a, 1u))).a, ~global0.a), _wgslsmith_clamp_vec3_u32(~(vec3<u32>(global0.a, 71897u, global0.a) << (vec3<u32>(0u, global0.a, global0.a) % vec3<u32>(32u))), vec3<u32>(~26451u, func_4(Struct_1(65346u), true).a, global0.a), ~vec3<u32>(17939u, 1u, global0.a))));
    let var_1 = var_0.b.zz;
    let var_2 = select(!select(vec3<bool>(true, any(vec2<bool>(false, false)), true), vec3<bool>(true, true, false), any(vec2<bool>(false, false))), vec3<bool>(all(vec4<bool>(global0.a >= var_0.b.x, true, true, true)), any(vec4<bool>(true, true, true, true)), true), var_1.x < ~(~_wgslsmith_add_u32(var_1.x, 52408u)));
    var var_3 = var_0.a.wz ^ -(~(-vec2<i32>(-1i, -2147483647i) << (firstTrailingBit(var_1) % vec2<u32>(32u))));
    let var_4 = all(vec4<bool>(select(!select(false, var_2.x, var_2.x), !all(var_2), select(var_2.x, true, true)), all(var_2), true, all(!(!vec4<bool>(false, true, var_2.x, true)))));
    var_3 = -var_0.a.xx;
    let x = u_input.a;
    s_output = StorageBuffer(-877f, ~var_0.a.x, _wgslsmith_add_i32(1i, -17922i), 1f, vec4<u32>(1u, func_4(Struct_1(27370u), true).a, ~func_1(var_3.x, !vec4<bool>(false, var_2.x, true, var_4), var_4, func_6(-384f, var_0)).a, _wgslsmith_mod_u32(~55906u, global0.a)));
}

