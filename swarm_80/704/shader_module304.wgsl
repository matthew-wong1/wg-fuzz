struct Struct_1 {
    a: vec3<f32>,
    b: u32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
    b: i32,
    c: f32,
    d: vec3<bool>,
}

struct Struct_5 {
    a: vec3<bool>,
    b: u32,
    c: vec3<i32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: f32,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2() -> vec2<i32> {
    return ~vec2<i32>(~(~(-2147483647i)) | u_input.b, u_input.b);
}

fn func_3(arg_0: Struct_3) -> Struct_4 {
    var var_0 = u_input.e;
    let var_1 = u_input.b;
    let var_2 = Struct_4(max(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_0.c.a, 0u), vec3<u32>(u_input.a.x, arg_0.c.a, 94345u)), ~4294967295u, 1u), ~(~vec3<u32>(u_input.c.x, u_input.e, 0u))) | ~(vec3<u32>(u_input.a.x, u_input.a.x, 1u) & max(vec3<u32>(arg_0.c.a, 43518u, arg_0.c.a), vec3<u32>(1u, 0u, 53039u))), -1i, _wgslsmith_f_op_f32(select(-1909f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1021f), -2398f)))), true)), vec3<bool>(true, select(any(vec3<bool>(true, true, false)) && false, ~arg_0.c.a == arg_0.c.a, all(vec2<bool>(false, false))), ~(arg_0.b.x << (arg_0.c.a % 32u)) < -var_1));
    var var_3 = select(vec4<bool>(all(var_2.d), !any(var_2.d), all(!select(vec4<bool>(false, true, var_2.d.x, var_2.d.x), vec4<bool>(false, false, false, var_2.d.x), var_2.d.x)), true), vec4<bool>(var_2.d.x, true, true, var_2.b != max(arg_0.b.x, -2804i >> (arg_0.c.a % 32u))), vec4<bool>(select(true, true, all(select(var_2.d, vec3<bool>(var_2.d.x, true, false), true))), all(vec2<bool>(var_2.d.x, true)), select(!var_2.d.x, all(vec4<bool>(var_2.d.x, true, var_2.d.x, var_2.d.x)), any(var_2.d)) && var_2.d.x, all(!(!var_2.d.yz))));
    var var_4 = _wgslsmith_f_op_f32(-var_2.c);
    return Struct_4(var_2.a, -_wgslsmith_add_i32(_wgslsmith_sub_i32(var_1, arg_0.b.x), countOneBits(u_input.b)) & ~(-_wgslsmith_div_i32(var_1, var_2.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2.c))), select(vec3<bool>(var_2.d.x, var_3.x, true), var_3.zyx, vec3<bool>(!(true == var_2.d.x), all(select(vec3<bool>(true, var_3.x, var_3.x), vec3<bool>(true, var_3.x, var_3.x), var_2.d)), var_3.x)));
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: bool) -> bool {
    var var_0 = func_3(Struct_3(~firstLeadingBit(vec2<i32>(arg_1, -1i) << (vec2<u32>(u_input.e, 4294967295u) % vec2<u32>(32u))), func_2(), Struct_2(~_wgslsmith_dot_vec3_u32(vec3<u32>(21262u, u_input.e, arg_0.a), vec3<u32>(30166u, 1u, u_input.e)))));
    var_0 = Struct_4(func_3(Struct_3(-_wgslsmith_mult_vec2_i32(vec2<i32>(34644i, 0i), vec2<i32>(-22017i, 24271i)), vec2<i32>(arg_1, u_input.b), arg_0)).a, -1i, _wgslsmith_f_op_f32(-408f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1020f * var_0.c) + _wgslsmith_f_op_f32(-var_0.c)) * _wgslsmith_f_op_f32(var_0.c + 1485f))), vec3<bool>(true, (arg_1 | arg_1) < u_input.b, var_0.d.x));
    var_0 = Struct_4(vec3<u32>(_wgslsmith_mod_u32(14603u, 3575u), var_0.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(8352u, var_0.a.x), ~u_input.e, _wgslsmith_div_u32(var_0.a.x, arg_0.a)), vec3<u32>(func_3(Struct_3(vec2<i32>(54848i, 48986i), vec2<i32>(arg_1, 42385i), Struct_2(1u))).a.x, 1u, ~arg_0.a))), 1i & _wgslsmith_mod_i32(arg_1 & countOneBits(arg_1), ~_wgslsmith_add_i32(arg_1, u_input.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-809f, _wgslsmith_f_op_f32(trunc(var_0.c))))), -994f), vec3<bool>(true, !(!select(false, var_0.d.x, true)), false));
    return !arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(!vec2<bool>(func_1(Struct_2(31466u), u_input.b, true), true), vec2<bool>(59633u <= u_input.e, _wgslsmith_mod_i32(u_input.b, u_input.b) >= _wgslsmith_mult_i32(0i, 2147483647i)), !vec2<bool>(u_input.e != 4294967295u, 0u >= u_input.d));
    var var_1 = !(all(func_3(Struct_3(vec2<i32>(-41260i, u_input.b), vec2<i32>(-45722i, u_input.b), Struct_2(u_input.a.x))).d) & true);
    var var_2 = Struct_2(32102u);
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(924f * -968f))) - -1068f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-517f - 1469f), _wgslsmith_f_op_f32(-200f - 446f))))));
    var var_4 = -firstLeadingBit(-u_input.b | ~firstLeadingBit(u_input.b));
    let var_5 = func_3(Struct_3(abs(~vec2<i32>(u_input.b, -15137i) & vec2<i32>(u_input.b, 1i)), vec2<i32>(-(~55916i), 34722i), Struct_2(4294967295u))).c;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_5, 1347f, -205f, 675f), vec4<f32>(var_5, var_5, 2635f, 1000f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1060f, -1000f, 758f, var_5) + vec4<f32>(-1000f, var_5, var_5, var_3.x)))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1787f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x * var_5))) - _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-424f + 110f) - _wgslsmith_f_op_f32(-1591f * -926f)))), u_input.c, _wgslsmith_f_op_f32(-var_3.x));
}

