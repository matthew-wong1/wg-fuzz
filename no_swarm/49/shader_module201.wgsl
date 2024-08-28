struct Struct_1 {
    a: f32,
    b: f32,
    c: u32,
    d: vec2<i32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 8> = array<vec4<i32>, 8>(vec4<i32>(28483i, 0i, i32(-2147483648), -15759i), vec4<i32>(-1i, 15990i, -18541i, -1i), vec4<i32>(1i, 6441i, i32(-2147483648), 33241i), vec4<i32>(i32(-2147483648), -58315i, -46601i, 1i), vec4<i32>(i32(-2147483648), -1i, -1i, -12599i), vec4<i32>(1i, -26132i, -4639i, -1i), vec4<i32>(-1i, 14750i, 55170i, 2147483647i), vec4<i32>(-753i, -32719i, 1i, 1i));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> u32 {
    global0 = array<vec4<i32>, 8>();
    var var_0 = ~(~vec3<u32>(4294967295u, countOneBits(~u_input.b.x), ~u_input.a << (arg_0.c % 32u)));
    let var_1 = u_input.b.x;
    let var_2 = Struct_1(arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1389f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-3601f, arg_0.e.x) + arg_0.e.x))), var_1, ~arg_0.d ^ abs(~arg_0.d), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -861f)), 341f, _wgslsmith_f_op_f32(select(-721f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a - 124f)), true))));
    let var_3 = false;
    return ~firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(u_input.b.x, arg_0.c), var_0.x), _wgslsmith_sub_vec2_u32(~u_input.b.zy, _wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.c, 4294967295u), vec2<u32>(1u, var_1)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec3<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_0.b, arg_0.b))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_0.a, -633f))))), _wgslsmith_f_op_f32(f32(-1f) * -1330f), arg_0.c, vec2<i32>((i32(-1i) * -1i) >> (_wgslsmith_dot_vec4_u32(reverseBits(u_input.b), select(vec4<u32>(46702u, arg_0.c, 18413u, arg_1.c), u_input.b, vec4<bool>(true, true, false, true))) % 32u), max(i32(-1i) * -1i, ~(arg_0.d.x ^ arg_0.d.x))), arg_1.e);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.e + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a, -1323f, 441f) + _wgslsmith_f_op_vec3_f32(max(arg_1.e, arg_1.e))))) * vec3<f32>(1f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.e.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.b * arg_0.a), _wgslsmith_f_op_f32(f32(-1f) * -566f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.a), arg_1.a))))));
    return vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.e.x), 206f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-198f - _wgslsmith_f_op_f32(exp2(arg_0.a))))), var_1.x), arg_0.a);
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: vec4<bool>) -> Struct_1 {
    global0 = array<vec4<i32>, 8>();
    global0 = array<vec4<i32>, 8>();
    let var_0 = Struct_1(arg_0, -546f, ~_wgslsmith_div_u32(~_wgslsmith_mod_u32(0u, u_input.a), 1u), abs(~(~firstLeadingBit(vec2<i32>(61826i, 47262i)))), _wgslsmith_f_op_vec3_f32(func_4(Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0), 449f)), _wgslsmith_f_op_f32(exp2(arg_0)), u_input.b.x, select(vec2<i32>(1i, 0i), vec2<i32>(1i, -56620i) << (u_input.b.ww % vec2<u32>(32u)), true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(554f, -1148f, arg_0), vec3<f32>(arg_0, arg_0, -757f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -606f, arg_0) + vec3<f32>(-1000f, 1000f, 1782f)))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0)) - _wgslsmith_f_op_f32(268f + 499f)), 165f, func_3(Struct_1(arg_0, -326f, 40884u, vec2<i32>(-10154i, 8007i), vec3<f32>(arg_0, -2898f, arg_0))), vec2<i32>(countOneBits(40460i), abs(-2147483647i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -895f, 569f)))))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(179f * _wgslsmith_div_f32(arg_0, arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.e.x, 260f)) - _wgslsmith_f_op_f32(-1000f - -1291f))), min(countOneBits(var_0.d.x), _wgslsmith_mod_i32(-16767i, var_0.d.x)) > var_0.d.x)) + _wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(f32(-1f) * -544f)));
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1379f);
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.e.x * _wgslsmith_f_op_f32(-var_0.e.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2088f))), 26421u << (0u % 32u), var_0.d | _wgslsmith_mod_vec2_i32(vec2<i32>(var_0.d.x, var_0.d.x) & -vec2<i32>(-1i, var_0.d.x), vec2<i32>(var_0.d.x, var_0.d.x)), _wgslsmith_f_op_vec3_f32(-var_0.e));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global0 = array<vec4<i32>, 8>();
    var var_0 = _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(~min(u_input.b, vec4<u32>(u_input.b.x, arg_0.c, u_input.b.x, arg_0.c)), firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(20083u, u_input.a, 0u, 62033u), vec4<u32>(arg_0.c, arg_1.c, arg_0.c, 1u), vec4<u32>(51384u, arg_1.c, u_input.b.x, u_input.a)))), vec4<u32>(~19808u, ~arg_1.c << (~arg_0.c % 32u), max(u_input.a, 4294967295u), 0u)) ^ u_input.b;
    let var_1 = -2147483647i;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-127f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.e.x))))) * _wgslsmith_f_op_f32(step(1382f, -1780f)));
    var_2 = _wgslsmith_f_op_vec3_f32(func_4(arg_1, arg_0)).x;
    return func_2(_wgslsmith_f_op_f32(sign(1f)), true, select(vec4<bool>(!any(vec2<bool>(true, false)), true, any(vec3<bool>(true, true, true)), all(vec4<bool>(true, true, true, true))), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = ~((arg_0.c & u_input.b.x) & _wgslsmith_mod_u32(1u, _wgslsmith_div_u32(u_input.a, ~u_input.b.x)));
    return func_5(func_2(_wgslsmith_f_op_f32(f32(-1f) * -674f), true, !vec4<bool>(any(vec4<bool>(false, false, true, true)), true, true, any(vec2<bool>(true, false)))), arg_0);
}

fn func_6(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: f32) -> f32 {
    global0 = array<vec4<i32>, 8>();
    global0 = array<vec4<i32>, 8>();
    let var_0 = ~arg_1.x;
    global0 = array<vec4<i32>, 8>();
    let var_1 = arg_0;
    return 701f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-1279f, _wgslsmith_f_op_f32(func_6(func_1(Struct_1(-1024f, _wgslsmith_f_op_f32(floor(954f)), 0u, _wgslsmith_add_vec2_i32(vec2<i32>(-1i, -2147483647i), vec2<i32>(1i, 25962i)), vec3<f32>(1f, 1f, 1f))), vec3<u32>(~u_input.b.x, ~u_input.b.x, u_input.b.x), Struct_1(-144f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -697f)), u_input.b.x, -vec2<i32>(1i, 1i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(528f, -1506f, -199f))) - vec3<f32>(-1043f, 1281f, 330f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2352f - 860f) * _wgslsmith_f_op_f32(f32(-1f) * -547f)) + _wgslsmith_f_op_f32(f32(-1f) * -1057f)))), u_input.a, abs(vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_mult_i32(2288i, 0i), min(5543i, 2147483647i)), -1i)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(round(func_5(Struct_1(287f, -616f, u_input.a, vec2<i32>(3068i, -11000i), vec3<f32>(1000f, 677f, -822f)), Struct_1(2000f, 369f, u_input.b.x, vec2<i32>(95859i, -2147483647i), vec3<f32>(672f, -1315f, 1509f))).b)), 334f, _wgslsmith_f_op_f32(func_6(Struct_1(-959f, -2044f, u_input.a, vec2<i32>(2147483647i, 1i), vec3<f32>(-1180f, 155f, -1702f)), vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x), func_2(-1104f, false, vec4<bool>(false, false, false, true)), func_1(Struct_1(-146f, -104f, u_input.b.x, vec2<i32>(-1i, 41150i), vec3<f32>(2295f, 656f, -204f))).e.x))))));
    var var_1 = -var_0.d.x;
    var var_2 = Struct_1(-781f, var_0.b, ~_wgslsmith_mult_u32(~(~var_0.c), var_0.c), var_0.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, -217f, 1133f))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(var_0.e)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, -2662f, var_0.e.x)))))));
    global0 = array<vec4<i32>, 8>();
    var_1 = var_0.d.x;
    let var_3 = _wgslsmith_sub_vec4_u32(~(~u_input.b), _wgslsmith_mult_vec4_u32(countOneBits(firstLeadingBit(vec4<u32>(31568u, 4294967295u, 19770u, u_input.a))) >> (_wgslsmith_add_vec4_u32(u_input.b, ~vec4<u32>(u_input.b.x, 22561u, 4294967295u, u_input.b.x)) % vec4<u32>(32u)), firstTrailingBit(_wgslsmith_mult_vec4_u32(u_input.b, vec4<u32>(12947u, var_2.c, u_input.a, 64489u)))));
    var var_4 = func_1(Struct_1(var_0.a, var_2.e.x, 7083u, -vec2<i32>(var_2.d.x >> (4294967295u % 32u), 2147483647i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_2.e, vec3<f32>(var_2.b, var_2.b, 790f)) + var_2.e) + vec3<f32>(_wgslsmith_f_op_f32(var_0.e.x + var_2.e.x), _wgslsmith_f_op_f32(func_6(Struct_1(var_2.b, -273f, var_2.c, vec2<i32>(var_0.d.x, 2147483647i), vec3<f32>(-1000f, -1037f, 247f)), var_3.zxx, Struct_1(var_0.e.x, var_2.e.x, u_input.b.x, vec2<i32>(28735i, 0i), var_0.e), var_0.e.x)), var_0.b))));
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -var_4.d.x, _wgslsmith_f_op_vec2_f32(var_0.e.yy * vec2<f32>(_wgslsmith_f_op_f32(-var_2.a), var_4.a)));
}

