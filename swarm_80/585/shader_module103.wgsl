struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: bool,
    d: vec3<i32>,
    e: f32,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec2<bool>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> u32 {
    let var_0 = vec4<bool>(true, (firstTrailingBit(_wgslsmith_add_u32(u_input.a, u_input.a)) < u_input.b) | select(true, true, select(true, true, all(vec2<bool>(false, false)))), true || all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false))), true);
    global0 = -vec3<i32>(min(abs(-2147483647i), -global0.x), ~_wgslsmith_sub_i32(0i, 1i), -21679i);
    global0 = vec3<i32>(~(-(_wgslsmith_clamp_i32(global0.x, u_input.c, -30890i) << (abs(u_input.a) % 32u))), ~(~(-u_input.c)), 2147483647i);
    var var_1 = 89888u;
    var var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1212f, -897f, -170f)))))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-743f, _wgslsmith_f_op_f32(f32(-1f) * -194f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1668f, -165f))), true)), !select(vec2<bool>(true, any(var_0)), !select(var_0.xy, vec2<bool>(true, var_0.x), var_0.yz), var_0.xz), countOneBits(_wgslsmith_add_vec2_u32(vec2<u32>(~u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 17020u), vec2<u32>(u_input.b, u_input.a))), _wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.a, u_input.b), min(vec2<u32>(u_input.a, u_input.b), vec2<u32>(u_input.b, u_input.b))))));
    return select(_wgslsmith_mod_u32(1u, 2645u), 49147u, var_0.x && (false || (countOneBits(global0.x) <= 0i)));
}

fn func_2() -> i32 {
    global0 = _wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(min(max(vec3<i32>(global0.x, global0.x, -5223i), vec3<i32>(0i, -70659i, -1i)), vec3<i32>(-2147483647i, u_input.c, 0i) << (vec3<u32>(0u, 0u, 0u) % vec3<u32>(32u))) >> (vec3<u32>(~u_input.a, u_input.b & 1983u, func_3()) % vec3<u32>(32u)), -(~(~vec3<i32>(0i, u_input.c, u_input.c)))), _wgslsmith_mod_vec3_i32(~vec3<i32>(0i, u_input.c, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, global0.x, 47911i), vec3<i32>(global0.x, u_input.c, -2147483647i))), -_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(global0.x, u_input.c, -2147483647i), vec3<i32>(47432i, 23183i, -2147483647i)), -vec3<i32>(global0.x, -11581i, global0.x))));
    var var_0 = any(vec4<bool>(!any(vec4<bool>(true, true, true, true)), !(select(false, true, false) | true), false, false));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -318f)))))) - _wgslsmith_f_op_f32(451f * _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -971f), _wgslsmith_f_op_f32(ceil(-1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(175f - -1843f)))));
    var var_2 = select(4962u, 4294967295u, !any(vec3<bool>(true, false, true))) == u_input.b;
    return ~(reverseBits(global0.x) << (~reverseBits(37993u) % 32u));
}

fn func_4(arg_0: vec4<i32>) -> i32 {
    let var_0 = Struct_1(vec3<bool>(true, true, all(vec3<bool>(all(vec3<bool>(false, true, false)), true, true))), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 574f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1108f + -902f)), _wgslsmith_f_op_f32(min(561f, -1934f)) >= _wgslsmith_f_op_f32(trunc(-637f)))), _wgslsmith_f_op_f32(ceil(820f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-169f)) * -655f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1159f)))), false, arg_0.zxw, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(346f, -683f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-266f + -2294f)))), _wgslsmith_f_op_f32(f32(-1f) * -567f)));
    var var_1 = select(select(vec4<bool>(true, var_0.a.x, true || var_0.c, any(var_0.a.zx)), !vec4<bool>(true, var_0.c, false, any(vec2<bool>(var_0.a.x, var_0.a.x))), any(var_0.a.yz)), select(vec4<bool>(!var_0.c, any(var_0.a.xz), all(!vec4<bool>(var_0.a.x, var_0.c, var_0.c, var_0.c)), select(var_0.a.x, false, var_0.c) == !var_0.c), !vec4<bool>(false, select(true, var_0.c, var_0.c), var_0.a.x, true), vec4<bool>(true, 1367f < _wgslsmith_f_op_f32(min(var_0.e, 964f)), !(!var_0.a.x), var_0.a.x)), select(vec4<bool>(var_0.c, !var_0.c, var_0.c, all(select(vec4<bool>(false, false, true, var_0.c), vec4<bool>(true, var_0.c, var_0.a.x, true), vec4<bool>(true, var_0.c, false, var_0.c)))), !(!vec4<bool>(true, true, var_0.c, var_0.a.x)), any(select(vec4<bool>(var_0.a.x, false, var_0.a.x, var_0.c), vec4<bool>(var_0.a.x, var_0.a.x, var_0.c, var_0.c), !vec4<bool>(false, true, var_0.c, false)))));
    var_1 = select(vec4<bool>(var_1.x, true, true, true), select(!select(vec4<bool>(true, true, true, true), !vec4<bool>(true, var_0.a.x, false, false), !vec4<bool>(true, false, var_0.c, var_1.x)), vec4<bool>(var_1.x, true, !(true & var_1.x), var_1.x), select(!(!vec4<bool>(true, var_0.c, true, var_1.x)), vec4<bool>(true, var_1.x, true, var_0.d.x >= u_input.c), vec4<bool>(global0.x <= -2147483647i, true, all(vec3<bool>(var_0.a.x, false, var_0.a.x)), !var_1.x))), var_1.x);
    global0 = reverseBits(abs(vec3<i32>(countOneBits(global0.x), 2147483647i, arg_0.x << (22904u % 32u)))) << (~_wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.b, u_input.a, 1u), vec3<u32>(u_input.b, 0u, 4294967295u)), ~vec3<u32>(0u, u_input.b, 39094u), vec3<u32>(4294967295u & u_input.a, 1u, ~12654u)) % vec3<u32>(32u));
    let var_2 = arg_0.x;
    return _wgslsmith_mod_i32(_wgslsmith_div_i32(_wgslsmith_add_i32(i32(-1i) * -1i, -_wgslsmith_mod_i32(u_input.c, var_0.d.x)), _wgslsmith_add_i32(var_2, -2147483647i)), 20664i);
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: vec3<i32>) -> f32 {
    global0 = vec3<i32>(arg_2.x | firstTrailingBit(select(reverseBits(arg_1.d.x), _wgslsmith_div_i32(-1i, -11466i), arg_1.c && arg_1.a.x)), -1i, -411i);
    global0 = vec3<i32>(1i, func_4(vec4<i32>(u_input.c, global0.x, func_2(), u_input.c)), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(select(vec4<i32>(23354i, global0.x, 13772i, -7304i), vec4<i32>(u_input.c, -2147483647i, u_input.c, -1i), vec4<bool>(true, false, false, false)) << (select(vec4<u32>(107625u, u_input.a, 1229u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.b, 4294967295u), false) % vec4<u32>(32u)), abs(-vec4<i32>(-1i, arg_1.d.x, global0.x, 0i)), firstTrailingBit(vec4<i32>(-17795i, 49669i, 0i, 59998i)) ^ -vec4<i32>(52239i, u_input.c, 49581i, arg_2.x)), -vec4<i32>(_wgslsmith_mod_i32(u_input.c, global0.x), arg_1.d.x, _wgslsmith_sub_i32(36694i, 2147483647i), _wgslsmith_sub_i32(global0.x, -18185i))));
    let var_0 = ~firstTrailingBit(vec3<u32>(u_input.b, ~u_input.a | (u_input.b & 4294967295u), _wgslsmith_mod_u32(1u, 1u)));
    var var_1 = ~vec3<i32>(u_input.c, -global0.x, select(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-82455i, 2147483647i, -2147483647i, arg_1.d.x), reverseBits(vec4<i32>(arg_1.d.x, 1608i, arg_2.x, u_input.c))), any(select(arg_1.a.zz, arg_1.a.yy, arg_1.c))));
    let var_2 = global0.x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1103f, -297f)) * arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.b.x)))) + 958f) + _wgslsmith_f_op_f32(-583f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1351f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_i32(global0.x, u_input.c << (min(_wgslsmith_sub_u32(40452u >> (u_input.b % 32u), 1u), u_input.b) % 32u));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(-1524f - 489f), Struct_1(vec3<bool>(true, false, false), vec4<f32>(507f, -960f, -1065f, 1000f), true, vec3<i32>(0i, -1i, var_0), -503f), ~(vec3<i32>(global0.x, global0.x, var_0) | vec3<i32>(u_input.c, 30224i, var_0))))), vec2<bool>(select(true, false && any(vec2<bool>(false, false)), true), !any(select(vec2<bool>(true, true), vec2<bool>(true, false), false))), Struct_1(select(select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true), true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), true), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1655f, 503f, 352f, 1863f) + vec4<f32>(203f, 1000f, -1086f, 126f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(300f, -328f, -435f, 1434f), vec4<f32>(-968f, -886f, -134f, 750f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1226f, 139f, 116f, -541f) - vec4<f32>(-917f, 618f, 496f, 1350f))))), all(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), select(vec2<bool>(true, true), vec2<bool>(false, false), true), true)), vec3<i32>(var_0, -24683i, 39252i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -961f), _wgslsmith_f_op_f32(583f * 886f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-147f, -1117f, 383f) * vec3<f32>(1562f, -727f, 1214f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-462f, 1180f, 1153f) - vec3<f32>(138f, -198f, 533f)))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1296f, 708f, 332f)) + vec3<f32>(-820f, 450f, 887f))))));
    let var_2 = _wgslsmith_f_op_f32(-var_1.d.x);
    global0 = -vec3<i32>(1i, global0.x, var_1.c.d.x);
    let var_3 = !(!vec4<bool>(any(select(var_1.b, vec2<bool>(var_1.b.x, false), var_1.c.a.zx)), var_1.b.x, !(!var_1.b.x), true));
    var var_4 = !var_3;
    var_4 = select(select(vec4<bool>(any(vec3<bool>(true, var_4.x, false)), all(var_3) | var_1.b.x, var_1.b.x, true), var_3, !all(select(var_1.b, var_3.zw, var_1.b))), select(!vec4<bool>(!var_3.x, var_4.x, var_1.a != 811f, all(vec4<bool>(false, true, var_1.b.x, true))), var_3, !vec4<bool>(true, false, true, var_1.b.x)), !var_3);
    let var_5 = vec4<f32>(_wgslsmith_f_op_f32(-var_1.c.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -178f) + _wgslsmith_f_op_f32(ceil(-1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)), _wgslsmith_f_op_f32(984f + var_1.a));
    let x = u_input.a;
    s_output = StorageBuffer(~(select(vec2<u32>(u_input.a, u_input.a) ^ vec2<u32>(54909u, u_input.a), ~vec2<u32>(u_input.a, u_input.a), !var_3.x) | vec2<u32>(_wgslsmith_clamp_u32(4294967295u, 10118u, u_input.a), ~14417u)), vec2<u32>(_wgslsmith_sub_u32(~abs(4294967295u), ~1u << (~u_input.a % 32u)), ~select(~57486u, ~0u, any(var_3))), vec3<i32>(_wgslsmith_dot_vec2_i32(~var_1.c.d.zx, ~_wgslsmith_add_vec2_i32(vec2<i32>(1499i, u_input.c), var_1.c.d.zx)), var_0, 1i), _wgslsmith_f_op_vec2_f32(var_5.zx + _wgslsmith_f_op_vec2_f32(-var_1.c.b.zw)));
}

