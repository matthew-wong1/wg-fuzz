struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(179f, 953f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -490f)))) + 538f);
    let var_1 = ~_wgslsmith_div_vec4_u32(~max(vec4<u32>(0u, 7136u, 1u, 10345u), ~vec4<u32>(44404u, 4294967295u, 67470u, 91831u)), vec4<u32>(_wgslsmith_mod_u32(0u, _wgslsmith_clamp_u32(1u, 40512u, 2783u)), ~1u, 0u, _wgslsmith_clamp_u32(26451u, 24609u, 1u) >> (min(4294967295u, 0u) % 32u)));
    let var_2 = vec2<bool>(true, !any(vec3<bool>(any(vec4<bool>(false, true, false, false)), false, 330f <= var_0)));
    var var_3 = select(~0u, abs(~(~var_1.x)), any(vec2<bool>(86283u > var_1.x, !(true == var_2.x))));
    var var_4 = all(vec3<bool>(!(true || var_2.x), all(vec3<bool>(all(vec4<bool>(false, false, var_2.x, true)), var_2.x, !var_2.x)), false | (var_1.x == _wgslsmith_dot_vec4_u32(vec4<u32>(25418u, var_1.x, 55144u, var_1.x), var_1))));
    return _wgslsmith_f_op_f32(var_0 + 1169f);
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: f32, arg_3: vec2<i32>) -> vec2<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_1, arg_1, -1237f)))) - vec3<f32>(arg_2, 1000f, arg_1)) * vec3<f32>(arg_1, _wgslsmith_f_op_f32(floor(278f)), _wgslsmith_f_op_f32(exp2(arg_2)))), vec3<i32>(max(~(-3710i), -24464i << (1u % 32u)), -1i, countOneBits(i32(-1i) * -25553i)) >> (vec3<u32>(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 5901u, 3234u), vec3<u32>(1u, 77630u, 4294967295u))), ~0u, ~56695u) % vec3<u32>(32u)));
    let var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(sign(-1158f)), arg_1, _wgslsmith_f_op_f32(arg_2 + -865f)), var_0.b);
    let var_2 = -860f;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(func_3())), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_2, arg_2, arg_1), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1000f, arg_2, -2173f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, arg_2, -441f))))));
    var_3 = vec3<f32>(_wgslsmith_f_op_f32(ceil(-512f)), var_2, -1480f);
    return !select(vec2<bool>(arg_0, true), vec2<bool>(true, arg_0), false);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    var var_0 = select(!vec2<bool>(true, all(vec3<bool>(false, true, false))), func_2(all(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(true, false))), arg_2.a.x, 1554f, reverseBits(vec2<i32>(arg_0.b.x, -13352i) >> (vec2<u32>(88599u, 4294967295u) % vec2<u32>(32u))) >> (vec2<u32>(1u, 22998u) % vec2<u32>(32u))), true);
    var_0 = vec2<bool>(var_0.x && all(vec2<bool>(true | var_0.x, true)), all(select(vec3<bool>(true, !var_0.x, any(vec2<bool>(true, var_0.x))), vec3<bool>(true, true, any(vec2<bool>(var_0.x, var_0.x))), vec3<bool>(!var_0.x, var_0.x, true))));
    let var_1 = ~0u;
    var_0 = select(vec2<bool>(true, var_1 > abs(firstLeadingBit(var_1))), func_2(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(var_1, 41127u), vec2<u32>(var_1, var_1)), ~vec2<u32>(var_1, var_1)) <= ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(var_1, 1u)), 800f, -1032f, select(abs(vec2<i32>(u_input.a, -31265i)), ~vec2<i32>(0i, 11983i), !any(vec4<bool>(var_0.x, true, var_0.x, false)))), (true || !(0i < arg_2.b.x)) | var_0.x);
    var var_2 = var_1;
    return arg_0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -166f), _wgslsmith_f_op_f32(-155f - 749f), -567f) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1424f, -1544f, -702f))))), _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, u_input.a, 2147483647i), vec3<i32>(_wgslsmith_sub_i32(-2147483647i, u_input.a), _wgslsmith_dot_vec3_i32(vec3<i32>(-43447i, 5101i, 5959i), vec3<i32>(7276i, u_input.a, u_input.a)), 2147483647i)), -_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, u_input.a, -1i) ^ vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a))));
    let var_1 = select(!vec4<bool>(any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), true)), true, all(select(vec2<bool>(false, true), vec2<bool>(false, true), false)), true), vec4<bool>(false, _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 62074u), vec2<u32>(1u, 1u)) != 4294967295u, true, select(false, _wgslsmith_f_op_f32(sign(1975f)) > _wgslsmith_f_op_f32(exp2(var_0.a.x)), true)), !vec4<bool>(true, true, false, -29042i < u_input.a));
    var var_2 = _wgslsmith_mod_i32(-4510i, u_input.a);
    var var_3 = _wgslsmith_f_op_vec3_f32(-var_0.a);
    var_2 = abs(63515i ^ (var_0.b.x & abs(-51011i))) & ~(~(~func_1(Struct_1(var_0.a, vec3<i32>(2147483647i, var_0.b.x, var_0.b.x)), Struct_1(vec3<f32>(var_3.x, var_3.x, var_3.x), vec3<i32>(-29020i, u_input.a, u_input.a)), Struct_1(var_0.a, vec3<i32>(u_input.a, var_0.b.x, u_input.a)), var_0)));
    let var_4 = _wgslsmith_mod_u32(min(~(~abs(4294967295u)), _wgslsmith_sub_u32(firstTrailingBit(40365u), 1u)), ~_wgslsmith_sub_u32(15635u, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 95124u, 0u, 4294967295u), vec4<u32>(76678u, 4294967295u, 4294967295u, 76827u)), min(vec4<u32>(55933u, 55315u, 1u, 26175u), vec4<u32>(1u, 31825u, 86212u, 0u)))));
    let var_5 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(min(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(65846u, 4398u, 4294967295u, 20958u) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(0u, var_4, var_4, 73834u), vec4<u32>(73400u, var_4, var_4, 50314u)) % vec4<u32>(32u)), ~firstTrailingBit(vec4<u32>(var_4, 42608u, 0u, 45372u)))), var_4, max(_wgslsmith_sub_i32(u_input.a, 1i), max(_wgslsmith_div_i32(u_input.a, u_input.a), var_0.b.x)), 1i, -1232f);
}

