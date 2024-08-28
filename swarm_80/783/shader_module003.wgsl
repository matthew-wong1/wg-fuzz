struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: f32,
}

struct Struct_3 {
    a: i32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 26>;

var<private> global1: array<vec3<bool>, 6> = array<vec3<bool>, 6>(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false));

var<private> global2: f32 = -299f;

var<private> global3: array<i32, 12> = array<i32, 12>(61605i, 2147483647i, -18540i, 62289i, 2147483647i, 16665i, -29476i, 26542i, 70434i, -12816i, i32(-2147483648), 10539i);

var<private> global4: array<vec2<bool>, 19>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<f32>) -> u32 {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))));
    global1 = array<vec3<bool>, 6>();
    let var_0 = Struct_3(select(-34781i, global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(17098u, 83360u), 1u, ~38289u) >> (18894u % 32u), 12u)], true), u_input.a);
    let var_1 = all(!vec4<bool>(false, all(!global1[_wgslsmith_index_u32(1u, 6u)]), true, reverseBits(var_0.a) > var_0.b.x));
    global4 = array<vec2<bool>, 19>();
    return abs(1u);
}

fn func_2(arg_0: u32, arg_1: vec2<f32>, arg_2: i32, arg_3: Struct_1) -> vec4<i32> {
    var var_0 = Struct_3(-3324i, vec2<i32>(-36875i, global3[_wgslsmith_index_u32(select(~27138u, ~arg_0, true) ^ abs(func_3(vec3<f32>(-180f, arg_1.x, arg_1.x))), 12u)]));
    let var_1 = arg_3.a.x;
    var var_2 = arg_3.a;
    global4 = array<vec2<bool>, 19>();
    let var_3 = vec4<i32>(firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(-arg_2, -global3[_wgslsmith_index_u32(1u, 12u)], 10580i, -u_input.a.x), firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(4971u, 12u)], 1i, arg_2, arg_2), vec4<i32>(var_0.a, 2147483647i, var_0.b.x, u_input.b))))), -5898i, 2147483647i, min(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(~vec3<i32>(-2147483647i, -1i, 0i), ~vec3<i32>(global3[_wgslsmith_index_u32(arg_0, 12u)], -42591i, 2147483647i), firstLeadingBit(vec3<i32>(arg_2, 1i, 2147483647i))), ~vec3<i32>(arg_2, arg_2, 2147483647i)), i32(-1i) * -_wgslsmith_div_i32(arg_2, 1247i)));
    return vec4<i32>(2147483647i, var_0.b.x, (i32(-1i) * -var_3.x) | firstLeadingBit(2147483647i), -2147483647i >> (~(~0u << (arg_0 % 32u)) % 32u));
}

fn func_1(arg_0: u32, arg_1: vec4<f32>, arg_2: u32, arg_3: Struct_2) -> i32 {
    global2 = 360f;
    let var_0 = Struct_2(arg_3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.a + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1162f, -672f)))));
    global2 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_3.a)) - var_0.a)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(604f + arg_3.a), arg_3.a) * 195f))));
    global4 = array<vec2<bool>, 19>();
    let var_1 = _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(~(-vec4<i32>(6269i, global3[_wgslsmith_index_u32(9730u, 12u)], 1i, 0i)), min(_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, 1i, u_input.a.x, 30791i), vec4<i32>(u_input.b, u_input.b, u_input.a.x, u_input.b)), _wgslsmith_div_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(arg_2, 12u)], 544i, global3[_wgslsmith_index_u32(4294967295u, 12u)], u_input.b), vec4<i32>(u_input.a.x, 44411i, global3[_wgslsmith_index_u32(arg_0, 12u)], global3[_wgslsmith_index_u32(arg_0, 12u)]))), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, 2147483647i, -1i, global3[_wgslsmith_index_u32(arg_2, 12u)]), vec4<i32>(49125i, -81565i, u_input.a.x, u_input.b)) ^ ~vec4<i32>(global3[_wgslsmith_index_u32(arg_2, 12u)], u_input.a.x, global3[_wgslsmith_index_u32(30562u, 12u)], -47161i))), ~firstTrailingBit(~vec4<i32>(global3[_wgslsmith_index_u32(1u, 12u)], u_input.a.x, -21255i, 18439i)) ^ vec4<i32>(0i, firstTrailingBit(u_input.b), firstTrailingBit(17758i), u_input.a.x), select(-(func_2(arg_2, arg_1.zx, -1i, Struct_1(vec4<bool>(false, true, false, false))) ^ vec4<i32>(6991i, -2147483647i, 0i, -3922i)), vec4<i32>(~u_input.a.x, ~(~global3[_wgslsmith_index_u32(arg_0, 12u)]), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, u_input.a.x), u_input.a), vec2<i32>(global3[_wgslsmith_index_u32(0u, 12u)], -2147483647i)), (0i | u_input.b) | firstLeadingBit(0i)), vec4<bool>(true, true, false, false)));
    return 71795i;
}

fn func_4(arg_0: i32) -> f32 {
    var var_0 = Struct_1(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, all(vec4<bool>(false, false, true, true)), all(global4[_wgslsmith_index_u32(1u, 19u)]))), select(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), true), vec4<bool>(false, true, false, all(vec4<bool>(true, true, true, true))), vec4<bool>(true, true, true, true)), any(global4[_wgslsmith_index_u32(11132u, 19u)])));
    let var_1 = Struct_3(select(_wgslsmith_clamp_i32(u_input.a.x, ~u_input.b | 54406i, -2147483647i), global3[_wgslsmith_index_u32(reverseBits(73062u), 12u)], all(vec2<bool>(false, true)) & true), -u_input.a);
    var var_2 = arg_0;
    global4 = array<vec2<bool>, 19>();
    let var_3 = var_0.a.x != var_0.a.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(942f - 1200f))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(1071f, 491f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(560f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(!all(select(global1[_wgslsmith_index_u32(~59015u, 6u)], !global1[_wgslsmith_index_u32(38487u, 6u)], true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-913f, -399f), _wgslsmith_f_op_f32(-124f * -531f), any(global1[_wgslsmith_index_u32(30036u, 6u)])))) >= _wgslsmith_f_op_f32(func_4(func_1(0u, vec4<f32>(2396f, -1000f, -1732f, 1000f), 4294967295u, Struct_2(-571f, 735f)) << (1u % 32u))), false);
    global3 = array<i32, 12>();
    var var_1 = 2147483647i;
    global4 = array<vec2<bool>, 19>();
    let var_2 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -404f), -2006f);
    let var_3 = Struct_3(_wgslsmith_mult_i32(_wgslsmith_mod_i32(func_2(_wgslsmith_mod_u32(7866u, 38684u), vec2<f32>(var_2.a, -1793f), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(14714u, 0u), vec2<u32>(4294967295u, 93854u)), 12u)], Struct_1(vec4<bool>(var_0.x, var_0.x, false, var_0.x))).x, abs(u_input.b) << (~62795u % 32u)), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(firstTrailingBit(u_input.a), u_input.a), u_input.a.x)), vec2<i32>(~_wgslsmith_mod_i32(global3[_wgslsmith_index_u32(74022u, 12u)], -26780i), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(87514i, 7934i, u_input.a.x, u_input.b) ^ vec4<i32>(26328i, u_input.a.x, 0i, 8568i), _wgslsmith_mult_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(91169u, 12u)], global3[_wgslsmith_index_u32(47557u, 12u)], u_input.b, 42573i), vec4<i32>(global3[_wgslsmith_index_u32(4294967295u, 12u)], -19582i, -2147483647i, global3[_wgslsmith_index_u32(27086u, 12u)])), func_2(35370u, vec2<f32>(var_2.a, -1843f), global3[_wgslsmith_index_u32(102738u, 12u)], Struct_1(vec4<bool>(true, var_0.x, var_0.x, var_0.x)))), firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, -1i, 2147483647i, -32528i), vec4<i32>(1i, u_input.a.x, -2147483647i, 1583i))))));
    let x = u_input.a;
    s_output = StorageBuffer(-1i, abs(vec4<i32>(u_input.b, _wgslsmith_add_i32(global3[_wgslsmith_index_u32(4294967295u, 12u)], -47010i), ~(-57443i), global3[_wgslsmith_index_u32(abs(73778u), 12u)]) << (vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1814u, 53494u), vec2<u32>(4294967295u, 0u)), ~6269u, _wgslsmith_div_u32(48013u, 54993u), ~0u) % vec4<u32>(32u))), vec2<u32>(~firstLeadingBit(~0u), _wgslsmith_mult_u32(10276u, _wgslsmith_div_u32(min(4294967295u, 3559u), 14990u))), _wgslsmith_div_i32(13424i, -_wgslsmith_add_i32(firstTrailingBit(global3[_wgslsmith_index_u32(4294967295u, 12u)]), -1i)));
}

