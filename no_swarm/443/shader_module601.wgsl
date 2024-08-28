struct Struct_1 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_5(u_input.d, abs(~(vec4<i32>(u_input.d, u_input.d, -31512i, 2147483647i) >> (~vec4<u32>(111234u, u_input.e.x, 20145u, 4294967295u) % vec4<u32>(32u)))), 38289u);
    global0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1547f - _wgslsmith_f_op_f32(-1385f * -378f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(338f))), var_0.b.x < u_input.d)))));
    var var_1 = -(~(_wgslsmith_mult_i32(1i, var_0.b.x) | 2147483647i));
    let var_2 = _wgslsmith_add_u32(_wgslsmith_mod_u32(var_0.c, ~(~12776u)), 30919u | var_0.c);
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -608f)) + -1518f);
    return Struct_1(~vec2<u32>(~1355u, 42236u) ^ u_input.e.xz, -1571f);
}

fn func_3() -> vec4<i32> {
    var var_0 = Struct_4(func_2().a.x, Struct_1(~_wgslsmith_add_vec2_u32(~u_input.b.yx, _wgslsmith_sub_vec2_u32(u_input.e.xx, vec2<u32>(u_input.e.x, u_input.c))), 120f));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.b.b, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(var_0.b.b, 154f)))), var_0.b.b))));
    let var_2 = u_input.a;
    let var_3 = Struct_4(u_input.a & countOneBits(3574u), func_2());
    let var_4 = Struct_2(func_2(), vec4<u32>(100681u >> (1u % 32u), ~u_input.e.x, ~_wgslsmith_dot_vec2_u32(u_input.b.xy, vec2<u32>(0u, var_0.b.a.x)), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(var_2, 4294967295u), var_0.b.a.x, 37699u >> (u_input.c % 32u))) << ((select(firstLeadingBit(vec4<u32>(var_0.b.a.x, var_2, 0u, 86957u)), ~vec4<u32>(var_3.b.a.x, 45904u, var_2, var_2), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true))) & ~(~vec4<u32>(4294967295u, var_3.a, 4294967295u, var_3.a))) % vec4<u32>(32u)));
    return vec4<i32>(~(-u_input.d & (~u_input.d << (func_2().a.x % 32u))), -(~(~u_input.d)), -27402i, ~(i32(-1i) * -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, u_input.d), vec2<i32>(u_input.d, u_input.d))));
}

fn func_1(arg_0: Struct_2, arg_1: i32) -> u32 {
    var var_0 = func_2();
    let var_1 = vec2<i32>(u_input.d, -18062i);
    var var_2 = !(true & (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.b - -103f)) < var_0.b));
    let var_3 = Struct_5(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(-vec4<i32>(u_input.d, var_1.x, u_input.d, 1i), (vec4<i32>(-2147483647i, arg_1, u_input.d, var_1.x) >> (vec4<u32>(arg_0.b.x, var_0.a.x, arg_0.a.a.x, arg_0.b.x) % vec4<u32>(32u))) | vec4<i32>(arg_1, arg_1, arg_1, 11012i), vec4<i32>(22340i, _wgslsmith_div_i32(arg_1, -787i), 2147483647i, 49008i)), func_3()), -reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_1, -1i, 0i, var_1.x) << (vec4<u32>(1u, 1u, u_input.b.x, 0u) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(-40217i, 2147483647i, arg_1, var_1.x), vec4<i32>(-24824i, var_1.x, 17989i, u_input.d)))), select(_wgslsmith_mult_u32(u_input.e.x >> (38175u % 32u), min(44438u, ~arg_0.a.a.x)), ~((var_0.a.x ^ var_0.a.x) | (4294967295u << (arg_0.b.x % 32u))), true));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -898f)) + _wgslsmith_f_op_f32(-574f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b))));
    return ~var_0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(~select(func_1(Struct_2(Struct_1(u_input.b.zz, 1351f), vec4<u32>(u_input.a, 46206u, u_input.e.x, 50642u)), u_input.d) << (abs(u_input.b.x) % 32u), abs(_wgslsmith_mod_u32(1u, u_input.c)), true), Struct_1(~_wgslsmith_div_vec2_u32(~u_input.b.xx, vec2<u32>(18363u, u_input.b.x)), -761f));
    let var_1 = Struct_2(var_0.b, _wgslsmith_mod_vec4_u32(countOneBits(~vec4<u32>(var_0.a, var_0.b.a.x, 4294967295u, 0u)) << (_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.b.a.x, var_0.b.a.x, var_0.a, var_0.a), vec4<u32>(var_0.b.a.x, u_input.e.x, 1u, var_0.b.a.x)), vec4<u32>(var_0.a, u_input.e.x, var_0.a, var_0.b.a.x)) % vec4<u32>(32u)), select(~vec4<u32>(var_0.b.a.x, var_0.a, 1u, u_input.b.x) & _wgslsmith_add_vec4_u32(vec4<u32>(1u, 0u, var_0.b.a.x, 57038u), vec4<u32>(33078u, 51662u, var_0.a, var_0.a)), ~(~vec4<u32>(64450u, 31925u, var_0.a, 70188u)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), false), all(vec3<bool>(true, false, false))))));
    var var_2 = Struct_2(var_0.b, select(_wgslsmith_clamp_vec4_u32(reverseBits(~var_1.b), firstLeadingBit(firstTrailingBit(var_1.b)), ~vec4<u32>(57702u, 4294967295u, 46323u, 0u) ^ vec4<u32>(var_0.b.a.x, var_1.a.a.x, var_0.b.a.x, 738u)), firstLeadingBit(abs(var_1.b)), any(select(vec2<bool>(true, true), vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(false, false), false)))));
    var var_3 = Struct_3(Struct_1(var_0.b.a | (~var_1.a.a | var_1.a.a), var_0.b.b), ~_wgslsmith_clamp_i32(u_input.d, 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, 21334i) >> (vec2<u32>(var_0.a, 0u) % vec2<u32>(32u)), min(vec2<i32>(25347i, u_input.d), vec2<i32>(0i, 35992i)))), Struct_1(vec2<u32>(_wgslsmith_mult_u32(var_1.a.a.x, var_1.a.a.x), _wgslsmith_sub_u32(var_2.b.x, 1u)), _wgslsmith_f_op_f32(377f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(1023f)))))), 1i, var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_i32(select(vec3<i32>(-1i) * -vec3<i32>(u_input.d, -27463i, var_3.d), ~(vec3<i32>(0i, u_input.d, var_3.b) | vec3<i32>(-36702i, -25631i, 1i)), true), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.d, select(u_input.d, 62837i, true), -var_3.b), max(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, var_3.d, var_3.b), vec3<i32>(8568i, u_input.d, 1i)), _wgslsmith_mod_vec3_i32(vec3<i32>(-8539i, var_3.d, var_3.d), vec3<i32>(2147483647i, -2147483647i, 61625i))), _wgslsmith_add_vec3_i32(vec3<i32>(-46150i, 5052i, 0i), ~vec3<i32>(-20529i, 542i, u_input.d)))), 5373i, vec4<f32>(716f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-424f - _wgslsmith_f_op_f32(step(var_0.b.b, 491f))) - var_3.c.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-386f + _wgslsmith_f_op_f32(f32(-1f) * -209f)) * func_2().b)));
}

