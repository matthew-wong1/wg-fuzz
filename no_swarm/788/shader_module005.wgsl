struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(false, false, vec3<i32>(-7633i, 2147483647i, 0i)), Struct_1(false, false, vec3<i32>(22067i, 44093i, 7615i)), Struct_1(true, false, vec3<i32>(45411i, 1i, 7803i)), Struct_1(true, false, vec3<i32>(2147483647i, -17047i, i32(-2147483648))), Struct_1(true, true, vec3<i32>(2147483647i, 2324i, 0i)), Struct_1(true, false, vec3<i32>(34840i, 1i, -1i)), Struct_1(true, false, vec3<i32>(3184i, 9504i, -10024i)), Struct_1(false, true, vec3<i32>(-10775i, 11273i, 15543i)), Struct_1(true, true, vec3<i32>(2147483647i, 0i, 43172i)), Struct_1(true, false, vec3<i32>(1i, 0i, -23053i)), Struct_1(false, true, vec3<i32>(-40940i, 1i, 37373i)), Struct_1(true, true, vec3<i32>(61976i, 21445i, 2147483647i)), Struct_1(false, true, vec3<i32>(i32(-2147483648), 10505i, 2147483647i)), Struct_1(false, true, vec3<i32>(-66425i, -24330i, 30950i)), Struct_1(true, true, vec3<i32>(2147483647i, 2147483647i, 25911i)), Struct_1(false, true, vec3<i32>(23054i, 0i, 61505i)), Struct_1(false, false, vec3<i32>(0i, -1i, 2147483647i)), Struct_1(true, false, vec3<i32>(-17095i, -41568i, 20329i)), Struct_1(true, true, vec3<i32>(-36313i, 0i, -21089i)), Struct_1(false, true, vec3<i32>(-1i, 1i, 32015i)), Struct_1(false, true, vec3<i32>(43817i, 0i, 2147483647i)), Struct_1(false, false, vec3<i32>(0i, 9640i, 2147483647i)), Struct_1(true, true, vec3<i32>(0i, -35558i, 1i)), Struct_1(true, true, vec3<i32>(7527i, -9086i, -1i)));

var<private> global1: Struct_4;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> bool {
    var var_0 = 34572i >> (1u % 32u);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1339f * -849f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-867f))))) != _wgslsmith_f_op_f32(f32(-1f) * -694f);
    var var_2 = Struct_4(1u);
    let var_3 = u_input.c.xy;
    var var_4 = Struct_2(Struct_1(false, true, _wgslsmith_add_vec3_i32(min(vec3<i32>(var_3.x, var_3.x, u_input.c.x) | u_input.e, -u_input.c), ~u_input.c)));
    return true;
}

fn func_2() -> f32 {
    global0 = array<Struct_1, 24>();
    var var_0 = Struct_3(min(abs(u_input.c), select(u_input.c, u_input.e, func_3())), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 0i, -10268i), vec3<i32>(u_input.a, min(u_input.c.x, 32175i), _wgslsmith_div_i32(21495i, u_input.a))), u_input.a, -firstLeadingBit(u_input.e.x | -16454i)), -vec2<i32>(firstTrailingBit(_wgslsmith_add_i32(1i, 0i)), ~(u_input.e.x ^ u_input.a)), vec4<i32>(u_input.c.x, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(17482i, u_input.e.x, u_input.a), u_input.e.x | u_input.a), _wgslsmith_mult_i32(-9071i | u_input.e.x, 17753i << (u_input.b.x % 32u)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e.x, 48246i, u_input.a), u_input.c)) & ~max(-vec4<i32>(-30412i, 2009i, u_input.a, u_input.c.x), reverseBits(vec4<i32>(-11537i, u_input.a, 34404i, u_input.a))));
    let var_1 = Struct_2(Struct_1(true, false, -_wgslsmith_div_vec3_i32(vec3<i32>(-61896i, -46766i, u_input.c.x), var_0.d.wxw) << (u_input.b % vec3<u32>(32u))));
    var var_2 = select(!vec4<bool>(var_1.a.b, select(var_1.a.b, var_1.a.b, true), var_1.a.a, false), vec4<bool>(all(!vec4<bool>(var_1.a.a, false, var_1.a.b, false)) || var_1.a.b, true, any(vec4<bool>(true, true, var_1.a.a, true)), var_1.a.a), vec4<bool>(var_1.a.a, true, global1.a <= u_input.b.x, true));
    var_2 = vec4<bool>(var_1.a.b, true, true, false);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -736f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1472f, 520f)))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -110f))))));
}

fn func_1(arg_0: bool, arg_1: vec4<i32>, arg_2: vec4<bool>, arg_3: bool) -> vec3<f32> {
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1259f, 1140f, 1299f))) - vec3<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_div_f32(-202f, -505f), _wgslsmith_f_op_f32(f32(-1f) * -1613f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-406f, -1869f, 392f) - vec3<f32>(433f, -1586f, 287f)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1036f), _wgslsmith_f_op_f32(-1000f - -644f), _wgslsmith_f_op_f32(206f * 635f))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-320f * -296f) + -202f), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-555f, -429f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~global1.a;
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1281f, -1103f, -2529f)))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(167f, -2208f, -571f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(826f, 1000f, 358f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(175f, -406f, -193f) - vec3<f32>(264f, 1289f, 1624f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(false, vec4<i32>(u_input.a, u_input.a, u_input.a, 0i), vec4<bool>(true, false, true, false), true))))));
    var var_2 = abs(-((_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c.x, -25598i, u_input.e.x, u_input.e.x), vec4<i32>(u_input.e.x, -86525i, u_input.c.x, u_input.a), vec4<i32>(u_input.a, 953i, u_input.c.x, u_input.c.x)) >> (~vec4<u32>(u_input.b.x, var_0, 21233u, u_input.b.x) % vec4<u32>(32u))) ^ _wgslsmith_div_vec4_i32(vec4<i32>(u_input.e.x, -12879i, u_input.e.x, -1i) << (vec4<u32>(0u, u_input.b.x, 5719u, var_0) % vec4<u32>(32u)), reverseBits(vec4<i32>(-29187i, -11469i, u_input.e.x, u_input.c.x)))));
    var_2 = vec4<i32>(2147483647i, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(-reverseBits(vec3<i32>(var_2.x, var_2.x, var_2.x)), u_input.e & (vec3<i32>(var_2.x, -21298i, u_input.c.x) ^ u_input.c)), abs(var_2.xwy)), abs(-27444i), firstLeadingBit(firstTrailingBit(_wgslsmith_dot_vec2_i32(var_2.yy, u_input.c.zx))) ^ -1i);
    var var_3 = -684f;
    global0 = array<Struct_1, 24>();
    var_2 = select(vec4<i32>(~(~_wgslsmith_add_i32(var_2.x, 30045i)), -3386i, countOneBits(-2147483647i) >> (select(~17749u, ~1u, true) % 32u), ~u_input.e.x), abs(vec4<i32>(-1i, u_input.e.x, -var_2.x << (~173u % 32u), -20826i)), (_wgslsmith_f_op_f32(ceil(var_1.x)) > var_1.x) & true);
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(1712f, -2238f, true)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(var_1.x, var_1.x)), _wgslsmith_f_op_f32(-155f + -788f))))));
    let var_4 = Struct_4(~0u);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, ~(-min(u_input.c.xx, ~vec2<i32>(-56147i, -51592i))), u_input.e.x, select(_wgslsmith_mult_vec4_u32(select(vec4<u32>(4294967295u, 4294967295u, u_input.d, var_0), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.d, var_0, global1.a, var_0), vec4<u32>(var_0, global1.a, var_0, 8700u)), true), ~vec4<u32>(16985u, 4294967295u, 65855u, 4294967295u)), abs(reverseBits(vec4<u32>(9024u, var_0, global1.a, var_0) ^ vec4<u32>(var_4.a, u_input.b.x, 0u, global1.a))), false));
}

