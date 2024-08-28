struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_3 {
    a: bool,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 9> = array<vec4<bool>, 9>(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<u32>, arg_2: u32) -> i32 {
    let var_0 = Struct_3(all(select(vec3<bool>(false, true, all(vec3<bool>(true, false, false))), vec3<bool>(false, all(vec3<bool>(true, false, false)), all(vec3<bool>(false, true, true))), true)), u_input.b.zyw);
    global0 = array<vec4<bool>, 9>();
    var var_1 = countOneBits(~(~_wgslsmith_div_vec3_i32(~vec3<i32>(48087i, 796i, 2147483647i), -vec3<i32>(1i, -2147483647i, 8457i))));
    let var_2 = all(!select(select(select(vec3<bool>(true, var_0.a, true), vec3<bool>(true, var_0.a, false), vec3<bool>(var_0.a, var_0.a, var_0.a)), !vec3<bool>(true, var_0.a, false), !vec3<bool>(var_0.a, var_0.a, false)), select(select(vec3<bool>(false, false, true), vec3<bool>(var_0.a, true, var_0.a), false), !vec3<bool>(false, var_0.a, var_0.a), select(vec3<bool>(false, true, var_0.a), vec3<bool>(false, var_0.a, var_0.a), vec3<bool>(true, true, false))), !(!vec3<bool>(true, var_0.a, var_0.a))));
    var var_3 = Struct_1(vec2<bool>(all(select(vec3<bool>(false, var_0.a, false), !vec3<bool>(var_0.a, false, var_0.a), select(vec3<bool>(false, var_0.a, true), vec3<bool>(true, true, var_2), false))), !any(vec3<bool>(false, false, false))), var_0.a, _wgslsmith_f_op_f32(arg_0.x - 321f), var_1.x);
    return _wgslsmith_mult_i32(firstLeadingBit(_wgslsmith_div_i32(21801i, reverseBits(var_1.x))), max(0i, var_1.x)) << (1u % 32u);
}

fn func_2(arg_0: i32) -> Struct_3 {
    let var_0 = -1206f;
    global0 = array<vec4<bool>, 9>();
    global0 = array<vec4<bool>, 9>();
    var var_1 = Struct_2(vec2<bool>(true, true | all(vec3<bool>(true, true, true))), var_0);
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(-386f + var_1.b)), 1000f, 796f));
    return Struct_3(2147483647i < ~(func_3(vec3<f32>(-992f, 253f, 141f), u_input.b, u_input.b.x) << (u_input.a.x % 32u)), ~u_input.a);
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: Struct_3) -> bool {
    let var_0 = Struct_1(!(!select(!vec2<bool>(arg_1.a, true), !vec2<bool>(true, arg_2.a), vec2<bool>(true, true))), true, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2013f + -1485f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1191f + -253f) - _wgslsmith_f_op_f32(floor(-1882f))), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-696f * 200f)))), arg_2.a)), -28348i << (min(~u_input.b.x, u_input.a.x) % 32u));
    var var_1 = vec2<bool>(arg_2.a, any(!(!(!var_0.a))));
    var_1 = var_0.a;
    var var_2 = vec4<u32>(_wgslsmith_add_u32(29985u, u_input.b.x), u_input.a.x, firstLeadingBit(_wgslsmith_mult_u32(~51113u, _wgslsmith_sub_u32(arg_2.b.x, arg_1.b.x) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.b.x, 13377u, arg_0, u_input.a.x), vec4<u32>(0u, 35836u, 0u, 4294967295u)) % 32u))), 1u);
    var var_3 = Struct_2(!(!select(vec2<bool>(false, false), vec2<bool>(arg_1.a, arg_2.a), vec2<bool>(false, var_0.a.x))), _wgslsmith_f_op_f32(-var_0.c));
    return all(vec2<bool>(any(!var_0.a), !var_0.b));
}

fn func_1(arg_0: Struct_2) -> bool {
    let var_0 = arg_0.b;
    global0 = array<vec4<bool>, 9>();
    global0 = array<vec4<bool>, 9>();
    var var_1 = -56423i;
    var_1 = 0i;
    return func_4(_wgslsmith_add_u32(~4294967295u, select(~u_input.a.x, max(u_input.a.x, 6701u >> (u_input.a.x % 32u)), arg_0.a.x)), func_2(-(~2147483647i)), Struct_3(arg_0.a.x & true, u_input.b.zzx));
}

fn func_5(arg_0: bool) -> Struct_3 {
    return func_2(_wgslsmith_mod_i32(~_wgslsmith_dot_vec2_i32(~vec2<i32>(27688i, 0i), -vec2<i32>(0i, 63719i)), 1i));
}

fn func_6(arg_0: Struct_3, arg_1: f32, arg_2: Struct_2) -> Struct_2 {
    let var_0 = Struct_2(arg_2.a, arg_1);
    var var_1 = reverseBits(u_input.b.wzw);
    global0 = array<vec4<bool>, 9>();
    var_1 = vec3<u32>(23036u, arg_0.b.x, 1u);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(!func_1(Struct_2(vec2<bool>(false, true), -114f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-1101f)), _wgslsmith_f_op_f32(f32(-1f) * -115f)))), -248f), Struct_2(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), _wgslsmith_f_op_f32(min(1520f, _wgslsmith_f_op_f32(-976f * _wgslsmith_f_op_f32(f32(-1f) * -2007f))))));
    let var_1 = Struct_1(var_0.a, abs(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(u_input.a.x, u_input.a.x)) >> (4294967295u % 32u)) == 70704u, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b - var_0.b)) - -1130f))), 2147483647i);
    let var_2 = Struct_3(any(select(vec2<bool>(var_1.a.x & false, var_1.a.x), select(select(vec2<bool>(var_1.a.x, var_0.a.x), vec2<bool>(var_1.a.x, var_1.a.x), var_1.b), !vec2<bool>(var_0.a.x, false), any(var_0.a)), var_0.a.x)), u_input.a);
    let var_3 = func_6(Struct_3(!var_0.a.x, var_2.b), var_0.b, var_0);
    global0 = array<vec4<bool>, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.x, abs(~vec3<u32>(~1u, firstLeadingBit(u_input.b.x), ~0u)));
}

