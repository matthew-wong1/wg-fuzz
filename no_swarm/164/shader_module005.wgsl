struct Struct_1 {
    a: vec4<f32>,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2() -> bool {
    var var_0 = vec2<bool>(false, all(vec2<bool>(any(vec2<bool>(true, true)), all(vec3<bool>(true, true, true)))));
    var var_1 = firstLeadingBit(_wgslsmith_clamp_i32(u_input.b.x, abs(_wgslsmith_mult_i32(0i, 1i)), -1i)) ^ -14874i;
    var_1 = _wgslsmith_sub_i32(~((81141i | (u_input.b.x >> (165876u % 32u))) << (_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(56546u, 12629u, u_input.a.x, 4294967295u), vec4<u32>(32156u, u_input.a.x, u_input.a.x, u_input.a.x)), ~vec4<u32>(5363u, u_input.a.x, u_input.a.x, 1u)) % 32u)), ~(-1i));
    var var_2 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-417f, -1535f, _wgslsmith_div_f32(2142f, -1784f), 1526f)), vec4<f32>(_wgslsmith_div_f32(1114f, 820f), 2171f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1358f, 689f)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-2675f, -265f))))), -492f);
    let var_3 = 34588u;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1981f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.b, -1213f))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -123f), var_2.a.x) - -482f)) <= var_2.b;
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<u32>, arg_2: vec4<i32>, arg_3: vec2<u32>) -> f32 {
    var var_0 = ~select(~(~reverseBits(vec2<u32>(u_input.a.x, 4294967295u))), arg_1.xx, !select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true))));
    return arg_0.x;
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<u32>, arg_2: vec3<f32>, arg_3: vec3<bool>) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2.x, 592f))), _wgslsmith_f_op_f32(floor(arg_2.x)), arg_2.x), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-283f + arg_2.x)), arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_2.x)) - 1125f), -214f), arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x))) - _wgslsmith_f_op_f32(668f * arg_2.x)));
    let var_1 = Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(640f)), var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.a.x, -898f)) - -732f), -215f), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.b, -1653f, _wgslsmith_f_op_f32(sign(arg_2.x)), -1912f), var_0.a)), var_0.a.x);
    let var_2 = ~(~(~u_input.b));
    var var_3 = vec4<i32>((i32(-1i) * -2147483647i) << (arg_1.x % 32u), 0i, _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(13566i, var_2.x, 46251i, 0i)) & (~vec4<i32>(-2147483647i, 29369i, 39149i, u_input.b.x) & vec4<i32>(u_input.b.x, var_2.x, 65373i, var_2.x)), ~(~vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, -5930i))), -_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, var_2.x, -52592i), vec3<i32>(2147483647i, u_input.b.x, u_input.b.x)) & (u_input.b.x | var_2.x), -(0i & var_2.x)));
    let var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(max(var_0.a, vec4<f32>(-1794f, -1866f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1280f)), 820f), _wgslsmith_div_f32(_wgslsmith_div_f32(1865f, -427f), _wgslsmith_f_op_f32(sign(-1256f)))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x + var_0.a.x) + -768f)))));
    return _wgslsmith_f_op_f32(-973f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)) + _wgslsmith_f_op_f32(-var_1.a.x)))));
}

fn func_1(arg_0: vec3<f32>) -> vec4<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(493f, arg_0.x, 1287f, arg_0.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-674f, arg_0.x, 402f, -1044f))))), arg_0.x);
    var var_1 = u_input.a.x;
    var_1 = 0u;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(!vec4<bool>(func_2(), any(vec3<bool>(false, true, true)), true, any(vec3<bool>(false, false, false))), vec4<u32>(_wgslsmith_div_u32(max(u_input.a.x, u_input.a.x), select(u_input.a.x, u_input.a.x, false)), reverseBits(4294967295u), ~u_input.a.x << (7359u % 32u), ~(u_input.a.x | 33842u)), vec3<f32>(_wgslsmith_f_op_f32(arg_0.x + -841f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<f32>(var_0.a.x, -1000f, var_0.b), vec4<u32>(u_input.a.x, u_input.a.x, 0u, 1u), vec4<i32>(-1i, u_input.b.x, u_input.b.x, u_input.b.x), u_input.a.xy))), arg_0.x), !select(vec3<bool>(false, true, false), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), vec3<bool>(false, true, false)))));
    var var_3 = vec2<f32>(var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(var_0.b)), -1751f))) + _wgslsmith_f_op_f32(var_2 * var_2)));
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1331f, 1000f, 676f), vec3<f32>(498f, 521f, 1208f), vec3<bool>(false, true, false))))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_4(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), ~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u), _wgslsmith_f_op_vec3_f32(vec3<f32>(677f, 1270f, -177f) * vec3<f32>(-1000f, -2892f, -465f)), vec3<bool>(false, all(vec4<bool>(true, false, true, false)), true))), -539f, all(select(vec2<bool>(true, true), vec2<bool>(false, true), all(vec4<bool>(false, true, true, false)))))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a)), _wgslsmith_f_op_vec4_f32(-var_0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_0.a.x, var_0.b, false)), var_0.a.x))) - 631f));
    let var_2 = true;
    var_0 = var_1;
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(f32(-1f) * -181f), _wgslsmith_f_op_f32(-2012f - -379f), _wgslsmith_f_op_f32(select(var_1.a.x, -234f, false))) - vec4<f32>(404f, _wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(sign(var_1.a.x)), -412f)), var_1.a)), -2087f);
    var var_3 = !(u_input.a.x < 53324u);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(firstTrailingBit(abs(vec4<u32>(u_input.a.x, u_input.a.x, 17958u, 8466u)) & firstLeadingBit(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)))), _wgslsmith_f_op_f32(-var_1.a.x));
}

