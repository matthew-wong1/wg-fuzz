struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: Struct_3, arg_1: f32) -> vec2<i32> {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(arg_0.b + _wgslsmith_f_op_f32(f32(-1f) * -739f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(-arg_1), arg_0.b);
    global0 = true | all(!vec4<bool>(arg_0.a.x < u_input.a, 4294967295u < arg_0.a.x, any(vec3<bool>(false, true, false)), any(vec4<bool>(true, true, false, true))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b, -211f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b, arg_0.b) * vec2<f32>(arg_0.b, var_0.x))))));
    global0 = false;
    return abs(_wgslsmith_sub_vec2_i32(vec2<i32>(-44141i, -1i), firstLeadingBit(vec2<i32>(1i, 1i))));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<i32>) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-152f)))));
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: u32) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(select(vec3<bool>(true, -19263i < arg_1, arg_1 <= -2147483647i), vec3<bool>(true, any(vec4<bool>(arg_0, true, false, true)), true), false), firstTrailingBit(countOneBits(func_2(Struct_3(vec3<u32>(arg_2, u_input.a, 15138u), -176f), 1219f))))));
    global0 = !(arg_0 & (53532u > arg_2)) & arg_0;
    let var_1 = vec2<f32>(388f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(var_0 * 387f))))));
    return -562f;
}

fn func_4(arg_0: vec4<f32>, arg_1: u32, arg_2: Struct_1, arg_3: vec2<bool>) -> Struct_3 {
    let var_0 = !any(select(arg_3, arg_3, select(vec2<bool>(true, true), arg_3, !vec2<bool>(arg_3.x, arg_3.x))));
    var var_1 = Struct_2(Struct_1(abs(vec4<i32>(arg_2.a.x, _wgslsmith_mod_i32(arg_2.a.x, arg_2.a.x), _wgslsmith_mod_i32(0i, arg_2.a.x), arg_2.a.x)), _wgslsmith_f_op_vec2_f32(step(arg_2.b, arg_0.xw))), _wgslsmith_f_op_f32(func_3(vec3<bool>(false, _wgslsmith_f_op_f32(round(arg_0.x)) > _wgslsmith_f_op_f32(f32(-1f) * -277f), true), vec2<i32>(select(_wgslsmith_sub_i32(arg_2.a.x, -1i), -826i, all(vec4<bool>(true, arg_3.x, arg_3.x, true))), firstLeadingBit(3685i << (1u % 32u))))));
    var var_2 = vec3<i32>(_wgslsmith_div_i32(var_1.a.a.x, _wgslsmith_mult_i32(max(~(-2147483647i), 1i), arg_2.a.x)), arg_2.a.x, -12827i);
    var var_3 = _wgslsmith_f_op_f32(max(829f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.a.b.x, _wgslsmith_f_op_f32(sign(-1000f))))), _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -628f) - var_1.b)))));
    var var_4 = Struct_2(arg_2, _wgslsmith_div_f32(var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.a.b.x))))));
    return Struct_3(firstTrailingBit(abs(~vec3<u32>(0u, arg_1, 16714u))), _wgslsmith_f_op_f32(max(805f, _wgslsmith_f_op_f32(-100f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -168f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 10735u;
    var_0 = _wgslsmith_mod_u32(1u >> (u_input.a % 32u), u_input.a);
    var var_1 = func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -646f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(398f))), _wgslsmith_div_f32(-698f, -1454f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(true, 32851i, 34313u)) + _wgslsmith_f_op_f32(673f + 993f)))), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(countOneBits(countOneBits(vec3<u32>(u_input.a, u_input.a, u_input.a))), min(~vec3<u32>(18902u, u_input.a, 3314u), min(vec3<u32>(u_input.a, u_input.a, 4294967295u), vec3<u32>(1u, 6875u, u_input.a)))), reverseBits(1u)), Struct_1(-select(vec4<i32>(1i, 2147483647i, 8546i, -1i) >> (vec4<u32>(u_input.a, u_input.a, 85091u, u_input.a) % vec4<u32>(32u)), max(vec4<i32>(-12944i, -1i, -25077i, -2147483647i), vec4<i32>(38713i, 35236i, 2147483647i, 0i)), select(true, false, false)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, 415f), vec2<f32>(-1184f, -2015f))) + vec2<f32>(_wgslsmith_f_op_f32(1000f - 1606f), _wgslsmith_f_op_f32(min(-663f, 258f))))), !vec2<bool>(true, !all(vec4<bool>(false, true, false, true))));
    let var_2 = false;
    let var_3 = 1i;
    let var_4 = Struct_2(Struct_1(-vec4<i32>(_wgslsmith_sub_i32(5142i, 28465i), countOneBits(1i), _wgslsmith_dot_vec4_i32(vec4<i32>(-44386i, 1i, -2147483647i, 1i), vec4<i32>(var_3, var_3, 0i, -2147483647i)), var_3), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-118f, var_1.b) * vec2<f32>(var_1.b, var_1.b)))), 224f);
    let var_5 = select(vec2<bool>(var_2, all(!vec3<bool>(var_2, true, var_2))), select(!vec2<bool>(!var_2, var_2), select(!(!vec2<bool>(var_2, var_2)), vec2<bool>(true, true), false), var_2), false);
    let var_6 = func_4(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.b, var_1.b, -1000f, var_1.b)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-582f, 1891f, var_4.b, var_1.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, -2857f, var_4.a.b.x, var_4.b)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(557f, -1366f, var_1.b, var_4.a.b.x))))))), _wgslsmith_add_u32(0u, ~41145u), Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_add_i32(0i, 1i), select(-59796i, var_3, var_5.x), abs(0i), _wgslsmith_dot_vec3_i32(var_4.a.a.ywy, var_4.a.a.zzy)), var_4.a.a), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2050f, var_1.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1554f, var_1.b)))), select(vec2<bool>(var_2, false), select(select(select(vec2<bool>(true, true), vec2<bool>(var_5.x, false), true), select(vec2<bool>(var_5.x, var_2), vec2<bool>(var_2, true), var_5), vec2<bool>(false, false)), vec2<bool>(true, true), !any(vec2<bool>(var_5.x, var_5.x))), var_5));
    let x = u_input.a;
    s_output = StorageBuffer(10485u, 0i, ~(-(~(~var_4.a.a))), -(var_4.a.a.wyx << (func_4(_wgslsmith_div_vec4_f32(vec4<f32>(-2468f, var_1.b, -1948f, var_6.b), vec4<f32>(820f, var_6.b, var_1.b, var_6.b)), var_6.a.x, var_4.a, select(vec2<bool>(false, true), vec2<bool>(var_2, var_5.x), var_5)).a % vec3<u32>(32u))), firstLeadingBit(_wgslsmith_mod_i32(-var_3 ^ var_3, 59156i)));
}

