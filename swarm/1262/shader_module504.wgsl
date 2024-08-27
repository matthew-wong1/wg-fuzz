struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec3<f32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3> = array<bool, 3>(false, false, false);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_1(arg_0: u32, arg_1: vec4<bool>) -> f32 {
    global0 = array<bool, 3>();
    global0 = array<bool, 3>();
    global0 = array<bool, 3>();
    var var_0 = vec4<i32>(countOneBits(u_input.a.x), u_input.a.x, ~(-1i), -1i);
    var var_1 = var_0.yz;
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(floor(1095f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(260f - 657f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-295f, _wgslsmith_f_op_f32(-553f + -1265f)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(448f, -1863f))), arg_1.x))));
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec2<i32>) -> vec3<i32> {
    var var_0 = global0[_wgslsmith_index_u32(7565u, 3u)];
    var_0 = global0[_wgslsmith_index_u32(arg_2.a.b, 3u)];
    global0 = array<bool, 3>();
    var var_1 = Struct_4(Struct_1(~_wgslsmith_mult_vec3_i32(abs(vec3<i32>(arg_3.x, arg_3.x, 19144i)), -u_input.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1106f, arg_2.b.a, arg_2.a.a))) * vec4<f32>(_wgslsmith_f_op_f32(-1000f - arg_1.b.a), _wgslsmith_f_op_f32(-arg_2.c), arg_2.b.a, -526f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2.c, arg_2.c, -832f), vec3<f32>(arg_1.c, 1313f, -962f), true))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b.a, -268f, -460f) + vec3<f32>(981f, arg_1.c, -1140f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-638f, arg_2.c, arg_2.c) - vec3<f32>(1000f, arg_2.c, arg_1.c)))), _wgslsmith_clamp_vec4_i32(vec4<i32>(countOneBits(2147483647i), firstTrailingBit(arg_0), abs(arg_0), 2147483647i), vec4<i32>(arg_0, 46724i | arg_3.x, 1i, _wgslsmith_div_i32(2147483647i, -2147483647i)), reverseBits(vec4<i32>(0i, arg_0, arg_0, -13160i)))), u_input.a, ~_wgslsmith_div_vec3_u32(vec3<u32>(2677u, arg_1.b.b, arg_2.b.b) & vec3<u32>(4294967295u, 1u, 2129u), ~vec3<u32>(36146u, 1u, arg_2.b.b)) & vec3<u32>(arg_1.a.b, 1034u, ~1u << (_wgslsmith_add_u32(arg_2.a.b, 1u) % 32u)));
    let var_2 = var_1.b.x;
    return vec3<i32>(arg_3.x, _wgslsmith_mult_i32(var_1.a.d.x, _wgslsmith_add_i32(39810i, abs(_wgslsmith_mult_i32(var_1.a.d.x, -9932i)))), ~(~1i));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: vec3<i32>) -> u32 {
    global0 = array<bool, 3>();
    var var_0 = Struct_4(Struct_1(arg_2, vec4<f32>(-759f, -114f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.a))), 949f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-153f, arg_0.a, 1040f))), vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(f32(-1f) * -889f), _wgslsmith_f_op_f32(max(-447f, arg_0.a))), select(select(vec3<bool>(global0[_wgslsmith_index_u32(arg_0.b, 3u)], false, global0[_wgslsmith_index_u32(1u, 3u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(52513u, 3u)], global0[_wgslsmith_index_u32(arg_0.b, 3u)]), global0[_wgslsmith_index_u32(1u, 3u)]), vec3<bool>(global0[_wgslsmith_index_u32(40128u, 3u)], global0[_wgslsmith_index_u32(arg_0.b, 3u)], global0[_wgslsmith_index_u32(4294967295u, 3u)]), vec3<bool>(global0[_wgslsmith_index_u32(arg_0.b, 3u)], false, true)))), abs(firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(arg_1, arg_1, arg_1, 8232i), vec4<i32>(arg_2.x, 2147483647i, 2734i, 1i))))), firstTrailingBit(-countOneBits(vec3<i32>(arg_1, u_input.a.x, arg_1))) | _wgslsmith_mult_vec3_i32(vec3<i32>(0i, min(arg_1, u_input.a.x), arg_2.x & 0i), vec3<i32>(-arg_2.x, 29764i, arg_1)), _wgslsmith_sub_vec3_u32(~vec3<u32>(~arg_0.b, 4294967295u, min(1u, 0u)), select((vec3<u32>(arg_0.b, 0u, arg_0.b) | vec3<u32>(arg_0.b, 11704u, 7201u)) ^ countOneBits(vec3<u32>(arg_0.b, arg_0.b, arg_0.b)), _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.b, 17143u, 0u), min(vec3<u32>(4294967295u, 4294967295u, arg_0.b), vec3<u32>(arg_0.b, arg_0.b, 8721u)), reverseBits(vec3<u32>(arg_0.b, 21770u, 0u))), all(vec4<bool>(global0[_wgslsmith_index_u32(arg_0.b, 3u)], true, global0[_wgslsmith_index_u32(arg_0.b, 3u)], true)))));
    var var_1 = 307f;
    var_0 = Struct_4(var_0.a, -vec3<i32>(-388i & (arg_2.x & -11735i), var_0.b.x, ~(-19022i)), reverseBits(min(vec3<u32>(arg_0.b, 0u, var_0.c.x), firstLeadingBit(vec3<u32>(arg_0.b, arg_0.b, var_0.c.x)))) | _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(var_0.c, ~vec3<u32>(arg_0.b, 0u, 15528u)), vec3<u32>(~1u, ~5954u, arg_0.b)));
    global0 = array<bool, 3>();
    return 0u;
}

fn func_2() -> Struct_2 {
    global0 = array<bool, 3>();
    let var_0 = Struct_2(1f, _wgslsmith_div_u32(~func_4(Struct_2(-127f, 1u), _wgslsmith_mod_i32(2147483647i, 2147483647i), func_3(u_input.a.x, Struct_3(Struct_2(857f, 34234u), Struct_2(750f, 1u), 729f), Struct_3(Struct_2(351f, 1837u), Struct_2(856f, 4294967295u), -458f), vec2<i32>(-1i, u_input.a.x))), 4294967295u));
    var var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.a, -1000f, var_0.a), vec3<f32>(var_0.a, var_0.a, 1691f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(301f, -224f, 241f) * vec3<f32>(-414f, var_0.a, var_0.a))) - vec3<f32>(_wgslsmith_f_op_f32(round(-287f)), _wgslsmith_f_op_f32(-480f * -1000f), var_0.a)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_1(62228u, vec4<bool>(true, false, global0[_wgslsmith_index_u32(var_0.b, 3u)], global0[_wgslsmith_index_u32(4294967295u, 3u)]))))), _wgslsmith_f_op_f32(-573f - _wgslsmith_f_op_f32(-var_0.a)), -782f))));
    global0 = array<bool, 3>();
    var var_2 = !global0[_wgslsmith_index_u32(var_0.b, 3u)];
    return Struct_2(var_1.x, _wgslsmith_dot_vec3_u32(firstTrailingBit(select(~vec3<u32>(42290u, 1u, var_0.b), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 46442u), vec3<u32>(var_0.b, var_0.b, var_0.b)), true)), vec3<u32>(var_0.b, var_0.b, _wgslsmith_clamp_u32(_wgslsmith_div_u32(44460u, 78576u), var_0.b, ~4294967295u))));
}

fn func_5(arg_0: i32, arg_1: vec2<bool>, arg_2: Struct_2) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a, -1000f, _wgslsmith_f_op_f32(-arg_2.a))))));
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -890f))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1081f - 2125f)))) + _wgslsmith_f_op_f32(-arg_2.a)), 1000f, !any(vec2<bool>(arg_2.b > 11868u, any(vec3<bool>(true, true, arg_1.x))))));
    let var_2 = func_4(Struct_2(855f, 1u), ~u_input.a.x, _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, _wgslsmith_dot_vec3_i32(u_input.a, u_input.a), -48339i) ^ vec3<i32>(u_input.a.x, _wgslsmith_mult_i32(arg_0, u_input.a.x), i32(-1i) * -2147483647i), vec3<i32>(-1i, u_input.a.x, 1i)));
    var var_3 = arg_2;
    var var_4 = all(arg_1);
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(2147483647i, 1i, -5452i) | vec3<i32>(39223i, _wgslsmith_sub_i32(_wgslsmith_add_i32(-29929i, u_input.a.x) & firstLeadingBit(u_input.a.x), u_input.a.x), min(u_input.a.x, u_input.a.x));
    let var_1 = u_input.a.x;
    var var_2 = Struct_1(vec3<i32>(2147483647i, -((u_input.a.x | 9146i) ^ abs(var_1)), ~_wgslsmith_sub_i32(var_1, -u_input.a.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-952f, 898f, 1122f, 1469f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1617f, 139f, 736f, -990f) + vec4<f32>(662f, -1275f, -1146f, -647f)))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1822f * -1000f)), 1f, _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(f32(-1f) * -2628f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(3216u, vec4<bool>(global0[_wgslsmith_index_u32(1u, 3u)], global0[_wgslsmith_index_u32(4294967295u, 3u)], global0[_wgslsmith_index_u32(4294967295u, 3u)], global0[_wgslsmith_index_u32(4294967295u, 3u)]))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(622f, -544f, -964f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1567f, -108f, 602f) + vec3<f32>(423f, 1000f, 999f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1061f, -1988f, -112f)), _wgslsmith_div_vec3_f32(vec3<f32>(-476f, -1096f, 1000f), vec3<f32>(-652f, -874f, 777f)), vec3<bool>(global0[_wgslsmith_index_u32(30221u, 3u)], true, global0[_wgslsmith_index_u32(1u, 3u)]))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-665f, 1479f, -551f) - vec3<f32>(-1219f, 666f, -583f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(909f, 735f, 643f) - vec3<f32>(-1392f, 2114f, 1226f)), !vec3<bool>(global0[_wgslsmith_index_u32(41823u, 3u)], false, true))))), vec4<i32>(func_5(firstTrailingBit(-var_1), select(vec2<bool>(false, global0[_wgslsmith_index_u32(56301u, 3u)]), !vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 3u)], false), !global0[_wgslsmith_index_u32(0u, 3u)]), func_2()), _wgslsmith_div_i32(-1i, -3089i), ~u_input.a.x, var_1));
    var var_3 = select(!(!vec4<bool>(global0[_wgslsmith_index_u32(1u, 3u)] && global0[_wgslsmith_index_u32(67001u, 3u)], global0[_wgslsmith_index_u32(1u << (1u % 32u), 3u)], any(vec3<bool>(true, false, global0[_wgslsmith_index_u32(0u, 3u)])), global0[_wgslsmith_index_u32(abs(4294967295u), 3u)])), select(select(!vec4<bool>(global0[_wgslsmith_index_u32(1u, 3u)], global0[_wgslsmith_index_u32(1u, 3u)], true, false), select(!vec4<bool>(global0[_wgslsmith_index_u32(1u, 3u)], false, global0[_wgslsmith_index_u32(1u, 3u)], global0[_wgslsmith_index_u32(1u, 3u)]), !vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 3u)], true, false, true), global0[_wgslsmith_index_u32(27069u, 3u)]), true), !vec4<bool>(false, all(vec3<bool>(global0[_wgslsmith_index_u32(81435u, 3u)], true, global0[_wgslsmith_index_u32(0u, 3u)])), true, var_2.c.x < var_2.b.x), vec4<bool>(global0[_wgslsmith_index_u32(firstTrailingBit(1u), 3u)], !any(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(func_1(43540u, vec4<bool>(global0[_wgslsmith_index_u32(95108u, 3u)], true, global0[_wgslsmith_index_u32(0u, 3u)], true))) < _wgslsmith_div_f32(1738f, 1075f), false)), vec4<bool>(true, false, global0[_wgslsmith_index_u32(1u, 3u)], global0[_wgslsmith_index_u32(~1u, 3u)]));
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(var_2.d), u_input.a.x, -36033i, _wgslsmith_add_vec2_i32(var_0.yx, vec2<i32>(u_input.a.x, -var_0.x >> (69500u % 32u))), min(abs(-var_1), u_input.a.x));
}

