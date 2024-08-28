struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: u32, arg_1: Struct_3, arg_2: vec2<u32>, arg_3: i32) -> f32 {
    let var_0 = Struct_1(vec3<u32>(~arg_1.a.b, 1u, ~u_input.b), u_input.b, _wgslsmith_div_vec4_i32(vec4<i32>(~arg_3, ~(-1i), 2147483647i, -26261i) & ((u_input.d ^ vec4<i32>(arg_1.a.c.x, arg_3, 11077i, u_input.e.x)) | vec4<i32>(u_input.e.x, u_input.e.x, u_input.d.x, 10829i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d.x | arg_3, -30758i, select(arg_1.a.a.x, -26472i, false), arg_1.a.c.x), _wgslsmith_clamp_vec4_i32(~vec4<i32>(arg_1.a.a.x, arg_3, -1i, arg_3), u_input.d >> (vec4<u32>(0u, 0u, 4294967295u, 1u) % vec4<u32>(32u)), countOneBits(u_input.d)), (vec4<i32>(arg_3, -35764i, arg_1.a.c.x, 32338i) & vec4<i32>(arg_3, -1i, 1i, 10975i)) | min(vec4<i32>(27961i, 1i, 2147483647i, -16649i), vec4<i32>(arg_3, u_input.e.x, arg_3, arg_3)))), _wgslsmith_f_op_f32(f32(-1f) * -826f), _wgslsmith_div_i32(_wgslsmith_sub_i32(-arg_1.a.c.x, _wgslsmith_div_i32(-1i, -1i)), -(-1i << (_wgslsmith_clamp_u32(arg_0, arg_1.a.b, 61705u) % 32u))));
    var var_1 = ~1i;
    var_1 = u_input.c.x;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, var_0.d)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1067f, var_0.d)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(770f, -935f) + vec2<f32>(var_0.d, var_0.d)))))));
    let var_3 = !select(vec2<bool>(true, true), vec2<bool>(true, true), !select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(false, false), false), var_2.x >= var_0.d));
    return -173f;
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -284f);
    let var_1 = select(vec2<bool>(true, -111f > _wgslsmith_f_op_f32(func_3(1u, Struct_3(Struct_2(vec2<i32>(1i, 46302i), 26312u, u_input.d.wzx)), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(0u, 35851u)), 1i))), select(vec2<bool>(false, true), select(select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), u_input.e.x == -1i), vec2<bool>(true, true), true), _wgslsmith_f_op_f32(f32(-1f) * -249f) < var_0), u_input.b <= _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(firstTrailingBit(vec2<u32>(u_input.a, 30415u)), vec2<u32>(1u, 1u)), vec2<u32>(u_input.b & 4294967295u, 125705u)));
    var var_2 = Struct_3(Struct_2(vec2<i32>(_wgslsmith_clamp_i32(~u_input.e.x, min(u_input.c.x, u_input.d.x), i32(-1i) * -23621i), u_input.d.x), ~_wgslsmith_div_u32(50093u << (u_input.a % 32u), 12158u), -u_input.e));
    var_2 = Struct_3(var_2.a);
    var var_3 = Struct_1(max(~vec3<u32>(u_input.a, countOneBits(20066u), 11324u), ~vec3<u32>(_wgslsmith_sub_u32(45001u, 0u), 33665u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_2.a.b), vec2<u32>(51008u, u_input.b)))), ~reverseBits(countOneBits(0u)), _wgslsmith_mult_vec4_i32(vec4<i32>(-6372i, select(-5581i, -32931i, true), -4425i, _wgslsmith_dot_vec2_i32(firstLeadingBit(u_input.e.yz), vec2<i32>(1i, u_input.d.x))), _wgslsmith_div_vec4_i32(u_input.d, -select(u_input.d, vec4<i32>(u_input.d.x, u_input.d.x, u_input.c.x, var_2.a.c.x), true))), -1000f, var_2.a.c.x << (56062u % 32u));
    return false;
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    let var_0 = u_input.d.x;
    var var_1 = select(vec3<bool>(!all(vec3<bool>(true, true, true)), any(select(select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(true, true), vec2<bool>(false, false))), !((arg_0.d < 550f) && true)), !vec3<bool>(true, func_2(), true), !func_2());
    var_1 = select(!(!select(!vec3<bool>(false, false, var_1.x), vec3<bool>(true, var_1.x, true), !vec3<bool>(var_1.x, true, var_1.x))), vec3<bool>(!all(!var_1.xy), any(vec3<bool>(true, true, true)) && !(!var_1.x), var_1.x), true);
    var_1 = !vec3<bool>(!var_1.x, var_1.x, all(select(vec4<bool>(var_1.x, false, var_1.x, false), select(vec4<bool>(true, false, var_1.x, true), vec4<bool>(true, var_1.x, true, var_1.x), var_1.x), select(vec4<bool>(true, var_1.x, var_1.x, true), vec4<bool>(var_1.x, false, var_1.x, false), var_1.x))));
    let var_2 = firstTrailingBit(abs(~1u) << ((_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, arg_0.a.x, u_input.b), arg_0.a) ^ max(4294967295u, 4294967295u)) % 32u)) > _wgslsmith_add_u32(_wgslsmith_add_u32(abs(arg_0.a.x), 0u) << (_wgslsmith_dot_vec2_u32(vec2<u32>(67119u, 17350u), vec2<u32>(1u, 1u)) % 32u), 1u);
    return Struct_2(-(~vec2<i32>(1i, -2147483647i)) & vec2<i32>(-(~(-24271i)), countOneBits(abs(u_input.d.x))), ~(~1u), _wgslsmith_add_vec3_i32(arg_0.c.yxz, -arg_0.c.wyy));
}

fn func_4(arg_0: Struct_2, arg_1: f32) -> u32 {
    var var_0 = u_input.b;
    var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(~arg_0.b, firstTrailingBit(999u), arg_0.b, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.b, 35496u, arg_0.b) ^ vec3<u32>(1u, 40994u, 58327u), select(vec3<u32>(0u, 28990u, 33442u), vec3<u32>(arg_0.b, arg_0.b, 1u), vec3<bool>(false, true, false)))), _wgslsmith_mod_vec4_u32(select(abs(vec4<u32>(30594u, 0u, 4294967295u, 17861u)), vec4<u32>(0u, u_input.a, u_input.a, 99597u), true), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, arg_0.b, 0u), vec3<u32>(4751u, arg_0.b, 1u)), ~1u, reverseBits(arg_0.b), ~1u))) & abs(_wgslsmith_dot_vec2_u32(~min(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(29590u, arg_0.b)), abs(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, u_input.a), vec2<u32>(60283u, 1u)))));
    var_0 = _wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.b, 17227u), _wgslsmith_add_u32(23138u, arg_0.b));
    var_0 = 35087u;
    var var_1 = !select(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false))), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), all(vec2<bool>(false, true))), true), ((-1362f != arg_1) | true) & any(select(vec2<bool>(true, true), vec2<bool>(true, false), true)));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec3<u32>(u_input.b, func_4(func_1(Struct_1(vec3<u32>(89443u, 1u, u_input.b), u_input.b, u_input.d, 1648f, u_input.e.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -695f)))), func_4(func_1(Struct_1(vec3<u32>(20180u, 0u, u_input.a), u_input.a, u_input.d, 893f, u_input.c.x)), 570f)), u_input.b, u_input.d, _wgslsmith_f_op_f32(step(-313f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-232f - 1436f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(4294967295u, Struct_3(Struct_2(u_input.d.wz, u_input.b, vec3<i32>(u_input.e.x, u_input.d.x, u_input.c.x))), vec2<u32>(u_input.b, 0u), -1i)) - -340f)))), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(reverseBits(u_input.e.x), u_input.d.x), _wgslsmith_mod_i32(max(-10604i, u_input.e.x), u_input.c.x), u_input.d.x, -1i), _wgslsmith_mod_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(-1i, u_input.c.x, -1i, -39053i), vec4<i32>(38032i, 0i, 2147483647i, u_input.d.x)), -(~u_input.d))));
    let var_1 = all(!vec2<bool>(true, 0u >= ~u_input.a));
    var_0 = Struct_1(var_0.a, var_0.a.x, var_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d)), _wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.d.x, u_input.e.x) << (_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, u_input.a), var_0.a.zy) % 32u), var_0.c.x));
    var var_2 = Struct_3(Struct_2(u_input.c.xz, _wgslsmith_clamp_u32(1u, ~u_input.b, var_0.a.x), ~(-vec3<i32>(u_input.d.x, u_input.c.x, 60108i)) << (vec3<u32>(u_input.b << (u_input.b % 32u), ~0u, var_0.b) % vec3<u32>(32u))));
    let var_3 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.d, _wgslsmith_f_op_f32(trunc(var_0.d)))) + _wgslsmith_f_op_f32(func_3(func_1(Struct_1(vec3<u32>(u_input.b, 4294967295u, u_input.b), 0u, u_input.d, var_0.d, 59282i)).b, Struct_3(var_2.a), var_0.a.zx >> (var_0.a.yx % vec2<u32>(32u)), 31421i))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1519f, 1836f) + _wgslsmith_f_op_f32(max(var_0.d, 483f))), 1162f, false)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(762f, -1280f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(0u, vec3<i32>(_wgslsmith_mod_i32(-1i, -1i), 15795i >> (var_0.a.x % 32u), abs(var_2.a.c.x)), _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.b, u_input.b, var_0.a.x), var_0.a), var_0.a) << ((~vec3<u32>(u_input.a, 4294967295u, 0u) ^ vec3<u32>(_wgslsmith_clamp_u32(var_0.b, var_0.a.x, 4294967295u), 54903u, 39825u & var_0.b)) % vec3<u32>(32u)), select(vec2<u32>(var_0.b, firstTrailingBit(~u_input.b)), var_0.a.zx, !(max(var_0.b, u_input.a) == var_2.a.b)));
}

