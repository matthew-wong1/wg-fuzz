struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
    c: vec2<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-271f, 1138f, 2205f, -1044f)))))));
    var var_1 = vec4<u32>(1u, 1u, u_input.b, u_input.b);
    return var_1.xyy;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: Struct_3, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = max(u_input.e | ~(~arg_0.x), ~10010u);
    let var_1 = ~select(abs(_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.d, 1u, 62114u), vec3<u32>(arg_0.x, arg_0.x, 1u) & vec3<u32>(u_input.d, arg_1.x, arg_0.x))), ~(~vec3<u32>(arg_0.x, arg_1.x, u_input.e) ^ func_3()), !arg_2.b.a);
    let var_2 = !all(vec4<bool>(true, u_input.b > (u_input.d >> (58145u % 32u)), arg_2.a.a.x, true));
    var var_3 = -u_input.a.x << (~_wgslsmith_dot_vec4_u32(reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.x, var_1.x, 147720u, 70806u), vec4<u32>(u_input.b, 44941u, arg_0.x, u_input.d))), firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(66591u, arg_1.x, arg_0.x, 68754u), vec4<u32>(11296u, 60787u, u_input.e, 35029u)))) % 32u);
    var_3 = _wgslsmith_dot_vec3_i32(-u_input.c, min(u_input.c | u_input.c, vec3<i32>(firstTrailingBit(u_input.a.x), u_input.c.x, 20572i)));
    return select(vec2<bool>(true, !var_2), vec2<bool>(false, !any(!vec4<bool>(true, arg_2.b.a.x, true, var_2))), vec2<bool>(true, select(all(select(vec3<bool>(arg_2.b.a.x, false, false), arg_2.b.a, true)), !all(vec2<bool>(var_2, arg_3.a.x)), !arg_2.a.a.x)));
}

fn func_1(arg_0: i32, arg_1: vec3<i32>, arg_2: vec3<i32>, arg_3: u32) -> Struct_2 {
    let var_0 = -327f;
    let var_1 = select(select(vec4<bool>(false, _wgslsmith_f_op_f32(var_0 * var_0) <= _wgslsmith_div_f32(743f, 816f), !any(vec3<bool>(true, false, false)), false), vec4<bool>(true, true, any(func_2(vec2<u32>(arg_3, arg_3), vec2<u32>(arg_3, 20661u), Struct_3(Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(false, false, false))), Struct_1(vec3<bool>(false, true, false)))), true), true), select(select(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), true), false);
    var var_2 = _wgslsmith_mult_vec2_i32(~reverseBits(_wgslsmith_div_vec2_i32(firstTrailingBit(u_input.a), _wgslsmith_mod_vec2_i32(arg_2.zx, vec2<i32>(arg_1.x, -1709i)))), arg_2.zz);
    var_2 = vec2<i32>(u_input.c.x | var_2.x, _wgslsmith_div_i32(arg_0, -1i)) | _wgslsmith_sub_vec2_i32(~arg_1.zy, arg_2.yx);
    let var_3 = reverseBits(vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, arg_2.x), _wgslsmith_clamp_vec2_i32(arg_2.xx, vec2<i32>(var_2.x, arg_2.x), arg_2.xx)), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, arg_2.x, arg_1.x, arg_1.x), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, -17184i, 26307i, u_input.a.x), vec4<i32>(2147483647i, 1i, 17805i, 26712i))), ~max(0i, var_2.x)), -2147483647i, ~arg_1.x, ~(-1i)));
    return Struct_2(~vec2<u32>(u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_3, arg_3) | vec3<u32>(32187u, 27760u, u_input.b), ~vec3<u32>(u_input.d, u_input.b, arg_3))), false, ~vec2<u32>(24578u, ~countOneBits(arg_3)), Struct_1(var_1.zyw), Struct_1(var_1.zzw));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(u_input.c.x, max(vec3<i32>(-2809i, _wgslsmith_sub_i32(u_input.c.x, -u_input.c.x), -20716i >> (~u_input.d % 32u)), vec3<i32>(_wgslsmith_mod_i32(u_input.a.x, u_input.a.x), u_input.c.x & u_input.c.x, u_input.c.x) >> (vec3<u32>(~u_input.b, _wgslsmith_mult_u32(u_input.b, u_input.b), 38232u) % vec3<u32>(32u))), _wgslsmith_div_vec3_i32(countOneBits(~vec3<i32>(-1i, u_input.c.x, u_input.c.x)), -(vec3<i32>(u_input.a.x, 1i, -8634i) | vec3<i32>(u_input.c.x, -2147483647i, u_input.c.x)) & select(u_input.c, u_input.c, vec3<bool>(true, true, true))), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.d, u_input.b) & vec4<u32>(52561u, u_input.e, u_input.d, u_input.b), reverseBits(vec4<u32>(u_input.d, 4294967295u, u_input.e, 10677u))) << (_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.e, u_input.e, u_input.b, 0u), ~vec4<u32>(4294967295u, 4294967295u, 51842u, u_input.b)) % vec4<u32>(32u)), abs(~vec4<u32>(0u, 65485u, 4294967295u, 1u))));
    var var_1 = var_0;
    let var_2 = any(!(!vec4<bool>(false, true, !var_1.e.a.x, var_0.d.a.x)));
    var_1 = Struct_2(vec2<u32>(~(var_1.a.x & _wgslsmith_mod_u32(48019u, var_1.a.x)), u_input.b), !var_1.d.a.x, _wgslsmith_mult_vec2_u32(var_0.a, var_1.c << (~var_0.a % vec2<u32>(32u))), func_1(-5808i, vec3<i32>(-(~u_input.c.x), reverseBits(_wgslsmith_add_i32(u_input.a.x, -29948i)), u_input.c.x), ~u_input.c, 4294967295u).e, var_0.d);
    var_1 = func_1(-30778i, -_wgslsmith_div_vec3_i32(u_input.c, select(vec3<i32>(2147483647i, u_input.c.x, u_input.a.x), ~vec3<i32>(u_input.a.x, -1i, u_input.a.x), var_0.e.a)), vec3<i32>(-u_input.c.x, countOneBits(27399i) ^ ~u_input.a.x, u_input.a.x) << ((countOneBits(vec3<u32>(4294967295u, 51068u, var_0.c.x)) >> ((_wgslsmith_mult_vec3_u32(vec3<u32>(var_1.c.x, u_input.d, u_input.e), vec3<u32>(8284u, 1u, var_0.c.x)) >> (~vec3<u32>(var_0.a.x, 73082u, var_1.a.x) % vec3<u32>(32u))) % vec3<u32>(32u))) % vec3<u32>(32u)), ~abs(min(~u_input.e, ~u_input.e)));
    var var_3 = Struct_3(var_1.e, var_0.d);
    var_3 = Struct_3(func_1(~_wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.a.x, 5614i), 1i), u_input.c, _wgslsmith_mod_vec3_i32(~(u_input.c ^ u_input.c), max(vec3<i32>(u_input.a.x, u_input.a.x, 57368i), select(vec3<i32>(u_input.a.x, -19850i, -1i), u_input.c, var_0.e.a))), ~var_0.c.x).d, func_1(~(-abs(u_input.a.x)), u_input.c, u_input.c, max(var_0.a.x, _wgslsmith_div_u32(_wgslsmith_div_u32(var_0.a.x, 30506u), ~var_1.c.x))).d);
    var_3 = Struct_3(var_0.e, func_1(_wgslsmith_div_i32(-1167i, countOneBits(countOneBits(-39572i))), u_input.c, -u_input.c, var_1.a.x).e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1000f, -380f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1000f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 2181f) * vec2<f32>(-209f, 1237f)), _wgslsmith_div_vec2_f32(vec2<f32>(1991f, -1568f), vec2<f32>(-1534f, 2581f)), func_1(-2147483647i, u_input.c, vec3<i32>(u_input.c.x, 26669i, u_input.c.x), var_0.c.x).d.a.xy)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1106f, -446f) + vec2<f32>(-749f, -265f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1674f, -624f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1025f, 320f)))))))), _wgslsmith_f_op_f32(select(-597f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -996f) + _wgslsmith_f_op_f32(abs(-1457f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1573f))))), true)));
}

