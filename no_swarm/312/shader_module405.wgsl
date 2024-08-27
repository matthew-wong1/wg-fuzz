struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
    c: u32,
    d: f32,
    e: i32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: vec2<i32>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<bool, 10> = array<bool, 10>(false, false, false, false, true, false, false, true, false, false);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<bool>) -> vec4<u32> {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(arg_0.x + arg_0.x)) + _wgslsmith_f_op_f32(-arg_0.x)))), !vec3<bool>(true, global1[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(26848u, 73147u), vec2<u32>(1u, 23297u))), 10u)], arg_1.x), min(_wgslsmith_mod_u32(_wgslsmith_mult_u32(countOneBits(3611u), firstLeadingBit(1u)), min(~1u, 1u)), firstLeadingBit(10395u)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -213f))))), u_input.b.x);
    var var_1 = ~_wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_add_u32(firstLeadingBit(4294967295u), var_0.c), ~(~var_0.c)), vec2<u32>(var_0.c, _wgslsmith_sub_u32(var_0.c, 3943u)) & vec2<u32>(~var_0.c, _wgslsmith_mult_u32(var_0.c, var_0.c)));
    let var_2 = vec4<bool>(!select(select(true, all(var_0.b), true), !(-57470i >= u_input.a), !(!arg_1.x)), true, (true != ((112f != var_0.a) & false)) | !arg_1.x, true);
    var var_3 = Struct_2(arg_0.x, !vec3<bool>(u_input.b.x <= abs(-33764i), true, var_0.d != -1043f), var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.x), 165f))) * _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(select(408f, arg_0.x, arg_1.x))))), -18510i);
    let var_4 = reverseBits(countOneBits(u_input.b.xw)) ^ select(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, var_3.e & 0i), u_input.b.yz), _wgslsmith_mult_vec2_i32(u_input.b.ww, ~vec2<i32>(u_input.b.x, -2147483647i) ^ ~u_input.b.xx), global1[_wgslsmith_index_u32(var_3.c, 10u)]);
    return _wgslsmith_mult_vec4_u32(select(~vec4<u32>(0u, ~28965u, max(27914u, 48201u), abs(var_0.c)), firstTrailingBit(vec4<u32>(4294967295u, _wgslsmith_sub_u32(var_0.c, var_1.x), select(var_1.x, 15884u, true), ~4294967295u)), all(var_3.b)), vec4<u32>(var_0.c, _wgslsmith_dot_vec2_u32(vec2<u32>(abs(4294967295u), reverseBits(var_1.x)), firstLeadingBit(~vec2<u32>(var_1.x, 44223u))), var_0.c, var_1.x));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec3<u32>, arg_2: Struct_3, arg_3: Struct_3) -> vec2<i32> {
    global1 = array<bool, 10>();
    let var_0 = Struct_1((countOneBits(_wgslsmith_mod_i32(u_input.a, arg_3.a.x)) != abs(_wgslsmith_dot_vec3_i32(vec3<i32>(956i, 6578i, arg_3.c.x), vec3<i32>(arg_2.c.x, -1i, -60415i)))) || !arg_3.d);
    global1 = array<bool, 10>();
    let var_1 = var_0;
    var var_2 = vec3<u32>(~(~4294967295u) | _wgslsmith_mod_u32(4294967295u, _wgslsmith_clamp_u32(4294967295u, 2213u, 4294967295u) >> (arg_0.x % 32u)), arg_1.x, 90147u);
    return vec2<i32>(1i | arg_2.a.x, -select(~arg_3.a.x | _wgslsmith_mod_i32(arg_2.c.x, -1i), arg_2.a.x, !(!arg_3.d)));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<f32>, arg_2: bool, arg_3: vec2<u32>) -> u32 {
    let var_0 = Struct_3(min(firstTrailingBit(u_input.b), ~_wgslsmith_div_vec4_i32(-u_input.b, vec4<i32>(-32195i, u_input.a, 2147483647i, 0i))), select(!vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 10u)], !global1[_wgslsmith_index_u32(arg_0.x, 10u)], true == global1[_wgslsmith_index_u32(1u, 10u)], global1[_wgslsmith_index_u32(arg_3.x, 10u)] || arg_2), vec4<bool>(true, global1[_wgslsmith_index_u32(firstLeadingBit(~arg_0.x), 10u)], true | any(vec2<bool>(false, true)), global1[_wgslsmith_index_u32(1u, 10u)]), !(!select(vec4<bool>(arg_2, false, true, true), vec4<bool>(global1[_wgslsmith_index_u32(59163u, 10u)], global1[_wgslsmith_index_u32(82609u, 10u)], global1[_wgslsmith_index_u32(arg_3.x, 10u)], true), vec4<bool>(global1[_wgslsmith_index_u32(65935u, 10u)], false, global1[_wgslsmith_index_u32(49146u, 10u)], true)))), vec2<i32>(firstTrailingBit(~_wgslsmith_mod_i32(-2147483647i, u_input.a)), -1i), any(!(!select(vec3<bool>(global1[_wgslsmith_index_u32(32302u, 10u)], false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, arg_2)))));
    global0 = arg_2;
    var var_1 = var_0.b.wzw;
    let var_2 = func_4(_wgslsmith_mod_vec4_u32(max(~vec4<u32>(86523u, arg_3.x, arg_3.x, 18559u) | _wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.x, 1u, arg_3.x, arg_0.x), vec4<u32>(1u, 0u, 56347u, arg_0.x)), ~func_3(vec2<f32>(arg_1.x, -1097f), var_0.b.yyy)), vec4<u32>(1u, ~4294967295u, 3209u, _wgslsmith_clamp_u32(~arg_0.x, arg_0.x, countOneBits(28888u)))), _wgslsmith_add_vec3_u32(~arg_0, vec3<u32>(arg_3.x, arg_0.x & arg_3.x, 1u)) & ~(~arg_0), Struct_3(firstLeadingBit(u_input.b & vec4<i32>(-22015i, u_input.b.x, 5384i, u_input.b.x)) >> (reverseBits(vec4<u32>(1u, 4294967295u, 1u, arg_0.x) << (vec4<u32>(arg_3.x, arg_0.x, arg_0.x, arg_0.x) % vec4<u32>(32u))) % vec4<u32>(32u)), !select(vec4<bool>(true, var_0.b.x, global1[_wgslsmith_index_u32(arg_3.x, 10u)], false), vec4<bool>(true, false, true, true), var_1.x), _wgslsmith_sub_vec2_i32(-_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, var_0.a.x), var_0.a.yy), select(abs(vec2<i32>(2147483647i, u_input.a)), vec2<i32>(-12258i, 14739i), var_1.x)), true), Struct_3(~var_0.a, !vec4<bool>(global1[_wgslsmith_index_u32(arg_0.x, 10u)], false, true, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(arg_0, arg_0), 10u)]), vec2<i32>(-54985i, u_input.b.x), false));
    let var_3 = Struct_1(!any(var_0.b.wzx));
    return ~(~139u << ((~_wgslsmith_add_u32(arg_0.x, 9302u) | 0u) % 32u));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<bool>) -> f32 {
    var var_0 = vec4<bool>(all(vec2<bool>(true, arg_1.x)), _wgslsmith_f_op_f32(min(-688f, _wgslsmith_f_op_f32(round(100f)))) == -319f, arg_1.x, arg_1.x);
    var var_1 = Struct_1(!(32078u <= func_2(vec3<u32>(96696u, 51312u, 7801u), vec2<f32>(2262f, 222f), global1[_wgslsmith_index_u32(23088u, 10u)], vec2<u32>(1u, 90789u))) | false);
    let var_2 = reverseBits(firstTrailingBit(vec2<i32>(i32(-1i) * -21729i, _wgslsmith_sub_i32(u_input.b.x, 1i)))) << (max(vec2<u32>(firstTrailingBit(_wgslsmith_mod_u32(11483u, 36343u)), countOneBits(24026u)), vec2<u32>(1u, 1u)) % vec2<u32>(32u));
    let var_3 = _wgslsmith_dot_vec3_u32(abs(countOneBits(min(select(vec3<u32>(26202u, 1u, 4294967295u), vec3<u32>(1u, 21973u, 4294967295u), var_0.xyx), vec3<u32>(1u, 1u, 1u)))), reverseBits(~vec3<u32>(1u, 1u, 1u)));
    global0 = !(!(true | var_1.a) & (1f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(708f)) * 2016f)));
    return -161f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global1[_wgslsmith_index_u32(34833u, 10u)] || any(vec2<bool>(true, true));
    global0 = (689f >= _wgslsmith_f_op_f32(func_1(_wgslsmith_div_vec2_i32(vec2<i32>(-6878i, u_input.a), vec2<i32>(u_input.b.x, 591i)), !vec4<bool>(global1[_wgslsmith_index_u32(3684u, 10u)], true, global1[_wgslsmith_index_u32(0u, 10u)], global1[_wgslsmith_index_u32(4294967295u, 10u)])))) & (true | global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~select(vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(27258u, 97576u, 39140u), vec3<bool>(global1[_wgslsmith_index_u32(78378u, 10u)], false, global1[_wgslsmith_index_u32(1u, 10u)])), abs(~vec3<u32>(4294967295u, 7223u, 25269u))), 10u)]);
    let var_0 = !global1[_wgslsmith_index_u32(1u, 10u)];
    let var_1 = Struct_1(select(true, false & select(false, true, all(vec2<bool>(global1[_wgslsmith_index_u32(1u, 10u)], true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(step(-930f, -1197f))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-257f, 1200f)))));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(round(212f)), select(vec3<bool>(var_0, all(vec3<bool>(false, false, var_1.a)), true), !vec3<bool>(!global1[_wgslsmith_index_u32(31944u, 10u)], false, true), true), 83360u, _wgslsmith_f_op_f32(func_1(-min(-u_input.b.zy, ~vec2<i32>(8112i, u_input.b.x)), !vec4<bool>(!var_0, any(vec2<bool>(true, true)), any(vec3<bool>(var_1.a, var_1.a, true)), true))), -1i);
    let var_3 = ~(~u_input.b);
    global0 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(80669u, 26714u, 6557u), vec3<u32>(var_2.c, var_2.c, 1u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(35044u, 4294967295u, var_2.c), vec3<u32>(var_2.c, var_2.c, var_2.c), vec3<u32>(var_2.c, 30511u, var_2.c))), 4294967295u), var_2.c), _wgslsmith_f_op_f32(floor(var_2.d)), var_2.e & (~max(var_3.x, u_input.a) ^ 40294i), 1000f, vec3<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(53407u, 1u) | abs(var_2.c), ~var_2.c), select(6400u, _wgslsmith_mod_u32(var_2.c, 40201u) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(68516u, 70582u), vec2<u32>(var_2.c, 14417u)), all(!vec4<bool>(false, true, var_0, false))), 87941u));
}

