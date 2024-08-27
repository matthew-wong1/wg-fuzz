struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: f32,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
    c: bool,
}

struct Struct_3 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec4<u32>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>) -> u32 {
    var var_0 = select(vec2<bool>(true, true), !vec2<bool>(all(vec2<bool>(false, false)), true), abs((u_input.a ^ u_input.a) ^ u_input.a) > u_input.a);
    var_0 = vec2<bool>(!(!(!any(vec4<bool>(false, false, var_0.x, true)))), true && select(true, var_0.x, any(select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(var_0.x, var_0.x, true, true), false))));
    var_0 = !select(vec2<bool>(false, var_0.x), select(vec2<bool>(true, true), !(!vec2<bool>(var_0.x, false)), select(!vec2<bool>(var_0.x, var_0.x), select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(false, false), vec2<bool>(true, false)), !vec2<bool>(var_0.x, var_0.x))), true);
    var_0 = !vec2<bool>(var_0.x, all(vec4<bool>(true, arg_0.x < 48245u, true, var_0.x)));
    var_0 = vec2<bool>(!all(vec3<bool>(true, true, true)), true & !(!var_0.x));
    return 100867u;
}

fn func_2(arg_0: vec4<f32>) -> bool {
    let var_0 = vec3<bool>(true, true, true);
    let var_1 = vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 15922u, 102794u), ~vec3<u32>(10019u, 10373u, 1u)), 0u, min(~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 11516u, 1u), vec3<u32>(1u, 4294967295u, 1u)))) >> (1311u % 32u), max(~1u, abs(func_3(~vec4<u32>(66305u, 56868u, 47034u, 4294967295u)))), ~(~0u));
    var var_2 = 24841u;
    var_2 = _wgslsmith_mod_u32(~var_1.x, _wgslsmith_mult_u32(1u, 13850u) ^ (113091u >> (var_1.x % 32u)));
    let var_3 = select(vec3<bool>(true, var_0.x, any(vec2<bool>(var_0.x != var_0.x, !var_0.x))), var_0, select(var_0, var_0, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(124f)))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * arg_0.x) - arg_0.x)));
    return false;
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: Struct_2) -> vec4<f32> {
    let var_0 = vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(~(-11639i), ~min(1i, arg_1.d)), _wgslsmith_div_vec2_i32(~vec2<i32>(arg_1.d, u_input.a), _wgslsmith_add_vec2_i32(vec2<i32>(3840i, u_input.a), vec2<i32>(u_input.a, -2147483647i))) ^ countOneBits(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_1.d, u_input.a), vec2<i32>(7567i, -2147483647i)))), -6429i, (~(~u_input.a) | arg_1.d) | -12161i);
    let var_1 = select(!arg_3.b.zx, !vec2<bool>(any(!vec2<bool>(false, arg_3.b.x)), select(any(arg_3.b.yz), arg_3.c && false, arg_3.b.x)), !vec2<bool>(func_2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1.a, arg_1.b.x, arg_1.b.x, arg_1.c)))), true));
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-450f + arg_1.c)), _wgslsmith_div_f32(1052f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(arg_1.a))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1.c + arg_1.a), 188f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-328f, _wgslsmith_f_op_f32(-arg_1.c))), -316f))) - vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -143f))), arg_1.b.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(arg_1.e)), _wgslsmith_f_op_f32(ceil(-1307f)))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a - arg_1.c)), _wgslsmith_f_op_f32(-680f + _wgslsmith_f_op_f32(-arg_1.b.x))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: Struct_1) -> Struct_1 {
    let var_0 = abs(32925u);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(arg_0.x, arg_2.c)), _wgslsmith_f_op_f32(abs(2611f)))) + 2159f) - _wgslsmith_f_op_f32(ceil(arg_0.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(710f, _wgslsmith_f_op_f32(floor(-647f))))));
    let var_2 = Struct_4(arg_1);
    let var_3 = select(vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2.e, 1000f))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(364f + arg_0.x) * 254f), arg_1.c, _wgslsmith_mult_i32(-arg_2.d, u_input.a) >= -u_input.a, true), vec4<bool>(arg_0.x > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1004f - arg_0.x)), all(!(!vec3<bool>(true, var_2.a.b.x, false))), arg_1.a && arg_1.a, true), func_2(vec4<f32>(_wgslsmith_f_op_f32(-arg_2.c), 1633f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1014f + arg_2.c), arg_2.e, !var_2.a.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -547f)))));
    var var_4 = Struct_2(!arg_1.a, vec3<bool>(false, var_2.a.b.x, true), var_3.x);
    return Struct_1(arg_0.x, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(arg_2.b + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_2.b * vec2<f32>(339f, arg_0.x)) * _wgslsmith_div_vec2_f32(vec2<f32>(arg_0.x, 153f), vec2<f32>(1886f, 764f)))), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(arg_2.a)), var_1)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(686f, arg_2.a))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2.a)))), 1000f)), _wgslsmith_dot_vec4_i32(~firstTrailingBit(-vec4<i32>(arg_2.d, -1i, 2147483647i, u_input.a)), max(vec4<i32>(u_input.a, -38919i, -1i, arg_2.d), vec4<i32>(arg_2.d, arg_2.d, u_input.a, -29448i)) >> (select(~vec4<u32>(4294967295u, 4294967295u, var_0, 0u), vec4<u32>(60590u, 0u, var_0, var_0), var_3) % vec4<u32>(32u))), var_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1478f, -506f, 1376f, 1000f) - _wgslsmith_f_op_vec4_f32(func_1(15886u, Struct_1(-491f, vec2<f32>(-932f, 905f), 1512f, u_input.a, 3129f), vec4<u32>(14535u, 0u, 8363u, 4294967295u), Struct_2(true, vec3<bool>(false, false, false), true)))))), Struct_2(reverseBits(~0u) < select(37811u, countOneBits(65582u), true), vec3<bool>(true, all(vec2<bool>(true, true)), any(vec3<bool>(true, false, true))), true), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-668f - -241f), _wgslsmith_f_op_f32(abs(106f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -447f), -831f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 598f)) - vec2<f32>(1364f, 878f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -699f), _wgslsmith_f_op_f32(round(423f))))), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, u_input.a, -2147483647i, u_input.a), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, -1i, 2147483647i, 0i))), countOneBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, u_input.a, -26516i, 1i), vec4<i32>(28058i, u_input.a, 32689i, u_input.a), vec4<i32>(-2147483647i, -52010i, -1i, u_input.a)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_vec4_f32(func_1(abs(44380u), Struct_1(768f, vec2<f32>(-521f, -261f), -1040f, u_input.a, 574f), vec4<u32>(1u, 1u, 1u, 1u), Struct_2(false, vec3<bool>(false, true, false), true))).x))));
    let var_1 = 0u;
    let var_2 = Struct_4(Struct_2(false, select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), !select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), true), true));
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(var_0.c, var_0.b.x), _wgslsmith_f_op_vec4_f32(func_1(var_1, Struct_1(-532f, vec2<f32>(var_0.e, 1337f), 1677f, -28505i, -167f), vec4<u32>(var_1, var_1, 3608u, var_1), var_2.a)).x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_0.b, vec2<f32>(var_0.a, -543f)))))), 1932f, 20091i, -1000f);
    let var_3 = Struct_2(var_0.d <= _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.d, -50090i, u_input.a, 1154i) & vec4<i32>(var_0.d, var_0.d, var_0.d, u_input.a), vec4<i32>(u_input.a, var_0.d, u_input.a, u_input.a)), 21893i), var_2.a.b, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(-vec3<i32>(var_0.d, -1i, var_0.d), reverseBits(vec3<i32>(-2147483647i, 0i, var_0.d))) << (countOneBits(select(vec3<u32>(4294967295u, 125434u, 38143u), vec3<u32>(7522u, var_1, 1u), var_3.b)) % vec3<u32>(32u)), -select(reverseBits(vec3<i32>(34999i, 1i, u_input.a)), -vec3<i32>(81183i, u_input.a, -2147483647i), select(vec3<bool>(var_3.b.x, false, true), var_3.b, var_2.a.b))), 16109i << (~(~_wgslsmith_mod_u32(var_1, 4294967295u)) % 32u), ~min(vec3<u32>(4294967295u, var_1, 22850u) & min(vec3<u32>(376u, var_1, 30184u), vec3<u32>(11756u, 0u, 67538u)), _wgslsmith_div_vec3_u32(vec3<u32>(var_1, 12161u, var_1) ^ vec3<u32>(84330u, var_1, var_1), vec3<u32>(var_1, var_1, var_1) << (vec3<u32>(var_1, var_1, var_1) % vec3<u32>(32u)))), ~_wgslsmith_add_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(0u, var_1), vec2<u32>(40305u, 27272u)), vec2<u32>(~4294967295u, ~4294967295u)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(112f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1f))))));
}

