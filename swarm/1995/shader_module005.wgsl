struct Struct_1 {
    a: f32,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 23> = array<vec3<bool>, 23>(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true));

var<private> global1: Struct_3 = Struct_3(false);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<i32>, arg_1: f32, arg_2: vec3<f32>) -> f32 {
    let var_0 = select(vec2<bool>(false, global1.a), !select(!select(vec2<bool>(true, false), vec2<bool>(global1.a, true), global1.a), !(!vec2<bool>(false, global1.a)), select(!vec2<bool>(global1.a, global1.a), select(vec2<bool>(true, false), vec2<bool>(false, global1.a), true), true)), !(!select(select(vec2<bool>(global1.a, global1.a), vec2<bool>(true, false), vec2<bool>(global1.a, global1.a)), vec2<bool>(global1.a, global1.a), global1.a)));
    global0 = array<vec3<bool>, 23>();
    global0 = array<vec3<bool>, 23>();
    var var_1 = Struct_1(1f, 183f, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~(vec4<u32>(115157u, 0u, u_input.b.x, 4294967295u) ^ vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.b.x)), max(vec4<u32>(u_input.a, u_input.b.x, u_input.a, 36404u), vec4<u32>(u_input.b.x, u_input.b.x, u_input.a, 64349u)) << (~vec4<u32>(0u, 0u, 0u, u_input.a) % vec4<u32>(32u))), _wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.a, 1u, 6926u >> (u_input.b.x % 32u), _wgslsmith_sub_u32(0u, u_input.a)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 47006u, 4294967295u), vec4<u32>(21576u, u_input.b.x, 4294967295u, u_input.b.x), vec4<u32>(u_input.a, u_input.a, 30821u, u_input.a)))));
    let var_2 = _wgslsmith_mod_vec3_i32(-arg_0.ywy, -(-_wgslsmith_mod_vec3_i32(arg_0.xxy, arg_0.zzz) << (u_input.b % vec3<u32>(32u))));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_2.x), -753f)), _wgslsmith_f_op_f32(round(arg_1))));
}

fn func_2() -> i32 {
    var var_0 = Struct_2(1u, Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-287f)))), _wgslsmith_f_op_f32(297f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<i32>(1i, u_input.c, -28647i, u_input.c), -310f, vec3<f32>(-719f, 411f, -1101f))))), ~_wgslsmith_mod_u32(1u, countOneBits(28149u))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(633f)))), 1436f, 87292u));
    let var_1 = select(1u, u_input.b.x >> (~min(~u_input.b.x, var_0.b.c) % 32u), false);
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.c.a, var_0.b.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.a, var_0.b.a)))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1538f, var_0.c.b))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-156f, var_0.c.a))) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-643f, -717f))))))));
    return ~(-17634i << ((min(firstTrailingBit(24321u), 40121u) >> (abs(min(15642u, 20530u)) % 32u)) % 32u));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: vec2<i32>, arg_3: vec3<f32>) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(firstTrailingBit(vec4<i32>(-19823i, -21537i, arg_2.x, u_input.c)), _wgslsmith_f_op_f32(f32(-1f) * -1035f), _wgslsmith_f_op_vec3_f32(arg_3 - vec3<f32>(-1658f, 1144f, 3689f))))))), _wgslsmith_f_op_f32(-arg_1.x), 1u);
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: u32) -> Struct_1 {
    let var_0 = func_4(Struct_3(arg_0), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, arg_1) - vec3<f32>(542f, 2529f, arg_1))) - vec3<f32>(2691f, _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-arg_1))), vec3<f32>(_wgslsmith_div_f32(-324f, arg_1), 1977f, _wgslsmith_f_op_f32(floor(2008f))))), min(_wgslsmith_mult_vec2_i32(-vec2<i32>(40342i, 1859i), -vec2<i32>(u_input.c, u_input.c)), vec2<i32>(~func_2(), u_input.c)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1, arg_1, arg_1), vec3<f32>(-1827f, arg_1, arg_1), !global1.a)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_1, arg_1, arg_1))), global1.a)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 - arg_1) * _wgslsmith_f_op_f32(218f + -1231f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1))), _wgslsmith_div_f32(-295f, _wgslsmith_f_op_f32(-arg_1))), !select(true, any(vec4<bool>(global1.a, true, arg_0, global1.a)), global1.a && arg_0))));
    let var_1 = !select(select(!select(vec4<bool>(arg_0, global1.a, false, arg_0), vec4<bool>(false, arg_0, global1.a, arg_0), arg_0), !vec4<bool>(false, true, global1.a, true), !(!vec4<bool>(true, false, global1.a, true))), vec4<bool>(arg_0, any(!vec4<bool>(true, true, true, global1.a)), all(global0[_wgslsmith_index_u32(min(u_input.a, 67035u), 23u)]), !any(vec4<bool>(true, false, false, global1.a))), arg_0);
    let var_2 = Struct_3(!select(var_1.x, any(var_1), all(vec2<bool>(var_1.x, false))));
    global1 = var_2;
    var var_3 = vec2<i32>(~(-2147483647i), min(63832i, -5299i));
    return var_0;
}

fn func_5(arg_0: u32, arg_1: Struct_2) -> Struct_3 {
    global0 = array<vec3<bool>, 23>();
    let var_0 = !select(vec2<bool>(-7426i < _wgslsmith_mult_i32(23867i, u_input.c), true), select(vec2<bool>(!global1.a, false), vec2<bool>(true, true), false == (arg_1.b.a == arg_1.c.a)), global1.a);
    var var_1 = u_input.b.yy;
    var var_2 = func_4(Struct_3(true && var_0.x), vec3<f32>(arg_1.c.b, _wgslsmith_f_op_f32(-910f * _wgslsmith_div_f32(-2341f, arg_1.b.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.a) - _wgslsmith_f_op_f32(sign(-1822f))))), vec2<i32>(_wgslsmith_mod_i32(~u_input.c ^ 0i, -abs(u_input.c)), u_input.c), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.b.b))) - arg_1.b.a), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(arg_1.c.a)), arg_1.c.a)))), arg_1.b.b));
    var var_3 = max(min(-firstLeadingBit(vec2<i32>(-1i, -77161i)), -(vec2<i32>(u_input.c, u_input.c) >> (vec2<u32>(74502u, 4294967295u) % vec2<u32>(32u))) << (~(~vec2<u32>(arg_1.c.c, u_input.b.x)) % vec2<u32>(32u))), vec2<i32>(u_input.c, u_input.c) >> ((vec2<u32>(23015u, ~0u) | vec2<u32>(var_2.c, _wgslsmith_mod_u32(55128u, arg_1.b.c))) % vec2<u32>(32u)));
    return Struct_3(any(vec2<bool>(false, false)));
}

fn func_6(arg_0: Struct_3) -> Struct_3 {
    var var_0 = max(-((_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, 2147483647i, u_input.c), vec3<i32>(u_input.c, u_input.c, 1i)) << (u_input.b % vec3<u32>(32u))) >> (vec3<u32>(u_input.a, u_input.b.x, u_input.b.x ^ u_input.a) % vec3<u32>(32u))), select(_wgslsmith_mult_vec3_i32(reverseBits(abs(vec3<i32>(u_input.c, u_input.c, u_input.c))), vec3<i32>(11668i, u_input.c, 0i) & firstLeadingBit(vec3<i32>(u_input.c, -1i, -61166i))), abs(vec3<i32>(-13082i, u_input.c, u_input.c & -26257i)), func_5(abs(8954u), Struct_2(~4294967295u, func_4(Struct_3(false), vec3<f32>(1314f, 624f, 1186f), vec2<i32>(-17934i, u_input.c), vec3<f32>(1000f, 1304f, 443f)), func_1(global1.a, 3390f, u_input.a))).a));
    global1 = Struct_3(all(select(!global0[_wgslsmith_index_u32(1u, 23u)], !vec3<bool>(true, global1.a, global1.a), vec3<bool>(true, false, true))) && func_5(~u_input.b.x, Struct_2(4294967295u, Struct_1(-903f, 685f, u_input.a), Struct_1(-394f, 1563f, 1u))).a);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(u_input.b.x, Struct_2((u_input.a >> (40966u % 32u)) >> (~u_input.a % 32u), Struct_1(-949f, _wgslsmith_f_op_f32(floor(442f)), u_input.a), func_1(u_input.a > u_input.b.x, 1f, u_input.a << (1u % 32u)))));
    let var_1 = !select(vec3<bool>(true, any(vec3<bool>(global1.a, false, false)), true), !(!select(vec3<bool>(global1.a, global1.a, global1.a), global0[_wgslsmith_index_u32(0u, 23u)], global1.a)), -1000f != func_4(func_5(u_input.a, Struct_2(u_input.b.x, Struct_1(-890f, 775f, u_input.b.x), Struct_1(587f, -1003f, 1u))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(371f, 617f, 1404f)), max(vec2<i32>(2147483647i, u_input.c), vec2<i32>(0i, u_input.c)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1237f, -725f, -224f), vec3<f32>(623f, -703f, -257f), false))).a);
    global0 = array<vec3<bool>, 23>();
    global1 = Struct_3(73595u != (0u << (_wgslsmith_div_u32(32873u, u_input.a) % 32u)));
    global1 = func_5(u_input.a, Struct_2(1u, func_4(Struct_3(true), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(489f, 2128f, 511f), vec3<f32>(-1000f, -529f, -1534f), false)))), vec2<i32>(-1i) * -vec2<i32>(0i, 1i), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(832f, 1188f, -466f), vec3<f32>(1f, 1f, 1f)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(886f + -300f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(757f)) + _wgslsmith_f_op_f32(1699f * 1004f)), _wgslsmith_dot_vec3_u32(u_input.b, ~vec3<u32>(u_input.b.x, 27751u, u_input.a)))));
    let var_2 = select(!select(vec2<bool>(!var_0.a, true), select(select(vec2<bool>(false, var_1.x), vec2<bool>(var_0.a, true), var_0.a), select(vec2<bool>(global1.a, var_0.a), var_1.yz, var_0.a), var_1.xy), vec2<bool>(global1.a, var_0.a)), select(select(!select(vec2<bool>(var_0.a, false), vec2<bool>(var_1.x, false), var_1.zx), vec2<bool>(var_0.a, var_1.x), !(!var_1.zz)), select(vec2<bool>(var_0.a, var_1.x), select(vec2<bool>(global1.a, var_1.x), var_1.xx, select(var_1.xz, var_1.yx, var_1.zx)), select(var_1.xz, vec2<bool>(var_1.x, var_0.a), any(vec2<bool>(global1.a, global1.a)))), func_5(u_input.b.x, Struct_2(u_input.a, func_1(true, -951f, 33493u), func_1(global1.a, -204f, u_input.b.x))).a), var_0.a);
    let var_3 = Struct_3(false);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, _wgslsmith_add_vec3_i32(select(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, 2708i, 1i), select(vec3<i32>(u_input.c, u_input.c, 33999i), vec3<i32>(1i, 2147483647i, u_input.c), true)), _wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(2147483647i, u_input.c, u_input.c)), vec3<i32>(u_input.c, u_input.c, 130i)), func_6(Struct_3(global1.a)).a), ~(vec3<i32>(-1i) * -vec3<i32>(2147483647i, 2147483647i, -1i))), u_input.c & _wgslsmith_clamp_i32(_wgslsmith_mult_i32(-2147483647i, abs(u_input.c)), _wgslsmith_mod_i32(u_input.c, u_input.c) >> (u_input.a % 32u), u_input.c), 1u, vec3<u32>(firstLeadingBit(u_input.b.x), firstLeadingBit(22109u), ~28456u));
}

