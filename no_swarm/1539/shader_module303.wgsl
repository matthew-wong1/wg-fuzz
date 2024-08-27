struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: i32, arg_1: vec3<u32>, arg_2: vec4<bool>) -> Struct_1 {
    var var_0 = 59303i;
    global0 = true;
    var var_1 = Struct_1(~arg_1.zy, any(select(!vec2<bool>(arg_2.x, false), !(!arg_2.wz), all(vec3<bool>(arg_2.x, arg_2.x, arg_2.x)))), select(_wgslsmith_mod_u32(u_input.a, _wgslsmith_sub_u32(~u_input.a, firstLeadingBit(u_input.a))), ~select(select(arg_1.x, 4294967295u, false), select(77108u, 0u, arg_2.x), select(false, arg_2.x, false)), arg_2.x));
    let var_2 = vec3<i32>(0i, u_input.c, u_input.c);
    global0 = arg_2.x;
    return Struct_1(vec2<u32>(~1u, ~53403u), var_1.b, ~(~_wgslsmith_clamp_u32(0u, _wgslsmith_add_u32(36353u, u_input.a), 23801u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec4<f32>) -> f32 {
    global0 = arg_0.b;
    var var_0 = func_1(u_input.b, vec3<u32>(u_input.a | (4332u << (u_input.a % 32u)), _wgslsmith_div_u32(1u, _wgslsmith_div_u32(arg_0.a.x, _wgslsmith_dot_vec2_u32(arg_0.a, vec2<u32>(u_input.a, arg_0.a.x)))), 0u), select(vec4<bool>(all(vec3<bool>(arg_0.b, true, arg_0.b)) && true, any(vec4<bool>(false, arg_0.b, true, true)), false, all(select(vec4<bool>(arg_0.b, arg_0.b, true, arg_0.b), vec4<bool>(false, arg_0.b, true, false), arg_0.b))), !(!vec4<bool>(arg_0.b, arg_0.b, true, arg_0.b)), !(!vec4<bool>(arg_0.b, arg_0.b, arg_0.b, true))));
    var_0 = Struct_1(vec2<u32>(~(~54053u), _wgslsmith_mod_u32(~(~arg_0.a.x), 1u)), select(var_0.b, arg_0.b, false), _wgslsmith_mod_u32(arg_0.a.x, _wgslsmith_sub_u32(arg_0.a.x, (arg_0.a.x >> (u_input.a % 32u)) | ~8066u)));
    global0 = false;
    var var_1 = func_1(abs(-7534i) ^ _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(38260i, u_input.c, u_input.c, 2147483647i) << (vec4<u32>(var_0.c, 0u, 1u, arg_0.c) % vec4<u32>(32u)), abs(vec4<i32>(2147483647i, u_input.c, u_input.c, 0i))), max(firstTrailingBit(vec4<i32>(u_input.b, -2355i, -1i, -10915i)), vec4<i32>(0i, u_input.c, u_input.c, 23898i))), vec3<u32>(_wgslsmith_add_u32(var_0.a.x, ~1u), _wgslsmith_mult_u32(61111u, _wgslsmith_dot_vec2_u32(~arg_0.a, vec2<u32>(1u, u_input.a))), 1u), !vec4<bool>(var_0.b, false, all(!vec3<bool>(true, true, var_0.b)), -16372i <= _wgslsmith_dot_vec2_i32(vec2<i32>(-5629i, u_input.b), vec2<i32>(20586i, u_input.c))));
    return _wgslsmith_f_op_f32(step(-379f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x * 428f)))))));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: f32) -> f32 {
    global0 = false;
    let var_0 = ~vec3<u32>(reverseBits(max(_wgslsmith_mult_u32(arg_1, 0u), 1u)), u_input.a, ~min(u_input.a, 4294967295u | u_input.a));
    var var_1 = Struct_1(vec2<u32>(~firstTrailingBit(~arg_0.a.x), func_1(~1i, ~vec3<u32>(1u, 0u, 32048u), !(!vec4<bool>(arg_0.b, true, false, false))).c), false, ~63783u);
    global0 = !(!any(vec4<bool>(false, arg_0.b, var_1.b, false))) & (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 - arg_2)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_2)))) > 880f);
    var var_2 = Struct_1(countOneBits(vec2<u32>(73417u, abs(firstTrailingBit(1u)))), true, ~u_input.a);
    return arg_2;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec2<u32> {
    let var_0 = func_1(~1i, _wgslsmith_add_vec3_u32(vec3<u32>(abs(~31278u), ~arg_0.a.x, u_input.a), vec3<u32>(~37800u, u_input.a, reverseBits(arg_0.a.x << (u_input.a % 32u)))), !(!vec4<bool>(true, arg_2.b, any(vec3<bool>(arg_0.b, false, arg_2.b)), all(vec3<bool>(arg_0.b, true, arg_0.b)))));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(func_4(Struct_1(_wgslsmith_clamp_vec2_u32(~vec2<u32>(26459u, var_0.a.x), vec2<u32>(23262u, 1362u), vec2<u32>(arg_0.a.x, arg_1.c)), all(select(vec4<bool>(false, arg_1.b, arg_1.b, var_0.b), vec4<bool>(true, var_0.b, arg_1.b, false), true)), ~28259u), var_0.c, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(arg_0, vec4<f32>(543f, 1000f, 364f, -478f), vec4<f32>(-1014f, -516f, -340f, 1637f))), _wgslsmith_f_op_f32(trunc(647f)), arg_0.b)))))), -973f, _wgslsmith_f_op_f32(func_4(Struct_1(~_wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.c, 0u), arg_1.a), true, min(1u, 1u)), firstTrailingBit(arg_2.c), 1267f)));
    var var_2 = abs(_wgslsmith_mod_u32(arg_0.c, ~(~(~arg_1.c))));
    var_2 = _wgslsmith_mult_u32(u_input.a, _wgslsmith_mod_u32(u_input.a, u_input.a) << (abs(arg_0.c) % 32u));
    global0 = false;
    return arg_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(~(-u_input.b), select(vec3<u32>(u_input.a, (u_input.a ^ 1u) ^ 1u, u_input.a), _wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(u_input.a, u_input.a, 64413u) >> (vec3<u32>(u_input.a, 1u, u_input.a) % vec3<u32>(32u))), vec3<u32>(min(u_input.a, u_input.a), ~u_input.a, 80458u << (u_input.a % 32u))), true), !(!select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), true), vec4<bool>(true, true, true, true), any(vec2<bool>(true, false)))));
    var var_1 = Struct_1(_wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.a, ~u_input.a), func_2(Struct_1(_wgslsmith_mod_vec2_u32(var_0.a, var_0.a), var_0.b, 11366u), Struct_1(var_0.a, var_0.b, 31708u), Struct_1(var_0.a, var_0.b, 123752u)), _wgslsmith_mod_vec2_u32(firstTrailingBit(vec2<u32>(var_0.a.x, 66503u)), _wgslsmith_sub_vec2_u32(var_0.a, var_0.a) << (~var_0.a % vec2<u32>(32u)))), !any(vec3<bool>(var_0.b && var_0.b, var_0.b && false, all(vec3<bool>(var_0.b, var_0.b, false)))), 72173u);
    let var_2 = 32799i & _wgslsmith_sub_i32(~(u_input.c << (firstLeadingBit(u_input.a) % 32u)), u_input.b);
    var var_3 = vec2<bool>((var_2 < min(firstLeadingBit(-1i), -1i)) | !(false & all(vec3<bool>(var_1.b, var_1.b, var_1.b))), all(!select(select(vec3<bool>(var_0.b, true, var_1.b), vec3<bool>(false, var_0.b, var_1.b), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), !vec3<bool>(true, var_0.b, var_0.b))));
    global0 = countOneBits(firstTrailingBit(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(var_2, var_2, 9486i), 1i, 1i))) > u_input.b;
    var var_4 = vec3<u32>(1u, _wgslsmith_add_u32(var_0.c, 1u), var_1.c) << (_wgslsmith_add_vec3_u32(vec3<u32>(0u, 56004u, u_input.a), _wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.a, var_0.c, var_1.a.x), ~(~vec3<u32>(4294967295u, u_input.a, 50297u)))) % vec3<u32>(32u));
    var var_5 = Struct_1(~vec2<u32>(var_4.x, _wgslsmith_div_u32(var_0.a.x ^ var_1.a.x, 61447u)), false, abs(firstTrailingBit(44555u)));
    var_4 = countOneBits(_wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(var_5.a.x, _wgslsmith_dot_vec2_u32(var_4.xz, vec2<u32>(71028u, 1u))), ~firstLeadingBit(55905u), 44588u), firstLeadingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(var_1.a.x, 12860u, 4294967295u) | vec3<u32>(1u, 1u, var_5.c), reverseBits(vec3<u32>(31688u, u_input.a, var_4.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~select(u_input.c << (u_input.a % 32u), _wgslsmith_clamp_i32(var_2, 14768i, -29941i), true)), ~49208u, func_1(u_input.c, select(~vec3<u32>(0u, 4294967295u, var_4.x), min(vec3<u32>(var_0.a.x, 4294967295u, u_input.a), vec3<u32>(var_0.a.x, 18051u, var_4.x)), !vec3<bool>(true, var_5.b, false)) << (~(~vec3<u32>(92832u, u_input.a, var_1.c)) % vec3<u32>(32u)), vec4<bool>(false, all(vec3<bool>(var_5.b, var_0.b, false)) && true, var_3.x, var_5.b)).a.x);
}

