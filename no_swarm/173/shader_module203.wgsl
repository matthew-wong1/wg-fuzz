struct Struct_1 {
    a: vec4<bool>,
    b: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> i32 {
    let var_0 = Struct_1(vec4<bool>(!all(vec3<bool>(true, true, true)), false, false, true), 50227u);
    let var_1 = var_0;
    let var_2 = max(countOneBits(select(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.c, 0i, -1i), vec4<i32>(-28664i, u_input.b, u_input.c, u_input.c)), -21963i, false)), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(-(~vec4<i32>(27948i, u_input.c, -59467i, u_input.b)), min(vec4<i32>(u_input.b, u_input.c, u_input.c, 2147483647i), -vec4<i32>(u_input.c, u_input.a.x, -1i, -16438i))), reverseBits(vec4<i32>(firstLeadingBit(25758i), i32(-1i) * -1i, u_input.b, 1i))));
    let var_3 = _wgslsmith_add_i32(-(~(-41817i)), u_input.b);
    var var_4 = 2376f;
    return -u_input.c;
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<f32>) -> bool {
    var var_0 = ~(min(vec4<i32>(0i, func_3(), arg_0, 1i), vec4<i32>(u_input.a.x, arg_0 & arg_0, 9795i >> (arg_1.b % 32u), _wgslsmith_add_i32(1i, u_input.b))) & ~_wgslsmith_sub_vec4_i32(-vec4<i32>(arg_0, -1i, 6439i, 273i), vec4<i32>(arg_0, arg_0, -56944i, u_input.c) >> (vec4<u32>(4294967295u, 0u, arg_1.b, arg_2.b) % vec4<u32>(32u))));
    var var_1 = !(!arg_2.a.ww);
    var_1 = vec2<bool>(var_1.x, _wgslsmith_clamp_i32(i32(-1i) * -34289i, _wgslsmith_add_i32(arg_0, arg_0) ^ (u_input.b | u_input.c), _wgslsmith_dot_vec2_i32(var_0.yx, vec2<i32>(arg_0, u_input.b))) == 1i);
    var_1 = vec2<bool>(select(!(4263i > abs(u_input.b)), !(_wgslsmith_sub_u32(arg_1.b, arg_1.b) >= 16030u), false), arg_1.a.x);
    var_1 = select(!arg_2.a.yw, arg_1.a.xw, false);
    return !(!all(!arg_1.a)) | !((arg_2.a.x | false) & any(vec2<bool>(true, true)));
}

fn func_1() -> Struct_1 {
    let var_0 = select(select(select(vec3<bool>(true, true, true), !select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), select(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), vec3<bool>(func_2(u_input.a.x, Struct_1(vec4<bool>(false, true, false, true), 61655u), Struct_1(vec4<bool>(false, false, false, false), 118743u), vec2<f32>(-2278f, -136f)), -15291i != u_input.a.x, false), vec3<bool>(true, true, true))), vec3<bool>(true, true, 1i != (i32(-1i) * -u_input.b)), !all(select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), false))));
    var var_1 = 409f;
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -975f);
    let var_2 = -1i >= -_wgslsmith_mod_i32(firstTrailingBit(u_input.a.x), _wgslsmith_mult_i32(u_input.b, ~u_input.b));
    let var_3 = Struct_1(select(select(select(select(vec4<bool>(var_2, true, var_0.x, true), vec4<bool>(false, false, true, false), true), vec4<bool>(var_0.x, var_2, false, false), vec4<bool>(true, var_0.x, var_0.x, false)), select(!vec4<bool>(false, var_2, false, false), select(vec4<bool>(false, var_2, var_0.x, var_0.x), vec4<bool>(var_0.x, false, true, var_0.x), vec4<bool>(var_0.x, false, var_2, true)), true), vec4<bool>(var_0.x, all(var_0), !var_0.x, false)), select(select(vec4<bool>(var_2, var_2, true, var_2), select(vec4<bool>(var_0.x, var_2, var_0.x, false), vec4<bool>(true, true, var_2, var_2), false), select(vec4<bool>(var_2, true, var_2, var_0.x), vec4<bool>(var_2, false, true, var_0.x), vec4<bool>(false, true, var_0.x, true))), vec4<bool>(true, false, false, true), false), vec4<bool>(var_0.x, !var_0.x, true, any(var_0))), 1u);
    return Struct_1(select(!(!select(var_3.a, vec4<bool>(true, var_0.x, true, var_3.a.x), var_3.a)), vec4<bool>(false, true, _wgslsmith_div_f32(-733f, -849f) <= _wgslsmith_f_op_f32(ceil(-156f)), var_3.a.x), var_0.x), _wgslsmith_mult_u32(var_3.b, var_3.b));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = vec2<u32>(~1u, arg_1.b);
    let var_1 = firstTrailingBit(vec4<u32>(1u, ~(~var_0.x), 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, arg_0.x | var_0.x), vec2<u32>(firstTrailingBit(34469u), 1u))));
    return func_1();
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = Struct_1(vec4<bool>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-1387f, 1440f)), -321f)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(141f * 422f) + -363f), func_2(_wgslsmith_clamp_i32(i32(-1i) * -51362i, _wgslsmith_add_i32(0i, u_input.c), _wgslsmith_add_i32(arg_1, u_input.c)), func_1(), func_4(~vec2<u32>(37709u, arg_2.b), arg_0), vec2<f32>(1f, 1f)), arg_3.a.x, true), 88154u);
    return vec2<bool>(arg_3.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, _wgslsmith_add_i32(18298i, u_input.c), -1i), vec3<i32>(16881i, arg_1, _wgslsmith_mult_i32(arg_1, 2147483647i))) < firstTrailingBit(_wgslsmith_div_i32(~u_input.a.x, 2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, _wgslsmith_sub_i32(u_input.a.x, 0i)), vec2<i32>(~(-1i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, 26968i, u_input.b, 0i), vec4<i32>(u_input.a.x, -39862i, 2147483647i, u_input.b)))), ~(-countOneBits(vec2<i32>(u_input.c, -2147483647i)))) <= (u_input.c << (0u % 32u));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -687f), 942f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1061f))));
    let var_2 = func_5(func_4(vec2<u32>(~min(10991u, 0u), ~4294967295u), func_1()), u_input.c ^ ~_wgslsmith_add_i32(71892i, 1i), func_4(reverseBits(firstLeadingBit(vec2<u32>(1u, 4294967295u))) | vec2<u32>(1u, select(28158u, 11722u, false)), func_1()), Struct_1(!(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true))), select(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 41556u, 1u), vec4<u32>(1u, 4294967295u, 26707u, 5465u)) & ~4294967295u, 4294967295u, !(var_1 != var_1))));
    var var_3 = Struct_1(!select(!vec4<bool>(true, true, false, var_2.x), vec4<bool>(var_2.x, true, var_2.x, !var_2.x), ~4294967295u > select(4294967295u, 22622u, false)), 46804u);
    var_0 = false;
    let x = u_input.a;
    s_output = StorageBuffer(abs(abs(_wgslsmith_div_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 55798u)) << (~vec2<u32>(0u, var_3.b) % vec2<u32>(32u)))), _wgslsmith_clamp_vec3_u32(firstTrailingBit(~_wgslsmith_add_vec3_u32(vec3<u32>(28187u, 38093u, var_3.b), vec3<u32>(113591u, 27072u, 15713u))), abs(firstLeadingBit(vec3<u32>(var_3.b, var_3.b, 19770u))), _wgslsmith_div_vec3_u32(firstTrailingBit(~vec3<u32>(0u, var_3.b, 1u)), vec3<u32>(~var_3.b, 0u, var_3.b))));
}

