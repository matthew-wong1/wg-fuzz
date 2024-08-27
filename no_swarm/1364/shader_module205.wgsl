struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<bool>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-36928i, -25079i);

var<private> global1: i32 = -1i;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: bool, arg_1: bool) -> f32 {
    var var_0 = !arg_0;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-565f, _wgslsmith_f_op_f32(min(1032f, -704f))), 1f)));
    let var_2 = vec3<bool>(true & !arg_0, !(!all(!vec2<bool>(arg_0, false))), false);
    let var_3 = Struct_1(select(select(vec4<bool>(any(var_2.yz), false, true, any(var_2.zy)), vec4<bool>(false, true, arg_1, true), !(var_2.x | arg_1)), select(!vec4<bool>(true, false, true, arg_0), vec4<bool>(arg_0 & arg_0, var_1.x == -654f, any(vec4<bool>(true, false, arg_1, arg_1)), true), !arg_1), false), ~u_input.c, _wgslsmith_sub_vec3_i32(~select(-vec3<i32>(-2147483647i, 1i, 0i), -vec3<i32>(11021i, 15871i, u_input.b.x), vec3<bool>(true, false, false)), _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(~vec3<i32>(1i, -2147483647i, global0.x), vec3<i32>(global0.x, 1i, 3645i)), vec3<i32>(max(global0.x, u_input.d), max(global0.x, u_input.d), 1i))));
    var var_4 = select(select(!select(select(var_2.zx, var_2.zx, true), vec2<bool>(arg_0, arg_1), any(vec2<bool>(true, true))), !vec2<bool>(arg_1 || true, all(var_2.yx)), !(!var_3.a.yy)), vec2<bool>(false, false), vec2<bool>(!all(var_3.a), !(-64084i > u_input.b.x)));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(var_1.x))));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<u32>) -> vec4<bool> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(func_3(!(!(-41106i >= global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.x))) != 639f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1517f * 1350f)))) * _wgslsmith_f_op_f32(-arg_0.x)), 811f);
    let var_1 = Struct_3(vec4<f32>(571f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-470f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.x + var_0.x))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.x * var_0.x), -1217f)), _wgslsmith_f_op_f32(floor(var_0.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + arg_0.x)), -382f)), Struct_1(select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true)), u_input.c == abs(9413u)), ~((u_input.a.x << (5578u % 32u)) << (0u % 32u)), vec3<i32>(global0.x, reverseBits(global0.x >> (u_input.a.x % 32u)), global0.x)), (vec3<u32>(reverseBits(arg_1.x), ~16310u, ~arg_1.x) | (_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, arg_1.x, arg_1.x), vec3<u32>(6584u, arg_1.x, 0u)) << (~vec3<u32>(arg_1.x, u_input.a.x, u_input.a.x) % vec3<u32>(32u)))) ^ (~(vec3<u32>(11000u, u_input.c, 24052u) & vec3<u32>(7058u, 0u, 6217u)) >> (reverseBits(vec3<u32>(22456u, 53814u, u_input.a.x)) % vec3<u32>(32u))));
    var_0 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(287f * 2379f), 119f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(1131f)))))));
    var var_2 = Struct_2(Struct_1(vec4<bool>(var_1.b.a.x, min(0i, var_1.b.c.x) == _wgslsmith_mod_i32(1i, u_input.b.x), all(var_1.b.a), !all(vec3<bool>(true, true, true))), abs(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 1u, var_1.b.b), var_1.c | var_1.c)), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.b.c.x, 21807i), vec2<i32>(global0.x, -1i)), _wgslsmith_mult_i32(-16889i, var_1.b.c.x), ~var_1.b.c.x) ^ vec3<i32>(u_input.d, var_1.b.c.x, _wgslsmith_mod_i32(var_1.b.c.x, global0.x))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.wyy + arg_0.yxx));
    return select(vec4<bool>(any(var_2.a.a) == var_2.a.a.x, false, all(vec4<bool>(all(var_1.b.a.xzz), true, false, var_1.b.a.x)), true), !select(vec4<bool>(var_2.a.a.x, var_1.b.a.x, var_2.a.a.x, all(vec3<bool>(true, true, var_2.a.a.x))), vec4<bool>(true, var_2.a.a.x, all(var_1.b.a.wyx), var_2.a.a.x), var_2.a.a), !(!(!vec4<bool>(true, var_1.b.a.x, false, var_2.a.a.x))));
}

fn func_1(arg_0: vec4<i32>) -> vec4<f32> {
    global1 = -49855i;
    let var_0 = !func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(455f, -1041f, 616f, 245f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-2234f, -585f, 1000f, 120f) + vec4<f32>(207f, 114f, 2567f, -307f)))), vec2<u32>(~abs(u_input.c), 4294967295u));
    let var_1 = _wgslsmith_sub_u32(4294967295u >> (min(~(~u_input.a.x), 1371u) % 32u), 106145u);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-1006f, _wgslsmith_f_op_f32(f32(-1f) * -1243f)), -687f, _wgslsmith_f_op_f32(-407f + _wgslsmith_f_op_f32(1218f + 530f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-438f))))));
    global0 = -vec2<i32>(countOneBits(i32(-1i) * -25940i) ^ abs(-arg_0.x), arg_0.x);
    return var_2;
}

fn func_4(arg_0: i32, arg_1: vec4<f32>) -> Struct_3 {
    global0 = u_input.b;
    var var_0 = func_2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(arg_1.x - arg_1.x), _wgslsmith_f_op_f32(655f * 245f), _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(arg_1.x * -1080f)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-516f, 262f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(false, false)))), -542f))), ~vec2<u32>(~(~u_input.c), u_input.a.x));
    let var_1 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, 2179f)), -409f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(!var_0.x, u_input.c < u_input.a.x))), _wgslsmith_f_op_f32(round(-161f))), Struct_1(select(func_2(arg_1, _wgslsmith_div_vec2_u32(u_input.a, u_input.a)), vec4<bool>(true, true, 162f > arg_1.x, false), !vec4<bool>(var_0.x, true, var_0.x, false)), 1u, abs(-(~vec3<i32>(arg_0, 71047i, 2147483647i)))), vec3<u32>(~_wgslsmith_mult_u32(4294967295u, ~u_input.a.x), _wgslsmith_add_u32(u_input.c, ~u_input.a.x & _wgslsmith_sub_u32(938u, u_input.a.x)), 3834u));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(-1023f)), _wgslsmith_f_op_f32(ceil(-774f)), -395f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -484f))))));
    global1 = max(u_input.d, reverseBits(u_input.d | (global0.x & 61756i))) >> (~(~64215u) % 32u);
    let var_1 = func_4(_wgslsmith_dot_vec4_i32(vec4<i32>(7797i, u_input.d, i32(-1i) * -79036i, -8171i), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, global0.x, u_input.b.x), _wgslsmith_sub_vec3_i32(vec3<i32>(global0.x, global0.x, u_input.b.x), vec3<i32>(3596i, 2147483647i, -21395i))), _wgslsmith_mod_i32(u_input.d, -18746i), -(global0.x | global0.x), -75109i)), _wgslsmith_f_op_vec4_f32(var_0 + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.d, global0.x, 17462i, 2147483647i), vec4<i32>(global0.x, -2147483647i, u_input.d, -1i)))), vec4<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -376f), var_0.x)))));
    var var_2 = Struct_2(var_1.b);
    let var_3 = Struct_4(func_4(abs(global0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-942f, _wgslsmith_f_op_f32(-602f - var_0.x), _wgslsmith_f_op_f32(sign(564f)), 620f))), vec3<bool>(var_2.a.a.x, false, !func_2(func_4(var_1.b.c.x, vec4<f32>(298f, -1116f, -2069f, 720f)).a, ~u_input.a).x), vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(90285u, 0u, 12217u), var_1.c), u_input.c, ~var_2.a.b), _wgslsmith_mod_u32(_wgslsmith_sub_u32(var_1.c.x, var_2.a.b), u_input.a.x), var_2.a.b));
    var var_4 = var_3;
    let var_5 = Struct_3(vec4<f32>(499f, _wgslsmith_f_op_f32(f32(-1f) * -1853f), var_1.a.x, 570f), func_4(0i, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_3.a.a.x, var_0.x, 1095f, 191f))))))).b, vec3<u32>(select(select(_wgslsmith_div_u32(var_3.c.x, var_3.a.c.x), var_4.c.x, false), var_1.b.b, !var_3.b.x && (u_input.c == 4294967295u)), 4294967295u, select(1u, 4294967295u, _wgslsmith_f_op_f32(f32(-1f) * -1176f) < _wgslsmith_div_f32(-759f, var_1.a.x))));
    var_4 = Struct_4(func_4(i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(1i, var_2.a.c.x, var_4.a.b.c.x, var_4.a.b.c.x), vec4<i32>(45953i, u_input.b.x, var_5.b.c.x, u_input.d)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-308f, -272f, 311f, var_0.x) * var_4.a.a) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.a.a.x, 612f, var_1.a.x, 1281f) * vec4<f32>(-865f, var_1.a.x, var_3.a.a.x, 624f))))), !var_3.b, vec3<u32>(_wgslsmith_add_u32(var_3.a.b.b, 1u) | ~(~0u), ~abs(var_2.a.b) | var_5.c.x, _wgslsmith_div_u32(u_input.a.x, _wgslsmith_clamp_u32(var_4.a.c.x, 11702u, ~var_4.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec4<u32>(~(~98985u), ~(~0u), var_4.c.x, ~(~var_1.c.x))), var_5.c);
}

