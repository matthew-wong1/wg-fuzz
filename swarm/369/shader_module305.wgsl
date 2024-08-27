struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec4<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: vec3<f32>,
    d: Struct_2,
    e: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec4<f32>(-2621f, -663f, 173f, 618f)), 2147483647i, Struct_1(vec4<f32>(1082f, 170f, -895f, 1321f)), Struct_1(vec4<f32>(1330f, -426f, -895f, 619f)), Struct_1(vec4<f32>(-996f, -729f, -347f, 2044f)));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> f32 {
    var var_0 = Struct_4(abs(-abs(_wgslsmith_div_i32(u_input.c.x, u_input.c.x))), Struct_3(Struct_2(Struct_1(global1.e.a), 0i, global1.d, global1.d, Struct_1(global1.d.a)), min(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, global1.b), _wgslsmith_clamp_vec2_i32(vec2<i32>(0i, 48331i), vec2<i32>(-36803i, u_input.c.x), u_input.c))), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), true), Struct_1(_wgslsmith_div_vec4_f32(global1.d.a, _wgslsmith_f_op_vec4_f32(global1.a.a + global1.d.a))), Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.c.a.x, global0.x, global1.a.a.x, 152f), global1.d.a, true)), _wgslsmith_f_op_vec4_f32(ceil(global1.e.a)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(1039f, global1.d.a.x, global1.a.a.x) * _wgslsmith_div_vec3_f32(vec3<f32>(856f, global1.c.a.x, global0.x), vec3<f32>(-1239f, global1.d.a.x, global1.d.a.x))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.x, global1.c.a.x, global0.x))) - global1.a.a.zxw)), Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(round(-1057f)), _wgslsmith_f_op_f32(step(global0.x, global1.e.a.x)), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(global1.a.a.x * 1898f))), u_input.c.x, Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2073f, global0.x, global0.x, 1592f))), global1.a, global1.e), _wgslsmith_mult_u32(~(~u_input.a.x), u_input.a.x));
    return global0.x;
}

fn func_2(arg_0: Struct_3) -> Struct_1 {
    let var_0 = Struct_5(arg_0, vec2<bool>(!(!(!arg_0.c.x)), arg_0.c.x));
    let var_1 = Struct_1(arg_0.d.a);
    global1 = arg_0.a;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(func_3()), 1115f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-855f, -666f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(821f, var_0.a.e.a.x) - vec2<f32>(arg_0.d.a.x, -1351f)) * global0.xx)))));
    let var_3 = vec4<u32>(u_input.b << ((~firstLeadingBit(u_input.b) ^ ~abs(17560u)) % 32u), _wgslsmith_dot_vec4_u32(abs(select(vec4<u32>(4294967295u, 33916u, u_input.a.x, u_input.a.x), ~vec4<u32>(10316u, u_input.b, 1u, 0u), true)), vec4<u32>(~45u, ~(~u_input.a.x), countOneBits(u_input.b), _wgslsmith_sub_u32(u_input.b, u_input.b) | ~u_input.b)), _wgslsmith_sub_u32(24739u, _wgslsmith_div_u32(firstLeadingBit(u_input.a.x), u_input.b)), firstLeadingBit(0u) << (u_input.b % 32u));
    return var_0.a.e;
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_5, arg_2: bool, arg_3: vec3<u32>) -> i32 {
    global1 = Struct_2(arg_1.a.a.d, global1.b, global1.d, func_2(Struct_3(arg_1.a.a, -28319i, select(select(vec4<bool>(arg_2, arg_2, arg_2, true), arg_1.a.c, arg_2), arg_1.a.c, !vec4<bool>(arg_1.b.x, arg_1.a.c.x, true, false)), arg_1.a.d, arg_1.a.a.e)), func_2(arg_1.a));
    let var_0 = 4294967295u < arg_3.x;
    var var_1 = all(arg_1.a.c.yxw);
    let var_2 = global0.xw;
    global1 = arg_1.a.a;
    return 3383i;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, _wgslsmith_div_i32(_wgslsmith_div_i32(6865i, -(~(-15331i))), abs(u_input.c.x)), global1.b, vec3<i32>(func_1(~vec2<u32>(32308u, u_input.a.x), Struct_5(Struct_3(Struct_2(global1.c, -33745i, Struct_1(vec4<f32>(global0.x, 757f, global1.d.a.x, -660f)), global1.c, global1.c), -2147483647i, vec4<bool>(true, true, true, true), Struct_1(vec4<f32>(-297f, 572f, global1.a.a.x, global0.x)), Struct_1(vec4<f32>(global0.x, -1428f, 519f, 1637f))), vec2<bool>(true, true)), true, ~vec3<u32>(16751u, u_input.b, u_input.b)) & u_input.c.x, firstLeadingBit(_wgslsmith_sub_i32(0i, -13397i >> (u_input.b % 32u))), _wgslsmith_clamp_i32(u_input.c.x, global1.b, -(~global1.b))));
}

