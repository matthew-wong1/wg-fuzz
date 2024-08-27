struct Struct_1 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: u32,
    d: vec2<bool>,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, true);

var<private> global1: array<u32, 6>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> bool {
    var var_0 = Struct_2(Struct_1(u_input.c.xx, false), 1u, u_input.c.x, select(select(vec2<bool>(true, !global0.x), select(select(vec2<bool>(false, false), vec2<bool>(global0.x, true), vec2<bool>(global0.x, true)), vec2<bool>(global0.x, false), global0.x | global0.x), global0.x), vec2<bool>(false, global0.x), all(!select(vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(global0.x, global0.x, false, true), vec4<bool>(global0.x, global0.x, false, global0.x)))), ~u_input.a.x);
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(557f * 789f) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-810f, 1194f)))))));
    global1 = array<u32, 6>();
    var var_2 = 1u;
    var var_3 = _wgslsmith_mult_vec2_u32(max(u_input.c.zz, min(_wgslsmith_sub_vec2_u32(var_0.a.a ^ vec2<u32>(global1[_wgslsmith_index_u32(0u, 6u)], 13199u), vec2<u32>(var_0.a.a.x, u_input.e)), var_0.a.a)), u_input.c.xx);
    return global0.x;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<i32>, arg_2: vec4<bool>) -> vec4<bool> {
    global0 = vec2<bool>(all(select(vec2<bool>(!global0.x, func_3()), arg_2.xx, !arg_2.x)), !(!global0.x));
    let var_0 = select(!arg_2, arg_2, true);
    global1 = array<u32, 6>();
    global1 = array<u32, 6>();
    var var_1 = min(~_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(0u, u_input.e, u_input.b, 3921u)), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 0u, global1[_wgslsmith_index_u32(u_input.b, 6u)], u_input.e), countOneBits(vec4<u32>(u_input.b, 64167u, 1u, 4294967295u)))), _wgslsmith_dot_vec3_u32(abs(u_input.c), u_input.c) & 66118u);
    return vec4<bool>(!arg_2.x, false, arg_2.x, arg_2.x);
}

fn func_1() -> u32 {
    var var_0 = -1258f;
    let var_1 = _wgslsmith_mod_u32(~4294967295u, firstLeadingBit(global1[_wgslsmith_index_u32(~firstTrailingBit(1u), 6u)]));
    global0 = vec2<bool>(true, any(vec2<bool>(global0.x, any(func_2(vec3<f32>(1193f, 1304f, 757f), vec4<i32>(3213i, 17085i, -3207i, u_input.d), vec4<bool>(global0.x, global0.x, false, false))))));
    var var_2 = Struct_2(Struct_1(min(select(u_input.c.xy, vec2<u32>(0u, 4328u), true), u_input.c.xx), select(-u_input.d, _wgslsmith_mult_i32(u_input.a.x, 1i), any(vec4<bool>(false, false, global0.x, false))) < reverseBits(u_input.a.x ^ -4223i)), _wgslsmith_sub_u32(4294967295u, 1u), ~(~(~global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(67095u, u_input.c.x), 6u)])), !select(!(!vec2<bool>(global0.x, global0.x)), func_2(vec3<f32>(2386f, 1323f, -662f), -vec4<i32>(u_input.d, -29045i, -2147483647i, u_input.a.x), vec4<bool>(global0.x, false, true, false)).xx, func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1070f, -744f, -2123f) - vec3<f32>(-2488f, 853f, -1586f)), _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, 2147483647i, 2147483647i, -1i), vec4<i32>(u_input.a.x, -1i, 2769i, u_input.d), vec4<i32>(0i, -24801i, u_input.a.x, 2147483647i)), func_2(vec3<f32>(-579f, -1869f, -1085f), vec4<i32>(20475i, u_input.d, u_input.a.x, u_input.d), vec4<bool>(false, false, global0.x, global0.x))).wy), firstTrailingBit(firstLeadingBit(u_input.d << (~var_1 % 32u))));
    var var_3 = var_2.a;
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1818f)) - -433f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1218f)) + _wgslsmith_f_op_f32(f32(-1f) * -121f)) + 1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(660f, 524f)) - _wgslsmith_f_op_f32(ceil(699f)))));
    let var_1 = ~(~vec2<u32>(_wgslsmith_clamp_u32(~6873u, ~u_input.c.x, global1[_wgslsmith_index_u32(func_1(), 6u)]), 60249u));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.x)) - -531f);
    var var_3 = vec4<i32>(_wgslsmith_clamp_i32(u_input.a.x, max(~firstTrailingBit(21067i), u_input.a.x), ~12444i), u_input.d, i32(-1i) * -u_input.d, u_input.d << (var_1.x % 32u));
    global1 = array<u32, 6>();
    var_3 = vec4<i32>(~abs(u_input.a.x), 1i << (_wgslsmith_mod_u32(~min(4294967295u, 56505u), var_1.x) % 32u), _wgslsmith_sub_i32(u_input.d, countOneBits(select(~u_input.a.x, u_input.d << (20854u % 32u), false))), var_3.x);
    global0 = !func_2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-490f, -920f, -1116f)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1438f, -205f, -1599f), vec3<f32>(var_2, var_0.x, -577f), global0.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, 1379f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-589f, var_0.x, var_0.x) + vec3<f32>(var_2, -1000f, var_0.x))))), _wgslsmith_mult_vec4_i32(vec4<i32>(var_3.x, -2147483647i, u_input.d, 27027i) << (~vec4<u32>(4294967295u, 0u, 20897u, u_input.b) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 10232i, -17900i, u_input.d), _wgslsmith_sub_vec4_i32(vec4<i32>(30316i, -2147483647i, u_input.a.x, 2147483647i), vec4<i32>(-2147483647i, 2147483647i, u_input.a.x, 10260i)), select(vec4<i32>(52489i, -28501i, var_3.x, var_3.x), vec4<i32>(23998i, var_3.x, 53297i, u_input.a.x), false))), select(!select(vec4<bool>(true, global0.x, false, false), vec4<bool>(global0.x, true, false, global0.x), global0.x), select(!vec4<bool>(false, false, global0.x, true), func_2(vec3<f32>(var_0.x, var_2, -1643f), vec4<i32>(2147483647i, -2147483647i, 50612i, -2i), vec4<bool>(global0.x, false, false, global0.x)), select(vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(global0.x, true, true, global0.x), false)), global0.x)).xz;
    global0 = vec2<bool>(all(vec4<bool>(true, global0.x, !global0.x, !(global0.x | global0.x))), false);
    var_3 = countOneBits(~vec4<i32>(_wgslsmith_mult_i32(var_3.x, -21732i) ^ _wgslsmith_dot_vec2_i32(u_input.a.xz, u_input.a.xz), _wgslsmith_dot_vec3_i32(u_input.a, u_input.a ^ u_input.a), u_input.a.x & -u_input.a.x, -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 16822i, var_3.x, var_3.x), vec4<i32>(581i, 2147483647i, u_input.d, u_input.d))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_2, -1307f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-736f, var_0.x) + vec2<f32>(351f, var_2)) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1235f, -550f)))))), var_1.x);
}

