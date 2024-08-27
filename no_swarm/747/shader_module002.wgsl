struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec3<i32>,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
    c: vec3<f32>,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: u32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(115f, vec2<u32>(56458u, 4294967295u), vec3<f32>(821f, 291f, 179f), -152f), Struct_2(603f, vec2<u32>(0u, 0u), vec3<f32>(-594f, 198f, -1550f), -1000f), 25237u, vec4<bool>(true, true, false, false));

var<private> global1: bool = true;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32) -> f32 {
    let var_0 = _wgslsmith_add_i32(reverseBits(u_input.c.x), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(u_input.c.wx, vec2<i32>(-1i, 41317i)), firstLeadingBit(-u_input.c.x))) > 1i;
    let var_1 = _wgslsmith_f_op_f32(-1309f + 531f);
    global0 = Struct_3(Struct_2(_wgslsmith_f_op_f32(step(global0.b.c.x, 181f)), global0.b.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(-889f)), _wgslsmith_f_op_f32(global0.b.a - -2073f), _wgslsmith_f_op_f32(round(-437f))) * global0.a.c), global0.b.d), global0.a, (select(_wgslsmith_dot_vec2_u32(global0.b.b, vec2<u32>(global0.a.b.x, arg_0)), 1u, true && var_0) >> (_wgslsmith_add_u32(0u >> (arg_0 % 32u), u_input.a) % 32u)) | ~abs(abs(0u)), vec4<bool>(true, all(global0.d.wyz), all(global0.d), true));
    global1 = false;
    global0 = Struct_3(global0.b, global0.b, arg_0, !(!select(select(global0.d, vec4<bool>(global0.d.x, global0.d.x, false, false), var_0), global0.d, false)));
    return var_1;
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> f32 {
    let var_0 = arg_0.d;
    let var_1 = Struct_3(global0.b, global0.a, u_input.a, vec4<bool>((_wgslsmith_f_op_f32(-global0.b.c.x) <= -915f) & !any(vec4<bool>(true, arg_0.a.x, global0.d.x, false)), any(vec2<bool>(true, arg_0.d)), any(select(arg_0.a, vec2<bool>(true, true), !global0.d.ww)), var_0));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(func_3(67059u)), ~global0.b.b, _wgslsmith_f_op_vec3_f32(step(var_1.b.c, _wgslsmith_div_vec3_f32(global0.b.c, global0.b.c))), 1020f);
    global0 = Struct_3(Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -849f), var_1.a.b, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.b.d, -332f, 2317f), var_2.c, global0.d.x)), vec3<f32>(global0.b.c.x, -949f, -2428f)), var_1.b.c)), _wgslsmith_f_op_f32(step(1170f, var_2.a))), var_1.a, ~var_1.c, !vec4<bool>(all(global0.d.yzy), any(global0.d), !(global0.c == global0.b.b.x), !(!arg_0.d)));
    let var_3 = ~(~(~vec4<u32>(0u, 57260u, var_2.b.x, u_input.a) >> (~(~vec4<u32>(arg_1, 25672u, var_1.c, u_input.a)) % vec4<u32>(32u))));
    return 305f;
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: vec2<i32>) -> vec2<f32> {
    var var_0 = arg_0.c.x;
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1349f), arg_0.a, _wgslsmith_f_op_f32(542f + arg_0.d)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(global0.a.c, arg_0.c))));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_1(global0.d.yx, 1i, u_input.c.xyx, global0.d.x), countOneBits(0u))) + _wgslsmith_f_op_f32(-arg_0.a))), ~vec2<u32>(~(~u_input.a), u_input.a), vec3<f32>(_wgslsmith_f_op_f32(select(arg_0.a, _wgslsmith_f_op_f32(trunc(var_1.x)), global0.d.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(u_input.a)) * var_1.x), 487f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.d, arg_0.a)))), arg_0.d);
    var var_3 = ~(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(~26093u, global0.b.b.x), ~_wgslsmith_mod_u32(var_2.b.x, global0.b.b.x), global0.b.b.x) ^ (0u | _wgslsmith_dot_vec2_u32(var_2.b, var_2.b)));
    return vec2<f32>(_wgslsmith_div_f32(181f, _wgslsmith_f_op_f32(func_2(Struct_1(global0.d.xy, u_input.c.x, reverseBits(vec3<i32>(-1i, arg_2.x, -34577i)), global0.a.a > -1000f), _wgslsmith_dot_vec4_u32(~vec4<u32>(var_2.b.x, global0.c, var_2.b.x, arg_0.b.x), ~vec4<u32>(global0.c, 5800u, global0.c, arg_0.b.x))))), 1321f);
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec2<bool>) -> Struct_3 {
    var var_0 = Struct_3(Struct_2(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1270f * global0.a.c.x) - _wgslsmith_f_op_f32(global0.b.a + -301f))), vec2<u32>(u_input.a, u_input.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a, _wgslsmith_f_op_f32(arg_1.c.x + arg_0.x), _wgslsmith_f_op_f32(-arg_0.x))), global0.b.c.x), Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-1325f, _wgslsmith_f_op_f32(min(639f, 1054f)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(113632u))))), ~_wgslsmith_add_vec2_u32(~vec2<u32>(40340u, global0.a.b.x), ~vec2<u32>(u_input.a, 67759u)), global0.b.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -574f))), arg_1.b.x, select(global0.d, select(!(!vec4<bool>(global0.d.x, arg_2.x, false, true)), select(select(vec4<bool>(true, arg_2.x, arg_2.x, false), vec4<bool>(false, true, arg_2.x, arg_2.x), vec4<bool>(false, true, false, false)), select(vec4<bool>(global0.d.x, arg_2.x, arg_2.x, global0.d.x), global0.d, vec4<bool>(arg_2.x, true, false, true)), arg_2.x & arg_2.x), !(!vec4<bool>(false, false, global0.d.x, true))), global0.d.x));
    let var_1 = Struct_3(Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * -488f))), select(global0.b.b, _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 9051u), vec2<u32>(u_input.a, 1094u)) << (~vec2<u32>(0u, global0.b.b.x) % vec2<u32>(32u)), select(!var_0.d.xz, select(vec2<bool>(var_0.d.x, global0.d.x), vec2<bool>(true, true), vec2<bool>(var_0.d.x, var_0.d.x)), select(arg_2, var_0.d.wx, arg_2.x))), var_0.a.c, _wgslsmith_f_op_f32(f32(-1f) * -334f)), global0.a, var_0.b.b.x, vec4<bool>(all(!select(var_0.d, vec4<bool>(true, true, arg_2.x, false), var_0.d)), all(vec2<bool>(global0.d.x, arg_2.x)), global0.d.x, !arg_2.x));
    global0 = Struct_3(var_0.b, Struct_2(global0.b.d, vec2<u32>(arg_1.b.x, arg_1.b.x) << (~global0.b.b % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(-arg_1.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.b.c.x * arg_1.a))))), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, max(_wgslsmith_mod_u32(global0.b.b.x, 32250u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.c, 1u, 1u), vec3<u32>(arg_1.b.x, 59749u, var_1.c))), arg_1.b.x, _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(arg_1.b.x, var_1.b.b.x, var_0.b.b.x, arg_1.b.x)), ~vec4<u32>(34345u, 27001u, var_0.a.b.x, 1u))), ~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1u, global0.c, var_1.c), vec4<u32>(67107u, global0.a.b.x, 1u, u_input.a)), _wgslsmith_sub_u32(1u, arg_1.b.x), max(1u, 4294967295u), ~28865u)), vec4<bool>(all(select(vec4<bool>(true, arg_2.x, false, arg_2.x), vec4<bool>(var_1.d.x, arg_2.x, var_0.d.x, global0.d.x), vec4<bool>(var_0.d.x, true, true, false))), true, var_1.d.x, true));
    var var_2 = u_input.b;
    var_0 = Struct_3(arg_1, Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1475f, _wgslsmith_f_op_f32(-arg_0.x))), 406f), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.c, 1u, global0.b.b.x, 82841u), vec4<u32>(var_0.a.b.x, 1u, global0.c, u_input.a)) >> (4294967295u % 32u), ~(50611u << (1u % 32u))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1156f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.b.d)) + _wgslsmith_f_op_f32(f32(-1f) * -1338f)), 981f), _wgslsmith_f_op_f32(min(-273f, _wgslsmith_f_op_f32(select(536f, global0.a.a, var_0.d.x))))), _wgslsmith_mod_u32(~var_1.b.b.x, arg_1.b.x), !vec4<bool>(true, true, (var_1.a.c.x < -1243f) && (var_1.d.x || global0.d.x), !(!arg_2.x)));
    return Struct_3(Struct_2(2089f, ~vec2<u32>(1u, u_input.a), arg_1.c, global0.a.d), var_1.a, firstLeadingBit(~_wgslsmith_div_u32(min(0u, var_1.c), min(37395u, 13886u))), !vec4<bool>(true, all(global0.d), var_1.d.x, !global0.d.x));
}

fn func_5(arg_0: Struct_3, arg_1: i32) -> vec4<u32> {
    var var_0 = Struct_2(arg_0.a.c.x, global0.a.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.c.x, -1000f, arg_0.b.a) * global0.a.c))), arg_0.a.c, any(global0.d.xyw)))), -898f);
    let var_1 = arg_0;
    global1 = global0.d.x;
    global1 = false;
    global1 = arg_0.c >= ~(~abs(19588u >> (var_0.b.x % 32u)));
    return select(countOneBits(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, 1u, arg_0.b.b.x, u_input.a), vec4<u32>(24314u, u_input.a, 1u, var_0.b.x), vec4<u32>(37763u, 11572u, 7262u, global0.b.b.x) & vec4<u32>(4294967295u, 13111u, global0.c, 1u))), (select(max(vec4<u32>(arg_0.c, 14623u, var_1.b.b.x, 14091u), vec4<u32>(114449u, var_0.b.x, 65490u, 0u)), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.b.x, 0u, 1u, u_input.a), vec4<u32>(31402u, 79820u, u_input.a, 4294967295u)), arg_0.d) | ~vec4<u32>(global0.c, 104364u, 54767u, var_0.b.x)) & select(_wgslsmith_mult_vec4_u32(~vec4<u32>(global0.c, arg_0.a.b.x, 4294967295u, u_input.a), ~vec4<u32>(global0.b.b.x, 1u, var_0.b.x, var_0.b.x)), reverseBits(abs(vec4<u32>(global0.b.b.x, 22656u, 1u, 47767u))), vec4<bool>(global0.d.x && arg_0.d.x, true, var_1.d.x, all(var_1.d))), select(vec4<bool>(arg_0.d.x, !(!global0.d.x), true, arg_0.d.x), func_4(global0.a.c.yz, Struct_2(_wgslsmith_f_op_vec2_f32(func_1(arg_0.a, global0.d.x, u_input.c.yz)).x, ~vec2<u32>(u_input.a, 50885u), var_1.b.c, _wgslsmith_f_op_f32(1410f + 264f)), vec2<bool>(var_1.d.x, true)).d, vec4<bool>(false, var_1.d.x, var_1.b.d < _wgslsmith_f_op_f32(abs(-2106f)), arg_0.d.x && true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec4_u32(func_5(func_4(_wgslsmith_f_op_vec2_f32(func_1(global0.b, global0.d.x == false, vec2<i32>(u_input.c.x, 13052i))), global0.b, !global0.d.xy), 2147483647i), ~vec4<u32>(u_input.a, _wgslsmith_mult_u32(~10045u, max(1u, 1u)), ~func_4(vec2<f32>(-172f, -2100f), Struct_2(-1000f, vec2<u32>(global0.c, global0.c), vec3<f32>(global0.a.a, 949f, global0.a.d), global0.b.a), global0.d.ww).b.b.x, abs(func_4(vec2<f32>(global0.a.d, -2046f), global0.b, global0.d.xy).a.b.x)));
    var var_1 = -(~u_input.c.x);
    var var_2 = func_4(_wgslsmith_f_op_vec2_f32(ceil(global0.b.c.zy)), Struct_2(_wgslsmith_f_op_f32(global0.b.a - _wgslsmith_f_op_f32(-global0.a.a)), vec2<u32>(111338u, var_0.x), global0.b.c, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.a.d))), 1404f))), vec2<bool>(true, !global0.d.x));
    let var_3 = any(!(!global0.d.wwy));
    let var_4 = var_2.d.x;
    var var_5 = -max(min(1i, ~u_input.c.x) & u_input.c.x, -2012i);
    let var_6 = _wgslsmith_add_vec3_i32(countOneBits(_wgslsmith_mult_vec3_i32(min(u_input.c.wwz, u_input.c.yyx), u_input.c.zzx)), countOneBits(u_input.c.xzw ^ vec3<i32>(1i, -47638i, 15409i)) >> (vec3<u32>(_wgslsmith_mult_u32(var_2.c, global0.a.b.x), var_0.x, countOneBits(var_2.a.b.x)) % vec3<u32>(32u))) >> (min(reverseBits(var_0.www), ~vec3<u32>(var_2.a.b.x ^ global0.a.b.x, var_2.b.b.x & var_2.a.b.x, 4294967295u)) % vec3<u32>(32u));
    var_5 = _wgslsmith_add_i32(var_6.x, countOneBits(~u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~(vec2<u32>(85685u, var_0.x) >> (vec2<u32>(global0.b.b.x, 27462u) % vec2<u32>(32u))), var_2.b.b), abs(global0.a.b)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1310f, global0.a.a, 1625f, var_2.a.c.x) * vec4<f32>(-581f, global0.a.c.x, -563f, global0.a.d))))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1308f), -121f, -247f, var_2.b.a))), false)));
}

