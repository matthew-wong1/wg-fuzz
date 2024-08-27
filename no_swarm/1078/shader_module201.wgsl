struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: i32,
    d: vec2<f32>,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: bool = false;

var<private> global2: array<u32, 6> = array<u32, 6>(97083u, 1481u, 49941u, 4294967295u, 13915u, 4294967295u);

var<private> global3: vec4<u32>;

var<private> global4: array<f32, 25> = array<f32, 25>(-1000f, -960f, 400f, 1950f, -1242f, -1000f, -1213f, -656f, 1933f, -423f, -1855f, 679f, -842f, -860f, -831f, -377f, -362f, -1986f, -387f, -575f, 409f, -1776f, -255f, -889f, -330f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_2() -> i32 {
    global1 = !(!any(vec4<bool>(true, u_input.a <= 18208i, true, all(vec2<bool>(true, false)))));
    let var_0 = true;
    let var_1 = Struct_1(abs(countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(60801u, global2[_wgslsmith_index_u32(15779u, 6u)], global2[_wgslsmith_index_u32(42346u, 6u)], 44941u), select(vec4<u32>(global3.x, global2[_wgslsmith_index_u32(global3.x, 6u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.d, 6u)], 6u)], 20394u), vec4<u32>(0u, 28439u, u_input.d, u_input.d), var_0)))), false || var_0, u_input.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-102f, global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3.x, 6u)], 6u)], 25u)])), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global4[_wgslsmith_index_u32(u_input.d, 25u)], global4[_wgslsmith_index_u32(39868u, 25u)]))) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-889f - global4[_wgslsmith_index_u32(4294967295u, 25u)]), _wgslsmith_f_op_f32(-1026f + global4[_wgslsmith_index_u32(0u, 25u)]))))), global2[_wgslsmith_index_u32(4294967295u ^ ~countOneBits(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(u_input.d, 6u)], 1u)), 6u)]);
    var var_2 = var_0;
    global2 = array<u32, 6>();
    return var_1.c;
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec4<i32>) -> vec3<bool> {
    let var_0 = arg_1.d;
    var var_1 = true;
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -206f, global4[_wgslsmith_index_u32(0u, 25u)], -1016f) + vec4<f32>(arg_1.d.x, 1000f, arg_1.d.x, arg_0)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_1.d.x, var_0.x, 803f) + vec4<f32>(557f, var_0.x, global4[_wgslsmith_index_u32(1u, 25u)], global4[_wgslsmith_index_u32(u_input.d, 25u)]))))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-889f, var_0.x, 1000f, 1451f)), vec4<f32>(1492f, arg_1.d.x, 221f, var_0.x)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1352f, -1301f, global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(33963u, 6u)], 25u)], 1000f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-779f, arg_1.d.x, var_0.x, 200f) + vec4<f32>(arg_1.d.x, -3003f, global4[_wgslsmith_index_u32(0u, 25u)], arg_1.d.x)))))), !(!(!vec4<bool>(arg_1.b, arg_1.b, true, arg_1.b))))), !(max(1u, ~79467u) < _wgslsmith_add_u32(global2[_wgslsmith_index_u32(abs(arg_1.a.x), 6u)], 35794u))));
    var var_3 = select(!(!select(select(vec3<bool>(false, arg_1.b, arg_1.b), vec3<bool>(arg_1.b, arg_1.b, true), vec3<bool>(arg_1.b, false, false)), !vec3<bool>(true, false, arg_1.b), !arg_1.b)), vec3<bool>(any(select(select(vec3<bool>(arg_1.b, arg_1.b, false), vec3<bool>(arg_1.b, arg_1.b, true), vec3<bool>(arg_1.b, arg_1.b, arg_1.b)), vec3<bool>(arg_1.b, arg_1.b, false), arg_1.b != arg_1.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(11043u, 6u)], 25u)]), var_2.x) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x))), arg_1.b), false);
    var var_4 = _wgslsmith_add_u32(firstTrailingBit(4294967295u), ~firstLeadingBit(~46081u)) << (~35191u % 32u);
    return !select(!select(select(vec3<bool>(true, true, true), vec3<bool>(var_3.x, var_3.x, true), var_3.x), !vec3<bool>(true, var_3.x, false), true), select(vec3<bool>(true, true, all(vec4<bool>(true, var_3.x, false, false))), !(!vec3<bool>(false, arg_1.b, arg_1.b)), select(select(vec3<bool>(var_3.x, false, true), vec3<bool>(var_3.x, true, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), var_3.x | var_3.x)), !select(select(vec3<bool>(arg_1.b, var_3.x, var_3.x), vec3<bool>(var_3.x, var_3.x, arg_1.b), vec3<bool>(false, false, false)), !vec3<bool>(false, var_3.x, true), var_3.x));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: vec3<f32>) -> vec4<i32> {
    var var_0 = global3.x;
    var_0 = ~global3.x;
    var_0 = ~(~(~(~4294967295u)));
    var var_1 = select(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_3.x)))), Struct_1(_wgslsmith_sub_vec4_u32(arg_2.a, ~arg_0.a), true, 16174i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.x, arg_3.x)), countOneBits(0u)), vec4<i32>(arg_1.x, func_2(), -2147483647i, _wgslsmith_add_i32(_wgslsmith_mult_i32(arg_0.c, arg_2.c), ~arg_2.c))), func_3(-1646f, Struct_1(~(arg_2.a >> (arg_2.a % vec4<u32>(32u))), arg_2.b, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, u_input.c), vec3<i32>(arg_1.x, -1i, 61689i) ^ vec3<i32>(arg_2.c, 0i, arg_1.x)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(947f, -1098f) * arg_0.d))), reverseBits(15556u)), ~vec4<i32>(arg_2.c, -31399i, _wgslsmith_dot_vec3_i32(vec3<i32>(8010i, -1i, -19039i), vec3<i32>(arg_0.c, arg_0.c, arg_2.c)), arg_0.c | arg_2.c)), true);
    var_1 = !vec3<bool>(select(select(false, true, true), all(select(vec4<bool>(false, true, arg_0.b, arg_2.b), vec4<bool>(true, arg_0.b, false, true), vec4<bool>(arg_2.b, false, true, true))), func_3(_wgslsmith_f_op_f32(sign(-502f)), arg_2, min(vec4<i32>(arg_1.x, -27643i, 2147483647i, 39155i), vec4<i32>(-2860i, u_input.c, arg_0.c, 712i))).x), !arg_2.b, arg_0.b);
    return _wgslsmith_add_vec4_i32(select(vec4<i32>(i32(-1i) * -2421i, -u_input.b, _wgslsmith_sub_i32(arg_0.c, 0i), arg_1.x), vec4<i32>(1i, arg_2.c | 1i, firstTrailingBit(arg_2.c), arg_0.c), var_1.x), -_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_1.x, -2147483647i, arg_2.c, arg_1.x), vec4<i32>(arg_2.c, 30448i, arg_1.x, arg_0.c)), vec4<i32>(-2147483647i, arg_0.c, arg_1.x, 2561i) << (vec4<u32>(49847u, 54850u, u_input.d, global2[_wgslsmith_index_u32(0u, 6u)]) % vec4<u32>(32u)))) ^ ~(-(_wgslsmith_add_vec4_i32(vec4<i32>(arg_2.c, arg_0.c, arg_1.x, arg_0.c), vec4<i32>(arg_2.c, u_input.b, -1i, arg_2.c)) ^ ~vec4<i32>(u_input.c, -8923i, 2147483647i, 13485i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_1(_wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(22729u, global2[_wgslsmith_index_u32(19047u, 6u)], global3.x, 32952u)), _wgslsmith_mult_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(global3.x, 6u)], u_input.d, u_input.d, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.d, 6u)], 6u)]), select(vec4<u32>(0u, 2698u, global2[_wgslsmith_index_u32(global3.x, 6u)], 1u), vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 6u)], global3.x, 1u, u_input.d), vec4<bool>(true, true, true, false)))), true, -1i, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4[_wgslsmith_index_u32(69091u, 25u)], global4[_wgslsmith_index_u32(3650u, 25u)]))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(561f, global4[_wgslsmith_index_u32(u_input.d, 25u)])))), _wgslsmith_clamp_u32(~(~0u), 0u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, global3.x), _wgslsmith_div_vec2_u32(global3.zy, vec2<u32>(global3.x, 4294967295u))))), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, u_input.a) << (~global3.xy % vec2<u32>(32u)), -((vec2<i32>(u_input.c, u_input.a) ^ vec2<i32>(u_input.a, u_input.b)) | _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, u_input.a), vec2<i32>(u_input.a, -1478i)))), Struct_1(firstTrailingBit(vec4<u32>(12012u, global2[_wgslsmith_index_u32(global3.x, 6u)], 73525u, 0u) >> (vec4<u32>(global2[_wgslsmith_index_u32(global3.x, 6u)], 69240u, u_input.d, 58910u) % vec4<u32>(32u))) ^ vec4<u32>(4294967295u, ~54861u, u_input.d ^ global2[_wgslsmith_index_u32(67234u, 6u)], ~u_input.d), true, -u_input.b, vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -132f), -1371f, true)), 1361f), ~84298u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(62952u, 6u)], 6u)], 6u)], 25u)], global4[_wgslsmith_index_u32(64999u, 25u)], global4[_wgslsmith_index_u32(1u, 25u)])))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4[_wgslsmith_index_u32(global3.x, 25u)], 504f, -1000f)) - vec3<f32>(global4[_wgslsmith_index_u32(0u, 25u)], global4[_wgslsmith_index_u32(68910u, 25u)], 1387f)))));
    global1 = true;
    let var_1 = Struct_2(-var_0.x, countOneBits(-abs(abs(vec2<i32>(u_input.a, u_input.b)))), select(vec3<i32>(u_input.a, var_0.x, abs(1386i)), -var_0.wzx, select(vec3<bool>(true, true, true), func_3(_wgslsmith_f_op_f32(max(global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 6u)], 25u)], 234f)), Struct_1(vec4<u32>(4294967295u, 56766u, u_input.d, global3.x), true, var_0.x, vec2<f32>(global4[_wgslsmith_index_u32(8107u, 25u)], global4[_wgslsmith_index_u32(u_input.d, 25u)]), 30364u), vec4<i32>(var_0.x, u_input.b, var_0.x, -71205i) | vec4<i32>(1i, 2268i, 48822i, var_0.x)), func_3(1f, Struct_1(vec4<u32>(global3.x, global2[_wgslsmith_index_u32(u_input.d, 6u)], 59229u, 1u), true, -33041i, vec2<f32>(global4[_wgslsmith_index_u32(23264u, 25u)], -1000f), global2[_wgslsmith_index_u32(u_input.d, 6u)]), reverseBits(vec4<i32>(var_0.x, var_0.x, var_0.x, 37849i))))), Struct_1(vec4<u32>(global2[_wgslsmith_index_u32(u_input.d, 6u)], 1u, ~1u, _wgslsmith_div_u32(global2[_wgslsmith_index_u32(0u, 6u)], global2[_wgslsmith_index_u32(4294967295u, 6u)]) ^ 1u), true, var_0.x, vec2<f32>(-829f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-302f)))), abs(abs(28871u))));
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -160f)));
    let var_3 = false;
    let var_4 = func_3(_wgslsmith_f_op_f32(-1389f * -250f), var_1.d, -_wgslsmith_clamp_vec4_i32(~reverseBits(vec4<i32>(var_0.x, 1775i, -55029i, 0i)), ~_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, -6351i, 1i, var_0.x), vec4<i32>(u_input.c, var_0.x, 12803i, var_0.x)), select(vec4<i32>(36063i, u_input.c, var_0.x, -1i) << (var_1.d.a % vec4<u32>(32u)), -vec4<i32>(u_input.c, var_1.a, -10417i, -72122i), vec4<bool>(true, var_3, true, false)))).x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(min(var_1.d.d, vec2<f32>(_wgslsmith_f_op_f32(var_2 * global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(27185u, 6u)], 25u)]), _wgslsmith_f_op_f32(-var_2)))), ~var_1.d.e, vec2<i32>(~_wgslsmith_add_i32(abs(1i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, -4903i, 1i), vec3<i32>(-1i, 0i, u_input.a))), -13557i), max(select(~(~var_0.x), u_input.a, _wgslsmith_f_op_f32(ceil(1351f)) <= var_1.d.d.x), -27683i));
}

