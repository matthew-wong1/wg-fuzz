struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec3<bool>,
    c: vec3<bool>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<f32>,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(Struct_1(186f), true, Struct_1(-645f), Struct_1(-373f), 16589i), Struct_2(Struct_1(388f), false, Struct_1(496f), Struct_1(1042f), 1i), Struct_2(Struct_1(-150f), false, Struct_1(817f), Struct_1(219f), -15052i), Struct_2(Struct_1(524f), true, Struct_1(-1955f), Struct_1(334f), 6786i), Struct_2(Struct_1(1194f), false, Struct_1(-467f), Struct_1(269f), 2147483647i), Struct_2(Struct_1(1157f), true, Struct_1(129f), Struct_1(-1521f), -6765i), Struct_2(Struct_1(-981f), true, Struct_1(-1373f), Struct_1(2177f), 23786i), Struct_2(Struct_1(789f), true, Struct_1(356f), Struct_1(996f), 15524i), Struct_2(Struct_1(704f), true, Struct_1(290f), Struct_1(-2002f), 14819i), Struct_2(Struct_1(476f), true, Struct_1(-1381f), Struct_1(-478f), 31378i), Struct_2(Struct_1(-1469f), false, Struct_1(1363f), Struct_1(678f), -10270i), Struct_2(Struct_1(791f), true, Struct_1(-2835f), Struct_1(238f), i32(-2147483648)), Struct_2(Struct_1(1927f), true, Struct_1(-376f), Struct_1(1018f), 0i), Struct_2(Struct_1(878f), true, Struct_1(1643f), Struct_1(1394f), -21566i));

var<private> global1: array<bool, 7> = array<bool, 7>(false, false, true, false, false, true, true);

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: vec2<u32>, arg_3: Struct_2) -> f32 {
    global1 = array<bool, 7>();
    var var_0 = vec4<bool>(all(select(!vec4<bool>(arg_1.b.b, true, true, arg_1.a.b), !vec4<bool>(true, false, global1[_wgslsmith_index_u32(arg_2.x, 7u)], false), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -301f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))) != _wgslsmith_f_op_f32(-172f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-554f)))), !arg_1.b.b, true);
    let var_1 = vec2<u32>(~1u << (arg_2.x % 32u), ~_wgslsmith_div_u32(~(~74432u), arg_2.x << (29024u % 32u)));
    global1 = array<bool, 7>();
    var var_2 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(864f)))) - arg_3.d.a), select(vec3<bool>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_2, vec2<u32>(1u, var_1.x)), 7u)] | all(var_0.xxx), true, select(all(var_0.xxy), arg_1.a.b, arg_1.a.b)), var_0.xyw, vec3<bool>(false, true, true)), !var_0.yzx, -(min(_wgslsmith_mult_i32(-37088i, arg_3.e), 16383i) ^ 1i));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.c.a - arg_3.c.a))), _wgslsmith_f_op_f32(-425f - _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_0, -808f))))));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<u32>) -> f32 {
    let var_0 = arg_0.a.a;
    global0 = array<Struct_2, 14>();
    global1 = array<bool, 7>();
    var var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(~arg_1.x | 1u, 0u) << (arg_1.x % 32u), 14u)];
    var var_2 = Struct_2(arg_0.a, global1[_wgslsmith_index_u32(abs(50022u), 7u)], Struct_1(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-var_1.a.a))), arg_0.c, arg_0.e);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-292f, Struct_3(Struct_2(arg_0.d, false, var_2.c, Struct_1(-1527f), -2147483647i), arg_0), reverseBits(arg_1), arg_0)))), _wgslsmith_f_op_f32(abs(var_0)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4, arg_2: Struct_4) -> Struct_3 {
    var var_0 = min(arg_2.d, arg_1.d) ^ ~60369i;
    global0 = array<Struct_2, 14>();
    let var_1 = arg_0;
    var var_2 = 0u;
    global0 = array<Struct_2, 14>();
    return Struct_3(global0[_wgslsmith_index_u32(1u, 14u)], global0[_wgslsmith_index_u32(~max(4673u << (_wgslsmith_mod_u32(1u, 1u) % 32u), _wgslsmith_div_u32(1u, 1u)), 14u)]);
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_div_vec3_i32(abs(select(vec3<i32>(u_input.a, 32058i, u_input.a) & u_input.b, _wgslsmith_add_vec3_i32(u_input.b, vec3<i32>(2147483647i, -3880i, u_input.b.x)), vec3<bool>(false, !global1[_wgslsmith_index_u32(4294967295u, 7u)], true))), ~_wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(u_input.a, 0i, u_input.a)) ^ u_input.b, u_input.b >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))));
    let var_1 = func_4(global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(~26978u, min(~1u, ~4294967295u)), 14u)], Struct_4(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(208f, 233f))))), vec3<bool>(all(vec2<bool>(true, true)), -1737f == _wgslsmith_f_op_f32(func_2(Struct_2(Struct_1(-1000f), true, Struct_1(2251f), Struct_1(-1000f), 1i), vec2<u32>(47213u, 0u))), global1[_wgslsmith_index_u32(~abs(77166u), 7u)]), !select(!vec3<bool>(global1[_wgslsmith_index_u32(29178u, 7u)], true, global1[_wgslsmith_index_u32(72779u, 7u)]), !vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 7u)], true, false), select(global1[_wgslsmith_index_u32(0u, 7u)], true, false)), _wgslsmith_sub_i32(~firstTrailingBit(var_0.x), abs(u_input.b.x))), Struct_4(-106f, !(!(!vec3<bool>(global1[_wgslsmith_index_u32(0u, 7u)], false, false))), select(vec3<bool>(true, all(vec3<bool>(true, false, false)), any(vec2<bool>(false, false))), !vec3<bool>(global1[_wgslsmith_index_u32(1u, 7u)], global1[_wgslsmith_index_u32(0u, 7u)], false), select(vec3<bool>(global1[_wgslsmith_index_u32(43503u, 7u)], true, global1[_wgslsmith_index_u32(0u, 7u)]), !vec3<bool>(false, global1[_wgslsmith_index_u32(46920u, 7u)], global1[_wgslsmith_index_u32(26117u, 7u)]), select(vec3<bool>(false, global1[_wgslsmith_index_u32(0u, 7u)], false), vec3<bool>(global1[_wgslsmith_index_u32(0u, 7u)], false, true), global1[_wgslsmith_index_u32(13364u, 7u)]))), ~(-15555i)));
    var var_2 = vec3<i32>(~(~var_0.x), _wgslsmith_clamp_i32(~(-min(var_1.b.e, -50443i)), select(-_wgslsmith_sub_i32(2147483647i, 1i), -15408i, any(!vec3<bool>(global1[_wgslsmith_index_u32(7183u, 7u)], true, var_1.b.b))), u_input.b.x), _wgslsmith_div_i32(1704i, -2147483647i));
    let var_3 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1.b.d.a, _wgslsmith_f_op_f32(f32(-1f) * -1047f))));
    var var_4 = var_1.b;
    return firstLeadingBit(4294967295u >> (_wgslsmith_mult_u32(firstTrailingBit(0u), _wgslsmith_clamp_u32(abs(108247u), 1u, select(27632u, 58146u, var_4.b))) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b.x, 2147483647i), ~max(u_input.b.zx, u_input.b.xx));
    global0 = array<Struct_2, 14>();
    global1 = array<bool, 7>();
    var var_1 = _wgslsmith_mod_u32(~(~(~1u)), 1u);
    global0 = array<Struct_2, 14>();
    global0 = array<Struct_2, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec2<u32>(countOneBits(4745u), _wgslsmith_mult_u32(1u, ~14175u))), abs(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(3970u, 33723u, 1u, 21895u), vec4<u32>(33066u, 30545u, 81698u, 31173u), vec4<u32>(1888u, 1u, 37530u, 4294967295u)))), vec2<f32>(-434f, _wgslsmith_f_op_f32(max(-599f, 468f))), select(~(~(~vec4<u32>(38262u, 38054u, 0u, 71465u))), _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(43358u, 1u)), 1u, 1u, countOneBits(47701u)), vec4<u32>(abs(51510u), func_1(), _wgslsmith_dot_vec2_u32(vec2<u32>(6799u, 52762u), vec2<u32>(4294967295u, 1u)), ~1u)), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~0u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(25237u, 0u), vec2<u32>(17535u, 0u))), 7u)]), ~6989u);
}

