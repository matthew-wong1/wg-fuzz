struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<u32, 25>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32) -> f32 {
    let var_0 = vec2<i32>(1i, -2147483647i);
    let var_1 = true;
    let var_2 = vec3<u32>(u_input.a.x, global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(select(~(~1u), _wgslsmith_add_u32(u_input.a.x | 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 25u)], 25u)] & u_input.a.x), !any(vec3<bool>(false, true, false))), abs(~u_input.a.x) | abs(2650u), ~abs(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 25u)] | 4294967295u, 25u)])), 25u)], firstLeadingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(reverseBits(min(1u, global1[_wgslsmith_index_u32(1u, 25u)])), 25u)], 25u)]));
    var var_3 = (var_0.x > _wgslsmith_dot_vec4_i32(firstLeadingBit(max(vec4<i32>(0i, global0.x, -10399i, var_0.x), vec4<i32>(-23446i, var_0.x, var_0.x, 0i))), vec4<i32>(-54882i, -1i, -1i, -1i) << (~vec4<u32>(0u, u_input.a.x, 34443u, 39318u) % vec4<u32>(32u)))) || var_1;
    global0 = ~(-var_0);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(343f))));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>) -> i32 {
    global1 = array<u32, 25>();
    global1 = array<u32, 25>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(676f)), _wgslsmith_f_op_f32(f32(-1f) * -2185f), _wgslsmith_f_op_f32(func_3(753f)), _wgslsmith_f_op_f32(f32(-1f) * -1183f))) - vec4<f32>(_wgslsmith_f_op_f32(sign(2114f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) + _wgslsmith_f_op_f32(-795f - -1865f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1309f - 879f), _wgslsmith_f_op_f32(round(477f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1043f))))));
    let var_1 = arg_0;
    global0 = vec2<i32>(var_1.c.x, i32(-1i) * -2147483647i);
    return -1i;
}

fn func_1() -> vec2<bool> {
    var var_0 = !vec4<bool>(false, (_wgslsmith_f_op_f32(step(465f, 671f)) >= -229f) || true, all(vec4<bool>(all(vec4<bool>(false, true, false, true)), false, true, true)), _wgslsmith_div_i32(func_2(Struct_1(64941u, vec3<i32>(global0.x, global0.x, 2147483647i), vec3<i32>(global0.x, global0.x, global0.x), global0.x, global0.x), vec3<bool>(false, false, true)), ~global0.x) == _wgslsmith_dot_vec3_i32(select(vec3<i32>(global0.x, global0.x, 1i), vec3<i32>(1i, -25549i, global0.x), vec3<bool>(false, false, false)), ~vec3<i32>(global0.x, 0i, global0.x)));
    var_0 = select(select(select(vec4<bool>(var_0.x, true, true, var_0.x != var_0.x), !vec4<bool>(false, true, var_0.x, true), var_0.x), select(select(vec4<bool>(var_0.x, true, var_0.x, false), vec4<bool>(false, true, var_0.x, true), true), select(select(vec4<bool>(true, var_0.x, var_0.x, true), vec4<bool>(true, true, true, var_0.x), var_0.x), select(vec4<bool>(var_0.x, true, var_0.x, true), vec4<bool>(var_0.x, true, var_0.x, true), true), var_0.x || var_0.x), true), ~firstTrailingBit(1u) <= _wgslsmith_mod_u32(~u_input.a.x, ~54385u)), select(!select(select(vec4<bool>(true, false, var_0.x, var_0.x), vec4<bool>(true, var_0.x, var_0.x, true), vec4<bool>(true, var_0.x, var_0.x, var_0.x)), vec4<bool>(var_0.x, var_0.x, var_0.x, true), any(var_0.xy)), !vec4<bool>(true, true, var_0.x, true), any(select(vec2<bool>(var_0.x, true), !vec2<bool>(var_0.x, var_0.x), all(vec4<bool>(true, var_0.x, false, false))))), !(!vec4<bool>(any(var_0.yyy), true | var_0.x, true, var_0.x)));
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(295f, 297f)), 662f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(2402f, -656f)))) * _wgslsmith_div_vec4_f32(vec4<f32>(-1254f, _wgslsmith_f_op_f32(step(289f, 1022f)), _wgslsmith_f_op_f32(sign(-1020f)), 432f), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(481f, -1000f, 1664f, 1000f))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(937f, 188f, -1324f, 527f))))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -1089f))), 395f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(990f + 1071f))) + _wgslsmith_f_op_f32(-184f - _wgslsmith_div_f32(-202f, -1000f))), 347f));
    let var_2 = Struct_2(Struct_1(max(0u, u_input.a.x), -(max(vec3<i32>(global0.x, 1i, -15007i), vec3<i32>(global0.x, -1i, global0.x)) >> (_wgslsmith_clamp_vec3_u32(u_input.a, u_input.a, vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 25u)], 13390u, global1[_wgslsmith_index_u32(4294967295u, 25u)])) % vec3<u32>(32u))), select(~vec3<i32>(-2147483647i, global0.x, global0.x) << (vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 25u)], global1[_wgslsmith_index_u32(0u, 25u)], u_input.a.x) % vec3<u32>(32u)), select(max(vec3<i32>(global0.x, global0.x, global0.x), vec3<i32>(2147483647i, 2147483647i, global0.x)), vec3<i32>(0i, global0.x, global0.x), var_0.zwz), var_0.xxx), -abs(global0.x) >> (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x << (1u % 32u), 25u)], 25u)] % 32u), func_2(Struct_1(72658u, vec3<i32>(global0.x, global0.x, global0.x), vec3<i32>(4913i, global0.x, -29673i), global0.x, global0.x), select(vec3<bool>(var_0.x, false, true), var_0.yzy, var_0.x)) ^ ~1i), Struct_1(firstLeadingBit(max(~1u, abs(28632u))), _wgslsmith_mod_vec3_i32(-firstLeadingBit(vec3<i32>(71391i, 0i, -56313i)), vec3<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 49880i, 9499i), vec3<i32>(-23385i, global0.x, 2147483647i)), ~global0.x)), abs(vec3<i32>(-1i, global0.x, global0.x) | vec3<i32>(1i, -30829i, 0i)) ^ -min(vec3<i32>(23009i, global0.x, 0i), vec3<i32>(0i, global0.x, global0.x)), -2147483647i, abs(6431i)), Struct_1(~(_wgslsmith_div_u32(10091u, global1[_wgslsmith_index_u32(u_input.a.x, 25u)]) & u_input.a.x), max(_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, 1i, -49747i) & vec3<i32>(global0.x, -1i, 31345i), vec3<i32>(global0.x, -2517i, global0.x)), ~vec3<i32>(2147483647i, global0.x, global0.x)), vec3<i32>(-1i) * -(vec3<i32>(0i, -30798i, global0.x) << (u_input.a % vec3<u32>(32u))), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(0i, _wgslsmith_add_i32(-2147483647i, 1i)), global0.x, global0.x), _wgslsmith_dot_vec3_i32(vec3<i32>(-global0.x, -49064i, 0i), -_wgslsmith_add_vec3_i32(vec3<i32>(global0.x, global0.x, -2147483647i), vec3<i32>(25987i, global0.x, global0.x)))), Struct_1(global1[_wgslsmith_index_u32(1u, 25u)], -(~_wgslsmith_div_vec3_i32(vec3<i32>(-18094i, global0.x, 2147483647i), vec3<i32>(38554i, 2147483647i, 1i))), ~_wgslsmith_mult_vec3_i32(-vec3<i32>(global0.x, global0.x, global0.x), -vec3<i32>(-2147483647i, 30625i, -34820i)), ~global0.x, _wgslsmith_mod_i32(-_wgslsmith_mult_i32(50294i, global0.x), abs(global0.x))), vec2<u32>(_wgslsmith_div_u32(~(~u_input.a.x), ~max(14985u, 19058u)), 50425u));
    let var_3 = var_2.c;
    return vec2<bool>(var_0.x, var_0.x);
}

fn func_4(arg_0: bool, arg_1: Struct_3) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(f32(-1f) * -1603f)))));
    global0 = vec2<i32>(arg_1.c.x, global0.x);
    global0 = ~vec2<i32>(global0.x, -arg_1.e);
    global1 = array<u32, 25>();
    global0 = arg_1.d.c.yx;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(!(global0.x > ~global0.x) || (select(any(vec4<bool>(false, false, true, false)), true, true) | all(func_1())), Struct_3(Struct_2(Struct_1(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(21851u, 25u)], u_input.a.x), ~vec3<i32>(global0.x, global0.x, global0.x), select(vec3<i32>(global0.x, global0.x, global0.x), vec3<i32>(global0.x, global0.x, global0.x), false), 1i, ~global0.x), Struct_1(_wgslsmith_dot_vec2_u32(u_input.a.xx, vec2<u32>(59740u, global1[_wgslsmith_index_u32(u_input.a.x, 25u)])), vec3<i32>(-2147483647i, 2147483647i, global0.x), select(vec3<i32>(2147483647i, -42670i, -7660i), vec3<i32>(global0.x, global0.x, 0i), vec3<bool>(true, false, true)), -19168i, -22001i), Struct_1(firstLeadingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 25u)], 25u)]), max(vec3<i32>(-55561i, global0.x, global0.x), vec3<i32>(1i, -1i, global0.x)), _wgslsmith_add_vec3_i32(vec3<i32>(11314i, global0.x, global0.x), vec3<i32>(-75411i, 2147483647i, global0.x)), i32(-1i) * -2147483647i, 0i), Struct_1(~28211u, vec3<i32>(global0.x, global0.x, 18952i), _wgslsmith_sub_vec3_i32(vec3<i32>(12839i, 18982i, global0.x), vec3<i32>(-51154i, global0.x, 23728i)), global0.x, global0.x), u_input.a.zx), Struct_1(~1u, _wgslsmith_mod_vec3_i32(vec3<i32>(global0.x, 7869i, 1i), vec3<i32>(42890i, global0.x, global0.x)) << (~u_input.a % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(vec3<i32>(global0.x, -2147483647i, global0.x) & vec3<i32>(43006i, global0.x, global0.x), ~vec3<i32>(10314i, global0.x, global0.x), ~vec3<i32>(-8846i, -1i, global0.x)), 0i, -41631i), select(-select(vec2<i32>(-10758i, global0.x), vec2<i32>(global0.x, 8258i), false), max(vec2<i32>(global0.x, global0.x), vec2<i32>(2147483647i, -1i) ^ vec2<i32>(19479i, global0.x)), vec2<bool>(true, true)), Struct_1(_wgslsmith_sub_u32(0u & u_input.a.x, ~u_input.a.x), vec3<i32>(global0.x, global0.x ^ global0.x, -1i), _wgslsmith_mult_vec3_i32(vec3<i32>(global0.x, 1i, global0.x), -vec3<i32>(global0.x, global0.x, -6322i)), -abs(39603i), global0.x), func_2(Struct_1(10360u >> (global1[_wgslsmith_index_u32(u_input.a.x, 25u)] % 32u), vec3<i32>(-4392i, global0.x, global0.x) ^ vec3<i32>(-755i, global0.x, global0.x), _wgslsmith_mod_vec3_i32(vec3<i32>(global0.x, 2147483647i, -1i), vec3<i32>(global0.x, global0.x, global0.x)), ~global0.x, abs(global0.x)), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)))));
    var var_1 = select(select(vec4<bool>(!all(vec3<bool>(false, false, true)), select(true, true, true), false, false), !select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true)), vec4<bool>(global0.x >= 9076i, any(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true))), true, !all(vec3<bool>(true, false, false)))), vec4<bool>(true, !(~7292u != reverseBits(u_input.a.x)), all(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false)), true), false);
    let var_2 = false;
    global1 = array<u32, 25>();
    global0 = vec2<i32>(-1i) * -vec2<i32>(-_wgslsmith_div_i32(global0.x, global0.x), var_0.e);
    let x = u_input.a;
    s_output = StorageBuffer(~30764u, ~(~(~vec3<u32>(global1[_wgslsmith_index_u32(u_input.a.x, 25u)], 74680u, 48758u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -815f))))), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-380f)) + -207f))), _wgslsmith_f_op_f32(-1051f * _wgslsmith_f_op_f32(round(180f)))));
}

