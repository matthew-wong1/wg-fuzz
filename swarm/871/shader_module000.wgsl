struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: f32,
    d: vec2<u32>,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
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

var<private> global0: vec4<u32>;

var<private> global1: array<vec4<i32>, 29>;

var<private> global2: array<vec3<u32>, 23>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_3, arg_1: bool) -> f32 {
    let var_0 = Struct_3(arg_0.a, arg_0.b, -1325f, ~arg_0.b.a.d, max(global0.x, u_input.a.x) & arg_0.b.b.c);
    var var_1 = vec3<i32>(-1i, u_input.b.x, abs(firstTrailingBit(-u_input.d)) | -27421i);
    let var_2 = vec4<f32>(-1073f, -1325f, arg_0.c, 342f);
    global0 = _wgslsmith_add_vec4_u32(~((~vec4<u32>(0u, 0u, arg_0.d.x, u_input.a.x) | arg_0.b.c) | arg_0.b.c), vec4<u32>(firstTrailingBit(u_input.a.x), 15013u, u_input.a.x, var_0.d.x));
    var var_3 = select(vec2<bool>(arg_0.b.b.b, true), vec2<bool>(true, true), all(!select(vec4<bool>(false, true, arg_0.b.a.b, arg_0.b.a.b), vec4<bool>(var_0.b.b.a, arg_0.b.a.b, false, true), !var_0.b.a.b)));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f)))));
}

fn func_2(arg_0: bool) -> vec2<f32> {
    var var_0 = -1053f;
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1543f + -197f), _wgslsmith_f_op_f32(f32(-1f) * -292f))), 1900f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_3(Struct_1(true, arg_0, 24733u, u_input.a.xx), Struct_2(Struct_1(arg_0, arg_0, 0u, u_input.a.yy), Struct_1(arg_0, arg_0, 0u, vec2<u32>(38965u, 1u)), vec4<u32>(9528u, 15668u, 4294967295u, u_input.a.x)), 725f, global0.xx, ~4294967295u), arg_0))), all(!select(!vec2<bool>(true, arg_0), !vec2<bool>(arg_0, false), u_input.a.x <= 86611u))));
    var var_2 = u_input.a;
    var_0 = _wgslsmith_f_op_f32(select(-714f, 661f, arg_0));
    var var_3 = Struct_3(Struct_1(arg_0, !any(vec4<bool>(true, false, true, false)) && arg_0, 41399u, abs(var_2.zx)), Struct_2(Struct_1(any(!vec3<bool>(false, arg_0, false)), arg_0, ~(0u >> (global0.x % 32u)), ~select(vec2<u32>(var_2.x, 4294967295u), vec2<u32>(20987u, global0.x), true)), Struct_1(false | (u_input.b.x >= 31304i), true, ~var_2.x ^ 0u, select(u_input.a.yy, ~vec2<u32>(13881u, 39013u), all(vec4<bool>(true, false, arg_0, arg_0)))), vec4<u32>(~var_2.x, ~12351u, var_2.x, 1u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1664f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 + 992f) * var_1))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_1)), var_1)), vec2<u32>(~abs(u_input.a.x), ~_wgslsmith_add_u32(select(109324u, u_input.a.x, arg_0), 0u)), u_input.a.x);
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, -622f)), vec2<f32>(_wgslsmith_f_op_f32(trunc(var_3.c)), _wgslsmith_f_op_f32(min(var_3.c, 941f))))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(var_1, -1000f)), _wgslsmith_f_op_f32(var_3.c * -1680f))))));
}

fn func_1(arg_0: u32, arg_1: Struct_3) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_2(all(!(!select(vec2<bool>(true, false), vec2<bool>(false, true), arg_1.b.b.b)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(125f, _wgslsmith_f_op_f32(-arg_1.c), _wgslsmith_f_op_f32(select(arg_1.c, -1576f, arg_1.a.a)))))));
    global1 = array<vec4<i32>, 29>();
    let var_2 = select(-_wgslsmith_mult_vec3_i32(~(~vec3<i32>(-29633i, u_input.b.x, 11417i)), _wgslsmith_div_vec3_i32(abs(vec3<i32>(-28927i, u_input.b.x, 1i)), _wgslsmith_mod_vec3_i32(vec3<i32>(27534i, 41650i, u_input.d), vec3<i32>(14651i, -18298i, u_input.d)))), firstLeadingBit(vec3<i32>(u_input.d, -u_input.d, _wgslsmith_clamp_i32(u_input.d >> (arg_0 % 32u), u_input.d, _wgslsmith_div_i32(u_input.c, 7504i)))), !(!arg_1.b.b.b));
    let var_3 = Struct_1(any(select(select(!vec2<bool>(true, arg_1.a.b), select(vec2<bool>(true, false), vec2<bool>(arg_1.b.a.a, true), vec2<bool>(arg_1.a.a, arg_1.b.b.b)), true), select(select(vec2<bool>(false, arg_1.b.b.b), vec2<bool>(true, arg_1.b.a.b), vec2<bool>(arg_1.b.b.a, false)), !vec2<bool>(false, arg_1.a.b), select(arg_1.a.b, false, arg_1.b.a.b)), !any(vec4<bool>(true, arg_1.a.a, false, false)))), any(!vec4<bool>(true, arg_1.a.b & arg_1.a.a, true, arg_1.a.b)), ~_wgslsmith_mod_u32(_wgslsmith_div_u32(~4294967295u, u_input.a.x), 4294967295u), countOneBits(vec2<u32>(_wgslsmith_mult_u32(abs(u_input.a.x), _wgslsmith_mod_u32(26515u, arg_0)), abs(u_input.a.x))));
    return arg_1.b;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: i32, arg_3: vec4<bool>) -> Struct_2 {
    var var_0 = vec2<i32>(-select(u_input.d ^ ~u_input.b.x, _wgslsmith_dot_vec3_i32(~vec3<i32>(10921i, 2147483647i, -2147483647i), select(vec3<i32>(arg_2, -1i, 10930i), vec3<i32>(1i, arg_2, arg_2), vec3<bool>(false, true, true))), arg_3.x), countOneBits(countOneBits(arg_2 >> (u_input.a.x % 32u))) & ~0i);
    var var_1 = _wgslsmith_add_vec4_i32(~(-select(vec4<i32>(var_0.x, arg_2, u_input.c, -1i), countOneBits(global1[_wgslsmith_index_u32(75045u, 29u)]), 1110f > arg_1.c)), ~global1[_wgslsmith_index_u32(~arg_0.c.x, 29u)]);
    global1 = array<vec4<i32>, 29>();
    let var_2 = vec2<u32>(1u, ~global0.x);
    var_1 = ~(~_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(-global1[_wgslsmith_index_u32(37822u, 29u)], _wgslsmith_mult_vec4_i32(global1[_wgslsmith_index_u32(arg_1.d.x, 29u)], global1[_wgslsmith_index_u32(9873u, 29u)])), ~global1[_wgslsmith_index_u32(46239u, 29u)]));
    return Struct_2(Struct_1(arg_3.x, arg_0.b.a, 36064u, var_2), arg_0.a, ~(~_wgslsmith_mod_vec4_u32(arg_0.c, ~arg_0.c)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1) -> vec4<u32> {
    let var_0 = ~func_4(arg_0, Struct_3(Struct_1(all(vec3<bool>(false, arg_0.b.b, true)), arg_0.a.a, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(27720u, global0.x)), arg_1.d), arg_0, -499f, _wgslsmith_mult_vec2_u32(global0.yz, arg_0.b.d), countOneBits(43023u)), u_input.b.x, vec4<bool>(all(select(vec4<bool>(false, arg_0.b.a, arg_0.a.a, true), vec4<bool>(arg_1.a, arg_1.b, true, true), true)), arg_0.a.a, !(!arg_0.b.a), false)).c.zyw;
    let var_1 = !(!vec3<bool>(true, true != (51095i < u_input.b.x), all(select(vec2<bool>(true, arg_1.b), vec2<bool>(arg_0.a.a, false), arg_1.a))));
    global2 = array<vec3<u32>, 23>();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -839f));
    return ~abs(vec4<u32>(~(~0u), reverseBits(_wgslsmith_mod_u32(var_0.x, 18803u)), 3659u, 1u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = countOneBits(func_5(func_4(func_1(81823u, Struct_3(Struct_1(true, true, 0u, u_input.a.xy), Struct_2(Struct_1(true, false, 4294967295u, vec2<u32>(global0.x, 39099u)), Struct_1(true, false, u_input.a.x, u_input.a.xz), vec4<u32>(11477u, u_input.a.x, global0.x, 1u)), 149f, vec2<u32>(u_input.a.x, u_input.a.x), 1u)), Struct_3(Struct_1(false, true, u_input.a.x, u_input.a.zx), Struct_2(Struct_1(true, true, global0.x, vec2<u32>(global0.x, u_input.a.x)), Struct_1(false, true, global0.x, vec2<u32>(global0.x, global0.x)), vec4<u32>(79799u, 1u, 12305u, global0.x)), -791f, vec2<u32>(global0.x, 0u), 8803u), u_input.c << (0u % 32u), vec4<bool>(true, true, true, true)), Struct_1(all(vec4<bool>(true, false, false, false)), true, global0.x, u_input.a.zz)) ^ vec4<u32>(1u, min(~9093u, 0u), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(32792u, u_input.a.x, 1u, global0.x), vec4<u32>(77601u, u_input.a.x, global0.x, global0.x)), vec4<u32>(u_input.a.x, 7044u, global0.x, u_input.a.x) | vec4<u32>(u_input.a.x, u_input.a.x, 0u, global0.x)), abs(~0u)));
    global2 = array<vec3<u32>, 23>();
    let var_0 = !func_4(Struct_2(func_4(func_4(Struct_2(Struct_1(true, true, 1u, vec2<u32>(global0.x, global0.x)), Struct_1(true, false, u_input.a.x, global0.yz), vec4<u32>(1u, u_input.a.x, u_input.a.x, 42518u)), Struct_3(Struct_1(false, false, 2188u, u_input.a.xz), Struct_2(Struct_1(false, false, 1u, vec2<u32>(global0.x, 0u)), Struct_1(true, false, global0.x, u_input.a.zx), vec4<u32>(global0.x, 0u, 4294967295u, global0.x)), 645f, u_input.a.yx, 67263u), u_input.d, vec4<bool>(true, true, true, false)), Struct_3(Struct_1(false, true, 0u, u_input.a.xx), Struct_2(Struct_1(false, true, u_input.a.x, vec2<u32>(u_input.a.x, global0.x)), Struct_1(true, false, 1u, u_input.a.zz), vec4<u32>(35298u, 59065u, global0.x, global0.x)), -314f, u_input.a.xz, global0.x), u_input.b.x << (1u % 32u), vec4<bool>(false, false, true, true)).b, func_4(Struct_2(Struct_1(false, true, 0u, global0.xx), Struct_1(false, false, global0.x, global0.zz), vec4<u32>(3561u, 4294967295u, u_input.a.x, global0.x)), Struct_3(Struct_1(false, false, 86504u, vec2<u32>(global0.x, u_input.a.x)), Struct_2(Struct_1(true, false, 35040u, global0.yy), Struct_1(false, true, 0u, vec2<u32>(1u, 4294967295u)), vec4<u32>(4294967295u, 1330u, 33343u, global0.x)), 608f, vec2<u32>(u_input.a.x, 30880u), 4294967295u), -u_input.b.x, select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), true)).b, ~vec4<u32>(4294967295u, u_input.a.x, 24737u, global0.x)), Struct_3(func_4(Struct_2(Struct_1(false, false, 6673u, u_input.a.yz), Struct_1(true, false, global0.x, global0.zy), vec4<u32>(1990u, u_input.a.x, 45727u, 13528u)), Struct_3(Struct_1(true, true, global0.x, global0.wy), Struct_2(Struct_1(true, false, u_input.a.x, u_input.a.zz), Struct_1(false, true, global0.x, vec2<u32>(1u, u_input.a.x)), vec4<u32>(u_input.a.x, global0.x, 4294967295u, u_input.a.x)), -801f, vec2<u32>(global0.x, 65471u), 92792u), ~u_input.d, vec4<bool>(true, true, true, false)).a, func_4(Struct_2(Struct_1(false, false, u_input.a.x, vec2<u32>(global0.x, 1u)), Struct_1(true, false, u_input.a.x, vec2<u32>(26038u, 4294967295u)), vec4<u32>(u_input.a.x, u_input.a.x, global0.x, 4294967295u)), Struct_3(Struct_1(false, false, global0.x, vec2<u32>(global0.x, global0.x)), Struct_2(Struct_1(true, true, 113994u, global0.xz), Struct_1(true, true, 4294967295u, vec2<u32>(4294967295u, 91886u)), vec4<u32>(u_input.a.x, 21142u, u_input.a.x, u_input.a.x)), -935f, vec2<u32>(1u, 4294967295u), 5332u), ~31578i, select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), false)), _wgslsmith_f_op_f32(430f * -392f), vec2<u32>(1u, _wgslsmith_dot_vec2_u32(u_input.a.yz, global0.xw)), 1u), _wgslsmith_div_i32(u_input.c, -32298i), vec4<bool>(false, true, ~1i >= ~u_input.c, false)).a.b;
    global1 = array<vec4<i32>, 29>();
    let var_1 = abs(1u);
    global1 = array<vec4<i32>, 29>();
    let var_2 = ~countOneBits(firstTrailingBit(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, -35397i, 0i), vec3<i32>(u_input.c, u_input.b.x, -2076i))) << (u_input.a % vec3<u32>(32u)));
    global2 = array<vec3<u32>, 23>();
    let var_3 = vec2<bool>(true, false);
    let x = u_input.a;
    s_output = StorageBuffer(0u);
}

