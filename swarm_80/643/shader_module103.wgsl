struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: f32,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: u32,
    d: f32,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 5>;

var<private> global1: array<vec3<f32>, 28>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: i32, arg_1: i32) -> vec2<bool> {
    global0 = array<vec4<u32>, 5>();
    global1 = array<vec3<f32>, 28>();
    return select(select(!vec2<bool>(any(vec2<bool>(true, false)), all(vec4<bool>(false, true, true, true))), vec2<bool>(arg_0 <= 2147483647i, any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)))), vec2<bool>(true, true)), select(!vec2<bool>(arg_1 <= 7752i, true), select(vec2<bool>(any(vec3<bool>(false, false, false)), u_input.c.x > 0u), select(vec2<bool>(true, true), vec2<bool>(false, false), select(true, false, false)), true), vec2<bool>(true, true)), vec2<bool>(true, true));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<f32>, arg_2: i32, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = ~_wgslsmith_mult_i32(-(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_2, u_input.a.x), u_input.a.xx) | ~arg_2), _wgslsmith_add_i32(1i, u_input.b.x));
    global1 = array<vec3<f32>, 28>();
    let var_1 = Struct_1(select(func_3(max(u_input.a.x, ~2147483647i), u_input.a.x), arg_3.yx, select(vec2<bool>(arg_3.x, arg_2 <= u_input.a.x), vec2<bool>(true, true), !(!arg_3.x))), ~_wgslsmith_add_i32(-u_input.b.x, ~(-u_input.a.x)), arg_1.x, -1i, !(~4294967295u != _wgslsmith_add_u32(~u_input.c.x, 100417u)));
    var var_2 = _wgslsmith_mod_vec3_i32(u_input.a, abs(u_input.a));
    let var_3 = -1042f;
    return Struct_1(var_1.a, var_2.x, 223f, min(~_wgslsmith_add_i32(-4475i, -19253i), _wgslsmith_clamp_i32(_wgslsmith_add_i32(var_1.d, var_2.x), firstLeadingBit(2147483647i), -30164i)) >> (reverseBits(_wgslsmith_mod_u32(u_input.c.x, u_input.c.x ^ arg_0.x)) % 32u), ~arg_0.x > _wgslsmith_mult_u32(~_wgslsmith_sub_u32(u_input.c.x, u_input.c.x), 0u));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3) -> vec2<bool> {
    var var_0 = -u_input.a.x ^ u_input.b.x;
    var var_1 = arg_1;
    var var_2 = arg_0;
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1007f);
    let var_4 = vec3<bool>(arg_0.a.x, true & arg_0.a.x, true || (var_2.a.x | var_2.e));
    return var_4.zy;
}

fn func_1() -> Struct_1 {
    return Struct_1(select(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(!all(vec4<bool>(true, true, true, true)), -29751i <= _wgslsmith_dot_vec4_i32(vec4<i32>(3440i, u_input.a.x, u_input.a.x, 1568i), vec4<i32>(u_input.b.x, -1i, u_input.a.x, u_input.a.x))), !func_4(func_2(vec4<u32>(u_input.c.x, 25017u, 4294967295u, u_input.c.x), vec2<f32>(-1535f, -881f), 1i, vec4<bool>(false, true, true, false)), Struct_3(u_input.c.x))), 2147483647i, 1f, _wgslsmith_dot_vec2_i32(vec2<i32>(-43103i, 29062i), select(_wgslsmith_add_vec2_i32(u_input.b.xz, u_input.a.zz), _wgslsmith_add_vec2_i32(~u_input.b.xy, reverseBits(u_input.b.wx)), func_2(~vec4<u32>(0u, u_input.c.x, 100763u, u_input.c.x), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-574f, 777f))), _wgslsmith_mult_i32(-43341i, u_input.b.x), vec4<bool>(false, true, true, false)).e)), (~firstTrailingBit(61772u) | min(60295u, 126431u)) > ~0u);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> vec3<u32> {
    var var_0 = Struct_3(26889u);
    var_0 = Struct_3(~select(~1u, ~_wgslsmith_mod_u32(var_0.a, 26175u), select(arg_1.a.x, 0u != var_0.a, true)));
    var var_1 = ~(~_wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.c.x, 1u), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a, 0u), countOneBits(u_input.c))));
    let var_2 = Struct_2(func_2(~firstLeadingBit(vec4<u32>(4294967295u, 0u, u_input.c.x, var_0.a)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.c, -1970f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(789f, 2526f))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 1361f) * vec2<f32>(-961f, arg_1.c)))))), func_1().d, !select(!vec4<bool>(arg_2.a.x, arg_0.a.x, false, false), select(vec4<bool>(false, false, arg_3, arg_3), vec4<bool>(true, true, arg_1.a.x, false), arg_3), true)), vec3<i32>(0i, -_wgslsmith_mod_i32(-u_input.a.x, arg_1.b), ~min(69172i, _wgslsmith_mod_i32(u_input.a.x, arg_1.b))), 4294967295u, _wgslsmith_f_op_f32(f32(-1f) * -240f));
    var var_3 = Struct_1(func_4(arg_1, Struct_3(var_2.c)), _wgslsmith_clamp_i32(arg_0.d >> (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_2.c), u_input.c) % 32u), var_2.b.x, i32(-1i) * -12226i) & ~reverseBits(42153i ^ arg_1.b), arg_0.c, func_1().b, any(select(select(select(vec3<bool>(var_2.a.e, arg_2.a.x, arg_1.a.x), vec3<bool>(arg_0.a.x, arg_2.e, var_2.a.e), vec3<bool>(false, false, var_2.a.a.x)), !vec3<bool>(arg_0.a.x, arg_2.e, true), vec3<bool>(arg_3, true, false)), select(!vec3<bool>(false, arg_3, arg_3), vec3<bool>(arg_2.a.x, true, true), select(vec3<bool>(true, arg_1.a.x, false), vec3<bool>(true, arg_3, false), vec3<bool>(arg_3, false, arg_3))), _wgslsmith_div_i32(2147483647i, arg_2.b) > -arg_1.d)));
    return _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(countOneBits(~var_2.c), ~var_2.c & 84605u, 34536u), vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(var_0.a, 5u)], vec4<u32>(25972u, var_0.a, 66956u, var_2.c)), var_0.a, 1u), select(var_0.a, var_0.a, any(vec2<bool>(false, var_2.a.a.x))), max(0u, u_input.c.x) & 1u), ~abs(select(vec3<u32>(var_2.c, 56143u, u_input.c.x), vec3<u32>(u_input.c.x, var_2.c, 1u), vec3<bool>(false, arg_1.a.x, arg_3)))), vec3<u32>(~var_2.c, 86u, u_input.c.x) | ((~vec3<u32>(29305u, 3593u, var_2.c) << ((vec3<u32>(1u, 1u, 40404u) >> (vec3<u32>(var_0.a, var_2.c, var_0.a) % vec3<u32>(32u))) % vec3<u32>(32u))) << ((vec3<u32>(38165u, 0u, 3253u) | min(vec3<u32>(4294967295u, 1838u, u_input.c.x), vec3<u32>(0u, u_input.c.x, 4294967295u))) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -_wgslsmith_add_i32(u_input.b.x, -1i);
    global1 = array<vec3<f32>, 28>();
    var var_1 = all(!vec4<bool>(false, false, all(vec4<bool>(true, false, true, false)) == true, false));
    global1 = array<vec3<f32>, 28>();
    let var_2 = select(~func_5(func_1(), func_2(global0[_wgslsmith_index_u32(u_input.c.x, 5u)], _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1171f, -2137f), vec2<f32>(-458f, 1000f), true)), 760i, vec4<bool>(true, true, true, true)), Struct_1(vec2<bool>(false, true), -1i, _wgslsmith_div_f32(241f, 465f), func_1().d, true), all(vec2<bool>(false, false))), _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_add_u32(34628u, 33617u), 4294967295u, abs(~0u)), vec3<u32>(u_input.c.x, ~(u_input.c.x ^ 0u), 1u)), !any(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), false))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-114f - 1000f), 574f)))), var_0, vec2<u32>(~_wgslsmith_mult_u32(1u, abs(4294967295u)), countOneBits(countOneBits(min(var_2.x, u_input.c.x)))), 43988u, var_2.x);
}

