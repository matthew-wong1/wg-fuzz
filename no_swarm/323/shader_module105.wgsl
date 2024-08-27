struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: f32,
    d: u32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: Struct_2,
    d: vec2<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: i32,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<bool>,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 30>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec4<f32> {
    var var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(u_input.a.wyw, vec3<u32>(4294967295u << (u_input.b.x % 32u), u_input.b.x, ~_wgslsmith_dot_vec3_u32(u_input.a.xyz, u_input.a.zwz))), 30u)];
    var_0 = -1428f;
    let var_1 = !select(vec4<bool>(any(vec2<bool>(true, true)), any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false))), all(vec3<bool>(false, false, true)), false), !select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false)), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false)), true), !(all(vec4<bool>(false, true, false, false)) || true));
    let var_2 = u_input.a.x;
    var var_3 = vec2<i32>(-36497i, _wgslsmith_dot_vec4_i32(abs(~vec4<i32>(-1i, u_input.c, 21520i, -8887i)) & ~_wgslsmith_div_vec4_i32(vec4<i32>(-33460i, 2527i, -6763i, -46365i), vec4<i32>(-71784i, 40497i, 10160i, u_input.c)), vec4<i32>(35392i, _wgslsmith_add_i32(u_input.c, -2147483647i), u_input.c, u_input.c)));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-355f, 1000f, global0[_wgslsmith_index_u32(1u, 30u)], 175f))) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-248f, global0[_wgslsmith_index_u32(var_2, 30u)], -205f, 305f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(54364u, 30u)], global0[_wgslsmith_index_u32(u_input.b.x, 30u)], global0[_wgslsmith_index_u32(85751u, 30u)], -573f))))) * vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-564f * global0[_wgslsmith_index_u32(4294967295u, 30u)]), global0[_wgslsmith_index_u32(~(~10348u), 30u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(15631u, 30u)] + 178f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1809f, -642f)) - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 30u)] * _wgslsmith_f_op_f32(round(630f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -202f)))));
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_1(-8437i, _wgslsmith_f_op_vec4_f32(func_3()), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~u_input.a.x, 30u)] + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3()).x) + global0[_wgslsmith_index_u32(32718u, 30u)])), u_input.b.x, !select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec4<bool>(true, true, false, true))), false));
    global0 = array<f32, 30>();
    global0 = array<f32, 30>();
    global0 = array<f32, 30>();
    global0 = array<f32, 30>();
    return Struct_4(var_0, 0u, min(-19795i, _wgslsmith_dot_vec2_i32(-firstLeadingBit(vec2<i32>(-32175i, 56782i)), vec2<i32>(0i, u_input.c << (var_0.d % 32u)))));
}

fn func_1(arg_0: vec4<u32>) -> vec4<f32> {
    var var_0 = Struct_5(func_2(), vec2<bool>(true, true), -4652i);
    let var_1 = var_0.a.a.b.x;
    let var_2 = ~(~_wgslsmith_sub_vec4_u32(~(arg_0 >> (vec4<u32>(u_input.a.x, 0u, 17793u, var_0.a.a.d) % vec4<u32>(32u))), vec4<u32>(countOneBits(0u), var_0.a.a.d, var_0.a.a.d, arg_0.x)));
    let var_3 = Struct_2(true);
    let var_4 = vec4<i32>((_wgslsmith_mod_i32(u_input.c, 59730i) << (0u % 32u)) >> (var_2.x % 32u), var_0.c, ~_wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.c, 61280i), u_input.c), _wgslsmith_mod_i32(0i, -469i)) & max(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.a.c, u_input.c, -6088i, var_0.a.c) >> (u_input.a % vec4<u32>(32u)), select(vec4<i32>(-11787i, -6579i, u_input.c, var_0.c), vec4<i32>(u_input.c, u_input.c, u_input.c, -10437i), vec4<bool>(true, true, var_0.a.a.e.x, var_0.a.a.e.x))), select(select(vec4<i32>(1i, 2147483647i, -36204i, -1i), vec4<i32>(var_0.a.c, u_input.c, -14735i, var_0.c), false), -vec4<i32>(33552i, -6254i, 2147483647i, var_0.c), !var_0.b.x)), ~reverseBits(-vec4<i32>(-2147483647i, var_0.a.a.a, 1i, 1i)));
    return _wgslsmith_div_vec4_f32(var_0.a.a.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.a.a.c))), 498f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_0.a.a.d >> (var_2.x % 32u), 30u)] * _wgslsmith_f_op_f32(abs(var_0.a.a.c))), 229f) * var_0.a.a.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(true);
    global0 = array<f32, 30>();
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(~u_input.a)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1549f, global0[_wgslsmith_index_u32(11119u, 30u)], global0[_wgslsmith_index_u32(u_input.d.x, 30u)], global0[_wgslsmith_index_u32(1u, 30u)]) - func_2().a.b))), _wgslsmith_f_op_vec4_f32(func_3()));
    var var_2 = Struct_5(Struct_4(Struct_1(-(~u_input.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 1102f, 472f, global0[_wgslsmith_index_u32(u_input.a.x, 30u)]) * var_1)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 30u)] + _wgslsmith_f_op_f32(-var_1.x)), abs(4294967295u), vec2<bool>(any(vec3<bool>(var_0.a, false, false)), true)), _wgslsmith_dot_vec3_u32(u_input.a.yxz & u_input.a.wyx, vec3<u32>(~39165u, u_input.b.x, 56437u)), _wgslsmith_dot_vec4_i32(vec4<i32>(-u_input.c, min(0i, u_input.c), _wgslsmith_dot_vec4_i32(vec4<i32>(-34889i, u_input.c, u_input.c, 1i), vec4<i32>(6587i, -35453i, 1i, 4610i)), u_input.c), vec4<i32>(u_input.c, _wgslsmith_mult_i32(u_input.c, u_input.c), u_input.c, 1i))), vec2<bool>(all(select(vec3<bool>(var_0.a, var_0.a, var_0.a), select(vec3<bool>(false, false, var_0.a), vec3<bool>(true, false, var_0.a), vec3<bool>(false, false, true)), vec3<bool>(true, false, var_0.a))), false), u_input.c);
    var_2 = Struct_5(Struct_4(var_2.a.a, 0u, abs(_wgslsmith_mod_i32(2147483647i, min(var_2.a.a.a, u_input.c)))), var_2.b, _wgslsmith_sub_i32(-(i32(-1i) * -12930i), -_wgslsmith_sub_i32(-var_2.c, _wgslsmith_div_i32(var_2.c, -2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, ~_wgslsmith_div_vec2_u32(~abs(u_input.d.yz), ~firstLeadingBit(u_input.d.xx)), ~vec4<u32>(u_input.d.x << (5622u % 32u), u_input.b.x, abs(u_input.b.x), 28892u) >> (~min(vec4<u32>(4294967295u, 76662u, u_input.d.x, 4338u), vec4<u32>(0u, var_2.a.a.d, 0u, 27501u)) % vec4<u32>(32u)), func_2().c | var_2.c);
}

