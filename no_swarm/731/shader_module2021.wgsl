struct Struct_1 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: bool,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 4>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec2<bool>) -> u32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(-457f + arg_0.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-930f * -1000f))), select(_wgslsmith_div_vec3_i32(u_input.b.wzw, vec3<i32>(30969i, -1i, 3231i)) << (vec3<u32>(u_input.c.x, 4294967295u, 22857u) % vec3<u32>(32u)), u_input.b.yyw & _wgslsmith_sub_vec3_i32(vec3<i32>(1i, 39415i, u_input.a.x), u_input.b.zyy), !(!vec3<bool>(arg_1.x, false, true)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), 460f)), u_input.b.xwx), Struct_1(205f, firstLeadingBit(_wgslsmith_add_vec3_i32(-vec3<i32>(-1i, u_input.b.x, u_input.b.x), u_input.b.zyy))), true, any(select(select(vec4<bool>(true, arg_1.x, false, arg_1.x), select(vec4<bool>(false, arg_1.x, true, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, true, false), vec4<bool>(false, arg_1.x, false, arg_1.x)), false), !vec4<bool>(true, arg_1.x, arg_1.x, false), select(select(vec4<bool>(true, arg_1.x, false, false), vec4<bool>(false, true, arg_1.x, true), true), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true), vec4<bool>(false, true, arg_1.x, arg_1.x)))));
    var_0 = global0[_wgslsmith_index_u32(~u_input.d, 4u)];
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1000f, var_0.b.a)), _wgslsmith_f_op_f32(select(1778f, -706f, arg_1.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.a - -305f) * var_0.c.a))), vec3<i32>(-2147483647i, 1i, -(~_wgslsmith_div_i32(-2147483647i, u_input.b.x))));
    global0 = array<Struct_2, 4>();
    var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(arg_0.x, -174f)))), _wgslsmith_f_op_f32(f32(-1f) * -1122f), true)), vec3<i32>(var_1.b.x, -52171i, (var_1.b.x << (33769u % 32u)) & -43342i)), var_1, Struct_1(arg_0.x, u_input.b.yzz), ~1u > u_input.c.x, false);
    return u_input.d;
}

fn func_2(arg_0: vec4<i32>) -> Struct_3 {
    var var_0 = false;
    var var_1 = 7690u;
    global0 = array<Struct_2, 4>();
    var var_2 = (~vec3<u32>(1u, func_3(vec3<f32>(-222f, -789f, 348f), vec2<bool>(false, true)), reverseBits(u_input.d)) << (~vec3<u32>(0u, u_input.d, u_input.c.x) % vec3<u32>(32u))) << ((vec3<u32>(_wgslsmith_dot_vec2_u32(abs(u_input.c), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(u_input.d, u_input.c.x), vec2<u32>(u_input.d, 5096u))), 21398u, _wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.c.x, 0u), 4294967295u)) ^ vec3<u32>(20804u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 1u), max(vec3<u32>(u_input.c.x, 1u, 1u), vec3<u32>(1u, u_input.d, 24693u))), _wgslsmith_dot_vec3_u32(~vec3<u32>(16701u, u_input.c.x, u_input.c.x), vec3<u32>(u_input.d, 16568u, u_input.c.x)))) % vec3<u32>(32u));
    global0 = array<Struct_2, 4>();
    return Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -671f));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: i32) -> Struct_1 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(633f, _wgslsmith_f_op_f32(923f * _wgslsmith_div_f32(321f, arg_1.a))))));
    var var_1 = false;
    var_1 = all(vec4<bool>(false, !all(vec4<bool>(true, false, false, true)), true, false));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(arg_1.a)))) - var_0.a), select(_wgslsmith_mult_vec3_i32(max(u_input.b.wzy, -arg_0.wxz), -arg_0.wzz), abs(abs(u_input.b.wxy)), true));
    var var_3 = global0[_wgslsmith_index_u32(u_input.d, 4u)];
    return var_2;
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: Struct_2) -> vec3<i32> {
    global0 = array<Struct_2, 4>();
    let var_0 = _wgslsmith_div_f32(arg_2.b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.a, -1007f)) + _wgslsmith_f_op_f32(-arg_0.a)) * -1203f)));
    global0 = array<Struct_2, 4>();
    global0 = array<Struct_2, 4>();
    let var_1 = true;
    return arg_2.b.b;
}

fn func_1(arg_0: f32) -> f32 {
    var var_0 = 23700i;
    var_0 = _wgslsmith_div_i32(~(-45439i), -reverseBits(_wgslsmith_mult_i32(-u_input.a.x, ~u_input.b.x)));
    var_0 = _wgslsmith_dot_vec4_i32(-reverseBits(u_input.b), ~(~(-u_input.b))) >> ((u_input.c.x << ((10765u & u_input.c.x) % 32u)) % 32u);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1819f)), _wgslsmith_f_op_f32(301f + arg_0)), _wgslsmith_f_op_f32(floor(arg_0))))), func_5(func_4(u_input.b, func_2(vec4<i32>(2147483647i, -61474i, 22385i, u_input.b.x)), 0i), 8669i, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(abs(0u), abs(27665u)), ~(113664u >> (u_input.c.x % 32u))), 4u)]));
    global0 = array<Struct_2, 4>();
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)) - _wgslsmith_div_f32(-601f, _wgslsmith_f_op_f32(-var_1.a))))), _wgslsmith_f_op_f32(-arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1294f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(f32(-1f) * -1011f))))));
    let var_1 = abs(u_input.d);
    global0 = array<Struct_2, 4>();
    var var_2 = vec3<f32>(-435f, func_4(vec4<i32>(u_input.b.x, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(-3168i, u_input.a.x)), -42906i), u_input.a.x, abs(9210i)), func_2(u_input.b), u_input.b.x).a, var_0.a);
    var var_3 = vec2<i32>(-26247i, 1i);
    var var_4 = -1i;
    var var_5 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1062f - _wgslsmith_f_op_f32(sign(1000f))))) * _wgslsmith_f_op_f32(-var_0.a)), -vec3<i32>(-(~(-69712i)), u_input.b.x, var_3.x));
    var var_6 = vec2<bool>(!all(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), vec3<bool>(true, false, false))), true);
    let x = u_input.a;
    s_output = StorageBuffer(select(var_5.b.x, ~(~(-40299i)), var_6.x), _wgslsmith_mod_i32(-9204i, func_4(_wgslsmith_div_vec4_i32(u_input.b, u_input.b), Struct_3(_wgslsmith_f_op_f32(543f + var_5.a)), _wgslsmith_sub_i32(~49816i, -u_input.b.x)).b.x));
}

