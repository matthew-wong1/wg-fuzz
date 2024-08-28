struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: vec2<bool>,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 8> = array<bool, 8>(true, true, false, true, false, true, true, false);

var<private> global1: u32 = 1u;

var<private> global2: array<vec4<i32>, 23>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec2<f32>) -> vec2<i32> {
    let var_0 = Struct_4(Struct_2(!global0[_wgslsmith_index_u32(4294967295u, 8u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-740f))) * -1526f), vec2<bool>(true && (arg_1.a.x > arg_1.a.x), false), Struct_1(vec2<i32>(_wgslsmith_add_i32(arg_1.a.x, 8910i), reverseBits(arg_1.d)), -vec2<i32>(1i, arg_1.a.x), arg_1.c, _wgslsmith_sub_i32(arg_1.a.x, abs(-60027i))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_1.c, _wgslsmith_f_op_f32(arg_2.x - -179f)), arg_1.c))), Struct_2(false, 654f, !(!(!vec2<bool>(false, global0[_wgslsmith_index_u32(56742u, 8u)]))), Struct_1(vec2<i32>(arg_1.a.x, _wgslsmith_mod_i32(arg_1.d, arg_1.d)), -vec2<i32>(arg_1.d, 1i) & (arg_1.b | arg_1.a), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(366f, arg_1.c)), _wgslsmith_mult_i32(_wgslsmith_sub_i32(-28541i, arg_1.d), _wgslsmith_sub_i32(0i, arg_1.a.x))), 410f), ~vec3<u32>(abs(abs(9599u)), u_input.b.x, arg_0));
    global0 = array<bool, 8>();
    let var_1 = select(vec4<bool>(all(var_0.b.c), true, global0[_wgslsmith_index_u32(~(~arg_0) ^ min(~var_0.c.x, ~arg_0), 8u)], true), select(vec4<bool>(27585u < abs(arg_0), select(global0[_wgslsmith_index_u32(firstTrailingBit(var_0.c.x), 8u)], true, !var_0.b.a), global0[_wgslsmith_index_u32(1u, 8u)], true), !vec4<bool>(false, !var_0.b.c.x, global0[_wgslsmith_index_u32(0u, 8u)], true), !(!(!vec4<bool>(global0[_wgslsmith_index_u32(arg_0, 8u)], true, global0[_wgslsmith_index_u32(u_input.a.x, 8u)], true)))), select(!vec4<bool>(1774f >= arg_2.x, true, false, var_0.a.a), !(!select(vec4<bool>(false, false, false, global0[_wgslsmith_index_u32(u_input.b.x, 8u)]), vec4<bool>(global0[_wgslsmith_index_u32(40422u, 8u)], true, true, var_0.a.a), false)), !any(vec4<bool>(global0[_wgslsmith_index_u32(arg_0, 8u)], var_0.a.c.x, global0[_wgslsmith_index_u32(var_0.c.x, 8u)], global0[_wgslsmith_index_u32(103469u, 8u)]))));
    let var_2 = arg_1;
    global1 = ~_wgslsmith_dot_vec4_u32(~(vec4<u32>(0u, 3411u, u_input.b.x, arg_0) << ((u_input.b << (vec4<u32>(20392u, arg_0, u_input.b.x, var_0.c.x) % vec4<u32>(32u))) % vec4<u32>(32u))), _wgslsmith_mod_vec4_u32(u_input.b, _wgslsmith_sub_vec4_u32(~vec4<u32>(0u, var_0.c.x, arg_0, 1u), vec4<u32>(var_0.c.x, var_0.c.x, u_input.a.x, 72466u))));
    return _wgslsmith_div_vec2_i32((vec2<i32>(_wgslsmith_sub_i32(var_2.a.x, var_0.b.d.a.x), var_2.d) >> (~(u_input.a.zy >> (vec2<u32>(0u, 1u) % vec2<u32>(32u))) % vec2<u32>(32u))) >> (var_0.c.zy % vec2<u32>(32u)), vec2<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483647i, var_0.b.d.b.x, var_2.b.x), vec3<i32>(-1i, 1i, 1i)), ~var_2.d));
}

fn func_2(arg_0: vec4<f32>) -> vec3<f32> {
    let var_0 = Struct_3(vec2<u32>(countOneBits(26572u), ~1u));
    global2 = array<vec4<i32>, 23>();
    var var_1 = Struct_1(~_wgslsmith_sub_vec2_i32(func_3(var_0.a.x, Struct_1(vec2<i32>(-1i, 0i), vec2<i32>(58791i, -2147483647i), arg_0.x, 2147483647i), _wgslsmith_f_op_vec2_f32(-arg_0.zw)), ~vec2<i32>(6554i, 38167i) << (var_0.a % vec2<u32>(32u))), vec2<i32>(-(~(-1i)), _wgslsmith_mult_i32(_wgslsmith_sub_i32(5976i, firstLeadingBit(-32166i)), max(i32(-1i) * -1i, _wgslsmith_add_i32(27939i, 26936i)))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-arg_0.x)), arg_0.x)), ~_wgslsmith_clamp_i32(1i, ~1i, firstTrailingBit(~(-12804i))));
    var_1 = Struct_1(var_1.b, var_1.b, -168f, 1i);
    var var_2 = var_0;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.wyw));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: i32) -> vec3<f32> {
    global2 = array<vec4<i32>, 23>();
    global1 = countOneBits(85349u & ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 1u), vec4<u32>(u_input.b.x, u_input.b.x, 0u, u_input.b.x))));
    global0 = array<bool, 8>();
    global2 = array<vec4<i32>, 23>();
    var var_0 = _wgslsmith_mod_vec2_u32(~u_input.a.zx, ~vec2<u32>(~abs(u_input.a.x), 41743u));
    return vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-651f))), arg_2.c)), -776f, 2132f);
}

fn func_1(arg_0: u32) -> vec4<u32> {
    global0 = array<bool, 8>();
    global1 = _wgslsmith_mod_u32(u_input.a.x, ~select(u_input.b.x, u_input.b.x, true && !global0[_wgslsmith_index_u32(arg_0, 8u)]));
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-107f, 425f, 976f, 945f) - vec4<f32>(-648f, 260f, 384f, -1696f)))), Struct_2(false, _wgslsmith_f_op_f32(floor(522f)), !vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 8u)], true), Struct_1(vec2<i32>(-1869i, 43890i), vec2<i32>(2147483647i, -2147483647i), 234f, 49390i), 773f), Struct_1(select(vec2<i32>(0i, 2504i), vec2<i32>(-1i, 22966i), false), _wgslsmith_add_vec2_i32(vec2<i32>(40176i, 11734i), vec2<i32>(-52277i, -2147483647i)), _wgslsmith_f_op_f32(abs(1142f)), _wgslsmith_clamp_i32(2093i, 52310i, 1i)), select(_wgslsmith_mult_i32(-23419i, 31200i), 1i, global0[_wgslsmith_index_u32(u_input.b.x & 27739u, 8u)])))));
    var var_1 = var_0.yz;
    let var_2 = select(vec2<bool>(true, true), vec2<bool>(!global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~5518u, u_input.b.x), 8u)], any(select(vec4<bool>(false, true, true, global0[_wgslsmith_index_u32(arg_0, 8u)]), !vec4<bool>(global0[_wgslsmith_index_u32(1u, 8u)], true, global0[_wgslsmith_index_u32(9174u, 8u)], global0[_wgslsmith_index_u32(u_input.b.x, 8u)]), select(vec4<bool>(true, false, global0[_wgslsmith_index_u32(arg_0, 8u)], false), vec4<bool>(true, false, true, true), global0[_wgslsmith_index_u32(0u, 8u)])))), _wgslsmith_mod_u32(~select(u_input.b.x, u_input.a.x, global0[_wgslsmith_index_u32(4294967295u, 8u)]), ~0u) > (~arg_0 & ~_wgslsmith_mult_u32(u_input.b.x, arg_0)));
    return vec4<u32>(~min(u_input.b.x, 4294967295u), arg_0, _wgslsmith_add_u32(4294967295u, _wgslsmith_add_u32(~32412u, u_input.a.x & 1u)) | ~_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.a, vec3<u32>(0u, arg_0, u_input.b.x)), u_input.a), _wgslsmith_clamp_u32(min(arg_0, ~abs(arg_0)), _wgslsmith_clamp_u32(37390u, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b.x, 0u, arg_0, u_input.a.x), ~vec4<u32>(1u, arg_0, 4294967295u, 40168u)), arg_0), _wgslsmith_mod_u32(arg_0, reverseBits(arg_0))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(-(~1i), func_1(1u));
}

