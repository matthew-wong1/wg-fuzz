struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: f32,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: i32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 24> = array<vec4<f32>, 24>(vec4<f32>(2142f, -163f, 512f, 1000f), vec4<f32>(-207f, 1400f, -104f, 1551f), vec4<f32>(-653f, 213f, 1798f, -329f), vec4<f32>(464f, -768f, 1000f, -421f), vec4<f32>(-1429f, 1745f, -248f, -363f), vec4<f32>(-297f, -1000f, 807f, 1626f), vec4<f32>(1633f, -1037f, -728f, 2872f), vec4<f32>(-1000f, -561f, -172f, -289f), vec4<f32>(-685f, 652f, -1102f, 1156f), vec4<f32>(-1000f, 1000f, -260f, -687f), vec4<f32>(627f, 1000f, -459f, -304f), vec4<f32>(-379f, 1000f, -415f, 491f), vec4<f32>(2084f, -1035f, 291f, 1405f), vec4<f32>(-1548f, 926f, 369f, 1000f), vec4<f32>(371f, -566f, -450f, 432f), vec4<f32>(336f, 2179f, 1128f, 845f), vec4<f32>(968f, 1000f, 1065f, -165f), vec4<f32>(1000f, 620f, -124f, -1126f), vec4<f32>(-337f, 1108f, -1000f, 343f), vec4<f32>(1822f, -174f, -280f, 560f), vec4<f32>(-1385f, -563f, -1371f, 1371f), vec4<f32>(-581f, -728f, -1384f, -377f), vec4<f32>(-1000f, -1074f, 1000f, -1000f), vec4<f32>(1367f, -870f, -141f, -700f));

var<private> global1: bool;

var<private> global2: Struct_1;

var<private> global3: array<bool, 16>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32, arg_1: i32) -> vec3<bool> {
    global2 = Struct_1(_wgslsmith_mult_u32(~(~24549u) ^ ~_wgslsmith_mult_u32(63510u, arg_0), ~max(_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(11048u, 37274u)), _wgslsmith_mult_u32(3538u, global2.e))), vec4<f32>(-1817f, global2.b.x, 224f, global2.c), 1f, arg_0, 1u);
    var var_0 = Struct_1(~(~u_input.d), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(~25139u, 24u)]) + global2.b))), _wgslsmith_f_op_f32(f32(-1f) * -1626f), 31320u, _wgslsmith_mult_u32(global2.e, 22145u));
    var var_1 = select(abs(4294967295u), 25516u >> (select(_wgslsmith_clamp_u32(64439u, 19532u, reverseBits(1u)), ~(~global2.e), _wgslsmith_mod_u32(var_0.d, var_0.e) > var_0.e) % 32u), global3[_wgslsmith_index_u32(~5621u, 16u)]);
    let var_2 = ~((vec3<i32>(-1i) * -_wgslsmith_sub_vec3_i32(vec3<i32>(1i, -1i, -8817i), vec3<i32>(30914i, 175i, -11203i))) >> (vec3<u32>(65925u, 0u, ~global2.d) % vec3<u32>(32u)));
    var_1 = global2.a;
    return select(vec3<bool>(select(!global3[_wgslsmith_index_u32(70293u, 16u)] | any(vec3<bool>(true, false, global3[_wgslsmith_index_u32(4294967295u, 16u)])), false, any(select(vec3<bool>(false, true, global3[_wgslsmith_index_u32(u_input.d, 16u)]), vec3<bool>(global3[_wgslsmith_index_u32(global2.d, 16u)], false, true), vec3<bool>(global3[_wgslsmith_index_u32(arg_0, 16u)], false, global3[_wgslsmith_index_u32(53221u, 16u)])))), false, !(!all(vec3<bool>(global3[_wgslsmith_index_u32(arg_0, 16u)], global3[_wgslsmith_index_u32(global2.a, 16u)], true)))), !vec3<bool>(global3[_wgslsmith_index_u32(1u, 16u)], true, false), vec3<bool>(!any(select(vec2<bool>(global3[_wgslsmith_index_u32(0u, 16u)], true), vec2<bool>(global3[_wgslsmith_index_u32(var_0.e, 16u)], global3[_wgslsmith_index_u32(0u, 16u)]), vec2<bool>(global3[_wgslsmith_index_u32(u_input.e.x, 16u)], global3[_wgslsmith_index_u32(17391u, 16u)]))), true, false));
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2.b.xyw - vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.c), -513f), 574f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -472f)))));
    let var_1 = Struct_2(true, !func_3(arg_0.e, 1i));
    global0 = array<vec4<f32>, 24>();
    let var_2 = _wgslsmith_div_i32(~(-(~(~u_input.a))), ~_wgslsmith_dot_vec2_i32(abs(-u_input.b), _wgslsmith_mod_vec2_i32(u_input.b, ~vec2<i32>(-1i, 14852i))));
    let var_3 = abs(min(u_input.b, vec2<i32>(~0i >> (_wgslsmith_dot_vec2_u32(vec2<u32>(8492u, 0u), vec2<u32>(50884u, 16366u)) % 32u), u_input.a)));
    return firstLeadingBit(var_3.x | ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, -18037i), vec3<i32>(u_input.a, u_input.b.x, var_3.x) & vec3<i32>(0i, -11721i, u_input.a)));
}

fn func_1(arg_0: u32) -> Struct_1 {
    global2 = Struct_1(~(~69462u), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global2.b), vec4<f32>(global2.b.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-192f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1806f) - 836f), global2.c), any(select(!vec4<bool>(global3[_wgslsmith_index_u32(1u, 16u)], global3[_wgslsmith_index_u32(4294967295u, 16u)], false, true), select(vec4<bool>(true, true, global3[_wgslsmith_index_u32(arg_0, 16u)], false), vec4<bool>(global3[_wgslsmith_index_u32(10436u, 16u)], true, global3[_wgslsmith_index_u32(4294967295u, 16u)], true), global3[_wgslsmith_index_u32(u_input.d, 16u)]), true)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -247f), -1000f), global2.a, min(_wgslsmith_div_u32(~(u_input.e.x | 5714u), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, u_input.c.x, arg_0), vec3<u32>(arg_0, 24931u, 25537u)) >> (max(89690u, global2.a) % 32u)), firstTrailingBit(4294967295u)));
    global1 = any(vec3<bool>(select(global3[_wgslsmith_index_u32(arg_0, 16u)], !global3[_wgslsmith_index_u32(3680u, 16u)] != global3[_wgslsmith_index_u32(arg_0, 16u)], global3[_wgslsmith_index_u32(1u, 16u)]), true, global3[_wgslsmith_index_u32(u_input.d, 16u)]));
    let var_0 = -reverseBits(_wgslsmith_mult_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(-32066i, u_input.a, u_input.a, -17248i), vec4<i32>(2147483647i, u_input.a, u_input.a, 1i)), vec4<i32>(u_input.b.x, u_input.a, u_input.a, 1i) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(global2.d, u_input.e.x, arg_0, 0u), vec4<u32>(29233u, 25671u, 6732u, global2.d)) % vec4<u32>(32u))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-159f, 586f, global3[_wgslsmith_index_u32(arg_0, 16u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-567f * 582f)))));
    let var_2 = _wgslsmith_clamp_vec4_i32(select(_wgslsmith_div_vec4_i32(~(-var_0), vec4<i32>(firstLeadingBit(-34038i), ~(-11352i), abs(2147483647i), func_2(Struct_1(0u, global2.b, 1492f, arg_0, 13438u), 1u))), _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(var_0, var_0), var_0 << (vec4<u32>(arg_0, 0u, 1u, 105419u) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(var_0, var_0, var_0), vec4<i32>(-2147483647i, var_0.x, u_input.a, u_input.b.x), ~vec4<i32>(1i, -14009i, var_0.x, 30047i)), -var_0), select(select(vec4<bool>(global3[_wgslsmith_index_u32(38608u, 16u)], global3[_wgslsmith_index_u32(u_input.e.x, 16u)], true, global3[_wgslsmith_index_u32(u_input.d, 16u)]), select(vec4<bool>(global3[_wgslsmith_index_u32(u_input.d, 16u)], global3[_wgslsmith_index_u32(4294967295u, 16u)], global3[_wgslsmith_index_u32(4294967295u, 16u)], false), vec4<bool>(true, true, global3[_wgslsmith_index_u32(arg_0, 16u)], false), global3[_wgslsmith_index_u32(1u, 16u)]), !vec4<bool>(global3[_wgslsmith_index_u32(u_input.c.x, 16u)], true, global3[_wgslsmith_index_u32(global2.a, 16u)], false)), select(!vec4<bool>(false, true, true, global3[_wgslsmith_index_u32(23116u, 16u)]), !vec4<bool>(global3[_wgslsmith_index_u32(global2.e, 16u)], false, true, true), global3[_wgslsmith_index_u32(abs(4294967295u), 16u)]), true)), _wgslsmith_mod_vec4_i32(firstTrailingBit(-vec4<i32>(-13191i, u_input.b.x, -20580i, 0i)), -(~(var_0 >> (vec4<u32>(u_input.d, 1u, global2.d, 1u) % vec4<u32>(32u))))), vec4<i32>(_wgslsmith_mod_i32(func_2(Struct_1(1u, vec4<f32>(global2.b.x, global2.c, global2.c, -506f), 1000f, 4294967295u, arg_0), 15907u), u_input.b.x), -_wgslsmith_mod_i32(var_0.x | 0i, 0i), 0i, var_0.x));
    return Struct_1(arg_0, vec4<f32>(930f, global2.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.c + global2.b.x) - global2.c) * _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1763f, 917f)))), _wgslsmith_f_op_f32(abs(-1542f))), _wgslsmith_f_op_f32(select(global2.b.x, -308f, ~(~arg_0) > ~global2.e)), arg_0, ~(~countOneBits(min(arg_0, arg_0))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<bool, 16>();
    var var_0 = func_1(firstTrailingBit(~global2.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2224f)), vec2<f32>(_wgslsmith_div_f32(var_0.c, var_0.c), var_0.c), ~(-_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(0i, -2147483647i, u_input.b.x), vec3<i32>(-1i, u_input.a, u_input.b.x)), vec3<i32>(u_input.b.x, u_input.a, u_input.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.c) - -579f) + 1661f), abs(0u));
}

