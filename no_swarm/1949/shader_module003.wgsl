struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<u32>,
    d: i32,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: Struct_2) -> bool {
    let var_0 = 1u;
    var var_1 = u_input.a;
    return false;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec3<f32>, arg_3: u32) -> Struct_2 {
    var var_0 = !vec4<bool>(arg_0.a.a, all(!(!vec4<bool>(false, arg_0.a.a, arg_1.a.a, arg_0.a.a))), func_2(Struct_2(Struct_1(arg_1.a.a))), arg_1.a.a);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)) - arg_2.x), _wgslsmith_f_op_f32(-1f));
    var_0 = vec4<bool>(var_0.x, 14961u < abs((u_input.a.x ^ arg_1.c.x) & u_input.a.x), true, all(vec2<bool>(!arg_0.a.a, arg_0.a.a)));
    let var_2 = Struct_2(arg_0.a);
    let var_3 = Struct_4(Struct_2(Struct_1(true)), Struct_2(Struct_1(all(vec3<bool>(var_0.x, true, var_0.x)))), vec4<u32>(u_input.a.x, arg_1.c.x, ~(~1u), 0u) & u_input.a, 0i, Struct_3(var_2.a, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.b.x, 1323f, false)) - _wgslsmith_f_op_f32(arg_2.x - -1396f)), _wgslsmith_f_op_f32(arg_1.b.x - _wgslsmith_f_op_f32(var_1.x * 680f))), ~vec2<u32>(~0u, _wgslsmith_div_u32(arg_1.c.x, 41148u)), ~vec3<u32>(0u, arg_3, 0u) ^ u_input.a.yyy, _wgslsmith_div_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(arg_1.e.x, arg_1.e.x, -21954i), vec3<i32>(firstTrailingBit(arg_1.e.x), -arg_1.e.x, select(0i, arg_1.e.x, false)))));
    return var_3.b;
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<i32>, arg_2: Struct_4) -> Struct_3 {
    var var_0 = ~_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(max(vec2<u32>(arg_0.x, 0u), u_input.a.wy), u_input.a.ww), ~(8371u >> (arg_2.c.x % 32u)), arg_0.x), vec3<u32>(~u_input.a.x >> (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_2.c.x, arg_2.c.x), vec3<u32>(arg_2.c.x, 21973u, 0u)) % 32u), u_input.a.x, arg_2.e.c.x));
    let var_1 = Struct_1(false);
    var var_2 = vec2<bool>(arg_2.a.a.a, true || arg_2.a.a.a);
    var_2 = !select(vec2<bool>(any(!vec4<bool>(false, var_1.a, false, true)), var_1.a), select(select(vec2<bool>(false, arg_2.a.a.a), vec2<bool>(false, true), !vec2<bool>(arg_2.a.a.a, true)), vec2<bool>(any(vec2<bool>(var_2.x, false)), var_1.a && var_1.a), arg_2.a.a.a), !var_2.x);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1600f, 531f, arg_2.e.b.x, 1000f))) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_2.e.b.x, arg_2.e.b.x, 1145f, arg_2.e.b.x))))))));
    return arg_2.e;
}

fn func_4(arg_0: vec2<u32>, arg_1: u32, arg_2: Struct_3, arg_3: vec4<bool>) -> u32 {
    let var_0 = arg_2.b;
    let var_1 = vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(~arg_1, ~arg_1), u_input.a.xw), 0u, 8004u, _wgslsmith_dot_vec3_u32(reverseBits(~vec3<u32>(55521u, arg_1, 4294967295u)), _wgslsmith_mult_vec3_u32(~u_input.a.ywz, arg_2.d))) & reverseBits(vec4<u32>(arg_1, ~arg_2.c.x, 0u, ~u_input.a.x) >> ((vec4<u32>(4294967295u, 4294967295u, 26220u, arg_0.x) ^ vec4<u32>(arg_1, 1u, arg_1, 4294967295u)) % vec4<u32>(32u)));
    var var_2 = Struct_4(func_1(func_1(Struct_2(arg_2.a), func_3(_wgslsmith_sub_vec3_u32(vec3<u32>(var_1.x, var_1.x, arg_0.x), var_1.yxw), _wgslsmith_sub_vec2_i32(arg_2.e.xx, arg_2.e.yy), Struct_4(Struct_2(Struct_1(false)), Struct_2(arg_2.a), vec4<u32>(arg_0.x, arg_1, var_1.x, 1u), 43592i, Struct_3(arg_2.a, vec2<f32>(-978f, var_0.x), vec2<u32>(0u, arg_0.x), arg_2.d, vec3<i32>(-24669i, -2147483647i, 10372i)))), vec3<f32>(_wgslsmith_f_op_f32(731f * arg_2.b.x), _wgslsmith_f_op_f32(-1000f - 519f), _wgslsmith_f_op_f32(-arg_2.b.x)), arg_0.x), Struct_3(arg_2.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.b)), vec2<u32>(1u << (0u % 32u), reverseBits(41898u)), ~(~arg_2.d), firstLeadingBit(countOneBits(vec3<i32>(arg_2.e.x, arg_2.e.x, -2147483647i)))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1f, 1f, 1f))), _wgslsmith_sub_u32(~(~u_input.a.x), _wgslsmith_mod_u32(~u_input.a.x, var_1.x))), func_1(func_1(Struct_2(Struct_1(arg_3.x)), func_3(min(arg_2.d, var_1.xxz), vec2<i32>(arg_2.e.x, arg_2.e.x), Struct_4(Struct_2(Struct_1(false)), Struct_2(arg_2.a), var_1, 55718i, Struct_3(Struct_1(arg_2.a.a), arg_2.b, var_1.xx, var_1.wyy, arg_2.e))), vec3<f32>(_wgslsmith_f_op_f32(max(-188f, arg_2.b.x)), _wgslsmith_div_f32(-618f, 528f), _wgslsmith_f_op_f32(f32(-1f) * -606f)), func_3(abs(vec3<u32>(57460u, 9619u, arg_2.d.x)), -vec2<i32>(arg_2.e.x, arg_2.e.x), Struct_4(Struct_2(Struct_1(false)), Struct_2(arg_2.a), var_1, 2147483647i, Struct_3(arg_2.a, arg_2.b, arg_2.d.yy, vec3<u32>(arg_0.x, 4294967295u, u_input.a.x), arg_2.e))).c.x), func_3(abs(vec3<u32>(arg_0.x, 42060u, arg_1)), ~arg_2.e.zx, Struct_4(func_1(Struct_2(Struct_1(true)), arg_2, vec3<f32>(1505f, arg_2.b.x, var_0.x), arg_0.x), Struct_2(Struct_1(true)), firstLeadingBit(u_input.a), 2147483647i, arg_2)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, arg_2.b.x, -1088f) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(265f, arg_2.b.x, 603f))))), min(arg_1, 61321u)), ~(abs(vec4<u32>(15011u, var_1.x, arg_1, u_input.a.x) & u_input.a) & _wgslsmith_sub_vec4_u32(min(u_input.a, u_input.a), vec4<u32>(4294967295u, arg_2.c.x, 24205u, 125681u) >> (u_input.a % vec4<u32>(32u)))), 1i, func_3(reverseBits(u_input.a.xzw), vec2<i32>(arg_2.e.x, -2147483647i | arg_2.e.x), Struct_4(func_1(func_1(Struct_2(arg_2.a), arg_2, vec3<f32>(var_0.x, 373f, -667f), arg_0.x), arg_2, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1058f, 1000f, arg_2.b.x)), _wgslsmith_clamp_u32(0u, arg_1, arg_2.d.x)), Struct_2(arg_2.a), select(vec4<u32>(arg_2.c.x, u_input.a.x, 33191u, 29768u), vec4<u32>(arg_1, 1u, 69090u, var_1.x), !arg_3), 41456i, arg_2)));
    var_2 = Struct_4(var_2.b, func_1(var_2.a, Struct_3(var_2.e.a, vec2<f32>(_wgslsmith_f_op_f32(max(var_2.e.b.x, -944f)), -1000f), _wgslsmith_add_vec2_u32(vec2<u32>(30715u, arg_1), var_2.e.c) | arg_0, u_input.a.zyw, -_wgslsmith_add_vec3_i32(var_2.e.e, arg_2.e)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1689f, 2698f, var_2.e.b.x)))))), ~arg_0.x), ~u_input.a, _wgslsmith_mult_i32(var_2.e.e.x, -(~arg_2.e.x)), Struct_3(arg_2.a, vec2<f32>(arg_2.b.x, var_0.x), var_1.zx, arg_2.d, _wgslsmith_clamp_vec3_i32(select(arg_2.e, -vec3<i32>(var_2.e.e.x, var_2.e.e.x, 1i), !vec3<bool>(true, arg_2.a.a, false)), vec3<i32>(1i, min(var_2.e.e.x, 0i), _wgslsmith_div_i32(arg_2.e.x, var_2.d)), vec3<i32>(-var_2.e.e.x, arg_2.e.x, _wgslsmith_dot_vec3_i32(arg_2.e, var_2.e.e)))));
    var_2 = Struct_4(var_2.b, var_2.b, ~countOneBits(countOneBits(~u_input.a)), _wgslsmith_mult_i32(~(arg_2.e.x >> (firstTrailingBit(var_1.x) % 32u)), -29073i), arg_2);
    return ~(~_wgslsmith_dot_vec2_u32(arg_0, ~(vec2<u32>(u_input.a.x, 4294967295u) << (vec2<u32>(69513u, var_1.x) % vec2<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    var var_1 = _wgslsmith_mod_u32(~_wgslsmith_mult_u32(u_input.a.x, _wgslsmith_sub_u32(86900u, u_input.a.x)), func_4(u_input.a.zx & abs(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.yw)), _wgslsmith_sub_u32(u_input.a.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 45929u, u_input.a.x), u_input.a.zzz)), func_3(~(~u_input.a.zzy), vec2<i32>(i32(-1i) * -7366i, -7514i), Struct_4(func_1(Struct_2(Struct_1(false)), Struct_3(Struct_1(true), vec2<f32>(-1093f, -2243f), vec2<u32>(u_input.a.x, 63327u), u_input.a.zyy, vec3<i32>(9938i, -16067i, 0i)), vec3<f32>(2212f, -271f, 797f), u_input.a.x), Struct_2(Struct_1(true)), ~u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 2147483647i, 0i, 42703i), vec4<i32>(-1i, 2147483647i, -19320i, -2147483647i)), Struct_3(Struct_1(false), vec2<f32>(-1657f, 2064f), u_input.a.wz, u_input.a.wzw, vec3<i32>(0i, 30066i, 1i)))), !vec4<bool>(true, all(vec2<bool>(false, true)), true, any(vec2<bool>(false, false)))));
    var_0 = ~u_input.a.x;
    var_0 = 1u;
    var var_2 = reverseBits(max(~abs(~vec2<i32>(0i, 38554i)), -abs(countOneBits(vec2<i32>(2147483647i, -2147483647i)))));
    var_0 = ~u_input.a.x;
    var var_3 = func_3(_wgslsmith_clamp_vec3_u32(~u_input.a.yww, countOneBits(u_input.a.zxx | u_input.a.zyy), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, u_input.a.x, u_input.a.x) | u_input.a.yxy, vec3<u32>(~4294967295u, ~4294967295u, u_input.a.x))), ~min(vec2<i32>(var_2.x, -2147483647i) >> (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u)), func_3(u_input.a.ywy, vec2<i32>(-19111i, var_2.x), Struct_4(Struct_2(Struct_1(true)), Struct_2(Struct_1(true)), vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x), -26482i, Struct_3(Struct_1(false), vec2<f32>(-609f, -1000f), u_input.a.ww, u_input.a.yyw, vec3<i32>(-2147483647i, -25316i, var_2.x)))).e.yz) ^ select(~(~vec2<i32>(41589i, var_2.x)), -countOneBits(vec2<i32>(var_2.x, -37097i)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true))), Struct_4(func_1(func_1(func_1(Struct_2(Struct_1(true)), Struct_3(Struct_1(false), vec2<f32>(517f, 1646f), vec2<u32>(u_input.a.x, 4294967295u), vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u), vec3<i32>(var_2.x, -2147483647i, var_2.x)), vec3<f32>(1281f, -1165f, -1934f), 50755u), Struct_3(Struct_1(true), vec2<f32>(1535f, -407f), vec2<u32>(u_input.a.x, 0u), vec3<u32>(10598u, u_input.a.x, u_input.a.x), vec3<i32>(var_2.x, 1i, 9483i)), vec3<f32>(541f, 1547f, 360f), countOneBits(u_input.a.x)), Struct_3(func_1(Struct_2(Struct_1(true)), Struct_3(Struct_1(false), vec2<f32>(782f, 2533f), vec2<u32>(0u, 16933u), u_input.a.xxz, vec3<i32>(var_2.x, var_2.x, var_2.x)), vec3<f32>(1000f, 304f, -1645f), 28478u).a, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(277f, -415f))), u_input.a.zz, ~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(-1i, 21596i, -7901i)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(367f, 1195f, 389f)))), 0u), Struct_2(Struct_1(any(vec4<bool>(true, true, false, true)))), abs(vec4<u32>(4294967295u | u_input.a.x, ~u_input.a.x, 9685u, select(u_input.a.x, u_input.a.x, false))), firstLeadingBit(min(_wgslsmith_sub_i32(var_2.x, 31346i), _wgslsmith_add_i32(var_2.x, 0i))), func_3(_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.a.zxx, vec3<u32>(81751u, u_input.a.x, 1u)), max(u_input.a.wxx, u_input.a.yxy)), vec2<i32>(_wgslsmith_clamp_i32(var_2.x, var_2.x, 0i), _wgslsmith_dot_vec2_i32(vec2<i32>(32043i, -2147483647i), vec2<i32>(-2147483647i, var_2.x))), Struct_4(func_1(Struct_2(Struct_1(false)), Struct_3(Struct_1(true), vec2<f32>(1010f, 1480f), u_input.a.xz, u_input.a.yyw, vec3<i32>(0i, var_2.x, -55276i)), vec3<f32>(520f, 175f, -648f), 3076u), func_1(Struct_2(Struct_1(true)), Struct_3(Struct_1(true), vec2<f32>(-1132f, -976f), u_input.a.yy, vec3<u32>(0u, u_input.a.x, 7814u), vec3<i32>(46423i, var_2.x, var_2.x)), vec3<f32>(286f, 989f, -1701f), 0u), ~u_input.a, var_2.x, Struct_3(Struct_1(true), vec2<f32>(-1487f, 2716f), vec2<u32>(1u, u_input.a.x), vec3<u32>(1u, 1u, u_input.a.x), vec3<i32>(-15278i, var_2.x, 5843i)))))).a;
    var_3 = func_3(~(vec3<u32>(u_input.a.x, ~u_input.a.x, 35787u) << (((u_input.a.xxz >> (u_input.a.wwy % vec3<u32>(32u))) ^ vec3<u32>(2753u, u_input.a.x, 10352u)) % vec3<u32>(32u))), firstTrailingBit(-(_wgslsmith_clamp_vec2_i32(vec2<i32>(17724i, var_2.x), vec2<i32>(-77347i, var_2.x), vec2<i32>(var_2.x, 1i)) | vec2<i32>(-11274i, var_2.x))), Struct_4(func_1(Struct_2(Struct_1(false)), Struct_3(Struct_1(var_3.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-613f, -532f)), ~vec2<u32>(103294u, u_input.a.x), func_3(u_input.a.wxz, vec2<i32>(var_2.x, var_2.x), Struct_4(Struct_2(Struct_1(true)), Struct_2(Struct_1(true)), vec4<u32>(39995u, u_input.a.x, 1u, 43858u), var_2.x, Struct_3(Struct_1(var_3.a), vec2<f32>(-1000f, -104f), vec2<u32>(u_input.a.x, 1u), u_input.a.wxy, vec3<i32>(var_2.x, var_2.x, 2147483647i)))).d, ~vec3<i32>(var_2.x, var_2.x, -2147483647i)), vec3<f32>(-637f, 136f, 1f), ~_wgslsmith_dot_vec2_u32(u_input.a.yw, u_input.a.xy)), func_1(Struct_2(Struct_1(true)), Struct_3(Struct_1(false), vec2<f32>(560f, -1000f), countOneBits(u_input.a.yy), min(vec3<u32>(4294967295u, 1u, 61416u), u_input.a.yxy), vec3<i32>(7198i, -1i, var_2.x) << (u_input.a.zzw % vec3<u32>(32u))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2113f, -2353f, 292f)))), abs(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x))), vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, select(u_input.a.x, max(u_input.a.x, u_input.a.x), true)), var_2.x, Struct_3(Struct_1(false), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-936f, -1000f) + vec2<f32>(1198f, -130f))), vec2<u32>(0u, u_input.a.x) ^ ~vec2<u32>(u_input.a.x, 13810u), vec3<u32>(~u_input.a.x, ~4294967295u, u_input.a.x), firstLeadingBit(reverseBits(vec3<i32>(11437i, -34562i, var_2.x)))))).a;
    var_3 = Struct_1(4294967295u > max(~(~u_input.a.x), func_4(vec2<u32>(u_input.a.x, u_input.a.x), _wgslsmith_mult_u32(1u, 70562u), Struct_3(Struct_1(var_3.a), vec2<f32>(705f, -1000f), vec2<u32>(1u, u_input.a.x), vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x), vec3<i32>(1i, -1i, var_2.x)), select(vec4<bool>(var_3.a, var_3.a, true, var_3.a), vec4<bool>(true, true, false, var_3.a), true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(650f, _wgslsmith_f_op_f32(step(341f, -950f)), _wgslsmith_f_op_f32(step(-262f, -111f)), _wgslsmith_f_op_f32(trunc(1247f))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-464f, -1208f, -1287f, 1587f), vec4<f32>(1038f, 1000f, -523f, -191f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1323f, -442f, 285f, 1048f))) + vec4<f32>(-1867f, _wgslsmith_f_op_f32(f32(-1f) * -271f), -143f, _wgslsmith_f_op_f32(744f * -518f)))), _wgslsmith_mult_u32(~u_input.a.x, _wgslsmith_add_u32(~u_input.a.x ^ 4294967295u, ~(~25796u))), 1u);
}

