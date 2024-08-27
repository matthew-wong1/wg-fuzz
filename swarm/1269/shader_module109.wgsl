struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: bool,
    c: f32,
    d: u32,
    e: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1() -> i32 {
    let var_0 = Struct_4(Struct_1(!(firstTrailingBit(u_input.c) <= 1u)), _wgslsmith_f_op_f32(step(-413f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(385f - 669f)))))));
    let var_1 = ~(_wgslsmith_mod_u32(~_wgslsmith_clamp_u32(43951u, 1u, u_input.c), u_input.b) << (~(~_wgslsmith_add_u32(18203u, 1u)) % 32u));
    var var_2 = var_0.a;
    var var_3 = u_input.a;
    var_3 = 1i;
    return firstTrailingBit(-(~(-(u_input.a | u_input.a))));
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = Struct_1(all(vec3<bool>(arg_0.a, false, !arg_0.a)));
    let var_1 = ~(-select(firstLeadingBit(vec4<i32>(-8753i, 44171i, -2147483647i, u_input.a)), ~_wgslsmith_add_vec4_i32(vec4<i32>(-16591i, 1808i, u_input.a, -48725i), vec4<i32>(u_input.a, u_input.a, -1i, 1i)), arg_0.a));
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1164f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-813f, -332f))))))));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) - -1000f))), 1000f);
    return vec4<bool>(true, reverseBits(countOneBits(0u)) == u_input.b, arg_0.a, arg_0.a);
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: vec3<i32>, arg_3: bool) -> i32 {
    var var_0 = -arg_2.x;
    var_0 = abs(-(~arg_2.x));
    let var_1 = select(!vec4<bool>(any(vec2<bool>(arg_3, arg_3)), true, all(vec4<bool>(false, arg_3, true, true)), true), select(!vec4<bool>(arg_2.x > u_input.a, true, arg_3, true), func_3(Struct_1(all(vec3<bool>(false, false, arg_3)))), select(vec4<bool>(all(vec2<bool>(arg_3, arg_3)), arg_1 == 1545f, select(arg_3, false, false), true), select(!vec4<bool>(arg_3, arg_3, true, true), !vec4<bool>(arg_3, arg_3, arg_3, arg_3), vec4<bool>(true, true, false, false)), all(func_3(Struct_1(arg_3)).yx))), select(false, false, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -344f), arg_0) < arg_1));
    var var_2 = ~(-79688i);
    var_0 = -(i32(-1i) * -2147483647i);
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_u32(~(~countOneBits(u_input.b)) ^ u_input.b, 0u);
    let var_1 = Struct_4(Struct_1(false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
    var var_2 = vec4<f32>(1f, var_1.b, var_1.b, var_1.b);
    let var_3 = -vec4<i32>(func_1(), func_2(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + _wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_mod_vec3_i32(vec3<i32>(3238i, 0i, -2147483647i), vec3<i32>(0i, u_input.a, 60175i)) >> (~vec3<u32>(7119u, u_input.c, u_input.c) % vec3<u32>(32u)), true), 0i, ~_wgslsmith_add_i32(u_input.a & 1i, min(-2147483647i, 0i)));
    let var_4 = Struct_1(any(select(!(!vec4<bool>(true, false, var_1.a.a, false)), vec4<bool>(!var_1.a.a, var_1.a.a, true, var_1.a.a), select(vec4<bool>(false, var_1.a.a, var_1.a.a, var_1.a.a), vec4<bool>(var_1.a.a, false, true, var_1.a.a), any(vec3<bool>(false, var_1.a.a, true))))));
    let var_5 = _wgslsmith_mod_i32(abs(-_wgslsmith_sub_i32(-2147483647i, min(-1i, 82231i))), u_input.a << ((abs(var_0) >> (35266u % 32u)) % 32u));
    var_2 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, var_2.x)) - _wgslsmith_f_op_f32(floor(-175f))), var_1.b, -1000f, var_2.x)));
    var var_6 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -811f), var_1.b)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(519f, var_1.b), var_2.zx, vec2<bool>(var_4.a, var_4.a))), vec2<f32>(var_2.x, 841f), var_1.a.a)))), _wgslsmith_add_i32(_wgslsmith_sub_i32(_wgslsmith_div_i32(firstTrailingBit(2147483647i), u_input.a), -(~var_3.x)), ~_wgslsmith_add_i32(var_3.x | 28114i, -1i)));
}

