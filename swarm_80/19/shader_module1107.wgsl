struct Struct_1 {
    a: i32,
    b: u32,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec4<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: f32,
    c: i32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: i32, arg_1: Struct_2) -> f32 {
    let var_0 = Struct_2(arg_1.a, vec4<u32>(0u ^ firstTrailingBit(1u), ~(~48218u), ~1u, ~_wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.a, 1u), u_input.a)), ~vec2<u32>(u_input.a << (_wgslsmith_dot_vec3_u32(arg_1.b.xzy, vec3<u32>(u_input.a, 20702u, 1u)) % 32u), 4294967295u), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(arg_1.d - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.d.x, arg_1.d.x, 209f, arg_1.a.c))), arg_1.d, vec4<bool>(true, true, true, true))));
    let var_1 = -1i;
    var var_2 = arg_1.a;
    let var_3 = Struct_3(vec2<u32>(1u, _wgslsmith_div_u32(u_input.a, u_input.a)), _wgslsmith_f_op_f32(arg_1.d.x - var_0.d.x), abs(-2147483647i), select(vec2<bool>(select(any(vec4<bool>(false, false, false, false)), true, false), any(vec2<bool>(true, true))), vec2<bool>((var_2.a << (var_0.a.b % 32u)) != -2147483647i, select(false, true, true)), select(vec2<bool>(69029u != arg_1.a.b, true), select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, false)), true & all(vec2<bool>(false, true)))));
    let var_4 = Struct_1(43871i, u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_1.d.x, 1462f)))), _wgslsmith_f_op_f32(floor(2465f)));
    return _wgslsmith_f_op_f32(floor(var_2.d));
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: vec3<i32>, arg_3: vec3<u32>) -> u32 {
    let var_0 = Struct_2(Struct_1(38497i, arg_1.a.x | ~_wgslsmith_add_u32(arg_3.x, 1u), _wgslsmith_f_op_f32(-arg_1.b), 670f), ~select(vec4<u32>(_wgslsmith_add_u32(arg_3.x, arg_1.a.x), firstLeadingBit(33536u), ~4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, arg_3.x), vec2<u32>(u_input.a, 24776u))), _wgslsmith_sub_vec4_u32(~vec4<u32>(arg_1.a.x, u_input.a, u_input.a, 4294967295u), vec4<u32>(arg_1.a.x, 8590u, 9850u, 4294967295u)), true), vec2<u32>(~(~u_input.a), 1u), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-2046f + _wgslsmith_f_op_f32(-arg_1.b)), _wgslsmith_f_op_f32(-2780f - -436f), -657f, -643f))));
    var var_1 = vec4<bool>(true, true, true, false);
    var_1 = vec4<bool>(false, true, ~arg_1.a.x > 0u, var_1.x);
    var_1 = vec4<bool>(!arg_0, false, all(vec4<bool>(false, var_1.x | arg_0, any(var_1.zy), var_1.x)), arg_0);
    var_1 = vec4<bool>(false, true, false, min(firstTrailingBit(11607u), ~_wgslsmith_add_u32(u_input.a, arg_1.a.x)) == arg_3.x);
    return ~1u;
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: vec2<i32>) -> vec4<i32> {
    var var_0 = Struct_3(~(~abs(countOneBits(vec2<u32>(39856u, u_input.a)))), _wgslsmith_f_op_f32(f32(-1f) * -2214f), _wgslsmith_mult_i32(~(~_wgslsmith_add_i32(arg_1, arg_1)), arg_1), !select(select(select(vec2<bool>(false, true), vec2<bool>(false, true), false), select(vec2<bool>(false, true), vec2<bool>(true, true), true), select(true, true, false)), vec2<bool>(true, true), true));
    let var_1 = _wgslsmith_f_op_f32(ceil(1128f));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -428f);
    let var_3 = 1u & func_4(true, Struct_3(~(~vec2<u32>(var_0.a.x, var_0.a.x)), _wgslsmith_f_op_f32(func_3(reverseBits(-44630i), Struct_2(Struct_1(2147483647i, 9663u, -300f, var_0.b), vec4<u32>(5117u, u_input.a, 51217u, 4294967295u), vec2<u32>(0u, 4294967295u), vec4<f32>(var_0.b, var_1, -856f, var_0.b)))), -10505i, var_0.d), select(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, var_0.c, arg_2.x), vec3<i32>(arg_2.x, arg_1, var_0.c)), abs(vec3<i32>(14101i, arg_0, arg_2.x)), arg_2.x >= -1i) | vec3<i32>(arg_1, max(0i, -12254i), _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.c, arg_2.x), arg_2)), ~vec3<u32>(14986u, max(u_input.a, var_0.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(114462u, 26276u, var_0.a.x), vec3<u32>(14916u, 6976u, u_input.a))));
    let var_4 = select(!any(select(vec3<bool>(false, var_0.d.x, var_0.d.x), vec3<bool>(true, true, var_0.d.x), !vec3<bool>(var_0.d.x, true, false))), !var_0.d.x, select(var_0.a.x <= var_3, var_0.d.x, var_0.d.x) == (true | (select(arg_2.x, 1i, var_0.d.x) == _wgslsmith_sub_i32(arg_0, arg_1))));
    return vec4<i32>(-2147483647i, ~reverseBits(-28469i), -7990i, _wgslsmith_dot_vec2_i32(-(arg_2 << (vec2<u32>(u_input.a, var_0.a.x) % vec2<u32>(32u))), _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, arg_0), vec2<i32>(arg_2.x, 1i), arg_2), arg_2 >> (var_0.a % vec2<u32>(32u)))) ^ -14451i);
}

fn func_1(arg_0: vec2<f32>, arg_1: f32, arg_2: bool, arg_3: vec2<u32>) -> i32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(3064i, 24591i, -13369i, 0i)), vec4<i32>(-49097i, 1i, 1i, 2147483647i)), func_2(countOneBits(-11831i), 29364i, -vec2<i32>(-23873i, -35724i))), u_input.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(101f)), _wgslsmith_f_op_f32(1943f - _wgslsmith_f_op_f32(exp2(arg_1))), !(arg_2 | false))), -995f), abs(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(0u, 36695u, 1u, arg_3.x)), reverseBits(vec4<u32>(0u, 11995u, u_input.a, 1u)))), ~countOneBits(vec2<u32>(abs(u_input.a), func_4(false, Struct_3(arg_3, arg_0.x, -9728i, vec2<bool>(arg_2, true)), vec3<i32>(6209i, -20277i, 8641i), vec3<u32>(arg_3.x, 0u, arg_3.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -382f), _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(sign(arg_0.x)), _wgslsmith_f_op_f32(func_3(13405i, Struct_2(Struct_1(0i, u_input.a, arg_0.x, -545f), vec4<u32>(13277u, arg_3.x, 39898u, 4294967295u), vec2<u32>(0u, arg_3.x), vec4<f32>(-447f, -1184f, arg_1, -1025f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_0.x, -1568f, 1346f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-490f, 569f, -757f, -425f), vec4<f32>(arg_1, 948f, arg_1, arg_0.x), vec4<bool>(true, arg_2, false, false)))))));
    var var_1 = all(select(select(!(!vec4<bool>(arg_2, false, false, arg_2)), !(!vec4<bool>(arg_2, false, true, true)), select(select(vec4<bool>(arg_2, arg_2, arg_2, arg_2), vec4<bool>(arg_2, arg_2, true, true), vec4<bool>(false, true, arg_2, arg_2)), !vec4<bool>(arg_2, arg_2, arg_2, arg_2), select(arg_2, false, true))), select(vec4<bool>(arg_2 | arg_2, any(vec4<bool>(arg_2, arg_2, true, arg_2)), u_input.a == u_input.a, arg_2 & true), vec4<bool>(!arg_2, arg_2 || false, all(vec3<bool>(true, arg_2, false)), true), !(!vec4<bool>(false, arg_2, true, arg_2))), !(!vec4<bool>(true, true, arg_2, arg_2))));
    var var_2 = var_0.a.a;
    var var_3 = arg_3;
    let var_4 = var_0.a;
    return var_0.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!vec4<bool>(true, true, any(vec2<bool>(true, true)), true), !vec4<bool>(_wgslsmith_f_op_f32(select(722f, -183f, true)) == -1000f, any(vec4<bool>(true, true, false, true)), all(vec3<bool>(true, true, true)), true), true | (-1i >= _wgslsmith_clamp_i32(firstTrailingBit(0i), func_1(vec2<f32>(-1788f, 1000f), -1314f, false, vec2<u32>(u_input.a, u_input.a)), i32(-1i) * -28409i)));
    var var_1 = firstLeadingBit(u_input.a);
    var var_2 = Struct_2(Struct_1(~32366i, 0u, -2452f, _wgslsmith_f_op_f32(-1651f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1465f - -903f)))), ~vec4<u32>(~0u, 1u, firstLeadingBit(u_input.a), u_input.a) | ~(~vec4<u32>(4294967295u, 20957u, u_input.a, 28030u) | ~vec4<u32>(1u, u_input.a, u_input.a, 1u)), vec2<u32>(~(~countOneBits(4294967295u)), u_input.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1000f, 671f, 1000f, 273f))))))));
    var_1 = _wgslsmith_dot_vec2_u32(abs(_wgslsmith_div_vec2_u32(~countOneBits(vec2<u32>(u_input.a, u_input.a)), var_2.b.wy)), select(var_2.b.yy, ~(~vec2<u32>(4294967295u, var_2.b.x)), true) | abs(max(vec2<u32>(13991u, 0u), vec2<u32>(45428u, var_2.a.b))));
    var_2 = Struct_2(var_2.a, (min(select(var_2.b, var_2.b, true), select(var_2.b, vec4<u32>(1u, 31978u, var_2.a.b, 27240u), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x))) | min(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1u, u_input.a, 4294967295u), vec4<u32>(var_2.b.x, u_input.a, u_input.a, 76760u)), vec4<u32>(0u, 1u, var_2.a.b, u_input.a) >> (vec4<u32>(u_input.a, 47008u, 18324u, var_2.b.x) % vec4<u32>(32u)))) << ((~var_2.b & var_2.b) % vec4<u32>(32u)), max(var_2.b.wz, var_2.b.ww), _wgslsmith_f_op_vec4_f32(var_2.d + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.a.c)) + var_2.d.x), _wgslsmith_f_op_f32(f32(-1f) * -1041f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(var_2.a.c)), 639f)), _wgslsmith_f_op_f32(min(910f, _wgslsmith_f_op_f32(floor(-1283f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_mult_i32(-2189i, -select(var_2.a.a, -2147483647i, var_0.x)), ~(~(-var_2.a.a)), var_2.a.a, select(_wgslsmith_add_i32(func_1(vec2<f32>(776f, 688f), -553f, false, vec2<u32>(28093u, var_2.c.x)), var_2.a.a), ~1i, false & var_0.x)), 1i, 58027u, 0u, _wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(13820u, 1u), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, var_2.b.x), var_2.c)), var_2.c, select(vec2<u32>(var_2.a.b, 1u), vec2<u32>(47515u, var_2.a.b) ^ ~vec2<u32>(1u, var_2.b.x), !var_0.zz)));
}

