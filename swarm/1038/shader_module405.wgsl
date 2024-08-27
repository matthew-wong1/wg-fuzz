struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec4<i32>,
    d: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: vec4<f32>,
    d: f32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: f32,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<u32>,
    d: vec4<bool>,
}

struct Struct_5 {
    a: i32,
    b: u32,
    c: bool,
    d: vec2<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: u32, arg_3: f32) -> bool {
    let var_0 = arg_1.a.c.xzz;
    let var_1 = 23560i;
    let var_2 = arg_1.a.b;
    let var_3 = Struct_5(select(min(i32(-1i) * -55045i, 20342i | ~u_input.c.x), 1i, arg_2 < ~10604u), abs(~1u), true | any(select(select(arg_1.d.wx, arg_0.xx, arg_0.x), vec2<bool>(true, false), true)), vec2<bool>(arg_0.x, arg_1.d.x), Struct_1(!arg_0.x, -countOneBits(u_input.c.zwy >> (vec3<u32>(arg_1.c.x, 12655u, arg_1.c.x) % vec3<u32>(32u))), abs(vec4<i32>(firstLeadingBit(arg_1.b.b.x), ~0i, max(arg_1.a.a.x, -13894i), ~u_input.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2598f * _wgslsmith_f_op_f32(847f + 1000f)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2, 1000f) - 1489f))));
    var var_4 = min(min(firstLeadingBit(countOneBits(vec2<i32>(-43253i, u_input.c.x))), _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, _wgslsmith_mod_i32(u_input.c.x, 17814i)), u_input.c.zz)), -(~(-var_3.e.b.xz >> (arg_1.c % vec2<u32>(32u)))));
    return true;
}

fn func_4(arg_0: vec4<i32>, arg_1: bool, arg_2: Struct_5) -> f32 {
    let var_0 = Struct_5(-firstTrailingBit(u_input.a), _wgslsmith_mod_u32(arg_2.b, _wgslsmith_add_u32(firstTrailingBit(abs(54963u)), 3627u ^ _wgslsmith_sub_u32(arg_2.b, arg_2.b))), true, !select(vec2<bool>(any(vec2<bool>(false, arg_1)), arg_1), arg_2.d, select(!arg_2.d, vec2<bool>(false, arg_1), false)), Struct_1(!(48144u == ~arg_2.b), vec3<i32>(~(-u_input.c.x), ~(~35047i), 49698i), -vec4<i32>(-35352i, arg_2.e.b.x, _wgslsmith_sub_i32(arg_2.e.b.x, -15205i), i32(-1i) * -2073i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-137f * 798f))));
    let var_1 = _wgslsmith_add_vec2_u32(~select(~vec2<u32>(3233u, 4294967295u) >> (vec2<u32>(var_0.b, 1u) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(21600u, var_0.b) << (vec2<u32>(0u, 1u) % vec2<u32>(32u)), abs(vec2<u32>(var_0.b, 1u)), vec2<u32>(38862u, 1u) & vec2<u32>(arg_2.b, 0u)), arg_1), ~(~select(vec2<u32>(arg_2.b, 21314u) | vec2<u32>(arg_2.b, var_0.b), vec2<u32>(arg_2.b, var_0.b) >> (vec2<u32>(51715u, var_0.b) % vec2<u32>(32u)), !arg_2.d)));
    return -1107f;
}

fn func_2() -> vec3<bool> {
    var var_0 = Struct_4(Struct_2(u_input.c.wzz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1253f - _wgslsmith_div_f32(264f, 255f))), vec4<f32>(_wgslsmith_f_op_f32(step(-307f, _wgslsmith_f_op_f32(-375f * -605f))), _wgslsmith_f_op_f32(func_4(u_input.c, func_3(vec3<bool>(true, true, false), Struct_4(Struct_2(vec3<i32>(-20600i, u_input.b.x, u_input.c.x), 589f, vec4<f32>(1000f, -363f, -109f, -1800f), 554f), Struct_1(false, u_input.c.xww, u_input.c, -2081f), vec2<u32>(33800u, 26754u), vec4<bool>(false, false, false, false)), 45374u, -713f), Struct_5(1i, 4294967295u, false, vec2<bool>(false, false), Struct_1(false, vec3<i32>(-1i, u_input.c.x, u_input.c.x), vec4<i32>(1i, u_input.c.x, 10710i, 0i), 495f)))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(290f * -155f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -435f), 687f, false))), Struct_1(any(vec3<bool>(true, func_3(vec3<bool>(true, true, false), Struct_4(Struct_2(vec3<i32>(-1862i, 2147483647i, -1i), 1163f, vec4<f32>(-885f, 101f, 822f, -439f), -163f), Struct_1(true, u_input.c.wzw, u_input.c, -1630f), vec2<u32>(657u, 21301u), vec4<bool>(true, false, true, false)), 1u, -815f), true)), u_input.c.wzz, max(_wgslsmith_add_vec4_i32(~u_input.c, u_input.c), ~vec4<i32>(u_input.a, u_input.b.x, u_input.b.x, u_input.c.x)), _wgslsmith_f_op_f32(func_4(max(vec4<i32>(0i, 18124i, 2147483647i, 2147483647i), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, u_input.a, -2147483647i, 2147483647i), u_input.c)), true, Struct_5(-2147483647i, ~30369u, true, vec2<bool>(true, true), Struct_1(true, vec3<i32>(u_input.b.x, u_input.b.x, u_input.c.x), u_input.c, -673f))))), ~vec2<u32>(~abs(1u), countOneBits(~4294967295u)), vec4<bool>(true, true, true, true));
    var var_1 = Struct_4(var_0.a, Struct_1(true, ~vec3<i32>(1i, 2147483647i, 2160i), ~u_input.c, -1000f), _wgslsmith_clamp_vec2_u32(~(~(vec2<u32>(5329u, 1u) >> (vec2<u32>(var_0.c.x, 1u) % vec2<u32>(32u)))), ~_wgslsmith_add_vec2_u32(reverseBits(vec2<u32>(29836u, 4294967295u)), _wgslsmith_mod_vec2_u32(var_0.c, vec2<u32>(var_0.c.x, 16214u))), firstTrailingBit(_wgslsmith_add_vec2_u32(~vec2<u32>(var_0.c.x, 1u), ~vec2<u32>(var_0.c.x, var_0.c.x)))), !vec4<bool>(_wgslsmith_f_op_f32(-var_0.a.d) < _wgslsmith_f_op_f32(trunc(var_0.b.d)), true, func_3(vec3<bool>(false, var_0.d.x, var_0.b.a), Struct_4(Struct_2(u_input.c.xyx, var_0.b.d, vec4<f32>(var_0.b.d, var_0.b.d, -162f, -483f), var_0.a.b), Struct_1(true, vec3<i32>(var_0.b.b.x, 12671i, u_input.c.x), var_0.b.c, -106f), vec2<u32>(1u, var_0.c.x), vec4<bool>(var_0.b.a, var_0.d.x, false, var_0.d.x)), 0u, _wgslsmith_f_op_f32(abs(var_0.a.c.x))), var_0.d.x));
    var var_2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-3489f * var_0.b.d), _wgslsmith_f_op_f32(444f * var_1.a.d)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.a.c.xy, vec2<f32>(-1301f, -1112f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a.c.zw + var_0.a.c.yx), vec2<f32>(var_1.b.d, -315f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-491f, 192f) + vec2<f32>(var_1.a.b, var_0.b.d)) * vec2<f32>(1000f, -1330f))))));
    var var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_4(reverseBits(u_input.c), (var_1.c.x << (9663u % 32u)) <= _wgslsmith_clamp_u32(1u, _wgslsmith_mod_u32(var_1.c.x, var_0.c.x), 4294967295u), Struct_5(u_input.c.x, var_1.c.x, var_0.d.x, vec2<bool>(any(var_1.d.zz), !var_1.b.a), Struct_1(var_1.b.a, -var_1.a.a, var_1.b.c, -728f))))));
    var_2 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_1.b.d, _wgslsmith_f_op_f32(round(1099f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))))), -178f);
    return !var_0.d.yyz;
}

fn func_5(arg_0: vec3<bool>) -> Struct_4 {
    let var_0 = select(firstTrailingBit(min(vec2<u32>(1u, 1u), ~vec2<u32>(0u, 4294967295u))), _wgslsmith_add_vec2_u32(select(~vec2<u32>(8103u, 29864u), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(0u, 43531u), vec2<u32>(29846u, 4007u)), !arg_0.yx) ^ ~_wgslsmith_add_vec2_u32(vec2<u32>(0u, 31538u), vec2<u32>(33981u, 1u)), vec2<u32>(_wgslsmith_clamp_u32(0u, 11545u, 10883u) & abs(140149u), select(firstTrailingBit(0u), 1u, true))), !(!select(!arg_0.zx, vec2<bool>(true, true), !arg_0.xx)));
    let var_1 = _wgslsmith_sub_vec3_u32(firstLeadingBit(_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(var_0.x, 4294967295u, 4294967295u), ~vec3<u32>(51177u, var_0.x, 1u)), vec3<u32>(var_0.x, var_0.x, 32564u) >> (reverseBits(vec3<u32>(596u, 1u, var_0.x)) % vec3<u32>(32u)))), ~(~reverseBits(firstTrailingBit(vec3<u32>(var_0.x, 0u, 55090u)))));
    let var_2 = 56378i;
    var var_3 = Struct_4(Struct_2(vec3<i32>(-2147483647i, 23044i, -_wgslsmith_div_i32(2147483647i, u_input.c.x)), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, 775f)))), vec4<f32>(-532f, _wgslsmith_f_op_f32(f32(-1f) * -963f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -743f) + _wgslsmith_f_op_f32(floor(336f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(844f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -442f)), -1000f, !(false & arg_0.x)))), Struct_1(!select(arg_0.x, arg_0.x, false) != arg_0.x, vec3<i32>(-_wgslsmith_add_i32(u_input.b.x, var_2), _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a, var_2, 1i), vec3<i32>(-2147483647i, u_input.c.x, 0i)), ~45533i), -vec4<i32>(u_input.b.x, -u_input.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, var_2, -2147483647i, -1i), vec4<i32>(-42800i, var_2, var_2, 1i)), var_2), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(762f + 1382f) * -297f))), vec2<u32>(28803u, _wgslsmith_mult_u32(var_1.x, firstLeadingBit(var_1.x))) ^ vec2<u32>(_wgslsmith_mod_u32(~var_1.x, _wgslsmith_dot_vec2_u32(var_0, var_0)), 66548u), !select(!vec4<bool>(false, arg_0.x, true, arg_0.x), vec4<bool>(true, var_0.x > 18257u, true, true), false));
    var var_4 = var_3.a.a;
    return Struct_4(var_3.a, Struct_1((var_1.x < ~0u) | true, -(~(~u_input.c.zyw)), select(_wgslsmith_mod_vec4_i32(vec4<i32>(var_3.a.a.x, var_2, 1i, var_4.x), vec4<i32>(var_4.x, 5589i, var_4.x, -1i)), u_input.c & u_input.c, var_3.d), _wgslsmith_f_op_f32(f32(-1f) * -770f)), abs(vec2<u32>(~(var_0.x << (var_0.x % 32u)), ~0u)), select(var_3.d, !vec4<bool>(!var_3.d.x, var_3.d.x, true, arg_0.x), true));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<bool>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-382f * -611f) * _wgslsmith_div_f32(-395f, _wgslsmith_f_op_f32(floor(-1050f))));
    var var_1 = 604f;
    let var_2 = !vec4<bool>(arg_1.x, true, arg_1.x, true);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0)));
    let var_4 = func_5(func_2());
    return ~reverseBits(var_4.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(vec3<u32>(1u, _wgslsmith_mult_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 8714u, 1u), vec3<u32>(12124u, 6893u, 3728u))), _wgslsmith_dot_vec4_u32(~vec4<u32>(37770u, 4294967295u, 4294967295u, 67019u), ~vec4<u32>(59545u, 0u, 135530u, 95882u))), vec3<u32>(func_1(~u_input.b, vec4<bool>(true, true, true, true)), reverseBits(1u), 681u << (1u % 32u))) | ~_wgslsmith_clamp_vec3_u32(vec3<u32>(~66898u, ~1u, ~1u), ~(~vec3<u32>(1u, 16214u, 1u)), abs(vec3<u32>(1u, 1u, 1u)));
    let var_1 = Struct_5(~(u_input.b.x >> (var_0.x % 32u)) & u_input.a, var_0.x, true, select(vec2<bool>(any(vec4<bool>(true, true, true, true)), func_3(func_5(vec3<bool>(true, false, false)).d.yyw, Struct_4(Struct_2(vec3<i32>(u_input.c.x, 18410i, 6719i), -1071f, vec4<f32>(2444f, -769f, 1770f, -1982f), 578f), Struct_1(true, vec3<i32>(u_input.a, u_input.c.x, 72065i), vec4<i32>(17374i, 2147483647i, -2147483647i, u_input.b.x), -1586f), var_0.xy, vec4<bool>(false, true, false, true)), func_5(vec3<bool>(true, true, false)).c.x, _wgslsmith_f_op_f32(f32(-1f) * -109f))), vec2<bool>(false, false), false), Struct_1(func_3(vec3<bool>(true, true, true), func_5(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false))), abs(var_0.x) >> ((1u ^ var_0.x) % 32u), func_5(vec3<bool>(true, true, true)).a.b), abs(u_input.c.wwx), firstTrailingBit(u_input.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1443f))))));
    let var_2 = u_input.b.x >= ~firstLeadingBit(-1i);
    var_0 = ~(~min(vec3<u32>(0u, 1u, 0u) >> (vec3<u32>(var_0.x, 0u, var_0.x) % vec3<u32>(32u)), select(vec3<u32>(var_0.x, 1u, var_0.x), vec3<u32>(42883u, var_1.b, 52927u), vec3<bool>(var_2, true, false))) << (select(firstLeadingBit(vec3<u32>(53386u, var_1.b, var_1.b)), _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(33453u, 4294967295u, 1u), vec3<u32>(1u, var_0.x, var_1.b)), vec3<u32>(var_0.x, var_0.x, 0u)), false) % vec3<u32>(32u)));
    var var_3 = _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(f32(-1f) * -361f)) == var_1.e.d;
    var var_4 = var_1.e;
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

