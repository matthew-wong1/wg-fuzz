struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: vec2<u32>,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec3<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(-1i), Struct_2(0i), Struct_2(1i), Struct_2(-37496i), Struct_2(-469i), Struct_2(1i), Struct_2(0i), Struct_2(21554i), Struct_2(45305i), Struct_2(-71678i), Struct_2(0i), Struct_2(2147483647i), Struct_2(-10667i), Struct_2(-1i), Struct_2(19990i), Struct_2(17426i), Struct_2(2147483647i), Struct_2(-1i), Struct_2(17103i), Struct_2(-1i), Struct_2(31986i), Struct_2(1i), Struct_2(22912i), Struct_2(7601i), Struct_2(1i), Struct_2(0i), Struct_2(-36833i), Struct_2(89755i));

var<private> global1: array<vec4<f32>, 20> = array<vec4<f32>, 20>(vec4<f32>(531f, 1447f, 343f, 1000f), vec4<f32>(-883f, -668f, -596f, -1000f), vec4<f32>(696f, -515f, 588f, -1160f), vec4<f32>(166f, 573f, -1402f, 132f), vec4<f32>(-1375f, -292f, 1448f, -602f), vec4<f32>(-349f, 405f, 134f, 1215f), vec4<f32>(-1457f, -1000f, -1000f, 606f), vec4<f32>(1614f, -1000f, -696f, 141f), vec4<f32>(-140f, -255f, -211f, 525f), vec4<f32>(-918f, -118f, -711f, 459f), vec4<f32>(2511f, 663f, 947f, -754f), vec4<f32>(-1002f, -701f, 226f, 215f), vec4<f32>(734f, 1038f, 794f, -1055f), vec4<f32>(-1000f, 552f, -231f, -1537f), vec4<f32>(676f, -947f, 1030f, -1683f), vec4<f32>(1779f, 1418f, -451f, 1276f), vec4<f32>(-817f, 258f, 703f, 1000f), vec4<f32>(-1000f, -209f, 476f, 1214f), vec4<f32>(-1089f, -957f, -110f, 2280f), vec4<f32>(699f, -325f, -275f, 481f));

var<private> global2: vec2<f32> = vec2<f32>(-1446f, -1000f);

var<private> global3: array<i32, 3>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> vec2<f32> {
    global0 = array<Struct_2, 28>();
    let var_0 = 4294967295u;
    var var_1 = -select(firstLeadingBit(-vec3<i32>(53870i, 12406i, arg_0)) & (abs(vec3<i32>(-1i, global3[_wgslsmith_index_u32(var_0, 3u)], arg_0)) ^ min(vec3<i32>(-18598i, -22522i, -75052i), vec3<i32>(50638i, 64908i, global3[_wgslsmith_index_u32(4294967295u, 3u)]))), ~vec3<i32>(u_input.c, _wgslsmith_sub_i32(46061i, u_input.a), arg_1.a), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true));
    global0 = array<Struct_2, 28>();
    let var_2 = Struct_3(Struct_2(abs(~(-var_1.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1010f, 2090f) + arg_1.c.yz), arg_1.c.xz)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.c.x, arg_1.c.x) + _wgslsmith_f_op_vec2_f32(trunc(arg_1.c.xy))), any(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1298f, 851f) - arg_1.c.zx) + vec2<f32>(-1154f, global2.x)))), select(_wgslsmith_sub_vec2_u32(~(vec2<u32>(arg_1.b, 0u) >> (vec2<u32>(37895u, arg_1.b) % vec2<u32>(32u))), firstTrailingBit(~vec2<u32>(76326u, 28861u))), _wgslsmith_div_vec2_u32(~(vec2<u32>(var_0, var_0) | vec2<u32>(arg_1.b, 0u)), ~vec2<u32>(4294967295u, var_0)), (all(vec3<bool>(false, false, false)) && all(vec3<bool>(false, false, false))) || false), vec3<bool>(true & (47394u > min(arg_1.b, var_0)), true, true), Struct_1(-1i << (var_0 % 32u), var_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(0u, 20u)]), vec4<f32>(global2.x, -1748f, -574f, 1704f))))));
    return vec2<f32>(arg_1.c.x, _wgslsmith_f_op_f32(abs(-1619f)));
}

fn func_2() -> vec3<u32> {
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(floor(global2.x)), _wgslsmith_f_op_f32(-2243f + 1077f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_div_i32(-2147483647i, -53982i), Struct_1(2147483647i, 1u, vec4<f32>(global2.x, global2.x, 524f, 541f)))), vec2<f32>(_wgslsmith_f_op_f32(floor(global2.x)), _wgslsmith_f_op_f32(213f * -2306f)), vec2<bool>(true, true))))) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-global2.x), global2.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global2.x, global2.x))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.x, -150f), vec2<f32>(-1000f, global2.x), false)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(804f, global2.x) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, -1332f) + vec2<f32>(global2.x, global2.x)))))));
    let var_0 = Struct_3(Struct_2(1i), vec2<f32>(_wgslsmith_f_op_f32(abs(global2.x)), -907f), ~vec2<u32>(~(~0u), 1u), select(select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true), true), vec3<bool>(false, true, -2147483647i >= global3[_wgslsmith_index_u32(1u, 3u)]), select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), true))), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), !select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true))), Struct_1(u_input.b, ~_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 0u, 6906u), vec4<u32>(51360u, 1u, 2732u, 4294967295u)), select(0u, 16679u, true)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-380f - global2.x), _wgslsmith_f_op_f32(-951f + global2.x), 1139f, _wgslsmith_f_op_f32(min(1034f, global2.x))) + _wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(~41874u, 20u)]))));
    var var_1 = vec2<f32>(var_0.e.c.x, global2.x);
    let var_2 = select(select(vec4<bool>(!any(vec4<bool>(var_0.d.x, var_0.d.x, var_0.d.x, false)), _wgslsmith_f_op_f32(-var_0.e.c.x) <= -239f, 4294967295u <= var_0.c.x, var_0.d.x), vec4<bool>(var_0.d.x, !var_0.d.x, true, all(vec2<bool>(var_0.d.x, false))), !select(vec4<bool>(var_0.d.x, true, var_0.d.x, var_0.d.x), vec4<bool>(var_0.d.x, false, false, var_0.d.x), var_0.d.x)), !(!select(select(vec4<bool>(var_0.d.x, var_0.d.x, var_0.d.x, false), vec4<bool>(true, var_0.d.x, false, false), var_0.d.x), select(vec4<bool>(var_0.d.x, var_0.d.x, var_0.d.x, false), vec4<bool>(true, var_0.d.x, true, var_0.d.x), var_0.d.x), vec4<bool>(true, var_0.d.x, var_0.d.x, var_0.d.x))), var_0.d.x);
    var var_3 = var_0;
    return _wgslsmith_clamp_vec3_u32(abs(vec3<u32>(var_0.c.x, 1u, 0u) >> (vec3<u32>(var_3.c.x, 1u, 1u) % vec3<u32>(32u))) | abs(_wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(var_3.c.x, var_3.c.x, 0u)), min(vec3<u32>(var_3.c.x, 0u, var_0.e.b), vec3<u32>(var_3.c.x, 4294967295u, var_0.e.b)))), reverseBits(select(reverseBits(vec3<u32>(var_3.c.x, var_0.c.x, 1u)), vec3<u32>(var_3.c.x, 4294967295u, 56279u) & vec3<u32>(23036u, 1u, var_0.c.x), !(!vec3<bool>(true, var_2.x, var_0.d.x)))), select((_wgslsmith_add_vec3_u32(vec3<u32>(var_3.e.b, 1u, 29477u), vec3<u32>(4294967295u, var_0.c.x, 0u)) & _wgslsmith_div_vec3_u32(vec3<u32>(var_0.c.x, 1u, 1u), vec3<u32>(6733u, 0u, var_3.c.x))) ^ reverseBits(vec3<u32>(30186u, var_3.c.x, var_3.c.x)), ~(~_wgslsmith_add_vec3_u32(vec3<u32>(var_3.e.b, 1u, var_3.e.b), vec3<u32>(4294967295u, var_3.c.x, 1u))), var_3.d));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_3) -> vec4<u32> {
    global1 = array<vec4<f32>, 20>();
    global0 = array<Struct_2, 28>();
    global1 = array<vec4<f32>, 20>();
    global2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.e.c.x))) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.e.c.x, global2.x)) * global2.x)), global2.x);
    let var_0 = Struct_4(arg_1.d.x, _wgslsmith_div_vec3_u32(func_2(), vec3<u32>(1u | _wgslsmith_mult_u32(arg_1.e.b, 66049u), ~(~arg_1.c.x), 76649u)), arg_1.e);
    return countOneBits(vec4<u32>(abs(1u), countOneBits(reverseBits(arg_1.c.x) >> (~0u % 32u)), 0u, arg_1.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(~(~func_1(~vec4<i32>(u_input.b, global3[_wgslsmith_index_u32(17846u, 3u)], u_input.c, u_input.b), Struct_3(Struct_2(13339i), vec2<f32>(-1215f, global2.x), vec2<u32>(34144u, 36805u), vec3<bool>(false, true, false), Struct_1(global3[_wgslsmith_index_u32(1u, 3u)], 0u, global1[_wgslsmith_index_u32(1u, 20u)])))), _wgslsmith_sub_vec4_u32(vec4<u32>(firstTrailingBit(0u) >> (countOneBits(0u) % 32u), abs(max(27491u, 0u)), _wgslsmith_div_u32(countOneBits(1u), 1u), min(4294967295u, 29283u)), ~vec4<u32>(_wgslsmith_add_u32(1u, 107365u), ~1u, 1u, _wgslsmith_mult_u32(1u, 0u))));
    let var_1 = Struct_3(global0[_wgslsmith_index_u32(func_1(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(select(vec4<i32>(-2147483647i, 15241i, -62898i, u_input.b), vec4<i32>(u_input.c, u_input.b, 71041i, 15636i), true), reverseBits(vec4<i32>(u_input.b, u_input.b, global3[_wgslsmith_index_u32(4294967295u, 3u)], global3[_wgslsmith_index_u32(53904u, 3u)]))), ~vec4<i32>(1i, u_input.c, 27446i, 15481i)), Struct_3(Struct_2(~(-1292i)), vec2<f32>(global2.x, _wgslsmith_f_op_f32(global2.x * -105f)), var_0.zz, vec3<bool>(any(vec3<bool>(true, true, false)), false, true), Struct_1(_wgslsmith_sub_i32(u_input.b, global3[_wgslsmith_index_u32(var_0.x, 3u)]), 1u, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-299f, global2.x, global2.x, global2.x), global1[_wgslsmith_index_u32(1u, 20u)]))))).x, 28u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(-722f, global2.x)), abs(min(~max(var_0.xy, vec2<u32>(var_0.x, 36448u)), ~countOneBits(var_0.yx))), vec3<bool>(select(true, any(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false))), false), select(u_input.a >= global3[_wgslsmith_index_u32(var_0.x, 3u)], _wgslsmith_div_f32(-1154f, -1000f) < _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(f32(-1f) * -884f) <= _wgslsmith_f_op_f32(floor(global2.x))), true), Struct_1(i32(-1i) * -1i, firstLeadingBit(abs(abs(1u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, 1119f, 340f)) - vec4<f32>(global2.x, global2.x, 136f, -549f)) * global1[_wgslsmith_index_u32(min(_wgslsmith_div_u32(24973u, var_0.x), var_0.x), 20u)])));
    var var_2 = var_1;
    global0 = array<Struct_2, 28>();
    global3 = array<i32, 3>();
    let var_3 = Struct_2(-32541i << (firstTrailingBit(var_2.c.x) % 32u));
    let var_4 = vec4<u32>(var_0.x, var_0.x, 0u, ~_wgslsmith_mult_u32(abs(var_2.c.x ^ var_1.c.x), firstTrailingBit(~10189u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -137f)), firstLeadingBit(~(~firstTrailingBit(13422u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_2.e.c - vec4<f32>(159f, 1075f, 2294f, -880f)))) + global1[_wgslsmith_index_u32(0u, 20u)]), vec3<i32>(-21947i & reverseBits(_wgslsmith_div_i32(62157i, u_input.a)), var_3.a, _wgslsmith_mult_i32(_wgslsmith_sub_i32(var_2.a.a, 1i), _wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.a, var_3.a), var_3.a))));
}

