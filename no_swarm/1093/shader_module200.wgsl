struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec3<bool>,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: f32,
    d: bool,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_3,
    c: vec3<u32>,
    d: i32,
    e: Struct_3,
}

struct Struct_5 {
    a: vec2<f32>,
    b: bool,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: u32, arg_1: i32) -> bool {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1136f * -643f)))) + 157f);
    var var_1 = Struct_3(Struct_1(u_input.c, var_0), ~(~(vec4<u32>(u_input.c, arg_0, arg_0, u_input.c) & _wgslsmith_sub_vec4_u32(vec4<u32>(0u, arg_0, arg_0, arg_0), vec4<u32>(24755u, u_input.c, arg_0, 0u)))), _wgslsmith_f_op_f32(-1151f + _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0 + -134f), _wgslsmith_f_op_f32(floor(var_0)))))), select(select(any(vec4<bool>(true, true, false, false)), true, true), all(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0, -1393f))) > 1f));
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-650f, 1232f)) - 785f), 1000f, true));
    let var_3 = Struct_2(true, var_1.a, vec3<bool>(true, any(vec2<bool>(false, false)), all(vec3<bool>(false && var_1.d, true, true))), firstTrailingBit(vec2<i32>(_wgslsmith_add_i32(u_input.a, arg_1) | _wgslsmith_dot_vec4_i32(vec4<i32>(42818i, arg_1, arg_1, arg_1), vec4<i32>(-44041i, u_input.a, u_input.d.x, 2147483647i)), -arg_1)), var_1.a);
    var_2 = _wgslsmith_f_op_f32(-var_1.c);
    return true;
}

fn func_2(arg_0: vec2<i32>) -> i32 {
    var var_0 = vec2<bool>(true, all(!vec3<bool>(true, func_3(4294967295u, -2584i), true)));
    let var_1 = ~u_input.c;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(875f * -1081f))), -479f)));
    let var_3 = var_2;
    let var_4 = Struct_2(true, Struct_1(reverseBits(u_input.c), var_3), select(select(select(!vec3<bool>(var_0.x, var_0.x, var_0.x), select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(var_0.x, true, var_0.x), false), select(var_0.x, true, var_0.x)), !select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(false, false, true)), vec3<bool>(u_input.c != 4294967295u, var_1 <= var_1, true)), !(!vec3<bool>(false, var_0.x, var_0.x)), vec3<bool>(all(!vec4<bool>(false, var_0.x, true, var_0.x)), any(vec4<bool>(true, var_0.x, var_0.x, var_0.x)) | true, all(!vec4<bool>(var_0.x, true, false, var_0.x)))), -(_wgslsmith_mult_vec2_i32(-u_input.d, u_input.d) << (vec2<u32>(~var_1, countOneBits(5824u)) % vec2<u32>(32u))), Struct_1(~u_input.c, -525f));
    return ~(-arg_0.x);
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<bool>, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_div_i32(func_2(vec2<i32>(abs(-u_input.a), _wgslsmith_mod_i32(1i, 2147483647i))), reverseBits(_wgslsmith_add_i32(u_input.a, -2147483647i)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - arg_3.b)))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1148f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1437f - arg_0.x))))));
    let var_2 = select(vec3<bool>(arg_1.x | true, false, select(any(select(arg_1.yyw, arg_1.wxw, false)), true, true)), arg_1.wwy, true);
    var_1 = 501f;
    var var_3 = Struct_3(arg_3, ~(max(~vec4<u32>(11066u, 11841u, u_input.c, arg_3.a), ~vec4<u32>(67936u, 52432u, 1u, u_input.c)) ^ vec4<u32>(u_input.c, 1u, _wgslsmith_mult_u32(arg_3.a, 75864u), max(u_input.c, 7125u))), arg_2, true);
    return arg_3;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1) -> f32 {
    let var_0 = Struct_5(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1466f, _wgslsmith_f_op_f32(arg_0.x + arg_0.x))), arg_0.zx), true, func_1(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b))), !vec4<bool>(u_input.a <= u_input.b.x, all(vec3<bool>(false, false, false)), all(vec4<bool>(false, false, false, false)), false), -779f, arg_1), arg_1.b, Struct_1(~arg_1.a ^ max(~1u, _wgslsmith_mult_u32(0u, 4294967295u)), _wgslsmith_f_op_f32(-1f)));
    var var_1 = arg_0.x;
    let var_2 = vec4<f32>(-523f, -1476f, _wgslsmith_f_op_f32(step(arg_1.b, func_1(var_0.a, vec4<bool>(false, var_0.b, true, true), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_0.x, arg_1.b), _wgslsmith_f_op_f32(abs(arg_1.b)), var_0.b)), func_1(_wgslsmith_f_op_vec2_f32(arg_0.zw - arg_0.yz), !vec4<bool>(var_0.b, var_0.b, var_0.b, var_0.b), _wgslsmith_f_op_f32(max(arg_1.b, 1000f)), func_1(vec2<f32>(var_0.a.x, 685f), vec4<bool>(true, var_0.b, true, true), arg_1.b, Struct_1(u_input.c, -162f)))).b)), -1173f);
    let var_3 = _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 39851u, ~abs(max(1u, 9946u)), _wgslsmith_mult_u32(1u, _wgslsmith_sub_u32(1u, var_0.e.a) ^ func_1(var_0.a, vec4<bool>(false, false, true, false), -1950f, arg_1).a)), ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, u_input.c, var_0.e.a, 42936u), vec4<u32>(arg_1.a, arg_1.a, 4294967295u, 39822u)) << (abs(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.e.a, u_input.c, 4294967295u, 4294967295u), vec4<u32>(1u, var_0.e.a, 4294967295u, 0u))) % vec4<u32>(32u))));
    var var_4 = Struct_4(vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b)))), Struct_3(var_0.e, vec4<u32>(var_3.x, u_input.c, func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(391f, 283f)), !vec4<bool>(var_0.b, false, true, true), 299f, func_1(vec2<f32>(var_0.d, arg_1.b), vec4<bool>(true, var_0.b, false, var_0.b), 729f, Struct_1(1u, -1194f))).a, firstLeadingBit(u_input.c)), _wgslsmith_f_op_f32(var_0.d * arg_0.x), var_0.b), ~(~(~_wgslsmith_div_vec3_u32(var_3.xyx, vec3<u32>(45582u, 44622u, 14082u)))), firstTrailingBit(u_input.a), Struct_3(func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-145f, 172f))), !(!vec4<bool>(var_0.b, true, false, var_0.b)), _wgslsmith_f_op_f32(max(1032f, _wgslsmith_f_op_f32(-var_2.x))), Struct_1(0u, _wgslsmith_f_op_f32(floor(arg_1.b)))), ~var_3, arg_1.b, false));
    return _wgslsmith_f_op_f32(abs(arg_1.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -211f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-209f + 623f) - _wgslsmith_f_op_f32(-1810f - _wgslsmith_div_f32(-1697f, 1216f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(103f, -616f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1017f))) - -1190f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_4(_wgslsmith_div_vec4_f32(vec4<f32>(491f, 630f, -1242f, 1950f), vec4<f32>(-822f, -1161f, -531f, -144f)), func_1(vec2<f32>(-1116f, -524f), vec4<bool>(true, true, false, false), -277f, Struct_1(75224u, 331f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-366f * -1009f), -1832f)))), _wgslsmith_f_op_f32(934f * _wgslsmith_f_op_f32(f32(-1f) * -227f)));
    let var_1 = _wgslsmith_mult_i32(u_input.b.x, _wgslsmith_clamp_i32(-8746i, reverseBits(_wgslsmith_mult_i32(14813i, 65909i)), _wgslsmith_dot_vec3_i32(-vec3<i32>(-1i, -1i, u_input.b.x), u_input.b)) | reverseBits(1i));
    var var_2 = Struct_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x))), u_input.c < u_input.c, func_1(_wgslsmith_f_op_vec2_f32(var_0.zz - _wgslsmith_f_op_vec2_f32(sign(var_0.yw))), !vec4<bool>(true, all(vec3<bool>(true, false, false)), u_input.a == 1i, false), _wgslsmith_f_op_f32(ceil(var_0.x)), Struct_1(u_input.c, -783f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.x + var_0.x), 1389f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1861f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, var_0.x) - -541f))), Struct_1((~u_input.c >> (~1u % 32u)) ^ (reverseBits(u_input.c) << (4294967295u % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(767f, var_0.x) - -379f) * 931f)));
    var var_3 = (min(~(vec2<u32>(82225u, var_2.c.a) & vec2<u32>(4294967295u, u_input.c)), vec2<u32>(_wgslsmith_mult_u32(var_2.e.a, 1u), countOneBits(0u))) >> (min(~abs(vec2<u32>(0u, 15177u)), abs(vec2<u32>(89726u, u_input.c))) % vec2<u32>(32u))) << (vec2<u32>(4294967295u, 0u) % vec2<u32>(32u));
    var var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec2<u32>(24942u, 0u)));
}

