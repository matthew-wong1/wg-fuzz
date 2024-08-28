struct Struct_1 {
    a: vec3<i32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec2<i32>,
    d: vec3<f32>,
    e: vec3<u32>,
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_1) -> vec3<i32> {
    let var_0 = ~(~firstLeadingBit(~51805u));
    let var_1 = arg_0;
    let var_2 = vec3<bool>(all(vec4<bool>(!any(vec3<bool>(false, false, true)), true, true, !all(vec3<bool>(true, true, true)))), all(vec2<bool>(select(true, all(vec3<bool>(true, true, true)), true), true)), true);
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(floor(var_1.b)), var_1.b, 1000f, _wgslsmith_f_op_f32(step(var_1.b, _wgslsmith_f_op_f32(-arg_0.b))));
    let var_4 = var_1;
    return countOneBits(firstLeadingBit(var_4.a));
}

fn func_2(arg_0: bool, arg_1: vec3<u32>, arg_2: Struct_1) -> vec3<i32> {
    let var_0 = _wgslsmith_add_u32(~abs(reverseBits(4294967295u)), arg_1.x);
    let var_1 = Struct_1(func_3(arg_2), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-897f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_2.b)) * _wgslsmith_f_op_f32(trunc(-1000f)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b) * _wgslsmith_f_op_f32(select(244f, 1171f, false)))), var_1.b));
    let var_3 = select(true, true, arg_0);
    let var_4 = select(_wgslsmith_mult_vec4_u32(select(countOneBits(vec4<u32>(arg_1.x, arg_1.x, var_0, 1u)), firstLeadingBit(vec4<u32>(var_0, 1u, arg_1.x, arg_1.x)), true), ~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_0, 1u, var_0), vec4<u32>(54834u, 24010u, 3398u, arg_1.x)), ~var_0, _wgslsmith_dot_vec2_u32(arg_1.zx, arg_1.yx), abs(arg_1.x))), ~vec4<u32>(firstTrailingBit(abs(48270u)), 4294967295u, 211u, arg_1.x), select(select(vec4<bool>(true, !arg_0, var_3, false), !select(vec4<bool>(arg_0, false, true, arg_0), vec4<bool>(false, var_3, true, arg_0), var_3), !vec4<bool>(arg_0, var_3, true, false)), select(vec4<bool>(arg_0, !arg_0, var_3 | var_3, any(vec2<bool>(arg_0, arg_0))), select(select(vec4<bool>(var_3, arg_0, arg_0, true), vec4<bool>(var_3, var_3, true, var_3), var_3), !vec4<bool>(true, true, var_3, var_3), var_3), select(!vec4<bool>(true, var_3, var_3, arg_0), select(vec4<bool>(var_3, arg_0, var_3, false), vec4<bool>(false, false, true, var_3), arg_0), !var_3)), !(func_3(arg_2).x <= func_3(var_1).x)));
    return ~var_1.a;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>) -> Struct_1 {
    var var_0 = any(arg_1.yxz);
    let var_1 = vec4<i32>(69540i << (~(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 17704u, 16042u, 0u), vec4<u32>(10339u, 19082u, 12020u, 28153u))) % 32u), reverseBits(u_input.b), -1i, _wgslsmith_dot_vec3_i32(arg_0.a, ~(-func_2(arg_1.x, vec3<u32>(4294967295u, 19492u, 1u), Struct_1(vec3<i32>(-65053i, u_input.b, -19467i), 967f)))));
    var_0 = (~_wgslsmith_mult_u32(8496u, 0u) >= firstTrailingBit(1u)) & true;
    var var_2 = Struct_1(vec3<i32>(func_2(true, vec3<u32>(1u, 51351u, 0u), Struct_1(vec3<i32>(-2147483647i, -64259i, arg_0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -483f))).x, ~firstTrailingBit(~20992i), 31808i), _wgslsmith_f_op_f32(arg_0.b - _wgslsmith_f_op_f32(trunc(-2428f))));
    let var_3 = Struct_1(-_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, arg_0.a.x, countOneBits(u_input.a)), vec3<i32>(_wgslsmith_div_i32(2147483647i, -2147483647i), -var_1.x, -59891i)), arg_0.b);
    return Struct_1(var_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.b + var_3.b)), _wgslsmith_f_op_f32(-arg_0.b))) + -824f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_1(vec3<i32>(u_input.b, u_input.a, abs(-46980i)), _wgslsmith_f_op_f32(1000f + 329f)), !(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true)))));
    var_0 = Struct_1(var_0.a, var_0.b);
    var_0 = Struct_1(_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(var_0.a, _wgslsmith_sub_vec3_i32(firstLeadingBit(vec3<i32>(-25418i, u_input.b, 2147483647i)), -vec3<i32>(-2147483647i, var_0.a.x, u_input.a))), var_0.a), var_0.b);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(269f, var_0.b), vec2<f32>(390f, -1000f)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1244f), var_0.b))) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(383f, _wgslsmith_f_op_f32(-var_0.b))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(368f - var_0.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1049f, var_0.b)))))));
    var_0 = func_1(Struct_1(select(vec3<i32>(var_0.a.x, u_input.a, 0i) | vec3<i32>(-2147483647i, u_input.a, -1i), _wgslsmith_sub_vec3_i32(vec3<i32>(-42492i, var_0.a.x, 1i), var_0.a), vec3<bool>(true, false, false)) & _wgslsmith_add_vec3_i32(~var_0.a, vec3<i32>(0i, u_input.b, -2147483647i)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.x - 1f)))), vec4<bool>(false, false, !(false & all(vec4<bool>(true, false, false, false))), false));
    var var_2 = vec4<f32>(var_0.b, func_1(Struct_1(vec3<i32>(func_3(Struct_1(var_0.a, var_0.b)).x, i32(-1i) * -19911i, 12649i & u_input.a), _wgslsmith_f_op_f32(max(var_0.b, _wgslsmith_f_op_f32(var_1.x - var_1.x)))), vec4<bool>(false, true, true, all(vec4<bool>(false, false, false, true)))).b, -510f, _wgslsmith_f_op_f32(-var_1.x));
    let var_3 = func_1(func_1(Struct_1(var_0.a, var_1.x), vec4<bool>(all(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false))), 1u <= firstTrailingBit(1u), select(true, 2184f <= var_1.x, true), (47614i > u_input.a) & true)), vec4<bool>(true, true, true, true));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(1u, 1u, 1u), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.x)) - _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1055f - -939f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + 225f))), var_0.a.zx, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(353f, var_0.b, 1443f)), var_2.yyz, vec3<bool>(true, true, true))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2136f, -1386f, -775f)), var_2.xwy)))), vec3<u32>(1u, 1u, 1u));
}

