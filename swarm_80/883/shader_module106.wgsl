struct Struct_1 {
    a: i32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec4<i32>,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: f32,
    d: f32,
    e: vec2<u32>,
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec3<f32>) -> vec4<u32> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(arg_0.x)))), _wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_f_op_f32(1156f * arg_0.x)))))), -1999f, -1804f, _wgslsmith_f_op_f32(sign(-1649f)));
    let var_1 = Struct_2(Struct_1(u_input.b.x, vec4<f32>(arg_0.x, arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - 245f) + _wgslsmith_f_op_f32(step(-1371f, 937f))), _wgslsmith_div_f32(var_0.x, var_0.x))), _wgslsmith_clamp_vec4_u32(vec4<u32>(~0u, ~0u, ~0u, 57765u), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.c.x, 25169u, 17843u, u_input.c.x), firstTrailingBit(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 0u))), vec4<u32>(u_input.c.x, _wgslsmith_clamp_u32(0u, u_input.c.x, 0u), 12726u, 33305u)) << (~vec4<u32>(u_input.c.x, _wgslsmith_sub_u32(38738u, 8914u), ~u_input.c.x, ~u_input.c.x) % vec4<u32>(32u)), -firstLeadingBit(-abs(vec4<i32>(1i, u_input.a, u_input.a, -1i))), !(_wgslsmith_mod_u32(u_input.c.x, 111u) < 17886u) | any(vec3<bool>(true, true, true)));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.b.x, var_1.a.b.x, -912f, -1687f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.a.b * vec4<f32>(2051f, 819f, var_0.x, var_1.a.b.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.a.b) * _wgslsmith_div_vec4_f32(var_1.a.b, vec4<f32>(555f, var_1.a.b.x, var_0.x, 1000f))))));
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_div_f32(var_0.x, -527f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.b.x) * _wgslsmith_f_op_f32(ceil(-160f))) * _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-arg_0.x))))));
    let var_3 = Struct_2(Struct_1(_wgslsmith_clamp_i32(var_1.c.x, -1i, -firstTrailingBit(-2147483647i)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(782f, arg_0.x, var_0.x, 723f))), var_1.a.b)), var_1.b, var_1.c, var_1.d);
    return _wgslsmith_add_vec4_u32(var_3.b, select(var_1.b, ~firstLeadingBit(firstTrailingBit(var_3.b)), select(false, !(false && var_3.d), var_1.d)));
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1658f)) + _wgslsmith_f_op_f32(floor(1195f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -201f)))) * -564f));
    var var_1 = u_input.c.x >= abs(u_input.c.x);
    let var_2 = Struct_2(Struct_1(-1i, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(max(523f, 316f)), _wgslsmith_f_op_f32(-1096f - var_0), _wgslsmith_f_op_f32(min(201f, var_0)), _wgslsmith_f_op_f32(var_0 + 280f))))), vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(min(vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(u_input.c.x, u_input.c.x, 25367u, u_input.c.x)), func_3(vec3<f32>(-1400f, var_0, -2258f))), ~(~vec4<u32>(u_input.c.x, u_input.c.x, 38761u, 0u))), 43589u, abs(max(1u, 48056u) >> (min(u_input.c.x, 19528u) % 32u)), 0u), vec4<i32>(u_input.b.x, -_wgslsmith_mod_i32(u_input.a, abs(u_input.a)), _wgslsmith_sub_i32(-1822i, _wgslsmith_div_i32(u_input.b.x, ~28698i)), _wgslsmith_mod_i32(-21146i, i32(-1i) * -1i)), select(!(!all(vec3<bool>(true, false, true))), false, (_wgslsmith_f_op_f32(-184f * var_0) != _wgslsmith_f_op_f32(step(883f, var_0))) && any(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)))));
    let var_3 = Struct_2(Struct_1(~u_input.b.x, vec4<f32>(-1854f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_2.a.b.x, var_0))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.a.b.x, var_2.a.b.x)), var_0)), ~select(abs(vec4<u32>(49930u, 1u, u_input.c.x, u_input.c.x)), var_2.b, !var_2.d), _wgslsmith_mod_vec4_i32(~vec4<i32>(_wgslsmith_add_i32(var_2.a.a, 12110i), countOneBits(u_input.a), 2147483647i, var_2.a.a & u_input.b.x), vec4<i32>(0i, var_2.c.x, ~u_input.a, firstTrailingBit(2147483647i) ^ (0i | var_2.c.x))), !select(var_2.d, all(!vec2<bool>(var_2.d, var_2.d)), true));
    var_1 = var_2.d;
    return u_input.c.x;
}

fn func_4(arg_0: f32, arg_1: vec2<u32>, arg_2: vec2<u32>, arg_3: vec2<u32>) -> Struct_4 {
    var var_0 = 1000f;
    var_0 = -1708f;
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -2294f);
    var var_1 = vec2<bool>(all(vec4<bool>(any(vec4<bool>(true, false, true, false)), true, any(vec4<bool>(true, true, true, true)), true)), all(vec2<bool>(true, true)) || true);
    var var_2 = any(vec3<bool>(true, true, all(vec3<bool>(var_1.x, false, var_1.x)) || select(var_1.x, var_1.x, var_1.x))) && !all(vec4<bool>(var_1.x, all(vec4<bool>(false, true, var_1.x, var_1.x)), true, true));
    return Struct_4(Struct_1(u_input.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -1000f, arg_0, arg_0)))));
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: Struct_2, arg_3: Struct_1) -> f32 {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_3.b.zzz + arg_3.b.zzw), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.b.x, arg_3.b.x, arg_3.b.x) + _wgslsmith_div_vec3_f32(vec3<f32>(arg_2.a.b.x, 282f, arg_3.b.x), arg_3.b.yyz)))));
    let var_1 = Struct_2(arg_2.a, abs(~_wgslsmith_sub_vec4_u32(~arg_2.b, arg_2.b << (arg_2.b % vec4<u32>(32u)))), _wgslsmith_div_vec4_i32(arg_2.c, vec4<i32>(-1i) * -_wgslsmith_div_vec4_i32(vec4<i32>(-1i, u_input.a, arg_2.a.a, 15585i), vec4<i32>(-62167i, u_input.b.x, arg_3.a, arg_3.a))), true);
    var var_2 = func_4(_wgslsmith_f_op_f32(1464f - var_0.x), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c.x, 15959u), reverseBits(arg_2.b.xz) << (vec2<u32>(4294967295u, var_1.b.x ^ var_1.b.x) % vec2<u32>(32u))), vec2<u32>(arg_2.b.x, arg_2.b.x), vec2<u32>(func_2(), 24204u));
    var_2 = Struct_4(func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-823f, _wgslsmith_f_op_f32(-arg_3.b.x))), _wgslsmith_div_f32(-923f, 1000f)), u_input.c, vec2<u32>(_wgslsmith_clamp_u32(arg_0, 0u, 1u) ^ _wgslsmith_mult_u32(0u, arg_1), 0u), arg_2.b.zx).a);
    var_2 = func_4(_wgslsmith_f_op_f32(-var_2.a.b.x), vec2<u32>(func_2(), ~_wgslsmith_sub_u32(u_input.c.x, arg_0)), reverseBits(var_1.b.ww << (vec2<u32>(firstLeadingBit(var_1.b.x), arg_2.b.x) % vec2<u32>(32u))), arg_2.b.wx);
    return 319f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(48062u, countOneBits(~(~0u)), Struct_2(Struct_1(-51172i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-693f, 404f, 314f, -1051f))), vec4<u32>(~4294967295u, abs(u_input.c.x), u_input.c.x, u_input.c.x), ~(vec4<i32>(-2147483647i, u_input.a, u_input.b.x, -46812i) | vec4<i32>(-64347i, -18203i, -1i, 2147483647i)), -56909i != u_input.b.x), Struct_1(u_input.a, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(264f, -627f, 2504f, -780f), _wgslsmith_f_op_vec4_f32(vec4<f32>(235f, -1024f, -1149f, 565f) + vec4<f32>(-953f, 1453f, -189f, 1479f))))))));
    let var_1 = func_4(var_0, u_input.c, ~u_input.c, u_input.c & vec2<u32>(u_input.c.x, u_input.c.x)).a;
    var var_2 = all(!select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), false), vec4<bool>(true, true, true, true), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false))), !(u_input.c.x >= 1u)));
    let var_3 = _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-963f - _wgslsmith_f_op_f32(-var_1.b.x))))));
    var var_4 = Struct_3(Struct_1(17171i, var_1.b), vec4<bool>(u_input.b.x >= u_input.b.x, !any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false))), false, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3 + var_3), var_3) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - _wgslsmith_f_op_f32(f32(-1f) * -128f))), Struct_1(u_input.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(470f, -1328f, _wgslsmith_f_op_f32(max(var_1.b.x, var_3)), _wgslsmith_div_f32(var_3, 2185f)))));
    let var_5 = -u_input.b.x >> ((u_input.c.x << (u_input.c.x % 32u)) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(-min(firstLeadingBit(min(vec3<i32>(u_input.a, var_4.c.a, var_1.a), vec3<i32>(0i, var_5, 2147483647i))), ~reverseBits(vec3<i32>(u_input.b.x, -29518i, -1i))), _wgslsmith_add_vec2_u32(u_input.c, u_input.c << ((~u_input.c | abs(u_input.c)) % vec2<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.b.x))), var_4.c.b.x, _wgslsmith_add_vec2_u32(~u_input.c, vec2<u32>(u_input.c.x, ~u_input.c.x << (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, u_input.c.x), vec3<u32>(21534u, 105812u, u_input.c.x)) % 32u))));
}

