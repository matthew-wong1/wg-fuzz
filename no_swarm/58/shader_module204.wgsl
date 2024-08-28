struct Struct_1 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: i32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_2,
    d: vec4<f32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_2,
    d: Struct_3,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 16>;

var<private> global1: array<u32, 17> = array<u32, 17>(126617u, 31713u, 18582u, 0u, 70640u, 26451u, 16324u, 27611u, 0u, 1u, 0u, 27625u, 4294967295u, 34957u, 40209u, 10557u, 1u);

var<private> global2: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(476f, vec3<i32>(-18520i, 1i, -16603i), vec3<bool>(true, false, false)), Struct_2(873f, vec3<i32>(0i, -1i, 0i), vec3<bool>(true, false, false)), Struct_2(-1633f, vec3<i32>(i32(-2147483648), 0i, 1i), vec3<bool>(false, false, true)), Struct_2(-418f, vec3<i32>(1i, 2147483647i, i32(-2147483648)), vec3<bool>(false, true, true)), Struct_2(646f, vec3<i32>(0i, 6052i, i32(-2147483648)), vec3<bool>(true, false, true)), Struct_2(376f, vec3<i32>(2147483647i, 14200i, 39397i), vec3<bool>(false, true, true)), Struct_2(2575f, vec3<i32>(-1i, 8035i, 28664i), vec3<bool>(false, true, false)), Struct_2(639f, vec3<i32>(2147483647i, 20708i, -17206i), vec3<bool>(false, true, true)), Struct_2(-574f, vec3<i32>(0i, -2804i, 20882i), vec3<bool>(true, true, true)), Struct_2(-1456f, vec3<i32>(-1i, -23663i, -54749i), vec3<bool>(true, false, true)), Struct_2(-833f, vec3<i32>(-1i, 1i, -21584i), vec3<bool>(false, false, true)), Struct_2(-1050f, vec3<i32>(-17688i, 31941i, -1i), vec3<bool>(false, true, false)), Struct_2(844f, vec3<i32>(-1i, 515i, i32(-2147483648)), vec3<bool>(true, true, false)), Struct_2(-982f, vec3<i32>(9037i, 2147483647i, 5347i), vec3<bool>(false, true, true)), Struct_2(1218f, vec3<i32>(11536i, -1i, -32481i), vec3<bool>(false, false, true)), Struct_2(-1302f, vec3<i32>(-5995i, -29457i, 19931i), vec3<bool>(false, false, false)), Struct_2(-768f, vec3<i32>(-1i, 36088i, 1i), vec3<bool>(false, false, true)), Struct_2(1315f, vec3<i32>(-2420i, 16171i, -1i), vec3<bool>(true, true, false)), Struct_2(-826f, vec3<i32>(26248i, 0i, i32(-2147483648)), vec3<bool>(false, false, false)), Struct_2(-1436f, vec3<i32>(i32(-2147483648), i32(-2147483648), 1i), vec3<bool>(true, false, false)), Struct_2(-1671f, vec3<i32>(i32(-2147483648), -1i, 0i), vec3<bool>(false, false, false)), Struct_2(-579f, vec3<i32>(1i, 37177i, 39374i), vec3<bool>(true, false, false)), Struct_2(-1000f, vec3<i32>(-96837i, 2147483647i, -53532i), vec3<bool>(false, true, false)), Struct_2(-352f, vec3<i32>(0i, 1i, 2147483647i), vec3<bool>(false, false, false)), Struct_2(-640f, vec3<i32>(i32(-2147483648), 3732i, 0i), vec3<bool>(true, false, false)), Struct_2(1587f, vec3<i32>(-42601i, -1i, 1i), vec3<bool>(false, false, false)), Struct_2(1000f, vec3<i32>(i32(-2147483648), i32(-2147483648), 4346i), vec3<bool>(false, false, false)), Struct_2(-1496f, vec3<i32>(48382i, 2147483647i, -7990i), vec3<bool>(false, false, true)), Struct_2(-1578f, vec3<i32>(2147483647i, 0i, 1i), vec3<bool>(false, false, true)), Struct_2(1026f, vec3<i32>(-46806i, 2147483647i, 1i), vec3<bool>(false, true, true)), Struct_2(247f, vec3<i32>(i32(-2147483648), 66460i, 15466i), vec3<bool>(true, true, true)));

var<private> global3: vec2<f32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: Struct_1, arg_3: f32) -> f32 {
    var var_0 = arg_1.c;
    var var_1 = 53630u;
    global0 = array<Struct_2, 16>();
    var var_2 = all(vec4<bool>(true, arg_1.c.c.x, true, false));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(2070f - arg_1.c.a), 104f, arg_2.b.x);
    return arg_2.b.x;
}

fn func_2(arg_0: vec2<u32>, arg_1: u32, arg_2: u32, arg_3: i32) -> f32 {
    let var_0 = reverseBits(_wgslsmith_div_vec3_u32(reverseBits(_wgslsmith_div_vec3_u32(~vec3<u32>(0u, arg_0.x, 0u), vec3<u32>(1u, arg_1, global1[_wgslsmith_index_u32(16970u, 17u)]) >> (vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 17u)], 17u)], arg_0.x, 590u) % vec3<u32>(32u)))), ~abs(~vec3<u32>(5931u, 24279u, global1[_wgslsmith_index_u32(48734u, 17u)]))));
    global0 = array<Struct_2, 16>();
    var var_1 = !(!(!vec2<bool>(all(vec3<bool>(false, false, false)), false)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(any(vec3<bool>(var_1.x, false, true)), Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, 1236f, global3.x))), vec2<f32>(892f, global3.x), u_input.c, select(vec3<bool>(true, false, true), vec3<bool>(var_1.x, true, var_1.x), true)), min(vec4<u32>(global1[_wgslsmith_index_u32(arg_0.x, 17u)], 4294967295u, arg_0.x, 3923u), vec4<u32>(global1[_wgslsmith_index_u32(arg_1, 17u)], 4294967295u, 0u, 4294967295u) >> (vec4<u32>(arg_0.x, arg_1, 4294967295u, 8450u) % vec4<u32>(32u))), Struct_2(_wgslsmith_f_op_f32(-global3.x), u_input.b.xyw, vec3<bool>(true, true, false)), vec4<f32>(_wgslsmith_f_op_f32(sign(global3.x)), _wgslsmith_f_op_f32(trunc(global3.x)), _wgslsmith_f_op_f32(f32(-1f) * -1361f), -1000f)), Struct_1(vec3<f32>(global3.x, global3.x, _wgslsmith_f_op_f32(select(520f, global3.x, false))), vec2<f32>(_wgslsmith_f_op_f32(3209f + -800f), -1914f), u_input.c, vec3<bool>(global3.x <= global3.x, select(false, var_1.x, false), !var_1.x)), 1467f)));
    var var_3 = global2[_wgslsmith_index_u32(arg_0.x, 31u)];
    return _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2 - var_2), var_2))), _wgslsmith_f_op_f32(step(var_2, -2686f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(true, Struct_3(Struct_1(vec3<f32>(146f, global3.x, var_3.a), vec2<f32>(var_2, global3.x), arg_3, var_3.c), vec4<u32>(26468u, var_0.x, arg_0.x, arg_2), Struct_2(var_2, u_input.b.wzw, vec3<bool>(var_1.x, var_1.x, false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1308f, var_3.a, var_3.a, 809f))), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1041f, 184f, global3.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, -1677f)), var_3.b.x, var_3.c), global3.x)), 1843f)));
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = ~1u;
    global2 = array<Struct_2, 31>();
    var var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(758f, -741f)) - -1000f), _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(f32(-1f) * -356f)), 724f), vec2<f32>(global3.x, 1014f), u_input.b.x, vec3<bool>(all(vec4<bool>(true, true, true, true)) || false, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_2(u_input.a, 79936u, u_input.a.x, 0i)))) < 103f, any(vec3<bool>(true, true, true))));
    let var_2 = ~vec4<u32>(global1[_wgslsmith_index_u32(~20942u, 17u)], ~firstLeadingBit(select(u_input.a.x, 25063u, var_1.d.x)), 4294967295u, u_input.a.x);
    var var_3 = reverseBits(_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(var_2.wwy ^ vec3<u32>(14487u, 58427u, u_input.a.x), var_2.zwz) & vec3<u32>(1u, u_input.a.x, _wgslsmith_clamp_u32(var_0, 18641u, var_0)), vec3<u32>(19651u, var_2.x, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, var_0, var_0, 16392u), vec4<u32>(1u, global1[_wgslsmith_index_u32(9127u, 17u)], 1u, 64374u)), vec4<u32>(u_input.a.x, var_0, 1u, global1[_wgslsmith_index_u32(u_input.a.x, 17u)]) << (var_2 % vec4<u32>(32u)))), var_2.yxy));
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.a) + vec3<f32>(var_1.b.x, var_1.b.x, global3.x))) - var_1.a), vec2<f32>(_wgslsmith_f_op_f32(func_2(vec2<u32>(32371u, _wgslsmith_mod_u32(u_input.a.x, global1[_wgslsmith_index_u32(4294967295u, 17u)])), _wgslsmith_sub_u32(var_0, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(21983u, var_3.x), 17u)]), firstTrailingBit(48596u), 51298i)), _wgslsmith_f_op_f32(f32(-1f) * -847f)), countOneBits(abs(abs(~0i))), vec3<bool>(any(!(!vec4<bool>(true, true, var_1.d.x, false))), all(vec2<bool>(false, var_1.d.x)), !all(vec3<bool>(false, false, false))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 16>();
    var var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, global3.x, global3.x, -245f) - vec4<f32>(1266f, -626f, global3.x, 488f)) * vec4<f32>(global3.x, global3.x, global3.x, global3.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, 253f, -126f, 1000f)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global3.x, -1842f, global3.x, global3.x)))))), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global3.x))), _wgslsmith_f_op_f32(max(-1249f, _wgslsmith_f_op_f32(-200f * global3.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(global3.x, global3.x)))), _wgslsmith_f_op_f32(-global3.x)))), func_1(249f), Struct_2(_wgslsmith_f_op_f32(exp2(global3.x)), vec3<i32>(-1i) * -(u_input.b.yxy ^ vec3<i32>(26681i, -3868i, u_input.c)), !select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false), func_1(-221f).d, select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true))), Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, 900f, -282f) + vec3<f32>(-966f, global3.x, global3.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-281f, 440f)), _wgslsmith_add_i32(-19720i, func_1(1425f).c), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true), func_1(global3.x).d, any(vec2<bool>(true, true)))), vec4<u32>(_wgslsmith_div_u32(_wgslsmith_clamp_u32(u_input.a.x, 0u, 64480u), global1[_wgslsmith_index_u32(1u, 17u)]), _wgslsmith_mod_u32(1u, ~global1[_wgslsmith_index_u32(1u, 17u)]), 38804u, ~1u), global2[_wgslsmith_index_u32(~(~min(global1[_wgslsmith_index_u32(u_input.a.x, 17u)], 70406u)), 31u)], vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(u_input.a, 40626u, 4294967295u, u_input.c))), -1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global3.x))), 988f)));
    let var_1 = Struct_5(vec2<f32>(_wgslsmith_f_op_f32(-func_1(-266f).a.x), 105f), Struct_2(_wgslsmith_f_op_f32(abs(-1788f)), var_0.c.b, vec3<bool>(false, true, all(var_0.b.d))));
    let var_2 = !vec2<bool>(_wgslsmith_sub_u32(34504u, 0u ^ global1[_wgslsmith_index_u32(1u, 17u)]) != u_input.a.x, var_0.c.c.x);
    var var_3 = _wgslsmith_mult_vec2_i32(vec2<i32>((_wgslsmith_clamp_i32(-9713i, -3493i, u_input.c) & _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.b.b.x, 52565i, 2147483647i), u_input.b.xyy)) ^ _wgslsmith_mult_i32(~var_0.c.b.x, 0i), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(max(var_0.c.b, vec3<i32>(18414i, u_input.c, u_input.c)), firstLeadingBit(var_1.b.b)), ~_wgslsmith_mod_vec3_i32(vec3<i32>(25606i, -15191i, var_0.d.c.b.x), vec3<i32>(19870i, -9322i, 21241i)))), vec2<i32>(0i, -39302i));
    global3 = vec2<f32>(236f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(var_1.b.a)))));
    var var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global3.x), -2623f, _wgslsmith_f_op_f32(-820f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(true, var_0.d, var_0.d.a, -1000f)), _wgslsmith_f_op_f32(871f - var_0.d.a.b.x))), _wgslsmith_f_op_f32(f32(-1f) * -1474f)) + var_0.d.d);
    var var_5 = vec3<f32>(_wgslsmith_f_op_f32(floor(global3.x)), -106f, var_0.a.x);
    var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(var_0.d.d - vec4<f32>(-576f, global3.x, -150f, var_0.a.x)))), var_0.a)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a))), func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1433f - var_0.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2105f * 1000f) + _wgslsmith_f_op_f32(951f * global3.x)))), Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(global3.x)))), -1957f), select(var_1.b.b, u_input.b.zyz, var_1.b.c), vec3<bool>(!any(vec4<bool>(var_2.x, false, true, true)), true, !any(vec2<bool>(var_1.b.c.x, var_0.c.c.x)))), var_0.d);
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.d.b << (vec4<u32>(41302u, ~30960u, u_input.a.x, u_input.a.x) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(-var_4.wxy), firstTrailingBit(var_0.d.b), ~(~(~(-1i))), 24797i);
}

