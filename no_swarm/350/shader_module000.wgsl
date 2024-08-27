struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: vec4<f32>) -> vec4<bool> {
    let var_0 = arg_2.x;
    var var_1 = Struct_1(65945i, ~(~(vec2<u32>(67322u, arg_0) & vec2<u32>(40927u, 16697u))) >> ((~select(vec2<u32>(arg_0, 1u), vec2<u32>(arg_0, 4294967295u), false) << (~vec2<u32>(arg_0, 1u) % vec2<u32>(32u))) % vec2<u32>(32u)), i32(-1i) * -_wgslsmith_sub_i32(-49031i | u_input.a, max(u_input.a, -2147483647i)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-arg_2), _wgslsmith_f_op_vec4_f32(floor(arg_2)))))));
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-538f, -631f), _wgslsmith_f_op_f32(floor(arg_2.x)), _wgslsmith_f_op_f32(var_0 * var_2.x), _wgslsmith_f_op_f32(abs(-1030f)))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, 1389f, arg_1, var_2.x) * arg_2) * arg_2), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(159f, -952f, 987f, arg_1))))))));
    var var_3 = Struct_1(min(~var_1.a, 8855i) << (arg_0 % 32u), ~abs(_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(38288u, 13230u), var_1.b), ~vec2<u32>(var_1.b.x, arg_0))), _wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483647i, -2147483647i, var_1.a) << (vec3<u32>(16106u, arg_0, 4294967295u) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-17773i, u_input.a, var_1.a), vec3<i32>(2147483647i, u_input.a, -26536i)), ~vec3<i32>(-49991i, 33055i, -4425i))) >> (_wgslsmith_mult_u32(50089u, var_1.b.x) % 32u));
    return !select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true)), var_1.a <= 3446i), vec4<bool>(all(vec3<bool>(true, true, true)), any(vec4<bool>(true, true, true, true)), true, true), !vec4<bool>(true, any(vec4<bool>(true, false, false, false)), any(vec4<bool>(false, false, false, true)), true));
}

fn func_2(arg_0: u32) -> u32 {
    let var_0 = Struct_1(-4405i, vec2<u32>(arg_0, arg_0), ~(u_input.a >> (abs(arg_0 ^ arg_0) % 32u)));
    let var_1 = abs(select(var_0.b, ~(~vec2<u32>(1u, arg_0) >> (~vec2<u32>(arg_0, var_0.b.x) % vec2<u32>(32u))), vec2<bool>(true, true)));
    let var_2 = vec3<bool>(true, all(func_3(arg_0 ^ firstLeadingBit(0u), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-550f - -200f), _wgslsmith_f_op_f32(f32(-1f) * -1478f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1761f, -1082f, -1621f, 1000f) * vec4<f32>(1225f, -346f, -782f, 605f)) - _wgslsmith_div_vec4_f32(vec4<f32>(-501f, -258f, 1977f, -498f), vec4<f32>(-629f, 286f, -460f, -483f))))), true);
    var var_3 = countOneBits(vec2<u32>(var_1.x, arg_0));
    var_3 = var_0.b;
    return arg_0;
}

fn func_1(arg_0: bool, arg_1: vec3<i32>, arg_2: i32, arg_3: u32) -> u32 {
    var var_0 = countOneBits(~vec4<u32>(reverseBits(0u), arg_3, func_2(arg_3), ~0u));
    let var_1 = !select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec4<bool>(false, arg_0 | arg_0, arg_0, u_input.a > arg_1.x)));
    let var_2 = Struct_1(i32(-1i) * -2147483647i, max(~(_wgslsmith_add_vec2_u32(var_0.zx, vec2<u32>(67966u, 1u)) ^ var_0.wz), vec2<u32>(var_0.x, (var_0.x | var_0.x) << (arg_3 % 32u))), firstLeadingBit(reverseBits(-13328i)));
    var var_3 = !select(select(!(!vec4<bool>(false, true, false, var_1.x)), select(!vec4<bool>(false, arg_0, arg_0, var_1.x), vec4<bool>(false, var_1.x, true, false), !var_1.x), vec4<bool>(true, true, true, true)), !select(select(vec4<bool>(true, arg_0, arg_0, true), vec4<bool>(arg_0, true, var_1.x, arg_0), arg_0), select(vec4<bool>(arg_0, arg_0, true, false), vec4<bool>(arg_0, true, false, true), var_1.x), !var_1.x), false);
    var_0 = vec4<u32>(arg_3, arg_3, _wgslsmith_clamp_u32(var_0.x, func_2(0u), arg_3), var_2.b.x);
    return ~firstLeadingBit(~1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(false, vec3<i32>(max(-2147483647i, -1i) & u_input.a, u_input.a, -1i), -4967i, 1u);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-1170f, -124f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * 2558f) + _wgslsmith_f_op_f32(step(161f, -349f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(792f)) * -1980f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1269f))), -1418f), -1823f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(1635f))))))));
}

