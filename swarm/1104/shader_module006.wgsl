struct Struct_1 {
    a: vec3<u32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: u32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool) -> u32 {
    var var_0 = reverseBits(firstTrailingBit(min(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(arg_0.c.x, arg_1.a.x, 4294967295u)), _wgslsmith_add_vec3_u32(arg_1.a, vec3<u32>(588u, 22037u, 67597u))), arg_1.a.x)));
    let var_1 = _wgslsmith_div_f32(-177f, arg_0.a);
    let var_2 = abs(firstTrailingBit(u_input.a.xz));
    let var_3 = _wgslsmith_mult_vec2_i32(select(firstLeadingBit(arg_0.b), vec2<i32>(arg_0.b.x, u_input.a.x << (arg_0.c.x % 32u)), select(vec2<bool>(arg_2, arg_2), vec2<bool>(true, false), 21292u != u_input.b.x)) & countOneBits(countOneBits(vec2<i32>(2147483647i, 47030i) | u_input.a.yx)), firstTrailingBit(~vec2<i32>(reverseBits(38389i), -2147483647i)));
    let var_4 = Struct_2(_wgslsmith_f_op_f32(floor(-567f)), _wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(~vec2<i32>(-1i, 0i), vec2<i32>(-36515i, var_3.x)), _wgslsmith_div_vec2_i32(~(arg_0.b | arg_0.b), firstLeadingBit(vec2<i32>(-47254i, -48907i)) & (var_2 >> (u_input.b % vec2<u32>(32u))))), ~arg_0.c);
    return ~arg_0.c.x;
}

fn func_2() -> u32 {
    let var_0 = Struct_1(vec3<u32>(reverseBits(_wgslsmith_div_u32(4294967295u, 4294967295u) >> (~u_input.b.x % 32u)), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(82441u, firstLeadingBit(61145u)), min(0u, func_3(Struct_2(-166f, u_input.a.xz, vec2<u32>(u_input.b.x, u_input.b.x)), Struct_1(vec3<u32>(u_input.b.x, 29405u, 4294967295u), vec2<f32>(-674f, -1279f)), true)), ~67042u), u_input.b.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-800f, 943f))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(499f, -1008f) * vec2<f32>(-118f, -541f)))))));
    var var_1 = vec4<u32>(abs(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(var_0.a.xz >> (vec2<u32>(41329u, u_input.b.x) % vec2<u32>(32u)), min(u_input.b, vec2<u32>(u_input.b.x, var_0.a.x))), ~var_0.a.yx)), countOneBits(_wgslsmith_add_u32(4294967295u, var_0.a.x)), _wgslsmith_mult_u32(u_input.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(~var_0.a.x, max(1u, 0u)), max(~vec2<u32>(4294967295u, 1u), vec2<u32>(var_0.a.x, u_input.b.x)))), 1u);
    let var_2 = ~u_input.a.yy;
    var var_3 = _wgslsmith_mult_vec2_i32(vec2<i32>(~(u_input.a.x | var_2.x), _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, u_input.a.x << (1u % 32u))), _wgslsmith_sub_vec2_i32(-_wgslsmith_mod_vec2_i32(var_2 << (u_input.b % vec2<u32>(32u)), -vec2<i32>(u_input.a.x, 7809i)), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x) << (u_input.b % vec2<u32>(32u)), var_2)));
    let var_4 = _wgslsmith_f_op_f32(var_0.b.x + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(var_0.b.x)))), 1126f) + _wgslsmith_f_op_f32(-var_0.b.x)));
    return min(u_input.b.x, _wgslsmith_mod_u32(func_3(Struct_2(var_0.b.x, vec2<i32>(var_2.x, u_input.a.x), vec2<u32>(var_1.x, u_input.b.x)), Struct_1(var_1.xzy, var_0.b), select(true, true, true)), _wgslsmith_dot_vec4_u32(min(vec4<u32>(var_1.x, 4294967295u, 0u, 1898u), vec4<u32>(53638u, 642u, var_1.x, var_1.x)), firstTrailingBit(vec4<u32>(1u, 4294967295u, var_0.a.x, 1u)))) | ~var_1.x);
}

fn func_4(arg_0: vec4<u32>, arg_1: u32) -> Struct_3 {
    let var_0 = arg_0.yzx >> (_wgslsmith_add_vec3_u32(vec3<u32>(54690u, ~min(0u, 1u), arg_1), arg_0.wxw) % vec3<u32>(32u));
    var var_1 = 85619u;
    let var_2 = _wgslsmith_clamp_u32(u_input.b.x, _wgslsmith_clamp_u32(var_0.x, var_0.x, ~(~arg_1)), arg_0.x);
    var var_3 = Struct_2(_wgslsmith_f_op_f32(abs(481f)), vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_add_i32(countOneBits(u_input.a.x), 0i), ~(-1i) | ~u_input.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -1i, u_input.a.x, u_input.a.x) << (vec4<u32>(82239u, arg_1, arg_1, var_2) % vec4<u32>(32u)), vec4<i32>(1i, -6668i, 0i, u_input.a.x) & _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 22754i, u_input.a.x), vec4<i32>(19000i, u_input.a.x, u_input.a.x, u_input.a.x)))), vec2<u32>(var_0.x, 4294967295u));
    var_1 = _wgslsmith_mod_u32(~(~(~0u)) >> (_wgslsmith_div_u32(var_2, 77385u) % 32u), abs(_wgslsmith_mod_u32(44267u, select(arg_0.x, var_2, true))));
    return Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -2508f), _wgslsmith_f_op_f32(step(-2197f, 1000f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-238f - 1000f), _wgslsmith_f_op_f32(f32(-1f) * -1134f)), var_3.a)), max(u_input.b.x, 0u), vec2<u32>(arg_0.x & 67119u, var_3.c.x));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2) -> Struct_1 {
    var var_0 = Struct_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a, arg_0.b.x, 1031f) * vec3<f32>(arg_1.a, 660f, -1314f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1332f, -536f, arg_1.a))))), ~(countOneBits(firstLeadingBit(u_input.b.x)) << (~countOneBits(arg_0.a.x) % 32u)), arg_0.a.zy);
    var_0 = func_4(~vec4<u32>(1u, func_2(), ~39490u, ~u_input.b.x) | ~(~countOneBits(vec4<u32>(1u, 4294967295u, arg_1.c.x, arg_0.a.x))), ~28122u);
    let var_1 = Struct_3(var_0.a, arg_1.c.x, u_input.b);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1740f), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.a.x))))));
    var var_3 = vec4<f32>(-426f, -502f, _wgslsmith_f_op_f32(-644f * arg_1.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-799f + -460f) - var_2.x));
    return Struct_1(~arg_0.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(616f)), _wgslsmith_f_op_f32(sign(arg_0.b.x))), -404f) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_3.x, -783f))), _wgslsmith_f_op_f32(-arg_0.b.x))));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1) -> f32 {
    var var_0 = Struct_2(arg_0.a.x, u_input.a.zx, ~((vec2<u32>(1u, 0u) >> (~vec2<u32>(arg_0.c.x, 4294967295u) % vec2<u32>(32u))) ^ arg_1.a.xy));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(arg_1.b.x - _wgslsmith_f_op_f32(select(-252f, var_0.a, false))), 1256f);
    let var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1.b.x, arg_0.a.x, 2070f, arg_1.b.x), vec4<f32>(-1000f, -150f, 960f, arg_1.b.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(239f, 561f, -1609f, 707f) * vec4<f32>(647f, 1427f, 1798f, 1052f)))))));
    var var_3 = 4294967295u;
    var var_4 = true;
    return 2352f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -982f;
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(Struct_3(vec3<f32>(-237f, -1000f, -362f), 33939u, vec2<u32>(u_input.b.x, u_input.b.x)), func_1(Struct_1(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec2<f32>(1000f, 2124f)), Struct_2(-594f, vec2<i32>(-65785i, u_input.a.x), vec2<u32>(u_input.b.x, 1u)))))) - -804f), -470f);
    var_0 = _wgslsmith_f_op_f32(min(719f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-218f - _wgslsmith_f_op_f32(-344f - -1699f))) + _wgslsmith_f_op_f32(trunc(-499f)))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -460f) - _wgslsmith_f_op_f32(1204f + _wgslsmith_f_op_f32(abs(-1224f))));
    let var_1 = vec2<i32>(u_input.a.x, 24464i);
    let x = u_input.a;
    s_output = StorageBuffer(func_4(vec4<u32>(u_input.b.x, _wgslsmith_clamp_u32(4294967295u, 0u, u_input.b.x), ~0u, u_input.b.x << (71026u % 32u)), 13604u >> (_wgslsmith_add_u32(u_input.b.x, 1u) % 32u)).c.x >> (36571u % 32u), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(674f)))))), ~vec3<u32>(u_input.b.x, 21250u, ~u_input.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-766f * -680f))))));
}

