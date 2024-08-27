struct Struct_1 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: vec2<i32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: u32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: bool) -> vec2<i32> {
    return _wgslsmith_mod_vec2_i32(vec2<i32>(-1i) * -(~vec2<i32>(global0.x, -1i)), vec2<i32>(u_input.c & min(-15561i, -1i), ~(~u_input.b))) >> (_wgslsmith_mod_vec2_u32(~((u_input.a & vec2<u32>(0u, u_input.a.x)) << (~u_input.a % vec2<u32>(32u))), u_input.a) % vec2<u32>(32u));
}

fn func_1(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: vec2<i32>) -> u32 {
    global0 = arg_0.c;
    global0 = func_2(any(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false))) || false);
    return u_input.a.x;
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: i32, arg_3: i32) -> f32 {
    global0 = -vec2<i32>(countOneBits(_wgslsmith_div_i32(global0.x, arg_0.b.x)), ~0i) >> (vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, min(20187u, arg_1), _wgslsmith_clamp_u32(1u, arg_1, 0u), func_1(Struct_3(u_input.a.x, 773f, vec2<i32>(2147483647i, arg_2)), vec2<f32>(364f, 154f), arg_0.c)), ~(~vec4<u32>(96716u, 10773u, 4294967295u, arg_1))), ~u_input.a.x) % vec2<u32>(32u));
    var var_0 = Struct_3(~1u, -684f, vec2<i32>(u_input.c, -44150i));
    var_0 = Struct_3(~(~(~(~18830u))), -315f, arg_0.b);
    var var_1 = arg_0;
    let var_2 = var_1.a.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1355f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, 709f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~((reverseBits(_wgslsmith_div_vec2_i32(vec2<i32>(11685i, u_input.c), vec2<i32>(global0.x, global0.x))) ^ ~(vec2<i32>(u_input.c, -1i) >> (vec2<u32>(72485u, 20151u) % vec2<u32>(32u)))) >> ((vec2<u32>(0u, 9620u) | ((vec2<u32>(30155u, u_input.a.x) << (vec2<u32>(1u, 5286u) % vec2<u32>(32u))) << (_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, 1u), u_input.a) % vec2<u32>(32u)))) % vec2<u32>(32u)));
    global0 = firstLeadingBit(abs((vec2<i32>(global0.x, -13777i) << ((u_input.a << (u_input.a % vec2<u32>(32u))) % vec2<u32>(32u))) & _wgslsmith_div_vec2_i32(~vec2<i32>(global0.x, -28247i), vec2<i32>(-1i, global0.x) >> (u_input.a % vec2<u32>(32u)))));
    let var_0 = false;
    var var_1 = u_input.a.x;
    var_1 = _wgslsmith_sub_u32(~_wgslsmith_div_u32(0u, func_1(Struct_3(u_input.a.x, 1000f, vec2<i32>(global0.x, 1i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-555f, 514f)), -vec2<i32>(u_input.b, 0i))), 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -864f))), -288f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-906f + _wgslsmith_f_op_f32(round(-1000f))) - 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(129f - -349f))) - _wgslsmith_f_op_f32(func_3(Struct_1(vec4<bool>(true, var_0, var_0, var_0), vec2<i32>(-2066i, -30213i), vec2<i32>(-2147483647i, u_input.c)), 31454u, 1i, global0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-413f * _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1540f, 1410f))))), _wgslsmith_add_i32(global0.x, 4992i), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1663f, 945f))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(220f, 836f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(330f, 1978f), vec2<f32>(772f, -1000f), vec2<bool>(true, var_0)))), 85517u < u_input.a.x)))));
}

