struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec3<bool>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec4<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: f32) -> bool {
    var var_0 = Struct_1(vec4<i32>(_wgslsmith_mult_i32(1i, -(~21946i)), countOneBits(min(-16262i, -arg_0.a.x)), ~(~u_input.b.x), -_wgslsmith_mod_i32(_wgslsmith_sub_i32(0i, 0i), -u_input.b.x)), ~(((arg_0.b << (arg_0.b % vec4<u32>(32u))) & vec4<u32>(arg_0.b.x, 1u, arg_1, 1u)) | arg_0.b), vec3<bool>(arg_0.c.x, any(select(select(vec4<bool>(arg_0.c.x, arg_0.c.x, arg_0.c.x, false), vec4<bool>(arg_0.c.x, arg_0.c.x, true, true), false), !vec4<bool>(arg_0.c.x, false, arg_0.c.x, arg_0.c.x), vec4<bool>(true, arg_0.c.x, arg_0.c.x, arg_0.c.x))), !(-17249i > (u_input.b.x >> (u_input.a % 32u)))), _wgslsmith_mult_vec3_u32(~arg_0.d, min(vec3<u32>(_wgslsmith_mod_u32(1120u, arg_0.d.x), ~1u, abs(1u)), countOneBits(~vec3<u32>(1u, arg_0.d.x, u_input.a)))));
    var_0 = arg_0;
    var var_1 = arg_0.b.x;
    var var_2 = _wgslsmith_sub_u32(u_input.a, ~(~4294967295u));
    var var_3 = Struct_1(abs(arg_0.a | _wgslsmith_div_vec4_i32(vec4<i32>(var_0.a.x, 31578i, -19497i, 40425i), arg_0.a)), _wgslsmith_add_vec4_u32(vec4<u32>(18698u, 29664u, 4294967295u, min(5375u, 24074u) ^ arg_0.d.x), _wgslsmith_mod_vec4_u32(select(vec4<u32>(1u, 36502u, u_input.a, 39838u), vec4<u32>(4294967295u, 19835u, u_input.a, 34314u), true) & ~vec4<u32>(arg_0.b.x, arg_1, 4128u, arg_0.b.x), abs(~var_0.b))), !var_0.c, vec3<u32>(arg_1, _wgslsmith_dot_vec4_u32(firstTrailingBit(var_0.b), arg_0.b), _wgslsmith_mult_u32(35534u, 103425u)));
    return true;
}

fn func_2() -> u32 {
    var var_0 = -44234i;
    let var_1 = vec3<bool>(any(select(vec4<bool>(select(true, false, false), func_3(Struct_1(vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(u_input.a, 68314u, 4294967295u, u_input.a), vec3<bool>(true, true, false), vec3<u32>(0u, u_input.a, u_input.a)), 59270u, -640f), false, true), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(round(-1000f)) < _wgslsmith_f_op_f32(trunc(-1000f)))), all(!vec2<bool>(any(vec2<bool>(false, false)), true)), any(select(vec4<bool>(true, true, true, any(vec3<bool>(false, true, true))), vec4<bool>(true, true, true, select(false, false, false)), select(true, u_input.a != u_input.a, -2147483647i <= u_input.b.x))));
    var_0 = _wgslsmith_sub_i32(~u_input.b.x, u_input.b.x);
    var var_2 = !all(var_1);
    var var_3 = ~(~vec3<u32>(u_input.a, 41216u, 62036u));
    return abs(u_input.a);
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1583f) + _wgslsmith_f_op_f32(-726f - _wgslsmith_f_op_f32(-605f + -1096f))) - 298f));
    let var_1 = 1i;
    let var_2 = Struct_1(vec4<i32>(-1i) * -(~vec4<i32>(1i, var_1, -1i, var_1)), ~vec4<u32>(func_2(), _wgslsmith_clamp_u32(~u_input.a, u_input.a, ~0u), 1u, u_input.a), select(vec3<bool>(true, !(1378u != u_input.a), false), select(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false), vec3<bool>(true, true, all(vec4<bool>(true, true, false, false))), vec3<bool>(false, false, true)), !vec3<bool>(select(true, false, true), true, true)), abs(vec3<u32>(~1u, _wgslsmith_clamp_u32(u_input.a, max(4294967295u, u_input.a), countOneBits(u_input.a)), u_input.a)));
    let var_3 = var_0;
    var var_4 = Struct_1(reverseBits(var_2.a), vec4<u32>(~countOneBits(func_2()), ~(select(6510u, 92419u, var_2.c.x) << (~var_2.d.x % 32u)), var_2.b.x, var_2.d.x), vec3<bool>(true, true, var_2.c.x), vec3<u32>(_wgslsmith_dot_vec4_u32(var_2.b ^ vec4<u32>(34660u, 0u, var_2.b.x, var_2.d.x), var_2.b), 110178u, 52985u) ^ _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(~var_2.b.zwy, var_2.b.yzx), vec3<u32>(~var_2.d.x, 0u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), var_2.b.wx))));
    return Struct_1(var_2.a, vec4<u32>(0u ^ var_4.b.x, _wgslsmith_sub_u32(4294967295u, reverseBits(var_4.b.x)) >> ((~var_4.d.x & 56984u) % 32u), var_2.d.x, ~_wgslsmith_dot_vec2_u32(var_4.d.xy | var_2.b.yw, var_4.d.xz)), !var_4.c, _wgslsmith_mod_vec3_u32(var_4.b.yzz, ~var_2.b.zzy));
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: Struct_1) -> u32 {
    var var_0 = func_1();
    let var_1 = arg_2.b.wyx;
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1429f + -1245f)) + 1267f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -447f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
    var var_3 = arg_0;
    var_3 = all(!vec4<bool>(any(select(vec4<bool>(arg_0, var_0.c.x, arg_2.c.x, false), vec4<bool>(arg_2.c.x, false, true, arg_0), vec4<bool>(var_0.c.x, arg_2.c.x, var_0.c.x, arg_0))), !arg_0, !var_0.c.x || true, true));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    var var_1 = -min(_wgslsmith_dot_vec4_i32((vec4<i32>(-1i, var_0.x, 1i, u_input.b.x) & vec4<i32>(u_input.b.x, var_0.x, u_input.b.x, 1894i)) ^ (vec4<i32>(var_0.x, var_0.x, 2147483647i, var_0.x) | vec4<i32>(0i, 37399i, var_0.x, u_input.b.x)), ~abs(vec4<i32>(var_0.x, -2147483647i, u_input.b.x, 2147483647i))), u_input.b.x);
    let var_2 = ~u_input.a;
    var_1 = var_0.x;
    let var_3 = vec3<u32>(u_input.a ^ func_4(_wgslsmith_mod_i32(u_input.b.x, var_0.x) != ~u_input.b.x, select(_wgslsmith_div_u32(4294967295u, u_input.a), var_2, true), func_1()), var_2, 4294967295u);
    let var_4 = var_0.x;
    let var_5 = Struct_1(firstLeadingBit(func_1().a), vec4<u32>(~62500u, ~4294967295u, _wgslsmith_add_u32(~43293u, 1u), u_input.a), !(!(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true)))), firstTrailingBit(~var_3));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(63779u, _wgslsmith_dot_vec4_u32(vec4<u32>(~var_5.d.x, ~1u, var_3.x, ~var_2), (vec4<u32>(var_3.x, 1u, u_input.a, var_3.x) >> (var_5.b % vec4<u32>(32u))) & select(vec4<u32>(7200u, 0u, 15629u, 103932u), vec4<u32>(22901u, 1u, var_2, 22058u), false)), _wgslsmith_clamp_u32(1u, 27736u, _wgslsmith_clamp_u32(1u, var_2 ^ var_5.b.x, ~72647u))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))))), ~(~((vec4<u32>(var_3.x, var_3.x, 27599u, 24346u) | vec4<u32>(var_2, 35636u, u_input.a, u_input.a)) ^ ~vec4<u32>(5269u, 4294967295u, var_3.x, u_input.a))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(498f, -993f, -1553f, -631f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(138f, 477f, 346f, -613f) * vec4<f32>(-1000f, 157f, -1188f, 284f))), true)))));
}

