struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: vec3<bool>,
    d: Struct_2,
    e: i32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_5 {
    a: vec2<i32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 27> = array<u32, 27>(1u, 17355u, 50273u, 0u, 59389u, 81866u, 1u, 1u, 87851u, 16184u, 50626u, 1u, 4294967295u, 51492u, 1u, 93341u, 1u, 10636u, 31640u, 4294967295u, 30640u, 0u, 24285u, 1u, 66032u, 82837u, 35556u);

var<private> global1: array<bool, 21>;

var<private> global2: vec2<f32> = vec2<f32>(680f, -1249f);

var<private> global3: Struct_1;

var<private> global4: array<vec4<bool>, 3>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: i32, arg_2: f32, arg_3: Struct_1) -> bool {
    let var_0 = Struct_4(_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(~countOneBits(vec3<i32>(-31582i, arg_0.x, u_input.a.x)), select(arg_0, arg_0, global1[_wgslsmith_index_u32(5321u, 21u)]) << (~vec3<u32>(global0[_wgslsmith_index_u32(23349u, 27u)], 79726u, 6941u) % vec3<u32>(32u)), reverseBits(vec3<i32>(u_input.a.x, u_input.c, arg_0.x))), _wgslsmith_clamp_vec3_i32(-(vec3<i32>(-5190i, -715i, -6916i) & u_input.b), vec3<i32>(~(-19001i), _wgslsmith_clamp_i32(arg_0.x, -3337i, arg_1), 0i), u_input.b)), Struct_1(_wgslsmith_f_op_f32(-1f)), abs(-(~vec4<i32>(u_input.a.x, u_input.a.x, arg_0.x, arg_1) & vec4<i32>(-1i, arg_1, -1i, 38687i))));
    let var_1 = false;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.a, -563f, global2.x, arg_3.a) + vec4<f32>(1605f, arg_3.a, var_0.b.a, -165f))))) + vec4<f32>(-1000f, _wgslsmith_f_op_f32(ceil(-206f)), _wgslsmith_f_op_f32(f32(-1f) * -266f), 870f)));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)));
    let var_4 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_2.yw)) - _wgslsmith_f_op_vec2_f32(ceil(var_2.yy)))))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.yy)))), vec2<f32>(371f, 1382f))));
    return !var_1;
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: bool, arg_3: bool) -> f32 {
    var var_0 = _wgslsmith_add_vec3_i32(-vec3<i32>(u_input.a.x, firstTrailingBit(-24302i), firstTrailingBit(-27301i)) | vec3<i32>(min(u_input.c, i32(-1i) * -2147483647i), 65164i, ~(~(-2147483647i))), u_input.b);
    global1 = array<bool, 21>();
    var var_1 = var_0.x < 48903i;
    var var_2 = Struct_4(-vec3<i32>(~min(-6209i, -33660i), -75847i, 1i), Struct_1(global2.x), -select(-vec4<i32>(u_input.a.x, -27700i, var_0.x, 33963i), -vec4<i32>(u_input.c, -6838i, u_input.c, -32638i), global4[_wgslsmith_index_u32(~4294967295u, 3u)]) >> ((countOneBits(vec4<u32>(0u, 0u, 0u, arg_0) | vec4<u32>(1u, 1u, 38219u, global0[_wgslsmith_index_u32(62034u, 27u)])) & (_wgslsmith_add_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(2860u, 27u)], 71619u, 0u, 0u), vec4<u32>(global0[_wgslsmith_index_u32(arg_0, 27u)], 4294967295u, 0u, 0u)) >> (vec4<u32>(global0[_wgslsmith_index_u32(arg_0, 27u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0, 27u)], 27u)], arg_0, global0[_wgslsmith_index_u32(arg_0, 27u)]) % vec4<u32>(32u)))) % vec4<u32>(32u)));
    global3 = Struct_1(global2.x);
    return _wgslsmith_f_op_f32(-1316f + -1000f);
}

fn func_2(arg_0: u32, arg_1: vec2<bool>, arg_2: vec2<u32>, arg_3: vec3<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1907f * global3.a))))) - _wgslsmith_f_op_f32(func_4(_wgslsmith_div_u32(32328u, global0[_wgslsmith_index_u32(~arg_0 | (0u | arg_0), 27u)]), arg_1.x, func_3(u_input.b, -4889i, 303f, Struct_1(_wgslsmith_f_op_f32(global3.a + -1631f))), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstTrailingBit(~arg_2.x), arg_0), 21u)])));
    var var_1 = arg_1;
    let var_2 = u_input.b;
    var var_3 = -1i;
    var var_4 = Struct_5(vec2<i32>(~72813i, -733i), select(vec4<bool>(select(arg_1.x, all(vec3<bool>(arg_1.x, arg_1.x, global1[_wgslsmith_index_u32(4294967295u, 21u)])), var_1.x), 1i >= _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, var_2.x, -1i), u_input.b), true, u_input.b.x >= -u_input.c), vec4<bool>(false || func_3(vec3<i32>(var_2.x, -39652i, 37443i), u_input.c, 1003f, Struct_1(-1407f)), _wgslsmith_add_i32(-2147483647i, var_2.x) == _wgslsmith_clamp_i32(-60478i, u_input.a.x, 0i), false, !(arg_3.x <= arg_2.x)), !(103738u >= ~global0[_wgslsmith_index_u32(0u, 27u)])));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(f32(-1f) * -578f))) * _wgslsmith_f_op_f32(func_4(arg_3.x, select(46952i, 0i, var_1.x) > _wgslsmith_clamp_i32(1i, var_2.x, var_2.x), false, !func_3(u_input.b, var_4.a.x, var_0, Struct_1(var_0))))));
}

fn func_1(arg_0: u32) -> Struct_2 {
    let var_0 = func_2(arg_0, vec2<bool>(true, false), _wgslsmith_mult_vec2_u32(reverseBits(countOneBits(~vec2<u32>(arg_0, 44165u))), abs(vec2<u32>(reverseBits(4294967295u), ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 27u)], 27u)]))), ~((~vec3<u32>(24179u, global0[_wgslsmith_index_u32(85617u, 27u)], global0[_wgslsmith_index_u32(4294967295u, 27u)]) >> (~vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0, 27u)], 27u)], 27u)], 27u)], 27u)], 0u, 1u) % vec3<u32>(32u))) << (_wgslsmith_mult_vec3_u32(vec3<u32>(0u, arg_0, arg_0), vec3<u32>(1u, 69712u, 34934u)) % vec3<u32>(32u))));
    global1 = array<bool, 21>();
    var var_1 = var_0.a;
    var var_2 = _wgslsmith_sub_vec3_u32(~abs(abs(vec3<u32>(18731u, arg_0, arg_0) << (vec3<u32>(global0[_wgslsmith_index_u32(43046u, 27u)], 1u, 1u) % vec3<u32>(32u)))), vec3<u32>(~(~(~1u)), 4294967295u, arg_0));
    let var_3 = Struct_1(var_0.a);
    return Struct_2(global1[_wgslsmith_index_u32(var_2.x, 21u)], Struct_1(global3.a));
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: bool) -> bool {
    var var_0 = 2147483647i;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 7853u;
    global2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(394f, -423f), vec2<f32>(global3.a, global3.a), vec2<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 27u)], 21u)], global1[_wgslsmith_index_u32(4294967295u, 21u)])))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-276f, global2.x))), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-308f, -1000f) - global3.a), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global3.a))))), 553f), select(vec2<bool>(!global1[_wgslsmith_index_u32(53915u, 21u)], -1i >= u_input.b.x), vec2<bool>(func_5(func_1(4294967295u), 2147483647i, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(59634u, 27u)], 27u)], 27u)], global0[_wgslsmith_index_u32(57962u, 27u)]), 21u)]), any(select(vec2<bool>(global1[_wgslsmith_index_u32(1u, 21u)], global1[_wgslsmith_index_u32(51172u, 21u)]), vec2<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 27u)], 21u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 27u)], 21u)]), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0, 27u)], 21u)]))), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~4294967295u >> (reverseBits(0u) % 32u), var_0), 21u)])));
    global2 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global3.a, 1642f)));
    var var_1 = Struct_3(global1[_wgslsmith_index_u32(97989u, 21u)], _wgslsmith_f_op_f32(-global3.a), !select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), global1[_wgslsmith_index_u32(66250u, 21u)]), vec3<bool>(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, 38134u), 21u)], func_5(Struct_2(false, Struct_1(global3.a)), u_input.b.x, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(49347u, 27u)], 21u)]), func_1(0u).a), vec3<bool>(true, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_0, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0, 27u)], 27u)], 27u)], global0[_wgslsmith_index_u32(1u, 27u)]), vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 27u)], global0[_wgslsmith_index_u32(9761u, 27u)], 21911u, var_0)), 21u)], 31582u < var_0)), func_1(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(58644u, 45618u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(28351u, 27u)], 27u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(2948u, 27u)], 27u)], 27u)])), _wgslsmith_mod_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(56291u, 27u)], 35923u, var_0, 0u) ^ vec4<u32>(31329u, var_0, var_0, 0u), vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(73657u, 27u)], global0[_wgslsmith_index_u32(7105u, 27u)], global0[_wgslsmith_index_u32(1u, 27u)])))), abs(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(u_input.b.x, -131i)), select(u_input.a, u_input.a, vec2<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0, 27u)], 27u)], 21u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0, 27u)], 21u)]))), u_input.a.x)));
    var var_2 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1840f, -270f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)))), _wgslsmith_f_op_f32(-1454f * var_1.d.b.a))));
    var var_3 = Struct_4(u_input.b, Struct_1(-276f), vec4<i32>(~_wgslsmith_mod_i32(-1i, var_1.e) & max(abs(var_1.e), 0i), -34916i, _wgslsmith_dot_vec2_i32(-_wgslsmith_mult_vec2_i32(vec2<i32>(0i, -2147483647i), vec2<i32>(var_1.e, -1i)), u_input.b.zx), -(~var_1.e)));
    let var_4 = var_3.a;
    var var_5 = ~(-23402i);
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(1u, 27u)], ~0i, var_0, vec2<i32>(firstTrailingBit(-var_1.e), var_1.e | -u_input.a.x) >> (select(select(abs(vec2<u32>(0u, var_0)), vec2<u32>(1u, 1u), select(var_1.c.yx, var_1.c.xz, vec2<bool>(true, global1[_wgslsmith_index_u32(var_0, 21u)]))), abs(~vec2<u32>(0u, global0[_wgslsmith_index_u32(107843u, 27u)])), false) % vec2<u32>(32u)), global3.a);
}

