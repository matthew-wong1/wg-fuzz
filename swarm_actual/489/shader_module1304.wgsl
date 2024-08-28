struct Struct_1 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: bool,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<bool, 7> = array<bool, 7>(true, false, false, false, false, false, false);

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: f32) -> vec4<bool> {
    global1 = array<bool, 7>();
    var var_0 = countOneBits(_wgslsmith_div_vec2_u32(vec2<u32>(firstLeadingBit(1u), 1u), vec2<u32>(u_input.a, 0u)));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-1f), arg_0.b.x);
    var_1 = arg_1.b.yy;
    var var_2 = arg_0.d.x < (abs(i32(-1i) * -21552i) & ~_wgslsmith_sub_i32(-arg_1.d.x, _wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, arg_2.x, arg_1.d.x, arg_1.d.x), vec4<i32>(global0.x, arg_1.d.x, global0.x, 0i))));
    return arg_1.a;
}

fn func_2() -> vec4<i32> {
    global0 = _wgslsmith_mod_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(~(-1i), global0.x, global0.x, _wgslsmith_sub_i32(global0.x, 3112i)), -max(vec4<i32>(-13403i, -2798i, global0.x, -2147483647i), vec4<i32>(global0.x, global0.x, 2147483647i, 28916i))), vec4<i32>(_wgslsmith_div_i32(global0.x, 27543i >> ((u_input.a >> (36753u % 32u)) % 32u)), _wgslsmith_div_i32(12171i, global0.x), firstLeadingBit(global0.x), -_wgslsmith_clamp_i32(2783i, ~69965i, global0.x)));
    var var_0 = Struct_1(func_3(Struct_1(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a << (u_input.a % 32u), 7u)], true, true || global1[_wgslsmith_index_u32(u_input.a, 7u)]), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-517f, -207f, -1454f, -2468f), vec4<f32>(964f, -1468f, 232f, 604f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-140f, 1205f, 1045f, -261f) + vec4<f32>(-390f, -165f, -1105f, -509f))), true, _wgslsmith_sub_vec3_i32(global0.zxx, global0.xwy)), Struct_1(select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 7u)], global1[_wgslsmith_index_u32(u_input.a, 7u)], global1[_wgslsmith_index_u32(19377u, 7u)], false), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 7u)], global1[_wgslsmith_index_u32(u_input.a, 7u)], global1[_wgslsmith_index_u32(50452u, 7u)], false), global0.x > -9657i), vec4<f32>(108f, _wgslsmith_f_op_f32(f32(-1f) * -150f), -1760f, _wgslsmith_f_op_f32(186f * 1051f)), any(vec3<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 7u)], global1[_wgslsmith_index_u32(4294967295u, 7u)])), vec3<i32>(~(-35411i), global0.x | 2147483647i, global0.x)), ~_wgslsmith_mod_vec3_i32(vec3<i32>(-24493i, global0.x, -20774i) | global0.yxz, vec3<i32>(global0.x, global0.x, -34802i)), -1915f), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(888f, 1000f)), -468f, _wgslsmith_f_op_f32(-1375f + -1000f), _wgslsmith_f_op_f32(step(805f, 547f)))))), false || global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(~4294967295u), min(~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(29814u, u_input.a, 48377u), vec3<u32>(u_input.a, 1u, u_input.a)))), 7u)], _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(-11340i, 14459i), global0.x & 33692i, _wgslsmith_mod_i32(global0.x, global0.x)), vec3<i32>(_wgslsmith_sub_i32(-45759i, 1i), ~52953i, global0.x)), _wgslsmith_mult_vec3_i32(global0.yzy, min(_wgslsmith_mod_vec3_i32(vec3<i32>(32025i, 61002i, 21633i), global0.xww), firstLeadingBit(vec3<i32>(global0.x, -1i, 0i))))));
    let var_1 = reverseBits(50752i);
    let var_2 = _wgslsmith_f_op_vec2_f32(round(var_0.b.xw));
    var var_3 = Struct_1(vec4<bool>(all(vec2<bool>(false, true)), true && !(var_2.x > var_0.b.x), true, any(var_0.a.yw)), var_0.b, true, vec3<i32>(var_1, -_wgslsmith_sub_i32(10675i, var_1 ^ var_1), ~36751i));
    return abs(-countOneBits(-(~vec4<i32>(global0.x, -4674i, var_1, -4445i))));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: vec3<f32>) -> u32 {
    global0 = _wgslsmith_mod_vec4_i32(abs(vec4<i32>(~2147483647i, ~global0.x, -1i, ~(-1i))) & -firstTrailingBit(vec4<i32>(arg_0.d.x, arg_0.d.x, arg_0.d.x, -14355i)), abs(_wgslsmith_div_vec4_i32(vec4<i32>(global0.x, 32572i, global0.x, 2147483647i) | vec4<i32>(0i, arg_0.d.x, global0.x, global0.x), vec4<i32>(0i, arg_1, -1i, -28273i))) ^ -(-vec4<i32>(-25313i, 0i, arg_1, -30054i) & ~vec4<i32>(2147483647i, -1i, 0i, arg_1)));
    global0 = func_2() ^ min(vec4<i32>(-2147483647i, _wgslsmith_sub_i32(_wgslsmith_div_i32(global0.x, global0.x), -arg_1), min(-2761i, firstLeadingBit(-19460i)), arg_1), func_2());
    global0 = ~vec4<i32>(-(~50314i) >> (reverseBits(~u_input.a) % 32u), global0.x, -9920i, -2147483647i);
    global0 = -vec4<i32>(1676i, countOneBits(-arg_0.d.x), 1i, -20306i);
    let var_0 = 1u;
    return ~49597u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(reverseBits(~abs(vec4<u32>(0u, u_input.a, 22924u, u_input.a))), ~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) << (vec4<u32>(u_input.a, u_input.a, u_input.a, 3328u) % vec4<u32>(32u)), vec4<u32>(u_input.a, 64728u, u_input.a, 20452u))), _wgslsmith_mod_vec4_u32(~min(vec4<u32>(u_input.a, u_input.a, 75921u, 0u), ~vec4<u32>(u_input.a, 42180u, 87960u, u_input.a)), _wgslsmith_mult_vec4_u32(~select(vec4<u32>(4294967295u, 21174u, u_input.a, 68317u), vec4<u32>(u_input.a, 72453u, 48496u, u_input.a), global1[_wgslsmith_index_u32(23680u, 7u)]), (vec4<u32>(0u, 11115u, 17637u, u_input.a) << (vec4<u32>(u_input.a, 18467u, 0u, u_input.a) % vec4<u32>(32u))) & (vec4<u32>(35862u, 7704u, u_input.a, u_input.a) << (vec4<u32>(1u, u_input.a, u_input.a, 0u) % vec4<u32>(32u))))));
    var_0 = reverseBits(_wgslsmith_mult_vec4_u32(firstLeadingBit(~(~vec4<u32>(var_0.x, 4294967295u, u_input.a, 1u))), ~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, var_0.x, var_0.x, 102312u), vec4<u32>(u_input.a, var_0.x, var_0.x, u_input.a)), var_0.x, u_input.a | var_0.x, func_1(Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 7u)], false, false, global1[_wgslsmith_index_u32(24588u, 7u)]), vec4<f32>(595f, -584f, 474f, 708f), global1[_wgslsmith_index_u32(u_input.a, 7u)], global0.zwx), global0.x, vec3<f32>(-843f, -871f, 386f)))));
    var var_1 = Struct_1(select(vec4<bool>(func_3(Struct_1(vec4<bool>(true, true, true, true), vec4<f32>(-848f, 979f, -245f, 1960f), global1[_wgslsmith_index_u32(4294967295u, 7u)], vec3<i32>(global0.x, global0.x, global0.x)), Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(var_0.x, 7u)], global1[_wgslsmith_index_u32(var_0.x, 7u)], false, true), vec4<f32>(1121f, 391f, -824f, 997f), global1[_wgslsmith_index_u32(1u, 7u)], vec3<i32>(2147483647i, 2147483647i, global0.x)), -global0.yxz, _wgslsmith_f_op_f32(step(679f, 1000f))).x, true, select(true, false && global1[_wgslsmith_index_u32(u_input.a, 7u)], !global1[_wgslsmith_index_u32(46017u, 7u)]), !(!global1[_wgslsmith_index_u32(var_0.x, 7u)])), !vec4<bool>(false, func_3(Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(1u, 7u)], false, true, global1[_wgslsmith_index_u32(var_0.x, 7u)]), vec4<f32>(1731f, 741f, 1404f, 290f), global1[_wgslsmith_index_u32(38238u, 7u)], global0.zzy), Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 7u)], true, true, false), vec4<f32>(1000f, 1230f, -196f, 208f), global1[_wgslsmith_index_u32(66094u, 7u)], vec3<i32>(global0.x, global0.x, global0.x)), global0.zzw, -1794f).x, false, global1[_wgslsmith_index_u32(4294967295u, 7u)]), ~(-global0.x) == -1i), vec4<f32>(-1046f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1573f)) * _wgslsmith_f_op_f32(-917f + _wgslsmith_f_op_f32(step(678f, -1000f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(167f * 1f), _wgslsmith_f_op_f32(f32(-1f) * -1022f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(1523f, _wgslsmith_f_op_f32(-1000f * 1063f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 679f, true))))), !(!((var_0.x & 10506u) != 1u)), _wgslsmith_div_vec3_i32(vec3<i32>(1i, abs(global0.x), -2147483647i), vec3<i32>(_wgslsmith_div_i32(1i, -23389i), -2147483647i, 1i << (abs(1u) % 32u))));
    var_0 = vec4<u32>(u_input.a, u_input.a, 1u, abs(var_0.x));
    var var_2 = ~firstTrailingBit(func_1(Struct_1(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 7u)], var_1.a.x, false), var_1.b, true, vec3<i32>(-2147483647i, global0.x, 1i)), _wgslsmith_sub_i32(var_1.d.x, -1i), vec3<f32>(300f, 1035f, var_1.b.x)) | 51778u);
    var var_3 = -20057i;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.x - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.b.x), var_1.b.x, any(vec2<bool>(global1[_wgslsmith_index_u32(var_0.x, 7u)], true))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.b.x)) + _wgslsmith_f_op_f32(-351f - var_1.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~max(~vec4<u32>(38587u, var_0.x, 11887u, u_input.a) << (vec4<u32>(u_input.a, u_input.a, var_0.x, var_0.x) % vec4<u32>(32u)), countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 21375u, u_input.a, 4294967295u), vec4<u32>(0u, var_0.x, 8451u, 12052u), vec4<u32>(var_0.x, 1u, 13619u, var_0.x)))), ~abs(vec4<u32>(var_0.x, ~0u, var_0.x, 1u | var_0.x)), global0.x, -(8717i ^ (global0.x & firstTrailingBit(var_1.d.x))), vec2<i32>(~global0.x, var_1.d.x));
}

