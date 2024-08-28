struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
    c: vec4<f32>,
    d: vec4<f32>,
    e: vec4<bool>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_2() -> bool {
    var var_0 = true;
    let var_1 = !(!(!vec3<bool>(true, all(vec2<bool>(false, true)), false)));
    let var_2 = any(vec4<bool>(true, all(!select(vec4<bool>(true, true, var_1.x, var_1.x), vec4<bool>(var_1.x, true, var_1.x, var_1.x), var_1.x)), var_1.x, u_input.b.x < ~4294967295u));
    var var_3 = vec4<i32>(~45526i, _wgslsmith_div_i32(0i, -(~(-2147483647i))), u_input.d, 0i) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, 34274u, ~125665u, ~select(u_input.b.x, 1u, false)), ~(~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 54637u)), min(vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, 29601u), abs(vec4<u32>(u_input.b.x, u_input.b.x, 45873u, 4294967295u))) | vec4<u32>(~0u, u_input.b.x, ~69555u, u_input.b.x & 9524u)) % vec4<u32>(32u));
    var_0 = true;
    return !(!(var_1.x & !(var_1.x | true)));
}

fn func_3(arg_0: u32) -> vec4<i32> {
    var var_0 = select(!vec3<bool>(true, all(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), true)), false), vec3<bool>(false, !any(vec2<bool>(true, true)), true), vec3<bool>(all(vec3<bool>(true, false, false)) & true, false, !(!select(true, false, false))));
    var_0 = vec3<bool>(!(!(!var_0.x == true)), true, any(!vec3<bool>(var_0.x, var_0.x, true && var_0.x)));
    let var_1 = firstTrailingBit(select(-41312i, countOneBits(-(~u_input.c)), var_0.x));
    var var_2 = _wgslsmith_sub_u32(_wgslsmith_mult_u32(80092u, select(u_input.b.x, _wgslsmith_sub_u32(1u, ~u_input.b.x), any(vec4<bool>(var_0.x, true, var_0.x, var_0.x)))), 61511u);
    let var_3 = 36510u;
    return countOneBits(u_input.e);
}

fn func_1(arg_0: vec4<f32>) -> f32 {
    let var_0 = func_2();
    let var_1 = Struct_2(_wgslsmith_div_i32(11550i, reverseBits(u_input.a.x)), vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, u_input.a.x, 739i), vec3<i32>(u_input.e.x, u_input.a.x, u_input.d)), u_input.e.x << (8838u % 32u)), abs(u_input.a.x)), vec4<f32>(arg_0.x, _wgslsmith_div_f32(arg_0.x, arg_0.x), arg_0.x, 1488f), vec4<f32>(arg_0.x, 424f, _wgslsmith_f_op_f32(1073f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-945f)) + 1f)), _wgslsmith_f_op_f32(-arg_0.x)), vec4<bool>(u_input.d != (i32(-1i) * -36281i), any(!(!vec3<bool>(var_0, false, true))), !var_0, var_0));
    let var_2 = u_input.e.wyz;
    let var_3 = Struct_1(_wgslsmith_add_vec4_i32(u_input.a, func_3(u_input.b.x | 4294967295u)) & abs(vec4<i32>(firstLeadingBit(u_input.d), _wgslsmith_dot_vec2_i32(var_1.b, vec2<i32>(u_input.c, 0i)), var_1.a, i32(-1i) * -62873i)), 1i, var_0, false);
    let var_4 = _wgslsmith_f_op_f32(var_1.c.x * -1000f);
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - _wgslsmith_f_op_f32(-1015f + -743f))))));
}

fn func_4(arg_0: bool, arg_1: vec3<f32>) -> Struct_3 {
    let var_0 = u_input.b.zx;
    var var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, 595f, -395f, 532f), vec4<f32>(-599f, 1000f, arg_1.x, 878f), select(vec4<bool>(arg_0, true, arg_0, false), vec4<bool>(false, arg_0, arg_0, true), vec4<bool>(false, arg_0, false, arg_0)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-525f, 628f, arg_1.x, 183f)))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1047f, arg_1.x, arg_1.x, arg_1.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), vec4<f32>(-2350f, 650f, arg_1.x, arg_1.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-358f, arg_1.x, arg_1.x, arg_1.x))))))));
    var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(568f, 1035f, -803f, -151f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, arg_1.x, var_1.x, var_1.x), vec4<f32>(arg_1.x, var_1.x, -1118f, arg_1.x), vec4<bool>(arg_0, true, arg_0, true))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.x, arg_1.x, 1739f, -481f), vec4<f32>(-1973f, arg_1.x, 1005f, arg_1.x))) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(663f, var_1.x, -1857f, var_1.x)))))) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(var_1.x * 1014f), -1000f, 1000f, _wgslsmith_f_op_f32(-var_1.x))))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.x, arg_1.x), _wgslsmith_f_op_f32(select(var_1.x, -419f, arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(412f - -358f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-998f, var_1.x)) - var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + 1f)), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-981f * arg_1.x), var_1.x)), -1000f, -2704f, _wgslsmith_div_f32(arg_1.x, 1f)), (true || arg_0) | true))));
    var var_2 = -_wgslsmith_add_i32(u_input.a.x, select(_wgslsmith_add_i32(_wgslsmith_mod_i32(1i, -2147483647i), 15252i), ~2147483647i ^ u_input.a.x, arg_0 && any(vec2<bool>(arg_0, arg_0))));
    var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(-368f, 1776f, 2673f, arg_1.x), vec4<f32>(var_1.x, 1454f, 2113f, arg_1.x)))))))));
    return Struct_3(select(select(select(vec4<bool>(arg_0, false, false, false), select(vec4<bool>(arg_0, true, false, arg_0), vec4<bool>(arg_0, arg_0, arg_0, arg_0), true), true), select(select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(true, arg_0, true, false), arg_0), select(vec4<bool>(arg_0, false, arg_0, true), vec4<bool>(arg_0, false, false, arg_0), arg_0), vec4<bool>(false, false, arg_0, arg_0)), all(select(vec4<bool>(arg_0, arg_0, true, arg_0), vec4<bool>(arg_0, arg_0, arg_0, arg_0), true))), select(select(vec4<bool>(arg_0, false, arg_0, arg_0), !vec4<bool>(false, arg_0, false, arg_0), true), vec4<bool>(arg_0, select(false, arg_0, arg_0), u_input.d <= -3878i, any(vec2<bool>(arg_0, arg_0))), vec4<bool>(arg_0, all(vec3<bool>(arg_0, true, arg_0)), arg_0, arg_0)), vec4<bool>(any(vec4<bool>(arg_0, true, arg_0, arg_0)), true, true, true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1)) * _wgslsmith_f_op_vec3_f32(-arg_1)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.xwz * _wgslsmith_f_op_vec3_f32(exp2(var_1.zxx))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -u_input.a.x;
    let var_1 = u_input.a.wzy;
    var var_2 = func_4(!(!all(vec4<bool>(true, true, true, true))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec4<f32>(-697f, 2229f, 1546f, -1070f))) - -170f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-735f - 543f))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(1425f, -913f) - -326f)), 583f));
    var_2 = Struct_3(vec4<bool>(!all(vec3<bool>(var_2.a.x, var_2.a.x, var_2.a.x)), _wgslsmith_sub_u32(~0u, 1u) != countOneBits(u_input.b.x), !(!var_2.a.x) && !(!var_2.a.x), !(!any(vec3<bool>(true, var_2.a.x, var_2.a.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(false, var_2.b).b + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-876f, var_2.b.x, 885f))))));
    let var_3 = !all(select(!var_2.a, select(var_2.a, !vec4<bool>(var_2.a.x, var_2.a.x, true, false), true), true));
    var_2 = Struct_3(select(vec4<bool>(false, select(all(vec2<bool>(true, var_2.a.x)), 18217u < u_input.b.x, !var_3), func_4(var_1.x >= 43414i, vec3<f32>(var_2.b.x, var_2.b.x, var_2.b.x)).a.x, func_2()), !select(var_2.a, !var_2.a, any(vec3<bool>(var_2.a.x, false, var_2.a.x))), !(!(false || var_2.a.x))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-448f, 1311f, -742f)), _wgslsmith_div_vec3_f32(var_2.b, vec3<f32>(-620f, var_2.b.x, var_2.b.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.b), _wgslsmith_f_op_vec3_f32(-var_2.b))))));
    let x = u_input.a;
    s_output = StorageBuffer(0i, _wgslsmith_add_vec2_i32(reverseBits(select(vec2<i32>(var_0, -1i), u_input.e.xx, any(vec3<bool>(false, var_3, true)))), vec2<i32>(1i, 1i)), firstLeadingBit(var_1.yx), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.b) * var_2.b) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.b.x, var_2.b.x, var_2.b.x) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b.x, 494f, var_2.b.x))))));
}

