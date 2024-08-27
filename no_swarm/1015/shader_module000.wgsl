struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_1,
    c: u32,
    d: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_2, 28>;

var<private> global2: array<u32, 3>;

var<private> global3: array<Struct_3, 8>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32) -> vec3<i32> {
    global3 = array<Struct_3, 8>();
    global1 = array<Struct_2, 28>();
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(~u_input.a.yx, u_input.a.zx), u_input.e.x, countOneBits(~(~u_input.c))), 28u)];
    var var_1 = vec2<f32>(740f, _wgslsmith_f_op_f32(-var_0.a));
    let var_2 = select(vec4<bool>(false, false, firstTrailingBit(var_0.b.d >> (1u % 32u)) != 47028i, false), select(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(_wgslsmith_f_op_f32(min(var_0.a, var_0.b.a)) != _wgslsmith_f_op_f32(f32(-1f) * -1015f), true, true, select(false, true, true) & all(vec4<bool>(false, true, false, true))), vec4<bool>(true, any(vec2<bool>(false, true)), true, any(vec4<bool>(true, true, true, true)))), select(vec4<bool>(true | select(false, true, false), any(vec3<bool>(true, true, true)), 611f <= _wgslsmith_f_op_f32(floor(var_0.b.a)), all(vec4<bool>(true, true, true, true))), !vec4<bool>(u_input.e.x < 0u, all(vec4<bool>(false, true, false, true)), false, true), select(u_input.d >= 38398u, any(vec3<bool>(false, false, false)), _wgslsmith_f_op_f32(select(var_0.b.a, 1000f, false)) <= -1824f)));
    return -(~(countOneBits(vec3<i32>(-2147483647i, -42095i, var_0.b.d)) | -vec3<i32>(2147483647i, var_0.b.d, 35655i)));
}

fn func_2(arg_0: u32) -> bool {
    global2 = array<u32, 3>();
    global3 = array<Struct_3, 8>();
    global2 = array<u32, 3>();
    global0 = -1i;
    var var_0 = _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-14625i, -2147483647i, ~(-37147i)), _wgslsmith_clamp_vec3_i32(~vec3<i32>(46204i, -47024i, 83733i) << (~u_input.a % vec3<u32>(32u)), max(~vec3<i32>(-16696i, -2147483647i, 18478i), vec3<i32>(1i, 1i, 1i)), func_3(_wgslsmith_f_op_f32(select(-649f, -766f, false))))), firstLeadingBit(_wgslsmith_sub_vec3_i32(~vec3<i32>(1i, 2147483647i, -1i) & (vec3<i32>(24107i, 2147483647i, -2147483647i) >> (vec3<u32>(arg_0, global2[_wgslsmith_index_u32(0u, 3u)], 0u) % vec3<u32>(32u))), ~min(vec3<i32>(-28446i, -17727i, -2132i), vec3<i32>(-1i, -1i, -8255i)))));
    return all(vec3<bool>(true, true, true));
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = vec3<bool>(!any(vec2<bool>(true, true)), select(true, false, !select(true, false, true)) & select(true, !all(vec4<bool>(false, false, false, true)), true), func_2(32520u));
    let var_1 = -vec3<i32>(arg_0, _wgslsmith_mod_i32(arg_0, arg_0), -_wgslsmith_dot_vec4_i32(~vec4<i32>(arg_0, -1i, 1i, 1i), abs(vec4<i32>(arg_0, 6641i, -32603i, arg_0))));
    let var_2 = Struct_1(-1044f, _wgslsmith_add_u32(countOneBits(global2[_wgslsmith_index_u32(4294967295u, 3u)] & global2[_wgslsmith_index_u32(44014u, 3u)]) | _wgslsmith_dot_vec2_u32(u_input.a.xx, u_input.a.zy), u_input.a.x), select(u_input.a, vec3<u32>(~reverseBits(0u), select(~4294967295u, ~59672u, true), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, global2[_wgslsmith_index_u32(1u, 3u)]) | vec2<u32>(u_input.e.x, 103910u), max(u_input.e.yz, u_input.a.yz))), all(vec4<bool>(true, true, true, true))), arg_0);
    let var_3 = Struct_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(-583f)), -837f, _wgslsmith_div_f32(-344f, var_2.a))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a, -1000f, _wgslsmith_div_f32(2337f, 1369f)))), Struct_1(var_2.a, global2[_wgslsmith_index_u32(4294967295u, 3u)], vec3<u32>(min(9271u, ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 3u)], 3u)]), _wgslsmith_dot_vec2_u32(var_2.c.xz, vec2<u32>(4294967295u, var_2.b)) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 0u, 0u), u_input.e) % 32u), ~countOneBits(var_2.c.x)), func_3(_wgslsmith_div_f32(_wgslsmith_div_f32(var_2.a, 124f), var_2.a)).x), ~reverseBits(var_2.c.x), 4294967295u);
    let var_4 = !((!var_0.x && !var_0.x) != func_2(0u));
    return Struct_1(_wgslsmith_f_op_f32(min(-391f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(916f)) - 688f) + var_3.a.x))), abs(firstLeadingBit(51822u << (u_input.a.x % 32u)) >> (~min(var_3.b.c.x, var_2.b) % 32u)), ~abs(~_wgslsmith_clamp_vec3_u32(var_2.c, vec3<u32>(u_input.b, 0u, 13049u), vec3<u32>(4294967295u, 4294967295u, global2[_wgslsmith_index_u32(var_3.d, 3u)]))), reverseBits((arg_0 | _wgslsmith_dot_vec3_i32(var_1, var_1)) ^ var_1.x));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1) -> bool {
    global2 = array<u32, 3>();
    var var_0 = func_1(firstLeadingBit(arg_1.d | -2147483647i));
    var var_1 = min(vec4<i32>(~_wgslsmith_sub_i32(arg_1.d, ~var_0.d), max(_wgslsmith_div_i32(0i, arg_1.d), arg_1.d), -(~(-var_0.d)), _wgslsmith_add_i32(func_1(firstLeadingBit(arg_1.d)).d, -1i)), firstTrailingBit(vec4<i32>(var_0.d, countOneBits(arg_1.d), -var_0.d ^ var_0.d, max(reverseBits(14762i), countOneBits(1i)))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-arg_1.a)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1327f, var_0.a, false)), 1563f)), var_0.c.x, firstLeadingBit(_wgslsmith_mod_vec3_u32(~(~var_0.c), vec3<u32>(global2[_wgslsmith_index_u32(func_1(19152i).b, 3u)], global2[_wgslsmith_index_u32(u_input.a.x, 3u)] << (arg_1.c.x % 32u), ~var_0.c.x))), arg_1.d);
    var var_3 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1769f, var_2.a, var_2.a) + vec3<f32>(-1408f, 543f, var_2.a))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.a, 2108f, var_0.a))) - vec3<f32>(-951f, -1729f, -2656f)))), func_1(~_wgslsmith_clamp_i32(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, arg_1.d, -41741i, -2147483647i), vec4<i32>(var_2.d, arg_1.d, -1i, -29756i)), i32(-1i) * -2022i)), 4294967295u, _wgslsmith_div_u32(~1u, select(var_0.c.x, select(func_1(2147483647i).b, var_2.b, true), arg_0.a)));
    return false | (var_3.b.d > ~countOneBits(i32(-1i) * -2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec4<bool>(func_4(Struct_3(all(vec4<bool>(true, true, true, false))), func_1(i32(-1i) * -35310i)), any(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), vec3<bool>(true, false, false))), true, true == (global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b, global2[_wgslsmith_index_u32(u_input.a.x, 3u)]), 3u)] >= ~u_input.a.x)), select(select(select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false)), vec4<bool>(false, false, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false))), vec4<bool>(true, true, true, true), true), vec4<bool>(!any(vec2<bool>(false, false)), !func_4(global3[_wgslsmith_index_u32(37970u, 8u)], Struct_1(687f, 0u, vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(3067u, 3u)], 3u)], global2[_wgslsmith_index_u32(u_input.d, 3u)], global2[_wgslsmith_index_u32(4294967295u, 3u)]), 1i)), all(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false)), true), select(vec4<bool>(u_input.b > global2[_wgslsmith_index_u32(1u, 3u)], false, 16760u > u_input.a.x, func_4(Struct_3(false), Struct_1(1000f, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 3u)], 3u)], u_input.a, 2147483647i))), vec4<bool>(false, select(true, false, true), true, true), vec4<bool>(true, true, func_2(14784u), false))), !vec4<bool>(false, true, _wgslsmith_clamp_i32(0i, -26721i, -17061i) > select(2147483647i, -24307i, true), true));
    let var_1 = vec3<i32>(-1i, 0i, func_3(-504f).x);
    let var_2 = select(u_input.a.xz, u_input.e.ww, true);
    let var_3 = _wgslsmith_div_f32(1390f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-178f - 1083f)))));
    let var_4 = !all(vec2<bool>(all(var_0.xxw), 956f != var_3)) && false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(var_3)), _wgslsmith_f_op_f32(f32(-1f) * -913f))) - 926f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_3)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3, -1739f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1000f)))), _wgslsmith_clamp_vec3_i32(var_1, -var_1, abs(~vec3<i32>(var_1.x, var_1.x, -20925i))), _wgslsmith_f_op_f32(sign(var_3)));
}

