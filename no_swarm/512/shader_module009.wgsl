struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: f32,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_4,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2) -> u32 {
    var var_0 = _wgslsmith_add_vec3_u32(vec3<u32>(u_input.d.x, arg_0.c.x >> (arg_0.c.x % 32u), ~_wgslsmith_dot_vec4_u32(arg_0.c ^ vec4<u32>(arg_0.c.x, 25602u, u_input.b.x, 4294967295u), _wgslsmith_mult_vec4_u32(arg_0.c, arg_0.c))), vec3<u32>(~arg_0.c.x, _wgslsmith_mod_u32(~arg_0.c.x, ~u_input.b.x), 1u));
    var_0 = ~(~(~_wgslsmith_mult_vec3_u32(arg_0.c.wzx, u_input.b)));
    var_0 = u_input.b;
    let var_1 = select(vec3<bool>(true, any(arg_1.b.a.yx), arg_0.a.a.a.x), vec3<bool>(!(select(arg_0.a.a.a.x, true, arg_1.b.a.x) && true), true, !(true && select(true, arg_0.b.a.a.x, true))), !vec3<bool>(!all(arg_1.a.a.yx), (u_input.a.x <= 2147483647i) || !arg_1.a.a.x, firstLeadingBit(u_input.b.x) < 61341u));
    let var_2 = -1000f;
    return ~select(~u_input.b.x, abs(_wgslsmith_dot_vec4_u32(~arg_0.c, abs(vec4<u32>(0u, 1u, var_0.x, var_0.x)))), !arg_1.b.a.x);
}

fn func_2() -> Struct_3 {
    let var_0 = (~_wgslsmith_dot_vec3_u32(min(vec3<u32>(u_input.d.x, 4294967295u, 26033u), vec3<u32>(u_input.d.x, u_input.d.x, 4294967295u)), _wgslsmith_sub_vec3_u32(u_input.b, u_input.b)) | ~reverseBits(u_input.b.x | u_input.b.x)) << (~0u % 32u);
    var var_1 = Struct_5(Struct_4(Struct_1(select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true))), ~func_3(Struct_3(Struct_2(Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(true, false, false)), u_input.c.wwz, u_input.a.x), Struct_2(Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(false, false, false)), u_input.c.yzw, u_input.c.x), vec4<u32>(var_0, 24598u, var_0, var_0)), Struct_2(Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(false, true, false)), vec3<i32>(-33684i, u_input.c.x, 3419i), u_input.a.x)), 1018f), Struct_4(Struct_1(vec3<bool>(true, true, true)), ~countOneBits(_wgslsmith_dot_vec2_u32(u_input.b.xz, vec2<u32>(8538u, 49297u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1556f))), -(~_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.a.x, u_input.c.x), vec3<i32>(0i, u_input.c.x, -19348i)) ^ _wgslsmith_dot_vec4_i32(u_input.c, _wgslsmith_mult_vec4_i32(u_input.c, vec4<i32>(u_input.c.x, u_input.a.x, -68431i, u_input.a.x)))), Struct_1(vec3<bool>(true == all(vec4<bool>(true, false, true, true)), true, true)));
    let var_2 = Struct_2(Struct_1(var_1.b.a.a), var_1.a.a, firstTrailingBit(-((vec3<i32>(var_1.c, var_1.c, -1i) & vec3<i32>(-3369i, var_1.c, u_input.a.x)) << (select(vec3<u32>(0u, 44302u, 1u), vec3<u32>(4294967295u, var_1.b.b, var_1.a.b), vec3<bool>(var_1.a.a.a.x, true, false)) % vec3<u32>(32u)))), ~_wgslsmith_div_i32(~firstTrailingBit(var_1.c), u_input.c.x));
    var_1 = Struct_5(Struct_4(var_1.d, _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(0u, 1u, 1u, 0u)), vec4<u32>(var_0, u_input.d.x | u_input.b.x, ~8635u, 0u)), -725f), Struct_4(var_1.b.a, _wgslsmith_div_u32(u_input.d.x, ~min(1u, var_1.b.b)), var_1.a.c), u_input.c.x, Struct_1(vec3<bool>(var_1.d.a.x, !var_1.b.a.a.x, true)));
    var var_3 = Struct_3(Struct_2(var_2.b, var_2.b, u_input.c.wzz, 2147483647i), var_2, vec4<u32>(~337u, ~_wgslsmith_sub_u32(~0u, _wgslsmith_sub_u32(4294967295u, 0u)), 1u, ~abs(4294967295u)));
    return Struct_3(Struct_2(var_2.b, var_1.d, -_wgslsmith_clamp_vec3_i32(u_input.c.wyy ^ vec3<i32>(-1i, 2147483647i, var_2.d), _wgslsmith_div_vec3_i32(var_2.c, u_input.c.wzy), vec3<i32>(25i, var_3.b.c.x, -43331i) >> (u_input.b % vec3<u32>(32u))), 1i), Struct_2(var_1.a.a, Struct_1(select(vec3<bool>(false, false, false), !var_2.a.a, any(vec3<bool>(false, false, var_1.a.a.a.x)))), firstLeadingBit(vec3<i32>(~1i, -16536i, 2147483647i)), firstLeadingBit(_wgslsmith_clamp_i32(u_input.a.x, 2147483647i, ~(-24474i)))), _wgslsmith_add_vec4_u32(~vec4<u32>(firstTrailingBit(1u), 45069u, countOneBits(var_1.a.b), 1u), var_3.c));
}

fn func_1(arg_0: f32) -> vec3<bool> {
    let var_0 = u_input.b;
    var var_1 = -max(8986i, u_input.a.x);
    var var_2 = func_2();
    var_2 = Struct_3(func_2().b, var_2.b, var_2.c);
    let var_3 = func_2().b.b;
    return func_2().b.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-466f)));
    var var_1 = !func_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1f, _wgslsmith_div_f32(var_0, -1525f)) - -1108f));
    let var_2 = _wgslsmith_clamp_u32(34286u, abs(reverseBits(1u)), u_input.b.x);
    var var_3 = u_input.b.x;
    var var_4 = ~u_input.c.yzx;
    let var_5 = Struct_4(Struct_1(func_2().a.a.a), _wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.d.x, ~(~4294967295u), abs(var_2), ~abs(u_input.b.x)), ~(~(vec4<u32>(0u, 4294967295u, 0u, var_2) | vec4<u32>(var_2, var_2, 1u, var_2)))), 937f);
    var var_6 = var_4.xz;
    var var_7 = Struct_4(var_5.a, 1u, var_0);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(var_7.c + var_7.c), _wgslsmith_f_op_f32(var_0 * var_0), _wgslsmith_f_op_f32(921f - var_7.c)))), vec3<f32>(var_5.c, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1414f, 1000f)), var_5.c), var_7.a.a)), abs(firstLeadingBit(func_2().c.xy)), vec2<u32>(countOneBits(80394u), _wgslsmith_div_u32(0u ^ var_7.b, func_2().c.x) & var_7.b));
}

