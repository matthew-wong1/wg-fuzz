struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec2<bool>,
    d: u32,
    e: i32,
}

struct Struct_5 {
    a: f32,
    b: i32,
    c: vec4<i32>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 4> = array<vec3<u32>, 4>(vec3<u32>(4294967295u, 22645u, 9667u), vec3<u32>(12649u, 0u, 1u), vec3<u32>(38025u, 4294967295u, 47982u), vec3<u32>(50687u, 28882u, 85628u));

var<private> global1: array<Struct_5, 24> = array<Struct_5, 24>(Struct_5(-1000f, -944i, vec4<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648), -1i), false), Struct_5(-736f, 5232i, vec4<i32>(17890i, 51037i, 37727i, 1i), true), Struct_5(-1550f, 14996i, vec4<i32>(2147483647i, i32(-2147483648), 20280i, 12110i), false), Struct_5(819f, -13778i, vec4<i32>(36676i, 66796i, 0i, 0i), false), Struct_5(-574f, 2147483647i, vec4<i32>(-1i, 0i, 9148i, 1i), false), Struct_5(-617f, 32963i, vec4<i32>(-10328i, 20445i, 34993i, -20529i), false), Struct_5(365f, -23577i, vec4<i32>(i32(-2147483648), -1i, -8048i, 59658i), false), Struct_5(1000f, 1i, vec4<i32>(2147483647i, 880i, 2147483647i, i32(-2147483648)), true), Struct_5(-253f, -22913i, vec4<i32>(-1979i, 1i, 1i, 1i), true), Struct_5(1000f, -11815i, vec4<i32>(-1i, -1i, -41507i, i32(-2147483648)), true), Struct_5(458f, -27528i, vec4<i32>(0i, -14932i, 1i, -56317i), true), Struct_5(242f, -23960i, vec4<i32>(-10440i, i32(-2147483648), 2147483647i, i32(-2147483648)), false), Struct_5(1943f, i32(-2147483648), vec4<i32>(-1i, -58259i, -31435i, 4399i), false), Struct_5(-1332f, 45011i, vec4<i32>(0i, 0i, -1i, -46068i), true), Struct_5(1000f, -2559i, vec4<i32>(-6373i, 2147483647i, -1i, i32(-2147483648)), true), Struct_5(-261f, -32342i, vec4<i32>(0i, 9891i, 41892i, -1i), true), Struct_5(-1435f, -21241i, vec4<i32>(-10992i, 80010i, 81659i, 2147483647i), false), Struct_5(633f, 23250i, vec4<i32>(10811i, -1i, 2147483647i, -4307i), true), Struct_5(-188f, 1i, vec4<i32>(-10572i, i32(-2147483648), 9675i, 2147483647i), true), Struct_5(211f, 1i, vec4<i32>(-36938i, 41299i, -1i, 1i), true), Struct_5(-1000f, -11079i, vec4<i32>(8584i, i32(-2147483648), -1i, -28313i), true), Struct_5(-717f, 0i, vec4<i32>(-8446i, 2147483647i, i32(-2147483648), -1i), true), Struct_5(-973f, -1i, vec4<i32>(0i, -34717i, -3292i, -39230i), true), Struct_5(393f, 2147483647i, vec4<i32>(51719i, -1i, 35205i, -1i), false));

var<private> global2: array<bool, 31> = array<bool, 31>(true, true, true, true, true, false, true, false, true, true, true, false, true, true, true, true, true, false, false, false, false, true, false, false, false, true, false, true, false, false, true);

var<private> global3: vec3<i32> = vec3<i32>(32383i, -24726i, 63280i);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    var var_0 = 6041u ^ u_input.c;
    var var_1 = Struct_3(Struct_2(3412f, _wgslsmith_add_i32(1i, -27473i), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(-vec3<i32>(global3.x, 2147483647i, u_input.a), ~u_input.d), vec3<i32>(-1i) * -u_input.d)), all(!vec2<bool>(!global2[_wgslsmith_index_u32(3020u, 31u)], 4294967295u <= u_input.c)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-801f)) * _wgslsmith_f_op_f32(f32(-1f) * -241f))));
    global3 = u_input.b.wxy;
    var var_2 = u_input.b;
    let var_3 = global3.yz;
    return u_input.c;
}

fn func_2(arg_0: vec2<i32>, arg_1: bool, arg_2: u32) -> Struct_4 {
    global2 = array<bool, 31>();
    let var_0 = firstLeadingBit(vec3<u32>(0u, 43561u, _wgslsmith_div_u32(1u, 30070u)));
    var var_1 = _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(~var_0, firstTrailingBit(~(~var_0)), vec3<u32>(~abs(var_0.x), _wgslsmith_mod_u32(firstTrailingBit(4294967295u), ~4360u), 0u)), global0[_wgslsmith_index_u32(1u, 4u)] & vec3<u32>(func_3(), _wgslsmith_sub_u32(arg_2, u_input.c), func_3()));
    var var_2 = _wgslsmith_clamp_vec4_i32(-u_input.b, _wgslsmith_mult_vec4_i32(reverseBits(u_input.b), countOneBits(-_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, u_input.a, arg_0.x, arg_0.x), vec4<i32>(u_input.d.x, arg_0.x, -39528i, 1i)))), -_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-39399i, u_input.d.x, -1i, u_input.b.x), vec4<i32>(arg_0.x, global3.x, 2147483647i, global3.x), u_input.b), vec4<i32>(arg_0.x, 1i, 19650i, -2147483647i)) << (_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(0u, 38246u), 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(51282u, 24099u, 1u, u_input.c), vec4<u32>(1u, 14797u, 81881u, 70664u)), 1u), ~_wgslsmith_sub_vec4_u32(vec4<u32>(38195u, arg_2, 0u, 4294967295u), vec4<u32>(4294967295u, var_0.x, u_input.c, var_1.x))) % vec4<u32>(32u)));
    var var_3 = var_2.x;
    return Struct_4(abs(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, 0i, -1i & u_input.d.x), reverseBits(min(var_2.wxy, u_input.b.xzw)))), vec3<f32>(1810f, 1f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-138f))))), select(select(select(!vec2<bool>(arg_1, true), select(vec2<bool>(true, true), vec2<bool>(false, global2[_wgslsmith_index_u32(var_0.x, 31u)]), false), u_input.c != 0u), vec2<bool>(true, true), true), select(vec2<bool>(false, true), select(select(vec2<bool>(arg_1, true), vec2<bool>(global2[_wgslsmith_index_u32(var_0.x, 31u)], arg_1), vec2<bool>(arg_1, global2[_wgslsmith_index_u32(59574u, 31u)])), select(vec2<bool>(global2[_wgslsmith_index_u32(var_1.x, 31u)], global2[_wgslsmith_index_u32(u_input.c, 31u)]), vec2<bool>(false, false), vec2<bool>(global2[_wgslsmith_index_u32(73310u, 31u)], false)), !arg_1), global2[_wgslsmith_index_u32(0u, 31u)]), true), max(var_1.x, ~(~_wgslsmith_div_u32(var_0.x, var_1.x))), i32(-1i) * -1i);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_4) -> i32 {
    global0 = array<vec3<u32>, 4>();
    return _wgslsmith_sub_i32(global3.x & -17147i, -1i);
}

fn func_1(arg_0: bool, arg_1: Struct_2) -> Struct_2 {
    let var_0 = abs(func_4(vec4<u32>(~(~u_input.c), abs(u_input.c), ~_wgslsmith_mult_u32(16286u, 48863u), u_input.c ^ (16169u >> (u_input.c % 32u))), func_2(vec2<i32>(_wgslsmith_mod_i32(arg_1.b, 0i), 32836i), true, _wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.c, 1u, u_input.c, u_input.c), vec4<u32>(u_input.c, u_input.c, 43538u, 46417u), true), vec4<u32>(u_input.c, 35973u, u_input.c, u_input.c)))));
    let var_1 = Struct_3(arg_1, true, Struct_1(_wgslsmith_f_op_f32(-654f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.a, 228f))))));
    global0 = array<vec3<u32>, 4>();
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-786f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2353f, var_1.c.a) * var_1.c.a))) - vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(642f, var_1.a.a)) + _wgslsmith_f_op_f32(-arg_1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.a)))), -150f));
    let var_3 = select(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, 16625i & var_1.a.b, var_0, -var_0), vec4<i32>(var_0, 1524i >> (0u % 32u), 0i, global3.x)) ^ vec4<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 35738i, 30647i, var_1.a.c), vec4<i32>(u_input.b.x, var_1.a.b, -34105i, -14960i)), var_1.a.b, 1i, -12353i ^ (9088i << (u_input.c % 32u))), (vec4<i32>(min(var_1.a.c, var_0), -var_0, -global3.x, 0i) & vec4<i32>(0i, firstTrailingBit(arg_1.b), -41925i, var_0)) | ~(-u_input.b), all(!vec3<bool>(arg_0, !var_1.b, true)));
    return arg_1;
}

fn func_5(arg_0: Struct_3) -> Struct_3 {
    var var_0 = select(vec3<bool>(true, global2[_wgslsmith_index_u32(3190u, 31u)] && true, any(select(!vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.c, 31u)], arg_0.b), vec3<bool>(arg_0.b, false, arg_0.b), select(vec3<bool>(false, false, false), vec3<bool>(arg_0.b, true, global2[_wgslsmith_index_u32(1u, 31u)]), vec3<bool>(false, false, global2[_wgslsmith_index_u32(40046u, 31u)]))))), select(select(select(select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.c, 31u)], arg_0.b, arg_0.b), vec3<bool>(global2[_wgslsmith_index_u32(0u, 31u)], arg_0.b, arg_0.b), true), vec3<bool>(global2[_wgslsmith_index_u32(3803u, 31u)], global2[_wgslsmith_index_u32(u_input.c, 31u)], true), vec3<bool>(global2[_wgslsmith_index_u32(u_input.c, 31u)], arg_0.b, true)), !select(vec3<bool>(arg_0.b, global2[_wgslsmith_index_u32(17485u, 31u)], false), vec3<bool>(false, true, arg_0.b), true), !vec3<bool>(global2[_wgslsmith_index_u32(u_input.c, 31u)], global2[_wgslsmith_index_u32(u_input.c, 31u)], arg_0.b)), select(vec3<bool>(true, func_2(vec2<i32>(global3.x, global3.x), false, u_input.c).c.x, arg_0.a.c > -6968i), !select(vec3<bool>(false, true, global2[_wgslsmith_index_u32(0u, 31u)]), vec3<bool>(true, arg_0.b, false), vec3<bool>(global2[_wgslsmith_index_u32(u_input.c, 31u)], true, false)), global2[_wgslsmith_index_u32(~29567u, 31u)]), vec3<bool>(u_input.a < global3.x, arg_0.b, !func_2(u_input.d.yz, true, u_input.c).c.x)), !vec3<bool>(!arg_0.b, global2[_wgslsmith_index_u32(~u_input.c & 0u, 31u)], true));
    global1 = array<Struct_5, 24>();
    var var_1 = func_2(~vec2<i32>(firstLeadingBit(reverseBits(arg_0.a.c)), ~2147483647i), var_0.x, _wgslsmith_dot_vec3_u32(countOneBits(~global0[_wgslsmith_index_u32(0u, 4u)]), firstTrailingBit(vec3<u32>(u_input.c, u_input.c, ~u_input.c))));
    global1 = array<Struct_5, 24>();
    var var_2 = abs(vec2<u32>(~u_input.c, u_input.c));
    return Struct_3(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.a)), 1i, countOneBits(-_wgslsmith_dot_vec3_i32(vec3<i32>(global3.x, -1i, 0i), u_input.b.wxx))), select(true, false, false), arg_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_5, 24>();
    global2 = array<bool, 31>();
    var var_0 = _wgslsmith_sub_vec4_i32(u_input.b, -vec4<i32>(i32(-1i) * -u_input.a, 1i, global3.x, select(~u_input.b.x, 26219i & u_input.d.x, false)));
    var var_1 = func_5(Struct_3(func_1(!any(vec4<bool>(global2[_wgslsmith_index_u32(u_input.c, 31u)], true, global2[_wgslsmith_index_u32(20977u, 31u)], global2[_wgslsmith_index_u32(u_input.c, 31u)])), Struct_2(2124f, 1i, _wgslsmith_add_i32(2147483647i, global3.x))), global3.x > -59822i, Struct_1(175f)));
    var_1 = Struct_3(func_5(func_5(Struct_3(func_5(Struct_3(var_1.a, global2[_wgslsmith_index_u32(u_input.c, 31u)], Struct_1(-733f))).a, var_0.x > var_0.x, func_5(Struct_3(Struct_2(1987f, 1i, 8988i), true, var_1.c)).c))).a, true, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.a))));
    let x = u_input.a;
    s_output = StorageBuffer(81257u, ~max(vec2<u32>(_wgslsmith_mod_u32(u_input.c, u_input.c), 84388u), firstLeadingBit(~vec2<u32>(u_input.c, 2459u))), -372f);
}

