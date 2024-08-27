struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<bool>(false, false, true, false), 433f, vec2<f32>(1000f, 284f));

var<private> global1: array<vec4<u32>, 13>;

var<private> global2: Struct_1 = Struct_1(vec4<bool>(true, false, true, true), -289f, vec2<f32>(1514f, -1796f));

var<private> global3: array<vec4<i32>, 4> = array<vec4<i32>, 4>(vec4<i32>(26642i, 15062i, -14087i, -22083i), vec4<i32>(28309i, -1i, -1i, 39205i), vec4<i32>(1i, 0i, 18726i, -56110i), vec4<i32>(-1i, i32(-2147483648), 7825i, -1i));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<i32>) -> f32 {
    var var_0 = Struct_1(vec4<bool>(all(select(!vec4<bool>(false, global0.a.x, false, true), select(global0.a, vec4<bool>(global2.a.x, global0.a.x, false, false), global0.a), true)), global2.a.x, true, true), _wgslsmith_div_f32(831f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -661f)))), vec2<f32>(_wgslsmith_f_op_f32(sign(-143f)), global2.c.x));
    return 1000f;
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: bool) -> bool {
    var var_0 = true;
    var var_1 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_div_f32(-182f, _wgslsmith_f_op_f32(func_3(global3[_wgslsmith_index_u32(u_input.b, 4u)]))), -577f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(arg_1.c.x, 282f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(min(global3[_wgslsmith_index_u32(4294967295u, 4u)], global3[_wgslsmith_index_u32(u_input.b, 4u)])))))));
    var var_2 = min(vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.x, u_input.a, 2147483647i), vec3<i32>(arg_0.x, u_input.a, u_input.a)), vec3<i32>(-1i, u_input.a, arg_0.x), vec3<i32>(1i, arg_0.x, 0i)), ~select(vec3<i32>(7878i, u_input.a, u_input.a), vec3<i32>(arg_0.x, -52626i, 20395i), false)), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(arg_0, arg_0), ~(-1i)) | _wgslsmith_sub_i32(1i, 10284i), arg_0.x), _wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.x, -_wgslsmith_mult_i32(2147483647i, arg_0.x), _wgslsmith_div_i32(min(u_input.a, u_input.a), i32(-1i) * -5236i)), ~_wgslsmith_add_vec3_i32(vec3<i32>(-1i, 9946i, 0i), -vec3<i32>(36783i, -12660i, u_input.a))));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -100f)), _wgslsmith_f_op_f32(-417f + _wgslsmith_f_op_f32(ceil(-155f))))), var_1.x);
    var var_4 = _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(41957u ^ (u_input.b | 42824u), ~18643u, 0u), ~vec3<u32>(~u_input.b, ~u_input.b, u_input.c)), vec3<u32>(4294967295u, 4294967295u, ~_wgslsmith_mult_u32(~10728u, u_input.c)));
    return !all(arg_2);
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_2.b;
    global3 = array<vec4<i32>, 4>();
    global0 = Struct_1(global2.a, -1048f, vec2<f32>(_wgslsmith_f_op_f32(-121f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.c.x) * arg_1.c.x)), _wgslsmith_f_op_f32(arg_3.c.x * _wgslsmith_f_op_f32(step(-1872f, -995f)))));
    global0 = Struct_1(!select(!select(arg_1.a, vec4<bool>(false, false, false, arg_1.a.x), global2.a.x), arg_2.a, arg_1.a.x), _wgslsmith_f_op_f32(sign(-1010f)), vec2<f32>(-577f, _wgslsmith_f_op_f32(f32(-1f) * -1779f)));
    global0 = Struct_1(vec4<bool>(true, !arg_3.a.x, 63403u >= countOneBits(min(arg_0, 0u)), !(!global2.a.x)), _wgslsmith_f_op_f32(-arg_3.b), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(-arg_1.c.x))), global2.b));
    return arg_2;
}

fn func_1() -> Struct_1 {
    global0 = func_4(u_input.b, Struct_1(vec4<bool>(!any(global2.a.yy), global2.a.x, true, func_2(min(vec2<i32>(17211i, -1i), vec2<i32>(u_input.a, u_input.a)), Struct_1(global2.a, global0.c.x, vec2<f32>(global2.b, 1000f)), !vec2<bool>(global2.a.x, false), global2.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -774f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.c.x, 1946f)) + _wgslsmith_f_op_vec2_f32(global0.c - vec2<f32>(1529f, global2.b))), global0.c)), Struct_1(select(!vec4<bool>(true, global2.a.x, true, false), select(!global0.a, select(global0.a, vec4<bool>(true, true, false, global2.a.x), false), !global2.a.x), select(vec4<bool>(false, global0.a.x, true, global0.a.x), vec4<bool>(true, false, true, global2.a.x), select(global2.a, vec4<bool>(true, false, false, global2.a.x), vec4<bool>(global0.a.x, false, global2.a.x, global2.a.x)))), _wgslsmith_f_op_f32(abs(-487f)), global2.c), Struct_1(select(global2.a, global2.a, !select(global0.a, vec4<bool>(false, true, true, global0.a.x), vec4<bool>(global0.a.x, global2.a.x, global2.a.x, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2.c.x), _wgslsmith_f_op_f32(f32(-1f) * -702f)))), _wgslsmith_div_vec2_f32(vec2<f32>(-919f, _wgslsmith_f_op_f32(select(global2.c.x, global0.c.x, true))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(global0.c + global0.c))))));
    global3 = array<vec4<i32>, 4>();
    let var_0 = func_4(36672u, func_4(_wgslsmith_mod_u32(1u, u_input.c), func_4(u_input.b, Struct_1(global0.a, _wgslsmith_f_op_f32(f32(-1f) * -1975f), global2.c), Struct_1(vec4<bool>(global2.a.x, global2.a.x, true, true), _wgslsmith_f_op_f32(min(117f, 158f)), func_4(1u, Struct_1(global0.a, 774f, vec2<f32>(390f, 476f)), Struct_1(global2.a, global0.b, vec2<f32>(-301f, 557f)), Struct_1(vec4<bool>(global0.a.x, global0.a.x, global2.a.x, global2.a.x), -1000f, global2.c)).c), func_4(_wgslsmith_clamp_u32(1u, 71475u, 0u), Struct_1(global0.a, global2.b, global2.c), func_4(u_input.b, Struct_1(global0.a, global2.b, global0.c), Struct_1(global0.a, global2.c.x, global0.c), Struct_1(global2.a, 681f, global2.c)), Struct_1(vec4<bool>(global0.a.x, true, global0.a.x, true), global2.c.x, global0.c))), func_4(~4294967295u, Struct_1(select(vec4<bool>(global0.a.x, true, false, global2.a.x), global0.a, global0.a), _wgslsmith_f_op_f32(floor(global2.b)), _wgslsmith_f_op_vec2_f32(exp2(global2.c))), func_4(~0u, func_4(u_input.b, Struct_1(vec4<bool>(global0.a.x, true, global0.a.x, false), global2.c.x, vec2<f32>(global2.b, 445f)), Struct_1(vec4<bool>(global2.a.x, true, false, global0.a.x), -1239f, global0.c), Struct_1(vec4<bool>(global2.a.x, global0.a.x, true, true), global0.b, vec2<f32>(-988f, global0.b))), Struct_1(vec4<bool>(true, global0.a.x, global0.a.x, false), global0.b, vec2<f32>(global2.b, -1000f)), func_4(1u, Struct_1(vec4<bool>(global2.a.x, global2.a.x, global0.a.x, false), global2.b, vec2<f32>(-1808f, global2.c.x)), Struct_1(global0.a, -776f, vec2<f32>(global2.c.x, -1172f)), Struct_1(vec4<bool>(false, global0.a.x, global0.a.x, true), global0.b, global0.c))), func_4(firstTrailingBit(3351u), Struct_1(global0.a, global2.b, global0.c), func_4(11063u, Struct_1(vec4<bool>(global0.a.x, true, global2.a.x, global0.a.x), global2.b, global2.c), Struct_1(vec4<bool>(global0.a.x, false, global2.a.x, false), 732f, global0.c), Struct_1(vec4<bool>(false, global0.a.x, global0.a.x, false), global2.b, global2.c)), func_4(27764u, Struct_1(vec4<bool>(global2.a.x, false, global2.a.x, global2.a.x), -1397f, vec2<f32>(global2.c.x, -118f)), Struct_1(global2.a, 184f, global0.c), Struct_1(vec4<bool>(global2.a.x, true, global0.a.x, false), global0.b, vec2<f32>(global0.b, global0.b))))), func_4(294u, func_4(~u_input.b, func_4(u_input.c, Struct_1(vec4<bool>(global2.a.x, global0.a.x, global2.a.x, global2.a.x), -957f, vec2<f32>(986f, 1087f)), Struct_1(vec4<bool>(global2.a.x, true, false, global2.a.x), global0.b, global0.c), Struct_1(vec4<bool>(false, false, false, true), global2.b, vec2<f32>(-231f, global0.c.x))), func_4(53014u, Struct_1(global0.a, -367f, global0.c), Struct_1(vec4<bool>(true, global0.a.x, global2.a.x, global2.a.x), global2.b, vec2<f32>(-1711f, -961f)), Struct_1(global2.a, global2.b, vec2<f32>(global2.b, global2.c.x))), Struct_1(vec4<bool>(global0.a.x, false, global0.a.x, global0.a.x), global0.c.x, global0.c)), Struct_1(select(vec4<bool>(true, true, global2.a.x, true), global0.a, global2.a), _wgslsmith_div_f32(global2.c.x, 1184f), _wgslsmith_f_op_vec2_f32(select(global0.c, vec2<f32>(global0.b, 1967f), vec2<bool>(global2.a.x, global2.a.x)))), Struct_1(global2.a, global0.b, vec2<f32>(445f, global0.b)))), Struct_1(!(!vec4<bool>(global2.a.x, global0.a.x, global2.a.x, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.c.x + 1000f) * _wgslsmith_f_op_f32(f32(-1f) * -692f))), vec2<f32>(_wgslsmith_f_op_f32(global2.c.x + _wgslsmith_f_op_f32(-global0.b)), global0.c.x)), func_4(~(firstTrailingBit(u_input.c) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 20195u, u_input.b), vec3<u32>(0u, u_input.b, 0u))), Struct_1(!select(vec4<bool>(false, true, false, global2.a.x), vec4<bool>(global2.a.x, global2.a.x, global0.a.x, global0.a.x), global0.a), 367f, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global0.c, global2.c) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.c.x, -386f) * global0.c))), func_4(u_input.b, Struct_1(select(global2.a, vec4<bool>(true, true, false, false), global2.a.x), global2.b, _wgslsmith_f_op_vec2_f32(-global2.c)), func_4(u_input.b, func_4(0u, Struct_1(vec4<bool>(global0.a.x, global2.a.x, true, true), global0.b, vec2<f32>(global2.c.x, global0.b)), Struct_1(global0.a, 517f, vec2<f32>(-922f, -1860f)), Struct_1(vec4<bool>(global0.a.x, false, global0.a.x, global0.a.x), global2.b, vec2<f32>(global2.b, global0.c.x))), Struct_1(vec4<bool>(false, false, true, global2.a.x), global2.c.x, global2.c), Struct_1(global2.a, 534f, global0.c)), func_4(0u, Struct_1(vec4<bool>(true, true, global2.a.x, false), global2.b, global0.c), Struct_1(global0.a, global0.c.x, vec2<f32>(global0.b, global2.c.x)), func_4(u_input.b, Struct_1(global2.a, global2.c.x, global0.c), Struct_1(global0.a, -2641f, vec2<f32>(global0.c.x, global0.b)), Struct_1(vec4<bool>(true, global0.a.x, true, true), -841f, vec2<f32>(442f, 1874f))))), Struct_1(select(vec4<bool>(global0.a.x, true, true, true), !vec4<bool>(false, false, true, global2.a.x), global0.a.x), _wgslsmith_f_op_f32(global2.c.x + _wgslsmith_f_op_f32(func_3(vec4<i32>(-28583i, -1i, -8694i, u_input.a)))), _wgslsmith_f_op_vec2_f32(global2.c + _wgslsmith_f_op_vec2_f32(-global2.c)))));
    global0 = var_0;
    let var_1 = firstLeadingBit(u_input.c);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = 317f;
    var var_2 = 74815u;
    var var_3 = global2.a.x;
    let var_4 = true;
    var var_5 = firstTrailingBit(~(~(~vec2<u32>(0u, u_input.b))));
    let var_6 = vec3<bool>(true, !func_1().a.x, true);
    var var_7 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_1().b) + 304f)), -710f, _wgslsmith_f_op_f32(abs(global2.b)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.c.x) + 739f))), func_4(~(~4294967295u), Struct_1(vec4<bool>(global2.a.x, true, false, true), -371f, vec2<f32>(727f, -1225f)), Struct_1(select(vec4<bool>(var_4, false, var_0.a.x, global0.a.x), vec4<bool>(true, false, false, true), var_0.a.x), _wgslsmith_f_op_f32(-var_0.c.x), var_0.c), Struct_1(!vec4<bool>(true, var_4, global2.a.x, true), _wgslsmith_f_op_f32(func_3(global3[_wgslsmith_index_u32(var_5.x, 4u)])), global2.c)).c.x)));
    let var_8 = vec2<u32>(~u_input.c, 1u);
    let x = u_input.a;
    s_output = StorageBuffer(~var_8.x);
}

