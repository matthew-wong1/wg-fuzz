struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec3<u32>,
    d: i32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec4<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> bool {
    return false;
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_mult_vec3_u32((u_input.d >> (vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(u_input.b.x, u_input.d.x, u_input.d.x)), u_input.b.x, ~u_input.d.x) % vec3<u32>(32u))) >> (~u_input.d % vec3<u32>(32u)), ~vec3<u32>(abs(u_input.b.x), u_input.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.b.x, u_input.b.x), u_input.d) ^ firstLeadingBit(u_input.b.x)));
    var var_1 = Struct_1(-_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.e.yw, vec2<i32>(0i, -2147483647i)), ~0i, _wgslsmith_sub_i32(0i, u_input.c.x), _wgslsmith_sub_i32(-1i, 8014i)), vec4<i32>(~(-53368i), _wgslsmith_sub_i32(u_input.c.x, u_input.c.x), ~33977i, ~u_input.c.x)), !(u_input.c.x > _wgslsmith_dot_vec2_i32(u_input.c.xx, u_input.e.zy)) & !any(vec3<bool>(false, true, false)), _wgslsmith_mult_vec3_u32(~vec3<u32>(8894u, var_0.x, var_0.x), vec3<u32>(1u, 4294967295u, 1u)) & min(var_0, _wgslsmith_sub_vec3_u32(vec3<u32>(36983u, 1u, 40615u), vec3<u32>(u_input.d.x, var_0.x, 33911u) & var_0)), max(33802i, ~(~_wgslsmith_div_i32(u_input.c.x, 1i))), vec4<bool>(false, _wgslsmith_f_op_f32(sign(-379f)) <= 508f, any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true)), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true)))), true));
    let var_2 = Struct_1(-_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_add_i32(1i, 1i), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -13446i), vec2<i32>(0i, var_1.d)), u_input.e.x << (77337u % 32u), select(var_1.d, u_input.c.x, var_1.e.x)), vec4<i32>(_wgslsmith_dot_vec2_i32(var_1.a.wy, vec2<i32>(u_input.c.x, -1i)), max(var_1.a.x, -25147i), u_input.c.x & 2147483647i, firstTrailingBit(u_input.c.x)), _wgslsmith_div_vec4_i32(u_input.e, vec4<i32>(-47068i, -2147483647i, 549i, u_input.c.x))), var_1.b, _wgslsmith_add_vec3_u32(var_1.c, _wgslsmith_mult_vec3_u32(~var_1.c, _wgslsmith_mod_vec3_u32(select(vec3<u32>(var_0.x, 15377u, var_1.c.x), vec3<u32>(var_0.x, 44825u, var_1.c.x), var_1.e.zxz), var_1.c))), 2147483647i, select(!(!vec4<bool>(var_1.b, var_1.e.x, true, true)), vec4<bool>(true, true, all(select(var_1.e.wx, vec2<bool>(var_1.e.x, true), false)), true), false));
    var_1 = var_2;
    let var_3 = var_2;
    return true;
}

fn func_1(arg_0: vec2<bool>, arg_1: f32, arg_2: u32, arg_3: Struct_1) -> i32 {
    var var_0 = select(arg_3.e.wz, vec2<bool>(!(_wgslsmith_add_u32(1u, arg_3.c.x) > (u_input.b.x >> (u_input.a % 32u))), arg_0.x), arg_3.e.wz);
    var_0 = select(select(!select(arg_3.e.yy, vec2<bool>(true, true), false), vec2<bool>(var_0.x, -246f != arg_1), false), vec2<bool>(true, false), select(select(!select(vec2<bool>(false, true), arg_0, arg_0), vec2<bool>(func_2(), func_3()), 745f > _wgslsmith_f_op_f32(-arg_1)), select(select(select(vec2<bool>(var_0.x, false), vec2<bool>(false, var_0.x), false), select(arg_0, vec2<bool>(var_0.x, arg_3.b), false), vec2<bool>(false, false)), arg_3.e.zz, all(vec4<bool>(arg_3.b, true, false, arg_0.x))), func_2() & false));
    var var_1 = Struct_1(arg_3.a, arg_3.e.x, ~max(countOneBits(u_input.d), vec3<u32>(~7698u, u_input.d.x, arg_3.c.x)), u_input.e.x, vec4<bool>(true, u_input.e.x >= ~(~(-2147483647i)), false, !arg_3.e.x));
    var var_2 = arg_3.e;
    let var_3 = arg_3;
    return _wgslsmith_dot_vec2_i32(~(~vec2<i32>(_wgslsmith_mod_i32(-2147483647i, -23809i), 28487i >> (var_3.c.x % 32u))), abs(u_input.c.zz));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec4<i32>(func_1(vec2<bool>(true, true), -1000f, firstLeadingBit(~109557u), Struct_1(u_input.e, false, ~u_input.d, 53142i, vec4<bool>(false, true, false, true))), _wgslsmith_clamp_i32(2147483647i, abs(-1i >> (1u % 32u)), ~abs(-1i)), ~1578i, u_input.e.x), !(_wgslsmith_f_op_f32(sign(-690f)) != 1f) | true, _wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, 4294967295u, 4294967295u), u_input.d, vec3<u32>(firstTrailingBit(abs(1u)), ~u_input.d.x, 4294967295u)), u_input.c.x, vec4<bool>(true, true, true, true));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -1005f) * vec2<f32>(1000f, 475f))) + vec2<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1561f)))));
    var var_2 = _wgslsmith_mult_u32(4294967295u, ~(~reverseBits(40510u << (u_input.d.x % 32u))));
    let var_3 = Struct_1(var_0.a, any(vec2<bool>((var_0.c.x & 57381u) < ~25298u, func_3() | true)), vec3<u32>(u_input.d.x, u_input.d.x, countOneBits(_wgslsmith_mod_u32(var_0.c.x, var_0.c.x)) >> (select(~u_input.d.x, _wgslsmith_mult_u32(23036u, 99969u), u_input.d.x >= var_0.c.x) % 32u)), -20282i, select(!select(vec4<bool>(false, var_0.b, var_0.e.x, false), select(var_0.e, var_0.e, var_0.e.x), var_0.e), !select(var_0.e, vec4<bool>(var_0.e.x, var_0.b, var_0.b, var_0.e.x), var_0.e), var_0.e));
    var_0 = Struct_1(firstTrailingBit(var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-399f + _wgslsmith_f_op_f32(var_1.x + -664f))) > var_1.x, vec3<u32>(~abs(4294967295u), _wgslsmith_add_u32(_wgslsmith_mod_u32(~var_3.c.x, var_0.c.x), var_0.c.x), _wgslsmith_clamp_u32((0u & u_input.a) | 4294967295u, _wgslsmith_div_u32(var_0.c.x | 1u, var_3.c.x), _wgslsmith_mod_u32(u_input.b.x | var_0.c.x, _wgslsmith_clamp_u32(var_3.c.x, var_0.c.x, 0u)))), -1i, var_0.e);
    var_2 = var_3.c.x;
    var_0 = Struct_1(select(-(~_wgslsmith_add_vec4_i32(u_input.e, var_3.a)), vec4<i32>(_wgslsmith_sub_i32(u_input.e.x, 0i), u_input.e.x, ~40026i, u_input.e.x) | ~vec4<i32>(-11086i, var_0.a.x, var_0.d, u_input.e.x), var_0.e), var_3.b, ~_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(var_0.c, ~vec3<u32>(75163u, var_0.c.x, 4294967295u)), vec3<u32>(var_0.c.x & var_0.c.x, _wgslsmith_mult_u32(u_input.d.x, var_3.c.x), ~var_3.c.x)), -1i, vec4<bool>(var_3.e.x, false, !func_3(), false));
    var_0 = var_3;
    let var_4 = 46864u;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-254f + 577f)), var_1.x, _wgslsmith_f_op_f32(-490f - _wgslsmith_f_op_f32(-219f - _wgslsmith_f_op_f32(select(-1064f, 614f, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-271f)))), var_3.c.x, vec4<u32>(0u, ~4294967295u, 6177u, _wgslsmith_div_u32(select(0u, var_0.c.x, false), var_4 | 90242u)) << ((~(~vec4<u32>(var_0.c.x, 32164u, var_0.c.x, 15675u)) | vec4<u32>(_wgslsmith_clamp_u32(var_0.c.x, var_4, 4294967295u), ~var_4, u_input.b.x ^ var_4, 1u)) % vec4<u32>(32u)), vec2<i32>(13870i, -(~var_3.a.x) ^ u_input.c.x));
}

