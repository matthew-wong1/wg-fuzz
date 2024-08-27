struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<i32>,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<bool>,
    c: u32,
    d: vec4<i32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> vec2<u32> {
    var var_0 = any(vec4<bool>(!(!all(vec2<bool>(false, true))), any(vec2<bool>(true, true)), true, !select(true, any(vec2<bool>(false, false)), true)));
    var var_1 = select(vec3<bool>(!(8942i > ~u_input.a), !select(select(true, true, false), any(vec4<bool>(true, false, false, true)), all(vec3<bool>(true, false, true))), all(vec3<bool>(true, true, true)) & (any(vec2<bool>(false, true)) | true)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(!select(false, false, true), !any(vec3<bool>(false, false, true)), !any(vec3<bool>(false, true, true))), !vec3<bool>(-2147483647i >= u_input.a, any(vec4<bool>(false, false, true, true)), true)), select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, any(vec3<bool>(false, false, false))), vec3<bool>(true, true, true)), vec3<bool>(true, true, all(vec4<bool>(true, true, false, true))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)));
    let var_2 = select(vec3<bool>(true, var_1.x, var_1.x), select(vec3<bool>(!(false & var_1.x), true, true), select(vec3<bool>(true, true, var_1.x), !vec3<bool>(var_1.x, var_1.x, var_1.x), all(var_1.yx)), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, var_1.x, true), vec3<bool>(var_1.x, var_1.x, false), false), vec3<bool>(false, true, true)), !vec3<bool>(false, var_1.x, false), select(select(vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(true, var_1.x, true), vec3<bool>(var_1.x, var_1.x, true)), vec3<bool>(true, var_1.x, var_1.x), true))), !var_1.x);
    let var_3 = Struct_4(Struct_3(vec3<u32>(~(~1u), ~abs(15026u), max(~31701u, ~15568u))), select(select(var_1.zz, select(var_1.xy, !var_1.yy, var_1.x | var_1.x), var_1.yx), select(select(!var_2.yx, vec2<bool>(var_1.x, var_2.x), !vec2<bool>(var_2.x, var_1.x)), select(vec2<bool>(false, false), !vec2<bool>(var_1.x, true), var_1.x), all(select(vec4<bool>(false, true, true, var_1.x), vec4<bool>(true, var_2.x, var_2.x, false), vec4<bool>(false, var_2.x, true, false)))), var_2.zz), 1546u, _wgslsmith_add_vec4_i32(vec4<i32>(~(i32(-1i) * -28463i), 1i, 0i, i32(-1i) * -2147483647i), vec4<i32>(abs(-u_input.a), -_wgslsmith_mult_i32(u_input.a, 25717i), _wgslsmith_div_i32(u_input.a, 43960i) << (1u % 32u), u_input.a)), Struct_3(vec3<u32>(1u, 1u, 4294967295u)));
    var_0 = var_3.b.x;
    return var_3.e.a.xx | var_3.e.a.xx;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>) -> vec3<bool> {
    let var_0 = Struct_3(~(~vec3<u32>(_wgslsmith_div_u32(58402u, arg_0.a), 0u ^ arg_0.a, _wgslsmith_mod_u32(arg_0.a, 1u))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2398f), 1019f)))));
    var var_2 = firstLeadingBit(func_3());
    let var_3 = select(~vec3<i32>(-33851i, u_input.a, select(i32(-1i) * -63849i, ~u_input.a, true)), ~(~vec3<i32>(u_input.a, ~u_input.a, u_input.a)), vec3<bool>((~u_input.a > firstLeadingBit(2147483647i)) == true, any(select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), all(vec2<bool>(true, true)))), true));
    let var_4 = Struct_3(_wgslsmith_mod_vec3_u32(var_0.a, vec3<u32>(_wgslsmith_mult_u32(var_2.x, var_0.a.x) & _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.x, arg_0.a, var_0.a.x, 28775u), vec4<u32>(arg_0.a, 7509u, var_0.a.x, var_0.a.x)), 4294967295u, ~9730u >> (var_2.x % 32u))));
    return !select(select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false))), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec3<bool>, arg_2: bool, arg_3: u32) -> i32 {
    var var_0 = Struct_4(Struct_3(~vec3<u32>(reverseBits(arg_0.x), arg_0.x, 9268u << (0u % 32u))), !vec2<bool>(all(arg_1), arg_1.x), ~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0.x, 0u, 4294967295u), vec3<u32>(4294967295u, arg_3, arg_0.x)), arg_3), firstTrailingBit(-select(vec4<i32>(-24678i, u_input.a, u_input.a, u_input.a), vec4<i32>(2147483647i, u_input.a, u_input.a, -1i), arg_2)) ^ countOneBits(vec4<i32>(~1i, 2147483647i, -1i, -2147483647i)), Struct_3(arg_0));
    let var_1 = Struct_2(Struct_1(abs(4294967295u), _wgslsmith_f_op_f32(f32(-1f) * -591f)), !(!any(vec3<bool>(true, true, false))), reverseBits(~(-var_0.d.xy)));
    var var_2 = _wgslsmith_dot_vec4_i32(countOneBits(_wgslsmith_div_vec4_i32(-vec4<i32>(u_input.a, u_input.a, 0i, 2147483647i), var_0.d)), ~reverseBits(var_0.d));
    var_2 = ~1i;
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-886f, 744f, var_1.a.b, var_1.a.b)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(220f, -307f, var_1.a.b, -783f))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.b, -1000f, var_1.a.b, -2322f) * vec4<f32>(var_1.a.b, -193f, -693f, 435f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1020f, var_1.a.b, var_1.a.b, -864f), vec4<f32>(var_1.a.b, var_1.a.b, 617f, 511f)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.b, 1279f, var_1.a.b, -1000f)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(902f, var_1.a.b, var_1.a.b, -1169f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(116f, var_1.a.b, 146f, var_1.a.b))))));
    return var_1.c.x;
}

fn func_1(arg_0: u32, arg_1: Struct_4, arg_2: vec3<f32>, arg_3: Struct_4) -> Struct_1 {
    var var_0 = false;
    var var_1 = Struct_4(Struct_3(reverseBits(arg_1.e.a)), vec2<bool>(all(arg_3.b), arg_1.b.x), reverseBits(0u), vec4<i32>(func_4(_wgslsmith_sub_vec3_u32(arg_3.e.a, arg_3.a.a >> (arg_1.e.a % vec3<u32>(32u))), select(func_2(Struct_1(arg_1.c, arg_2.x), arg_2), vec3<bool>(arg_1.b.x, arg_1.b.x, true), arg_1.c == arg_1.c), select(4294967295u, arg_0, false) != arg_3.e.a.x, 4294967295u), ~select(arg_3.d.x ^ arg_1.d.x, ~1i, arg_2.x <= 1693f), -25779i, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(min(arg_1.d.yyy, arg_3.d.yzz), -arg_3.d.yww), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(arg_3.d.yxy, vec3<i32>(arg_1.d.x, u_input.a, arg_1.d.x)), 0i))), arg_1.e);
    let var_2 = Struct_4(Struct_3(firstLeadingBit(arg_3.a.a ^ vec3<u32>(arg_1.e.a.x, var_1.e.a.x, var_1.c))), vec2<bool>(var_1.b.x, all(!(!var_1.b))), ~(~6180u), abs(var_1.d), arg_3.a);
    var_0 = func_2(Struct_1(1u, _wgslsmith_f_op_f32(floor(arg_2.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(arg_2)) - arg_2)).x;
    var var_3 = func_4(vec3<u32>(_wgslsmith_dot_vec4_u32(~(vec4<u32>(arg_3.e.a.x, 1u, var_2.a.a.x, 4294967295u) << (vec4<u32>(1u, var_2.e.a.x, var_2.a.a.x, var_1.a.a.x) % vec4<u32>(32u))), vec4<u32>(100380u, 20139u, 4294967295u, 970u) << (vec4<u32>(var_1.a.a.x, var_2.e.a.x, 37055u, 4294967295u) % vec4<u32>(32u))), ~(~firstTrailingBit(31250u)), reverseBits(_wgslsmith_mult_u32(arg_1.a.a.x, var_2.e.a.x)) ^ var_1.c), !select(vec3<bool>(!arg_3.b.x, func_2(Struct_1(arg_3.c, arg_2.x), arg_2).x, arg_1.b.x), select(vec3<bool>(var_2.b.x, true, arg_3.b.x), vec3<bool>(true, true, true), vec3<bool>(false, var_1.b.x, arg_3.b.x)), vec3<bool>(var_1.b.x, !arg_1.b.x, arg_2.x <= arg_2.x)), all(vec4<bool>(!(arg_0 < 61244u), !var_2.b.x, true, any(select(arg_3.b, var_1.b, var_1.b.x)))), 10445u);
    return Struct_1(abs(arg_3.e.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-844f, _wgslsmith_f_op_f32(f32(-1f) * -696f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_2.x)) - _wgslsmith_f_op_f32(625f + _wgslsmith_f_op_f32(arg_2.x + arg_2.x)))));
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    var var_0 = arg_2.b;
    var var_1 = arg_2.b;
    var var_2 = arg_1.b;
    var_2 = arg_1.b;
    var var_3 = Struct_4(Struct_3(~_wgslsmith_mod_vec3_u32(vec3<u32>(48731u, 80364u, arg_2.a), vec3<u32>(arg_2.a, 4294967295u, 0u))), !func_2(arg_1, vec3<f32>(_wgslsmith_f_op_f32(-521f - 1000f), _wgslsmith_f_op_f32(arg_2.b * 2043f), -872f)).xx, _wgslsmith_clamp_u32(arg_1.a, 15349u, ~arg_1.a), firstLeadingBit(min(firstLeadingBit(vec4<i32>(u_input.a, u_input.a, 2147483647i, 2147483647i)) >> (vec4<u32>(4294967295u, arg_2.a, 66052u, 4294967295u) % vec4<u32>(32u)), ~(~vec4<i32>(u_input.a, 0i, -42707i, u_input.a)))), Struct_3(vec3<u32>(_wgslsmith_div_u32(4294967295u, 22275u), arg_2.a, 29324u)));
    return firstTrailingBit(~(u_input.a ^ u_input.a)) & firstTrailingBit(_wgslsmith_sub_i32(-393i, _wgslsmith_clamp_i32(var_3.d.x << (4294967295u % 32u), _wgslsmith_mult_i32(u_input.a, -18158i), select(0i, -33846i, false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(func_5(~1u, func_1(0u, Struct_4(Struct_3(vec3<u32>(0u, 35533u, 1u)), vec2<bool>(false, false), 0u, vec4<i32>(0i, u_input.a, u_input.a, u_input.a), Struct_3(vec3<u32>(0u, 4294967295u, 41458u))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1385f, -671f, 1788f))), Struct_4(Struct_3(vec3<u32>(0u, 4294967295u, 1u)), vec2<bool>(false, false), 59868u, vec4<i32>(-1i, u_input.a, -9700i, u_input.a), Struct_3(vec3<u32>(13273u, 14043u, 0u)))), Struct_1(countOneBits(1u), 828f)), -_wgslsmith_sub_i32(u_input.a, -22197i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-339f, -1003f, 672f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(290f, -874f, 1000f)))) * vec3<f32>(-1110f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1223f, -122f)), -336f)));
}

