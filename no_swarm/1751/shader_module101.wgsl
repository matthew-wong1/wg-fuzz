struct Struct_1 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: vec2<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: i32,
    d: bool,
    e: Struct_2,
}

struct Struct_5 {
    a: f32,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
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

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<f32>, arg_2: vec4<f32>, arg_3: Struct_3) -> u32 {
    var var_0 = arg_0;
    let var_1 = ~max(u_input.c, _wgslsmith_add_vec3_u32(vec3<u32>(6096u, u_input.b.x, 43699u), ~vec3<u32>(u_input.b.x, 6316u, 57499u)) | vec3<u32>(firstLeadingBit(u_input.c.x), ~u_input.c.x, reverseBits(u_input.c.x)));
    return 30579u;
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: i32, arg_3: vec4<u32>) -> f32 {
    let var_0 = arg_0.d.b.x;
    var var_1 = select(_wgslsmith_mod_u32(func_3(vec3<bool>(true, true, true), _wgslsmith_div_vec3_f32(vec3<f32>(-1719f, arg_0.a.b.x, 134f), vec3<f32>(1010f, 158f, -608f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 201f, 204f, -467f)), Struct_3(vec3<bool>(true, true, true), vec3<i32>(arg_1, u_input.a.x, 2147483647i), vec2<bool>(true, false))), ~26495u) >> (~1u % 32u), 42535u, !(true & (arg_0.a.a.x != 4294967295u)));
    var_1 = _wgslsmith_dot_vec4_u32(arg_0.a.a, ~vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_0.a.c.x, u_input.c.x), ~vec2<u32>(arg_0.d.c.x, 1u)), _wgslsmith_add_u32(20945u, _wgslsmith_clamp_u32(0u, u_input.b.x, 46805u)), u_input.c.x, ~(~arg_0.c.x)));
    let var_2 = Struct_2(arg_0.d, arg_0.a, ~arg_3.yzz, arg_0.d);
    let var_3 = Struct_3(vec3<bool>(any(vec4<bool>(true, false, true, any(vec3<bool>(true, false, false)))), true, true), countOneBits(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, 2147483647i, _wgslsmith_div_i32(27685i, 2147483647i)), ~vec3<i32>(arg_1, 60037i, arg_2))), vec2<bool>(any(vec4<bool>(all(vec2<bool>(true, false)), true, true, true)), select(u_input.a.x == ~arg_2, all(vec2<bool>(false, true)) | all(vec4<bool>(true, true, false, true)), any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false)))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-462f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0 - var_0), _wgslsmith_f_op_f32(round(-589f)))), -849f, var_0 != _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, 327f)))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<i32>, arg_2: Struct_3) -> Struct_4 {
    var var_0 = countOneBits(2147483647i);
    var var_1 = _wgslsmith_f_op_f32(exp2(arg_0.x));
    let var_2 = _wgslsmith_f_op_f32(-272f * 1000f);
    var_0 = u_input.a.x << (1u % 32u);
    var var_3 = Struct_5(_wgslsmith_f_op_f32(-var_2), Struct_4(Struct_1(vec4<u32>(abs(1u), ~27089u, firstLeadingBit(0u), u_input.b.x), _wgslsmith_f_op_vec2_f32(-arg_0.zx), vec3<u32>(max(13286u, 4294967295u), u_input.c.x, ~u_input.b.x)), u_input.b.x, 13231i, true, Struct_2(Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, u_input.b.x, 3431u), vec4<u32>(1u, 141264u, u_input.b.x, 1u)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(840f, -503f))), _wgslsmith_sub_vec3_u32(u_input.c, u_input.c)), Struct_1(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) & vec4<u32>(25761u, u_input.c.x, u_input.c.x, u_input.b.x), arg_0.zy, select(u_input.c, vec3<u32>(33229u, u_input.c.x, u_input.b.x), arg_2.c.x)), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, u_input.b.x, u_input.b.x) & vec3<u32>(12882u, 0u, 0u), u_input.c ^ u_input.c), Struct_1(vec4<u32>(u_input.b.x, u_input.c.x, 29992u, u_input.b.x) >> (vec4<u32>(u_input.c.x, u_input.b.x, u_input.b.x, u_input.c.x) % vec4<u32>(32u)), vec2<f32>(arg_0.x, var_2), ~u_input.c))));
    return var_3.b;
}

fn func_1() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1539f + -417f))) + 1852f));
    let var_1 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-765f + -1437f), -577f, _wgslsmith_f_op_f32(func_2(Struct_2(Struct_1(vec4<u32>(4329u, 0u, 21687u, 1u), vec2<f32>(-805f, -1887f), u_input.c), Struct_1(vec4<u32>(41637u, 4294967295u, 0u, 1u), vec2<f32>(-907f, -1939f), u_input.c), vec3<u32>(u_input.c.x, 0u, u_input.b.x), Struct_1(vec4<u32>(u_input.b.x, 4294967295u, 0u, u_input.c.x), vec2<f32>(-720f, -1189f), vec3<u32>(u_input.b.x, 1u, 52332u))), 44824i, u_input.a.x, vec4<u32>(4294967295u, 73644u, u_input.b.x, 1u))), _wgslsmith_f_op_f32(step(-795f, 312f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1464f, 646f, -774f, 487f) * vec4<f32>(-833f, 1886f, -451f, -587f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-116f, -214f, -1159f, 538f) + vec4<f32>(1853f, -511f, -410f, 238f))))), _wgslsmith_add_vec3_i32(max(-vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), _wgslsmith_sub_vec3_i32(vec3<i32>(12546i, -1i, u_input.a.x), vec3<i32>(33063i, u_input.a.x, -13096i))), -vec3<i32>(u_input.a.x, u_input.a.x, -1i)) | -vec3<i32>(_wgslsmith_mod_i32(u_input.a.x, 2147483647i), u_input.a.x, 1i), Struct_3(!(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false)), vec3<i32>(u_input.a.x, ~(-2147483647i), u_input.a.x), select(select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), true), vec2<bool>(true, any(vec4<bool>(false, true, false, true))), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), true))));
    var var_2 = ~vec2<u32>(var_1.a.a.x, 1u & _wgslsmith_mult_u32(var_1.b & 1u, var_1.b));
    var_0 = var_1.e.d.b.x;
    var_0 = var_1.e.b.b.x;
    return Struct_3(!(!vec3<bool>(true, var_1.d, select(var_1.d, var_1.d, true))), ~select(vec3<i32>(34710i, var_1.c, -2147483647i) << ((vec3<u32>(22452u, 1u, var_1.e.b.a.x) >> (u_input.c % vec3<u32>(32u))) % vec3<u32>(32u)), abs(~vec3<i32>(45229i, u_input.a.x, 0i)), vec3<bool>(false, func_4(vec4<f32>(156f, -638f, -596f, -725f), vec3<i32>(2147483647i, -2147483647i, var_1.c), Struct_3(vec3<bool>(var_1.d, false, true), vec3<i32>(-1i, var_1.c, -42581i), vec2<bool>(var_1.d, var_1.d))).d, any(vec4<bool>(false, false, var_1.d, true)))), select(vec2<bool>(true, any(vec2<bool>(var_1.d, false)) && var_1.d), !vec2<bool>(true, func_4(vec4<f32>(-185f, var_1.a.b.x, 1000f, -679f), vec3<i32>(u_input.a.x, u_input.a.x, -1i), Struct_3(vec3<bool>(var_1.d, true, var_1.d), vec3<i32>(-1i, u_input.a.x, var_1.c), vec2<bool>(true, false))).d), var_1.d));
}

fn func_5(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: bool, arg_3: Struct_4) -> Struct_2 {
    var var_0 = arg_3.a;
    var var_1 = vec2<u32>(_wgslsmith_mult_u32(~(~_wgslsmith_div_u32(70353u, arg_3.b)), ~(~(~u_input.c.x))), u_input.b.x);
    let var_2 = _wgslsmith_dot_vec2_i32(abs(-select(_wgslsmith_div_vec2_i32(vec2<i32>(46930i, -10330i), vec2<i32>(arg_0.b.x, -16339i)), ~vec2<i32>(28277i, arg_3.c), true)), vec2<i32>(firstLeadingBit(_wgslsmith_mult_i32(-39303i, arg_3.c)), func_1().b.x));
    var_1 = _wgslsmith_mod_vec2_u32(~_wgslsmith_mult_vec2_u32(firstTrailingBit(vec2<u32>(var_0.a.x, arg_3.b)), ~u_input.b), select(arg_3.a.a.zz, ~var_0.c.zx, !func_1().c)) & ~(max(select(var_0.c.xz, var_0.a.wz, arg_0.a.x), u_input.c.zx) >> (_wgslsmith_mod_vec2_u32(select(u_input.b, u_input.b, vec2<bool>(arg_2, false)), arg_3.e.a.c.zx >> (var_0.c.zy % vec2<u32>(32u))) % vec2<u32>(32u)));
    var_0 = func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-920f, arg_3.a.b.x, -835f, -1870f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_3.e.d.b.x, var_0.b.x, arg_3.e.a.b.x, var_0.b.x))))), vec3<i32>(-2147483647i, firstLeadingBit(26045i), arg_3.c) ^ abs(-(~arg_0.b)), func_1()).e.d;
    return arg_3.e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(), vec3<bool>(true, false, !func_1().a.x & (max(20028u, 4294967295u) <= firstTrailingBit(u_input.b.x))), false, func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1009f, -151f, -1024f, _wgslsmith_f_op_f32(f32(-1f) * -2104f))), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, _wgslsmith_mult_i32(u_input.a.x, u_input.a.x), _wgslsmith_div_i32(8219i, u_input.a.x)), -(~vec3<i32>(u_input.a.x, u_input.a.x, 0i))), func_1()));
    var var_1 = var_0.b.b.x;
    var var_2 = false;
    var_2 = !(!all(vec4<bool>(false, true, true, true))) && false;
    let var_3 = min(_wgslsmith_dot_vec2_i32(max(u_input.a, ~u_input.a), _wgslsmith_div_vec2_i32(~(vec2<i32>(-29429i, 1i) ^ vec2<i32>(u_input.a.x, u_input.a.x)), u_input.a ^ firstLeadingBit(vec2<i32>(2147483647i, u_input.a.x)))), u_input.a.x);
    let var_4 = func_4(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1145f, -379f, func_4(vec4<f32>(625f, 1475f, var_0.b.b.x, -573f), _wgslsmith_mult_vec3_i32(vec3<i32>(37717i, u_input.a.x, -4190i), vec3<i32>(var_3, u_input.a.x, var_3)), func_1()).a.b.x, 1658f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.b.x, _wgslsmith_f_op_f32(select(-1523f, var_0.d.b.x, false)), _wgslsmith_div_f32(var_0.d.b.x, var_0.a.b.x), 1187f)))), reverseBits(vec3<i32>(i32(-1i) * -329i, var_3, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, var_3), vec2<i32>(2147483647i, 36066i)))), Struct_3(select(vec3<bool>(select(true, false, false), true, true), vec3<bool>(true, true, any(vec3<bool>(true, true, false))), false), select(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_3, 0i, 30244i) << (vec3<u32>(0u, u_input.b.x, 4294967295u) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, var_3, 1i), vec3<i32>(var_3, -11215i, 15987i), vec3<i32>(0i, var_3, var_3)), vec3<i32>(u_input.a.x, 2147483647i, 6812i)), _wgslsmith_mult_vec3_i32(vec3<i32>(0i, 1i, -2147483647i) ^ vec3<i32>(var_3, -80867i, -2147483647i), -vec3<i32>(21203i, u_input.a.x, u_input.a.x)), vec3<bool>(any(vec2<bool>(true, true)), all(vec2<bool>(true, false)), true)), !select(vec2<bool>(false, true), vec2<bool>(true, true), false)));
    var_1 = _wgslsmith_f_op_f32(func_2(var_4.e, -1i, -22823i, func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(-403f, var_4.e.d.b.x, 325f, _wgslsmith_f_op_f32(abs(914f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-500f, var_4.a.b.x, var_0.a.b.x, var_0.a.b.x))) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.d.b.x, -1309f, -448f, -1000f), vec4<f32>(-140f, 2769f, 286f, var_0.d.b.x))))), vec3<i32>(~(~36727i), ~0i, select(-25209i >> (u_input.c.x % 32u), var_4.c, all(vec2<bool>(true, true)))), func_1()).a.a));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(abs(var_3), -var_4.c, -40475i, firstLeadingBit(u_input.a.x & max(var_3, u_input.a.x))), vec3<i32>(-select(u_input.a.x, var_3, true), var_4.c, var_3) ^ (_wgslsmith_mod_vec3_i32(min(vec3<i32>(var_4.c, var_3, var_3), vec3<i32>(0i, u_input.a.x, -22580i)), vec3<i32>(u_input.a.x, var_3, var_4.c) | vec3<i32>(-2147483647i, var_4.c, var_3)) | vec3<i32>(var_3, -var_4.c, -u_input.a.x)));
}

