struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
    c: vec4<bool>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: bool,
    c: vec3<bool>,
    d: Struct_3,
    e: f32,
}

struct Struct_5 {
    a: bool,
    b: u32,
    c: bool,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> f32 {
    var var_0 = ~((_wgslsmith_clamp_i32(~u_input.b.x, u_input.a | 1i, _wgslsmith_clamp_i32(-32883i, u_input.b.x, u_input.b.x)) ^ -u_input.a) & (_wgslsmith_add_i32(-1i, abs(u_input.b.x)) ^ u_input.b.x));
    var_0 = -2147483647i;
    var var_1 = reverseBits(-_wgslsmith_div_i32(~reverseBits(-2147483647i), -32325i));
    let var_2 = true;
    let var_3 = Struct_1((select(vec3<i32>(u_input.a, 0i, u_input.a), vec3<i32>(u_input.a, u_input.b.x, u_input.a), vec3<bool>(var_2, false, true)) ^ select(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<i32>(u_input.b.x, u_input.a, u_input.b.x)), -vec3<i32>(u_input.b.x, u_input.a, 56860i), true)) & _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(-vec3<i32>(u_input.a, 1i, u_input.b.x), vec3<i32>(31697i, -1i, 2147483647i) | vec3<i32>(u_input.a, 0i, u_input.a)), _wgslsmith_mult_vec3_i32(-vec3<i32>(-15904i, u_input.b.x, 15156i), vec3<i32>(u_input.a, u_input.a, u_input.b.x) | vec3<i32>(0i, u_input.b.x, 32000i)), -(~vec3<i32>(-2147483647i, -2147483647i, u_input.b.x))), u_input.a, (1u & (select(4294967295u, 4294967295u, var_2) >> (~1u % 32u))) ^ ~_wgslsmith_add_u32(_wgslsmith_div_u32(1u, 35750u), 1u), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(647f * _wgslsmith_f_op_f32(ceil(1000f))))) >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(813f + 1513f)))));
    return 283f;
}

fn func_2() -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-693f, -1039f))), _wgslsmith_f_op_f32(f32(-1f) * -111f), false))));
    var var_1 = Struct_3(var_0, _wgslsmith_div_vec3_u32(vec3<u32>(~6359u, 15349u, countOneBits(14449u >> (0u % 32u))), max(vec3<u32>(4294967295u, 1u, 4294967295u), ~vec3<u32>(4294967295u, 4294967295u, 65320u)) << (~firstTrailingBit(vec3<u32>(1u, 1u, 1u)) % vec3<u32>(32u))), !vec4<bool>(true | (-795f >= var_0), any(select(vec2<bool>(false, false), vec2<bool>(true, false), false)), !any(vec4<bool>(false, false, false, true)), true), Struct_1(~(~vec3<i32>(u_input.a, u_input.a, u_input.b.x)) | vec3<i32>(i32(-1i) * -29783i, _wgslsmith_add_i32(u_input.a, -1i), -118609i), _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.b.x, -1i, u_input.b.x), _wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, u_input.b.x, -2147483647i), vec3<i32>(u_input.a, u_input.a, u_input.a)), reverseBits(vec3<i32>(u_input.b.x, 31314i, u_input.a)), select(vec3<i32>(-23330i, u_input.a, 25966i), vec3<i32>(u_input.b.x, u_input.a, -4106i), vec3<bool>(true, false, true)))), ~min(_wgslsmith_clamp_u32(44796u, 12989u, 4294967295u), ~15155u), _wgslsmith_dot_vec3_i32(-vec3<i32>(-22740i, 171i, -2147483647i), vec3<i32>(u_input.b.x, u_input.b.x, -34348i) | vec3<i32>(11246i, u_input.a, u_input.b.x)) <= _wgslsmith_dot_vec4_i32(~vec4<i32>(-19486i, -2147483647i, 0i, 1i), -vec4<i32>(2147483647i, 1i, 33561i, u_input.b.x))));
    let var_2 = var_1.d.b;
    let var_3 = _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(~abs(var_1.d.a), abs(var_1.d.a & vec3<i32>(u_input.b.x, u_input.b.x, -14440i))) | var_1.d.a, vec3<i32>(-33756i, 2147483647i, _wgslsmith_add_i32(var_1.d.a.x, 1i)));
    var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -576f) + -1720f), abs(~var_1.b), !var_1.c, var_1.d);
    return vec4<f32>(-1391f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1704f + var_1.a)), var_1.a, var_1.d.d)) + 969f), -631f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1373f, -783f, 301f, 224f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, 1000f, 287f, 205f))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2()))));
    var var_1 = 19472i;
    return Struct_4(_wgslsmith_f_op_vec3_f32(abs(var_0.xyy)), !(var_0.x >= _wgslsmith_f_op_f32(func_3())), select(vec3<bool>(!arg_0.d, true, arg_0.d), vec3<bool>(arg_1.a.d, any(!vec4<bool>(true, arg_0.d, true, arg_1.a.d)), !arg_1.a.d), true), Struct_3(var_0.x, firstLeadingBit(firstLeadingBit(~vec3<u32>(arg_0.c, arg_1.a.c, arg_1.a.c))), vec4<bool>(true, true, true, true), Struct_1(vec3<i32>(arg_1.a.a.x, arg_1.a.a.x, arg_0.b) | (vec3<i32>(u_input.a, -56666i, 2147483647i) << (vec3<u32>(4294967295u, arg_1.a.c, 105680u) % vec3<u32>(32u))), arg_0.b, _wgslsmith_add_u32(arg_1.a.c ^ 96285u, 99856u), any(select(vec4<bool>(arg_1.a.d, true, false, true), vec4<bool>(true, false, arg_1.a.d, arg_1.a.d), arg_0.d)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.x))))));
}

fn func_4(arg_0: Struct_4, arg_1: vec2<u32>) -> Struct_1 {
    var var_0 = Struct_5(true, 1u, !(!arg_0.c.x | arg_0.b), vec4<i32>(-5920i, -1i, -(~(-2147483647i)) ^ _wgslsmith_div_i32(min(u_input.b.x, -1i), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.a, arg_0.d.d.b), vec3<i32>(1i, -2147483647i, u_input.b.x))), arg_0.d.d.a.x));
    var var_1 = vec3<i32>(_wgslsmith_sub_i32(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.d.d.b, arg_0.d.d.b), u_input.b)), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, var_0.d.x), vec2<i32>(var_0.d.x, arg_0.d.d.a.x))), -2147483647i, u_input.a) >> (arg_0.d.b % vec3<u32>(32u));
    let var_2 = -_wgslsmith_clamp_i32(max(u_input.a, func_1(func_1(Struct_1(vec3<i32>(12513i, 18385i, 38502i), arg_0.d.d.a.x, 33376u, true), Struct_2(arg_0.d.d)).d.d, Struct_2(Struct_1(vec3<i32>(u_input.a, 5471i, u_input.a), u_input.b.x, 70907u, arg_0.c.x))).d.d.b), ~max(_wgslsmith_dot_vec2_i32(var_0.d.yw, var_0.d.xy), 2147483647i), u_input.b.x);
    var var_3 = Struct_1(func_1(Struct_1(-firstTrailingBit(vec3<i32>(2147483647i, -10842i, 2147483647i)), max(var_0.d.x, 53655i << (arg_1.x % 32u)), 24131u, _wgslsmith_f_op_f32(abs(arg_0.a.x)) >= _wgslsmith_f_op_f32(-846f - 674f)), Struct_2(arg_0.d.d)).d.d.a, -u_input.a, 1u, arg_0.b);
    var_0 = Struct_5(true, abs(0u), true, reverseBits(abs(vec4<i32>(_wgslsmith_add_i32(u_input.a, -2147483647i), i32(-1i) * -8201i, var_2, ~arg_0.d.d.b))));
    return func_1(arg_0.d.d, Struct_2(arg_0.d.d)).d.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_4(func_1(Struct_1(firstLeadingBit(vec3<i32>(u_input.b.x, u_input.a, 1i)), ~u_input.b.x, ~0u, false), Struct_2(Struct_1(vec3<i32>(u_input.a, -16973i, u_input.a), 2147483647i, 1u, true))), vec2<u32>(1u, 1u)));
    let var_1 = -1i;
    let var_2 = min(abs(-var_0.a.a.yy | (reverseBits(vec2<i32>(var_0.a.b, -1i)) << (min(vec2<u32>(7328u, 4294967295u), vec2<u32>(var_0.a.c, var_0.a.c)) % vec2<u32>(32u)))), ~u_input.b);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1338f * 803f), -1951f, var_0.a.d)), _wgslsmith_div_f32(-307f, -518f)), -697f)));
    let var_4 = false;
    var var_5 = ~(-(vec3<i32>(~0i, i32(-1i) * -2147483647i, ~0i) >> (~vec3<u32>(49232u, var_0.a.c, var_0.a.c) % vec3<u32>(32u))));
    var_5 = _wgslsmith_clamp_vec3_i32(var_0.a.a, var_0.a.a, -var_0.a.a);
    let var_6 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(min(func_1(func_4(func_1(var_0.a, var_0), max(vec2<u32>(14820u, var_6.a.c), vec2<u32>(var_6.a.c, var_6.a.c))), Struct_2(Struct_1(var_6.a.a, var_5.x, 3688u, true))).d.d.a.x, 2147483647i), u_input.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + var_3), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_3)))), select(_wgslsmith_add_i32(_wgslsmith_sub_i32(0i, 2147483647i) << (~var_0.a.c % 32u), var_2.x & (i32(-1i) * -94248i)), -36105i, !var_4), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3), _wgslsmith_f_op_f32(602f * var_3))), var_3));
}

