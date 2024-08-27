struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: i32,
    d: vec2<f32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: bool,
    d: vec3<u32>,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> bool {
    let var_0 = -331f;
    var var_1 = ~(-(vec4<i32>(-1i) * -vec4<i32>(u_input.c, -32408i, -2147483647i, 1i)));
    var var_2 = Struct_3(!select(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true)), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), true), true || any(vec4<bool>(false, false, true, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -186f), var_0, _wgslsmith_f_op_f32(max(-289f, var_0))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-347f, var_0, var_0))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-618f, var_0, var_0))))), ~_wgslsmith_clamp_u32(firstTrailingBit(~4294967295u), 39615u, u_input.b));
    var_2 = Struct_3(!(!select(select(var_2.a, vec4<bool>(var_2.a.x, false, var_2.a.x, true), var_2.a), select(var_2.a, vec4<bool>(var_2.a.x, true, var_2.a.x, var_2.a.x), vec4<bool>(true, true, var_2.a.x, var_2.a.x)), any(vec2<bool>(var_2.a.x, var_2.a.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2.b + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_2.b.x, 2898f, -674f)))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-var_2.b)))))), reverseBits(var_2.c));
    let var_3 = Struct_2(Struct_1(var_1.x, select(vec2<bool>(false & var_2.a.x, var_2.a.x && var_2.a.x), select(!var_2.a.zz, vec2<bool>(var_2.a.x, var_2.a.x), !var_2.a.wz), select(var_2.a.xx, select(vec2<bool>(true, var_2.a.x), vec2<bool>(false, true), var_2.a.x), select(var_2.a.wy, var_2.a.yw, vec2<bool>(var_2.a.x, var_2.a.x)))), _wgslsmith_dot_vec4_i32(vec4<i32>(~2147483647i, _wgslsmith_sub_i32(-2147483647i, -37377i), -var_1.x, abs(-2147483647i)), vec4<i32>(i32(-1i) * -39850i, 26188i, u_input.a & u_input.a, -1i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_2.b.yz, vec2<f32>(var_2.b.x, var_0), var_2.a.x))), ~(vec2<u32>(var_2.c, 12485u) & (vec2<u32>(6871u, 31982u) & vec2<u32>(var_2.c, var_2.c)))));
    return false;
}

fn func_2(arg_0: Struct_5, arg_1: Struct_4) -> vec4<u32> {
    var var_0 = arg_1.a.a.x;
    var_0 = !func_3();
    var var_1 = vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_0.c.e.x ^ 14772u, u_input.b), ~arg_1.d.zy), 0u, 65219u);
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(arg_0.a.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(arg_0.a.x, arg_0.c.d.x)), _wgslsmith_f_op_f32(-1443f - arg_1.a.b.x)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.b.a.d.x - 1000f), arg_1.b.a.d.x, !arg_1.a.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.a.b.x)) + arg_0.a.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1432f)))) - _wgslsmith_f_op_vec3_f32(step(arg_0.a.wyx, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.a.b - vec3<f32>(arg_0.c.d.x, 2390f, arg_1.a.b.x))))))));
    var var_3 = arg_1.a;
    return ~vec4<u32>(var_3.c, var_1.x, countOneBits(4294967295u), arg_1.a.c);
}

fn func_1(arg_0: f32, arg_1: vec2<i32>) -> Struct_2 {
    let var_0 = Struct_1(abs(_wgslsmith_add_i32(~78631i, 1732i)), vec2<bool>(~_wgslsmith_add_u32(57377u, u_input.b) == _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, 0u, 0u), func_2(Struct_5(vec4<f32>(arg_0, arg_0, -1354f, arg_0), vec3<i32>(u_input.c, 2147483647i, arg_1.x), Struct_1(u_input.c, vec2<bool>(false, true), arg_1.x, vec2<f32>(arg_0, 533f), vec2<u32>(8035u, u_input.b)), false), Struct_4(Struct_3(vec4<bool>(true, false, true, false), vec3<f32>(408f, 1000f, arg_0), 4294967295u), Struct_2(Struct_1(1i, vec2<bool>(true, false), 1i, vec2<f32>(664f, -526f), vec2<u32>(u_input.b, u_input.b))), false, vec3<u32>(6999u, u_input.b, 1u)))), true || func_3()), abs(39980i), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + 340f) - _wgslsmith_f_op_f32(arg_0 * -842f)), 1791f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(2642f - arg_0), _wgslsmith_f_op_f32(-arg_0))))), _wgslsmith_mod_vec2_u32(select(abs(countOneBits(vec2<u32>(1u, u_input.b))), select(select(vec2<u32>(1u, u_input.b), vec2<u32>(u_input.b, u_input.b), vec2<bool>(true, false)), vec2<u32>(u_input.b, u_input.b), select(true, false, true)), !select(vec2<bool>(true, false), vec2<bool>(false, true), false)), vec2<u32>(_wgslsmith_mod_u32(~1u, u_input.b), u_input.b)));
    let var_1 = Struct_4(Struct_3(select(select(!vec4<bool>(true, var_0.b.x, var_0.b.x, var_0.b.x), !vec4<bool>(var_0.b.x, var_0.b.x, false, true), var_0.e.x <= 4294967295u), vec4<bool>(true, all(vec3<bool>(var_0.b.x, false, var_0.b.x)), true, var_0.b.x), var_0.b.x), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.d.x, var_0.d.x))), 643f, _wgslsmith_f_op_f32(336f - arg_0)), u_input.b), Struct_2(var_0), var_0.b.x, vec3<u32>(min(~var_0.e.x, var_0.e.x), firstLeadingBit(~62384u) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, var_0.e.x) >> (var_0.e % vec2<u32>(32u)), ~var_0.e) % 32u), ~1310u));
    return var_1.b;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2) -> Struct_4 {
    let var_0 = arg_1.a.d.x;
    var var_1 = max(min(countOneBits(~u_input.d.x), 1i) ^ (-7585i ^ arg_1.a.c), -_wgslsmith_add_i32(~arg_1.a.a, u_input.c));
    var var_2 = arg_1.a.b.x;
    let var_3 = vec3<u32>(arg_0.x, 57220u, u_input.b);
    var var_4 = arg_1.a.d.x;
    return Struct_4(Struct_3(vec4<bool>(true, true & func_3(), !(-118f >= arg_1.a.d.x), !all(arg_1.a.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(949f, arg_1.a.d.x, arg_1.a.d.x), vec3<f32>(-319f, -1525f, var_0))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, -449f, 403f)), select(vec3<bool>(arg_1.a.b.x, true, arg_1.a.b.x), vec3<bool>(false, arg_1.a.b.x, false), vec3<bool>(true, true, false))))), func_2(Struct_5(vec4<f32>(arg_1.a.d.x, 186f, -309f, var_0), ~vec3<i32>(-29029i, u_input.c, u_input.c), Struct_1(1i, vec2<bool>(false, arg_1.a.b.x), u_input.d.x, arg_1.a.d, arg_1.a.e), arg_1.a.b.x), Struct_4(Struct_3(vec4<bool>(true, arg_1.a.b.x, false, arg_1.a.b.x), vec3<f32>(var_0, arg_1.a.d.x, -553f), arg_0.x), func_1(-921f, u_input.d), true, min(var_3, vec3<u32>(arg_1.a.e.x, u_input.b, 26549u)))).x), func_1(_wgslsmith_f_op_f32(select(func_1(func_1(-1000f, vec2<i32>(-33708i, arg_1.a.c)).a.d.x, -u_input.d).a.d.x, var_0, all(!vec3<bool>(false, arg_1.a.b.x, true)))), ~max(u_input.d, -vec2<i32>(arg_1.a.a, 1i))), all(vec3<bool>(u_input.b < arg_0.x, false, false)), ~var_3);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(vec2<u32>(u_input.b, ~_wgslsmith_div_u32(92792u, 4294967295u)), func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -114f))), abs(~(~vec2<i32>(-2147483647i, u_input.c)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~u_input.a, 0i, _wgslsmith_sub_i32(u_input.d.x, i32(-1i) * -2147483647i), ~_wgslsmith_sub_i32(-775i, 22282i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.a.d.x - 1035f) - func_1(var_0.b.a.d.x, vec2<i32>(-25928i, 1i)).a.d.x)))));
}

