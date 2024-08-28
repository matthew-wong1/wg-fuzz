struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec2<f32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> vec2<bool> {
    return vec2<bool>(u_input.d <= -u_input.d, !any(select(vec4<bool>(true, true, true, true), vec4<bool>(arg_0, true, false, true), !arg_0)));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> u32 {
    let var_0 = ~arg_1.b.x;
    return arg_1.d.x;
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = !select(vec3<bool>(true, true, true), vec3<bool>(true, true, all(vec3<bool>(true, true, true))), !all(func_2(false, Struct_1(-1000f, vec2<u32>(u_input.a, u_input.c.x), vec2<f32>(arg_0, -852f), u_input.c), Struct_1(549f, vec2<u32>(5048u, u_input.e), vec2<f32>(arg_0, 1846f), vec4<u32>(u_input.e, u_input.e, 1960u, u_input.e)))));
    var var_1 = vec4<i32>(u_input.d, min(u_input.d, ~_wgslsmith_clamp_i32(1i, abs(u_input.d), ~48324i)), _wgslsmith_mult_i32(u_input.d, u_input.d), _wgslsmith_mod_i32(_wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.d, u_input.d), -2147483647i), i32(-1i) * -(i32(-1i) * -2147483647i)));
    var var_2 = i32(-1i) * -64726i;
    let var_3 = (~firstTrailingBit(u_input.c.wyz) | vec3<u32>(_wgslsmith_mult_u32(34804u, 1u), u_input.b.x, ~u_input.b.x)) & (firstTrailingBit(~(vec3<u32>(u_input.e, u_input.b.x, 33760u) | u_input.c.wwx)) >> (vec3<u32>(~0u, abs(1u), _wgslsmith_dot_vec2_u32(u_input.b, u_input.b) & func_3(u_input.d, Struct_1(arg_0, vec2<u32>(5152u, 0u), vec2<f32>(-1205f, -1000f), u_input.c))) % vec3<u32>(32u)));
    var_0 = !select(select(vec3<bool>(u_input.a > var_3.x, true, var_0.x), vec3<bool>(any(vec4<bool>(var_0.x, var_0.x, var_0.x, false)), var_0.x, true), vec3<bool>(var_0.x, false, !var_0.x)), select(select(vec3<bool>(var_0.x, false, false), select(vec3<bool>(false, var_0.x, false), vec3<bool>(true, true, var_0.x), vec3<bool>(false, true, var_0.x)), true), vec3<bool>(true, -812f > arg_0, !var_0.x), false), !var_0.x);
    return Struct_1(-447f, abs(~(~vec2<u32>(35356u, 34478u) & _wgslsmith_mult_vec2_u32(var_3.zx, var_3.zy))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(294f, _wgslsmith_f_op_f32(-656f - _wgslsmith_f_op_f32(1134f + -118f)))), ~_wgslsmith_div_vec4_u32(u_input.c, _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 1u, var_3.x, 0u), ~vec4<u32>(var_3.x, u_input.a, 26993u, u_input.c.x))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = select(!vec3<bool>(countOneBits(1i) > u_input.d, any(vec3<bool>(true, true, true)), func_2(false, Struct_1(256f, vec2<u32>(0u, 2342u), vec2<f32>(-1061f, arg_0.c.x), vec4<u32>(arg_2.b.x, 55770u, u_input.c.x, arg_0.d.x)), func_1(arg_1.x)).x), !vec3<bool>(any(vec2<bool>(true, true)), !any(vec3<bool>(true, true, false)), true), vec3<bool>(!func_2(true, Struct_1(2145f, vec2<u32>(arg_0.d.x, u_input.e), vec2<f32>(-1028f, 255f), arg_0.d), Struct_1(-981f, arg_2.d.zy, vec2<f32>(arg_0.a, arg_0.a), arg_0.d)).x, true, ~_wgslsmith_dot_vec2_u32(arg_0.d.xw, arg_0.b) == arg_0.d.x));
    let var_1 = arg_0.b.x;
    var var_2 = false;
    var_2 = func_2(false, func_1(-1423f), arg_0).x;
    var_2 = true;
    return vec4<bool>(false, all(vec2<bool>(var_0.x, !(u_input.b.x < var_1))), _wgslsmith_mod_i32(u_input.d, abs(-44597i)) >= u_input.d, any(!select(select(var_0.xy, vec2<bool>(var_0.x, var_0.x), false), var_0.zz, any(var_0.xx))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-382f - -1845f), u_input.c.ww ^ select(u_input.c.yx, _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(27116u, u_input.e)), true), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(-684f)), _wgslsmith_div_f32(980f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(495f, 1f)))), select(abs(firstLeadingBit(u_input.c)), _wgslsmith_mod_vec4_u32(~(u_input.c << (vec4<u32>(u_input.e, u_input.c.x, 43059u, u_input.a) % vec4<u32>(32u))), vec4<u32>(0u, 6308u, u_input.b.x, ~0u)), !vec4<bool>(u_input.d > u_input.d, true, true, true)));
    let var_1 = Struct_1(var_0.c.x, _wgslsmith_sub_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c.x, var_0.d.x), firstLeadingBit(var_0.b), _wgslsmith_sub_vec2_u32(var_0.b, vec2<u32>(64111u, 1u))), vec2<u32>(1u, ~(~u_input.c.x))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(308f + var_0.a)) * _wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(705f - var_0.a))), -2610f), _wgslsmith_clamp_vec4_u32(reverseBits(_wgslsmith_add_vec4_u32(min(var_0.d, vec4<u32>(24353u, 20981u, u_input.b.x, var_0.d.x)), ~var_0.d)), u_input.c | ~vec4<u32>(var_0.b.x, var_0.b.x, 4294967295u, u_input.e), ~u_input.c));
    var var_2 = u_input.c;
    var var_3 = var_1;
    let var_4 = all(select(select(func_4(func_1(-663f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-438f, var_3.a) - vec2<f32>(317f, var_1.a)), var_1), vec4<bool>(true, true, true, true), all(vec2<bool>(false, false)) != (var_3.d.x < var_3.b.x)), vec4<bool>(true, !(-1056f >= var_1.c.x), (var_0.b.x > var_0.b.x) != true, _wgslsmith_f_op_f32(select(var_0.c.x, 236f, false)) >= _wgslsmith_f_op_f32(round(var_0.a))), vec4<bool>(true, true, all(vec3<bool>(true, true, true)), _wgslsmith_dot_vec3_u32(var_2.yxx, vec3<u32>(1u, 25189u, var_0.b.x)) != var_2.x)));
    var var_5 = _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, var_0.b.x | u_input.b.x, ~_wgslsmith_mult_u32(_wgslsmith_sub_u32(var_0.d.x, var_3.d.x), firstLeadingBit(18533u)), _wgslsmith_dot_vec2_u32(max(firstLeadingBit(vec2<u32>(1u, 0u)), u_input.c.yx), vec2<u32>(0u, var_2.x) | min(var_2.wy, vec2<u32>(0u, var_3.d.x)))), _wgslsmith_mod_vec4_u32(var_0.d, vec4<u32>(56254u, 54299u, (0u >> (u_input.a % 32u)) >> (~var_0.b.x % 32u), ~59057u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_u32(select(select(var_0.d.wyz, vec3<u32>(1u, var_1.d.x, 4294967295u), true), reverseBits(var_0.d.wxy), vec3<bool>(false && var_4, select(true, var_4, var_4), any(vec4<bool>(true, var_4, true, true)))), ~_wgslsmith_div_vec3_u32(u_input.c.zyw, _wgslsmith_mult_vec3_u32(vec3<u32>(var_1.b.x, 81008u, var_0.b.x), vec3<u32>(1u, var_2.x, 24563u)))), -firstTrailingBit(u_input.d));
}

