struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(65326u, -126f), vec2<i32>(-1i, 0i), -1000f);

var<private> global1: vec3<f32>;

var<private> global2: i32;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: vec4<f32>) -> bool {
    var var_0 = _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(u_input.c.xy, ~vec2<i32>(global0.b.x & 30180i, global0.b.x)), vec2<i32>(~(-31164i), firstLeadingBit(_wgslsmith_sub_i32(68023i, firstTrailingBit(global0.b.x)))));
    global1 = vec3<f32>(_wgslsmith_f_op_f32(-440f - -375f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), 585f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) * -404f) * 2217f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.c, global0.c, true)) * arg_2.x)))));
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-193f, -2353f, _wgslsmith_f_op_f32(-arg_0))));
    var var_1 = all(!(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true)));
    var var_2 = global0.a;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.c), 1f) + _wgslsmith_div_f32(var_2.b, _wgslsmith_f_op_f32(f32(-1f) * -397f))) - 877f) <= -493f;
}

fn func_2(arg_0: Struct_2, arg_1: vec2<u32>) -> vec2<bool> {
    let var_0 = !func_3(-496f, Struct_2(global0.a, ~arg_0.b, global1.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-337f, global1.x, arg_0.a.b, global1.x) + vec4<f32>(-2285f, -174f, arg_0.c, -2433f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1258f, global1.x, global1.x, global0.c) - vec4<f32>(-893f, arg_0.a.b, global0.a.b, arg_0.c)), vec4<bool>(true, true, false, false)))));
    global1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c, global0.c, -1379f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.b, global1.x, arg_0.c))))));
    var var_1 = arg_0.b;
    var var_2 = vec2<bool>(true, !(u_input.b.x == _wgslsmith_div_u32(_wgslsmith_div_u32(4294967295u, 4294967295u), ~23892u)));
    let var_3 = countOneBits(35i);
    return select(!(!select(vec2<bool>(var_0, var_2.x), vec2<bool>(var_0, var_0), any(vec4<bool>(true, var_0, true, false)))), !vec2<bool>(-1i > firstTrailingBit(-1i), var_2.x), vec2<bool>(var_2.x, any(select(select(vec3<bool>(var_2.x, var_0, false), vec3<bool>(true, var_2.x, var_2.x), vec3<bool>(var_2.x, false, true)), select(vec3<bool>(true, true, false), vec3<bool>(false, var_2.x, var_2.x), vec3<bool>(var_2.x, var_2.x, true)), vec3<bool>(false, var_0, false)))));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1) -> Struct_2 {
    let var_0 = Struct_2(arg_1, u_input.c.xx, global0.c);
    let var_1 = vec2<bool>(true, func_3(212f, var_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, arg_1.b, -563f, global0.a.b))))));
    let var_2 = 1u;
    var var_3 = min(min(_wgslsmith_add_u32(65926u, u_input.a), var_0.a.a), arg_1.a) | ~firstLeadingBit(_wgslsmith_dot_vec4_u32(u_input.b, _wgslsmith_div_vec4_u32(u_input.b, u_input.b)));
    var_3 = abs(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(u_input.b, ~u_input.b), arg_1.a));
    return var_0;
}

fn func_1() -> u32 {
    var var_0 = func_4(!select(select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(false, false), func_2(Struct_2(Struct_1(7301u, global1.x), vec2<i32>(24566i, 1i), 3136f), u_input.b.yx)), !func_2(Struct_2(global0.a, vec2<i32>(u_input.c.x, 0i), global0.c), u_input.b.ww), true), global0.a);
    global1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1871f, var_0.c, global0.a.b) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.b, 658f, -1959f) * vec3<f32>(-833f, global1.x, 678f))))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.c, _wgslsmith_f_op_f32(-1f), -825f))));
    var var_1 = vec3<i32>(~(-704i), -1i, ~1i) & _wgslsmith_add_vec3_i32(~vec3<i32>(reverseBits(0i), 13875i, 1i), u_input.c ^ u_input.c);
    global2 = _wgslsmith_dot_vec2_i32(vec2<i32>(countOneBits(var_0.b.x), select(-(~var_1.x), firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, global0.b.x, -497i), vec3<i32>(-17363i, -1i, global0.b.x))), false)), u_input.c.zx >> (~vec2<u32>(~global0.a.a, u_input.a ^ 24133u) % vec2<u32>(32u)));
    let var_2 = !select(vec3<bool>(any(vec3<bool>(true, true, true)), true, true), vec3<bool>(func_2(func_4(vec2<bool>(false, true), Struct_1(4294967295u, 740f)), firstLeadingBit(u_input.b.yw)).x, false, select(false, true, false)), false);
    return _wgslsmith_sub_u32(_wgslsmith_mod_u32(57787u, global0.a.a), 12745u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_sub_u32(func_1(), 1u);
    var var_1 = func_4(vec2<bool>(func_3(global0.c, func_4(vec2<bool>(false, false), Struct_1(global0.a.a, -1258f)), _wgslsmith_div_vec4_f32(vec4<f32>(-764f, 621f, global0.c, -202f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c, 313f, -384f, global1.x)))), true), global0.a).a;
    global0 = Struct_2(global0.a, vec2<i32>((i32(-1i) * -global0.b.x) << (countOneBits(_wgslsmith_mod_u32(global0.a.a, u_input.b.x)) % 32u), _wgslsmith_mod_i32(u_input.c.x, global0.b.x >> (1u % 32u))), global0.a.b);
    global0 = Struct_2(Struct_1(1u, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(499f + var_1.b), _wgslsmith_f_op_f32(var_1.b - global1.x))))), ~(vec2<i32>(firstTrailingBit(9647i), global0.b.x) ^ u_input.c.zy), -509f);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, vec2<i32>(_wgslsmith_mult_i32(firstLeadingBit(-global0.b.x), _wgslsmith_dot_vec4_i32(vec4<i32>(global0.b.x, 13225i, global0.b.x, -799i), vec4<i32>(global0.b.x, 1i, 2147483647i, -12670i) & vec4<i32>(global0.b.x, -2147483647i, 0i, -65628i))), global0.b.x), min(~(~1u), 0u), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.b, 1000f))))), _wgslsmith_clamp_i32(17435i, 1i, 0i));
}

