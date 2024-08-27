struct Struct_1 {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: vec2<bool>,
    d: Struct_2,
    e: vec3<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 6> = array<vec3<u32>, 6>(vec3<u32>(0u, 68876u, 89674u), vec3<u32>(10692u, 1u, 4294967295u), vec3<u32>(4720u, 0u, 53579u), vec3<u32>(1u, 0u, 42177u), vec3<u32>(101238u, 0u, 6505u), vec3<u32>(1u, 0u, 22131u));

var<private> global1: vec4<bool> = vec4<bool>(false, true, false, true);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: u32) -> vec4<bool> {
    var var_0 = select(u_input.b, ~u_input.b, !global1.x) ^ u_input.b;
    let var_1 = 1f;
    global1 = select(!vec4<bool>(global1.x, any(select(global1.xw, vec2<bool>(true, global1.x), global1.x)), any(global1.zzz) & true, false), vec4<bool>(global1.x, all(select(select(vec4<bool>(global1.x, global1.x, false, global1.x), vec4<bool>(false, false, global1.x, global1.x), global1.x), select(vec4<bool>(true, true, true, false), vec4<bool>(false, global1.x, global1.x, global1.x), false), global1.x | false)), !global1.x || (false & global1.x), true), select(vec4<bool>(all(global1.xzx), true, global1.x, false), select(vec4<bool>(global1.x, all(vec2<bool>(global1.x, global1.x)), true, false), select(vec4<bool>(global1.x, global1.x, false, false), vec4<bool>(global1.x, global1.x, false, global1.x), select(vec4<bool>(global1.x, global1.x, true, global1.x), vec4<bool>(false, global1.x, global1.x, false), vec4<bool>(global1.x, false, global1.x, global1.x))), select(select(vec4<bool>(true, true, false, true), vec4<bool>(global1.x, global1.x, false, false), vec4<bool>(global1.x, false, global1.x, global1.x)), !vec4<bool>(true, false, false, global1.x), all(global1.yz))), !vec4<bool>(global1.x, true, true, global1.x && false)));
    var var_2 = max(abs(-u_input.a.x), _wgslsmith_clamp_i32(abs(~(-1i)), -_wgslsmith_dot_vec2_i32(u_input.a, u_input.a), firstLeadingBit(reverseBits(-60340i)))) >> (_wgslsmith_clamp_u32(~arg_0, arg_0, ~(~32824u)) % 32u);
    var var_3 = select(!select(global1.wyx, !vec3<bool>(false, global1.x, true), global1.xxz), vec3<bool>(all(global1.xy), all(!global1.zx), global1.x), global1.xzx);
    return select(vec4<bool>(global1.x, true, global1.x, true), vec4<bool>(global1.x, any(select(global1.wzy, vec3<bool>(global1.x, true, global1.x), vec3<bool>(true, false, false))) | (~u_input.b.x != firstTrailingBit(17067u)), true, global1.x), vec4<bool>(true, ~_wgslsmith_dot_vec3_i32(vec3<i32>(7316i, u_input.a.x, 2147483647i), vec3<i32>(-2493i, 20427i, u_input.a.x)) >= u_input.a.x, any(vec4<bool>(any(global1.xx), true, all(vec4<bool>(var_3.x, var_3.x, true, global1.x)), !global1.x)), !(!(global1.x != var_3.x))));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(183f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -712f)))))));
    var var_1 = ~(~vec2<u32>(~u_input.b.x, u_input.b.x));
    global1 = !(!func_3(var_1.x));
    let var_2 = firstTrailingBit(-(~select(~vec4<i32>(u_input.a.x, -45419i, 14522i, -1i), vec4<i32>(u_input.a.x, arg_1.d.x, arg_1.d.x, u_input.a.x), vec4<bool>(false, true, global1.x, true))));
    let var_3 = Struct_3(_wgslsmith_div_f32(var_0, -1227f), var_1.x, !vec2<bool>((u_input.a.x << (95033u % 32u)) <= 2147483647i, true), Struct_2(arg_1, 154f, Struct_1(~reverseBits(u_input.a.x), ~reverseBits(arg_1.c), arg_1.b, abs(arg_1.d) << (_wgslsmith_mod_vec3_u32(vec3<u32>(var_1.x, var_1.x, var_1.x), vec3<u32>(34920u, var_1.x, 45294u)) % vec3<u32>(32u)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0, -1688f, 2020f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0, var_0, var_0), vec3<f32>(100f, 571f, var_0)) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0, var_0, var_0), vec3<f32>(var_0, 522f, 1213f)))))))));
    return ~(~_wgslsmith_sub_u32(~u_input.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(7236u, var_3.b, var_1.x), u_input.b.yzw))) >= 21323u;
}

fn func_4(arg_0: vec4<u32>, arg_1: bool, arg_2: vec2<bool>) -> bool {
    var var_0 = u_input.a.x;
    global1 = vec4<bool>(true, true, true, true);
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1167f)))))))));
    var_0 = _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(-countOneBits(vec2<i32>(-1i, -2147483647i)), vec2<i32>(u_input.a.x & u_input.a.x, _wgslsmith_mod_i32(u_input.a.x, -2147483647i)) >> (_wgslsmith_mod_vec2_u32(arg_0.zz, vec2<u32>(arg_0.x, 32873u)) % vec2<u32>(32u))), firstTrailingBit(u_input.a >> (~(~arg_0.yx) % vec2<u32>(32u))));
    var var_2 = Struct_1(-1i, ~min(u_input.a.x, -9868i), u_input.a.x, -vec3<i32>(u_input.a.x, -2147483647i, _wgslsmith_sub_i32(2147483647i, _wgslsmith_mult_i32(u_input.a.x, u_input.a.x))));
    return false | any(func_3(~1u));
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: f32) -> u32 {
    global1 = !(!(!select(vec4<bool>(global1.x, true, false, false), select(vec4<bool>(true, global1.x, global1.x, global1.x), vec4<bool>(false, false, false, false), global1.x), true)));
    let var_0 = global1.yzw;
    var var_1 = func_4(~u_input.b, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(floor(arg_2))))) > arg_1, select(!var_0.yx, select(vec2<bool>(false, func_2(global1.zy, Struct_1(arg_0, 2056i, 1i, vec3<i32>(arg_0, u_input.a.x, 1i)))), select(!vec2<bool>(var_0.x, false), select(vec2<bool>(true, var_0.x), var_0.yy, true), global1.xx), !var_0.zx), vec2<bool>(var_0.x & true, all(vec3<bool>(global1.x, false, global1.x)) | true)));
    let var_2 = _wgslsmith_div_vec4_u32(~(~u_input.b >> (vec4<u32>(u_input.b.x, _wgslsmith_mult_u32(44259u, 0u), u_input.b.x, u_input.b.x & u_input.b.x) % vec4<u32>(32u))), vec4<u32>(~4294967295u, ~0u, ~(22325u & u_input.b.x) | u_input.b.x, u_input.b.x));
    global0 = array<vec3<u32>, 6>();
    return u_input.b.x;
}

fn func_5(arg_0: vec3<u32>, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = global1.x;
    global1 = vec4<bool>(global1.x, global1.x, global1.x, false);
    global0 = array<vec3<u32>, 6>();
    var_0 = false;
    var_0 = _wgslsmith_sub_u32(1u, firstTrailingBit(64713u)) == min(arg_0.x, (select(u_input.b.x, 4294967295u, global1.x) >> (u_input.b.x % 32u)) << (abs(u_input.b.x) % 32u));
    return Struct_1(u_input.a.x, _wgslsmith_div_i32(countOneBits(u_input.a.x), u_input.a.x) | u_input.a.x, -_wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.a.x & u_input.a.x, u_input.a.x), vec3<i32>(1i, u_input.a.x, _wgslsmith_mod_i32(u_input.a.x, u_input.a.x))), vec3<i32>(u_input.a.x, ~(~_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -6223i, u_input.a.x, -2147483647i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 17256i))), u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(select(_wgslsmith_clamp_vec3_u32(global0[_wgslsmith_index_u32(u_input.b.x, 6u)], ~u_input.b.xyz, ~vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u)), _wgslsmith_clamp_vec3_u32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~u_input.b.x, u_input.b.x), 6u)], ~(vec3<u32>(0u, 7509u, u_input.b.x) << (vec3<u32>(u_input.b.x, u_input.b.x, 45720u) % vec3<u32>(32u))), vec3<u32>(u_input.b.x << (46585u % 32u), u_input.b.x, u_input.b.x)), vec3<bool>(false, u_input.a.x == ~u_input.a.x, func_1(u_input.a.x, 489f, 170f) < ~6232u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(938f, 988f) * vec2<f32>(932f, 1429f))))));
    global1 = vec4<bool>(~1u == min(1u, u_input.b.x), true || global1.x, global1.x, !any(select(vec3<bool>(global1.x, global1.x, true), vec3<bool>(global1.x, global1.x, global1.x), all(vec4<bool>(true, false, false, false)))));
    global1 = !vec4<bool>(!global1.x, firstLeadingBit(_wgslsmith_mult_u32(u_input.b.x, 31941u)) >= (0u ^ u_input.b.x), !global1.x, any(global1.xwx) | false);
    var var_1 = Struct_4(func_5(select(_wgslsmith_mult_vec3_u32(u_input.b.xwy, u_input.b.www), select(vec3<u32>(u_input.b.x, 4294967295u, 4294967295u) | u_input.b.zyy, vec3<u32>(62141u, 41759u, u_input.b.x), !global1.x), global1.zyx), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-257f, 319f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-693f, 1193f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)))), u_input.b.x < ~_wgslsmith_mult_u32(u_input.b.x, ~u_input.b.x), Struct_3(1000f, select(0u, ~11237u, !func_3(48279u).x), global1.wz, Struct_2(var_0, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1975f + 572f))), Struct_1(-31409i, -6056i, abs(var_0.b), _wgslsmith_sub_vec3_i32(vec3<i32>(37079i, -1i, var_0.b), var_0.d))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-643f, -1836f, 639f)))));
    let var_2 = _wgslsmith_mod_vec3_u32(vec3<u32>(~(~(~u_input.b.x)), _wgslsmith_add_u32(var_1.c.b, reverseBits(1u)), ~(~u_input.b.x)), _wgslsmith_sub_vec3_u32(~(~(~vec3<u32>(12438u, u_input.b.x, 4294967295u))), min(u_input.b.zzy, ~global0[_wgslsmith_index_u32(u_input.b.x, 6u)] & min(global0[_wgslsmith_index_u32(var_1.c.b, 6u)], u_input.b.xwy))));
    let var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(firstLeadingBit(u_input.b.x >> (~u_input.b.x % 32u)), ~max(~81165u, ~4294967295u)), var_1.c.e);
}

