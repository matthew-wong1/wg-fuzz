struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: u32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_1,
    d: vec3<f32>,
    e: vec2<f32>,
}

struct Struct_4 {
    a: u32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 30>;

var<private> global1: array<bool, 28>;

var<private> global2: vec4<u32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32) -> bool {
    global0 = array<bool, 30>();
    var var_0 = !select(true, any(select(vec2<bool>(false, true), vec2<bool>(global1[_wgslsmith_index_u32(global2.x, 28u)], true), global0[_wgslsmith_index_u32(~global2.x, 30u)])), true);
    var var_1 = arg_0;
    let var_2 = Struct_3(1u, Struct_2(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, -8134i, _wgslsmith_mult_i32(u_input.a, 0i)), vec3<i32>(u_input.a, -1i, abs(u_input.a)))), Struct_1(firstTrailingBit(vec2<i32>(_wgslsmith_mod_i32(-2147483647i, -29506i), max(u_input.a, -61467i))), u_input.e, firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(19258i, u_input.a, -43725i), vec3<i32>(u_input.a, 2147483647i, 28827i)) >> (max(vec3<u32>(4294967295u, 61662u, 60359u), vec3<u32>(u_input.e.x, global2.x, 25842u)) % vec3<u32>(32u))), global2.x, max(~vec2<i32>(u_input.a, u_input.a), vec2<i32>(_wgslsmith_mod_i32(u_input.a, u_input.a), u_input.a))), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 * arg_0), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(710f, arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0))))), 1000f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-249f, arg_0))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) - vec2<f32>(arg_0, 1000f)))), true)) - vec2<f32>(arg_0, _wgslsmith_f_op_f32(arg_0 * arg_0))));
    let var_3 = Struct_2(_wgslsmith_sub_vec3_i32(max(var_2.b.a, var_2.c.c ^ var_2.b.a), var_2.c.c) << (~(reverseBits(vec3<u32>(15919u, 1u, 67710u)) | countOneBits(u_input.e)) % vec3<u32>(32u)));
    return all(select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(global1[_wgslsmith_index_u32(1u, 28u)], global0[_wgslsmith_index_u32(var_2.c.d, 30u)]), global0[_wgslsmith_index_u32(global2.x, 30u)]), false), all(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 30u)], global0[_wgslsmith_index_u32(global2.x, 30u)], global1[_wgslsmith_index_u32(39389u, 28u)], true))), vec2<bool>(true, false), select(vec2<bool>(true, global1[_wgslsmith_index_u32(1u, 28u)]), vec2<bool>(true, all(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 30u)], global1[_wgslsmith_index_u32(u_input.d.x, 28u)], false, false))), !all(vec4<bool>(global1[_wgslsmith_index_u32(59263u, 28u)], global1[_wgslsmith_index_u32(global2.x, 28u)], global0[_wgslsmith_index_u32(0u, 30u)], global0[_wgslsmith_index_u32(u_input.d.x, 30u)])))));
}

fn func_4(arg_0: i32) -> f32 {
    global2 = min(~vec4<u32>(global2.x, 4294967295u, 0u ^ max(u_input.b, u_input.c), countOneBits(~u_input.b)), select(~(vec4<u32>(global2.x, 4294967295u, 21648u, 27921u) << (vec4<u32>(u_input.e.x, 4294967295u, 50383u, 0u) % vec4<u32>(32u))) | vec4<u32>(max(global2.x, 49754u), global2.x, 38166u, abs(global2.x)), min(~_wgslsmith_mod_vec4_u32(vec4<u32>(43791u, 1u, global2.x, 32603u), vec4<u32>(0u, global2.x, 6121u, 1u)), vec4<u32>(~global2.x, global2.x, global2.x, global2.x)), !select(global1[_wgslsmith_index_u32(1u, 28u)], false && global1[_wgslsmith_index_u32(global2.x, 28u)], global1[_wgslsmith_index_u32(32063u, 28u)])));
    let var_0 = Struct_4(~44545u, _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(-vec3<i32>(arg_0, 0i, 18379i), vec3<i32>(arg_0, firstLeadingBit(-58339i), -89480i)), firstTrailingBit(-select(vec3<i32>(-1i, -1i, u_input.a), vec3<i32>(2147483647i, 24191i, u_input.a), vec3<bool>(false, true, false)))));
    let var_1 = vec3<bool>(!global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(1u ^ global2.x, 0u), 30u)], !(global1[_wgslsmith_index_u32(var_0.a, 28u)] || (1u >= countOneBits(var_0.a))), !any(vec2<bool>(false, !global1[_wgslsmith_index_u32(1u, 28u)])));
    global1 = array<bool, 28>();
    let var_2 = Struct_3(u_input.e.x, Struct_2(vec3<i32>(-617i, reverseBits(var_0.b.x), arg_0)), Struct_1(var_0.b.zz, u_input.e, vec3<i32>(-var_0.b.x, var_0.b.x, -u_input.a | _wgslsmith_sub_i32(-2020i, 8557i)), reverseBits(25769u), _wgslsmith_mod_vec2_i32(~_wgslsmith_add_vec2_i32(vec2<i32>(arg_0, arg_0), var_0.b.yx), select(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, arg_0), var_0.b.xz), var_0.b.xx, !vec2<bool>(true, var_1.x)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(157f))))), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-1479f + -195f)), -1022f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(1064f + -1826f), _wgslsmith_f_op_f32(f32(-1f) * -269f)))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(419f, 868f), vec2<f32>(-341f, 368f), true))), vec2<f32>(_wgslsmith_f_op_f32(floor(569f)), -1003f), all(vec3<bool>(false, global0[_wgslsmith_index_u32(var_0.a, 30u)], var_1.x))))));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.e.x) * _wgslsmith_f_op_f32(-167f + 1000f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.d.x + -596f)))) * -1471f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -436f) + _wgslsmith_f_op_f32(-var_2.d.x)), _wgslsmith_f_op_f32(var_2.d.x - _wgslsmith_f_op_f32(-var_2.e.x)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -423f) + var_2.e.x)), !all(vec2<bool>(!global0[_wgslsmith_index_u32(global2.x, 30u)], global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0.a, u_input.c), 30u)]))));
}

fn func_2(arg_0: u32, arg_1: u32) -> vec3<i32> {
    global0 = array<bool, 30>();
    let var_0 = Struct_2(countOneBits(_wgslsmith_div_vec3_i32(vec3<i32>(1i, 1i, 1i), min(vec3<i32>(u_input.a, u_input.a, 2147483647i), vec3<i32>(14479i, -2147483647i, u_input.a)))) >> (~(~vec3<u32>(arg_0, 1u, 4568u)) % vec3<u32>(32u)));
    let var_1 = _wgslsmith_f_op_f32(func_4(select(min(u_input.a, 24462i), -(_wgslsmith_div_i32(u_input.a, u_input.a) ^ ~(-1i)), func_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1000f * 791f), 1f, !global0[_wgslsmith_index_u32(arg_1, 30u)]))))));
    global2 = vec4<u32>(4294967295u | arg_0, _wgslsmith_add_u32(global2.x, firstLeadingBit(55523u)), arg_0, firstTrailingBit(_wgslsmith_clamp_u32(arg_1, 1u, ~_wgslsmith_mult_u32(36644u, u_input.b))));
    global0 = array<bool, 30>();
    return var_0.a | reverseBits(_wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 4669i, u_input.a, var_0.a.x), vec4<i32>(var_0.a.x, -2147483647i, var_0.a.x, u_input.a)), _wgslsmith_dot_vec3_i32(var_0.a, var_0.a), -46746i), ~(var_0.a & var_0.a)));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_4, arg_2: Struct_1) -> i32 {
    let var_0 = Struct_4(arg_1.a, _wgslsmith_mult_vec3_i32(arg_2.c & arg_2.c, firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, 21817i, 1167i), arg_1.b & arg_1.b))));
    var var_1 = Struct_2(reverseBits(_wgslsmith_div_vec3_i32(var_0.b, _wgslsmith_div_vec3_i32(func_2(48389u, arg_2.b.x), func_2(arg_2.b.x, 4294967295u)))));
    var var_2 = -292f;
    global2 = ~(~arg_0);
    let var_3 = Struct_2(firstLeadingBit(arg_2.c));
    return arg_1.b.x ^ (u_input.a >> (_wgslsmith_div_u32(countOneBits(arg_1.a), firstTrailingBit(~1u)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 30>();
    var var_0 = Struct_1(_wgslsmith_clamp_vec2_i32(~((vec2<i32>(u_input.a, u_input.a) ^ vec2<i32>(u_input.a, u_input.a)) ^ vec2<i32>(u_input.a, -2147483647i)), firstLeadingBit(countOneBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, u_input.a), vec2<i32>(1191i, u_input.a), vec2<i32>(-24606i, u_input.a)))), _wgslsmith_div_vec2_i32(vec2<i32>(func_1(vec4<u32>(4294967295u, u_input.b, global2.x, global2.x), Struct_4(5074u, vec3<i32>(u_input.a, -19336i, 18715i)), Struct_1(vec2<i32>(-1i, 62498i), global2.wyx, vec3<i32>(u_input.a, -1i, u_input.a), 1u, vec2<i32>(-1i, 10421i))), _wgslsmith_sub_i32(10747i, -3278i)), select(select(vec2<i32>(u_input.a, -2147483647i), vec2<i32>(u_input.a, 11380i), false), ~vec2<i32>(u_input.a, u_input.a), !global0[_wgslsmith_index_u32(4294967295u, 30u)]))), select(~vec3<u32>(_wgslsmith_sub_u32(4294967295u, 16300u), 4294967295u & global2.x, global2.x & 4294967295u), ~max(~global2.xxz, ~vec3<u32>(13100u, u_input.b, 1u)), vec3<bool>(all(!vec2<bool>(global0[_wgslsmith_index_u32(39618u, 30u)], true)), global0[_wgslsmith_index_u32(~1u, 30u)], !any(vec4<bool>(global1[_wgslsmith_index_u32(global2.x, 28u)], global1[_wgslsmith_index_u32(4001u, 28u)], global0[_wgslsmith_index_u32(12416u, 30u)], global0[_wgslsmith_index_u32(u_input.d.x, 30u)])))), vec3<i32>(max(31064i, u_input.a), -_wgslsmith_dot_vec3_i32(-vec3<i32>(-27974i, 0i, -2147483647i), vec3<i32>(u_input.a, -2147483647i, 1i) | vec3<i32>(1i, -17584i, u_input.a)), -26624i), firstTrailingBit(0u), abs(-vec2<i32>(39558i, 8890i)) ^ firstLeadingBit(vec2<i32>(-2147483647i, u_input.a >> (4294967295u % 32u))));
    global0 = array<bool, 30>();
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(17730u, 75007u, 0u), 28u)] || (-13424i >= _wgslsmith_dot_vec3_i32(var_0.c, countOneBits(~var_0.c)));
    let var_2 = _wgslsmith_mult_vec2_i32(~vec2<i32>(~select(u_input.a, var_0.c.x, global1[_wgslsmith_index_u32(4294967295u, 28u)]), 2147483647i), vec2<i32>(-(~24929i), -_wgslsmith_clamp_i32(var_0.c.x, u_input.a, 1i)) & ~(-var_0.a));
    let var_3 = Struct_4(_wgslsmith_clamp_u32(17217u ^ _wgslsmith_dot_vec3_u32(global2.zxw, vec3<u32>(var_0.d, 26255u, var_0.d)), global2.x, 0u), ~select(countOneBits(vec3<i32>(u_input.a, var_0.c.x, 0i)) | vec3<i32>(var_2.x, 15086i, 1i), var_0.c, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.b.x, 1u, ~(~global2.x), max(u_input.c, 23325u)), select(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 81450u, u_input.c, 49033u), vec4<u32>(1u, 57094u, u_input.d.x, 49604u) >> (vec4<u32>(var_3.a, 43328u, 0u, var_3.a) % vec4<u32>(32u))), vec4<u32>(1u, u_input.d.x, ~global2.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.x, 44200u, var_0.d, 48428u), vec4<u32>(u_input.c, global2.x, 1u, 42658u))), all(vec3<bool>(global1[_wgslsmith_index_u32(var_3.a, 28u)], global1[_wgslsmith_index_u32(91329u, 28u)], true)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(768f, 2124f)))))));
}

