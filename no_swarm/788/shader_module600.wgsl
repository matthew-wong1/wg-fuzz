struct Struct_1 {
    a: bool,
    b: bool,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: bool,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 17>;

var<private> global1: vec2<bool>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec2<u32>, arg_3: Struct_1) -> u32 {
    let var_0 = !(!(!select(!vec4<bool>(true, false, false, global1.x), select(vec4<bool>(true, true, true, false), vec4<bool>(false, arg_3.a, arg_0.b, false), vec4<bool>(arg_0.a, arg_0.a, arg_3.b, true)), true)));
    let var_1 = vec3<u32>(~1u, 37112u, ~(~select(arg_2.x, arg_2.x, arg_3.a) << (0u % 32u)));
    global0 = array<Struct_2, 17>();
    global1 = var_0.wz;
    var var_2 = global0[_wgslsmith_index_u32(select(~_wgslsmith_mod_u32(~firstLeadingBit(var_1.x), (0u << (1u % 32u)) & var_1.x), _wgslsmith_mod_u32(~var_1.x, u_input.a), !global1.x), 17u)];
    return var_2.a.x;
}

fn func_2(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.b, u_input.a), _wgslsmith_mod_u32(u_input.a, u_input.b)) << ((func_3(arg_0, _wgslsmith_f_op_vec3_f32(vec3<f32>(-850f, -633f, 1482f) * _wgslsmith_div_vec3_f32(vec3<f32>(-1164f, -1570f, -1650f), vec3<f32>(-218f, -575f, 932f))), ~(~vec2<u32>(u_input.b, 57879u)), arg_0) & abs(u_input.b)) % 32u), 17u)];
    var var_1 = !(!select(select(vec2<bool>(false, arg_0.b), vec2<bool>(true, true), 4294967295u > var_0.a.x), select(!vec2<bool>(true, global1.x), select(vec2<bool>(false, arg_0.b), vec2<bool>(false, false), false), true), !vec2<bool>(false, global1.x)));
    var var_2 = vec3<u32>((_wgslsmith_div_u32(_wgslsmith_add_u32(var_0.a.x, 4294967295u), ~var_0.a.x) | 16181u) << (~1u % 32u), 0u, ~49520u);
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(349f, _wgslsmith_f_op_f32(abs(-2581f)), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2764f * 1000f)), -609f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -127f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(-671f)), _wgslsmith_f_op_f32(round(462f)), 282f, _wgslsmith_f_op_f32(f32(-1f) * -146f)))) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(625f, -170f)), _wgslsmith_f_op_f32(f32(-1f) * -457f)), _wgslsmith_f_op_f32(240f + -627f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1418f * 2062f), _wgslsmith_f_op_f32(abs(1344f)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(473f)))))));
    var_1 = vec2<bool>(var_1.x, true);
    return !vec2<bool>(select(var_1.x, global1.x, true) | (countOneBits(arg_0.c) != (arg_0.c | -2063i)), !all(select(vec3<bool>(false, var_1.x, arg_0.a), vec3<bool>(true, false, var_1.x), false)));
}

fn func_1(arg_0: vec4<i32>) -> u32 {
    global0 = array<Struct_2, 17>();
    global1 = !(!select(func_2(Struct_1(global1.x, false, arg_0.x, vec2<i32>(arg_0.x, u_input.e), arg_0.x)), vec2<bool>(global1.x, global1.x), vec2<bool>(true, true)));
    global0 = array<Struct_2, 17>();
    let var_0 = ~select(_wgslsmith_div_u32(~19820u, u_input.a), u_input.b, true);
    global0 = array<Struct_2, 17>();
    return 65355u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(29382u);
    let var_1 = _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, u_input.a, 58292u), vec3<u32>(50812u, 12019u, 0u) << ((vec3<u32>(u_input.b, 4294967295u, u_input.a) | vec3<u32>(var_0, var_0, 1u)) % vec3<u32>(32u))), _wgslsmith_mult_u32(var_0, u_input.b)) & 1u;
    var var_2 = u_input.d.xyy;
    var_2 = vec3<i32>(~(~(~u_input.d.x)) << (func_1(vec4<i32>(var_2.x & -2147483647i, -45774i, ~u_input.d.x, abs(var_2.x))) % 32u), _wgslsmith_add_i32(~0i, abs(-var_2.x)) & -23943i, 1i);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-165f, -2450f)), _wgslsmith_f_op_f32(select(-2019f, -1000f, global1.x))))) + _wgslsmith_div_f32(-318f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1188f + 742f), _wgslsmith_f_op_f32(-1149f + 400f))))));
    var var_4 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-711f, 982f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3) + -295f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3, 669f, 419f) + vec3<f32>(var_3, var_3, var_3))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(975f, -1656f, var_3))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(950f, 1679f, var_3) - vec3<f32>(-277f, 752f, var_3)))))));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.b, countOneBits(var_1)), 1u), var_1 & ~(~var_0), firstTrailingBit(1u)), ~(vec4<u32>(~u_input.a, _wgslsmith_mod_u32(73462u, u_input.a), 85565u, firstLeadingBit(var_0)) >> (reverseBits(vec4<u32>(var_0, 36311u, u_input.a, 1u) | vec4<u32>(0u, 0u, var_1, var_0)) % vec4<u32>(32u))));
}

