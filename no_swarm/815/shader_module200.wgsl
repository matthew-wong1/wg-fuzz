struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: f32,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<f32>,
    c: vec3<f32>,
    d: vec2<f32>,
}

struct Struct_5 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32) -> f32 {
    var var_0 = _wgslsmith_div_vec2_i32(firstTrailingBit(-max(vec2<i32>(arg_0, -1i), vec2<i32>(u_input.c, arg_0))) >> (select(select(vec2<u32>(36717u, 33017u), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.d.x, u_input.a)), true), vec2<u32>(firstTrailingBit(31822u), u_input.d.x << (u_input.a % 32u)), any(select(vec2<bool>(true, false), vec2<bool>(true, true), false))) % vec2<u32>(32u)), vec2<i32>(-1i) * -(countOneBits(vec2<i32>(u_input.c, -1i)) | -vec2<i32>(arg_0, arg_0)));
    var_0 = countOneBits(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, arg_0 & 0i, 54756i << (u_input.a % 32u), -30101i), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, 2392i, -23161i, u_input.c) | vec4<i32>(u_input.c, var_0.x, 2147483647i, -2147483647i), -vec4<i32>(-2147483647i, var_0.x, 48424i, -35216i), _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, u_input.c, arg_0, var_0.x), vec4<i32>(1i, -29152i, 0i, -63614i)))), -_wgslsmith_mult_i32(abs(arg_0), u_input.b & 1i)));
    let var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-383f - -1000f), 485f, 544f, -1336f)))));
    var_0 = vec2<i32>(_wgslsmith_sub_i32(2147483647i, max(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, -1i, -11401i) & vec3<i32>(-41618i, 106i, -1i), vec3<i32>(arg_0, 15288i, var_0.x) ^ vec3<i32>(u_input.b, 27850i, u_input.b)), 4081i)), _wgslsmith_dot_vec3_i32(countOneBits(-(~vec3<i32>(2147483647i, 65615i, -16098i))), vec3<i32>(select(var_0.x, var_0.x, true), ~1i, arg_0)));
    var var_2 = true;
    return var_1.x;
}

fn func_2(arg_0: vec3<f32>, arg_1: u32) -> vec3<bool> {
    let var_0 = Struct_4(Struct_2(u_input.b, vec3<u32>(7611u, arg_1, _wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.d.x, 47183u), 0u)), !(!any(vec2<bool>(false, true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_3(u_input.b)), arg_0.x, _wgslsmith_div_f32(858f, arg_0.x), arg_0.x), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -131f), _wgslsmith_f_op_f32(2464f * arg_0.x), -474f, 1000f))), arg_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1265f, arg_0.x), vec2<f32>(-620f, arg_0.x))) + arg_0.zy))));
    let var_1 = select(vec3<bool>(select(true, var_0.a.c, true), true, true), vec3<bool>(true, -1514f >= arg_0.x, false), !select(vec3<bool>(1u == arg_1, var_0.a.c, true), vec3<bool>(var_0.a.c, true, var_0.a.c), vec3<bool>(true, true, true)));
    let var_2 = ~select(~(~var_0.a.b & ~var_0.a.b), u_input.d, !select(vec3<bool>(true, var_1.x, true), var_1, arg_0.x < arg_0.x));
    let var_3 = u_input.c;
    let var_4 = -1003f;
    return var_1;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<bool>, arg_2: Struct_2) -> u32 {
    let var_0 = select(select(vec3<bool>(arg_0.x, false, (false | arg_1.x) & select(arg_1.x, arg_2.c, false)), func_2(vec3<f32>(_wgslsmith_div_f32(-1717f, 104f), 173f, 347f), ~u_input.a), true), !vec3<bool>(arg_2.c, !arg_1.x, true), false || arg_0.x);
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(Struct_2(abs(u_input.c), ~vec3<u32>(func_1(vec3<bool>(true, false, false), vec3<bool>(true, false, false), Struct_2(-24975i, u_input.d, false)), _wgslsmith_dot_vec2_u32(u_input.d.zx, vec2<u32>(4294967295u, u_input.a)), u_input.d.x), u_input.b != ~countOneBits(-1i)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -147f), -330f)), -2017f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1253f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-361f)), _wgslsmith_f_op_f32(func_3(u_input.c)))) * 643f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-837f * 850f), _wgslsmith_f_op_f32(f32(-1f) * -319f), -1144f)), vec3<f32>(1045f, _wgslsmith_f_op_f32(f32(-1f) * -170f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(403f, -142f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -495f), _wgslsmith_f_op_f32(max(956f, -1395f))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(-328f - var_0.d.x), _wgslsmith_f_op_f32(sign(-309f))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(var_0.b.xww)), _wgslsmith_f_op_vec3_f32(max(var_0.c, var_0.b.xzy))))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(select(var_1.yz, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.c.x, var_1.x))), !var_0.a.c));
    var_0 = Struct_4(var_0.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1055f - _wgslsmith_f_op_f32(min(var_0.b.x, var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-425f - -1636f) + _wgslsmith_f_op_f32(trunc(var_0.c.x))), var_0.b.x, _wgslsmith_f_op_f32(func_3(var_0.a.a)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(func_3(var_0.a.a)), _wgslsmith_f_op_f32(3190f + -431f), -267f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2128f, 704f, 508f)), false)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(var_0.c)))), vec3<bool>(var_0.a.c, var_0.a.c, !select(true, var_0.a.c, var_0.a.c)))), _wgslsmith_f_op_vec2_f32(floor(var_0.c.xz)));
    var_0 = Struct_4(var_0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(var_0.b + _wgslsmith_f_op_vec4_f32(min(var_0.b, var_0.b)))))), _wgslsmith_f_op_vec3_f32(-var_1), var_1.xx);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.x))) + -398f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(max(var_0.b.x, 757f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d.x - -1579f) + _wgslsmith_f_op_f32(-var_2.x))))), select(vec4<i32>(-1i, 1i, u_input.b, ~var_0.a.a), vec4<i32>(var_0.a.a, ~var_0.a.a, 34159i, -33017i), select(!vec4<bool>(true, var_0.a.c, var_0.a.c, false), vec4<bool>(var_0.a.c, var_0.a.c, var_0.a.c, false), !var_0.a.c)) & select(-_wgslsmith_mod_vec4_i32(vec4<i32>(-9544i, u_input.c, 5244i, var_0.a.a), vec4<i32>(15532i, -1i, -78296i, var_0.a.a)), ~countOneBits(vec4<i32>(var_0.a.a, var_0.a.a, -25761i, 3798i)), all(vec4<bool>(false, var_0.a.c, false, false))));
}

