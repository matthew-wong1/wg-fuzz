struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: bool,
    d: u32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 9> = array<vec4<i32>, 9>(vec4<i32>(i32(-2147483648), 11459i, 1i, 1i), vec4<i32>(-85165i, 1i, 2147483647i, -21069i), vec4<i32>(-16403i, 2147483647i, 2147483647i, 9983i), vec4<i32>(2147483647i, 1i, 6675i, 2147483647i), vec4<i32>(31101i, -8906i, i32(-2147483648), 1i), vec4<i32>(-1i, -59585i, 11721i, -22410i), vec4<i32>(48900i, -58476i, i32(-2147483648), 43584i), vec4<i32>(1i, 2147483647i, -93573i, 2147483647i), vec4<i32>(0i, -1i, -1i, 11435i));

var<private> global1: vec3<i32>;

var<private> global2: i32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    let var_0 = u_input.a;
    global0 = array<vec4<i32>, 9>();
    var var_1 = vec3<u32>(_wgslsmith_sub_u32(firstTrailingBit(_wgslsmith_mult_u32(4294967295u, u_input.c)), _wgslsmith_sub_u32(~u_input.c, min(1u, 0u))) << (0u % 32u), 4294967295u & u_input.c, _wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.c, u_input.c << (u_input.c % 32u)), _wgslsmith_sub_u32(60906u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.c, u_input.c, u_input.c), select(vec4<u32>(10808u, 105151u, u_input.c, u_input.c), vec4<u32>(u_input.c, u_input.c, u_input.c, 41715u), vec4<bool>(false, false, true, false))))));
    var var_2 = Struct_1(-575f);
    let var_3 = u_input.a;
    return 352f;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2) -> i32 {
    global2 = -1i;
    global1 = u_input.b;
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1745f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-504f + arg_0.a)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.b)))) - 1000f));
    let var_1 = ~u_input.c;
    global2 = firstTrailingBit(global1.x << (arg_1.d % 32u));
    return ~_wgslsmith_clamp_i32(arg_1.a, global1.x, -94324i);
}

fn func_1() -> bool {
    global2 = max(i32(-1i) * -50438i, ~(i32(-1i) * -1i));
    let var_0 = countOneBits(u_input.c);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -2099f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(556f + 1056f) + _wgslsmith_div_f32(657f, -965f)))), _wgslsmith_f_op_f32(f32(-1f) * -1702f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(355f - -835f))))));
    global1 = abs(min(vec3<i32>(_wgslsmith_mod_i32(select(u_input.d, -2147483647i, true), global1.x), func_2(Struct_1(var_1.x), Struct_2(global1.x, -575f, true, var_0, vec4<f32>(var_1.x, 761f, var_1.x, 778f))), 39303i), _wgslsmith_clamp_vec3_i32(u_input.b, _wgslsmith_div_vec3_i32(vec3<i32>(0i, global1.x, u_input.a), vec3<i32>(2147483647i, u_input.b.x, global1.x)), min(abs(vec3<i32>(-1i, -2147483647i, u_input.b.x)), u_input.b))));
    global2 = 2147483647i;
    return !(var_1.x <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * -1392f) - -175f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_div_f32(1594f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 622f) * _wgslsmith_f_op_f32(trunc(-1776f)))));
    var var_1 = select(vec3<bool>(4294967295u < (select(1u, 4294967295u, true) & ~u_input.c), select(true, true, false), all(vec3<bool>(any(vec2<bool>(false, false)), true, 45755i < u_input.d))), !select(vec3<bool>(u_input.c != u_input.c, false, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), true), func_1());
    var var_2 = Struct_2(-countOneBits(1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-580f, var_0.a) + _wgslsmith_f_op_f32(var_0.a - -417f)))), var_0.a > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)), u_input.c, vec4<f32>(1396f, _wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -317f))), -170f));
    global2 = 16440i;
    let var_3 = !(!var_2.c);
    let var_4 = ~var_2.d;
    var var_5 = -207f;
    var var_6 = Struct_1(186f);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b);
}

