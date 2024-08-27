struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-1000f, -1180f, -1329f);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1777f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1373f * 347f))) + _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global0.x, global0.x), global0.x, false))))) * 433f);
}

fn func_4(arg_0: u32, arg_1: f32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1150f, global0.x, arg_1, global0.x) + vec4<f32>(834f, arg_1, -711f, 938f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 996f, global0.x, 271f) * vec4<f32>(global0.x, 450f, -1326f, arg_1))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.x, 685f, 434f, arg_1))))))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-547f + -658f));
    global0 = var_0.yyz;
    let var_2 = true;
    let var_3 = Struct_3(~(~abs(reverseBits(vec2<u32>(50577u, 42374u)))), _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(61511i, 1i, -21153i), -vec3<i32>(-2147483647i, 10180i, -20502i)), i32(-1i) * -27410i, _wgslsmith_sub_i32(1i, ~5037i), select(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(2849i, -42901i, 2147483647i), vec3<i32>(-10235i, 0i, -25985i)), all(vec4<bool>(false, true, true, true)))), -_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(-4041i, 41708i, 1i, 22005i)), vec4<i32>(-206i, -49428i, 33030i, 1i) >> (vec4<u32>(arg_0, arg_0, 49202u, 6831u) % vec4<u32>(32u)), ~vec4<i32>(1i, 3415i, 1655i, 1i))), 17165i > (52031i >> (select(u_input.a << (4294967295u % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(48463u, 16845u, u_input.a), vec3<u32>(u_input.a, arg_0, 1u)), !var_2) % 32u)));
    return ~reverseBits(u_input.a ^ 37374u);
}

fn func_2() -> vec3<u32> {
    let var_0 = global0.x;
    var var_1 = vec4<u32>(~func_4(_wgslsmith_mod_u32(1u, select(4294967295u, 0u, true)), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(func_3()))), 36102u, func_4(~u_input.a, 934f), u_input.a);
    var var_2 = var_1.zzz;
    var_1 = _wgslsmith_clamp_vec4_u32(vec4<u32>(37951u, ~(u_input.a >> (56642u % 32u)) >> (u_input.a % 32u), u_input.a, var_2.x), min(vec4<u32>(_wgslsmith_dot_vec3_u32(var_1.wxz, _wgslsmith_add_vec3_u32(var_1.zxy, var_1.xxw)), _wgslsmith_mult_u32(var_1.x | var_1.x, ~10615u), _wgslsmith_div_u32(func_4(16136u, global0.x), 0u), _wgslsmith_mod_u32(var_2.x, ~4294967295u)), reverseBits(~vec4<u32>(973u, var_2.x, u_input.a, var_1.x) >> (~vec4<u32>(var_2.x, var_2.x, u_input.a, var_2.x) % vec4<u32>(32u)))), ~(countOneBits(max(vec4<u32>(var_1.x, 44210u, 4294967295u, 122972u), vec4<u32>(10184u, 63335u, u_input.a, u_input.a))) ^ ~(vec4<u32>(8581u, 4294967295u, 1u, var_2.x) ^ vec4<u32>(1u, 43723u, 1u, 0u))));
    let var_3 = Struct_3(~(~(~var_1.yw)) >> (~vec2<u32>(4294967295u, 4294967295u | var_1.x) % vec2<u32>(32u)), countOneBits(select(vec4<i32>(0i, 0i, -1i, 33205i), ~vec4<i32>(4021i, -2147483647i, -55141i, 0i), vec4<bool>(true, true, true, true))) ^ _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, max(-14786i, -2147483647i), _wgslsmith_div_i32(-20273i, -34934i), ~(-23469i)), _wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(0i, -2147483647i, -51121i, 2147483647i)), select(vec4<i32>(40126i, -2147483647i, -3421i, 1i), vec4<i32>(38834i, -7794i, 0i, 2147483647i), vec4<bool>(false, true, true, false))), -vec4<i32>(28763i, 46160i, 4054i, -8519i)), true);
    return ~vec3<u32>(var_1.x, 1u, 0u);
}

fn func_1(arg_0: u32, arg_1: vec4<i32>, arg_2: vec4<bool>, arg_3: Struct_1) -> vec3<i32> {
    let var_0 = !(!(!select(!arg_2, arg_2, select(arg_2, vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x), vec4<bool>(true, false, arg_2.x, arg_2.x)))));
    var var_1 = _wgslsmith_mult_u32(18494u, arg_0);
    let var_2 = func_2();
    var var_3 = -select(_wgslsmith_mult_vec4_i32(arg_1, arg_1), _wgslsmith_mult_vec4_i32(~vec4<i32>(21202i, 58142i, -12389i, -1i), ~vec4<i32>(7389i, arg_1.x, arg_1.x, -2147483647i)) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(30642u, 1u, 4294967295u, 4294967295u), min(vec4<u32>(u_input.a, 81917u, 41204u, 1u), vec4<u32>(1u, 57511u, 74222u, var_2.x))) % vec4<u32>(32u)), select(var_0, select(arg_2, var_0, arg_2.x), !(!arg_2.x)));
    var var_4 = false || var_0.x;
    return vec3<i32>(1i, ~countOneBits(var_3.x) >> (_wgslsmith_dot_vec3_u32(countOneBits(~vec3<u32>(var_2.x, 3858u, var_2.x)), max(var_2, _wgslsmith_mult_vec3_u32(var_2, vec3<u32>(45130u, 39682u, 19504u)))) % 32u), select(abs(var_3.x), -10863i, true));
}

fn func_5(arg_0: vec3<i32>, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec2<bool>) -> vec2<bool> {
    global0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, arg_2.a, global0.x) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + _wgslsmith_f_op_f32(global0.x - 1300f)), arg_2.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1403f, arg_2.a)), _wgslsmith_f_op_f32(select(-1581f, -830f, arg_3.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a, _wgslsmith_f_op_f32(step(693f, arg_2.a)), _wgslsmith_f_op_f32(1062f * -229f))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.x, 128f, 494f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a, 352f, global0.x))))))));
    let var_0 = Struct_3(arg_1.zz, firstLeadingBit(~vec4<i32>(71385i, -1i, _wgslsmith_div_i32(arg_0.x, arg_0.x), 2147483647i)), true);
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(606f - global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1255f - 1194f) + _wgslsmith_div_f32(-1000f, global0.x)), arg_2.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(458f, arg_2.a, arg_2.a), vec3<f32>(-349f, arg_2.a, -449f))))));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_div_f32(global0.x, -236f), _wgslsmith_div_f32(arg_2.a, arg_2.a), _wgslsmith_f_op_f32(-global0.x)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(123f, -373f, 1390f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a, global0.x, global0.x))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, arg_2.a, global0.x) * vec3<f32>(global0.x, arg_2.a, 648f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-547f, arg_2.a, 1142f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(2049f, global0.x, global0.x))), var_0.c))));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1160f, arg_2.a, 192f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-167f, global0.x, global0.x))))) * vec3<f32>(_wgslsmith_f_op_f32(global0.x * arg_2.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), 1000f));
    return vec2<bool>(var_0.c, false);
}

fn func_6(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_2) -> vec2<u32> {
    let var_0 = Struct_2(arg_2.a, arg_2.b | ~abs(arg_2.b), Struct_1(_wgslsmith_f_op_f32(max(-1243f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1976f - arg_2.c.a), 1f))))), arg_2.d);
    var var_1 = vec2<bool>(true, !(!(-474f > _wgslsmith_div_f32(-2413f, arg_2.c.a))));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_2.c.a, -1739f, 834f))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, arg_2.c.a, -1000f)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.x, -1000f, 1840f))))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1177f, -791f, -1067f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, -212f))))) * _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, var_0.c.a, arg_2.c.a)), vec3<f32>(arg_2.c.a, -1822f, arg_2.c.a)), vec3<f32>(var_0.c.a, _wgslsmith_f_op_f32(f32(-1f) * -606f), _wgslsmith_f_op_f32(-global0.x)))));
    var_1 = vec2<bool>(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -1i, arg_0), vec3<i32>(arg_0, 39158i, arg_0) & vec3<i32>(arg_0, arg_0, -1i)), arg_0) == arg_0, any(!vec3<bool>(var_1.x, arg_2.a.x, false)));
    global0 = var_2;
    return ~vec2<u32>(~(~arg_2.d ^ func_2().x), ~firstTrailingBit(firstTrailingBit(arg_2.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(!(!select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)))), func_6(reverseBits(firstTrailingBit(firstTrailingBit(-15281i))), ~select(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 0u, 67635u, 75666u), vec4<u32>(1u, u_input.a, 0u, 0u)), vec4<u32>(u_input.a, u_input.a, 18204u, 0u), vec4<bool>(true, true, true, true)), Struct_2(func_5(func_1(9069u, vec4<i32>(36734i, -1i, 0i, 1i), vec4<bool>(false, false, true, true), Struct_1(-2522f)), ~vec3<u32>(4294967295u, 100372u, u_input.a), Struct_1(-1260f), vec2<bool>(true, true)), ~vec2<u32>(u_input.a, u_input.a), Struct_1(_wgslsmith_f_op_f32(floor(467f))), 1u)), Struct_1(_wgslsmith_f_op_f32(max(-152f, global0.x))), u_input.a);
    let var_1 = vec3<u32>(countOneBits(0u), ~_wgslsmith_div_u32(func_2().x, 1u), 24248u);
    global0 = vec3<f32>(var_0.c.a, -1257f, var_0.c.a);
    var var_2 = firstLeadingBit(_wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.a, _wgslsmith_dot_vec2_u32(var_0.b, var_0.b)), 0u), _wgslsmith_sub_u32(var_1.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, var_1.x), vec2<u32>(u_input.a, 0u)) << (~6943u % 32u))));
    var var_3 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2657f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.x))), var_0.c.a), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -1000f, global0.x))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.x, global0.x, select(var_0.a.x, var_0.a.x, true)))) > 670f));
    var var_4 = 1i;
    var_4 = firstLeadingBit(-1i);
    var_2 = _wgslsmith_dot_vec3_u32(var_1, ~_wgslsmith_div_vec3_u32(~(~var_1), ~vec3<u32>(var_1.x, var_0.d, 0u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_add_u32(var_1.x, 29734u), 66065u, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(var_1.x, 51139u), 0u), ~var_0.b & vec2<u32>(8353u, var_0.d)), u_input.a), select(var_1.x, ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 3158u, 0u, 0u), vec4<u32>(71705u, u_input.a, var_1.x, 2500u))), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.a, var_3.x, -1685f, var_0.c.a)))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(856f, var_0.c.a, var_3.x, 570f)), vec4<f32>(-524f, _wgslsmith_f_op_f32(f32(-1f) * -601f), 904f, -293f), vec4<bool>(false, var_0.a.x, var_0.a.x | var_0.a.x, all(vec2<bool>(false, var_0.a.x)))))));
}

