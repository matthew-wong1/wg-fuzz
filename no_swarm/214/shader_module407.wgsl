struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: f32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(649f, 253f, -311f, -871f), -1047f, vec3<bool>(false, true, true));

var<private> global1: u32;

var<private> global2: bool = false;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: vec3<i32>, arg_1: i32, arg_2: vec4<u32>) -> f32 {
    var var_0 = _wgslsmith_add_vec3_i32(vec3<i32>(-1i, _wgslsmith_mult_i32(arg_0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, arg_0.x, -33548i), _wgslsmith_clamp_vec3_i32(arg_0, arg_0, arg_0))), _wgslsmith_mult_i32(_wgslsmith_div_i32(2147483647i, 48945i), _wgslsmith_div_i32(1i, arg_1)) >> (1u % 32u)), vec3<i32>(~select(-55937i, 7036i, true) << (~_wgslsmith_sub_u32(arg_2.x, 3468u) % 32u), _wgslsmith_div_i32(-(2147483647i ^ arg_1), _wgslsmith_mult_i32(i32(-1i) * -66730i, i32(-1i) * -28407i)), -3486i));
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, global0.b, 914f, global0.a.x)) - global0.a)), global0.a)), -660f, global0.c);
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(global0.a + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1208f, 761f, -3049f, 367f) * _wgslsmith_f_op_vec4_f32(select(global0.a, global0.a, true))))), global0.a.x, global0.c);
    global1 = ~abs(_wgslsmith_mult_u32(20860u ^ u_input.b, ~arg_2.x)) | _wgslsmith_mod_u32(82898u, _wgslsmith_mult_u32(~abs(u_input.b), u_input.b << (_wgslsmith_sub_u32(0u, arg_2.x) % 32u)));
    let var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(global0.a.yx))));
    return _wgslsmith_f_op_f32(249f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(503f, var_2.x, true))), 1171f) - _wgslsmith_f_op_f32(-188f + var_2.x)));
}

fn func_2(arg_0: vec4<i32>, arg_1: u32, arg_2: vec3<u32>) -> u32 {
    global0 = Struct_1(global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1f), _wgslsmith_div_f32(1196f, global0.b))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_0.xzy >> (vec3<u32>(4294967295u, arg_1, 79784u) % vec3<u32>(32u)), _wgslsmith_dot_vec3_i32(arg_0.wzz, vec3<i32>(arg_0.x, -1i, -3854i)), ~vec4<u32>(1u, 63598u, u_input.b, 20024u))))), select(vec3<bool>(false, all(select(vec4<bool>(global0.c.x, true, false, true), vec4<bool>(global0.c.x, global0.c.x, false, global0.c.x), vec4<bool>(true, global0.c.x, global0.c.x, global0.c.x))), !any(global0.c.zy)), vec3<bool>(any(!global0.c), any(select(vec4<bool>(global0.c.x, global0.c.x, false, false), vec4<bool>(global0.c.x, false, true, true), vec4<bool>(global0.c.x, global0.c.x, global0.c.x, true))), any(select(vec4<bool>(global0.c.x, false, false, global0.c.x), vec4<bool>(false, global0.c.x, false, false), vec4<bool>(false, false, false, global0.c.x)))), vec3<bool>((global0.c.x | true) == true, !all(vec4<bool>(true, global0.c.x, false, global0.c.x)), any(vec4<bool>(true, true, global0.c.x, global0.c.x)))));
    global2 = true;
    var var_0 = _wgslsmith_add_vec3_i32(firstLeadingBit(-vec3<i32>(-1i, -5216i, 0i)) ^ select(vec3<i32>(arg_0.x, u_input.a, 0i), -vec3<i32>(-2147483647i, 4909i, -2753i), false), max(max(countOneBits(vec3<i32>(arg_0.x, -2147483647i, u_input.a)), abs(arg_0.yzx)), vec3<i32>(~arg_0.x, -u_input.a, arg_0.x))) & -_wgslsmith_div_vec3_i32(arg_0.xxx, _wgslsmith_mult_vec3_i32(vec3<i32>(1i, 35500i, -9882i), countOneBits(vec3<i32>(arg_0.x, u_input.a, u_input.a))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b, 1224f, global0.a.x, global0.b)), _wgslsmith_f_op_vec4_f32(exp2(global0.a)), !vec4<bool>(global0.c.x, false, true, global0.c.x)))) + _wgslsmith_f_op_vec4_f32(-global0.a)), global0.a.x, select(vec3<bool>(any(vec4<bool>(global0.c.x, false, false, false)) & false, global0.c.x, !global0.c.x && true), select(vec3<bool>(true, true, all(vec4<bool>(global0.c.x, true, global0.c.x, global0.c.x))), select(global0.c, vec3<bool>(true, global0.c.x, global0.c.x), !global0.c.x), !vec3<bool>(false, global0.c.x, global0.c.x)), vec3<bool>(true, global0.c.x, true)));
    global1 = 54656u;
    return _wgslsmith_sub_u32(15237u | u_input.b, _wgslsmith_sub_u32(arg_1, 13311u));
}

fn func_1(arg_0: Struct_3) -> vec4<i32> {
    let var_0 = Struct_3(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -366f) - _wgslsmith_f_op_f32(-global0.b)), _wgslsmith_f_op_f32(arg_0.a.b * _wgslsmith_f_op_f32(f32(-1f) * -252f)), arg_0.a.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(602f, global0.b) + _wgslsmith_f_op_f32(-arg_0.a.a.x))), arg_0.a.b, vec3<bool>(true, false, (u_input.b << (4294967295u % 32u)) >= (0u | u_input.b))));
    let var_1 = Struct_2(_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_div_u32(49955u, u_input.b), _wgslsmith_add_u32(169305u, u_input.b), 4294967295u << (u_input.b % 32u)), ~vec3<u32>(u_input.b, u_input.b, 0u)), vec3<u32>(1u, ~reverseBits(u_input.b), 0u)), ~vec2<u32>(~u_input.b, firstTrailingBit(1u)) | ~(~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(u_input.b, u_input.b))), abs(vec4<u32>(abs(func_2(vec4<i32>(u_input.a, -2147483647i, u_input.a, -2147483647i), 68942u, vec3<u32>(4294967295u, u_input.b, u_input.b))), _wgslsmith_add_u32(_wgslsmith_sub_u32(69143u, u_input.b), firstLeadingBit(4981u)), ~abs(53262u), select(4294967295u, u_input.b, global0.c.x) ^ u_input.b)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(var_0.a.a.x * global0.a.x), -294f, -383f), arg_0.a.a.xzy)))));
    var var_2 = _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(abs((vec3<i32>(0i, -8174i, u_input.a) << (var_1.a % vec3<u32>(32u))) >> (vec3<u32>(u_input.b, 1u, var_1.a.x) % vec3<u32>(32u))), -_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(6785i, u_input.a, 0i), vec3<i32>(u_input.a, u_input.a, u_input.a)), abs(vec3<i32>(1i, 12587i, 2147483647i)))), vec3<i32>(u_input.a, -(~u_input.a), _wgslsmith_add_i32(_wgslsmith_add_i32(u_input.a ^ u_input.a, u_input.a), i32(-1i) * -2147483647i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, _wgslsmith_mult_i32(u_input.a, 1i), i32(-1i) * -u_input.a), ~abs(vec3<i32>(25715i, -2734i, 0i)), reverseBits(vec3<i32>(countOneBits(u_input.a), 1i, 20129i))));
    global2 = var_1.d.x >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -704f), var_1.d.x) + arg_0.a.b));
    let var_3 = Struct_1(vec4<f32>(472f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2113f)) - _wgslsmith_f_op_f32(f32(-1f) * -207f)), var_1.d.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global0.b, var_1.d.x))), _wgslsmith_f_op_f32(round(-2120f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1966f, -831f, any(global0.c.xz))) - _wgslsmith_div_f32(-739f, arg_0.a.b))), var_0.a.c);
    return ~select(abs(vec4<i32>(~var_2.x, ~u_input.a, max(u_input.a, 10446i), _wgslsmith_clamp_i32(u_input.a, u_input.a, 1i))), vec4<i32>(11694i, 0i, firstLeadingBit(u_input.a), var_2.x) >> (abs(reverseBits(var_1.c)) % vec4<u32>(32u)), !select(select(vec4<bool>(global0.c.x, false, arg_0.a.c.x, var_0.a.c.x), vec4<bool>(global0.c.x, arg_0.a.c.x, global0.c.x, false), vec4<bool>(true, var_0.a.c.x, arg_0.a.c.x, global0.c.x)), vec4<bool>(false, arg_0.a.c.x, false, global0.c.x), !vec4<bool>(false, false, var_0.a.c.x, var_0.a.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.x, 1088f, global0.b) * global0.a.xzw)))), -select(reverseBits(vec4<i32>(1i, u_input.a, u_input.a, u_input.a)), func_1(Struct_3(Struct_1(global0.a, 931f, global0.c))), global0.c.x), _wgslsmith_f_op_f32(253f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(global0.b)), _wgslsmith_f_op_f32(-446f - 579f))))), func_1(Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(-global0.a), _wgslsmith_f_op_f32(step(global0.b, 1149f)), select(global0.c, vec3<bool>(global0.c.x, global0.c.x, global0.c.x), global0.c.x)))).x, ~1u);
}

