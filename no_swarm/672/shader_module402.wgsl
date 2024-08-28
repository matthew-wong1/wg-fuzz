struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: u32,
}

struct Struct_5 {
    a: u32,
    b: Struct_2,
    c: vec2<f32>,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec3<f32>, arg_1: i32, arg_2: Struct_2, arg_3: Struct_4) -> i32 {
    var var_0 = _wgslsmith_mod_u32(~arg_3.a.b, u_input.a);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.b, 225f, arg_2.c, 2589f)), vec4<f32>(-1045f, arg_2.c, arg_2.d.x, arg_0.x)), vec4<f32>(arg_2.c, _wgslsmith_f_op_f32(arg_2.c + arg_2.d.x), _wgslsmith_f_op_f32(select(arg_0.x, 208f, true)), 1000f)))));
    var_0 = _wgslsmith_div_u32(~arg_3.a.b, 61728u);
    let var_2 = Struct_5(_wgslsmith_add_u32(~arg_3.c & ~abs(1u), u_input.b << ((~arg_2.b.b ^ 1u) % 32u)), Struct_2(Struct_1(true, 1u), Struct_1(arg_2.b.a, 0u & abs(arg_3.c)), -612f, arg_0.yz), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-348f - _wgslsmith_f_op_f32(floor(-995f))), var_1.x), _wgslsmith_f_op_vec2_f32(max(arg_2.d, arg_0.xz)))), -(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, arg_1, u_input.d, u_input.c.x), vec4<i32>(-26727i, u_input.c.x, arg_1, u_input.d) | vec4<i32>(u_input.d, -1i, u_input.c.x, u_input.c.x))), -50037i);
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1363f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.wy) + arg_0.zx)));
    return ~0i;
}

fn func_2(arg_0: i32, arg_1: u32) -> vec2<f32> {
    let var_0 = Struct_2(Struct_1(any(vec4<bool>(false, true, 4294967295u >= u_input.a, true)), 1u), Struct_1(countOneBits(_wgslsmith_mod_i32(-25266i, arg_0)) > abs(func_3(vec3<f32>(-108f, -1480f, 1000f), -50266i, Struct_2(Struct_1(true, 82163u), Struct_1(false, 47320u), 392f, vec2<f32>(194f, 1000f)), Struct_4(Struct_1(false, 93488u), 811f, 14324u))), ~u_input.b), 154f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -145f), _wgslsmith_f_op_f32(sign(2431f))) * _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, -1922f), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(275f, 1965f)))))));
    var var_1 = arg_0;
    let var_2 = 23976u;
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c, _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.c, 1367f), _wgslsmith_f_op_f32(-var_0.d.x))) * _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-var_0.d.x), var_0.d.x)))), var_0.d, vec2<bool>(all(!select(vec2<bool>(false, var_0.b.a), vec2<bool>(false, true), var_0.b.a)), true)));
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, 451f) - vec2<f32>(arg_0, 538f)), _wgslsmith_div_vec2_f32(vec2<f32>(arg_0, arg_0), vec2<f32>(1374f, arg_0))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(func_2(20084i, 34752u)))), arg_0 <= _wgslsmith_f_op_f32(arg_0 * -464f))))));
    var var_1 = ~u_input.b;
    return firstTrailingBit(~vec2<u32>(~max(u_input.b, 27569u), 13076u));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<u32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = vec3<bool>(true | !all(select(arg_0.zx, vec2<bool>(false, arg_0.x), false)), !all(vec2<bool>(u_input.a < u_input.a, any(vec4<bool>(arg_2.a, false, false, arg_2.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -950f)))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1119f, _wgslsmith_f_op_f32(ceil(218f))))));
    let var_1 = u_input.c;
    var_0 = vec3<bool>(true, any(vec2<bool>(true, _wgslsmith_mod_i32(-1i, u_input.d) > var_1.x)), arg_0.x);
    let var_2 = _wgslsmith_add_i32(28408i, 1i);
    var var_3 = Struct_4(arg_2, -1061f, ~(17733u << (u_input.b % 32u)));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(~_wgslsmith_mult_u32(_wgslsmith_div_u32(~1452u, ~u_input.a), abs(u_input.b)), Struct_2(func_4(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec2<u32>(u_input.a, u_input.a) << (func_1(-629f, Struct_1(true, 6753u)) % vec2<u32>(32u)), Struct_1(u_input.a > 41016u, ~u_input.b)), Struct_1(true, ~_wgslsmith_clamp_u32(11039u, u_input.b, u_input.b)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-628f + 161f), 635f)), _wgslsmith_f_op_f32(f32(-1f) * -555f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-381f, -433f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1036f, -660f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1165f, -237f))))), ~(~_wgslsmith_mod_i32(~(-2147483647i), i32(-1i) * -2147483647i)), -2173i);
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -187f);
    let var_2 = (0u & ~var_0.a) > (10569u << (~(_wgslsmith_mod_u32(u_input.a, 25890u) >> (_wgslsmith_sub_u32(u_input.a, 1u) % 32u)) % 32u));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.c.x, _wgslsmith_f_op_f32(exp2(var_0.c.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1106f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.d.x * 1206f)))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.c.x))));
    let var_3 = vec2<bool>(var_0.b.a.a, _wgslsmith_f_op_f32(select(var_0.c.x, var_0.b.c, true)) != var_0.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d >> (u_input.a % 32u), _wgslsmith_mult_vec2_u32(~(~(~vec2<u32>(4294967295u, var_0.b.b.b))), max(select(vec2<u32>(1u, 86421u) << (vec2<u32>(var_0.a, 50077u) % vec2<u32>(32u)), ~vec2<u32>(0u, var_0.b.a.b), true), ~(~vec2<u32>(1u, var_0.a)))), max(_wgslsmith_div_vec4_i32(~(~vec4<i32>(var_0.d, var_0.d, var_0.d, var_0.e)), ~vec4<i32>(-1i, -2147483647i, 2147483647i, 28249i)), -vec4<i32>(var_0.e | u_input.d, u_input.d, ~36797i, _wgslsmith_add_i32(u_input.d, var_0.e))), max(_wgslsmith_add_vec2_i32(vec2<i32>(1i, min(var_0.d, -8213i)), _wgslsmith_mult_vec2_i32(-u_input.c, u_input.c)), u_input.c));
}

