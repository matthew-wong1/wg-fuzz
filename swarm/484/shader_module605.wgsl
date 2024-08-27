struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_2 = Struct_2(i32(-2147483648), vec4<f32>(-1000f, 155f, 1459f, -1000f));

var<private> global2: array<vec3<bool>, 20> = array<vec3<bool>, 20>(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false));

var<private> global3: array<f32, 27> = array<f32, 27>(-1117f, -323f, -1804f, 389f, 222f, -463f, -105f, -167f, -576f, 197f, -1107f, -1416f, 1000f, 797f, -1000f, -2189f, -1000f, -780f, -401f, 452f, 472f, -1642f, 1262f, 203f, -760f, 2844f, 211f);

var<private> global4: Struct_2 = Struct_2(45017i, vec4<f32>(-1000f, -744f, 128f, 879f));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: bool) -> f32 {
    let var_0 = Struct_1(true, -2147483647i, vec2<i32>(~min(-29523i, -1i << (0u % 32u)), global4.a), -2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1143f - 1414f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(657f, 543f, arg_2.a)) * 718f))));
    var var_1 = arg_2;
    let var_2 = u_input.b;
    let var_3 = var_1.a || (false | !var_0.a);
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.b.x, 534f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b.x, global4.b.x) - global1.b.xz)) - vec2<f32>(_wgslsmith_div_f32(623f, _wgslsmith_f_op_f32(exp2(arg_1.b.x))), global4.b.x)) - global4.b.wx);
    return global4.b.x;
}

fn func_4(arg_0: f32, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: Struct_2) -> u32 {
    var var_0 = 1i;
    let var_1 = _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(u_input.b, u_input.b, 2915u, 35985u) >> (reverseBits(vec4<u32>(u_input.b, 25562u, 17820u, 51207u)) % vec4<u32>(32u))), vec4<u32>(~(~u_input.b), 0u | _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(u_input.b, 1u)), _wgslsmith_dot_vec2_u32(~vec2<u32>(70982u, u_input.b), ~vec2<u32>(1u, 28716u)), u_input.b)), ~_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<u32>(34262u, u_input.b, u_input.b, 0u) | vec4<u32>(76111u, u_input.b, u_input.b, 0u), min(vec4<u32>(u_input.b, u_input.b, 4294967295u, 66845u), vec4<u32>(4294967295u, u_input.b, u_input.b, 1u))), vec4<u32>(~39376u, u_input.b, u_input.b >> (u_input.b % 32u), u_input.b)));
    let var_2 = var_1.wzz;
    var var_3 = vec4<u32>(((~u_input.b << (~42294u % 32u)) << (~var_2.x % 32u)) >> (31564u % 32u), _wgslsmith_clamp_u32(firstLeadingBit(var_2.x), ~(~_wgslsmith_div_u32(u_input.b, 4294967295u)), 6549u), min(~48223u, var_1.x), 110974u);
    let var_4 = Struct_1(true, ~(-4212i), arg_2.c, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(countOneBits(arg_3.a), 32362i, 1i, arg_2.d & arg_2.c.x), vec4<i32>(global0.a | 1i, max(-21614i, 0i), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 10868i, global1.a), arg_1.zzy), -2147483647i)), vec4<i32>(-u_input.a, ~(-20531i), _wgslsmith_sub_i32(global4.a, -7572i), 1i | global1.a) | vec4<i32>(-1i, _wgslsmith_mod_i32(u_input.d.x, -12674i), arg_2.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_3.a, -2147483647i), arg_2.c))), global0.b.x);
    return u_input.b;
}

fn func_2(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_1) -> vec4<f32> {
    let var_0 = global3[_wgslsmith_index_u32(~abs(func_4(_wgslsmith_f_op_f32(func_3(global4.b, Struct_2(arg_2.d, global4.b), Struct_1(arg_2.a, 1i, u_input.d.wz, global0.a, 814f), false)), u_input.d | vec4<i32>(global1.a, 25956i, u_input.d.x, global1.a), Struct_1(false, -1i, vec2<i32>(u_input.d.x, -15316i), global4.a, -239f), Struct_2(global1.a, vec4<f32>(global4.b.x, -320f, global4.b.x, 227f)))) | min(0u, ~77549u), 27u)];
    var var_1 = Struct_1(any(vec2<bool>(arg_2.a, _wgslsmith_f_op_f32(global4.b.x - global4.b.x) > 1118f)), global1.a, abs(vec2<i32>(countOneBits(min(global4.a, u_input.c)), (5557i | arg_2.d) << (~arg_1 % 32u))), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(~u_input.d.xxy, _wgslsmith_mod_vec3_i32(vec3<i32>(11437i, u_input.a, global0.a), u_input.d.xww)), ~29391i) ^ _wgslsmith_add_i32(firstTrailingBit(min(657i, global0.a)), 33620i), -528f);
    global4 = Struct_2(_wgslsmith_clamp_i32(~firstLeadingBit(abs(1i)), 1i, -33744i), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.b.x, _wgslsmith_f_op_f32(arg_2.e + global0.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.b.x), -1644f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b.x * arg_2.e) + -2014f)), _wgslsmith_f_op_vec4_f32(-global4.b))));
    let var_2 = arg_2;
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.x, -1641f, -848f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-351f, _wgslsmith_f_op_f32(-var_1.e), arg_2.a)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x)))) + vec4<f32>(_wgslsmith_f_op_f32(1000f + arg_2.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 2747f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global4.b.x, var_2.e))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_1.e, -315f), 496f))));
}

fn func_1(arg_0: vec2<f32>) -> u32 {
    global4 = Struct_2(select(_wgslsmith_dot_vec4_i32(u_input.d, firstTrailingBit(vec4<i32>(global1.a, -1298i, global4.a, global1.a))), _wgslsmith_sub_i32(-12232i | _wgslsmith_sub_i32(global0.a, global0.a), 1i), !(_wgslsmith_mult_i32(u_input.d.x, global4.a) == ~global4.a)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * -295f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global4.b.x, 391f) + -212f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-105f * 562f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-519f)) - global4.b.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(vec3<u32>(48349u, u_input.b, u_input.b) >> (vec3<u32>(u_input.b, u_input.b, u_input.b) % vec3<u32>(32u)), _wgslsmith_add_u32(4294967295u, 0u), Struct_1(false, u_input.c, vec2<i32>(6571i, 1i), global0.a, global4.b.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.b + global1.b) - vec4<f32>(global4.b.x, -235f, global4.b.x, global3[_wgslsmith_index_u32(2900u, 27u)]))))));
    global2 = array<vec3<bool>, 20>();
    let var_0 = vec3<i32>(~(~(-136i)), -global1.a, _wgslsmith_dot_vec3_i32(~(~u_input.d.zxw), u_input.d.wwx));
    global3 = array<f32, 27>();
    global4 = Struct_2(abs(-_wgslsmith_dot_vec4_i32(u_input.d, select(vec4<i32>(2147483647i, -2147483647i, var_0.x, -27484i), vec4<i32>(11967i, 16501i, u_input.a, 48431i), true))), _wgslsmith_f_op_vec4_f32(-global0.b));
    return ~u_input.b;
}

fn func_5(arg_0: vec4<bool>, arg_1: vec2<u32>) -> Struct_1 {
    return Struct_1((~_wgslsmith_clamp_u32(arg_1.x, 2745u, 4294967295u) >= 1u) | arg_0.x, _wgslsmith_dot_vec4_i32(max(u_input.d, select(vec4<i32>(global1.a, -1i, global0.a, 1i), u_input.d, vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x))), u_input.d), vec2<i32>(global4.a, ~_wgslsmith_add_i32(_wgslsmith_add_i32(0i, u_input.c), _wgslsmith_mult_i32(34999i, global4.a))), _wgslsmith_dot_vec3_i32(u_input.d.wxz, -vec3<i32>(_wgslsmith_add_i32(33136i, global1.a), _wgslsmith_dot_vec3_i32(u_input.d.xwz, vec3<i32>(1i, u_input.d.x, -1i)), _wgslsmith_dot_vec2_i32(vec2<i32>(global4.a, 2765i), u_input.d.ww))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1180f)) + 987f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -19763i;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(global1.b, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(global0.b, vec4<f32>(global4.b.x, 179f, 886f, -823f))), global1.b)))), vec4<f32>(-1446f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-981f + global3[_wgslsmith_index_u32(1u, 27u)]))), _wgslsmith_f_op_f32(-927f + 323f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(20477u, 27u)] * 279f)))), !vec4<bool>(all(vec4<bool>(false, true, true, false)), true, true, all(global2[_wgslsmith_index_u32(u_input.b, 20u)])))));
    var var_2 = func_5(select(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), true), !select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true)), !all(!global2[_wgslsmith_index_u32(3614u, 20u)])), vec2<u32>(~u_input.b, _wgslsmith_mod_u32(u_input.b ^ 87581u, u_input.b >> (u_input.b % 32u))) >> (_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(20778u, u_input.b), vec2<u32>(0u, u_input.b)), vec2<u32>(func_1(global0.b.zz), _wgslsmith_sub_u32(u_input.b, u_input.b))) % vec2<u32>(32u)));
    global3 = array<f32, 27>();
    var var_3 = Struct_2(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(~firstTrailingBit(vec4<i32>(global1.a, var_2.b, 1i, 0i)), _wgslsmith_mod_vec4_i32(~vec4<i32>(0i, u_input.c, var_2.d, 62086i), -vec4<i32>(u_input.d.x, 1i, var_2.d, 0i)), u_input.d), vec4<i32>(48874i, global1.a, global0.a, 1i)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.b.x)))), _wgslsmith_f_op_f32(1617f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(1075f, 1251f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global4.b.x, -152f) * -1395f), var_2.e));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~_wgslsmith_add_u32(u_input.b, 14423u), abs(countOneBits(u_input.b))) << (vec2<u32>(29792u, u_input.b) % vec2<u32>(32u)), ~_wgslsmith_dot_vec2_i32(reverseBits(_wgslsmith_mult_vec2_i32(vec2<i32>(0i, 0i), vec2<i32>(6315i, 42473i))), vec2<i32>(-1i) * -u_input.d.zw));
}

