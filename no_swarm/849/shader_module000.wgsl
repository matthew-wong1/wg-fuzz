struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: Struct_1,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 26>;

var<private> global1: i32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> bool {
    let var_0 = global0[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec3_u32(~(~(~vec3<u32>(u_input.b, u_input.b, 21812u))), vec3<u32>(_wgslsmith_add_u32(57883u, 82832u), ~min(57637u, u_input.b), 91231u))), 26u)];
    global1 = 2147483647i;
    let var_1 = var_0.c.a;
    let var_2 = var_0.b.x;
    let var_3 = Struct_3(Struct_2(Struct_1(any(!vec4<bool>(var_0.c.a, var_0.a.a.a, var_0.a.c.a, var_0.b.x)), (vec3<i32>(u_input.d, 0i, 33120i) ^ vec3<i32>(-2147483647i, var_0.c.c, -2147483647i)) ^ select(vec3<i32>(-3370i, -1i, 14539i), var_0.c.b, true), -_wgslsmith_add_i32(var_0.c.c, var_0.c.d), select(-1i, reverseBits(u_input.c.x), var_0.a.a.a)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(abs(-919f)), _wgslsmith_f_op_f32(1028f * 1576f), -757f))), var_0.a.a, _wgslsmith_mult_i32(1i, _wgslsmith_mod_i32(-1405i, _wgslsmith_sub_i32(var_0.c.c, 1i)))), var_0.b, var_0.c, var_0.d);
    return all(select(select(!select(var_3.b, vec3<bool>(var_3.a.c.a, var_3.a.c.a, false), var_0.b), vec3<bool>(true, false, var_3.b.x), all(var_3.b)), vec3<bool>((false & var_3.a.c.a) || all(vec4<bool>(var_0.b.x, true, true, true)), (u_input.c.x <= var_3.a.a.c) & false, true), !var_3.c.a));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_2(Struct_1(!any(vec3<bool>(true, true, true)), _wgslsmith_div_vec3_i32(vec3<i32>(-1151i, u_input.c.x, -17779i), ~vec3<i32>(u_input.c.x, u_input.c.x, 21857i)) & ~vec3<i32>(u_input.d, u_input.d, -30535i), -1i >> (abs(u_input.a) % 32u), reverseBits(_wgslsmith_sub_i32(25621i, u_input.d)) ^ _wgslsmith_add_i32(max(u_input.d, u_input.c.x), 72779i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1000f, -1000f, _wgslsmith_f_op_f32(-224f * 190f)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-434f, -1451f, 428f))))))), Struct_1(false, _wgslsmith_sub_vec3_i32(vec3<i32>(54650i, u_input.c.x, -1701i), ~vec3<i32>(u_input.c.x, u_input.d, u_input.c.x)) >> (~(~vec3<u32>(u_input.b, 0u, 1u)) % vec3<u32>(32u)), u_input.c.x, -48242i), min(-u_input.d, select(2147483647i, u_input.c.x, (u_input.a ^ 1u) > 1u)));
    let var_1 = !(!(!vec2<bool>(func_3(), select(false, true, var_0.c.a))));
    global0 = array<Struct_3, 26>();
    let var_2 = var_0.a.b;
    let var_3 = Struct_3(Struct_2(var_0.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-216f, -565f, -935f))), vec3<f32>(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(max(615f, var_0.b.x)))), Struct_1(u_input.b < 4294967295u, ~vec3<i32>(2819i, -11012i, var_2.x) & (vec3<i32>(16989i, var_2.x, var_2.x) | var_0.a.b), i32(-1i) * -var_2.x, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, var_0.c.d, 32211i, -2147483647i), vec4<i32>(-1i, -11294i, var_0.d, 0i), vec4<i32>(var_2.x, var_0.d, 18723i, 25791i)), firstTrailingBit(vec4<i32>(var_2.x, -43224i, u_input.c.x, 38159i)))), _wgslsmith_clamp_i32(min(u_input.c.x, countOneBits(var_2.x)), -1i, _wgslsmith_dot_vec2_i32(var_0.a.b.xy << (vec2<u32>(39718u, 4294967295u) % vec2<u32>(32u)), firstTrailingBit(var_2.zy)))), vec3<bool>(all(select(select(vec2<bool>(var_0.c.a, true), vec2<bool>(var_0.c.a, true), var_1), vec2<bool>(var_0.c.a, var_0.a.a), var_1)), !(!var_0.a.a), var_1.x), var_0.c, vec4<u32>(_wgslsmith_mult_u32(firstTrailingBit(select(4294967295u, u_input.b, var_1.x)), ~_wgslsmith_div_u32(76327u, 1u)), u_input.a, 0u, 16841u << (u_input.a % 32u)));
    return var_3.a;
}

fn func_1(arg_0: vec3<u32>) -> vec2<bool> {
    let var_0 = func_2();
    var var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1142f, var_0.b.x, var_0.b.x, var_0.b.x) * vec4<f32>(-734f, -923f, 1347f, var_0.b.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, 1084f, 549f, var_0.b.x) + vec4<f32>(var_0.b.x, var_0.b.x, -216f, 1166f)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(503f, var_0.b.x, 1664f, -1000f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-326f, var_0.b.x, var_0.b.x, -330f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(534f, var_0.b.x, var_0.b.x, var_0.b.x)))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.b.x, var_0.b.x, var_0.b.x, -590f), vec4<f32>(var_0.b.x, var_0.b.x, 103f, var_0.b.x))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.b.x, var_0.b.x, 381f, var_0.b.x), vec4<f32>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x), false)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1080f, -379f, 1470f, -659f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, -257f, 1101f, -376f))))))));
    global0 = array<Struct_3, 26>();
    var var_2 = func_2();
    var_2 = Struct_2(Struct_1(!var_2.c.a, vec3<i32>(1i, var_0.d, -1i), u_input.d, -max(~var_0.c.b.x, 27294i & var_2.c.b.x)), _wgslsmith_f_op_vec3_f32(var_2.b - _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(244f, var_0.b.x), _wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(select(var_1.x, var_1.x, true))), func_2().b)), func_2().a, var_2.a.c);
    return !select(!select(select(vec2<bool>(var_0.a.a, var_2.a.a), vec2<bool>(var_0.c.a, var_2.a.a), vec2<bool>(var_0.a.a, var_0.c.a)), vec2<bool>(var_2.c.a, var_0.c.a), true), !vec2<bool>(true, select(var_2.a.a, var_2.a.a, true)), select(select(!vec2<bool>(var_0.c.a, var_0.c.a), !vec2<bool>(var_2.c.a, true), var_0.d == var_0.d), vec2<bool>(any(vec2<bool>(var_2.a.a, true)), var_2.a.a), vec2<bool>(true, true)));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec3<f32>, arg_3: bool) -> Struct_1 {
    global1 = i32(-1i) * -1i;
    global0 = array<Struct_3, 26>();
    var var_0 = max(vec3<u32>(u_input.a, u_input.b, ~u_input.b) | vec3<u32>(~u_input.a, min(1u, abs(37815u)), _wgslsmith_div_u32(~7258u, u_input.b)), _wgslsmith_mod_vec3_u32(~firstLeadingBit(vec3<u32>(67320u, u_input.b, u_input.a)), reverseBits(vec3<u32>(u_input.b, 1896u, 0u)) << (vec3<u32>(u_input.b, u_input.a, u_input.b) % vec3<u32>(32u))) ^ vec3<u32>(u_input.b, countOneBits(u_input.a) | ~14913u, abs(65916u)));
    var var_1 = !vec2<bool>(arg_3, all(select(vec2<bool>(arg_0.a, false), select(vec2<bool>(arg_3, true), vec2<bool>(arg_3, arg_3), vec2<bool>(true, arg_0.a)), true)));
    var var_2 = Struct_1(func_3() != false, arg_0.b, u_input.c.x, 2147483647i);
    return Struct_1(!(~min(arg_1.x, -10095i) > ~countOneBits(24111i)), var_2.b >> (~vec3<u32>(0u, u_input.b, u_input.a) % vec3<u32>(32u)), u_input.c.x, arg_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_1(any(func_1(vec3<u32>(14532u, u_input.b, u_input.b))), select(~reverseBits(vec3<i32>(u_input.d, 24213i, u_input.c.x)), max(vec3<i32>(1i, u_input.c.x, u_input.d), vec3<i32>(u_input.d, u_input.c.x, 5502i) | vec3<i32>(u_input.c.x, 1i, 0i)), !select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), true)), u_input.d, u_input.c.x), vec4<i32>(_wgslsmith_sub_i32(u_input.c.x, u_input.d), ~_wgslsmith_mult_i32(-24359i, u_input.d), 1i, u_input.c.x), vec3<f32>(_wgslsmith_f_op_f32(sign(402f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -882f), _wgslsmith_f_op_f32(max(526f, -2116f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -725f))) * _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-434f, 1000f))))), true);
    var var_1 = 4294967295u;
    let var_2 = func_2();
    let var_3 = vec2<u32>(_wgslsmith_dot_vec3_u32(countOneBits(abs(countOneBits(vec3<u32>(69803u, 30758u, u_input.b)))), countOneBits(vec3<u32>(1u << (u_input.a % 32u), ~u_input.a, 1u))), 3661u);
    global1 = ~2147483647i;
    var_1 = ~1u;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(min(u_input.a, reverseBits(1u << (u_input.b % 32u))), u_input.a << (var_3.x % 32u)), var_2.b.zy, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-440f + var_2.b.x), _wgslsmith_f_op_f32(sign(167f)))) + _wgslsmith_f_op_f32(func_2().b.x * var_2.b.x)));
}

