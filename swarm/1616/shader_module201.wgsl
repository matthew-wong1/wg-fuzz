struct Struct_1 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: u32,
}

struct Struct_3 {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: Struct_1,
    e: vec3<f32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_2,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: i32,
    c: Struct_4,
    d: vec4<i32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7>;

var<private> global1: array<i32, 17>;

var<private> global2: array<vec3<i32>, 7>;

var<private> global3: bool = false;

var<private> global4: array<vec4<u32>, 18> = array<vec4<u32>, 18>(vec4<u32>(52840u, 41294u, 1u, 85934u), vec4<u32>(38815u, 43464u, 4294967295u, 1u), vec4<u32>(6935u, 16733u, 1u, 17438u), vec4<u32>(1u, 4294967295u, 4294967295u, 5026u), vec4<u32>(1u, 33262u, 4294967295u, 1u), vec4<u32>(36511u, 16233u, 1u, 35995u), vec4<u32>(4294967295u, 42640u, 18871u, 43288u), vec4<u32>(1914u, 29411u, 30031u, 1u), vec4<u32>(4294967295u, 0u, 0u, 62721u), vec4<u32>(4294967295u, 1506u, 32517u, 23614u), vec4<u32>(4294967295u, 86903u, 26018u, 4294967295u), vec4<u32>(0u, 55811u, 12788u, 6655u), vec4<u32>(87915u, 4294967295u, 1u, 0u), vec4<u32>(4294967295u, 1u, 4294967295u, 5314u), vec4<u32>(12384u, 0u, 17865u, 4294967295u), vec4<u32>(47619u, 0u, 56166u, 96870u), vec4<u32>(4294967295u, 1u, 1u, 80293u), vec4<u32>(0u, 1u, 85532u, 4294967295u));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: u32) -> u32 {
    let var_0 = -776f;
    let var_1 = false;
    var var_2 = Struct_2(abs(vec3<i32>(0i, global1[_wgslsmith_index_u32(8782u, 17u)], -1i)), u_input.c);
    let var_3 = firstTrailingBit(vec2<u32>(_wgslsmith_div_u32(~(~u_input.b.x), arg_0), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(48972u, 131196u, 19887u, 1u)), ~vec4<u32>(u_input.c, 53787u, 85696u, 4294967295u))));
    let var_4 = _wgslsmith_mult_vec3_i32(-global2[_wgslsmith_index_u32(select(_wgslsmith_dot_vec3_u32(vec3<u32>(var_3.x, var_2.b, var_3.x) | vec3<u32>(arg_0, 32237u, 1u), ~vec3<u32>(var_3.x, arg_0, u_input.b.x)), 1u, all(vec4<bool>(false, var_1, var_1, var_1))), 7u)], _wgslsmith_mult_vec3_i32(~vec3<i32>(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(23702u, 37578u), 17u)], _wgslsmith_sub_i32(global1[_wgslsmith_index_u32(4294967295u, 17u)], 22170i), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, var_2.b), 17u)]), var_2.a));
    return ~var_2.b;
}

fn func_2(arg_0: bool, arg_1: vec3<bool>, arg_2: vec4<bool>, arg_3: vec2<f32>) -> Struct_1 {
    global1 = array<i32, 17>();
    let var_0 = arg_2.x;
    var var_1 = Struct_1(vec4<u32>(9397u, ~func_3(844u), u_input.a >> (27008u % 32u), _wgslsmith_mult_u32(firstLeadingBit(select(12609u, u_input.a, arg_1.x)), 1u)), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-398f)) + arg_3.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-695f * arg_3.x) + 895f), arg_3.x), _wgslsmith_f_op_f32(-118f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(arg_3.x + arg_3.x))))), global1[_wgslsmith_index_u32(8094u, 17u)] << (u_input.a % 32u));
    var_1 = global0[_wgslsmith_index_u32(func_3(var_1.a.x), 7u)];
    let var_2 = Struct_1(global4[_wgslsmith_index_u32(var_1.a.x >> (4294967295u % 32u), 18u)], vec3<f32>(1569f, var_1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_3.x, var_1.b.x, var_0)) - var_1.b.x))), _wgslsmith_clamp_i32(-41261i, 36436i, 1i) ^ firstTrailingBit(var_1.c));
    return global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(_wgslsmith_mod_u32(reverseBits(0u), 54239u), _wgslsmith_mult_u32(~0u, var_1.a.x)) | u_input.c, 7u)];
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: vec4<f32>, arg_3: vec4<bool>) -> u32 {
    var var_0 = Struct_5(func_2(false, vec3<bool>(true, any(vec2<bool>(true, arg_3.x)), false), select(arg_3, arg_3, vec4<bool>(arg_1 | false, true || arg_3.x, global1[_wgslsmith_index_u32(4294967295u, 17u)] > global1[_wgslsmith_index_u32(81167u, 17u)], all(vec2<bool>(arg_3.x, false)))), arg_2.yy), global1[_wgslsmith_index_u32(reverseBits(u_input.c), 17u)] << (reverseBits(0u) % 32u), Struct_4(false, func_2(false || !arg_1, select(select(vec3<bool>(arg_1, arg_3.x, true), arg_3.zzw, true), vec3<bool>(true, arg_3.x, true), true), vec4<bool>(true, !arg_3.x, all(vec4<bool>(false, false, arg_3.x, arg_3.x)), arg_3.x || arg_3.x), arg_2.yz), vec4<f32>(_wgslsmith_div_f32(-614f, 299f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(arg_2.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1271f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))), Struct_2(-(~global2[_wgslsmith_index_u32(33639u, 7u)]), ~abs(1u)), Struct_3(global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_mult_u32(u_input.a, u_input.c)), 17u)], vec3<u32>(countOneBits(u_input.a), u_input.b.x, ~4294967295u), vec2<i32>(2147483647i >> (u_input.c % 32u), _wgslsmith_add_i32(2147483647i, global1[_wgslsmith_index_u32(u_input.b.x, 17u)])), func_2(true, select(arg_3.xyx, arg_3.wwx, arg_3.yzw), vec4<bool>(true, true, arg_1, true), _wgslsmith_f_op_vec2_f32(-arg_2.xz)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-2048f, arg_0, 408f))))), max(-_wgslsmith_mult_vec4_i32(-vec4<i32>(global1[_wgslsmith_index_u32(u_input.a, 17u)], global1[_wgslsmith_index_u32(38351u, 17u)], global1[_wgslsmith_index_u32(47655u, 17u)], 1i), vec4<i32>(global1[_wgslsmith_index_u32(1u, 17u)], 38680i, -2147483647i, global1[_wgslsmith_index_u32(u_input.b.x, 17u)]) ^ vec4<i32>(global1[_wgslsmith_index_u32(58956u, 17u)], global1[_wgslsmith_index_u32(4294967295u, 17u)], -51027i, -1i)), vec4<i32>(global1[_wgslsmith_index_u32(u_input.c, 17u)] | global1[_wgslsmith_index_u32(u_input.a, 17u)], 1i, -global1[_wgslsmith_index_u32(35218u, 17u)], -global1[_wgslsmith_index_u32(u_input.b.x, 17u)]) ^ select(~vec4<i32>(global1[_wgslsmith_index_u32(u_input.c, 17u)], global1[_wgslsmith_index_u32(9938u, 17u)], global1[_wgslsmith_index_u32(u_input.a, 17u)], -2147483647i), _wgslsmith_add_vec4_i32(vec4<i32>(1i, global1[_wgslsmith_index_u32(u_input.a, 17u)], global1[_wgslsmith_index_u32(u_input.a, 17u)], global1[_wgslsmith_index_u32(u_input.a, 17u)]), vec4<i32>(global1[_wgslsmith_index_u32(u_input.a, 17u)], -44893i, global1[_wgslsmith_index_u32(63641u, 17u)], global1[_wgslsmith_index_u32(27294u, 17u)])), vec4<bool>(arg_3.x, true, true, arg_3.x))), Struct_3(-global1[_wgslsmith_index_u32(u_input.c, 17u)], _wgslsmith_mod_vec3_u32(~vec3<u32>(62031u, u_input.c, 19896u) ^ ~vec3<u32>(4294967295u, 43886u, 4294967295u), vec3<u32>(4294967295u, 32033u, u_input.b.x)), -vec2<i32>(reverseBits(global1[_wgslsmith_index_u32(1u, 17u)]), ~1i), func_2(select(arg_1, arg_3.x, true), vec3<bool>(arg_3.x | arg_1, arg_3.x, any(arg_3)), vec4<bool>(any(arg_3.yxw), true, true, true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-735f, arg_0) + arg_2.zw) - vec2<f32>(arg_2.x, arg_2.x))), arg_2.xyx));
    var var_1 = abs(_wgslsmith_clamp_i32(abs(var_0.b), _wgslsmith_mult_i32(var_0.a.c, global1[_wgslsmith_index_u32(56202u, 17u)]), global1[_wgslsmith_index_u32(select(max(var_0.e.d.a.x, 49013u), max(~0u, u_input.a), any(vec2<bool>(true, true))), 17u)]));
    var var_2 = !select(arg_3.zw, !select(vec2<bool>(true, true), !arg_3.xy, true), select(arg_3.wz, arg_3.zw, vec2<bool>(!arg_1, !var_0.c.a)));
    global3 = any(arg_3.wyy);
    var var_3 = _wgslsmith_f_op_f32(sign(744f));
    return var_0.c.e.b.x;
}

fn func_4(arg_0: i32) -> i32 {
    let var_0 = select(vec2<bool>(reverseBits(i32(-1i) * -1492i) < _wgslsmith_dot_vec3_i32(abs(vec3<i32>(global1[_wgslsmith_index_u32(u_input.c, 17u)], -1i, global1[_wgslsmith_index_u32(u_input.c, 17u)])), firstTrailingBit(vec3<i32>(1i, 49254i, arg_0))), false), select(vec2<bool>(true, true), vec2<bool>(true, false), !((u_input.a >> (u_input.b.x % 32u)) >= u_input.c)), vec2<bool>(all(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), true)), true));
    let var_1 = u_input.c;
    global4 = array<vec4<u32>, 18>();
    global3 = true;
    var var_2 = func_2(all(vec3<bool>(func_2(var_0.x, vec3<bool>(var_0.x, false, true), vec4<bool>(true, var_0.x, false, var_0.x), vec2<f32>(-2483f, -1950f)).a.x >= (var_1 | var_1), true, true)), !(!vec3<bool>(var_0.x, true, false)), select(!(!(!vec4<bool>(true, true, var_0.x, var_0.x))), select(!(!vec4<bool>(var_0.x, true, var_0.x, false)), vec4<bool>(!var_0.x, any(var_0), false, true), true), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, var_0.x), vec4<bool>(false, var_0.x, true, var_0.x), vec4<bool>(false, var_0.x, var_0.x, false)), vec4<bool>(var_0.x, false, true, var_0.x))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -893f))), _wgslsmith_f_op_f32(sign(-568f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1052f, 1554f))), vec2<f32>(678f, _wgslsmith_f_op_f32(abs(-414f))), select(any(vec3<bool>(true, false, false)), var_0.x, var_0.x))), false)));
    return _wgslsmith_div_i32(arg_0, 2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_4(abs(global1[_wgslsmith_index_u32(func_1(_wgslsmith_f_op_f32(-1860f + 116f), true, _wgslsmith_f_op_vec4_f32(vec4<f32>(414f, 1000f, -1071f, 249f) * vec4<f32>(320f, 444f, -505f, 871f)), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), true)), 17u)])), max(_wgslsmith_clamp_vec3_u32(~(~vec3<u32>(u_input.b.x, u_input.a, u_input.c)), vec3<u32>(48733u, 4294967295u, u_input.c), vec3<u32>(func_3(1u), u_input.b.x, 1u)), firstTrailingBit(vec3<u32>(_wgslsmith_add_u32(u_input.b.x, u_input.c), func_3(u_input.c), 1u ^ u_input.b.x))), abs(abs(-vec2<i32>(-4489i, 2147483647i) << (u_input.b % vec2<u32>(32u)))), func_2(select(any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false)), all(vec2<bool>(true, true)), false), !select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), false), vec3<bool>(false, false, false), vec3<bool>(true, false, true)), vec4<bool>(all(vec3<bool>(false, false, true)) & true, !any(vec2<bool>(false, true)), true, true), vec2<f32>(1f, 1f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 827f, 1045f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-244f, 297f, 619f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1257f, -1000f, 1121f))))));
    global1 = array<i32, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(var_0.e.x, -1334f), abs(vec4<u32>(~(~var_0.d.a.x), u_input.a, _wgslsmith_mod_u32(4294967295u & u_input.a, 0u), ~abs(0u))), _wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(var_0.b & var_0.b, vec3<u32>(22869u, 4294967295u, 49357u)), abs(var_0.b)));
}

