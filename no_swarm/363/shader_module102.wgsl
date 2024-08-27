struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(614f, 1239f, -714f, -456f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_2) -> f32 {
    var var_0 = Struct_2(arg_0.a, Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0.b.a * _wgslsmith_div_vec4_f32(arg_0.b.a, vec4<f32>(-313f, global0.x, global0.x, -1202f))), _wgslsmith_f_op_vec4_f32(arg_0.a.a - arg_0.b.a)), all(vec2<bool>(true, true)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-177f, _wgslsmith_f_op_f32(arg_0.b.a.x - -571f), global0.x, _wgslsmith_f_op_f32(ceil(-855f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.b.c)))));
    let var_1 = Struct_1(arg_0.b.a, true, vec4<f32>(arg_0.b.c.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.a.a.x))), var_0.a.c.x, !any(vec3<bool>(true, false, var_0.a.b)))), -215f, -1412f));
    var_0 = arg_0;
    let var_2 = firstTrailingBit(-vec4<i32>(~2147483647i, -10362i, countOneBits(firstLeadingBit(33037i)), firstLeadingBit(u_input.a | 1i)));
    var var_3 = _wgslsmith_mod_vec2_i32(~_wgslsmith_mod_vec2_i32(-abs(var_2.zy), _wgslsmith_mod_vec2_i32(min(var_2.xz, vec2<i32>(var_2.x, -1i)), vec2<i32>(u_input.a, u_input.a))), vec2<i32>(2147483647i, _wgslsmith_div_i32(firstLeadingBit(1i), ~(i32(-1i) * -6148i))));
    return _wgslsmith_f_op_f32(abs(global0.x));
}

fn func_2() -> i32 {
    global0 = vec4<f32>(_wgslsmith_div_f32(972f, -753f), _wgslsmith_f_op_f32(f32(-1f) * -1131f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-872f * 1936f)), global0.x);
    var var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(vec4<f32>(global0.x, global0.x, -272f, global0.x), true, vec4<f32>(global0.x, 450f, global0.x, 1199f)), Struct_1(vec4<f32>(global0.x, -1169f, global0.x, -468f), false, vec4<f32>(global0.x, global0.x, 1007f, -813f))))), -420f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * 1475f)))), _wgslsmith_f_op_f32(trunc(global0.x))), !(!any(vec2<bool>(true, true))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, -1000f))))))));
    let var_1 = select(any(select(select(vec2<bool>(var_0.b, true), vec2<bool>(true, var_0.b), !vec2<bool>(var_0.b, false)), vec2<bool>(!var_0.b, any(vec4<bool>(true, var_0.b, true, true))), true)), !var_0.b, all(!(!select(vec2<bool>(var_0.b, var_0.b), vec2<bool>(false, true), vec2<bool>(var_0.b, false)))));
    var var_2 = min(min(_wgslsmith_add_vec3_i32(~vec3<i32>(u_input.a, 82763i, u_input.a) & reverseBits(vec3<i32>(1i, u_input.a, u_input.a)), vec3<i32>(~u_input.a, _wgslsmith_sub_i32(-1i, 1i), -u_input.a)), ~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), -vec3<i32>(u_input.a, u_input.a, u_input.a))), -_wgslsmith_mult_vec3_i32(~vec3<i32>(1i, 1i, 1i), ~_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, u_input.a, 26341i), vec3<i32>(1i, -31657i, -26357i))));
    let var_3 = Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1877f, 2303f)), _wgslsmith_f_op_f32(var_0.a.x * _wgslsmith_f_op_f32(1341f - global0.x)), 964f, _wgslsmith_f_op_f32(var_0.c.x + 102f)), _wgslsmith_f_op_f32(trunc(969f)) > global0.x, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(217f, 764f, -765f, 488f) - vec4<f32>(289f, global0.x, -901f, var_0.c.x)), _wgslsmith_f_op_vec4_f32(-var_0.c)))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, var_0.a.x, _wgslsmith_f_op_f32(-global0.x), -1952f)), !any(select(vec2<bool>(true, false), vec2<bool>(false, var_1), vec2<bool>(true, var_0.b))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-382f, -360f, global0.x, 137f))) - var_0.c) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1435f, -499f, 1359f, var_0.a.x) * var_0.a) + _wgslsmith_f_op_vec4_f32(-var_0.c)))));
    return _wgslsmith_mult_i32(-var_2.x, _wgslsmith_add_i32(_wgslsmith_add_i32(abs(~u_input.a), -11095i), var_2.x >> (35082u % 32u)));
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    let var_0 = select(select(vec3<bool>(true, !all(vec3<bool>(true, false, false)), all(vec2<bool>(true, true))), vec3<bool>(false, false, abs(-36045i) >= func_2()), false), vec3<bool>(true, true, arg_0.x > arg_0.x), select(true, true, true));
    var var_1 = -773f;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-894f + _wgslsmith_f_op_f32(-global0.x)) + global0.x);
    var var_2 = vec3<bool>(var_0.x, !((_wgslsmith_clamp_i32(-11751i, u_input.a, 1i) == _wgslsmith_dot_vec2_i32(vec2<i32>(1i, arg_0.x), vec2<i32>(-24714i, 0i))) && true), true);
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-404f, _wgslsmith_f_op_f32(-global0.x))) - _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(vec4<f32>(global0.x, 1000f, global0.x, -330f), var_2.x, vec4<f32>(-407f, global0.x, global0.x, -1499f)), Struct_1(vec4<f32>(global0.x, global0.x, global0.x, -745f), var_2.x, vec4<f32>(global0.x, global0.x, global0.x, -349f))))) + _wgslsmith_f_op_f32(-global0.x)))));
    return Struct_1(vec4<f32>(global0.x, -547f, global0.x, global0.x), !all(!vec4<bool>(false, var_2.x, true, true)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(global0.x, global0.x), _wgslsmith_f_op_f32(f32(-1f) * -726f), global0.x, global0.x)), vec4<f32>(global0.x, global0.x, _wgslsmith_f_op_f32(-310f - _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x - global0.x), -1317f)), vec4<bool>(!select(var_2.x, var_0.x, false), var_0.x, true, false))));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: f32) -> StorageBuffer {
    global0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(vec4<f32>(arg_0.a.x, 734f, global0.x, arg_0.a.x), arg_0.b, vec4<f32>(748f, 860f, arg_2, 910f)), arg_0))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x + global0.x) + -1528f))), _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(513f)), _wgslsmith_f_op_f32(min(-387f, arg_0.c.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_2))))));
    var var_0 = Struct_2(func_1(-_wgslsmith_div_vec2_i32(~vec2<i32>(0i, arg_1), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, arg_1), vec2<i32>(-16492i, arg_1)))), arg_0);
    global0 = _wgslsmith_f_op_vec4_f32(-arg_0.a);
    var var_1 = select(!select(vec3<bool>(select(false, arg_0.b, var_0.b.b), any(vec4<bool>(true, false, false, true)), true), vec3<bool>(true, !arg_0.b, true), var_0.a.b), select(select(select(vec3<bool>(true, arg_0.b, var_0.a.b), vec3<bool>(false, true, var_0.a.b), !vec3<bool>(false, arg_0.b, arg_0.b)), !select(vec3<bool>(false, var_0.b.b, true), vec3<bool>(false, arg_0.b, var_0.a.b), vec3<bool>(arg_0.b, true, false)), vec3<bool>(any(vec2<bool>(arg_0.b, arg_0.b)), var_0.b.b, all(vec2<bool>(false, arg_0.b)))), vec3<bool>(!arg_0.b, false, false), any(select(select(vec2<bool>(true, var_0.a.b), vec2<bool>(var_0.a.b, var_0.b.b), vec2<bool>(var_0.b.b, arg_0.b)), select(vec2<bool>(arg_0.b, var_0.a.b), vec2<bool>(var_0.a.b, arg_0.b), true), true))), vec3<bool>(false, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1473f))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), any(select(vec3<bool>(true, false, false), select(vec3<bool>(true, arg_0.b, false), vec3<bool>(arg_0.b, var_0.a.b, arg_0.b), var_0.a.b), true || var_0.a.b))));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1275f + 533f), -711f)), -1955f, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(select(arg_2, -1355f, all(vec4<bool>(true, true, func_1(vec2<i32>(-1i, arg_1)).b, all(vec4<bool>(false, arg_0.b, arg_0.b, false)))))));
    return StorageBuffer(reverseBits(arg_1), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(global0.ww)) + _wgslsmith_f_op_vec2_f32(-var_0.b.a.yz)) - _wgslsmith_f_op_vec2_f32(floor(global0.zz)))), abs(vec2<i32>(i32(-1i) * -2147483647i, i32(-1i) * -1i)) >> (countOneBits(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(18088u, 47908u, 4294967295u)), _wgslsmith_dot_vec4_u32(vec4<u32>(25185u, 97310u, 0u, 1u), vec4<u32>(4294967295u, 65632u, 1u, 4294967295u)))) % vec2<u32>(32u)), arg_1, _wgslsmith_sub_u32(1u, 1u));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(func_1(vec2<i32>(-1i) * -abs(vec2<i32>(u_input.a, u_input.a))), 1218i, _wgslsmith_f_op_f32(floor(1280f)));
}

