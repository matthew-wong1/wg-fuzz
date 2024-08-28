struct Struct_1 {
    a: vec2<u32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 1> = array<vec2<i32>, 1>(vec2<i32>(0i, 41882i));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global0 = array<vec2<i32>, 1>();
    global0 = array<vec2<i32>, 1>();
    return arg_1;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = abs(u_input.a.x);
    let var_1 = Struct_1(firstTrailingBit(firstLeadingBit(arg_0.a) & arg_0.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_1.b.x, _wgslsmith_f_op_f32(-arg_1.b.x))))));
    let var_2 = 0u;
    global0 = array<vec2<i32>, 1>();
    var var_3 = func_2(select(!vec2<bool>(true, select(true, false, false)), select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), true), select(vec2<bool>(false, true), vec2<bool>(true, true), true)), all(select(vec3<bool>(false, false, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true), true))), arg_1, func_2(select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)), true), true), Struct_1(arg_0.a & min(vec2<u32>(35084u, 34606u), arg_1.a), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(var_1.b + arg_0.b)))), var_1));
    return Struct_1(~_wgslsmith_sub_vec2_u32(firstLeadingBit(~vec2<u32>(1u, 8010u)), vec2<u32>(~65744u, arg_1.a.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.b) * vec2<f32>(-784f, -163f)) * vec2<f32>(238f, _wgslsmith_f_op_f32(2152f + -1707f)))));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(vec2<u32>(~(arg_0.a.x >> (arg_0.a.x % 32u)), 0u) & arg_0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(arg_0.b, arg_0.b), func_2(vec2<bool>(false, true), Struct_1(arg_0.a, vec2<f32>(-919f, 276f)), arg_0).b)))));
    let var_1 = arg_0.a.x;
    global0 = array<vec2<i32>, 1>();
    let var_2 = _wgslsmith_div_u32(~(~arg_0.a.x), select(4294967295u, arg_0.a.x, true));
    var_0 = Struct_1(arg_0.a, var_0.b);
    return Struct_1(func_3(arg_0, arg_0).a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.b + var_0.b), vec2<f32>(129f, -163f)) * vec2<f32>(325f, var_0.b.x)) * vec2<f32>(var_0.b.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-208f, 1195f)), 2520f, any(vec4<bool>(false, true, true, false)))))));
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    global0 = array<vec2<i32>, 1>();
    var var_0 = vec3<bool>(!arg_0, true, !arg_0);
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(637f, -1705f, -1399f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_1.b.x, arg_1.b.x, arg_1.b.x))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(-586f, 491f, -330f), vec3<f32>(1000f, -570f, -810f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, arg_2, arg_1.b.x))))));
    var var_2 = arg_1;
    let var_3 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(func_2(vec2<bool>(false, true), arg_1, func_2(var_0.zx, arg_1, Struct_1(arg_1.a, var_2.b))).b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1039f) + var_2.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1.b.x)) - _wgslsmith_f_op_f32(sign(285f))))))));
    return arg_1;
}

fn func_6(arg_0: i32, arg_1: bool, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = min(reverseBits(firstTrailingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(62056u, 1u, arg_3.a.x), _wgslsmith_mod_vec3_u32(vec3<u32>(10358u, 0u, arg_3.a.x), vec3<u32>(arg_3.a.x, 4294967295u, 68440u))))), ~select(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_3.a.x, 42301u, arg_3.a.x), vec3<u32>(arg_3.a.x, 36047u, arg_3.a.x)) >> (vec3<u32>(arg_3.a.x, arg_3.a.x, 17376u) % vec3<u32>(32u)), abs(~vec3<u32>(0u, 1u, 1u)), false));
    global0 = array<vec2<i32>, 1>();
    let var_1 = Struct_1(arg_3.a, _wgslsmith_f_op_vec2_f32(-arg_3.b));
    var var_2 = !(!vec4<bool>(false, true, all(!vec2<bool>(true, arg_1)), true));
    let var_3 = _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(u_input.a.xx, vec2<i32>(-11151i, u_input.a.x)), u_input.b.xz) ^ u_input.a.xw, _wgslsmith_clamp_vec2_i32(vec2<i32>(-arg_2, -2147483647i), global0[_wgslsmith_index_u32(~(43129u ^ arg_3.a.x), 1u)], vec2<i32>(arg_0, 0i))), vec2<i32>(2147483647i, arg_0));
    return var_1;
}

fn func_1() -> vec2<u32> {
    var var_0 = func_6(_wgslsmith_add_i32(-16574i, -(~u_input.b.x)), false, ~u_input.b.x, func_5(false, func_4(func_3(func_2(vec2<bool>(false, true), Struct_1(vec2<u32>(50477u, 21819u), vec2<f32>(1775f, -753f)), Struct_1(vec2<u32>(9005u, 81179u), vec2<f32>(608f, 505f))), Struct_1(vec2<u32>(4294967295u, 1u), vec2<f32>(-513f, -1995f)))), _wgslsmith_f_op_f32(-1117f * _wgslsmith_f_op_f32(abs(func_3(Struct_1(vec2<u32>(1u, 110271u), vec2<f32>(242f, 484f)), Struct_1(vec2<u32>(1u, 32444u), vec2<f32>(409f, -258f))).b.x)))));
    var var_1 = func_2(select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), false), select(vec2<bool>(false, false), vec2<bool>(true, false), true)), vec2<bool>(all(vec4<bool>(true, false, true, true)), true), _wgslsmith_f_op_f32(var_0.b.x * -1256f) < var_0.b.x), true), Struct_1(~var_0.a, var_0.b), func_2(!(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true))), func_6(-(u_input.a.x ^ -1i), all(vec3<bool>(true, false, false)), select(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -39840i, u_input.b.x), vec3<i32>(-2147483647i, -28954i, 59801i)), u_input.b.x & u_input.a.x, true), Struct_1(firstTrailingBit(var_0.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.x, 366f) * var_0.b))), Struct_1(~var_0.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-239f, 1087f))))).b.x;
    var_0 = func_6(abs(0i) << (1u % 32u), all(!vec4<bool>(true, true, true, all(vec2<bool>(false, false)))), u_input.b.x, Struct_1(var_0.a, var_0.b));
    let var_2 = select(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true))), select(!select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true)), vec4<bool>(true, false, false, true), u_input.b.x <= 0i), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), false)), vec4<bool>(false, false, any(vec3<bool>(true, false, true)), false), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), all(vec3<bool>(true, false, select(true, false, true)))), select(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec2<bool>(true, true)), true, true, true), vec4<bool>(true, true, true, true))));
    var var_3 = Struct_1(func_6(16717i, (_wgslsmith_div_u32(var_0.a.x, var_0.a.x) >= _wgslsmith_sub_u32(1u, 0u)) | all(!var_2), -u_input.a.x, func_3(Struct_1(firstLeadingBit(vec2<u32>(1u, var_0.a.x)), _wgslsmith_f_op_vec2_f32(var_0.b * var_0.b)), Struct_1(var_0.a | vec2<u32>(1u, 12144u), vec2<f32>(564f, 230f)))).a, var_0.b);
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(-688f, -705f);
    let var_1 = reverseBits(min(func_1(), func_6(min(-u_input.b.x, u_input.b.x), !all(vec2<bool>(true, true)), 1i, func_4(Struct_1(vec2<u32>(1u, 1u), vec2<f32>(var_0.x, var_0.x)))).a));
    global0 = array<vec2<i32>, 1>();
    var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1000f, _wgslsmith_f_op_f32(-var_0.x)))), vec2<f32>(_wgslsmith_f_op_f32(min(-890f, 1f)), -744f))));
    var var_2 = vec4<bool>(!any(vec4<bool>(true, true, true, true)), true, all(vec4<bool>(false, all(vec2<bool>(true, true)), true, any(vec3<bool>(false, true, true)))), !any(vec2<bool>(true, true)));
    var_2 = select(select(select(select(vec4<bool>(var_2.x, false, false, var_2.x), !vec4<bool>(false, var_2.x, false, true), !vec4<bool>(var_2.x, false, true, var_2.x)), !vec4<bool>(var_2.x, false, var_2.x, var_2.x), vec4<bool>(all(vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x)), false, var_2.x, u_input.a.x >= 2147483647i)), !vec4<bool>(all(var_2.yzw), false != var_2.x, true, 14017u < var_1.x), true), !(!vec4<bool>(all(vec4<bool>(false, true, var_2.x, var_2.x)), var_2.x, !var_2.x, false)), ~_wgslsmith_dot_vec4_i32(~u_input.a, abs(vec4<i32>(u_input.b.x, u_input.a.x, u_input.a.x, u_input.b.x))) > 22938i);
    let var_3 = _wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.x)) * -1742f) * -1848f), 99005u != var_1.x));
    var_2 = vec4<bool>(false, var_2.x, var_2.x, 305f > var_0.x);
    var_2 = !vec4<bool>(any(!vec4<bool>(false, var_2.x, var_2.x, var_2.x)), u_input.b.x >= _wgslsmith_mod_i32(-u_input.b.x, _wgslsmith_mult_i32(u_input.b.x, 59928i)), true, var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_0.x), -(_wgslsmith_mod_i32(1i, min(u_input.b.x, u_input.b.x)) ^ -17586i), _wgslsmith_add_vec3_u32(min(vec3<u32>(var_1.x, 4294967295u, 1u) ^ countOneBits(vec3<u32>(var_1.x, 4294967295u, var_1.x)), vec3<u32>(4294967295u, var_1.x, 1u) << (vec3<u32>(4294967295u, var_1.x, var_1.x) % vec3<u32>(32u))), _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_1.x, 68382u, var_1.x), ~vec3<u32>(37964u, 1u, var_1.x)), ~(~vec3<u32>(var_1.x, var_1.x, var_1.x)))), vec3<u32>(~var_1.x, ~0u, abs(var_1.x)));
}

