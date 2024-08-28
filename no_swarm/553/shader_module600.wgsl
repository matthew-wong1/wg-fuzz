struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: f32,
    d: u32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
    d: vec3<bool>,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec4<i32>,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3() -> u32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1098f)) * -779f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-347f, -488f)) - 1f), 135f)) + _wgslsmith_f_op_f32(f32(-1f) * -2797f)), _wgslsmith_f_op_f32(ceil(-383f)));
    var var_1 = ~u_input.b;
    var var_2 = u_input.b.x;
    var_1 = vec4<u32>(_wgslsmith_mod_u32(40348u, ~u_input.c.x), u_input.c.x, firstLeadingBit(u_input.b.x & 36050u), u_input.b.x);
    var var_3 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(100f, 221f), _wgslsmith_f_op_f32(max(-1007f, var_0.x)), -1404f, -1030f)), any(vec4<bool>(true, true, any(vec4<bool>(true, false, true, true)), any(vec4<bool>(true, false, true, true)))), _wgslsmith_f_op_f32(sign(var_0.x)), max(var_1.x, 1u) | min(_wgslsmith_sub_u32(var_1.x, 1247u), _wgslsmith_clamp_u32(var_1.x, 6598u, 0u)), var_1.yxz | _wgslsmith_mult_vec3_u32(var_1.www | vec3<u32>(var_1.x, 28299u, var_1.x), ~var_1.yxx)), _wgslsmith_clamp_vec3_u32(var_1.zxw, vec3<u32>(54413u, _wgslsmith_dot_vec2_u32(var_1.wy, var_1.zx), ~u_input.c.x), reverseBits(~(~vec3<u32>(27264u, 4294967295u, u_input.c.x)))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-363f, -1007f, var_0.x, var_0.x) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.x, -703f, var_0.x, var_0.x), vec4<f32>(376f, -842f, var_0.x, var_0.x)))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 1653f, var_0.x, 2078f) - vec4<f32>(var_0.x, 294f, var_0.x, var_0.x))))), true, var_0.x, u_input.c.x ^ 0u, vec3<u32>(_wgslsmith_mult_u32(abs(u_input.b.x), firstTrailingBit(4053u)), 85469u, 1u)), !select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true)))), var_1.x);
    return abs(_wgslsmith_dot_vec3_u32(var_3.a.e, vec3<u32>(_wgslsmith_dot_vec2_u32(select(vec2<u32>(1u, var_3.c.d), u_input.c.xx, var_3.d.x), abs(vec2<u32>(u_input.b.x, 24774u))), 4294967295u, 90924u)));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(round(-2360f)), -785f, _wgslsmith_div_f32(-599f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 289f))), -945f), true, 951f, 1u, vec3<u32>(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(u_input.b.x, 17921u)), vec2<u32>(func_3(), _wgslsmith_dot_vec2_u32(u_input.b.zx, vec2<u32>(u_input.b.x, 0u)))), 4294967295u, ~u_input.b.x));
    var_0 = Struct_1(var_0.a, true, -664f, _wgslsmith_mult_u32(u_input.b.x, 4294967295u), ~(vec3<u32>(1u, 0u, ~var_0.d) & ~(u_input.c << (u_input.c % vec3<u32>(32u)))));
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1623f))), var_0.a.x, var_0.c, _wgslsmith_f_op_f32(-var_0.c))), false, 143f, max(~(~u_input.c.x), _wgslsmith_mod_u32(10803u, 1u)), _wgslsmith_div_vec3_u32(reverseBits(u_input.b.zwy), vec3<u32>(4294967295u, 72903u, u_input.b.x)));
    var var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c, var_0.c, 531f, -135f) * var_0.a)))), all(vec4<bool>(true, !var_0.b, 1436f == var_0.c, any(vec2<bool>(var_0.b, var_0.b)))), _wgslsmith_f_op_f32(var_0.c * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c))), ~min(max(1u, 1u), max(0u, var_0.e.x)), vec3<u32>(_wgslsmith_add_u32(var_0.d, u_input.c.x), _wgslsmith_dot_vec2_u32(u_input.c.xx, u_input.b.yz), 90126u) << (min(vec3<u32>(28976u, u_input.b.x, u_input.b.x), _wgslsmith_mod_vec3_u32(vec3<u32>(35027u, 0u, 75102u), vec3<u32>(u_input.b.x, 0u, var_0.d))) % vec3<u32>(32u))), select(vec3<u32>(~4294967295u, _wgslsmith_mod_u32(71398u, 38910u), _wgslsmith_mult_u32(24161u, 19189u)), _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.b.yzw, vec3<u32>(1u, u_input.c.x, u_input.c.x)), var_0.e << (var_0.e % vec3<u32>(32u))), vec3<bool>(select(false, var_0.b, true), true, -26011i >= u_input.a.x)) ^ vec3<u32>(reverseBits(reverseBits(0u)), ~(37916u << (var_0.d % 32u)), 23100u), Struct_1(var_0.a, -100f == var_0.a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x - var_0.c)))), 1u & firstTrailingBit(_wgslsmith_mult_u32(u_input.c.x, u_input.b.x)), firstTrailingBit(~vec3<u32>(u_input.b.x, u_input.b.x, 1u))), vec3<bool>(true, true, true), 9403u);
    let var_2 = false;
    return Struct_2(var_1.a, Struct_1(vec4<f32>(var_1.c.c, 1138f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.c.a.x, 529f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(var_0.c))))), var_1.c.b, -660f, 30374u, vec3<u32>(var_0.e.x, 4865u, var_1.e)), min(i32(-1i) * -(~u_input.a.x), -14785i));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: Struct_1) -> f32 {
    let var_0 = select(select(select(vec3<bool>(false, true, all(vec3<bool>(arg_1.x, arg_2.b, arg_0.b.b))), arg_1, arg_0.b.b), !(!arg_1), arg_0.a.d >= arg_2.e.x), vec3<bool>(select((arg_0.c >= arg_0.c) == true, false, !arg_2.b), arg_1.x, all(select(select(vec3<bool>(true, true, arg_1.x), vec3<bool>(arg_2.b, true, false), true), arg_1, false))), vec3<bool>(true, false, !arg_1.x));
    let var_1 = func_2().a;
    var var_2 = var_1.a;
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(689f, 687f, arg_2.c, _wgslsmith_f_op_f32(f32(-1f) * -639f)) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.x, -1658f, true))), arg_0.a.a.x)));
    var_2 = _wgslsmith_f_op_vec4_f32(var_1.a - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_1.c), _wgslsmith_f_op_f32(-771f + _wgslsmith_f_op_f32(max(var_1.a.x, -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.x, var_1.c))), var_1.a.x) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, var_2.x, arg_0.a.a.x, 1000f) - var_1.a) + arg_2.a), _wgslsmith_f_op_vec4_f32(-arg_2.a)))));
    return _wgslsmith_f_op_f32(-arg_2.a.x);
}

fn func_1() -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_2(), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(830f, -547f, -798f, -1201f) + vec4<f32>(-2044f, -577f, -548f, -2895f)), false, -732f, 52775u, u_input.c))) + -850f));
    var var_1 = 145f;
    let var_2 = abs(abs(_wgslsmith_div_vec2_i32(vec2<i32>(~u_input.a.x, 9458i), _wgslsmith_sub_vec2_i32(min(u_input.a.xy, vec2<i32>(-2147483647i, u_input.a.x)), -vec2<i32>(55995i, -1i)))));
    let var_3 = 1u;
    var var_4 = firstLeadingBit(firstLeadingBit(firstTrailingBit(firstTrailingBit(vec2<u32>(u_input.c.x, u_input.c.x)))));
    return ~(~vec3<u32>(0u, select(0u | u_input.c.x, 55900u, true), 4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_dot_vec3_u32(func_1(), u_input.c << (u_input.c % vec3<u32>(32u))), ~u_input.b.x, u_input.b.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(235f - _wgslsmith_f_op_f32(-457f + -113f))))), abs(-select(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, -11725i, -75628i, u_input.a.x), vec4<i32>(u_input.a.x, 6265i, u_input.a.x, u_input.a.x)), vec4<i32>(0i, u_input.a.x, 58406i, 1i), true)), _wgslsmith_f_op_f32(func_4(func_2(), vec3<bool>(true, true, _wgslsmith_mod_i32(u_input.a.x, u_input.a.x) <= 1i), func_2().b)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, 1i, ~_wgslsmith_sub_i32(-2147483647i, 0i), _wgslsmith_sub_i32(-69699i, u_input.a.x | -37885i)), vec4<i32>(-4811i, 7663i, -u_input.a.x, 1i) | vec4<i32>(u_input.a.x, 1i, 2147483647i, reverseBits(u_input.a.x))));
}

