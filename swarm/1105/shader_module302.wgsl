struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: vec3<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

var<private> global1: vec4<f32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: vec3<f32>) -> f32 {
    var var_0 = arg_1.c;
    var var_1 = 37903i >> (var_0.d % 32u);
    var_0 = arg_1.c;
    var var_2 = arg_1.c;
    var var_3 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-361f, _wgslsmith_f_op_f32(exp2(global1.x)), _wgslsmith_f_op_f32(arg_2.x + var_2.a), _wgslsmith_f_op_f32(step(arg_2.x, var_2.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, var_0.a, 145f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, arg_1.c.a, -1000f, -500f)))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.a, arg_1.c.a, -579f, var_2.a), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.a, arg_1.c.a, 1247f, 341f), vec4<f32>(arg_2.x, arg_1.c.a, 282f, var_0.a)))))), vec4<f32>(1318f, arg_2.x, -1916f, _wgslsmith_f_op_f32(round(-1000f)))));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.x - arg_1.c.a), 669f))))));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_2) -> u32 {
    var var_0 = global1.yyy;
    var var_1 = arg_1.c;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.c.a - _wgslsmith_f_op_f32(func_3(abs(u_input.b), arg_1, _wgslsmith_f_op_vec3_f32(global1.ywx * global1.yzz)))) * 2235f), !var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-935f, _wgslsmith_f_op_f32(-var_0.x))) <= _wgslsmith_div_f32(global1.x, 402f), arg_1.c.d);
    let var_3 = var_2.c;
    var var_4 = arg_1.c;
    return var_4.d;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: u32) -> u32 {
    global0 = _wgslsmith_mod_i32(arg_1.a, -arg_1.a);
    let var_0 = arg_0;
    return arg_0.d;
}

fn func_1(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = ~func_4(Struct_1(_wgslsmith_f_op_f32(1085f * 262f), !arg_0.b, !arg_0.c, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b, 16514u, arg_0.d), vec4<u32>(20433u, 23966u, u_input.b, u_input.e)), u_input.c.x)), Struct_2(-_wgslsmith_dot_vec2_i32(vec2<i32>(-19940i, 1i), vec2<i32>(-20443i, -1i)), firstLeadingBit(vec3<i32>(1i, 1i, 1i)), Struct_1(_wgslsmith_f_op_f32(min(arg_0.a, arg_0.a)), select(vec2<bool>(true, arg_0.c), arg_0.b, arg_0.b), arg_0.c, arg_0.d)), vec2<bool>(true, true), _wgslsmith_add_u32(arg_0.d, u_input.e ^ func_2(vec4<i32>(-2147483647i, 2147483647i, -5992i, -36094i), Struct_2(2147483647i, vec3<i32>(-1i, 37076i, 0i), Struct_1(-102f, vec2<bool>(arg_0.b.x, arg_0.b.x), arg_0.b.x, u_input.e)))));
    let var_1 = Struct_2(1i << (select(0u, 1u, arg_0.c) % 32u), vec3<i32>(~abs(min(-34122i, 7132i)), countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), -vec3<i32>(359i, 2147483647i, 2147483647i))), _wgslsmith_sub_i32(-2147483647i, -25796i)), arg_0);
    var var_2 = Struct_1(arg_0.a, select(select(vec2<bool>(var_1.c.c, select(false, true, var_1.c.c)), !vec2<bool>(arg_0.c, true), false), vec2<bool>(var_1.c.c && true, false), !(true | var_1.c.b.x) & all(!vec3<bool>(arg_0.c, false, true))), true, 40434u);
    global0 = var_1.a;
    let var_3 = var_1.c;
    return abs(vec4<u32>(10859u, _wgslsmith_mult_u32(max(4294967295u, var_2.d), u_input.b), 102064u, arg_0.d << (_wgslsmith_mult_u32(32203u, _wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(1u, 1u, var_1.c.d))) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~(~firstTrailingBit(vec4<u32>(73330u, 1u, 29957u, 66161u))) | func_1(Struct_1(799f, select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), true, 0u)), -vec4<i32>(~_wgslsmith_mod_i32(15923i, -11634i), ~(-4636i), -1i, max(i32(-1i) * -7581i, ~2147483647i)), select(-2935i, ~(-19307i), any(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)))), _wgslsmith_add_i32(_wgslsmith_sub_i32(49430i, -(~1i)), 0i));
}

