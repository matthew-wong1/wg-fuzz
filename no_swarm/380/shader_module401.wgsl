struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec2<bool>) -> Struct_5 {
    let var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_div_f32(-1320f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(320f, -980f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1646f, -1399f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-640f)) * _wgslsmith_f_op_f32(round(558f))))));
    var var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)) - _wgslsmith_f_op_f32(-2415f - _wgslsmith_f_op_f32(var_0.a - var_0.a))), -1860f, var_0.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, 336f, var_0.a) + vec3<f32>(var_0.a, var_0.a, 1316f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1216f, var_0.a, -1723f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(380f, 647f, var_0.a) - vec3<f32>(-497f, var_0.a, var_0.a))))));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(1907f - _wgslsmith_f_op_f32(var_1.x + -426f)), u_input.c.x);
    var var_3 = 130f;
    var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1098f, var_0.a, 831f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), -646f, -581f), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, var_0.a, var_2.a) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, 1042f, var_2.a)))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1032f))), var_0.a, var_0.a)), !select(select(!vec3<bool>(true, false, arg_0.x), select(vec3<bool>(false, true, arg_0.x), vec3<bool>(arg_0.x, false, true), vec3<bool>(false, false, arg_0.x)), !vec3<bool>(true, arg_0.x, false)), vec3<bool>(true, var_2.b < u_input.b, -2147483647i >= var_2.b), !(!arg_0.x))));
    return Struct_5(Struct_4(Struct_2(_wgslsmith_f_op_f32(round(-1027f)), ~(i32(-1i) * -79256i))), Struct_2(var_0.a, _wgslsmith_clamp_i32(~max(var_2.b, u_input.c.x), -2147483647i, 15218i)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_5, arg_2: Struct_2) -> vec3<i32> {
    let var_0 = 1u;
    let var_1 = func_2(!vec2<bool>(true, !(u_input.a.x != u_input.a.x)));
    var var_2 = func_2(vec2<bool>(true, true));
    var_2 = Struct_5(func_2(vec2<bool>(true, true)).a, func_2(select(select(vec2<bool>(false, false), vec2<bool>(true, false), true), !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true))).b);
    var_2 = arg_1;
    return -_wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(44605i, -arg_1.a.a.b), -61658i, 3498i), _wgslsmith_sub_vec3_i32(vec3<i32>(0i, -1i, var_1.b.b), _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(arg_2.b, var_1.a.a.b, 54002i), vec3<i32>(-2147483647i, arg_1.b.b, 0i)), u_input.c)));
}

fn func_3(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_2) -> Struct_3 {
    let var_0 = Struct_4(Struct_2(1165f, _wgslsmith_dot_vec3_i32(-u_input.c, max(vec3<i32>(u_input.c.x, arg_2.b, 27777i), vec3<i32>(7834i, arg_1.x, arg_1.x)))));
    var var_1 = countOneBits(_wgslsmith_mod_vec3_u32(vec3<u32>(~(~arg_0), arg_0, firstLeadingBit(26847u)), vec3<u32>(arg_0, u_input.a.x, reverseBits(20462u))));
    var_1 = countOneBits(_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(max(u_input.a, vec3<u32>(arg_0, arg_0, 0u)), ~u_input.a), vec3<u32>(arg_0, 0u | u_input.a.x, ~var_1.x), ~u_input.a >> (_wgslsmith_mod_vec3_u32(vec3<u32>(6549u, 77374u, 8825u), vec3<u32>(arg_0, 0u, 4294967295u)) % vec3<u32>(32u)))) >> (u_input.a % vec3<u32>(32u));
    var_1 = select(select(select(~(vec3<u32>(13025u, u_input.a.x, 3291u) ^ u_input.a), ~vec3<u32>(75894u, u_input.a.x, u_input.a.x), vec3<bool>(true, true, true)), reverseBits(_wgslsmith_sub_vec3_u32(firstLeadingBit(u_input.a), countOneBits(vec3<u32>(u_input.a.x, var_1.x, 0u)))), vec3<bool>(!any(vec2<bool>(false, true)), 2147483647i != var_0.a.b, true)), u_input.a, (var_1.x != (115275u >> (0u % 32u))) || (~(arg_1.x | 20712i) < 1i));
    var_1 = _wgslsmith_mod_vec3_u32(~firstLeadingBit(_wgslsmith_clamp_vec3_u32(~u_input.a, vec3<u32>(arg_0, arg_0, 0u), reverseBits(vec3<u32>(4294967295u, var_1.x, 36673u)))), min(~(~(~u_input.a)), select(vec3<u32>(var_1.x | var_1.x, ~arg_0, 1u), u_input.a, !any(vec3<bool>(false, false, true)))));
    return Struct_3(var_0.a, select(vec4<bool>(select(false, all(vec2<bool>(true, true)), true), true, all(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), true)), all(vec3<bool>(true, true, true))), select(vec4<bool>(true, true, var_1.x >= 5117u, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true))), true), true), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1768f + 770f), _wgslsmith_div_f32(-341f, 1000f), _wgslsmith_f_op_f32(trunc(arg_2.a)), -896f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(Struct_4(Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1235f), u_input.c.x)), Struct_2(-1611f, u_input.c.x));
    let var_1 = var_0.a.a;
    var var_2 = u_input.a;
    var var_3 = false;
    var var_4 = func_3(select(_wgslsmith_mult_u32(var_2.x & 1u, u_input.a.x), abs(~_wgslsmith_dot_vec4_u32(vec4<u32>(11920u, 4294967295u, 32385u, 0u), vec4<u32>(u_input.a.x, var_2.x, 67804u, 24995u))), true), ~(~(~func_1(Struct_1(-572f), Struct_5(Struct_4(Struct_2(235f, u_input.c.x)), var_0.a.a), var_0.b))), func_2(!select(vec2<bool>(true, true), vec2<bool>(true, true), var_0.b.a <= -627f)).a.a);
    let var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(553f + 1468f));
    let var_6 = Struct_3(var_4.a, vec4<bool>(true, var_4.b.x, ~(~(-61366i)) >= _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, 1i, 0i, u_input.b), vec4<i32>(var_4.a.b, u_input.c.x, var_0.b.b, 2147483647i)), -vec4<i32>(var_4.a.b, var_1.b, -14042i, var_1.b)), all(vec3<bool>(false, true, var_4.b.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1154f, var_0.b.a, var_1.a, var_0.a.a.a), vec4<f32>(733f, var_5, 1000f, var_0.b.a)), _wgslsmith_f_op_vec4_f32(var_4.c * vec4<f32>(var_1.a, var_4.c.x, var_4.c.x, -1000f))) - var_4.c)));
    let var_7 = ~func_1(Struct_1(466f), Struct_5(Struct_4(var_0.a.a), func_2(var_4.b.zz).b), var_1).yy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(2147483647i, ~(-(~var_0.b.b))), var_6.a.b, countOneBits(var_4.a.b), u_input.c.x, vec2<f32>(281f, _wgslsmith_f_op_f32(f32(-1f) * -175f)));
}

