struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: i32,
    d: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: u32,
    d: Struct_3,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: vec4<f32>, arg_3: Struct_4) -> f32 {
    let var_0 = abs(_wgslsmith_mod_vec4_i32(abs(vec4<i32>(-5398i, 2147483647i, u_input.c.x, arg_3.d.c) & vec4<i32>(83671i, 0i, 2147483647i, -46556i)), select(vec4<i32>(u_input.d.x, -53173i, 3519i, 6041i), vec4<i32>(13682i, u_input.d.x, 1i, 1355i) << (vec4<u32>(arg_3.b, 1u, arg_3.d.d.a.x, u_input.a) % vec4<u32>(32u)), !vec4<bool>(arg_3.e, arg_3.e, arg_3.e, arg_3.e)))) << (vec4<u32>(u_input.a, _wgslsmith_dot_vec4_u32(abs(~vec4<u32>(arg_3.c, 85056u, 81699u, 21919u)), max(~vec4<u32>(arg_3.c, arg_3.a, 64773u, 0u), vec4<u32>(u_input.b.x, 4294967295u, arg_3.b, arg_3.b))), 1u, _wgslsmith_sub_u32(1u, abs(_wgslsmith_sub_u32(15906u, arg_3.c)))) % vec4<u32>(32u));
    let var_1 = arg_3.d.d;
    let var_2 = (max(reverseBits(_wgslsmith_add_u32(arg_3.b, u_input.a)), 1u) == var_1.a.x) || !(arg_3.e || !all(vec3<bool>(false, false, arg_3.d.b)));
    let var_3 = arg_3;
    var var_4 = arg_3.b;
    return _wgslsmith_f_op_f32(-383f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(min(arg_2.x, arg_2.x))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1736f), _wgslsmith_f_op_f32(ceil(arg_2.x))))));
}

fn func_2(arg_0: Struct_2, arg_1: f32) -> f32 {
    var var_0 = !(!(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(step(arg_1, -356f)), abs(-35051i), _wgslsmith_div_vec4_f32(vec4<f32>(-812f, arg_1, arg_1, -726f), vec4<f32>(arg_1, 385f, -309f, 1381f)), Struct_4(u_input.b.x, 42440u, arg_0.a.x, Struct_3(-2440i, true, u_input.d.x, Struct_2(arg_0.a)), false))) == arg_1));
    var var_1 = Struct_4(_wgslsmith_add_u32(u_input.a, u_input.a), ~18040u, 12343u, Struct_3(_wgslsmith_dot_vec3_i32(min(-u_input.c, _wgslsmith_div_vec3_i32(u_input.c, u_input.c)), u_input.c), any(vec3<bool>(0i >= u_input.d.x, any(vec2<bool>(true, true)), true)), u_input.d.x >> (firstTrailingBit(~20212u) % 32u), Struct_2(vec3<u32>(117892u, arg_0.a.x, 86846u) >> (vec3<u32>(arg_0.a.x, u_input.b.x, 4294967295u) % vec3<u32>(32u)))), true);
    let var_2 = ~(~vec4<u32>(arg_0.a.x ^ _wgslsmith_mod_u32(0u, 1u), 4294967295u, 48790u, 4294967295u));
    var_1 = Struct_4(~var_1.a, var_1.b, _wgslsmith_div_u32(1u, abs(max(0u, 19983u)) ^ arg_0.a.x), var_1.d, !(_wgslsmith_add_i32(var_1.d.c, i32(-1i) * -1i) <= ~u_input.d.x));
    var var_3 = u_input.d.zx;
    return _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(-1741f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1376f)))));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec4<f32>, arg_3: Struct_4) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(arg_2.x)), _wgslsmith_f_op_f32(-arg_2.x))) + arg_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_2(u_input.b), 1497f)))), 1815f));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.yy - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-268f, var_0.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-850f, arg_2.x)), vec2<bool>(arg_3.d.b, arg_3.d.c != arg_3.d.c)))));
    let var_2 = Struct_4(~0u | ~_wgslsmith_dot_vec2_u32(arg_1, ~vec2<u32>(arg_3.d.d.a.x, u_input.a)), min(0u, _wgslsmith_add_u32(u_input.a, arg_3.c)), _wgslsmith_dot_vec4_u32(abs(~(~vec4<u32>(arg_3.c, u_input.a, 0u, 1u))), vec4<u32>(4294967295u, arg_1.x, ~0u, arg_1.x ^ 32715u)), arg_3.d, any(select(select(arg_0.a, select(vec2<bool>(arg_0.a.x, false), vec2<bool>(true, arg_0.a.x), false), arg_3.e), select(select(arg_0.a, arg_0.a, vec2<bool>(true, true)), select(vec2<bool>(arg_3.e, false), arg_0.a, arg_3.e), true), !arg_0.a.x)));
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_0.xy), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(arg_2.x)), _wgslsmith_f_op_f32(ceil(231f)))), any(!vec4<bool>(var_2.d.b, true, var_2.e, arg_0.a.x)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-313f, _wgslsmith_f_op_f32(var_1.x - 1148f)) + vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), var_1.x)) + vec2<f32>(arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -1860f)))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(func_2(Struct_2(vec3<u32>(1619u, var_2.c, 1623u)), -532f)), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -440f) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(644f * _wgslsmith_f_op_f32(-1368f - var_0.x))))));
    return abs(vec3<u32>(~_wgslsmith_mod_u32(4294967295u, arg_1.x), select(_wgslsmith_dot_vec3_u32(u_input.b, arg_3.d.d.a), var_2.b, arg_2.x != var_0.x), ~(~arg_3.b)) >> (firstTrailingBit(reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 2744u, arg_3.b), vec3<u32>(arg_3.d.d.a.x, 0u, 0u)))) % vec3<u32>(32u)));
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: vec4<f32>) -> Struct_4 {
    let var_0 = Struct_1(select(select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), select(true, select(true, true, false), true)), vec2<bool>(true, any(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), true))), all(select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true), true))), arg_1.a.xx);
    var var_1 = u_input.d;
    var_1 = max(vec3<i32>(-1i, 0i & max(55432i, var_1.x), -1i), ~(~u_input.d)) >> (u_input.b % vec3<u32>(32u));
    let var_2 = var_0;
    var_1 = max(_wgslsmith_add_vec3_i32(vec3<i32>(var_1.x, -var_1.x, u_input.d.x), _wgslsmith_add_vec3_i32(-(vec3<i32>(u_input.c.x, -2147483647i, 1i) | u_input.d), u_input.d)), _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(~u_input.c, -vec3<i32>(-1i, 24867i, 0i) & abs(u_input.c)), _wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.d, -vec3<i32>(-1i, var_1.x, var_1.x)), firstTrailingBit(max(u_input.d, vec3<i32>(66052i, u_input.c.x, 0i))))));
    return Struct_4(17373u, 0u, min(4367u, ~arg_1.a.x), Struct_3(var_1.x << (func_1(var_2, vec2<u32>(1u, 0u), vec4<f32>(623f, arg_2.x, arg_2.x, 780f), Struct_4(1u, 4294967295u, u_input.b.x, Struct_3(23054i, true, 54645i, Struct_2(vec3<u32>(1u, var_2.b.x, 4294967295u))), false)).x % 32u), any(!(!vec4<bool>(true, true, var_2.a.x, true))), var_1.x, Struct_2(arg_1.a)), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(~u_input.b.x, ~4294967295u, u_input.b.x, select(24849u, 0u, any(vec3<bool>(true, true, any(vec4<bool>(true, true, true, false))))));
    var_0 = _wgslsmith_mult_vec4_u32(firstLeadingBit(select(vec4<u32>(var_0.x, var_0.x, u_input.b.x, var_0.x) & (vec4<u32>(var_0.x, var_0.x, u_input.a, var_0.x) << (vec4<u32>(37730u, 1u, 23098u, var_0.x) % vec4<u32>(32u))), ~vec4<u32>(var_0.x, 1u, 0u, 4294967295u) & vec4<u32>(u_input.b.x, 21587u, var_0.x, u_input.b.x), vec4<bool>(true, true, true, true))), vec4<u32>(select(1u, 4294967295u, all(vec3<bool>(true, true, true))), 36378u, u_input.b.x, u_input.a) >> (~(~(vec4<u32>(61120u, 4440u, 79386u, u_input.b.x) | vec4<u32>(1u, 46389u, 0u, 1u))) % vec4<u32>(32u)));
    var_0 = vec4<u32>(var_0.x, ~_wgslsmith_div_u32(var_0.x, _wgslsmith_sub_u32(78219u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, var_0.x, 1u), vec3<u32>(u_input.b.x, 106598u, 48860u)))), var_0.x, var_0.x);
    let var_1 = func_4(_wgslsmith_sub_u32(4294967295u, select(~(u_input.b.x ^ 14042u), _wgslsmith_div_u32(var_0.x, 54848u), true)), Struct_2(select(func_1(Struct_1(vec2<bool>(false, false), vec2<u32>(var_0.x, 53181u)), vec2<u32>(var_0.x, var_0.x), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1403f, -418f, -1370f, 1482f), vec4<f32>(345f, -1162f, -1373f, 1214f))), Struct_4(1u, 20972u, u_input.a, Struct_3(u_input.c.x, true, 2147483647i, Struct_2(vec3<u32>(u_input.b.x, 20267u, 4294967295u))), true)), u_input.b, true)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -219f, -1000f, -766f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -832f, -1138f, 1181f) + vec4<f32>(-948f, -542f, -1290f, -1000f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-161f * 814f), -777f, -385f, -1604f)), true)));
    var var_2 = Struct_2(firstLeadingBit(vec3<u32>(~(var_1.d.d.a.x | var_0.x), ~var_1.c, 6385u)));
    var var_3 = any(!(!(!(!vec3<bool>(var_1.d.b, false, false)))));
    var_0 = vec4<u32>(func_1(Struct_1(vec2<bool>(var_1.e, func_4(u_input.a, Struct_2(var_2.a), vec4<f32>(-319f, 732f, 617f, 1220f)).e), vec2<u32>(~0u, min(35879u, 62483u))), vec2<u32>(var_2.a.x ^ firstTrailingBit(var_0.x), _wgslsmith_mult_u32(var_0.x, 0u) | var_0.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_2(Struct_2(vec3<u32>(37423u, 1u, 5997u)), 738f)), _wgslsmith_f_op_f32(trunc(-1607f)), _wgslsmith_f_op_f32(max(110f, -2267f)), _wgslsmith_div_f32(-2055f, -827f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-773f, -1333f, -1766f, -1514f) * _wgslsmith_div_vec4_f32(vec4<f32>(-230f, -860f, -280f, -623f), vec4<f32>(209f, -2035f, -506f, 982f)))), var_1).x, abs(14750u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(3070u, 4294967295u, var_0.x), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, var_2.a.x), vec3<u32>(var_1.b, 4294967295u, 20734u))) >> (min(~_wgslsmith_div_u32(1641u, 1u), var_0.x) % 32u), 47148u);
    var_3 = all(select(!select(vec2<bool>(false, var_1.e), vec2<bool>(var_1.e, true), vec2<bool>(false, true)), !vec2<bool>(true, var_1.e), var_1.e));
    var var_4 = func_4(_wgslsmith_sub_u32(0u, firstTrailingBit(_wgslsmith_mod_u32(_wgslsmith_sub_u32(var_1.d.d.a.x, 4294967295u), var_1.c))), Struct_2(var_0.xwz), vec4<f32>(1f, 1f, 1f, 1f)).d.d;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x >> (~_wgslsmith_mod_u32(var_2.a.x << (0u % 32u), abs(4294967295u)) % 32u), _wgslsmith_f_op_f32(func_3(-1000f, -27467i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(357f, -703f, -266f, -100f)))) - vec4<f32>(_wgslsmith_f_op_f32(func_3(-1647f, 1i, vec4<f32>(1181f, 781f, -1415f, 570f), Struct_4(1u, 93451u, var_2.a.x, var_1.d, true))), _wgslsmith_f_op_f32(max(885f, -451f)), -1566f, _wgslsmith_f_op_f32(-1263f * -1040f))), func_4(~var_1.d.d.a.x, var_1.d.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(412f, 1217f, -863f, -383f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-377f, 727f, 983f, 874f), vec4<f32>(-1779f, 643f, -2361f, 2033f), vec4<bool>(var_1.d.b, false, var_1.d.b, true))))))));
}

