struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: vec3<bool>, arg_3: Struct_1) -> vec2<f32> {
    return arg_3.b;
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec3<i32>) -> vec2<f32> {
    let var_0 = -2164f;
    global0 = _wgslsmith_dot_vec2_u32(abs(_wgslsmith_mult_vec2_u32(abs(vec2<u32>(0u, 33101u)), vec2<u32>(4294967295u, 37630u)) & ~vec2<u32>(u_input.a, 14250u)), _wgslsmith_add_vec2_u32(vec2<u32>(1u, 0u) >> ((vec2<u32>(u_input.a, u_input.a) << (select(vec2<u32>(1707u, u_input.a), vec2<u32>(0u, u_input.a), arg_0) % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<u32>(1u, ~(u_input.a | u_input.a))));
    var var_1 = arg_1.a;
    var var_2 = arg_1;
    var var_3 = _wgslsmith_f_op_f32(max(1f, -1249f));
    return _wgslsmith_f_op_vec2_f32(-arg_1.b);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: vec2<i32>) -> vec4<bool> {
    return vec4<bool>(u_input.b.x > 0i, arg_0.a, !arg_0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.b.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(arg_2.x))))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, arg_1.b.x)) * _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_1.b.x, arg_2.x)))));
}

fn func_1(arg_0: bool) -> bool {
    let var_0 = !(any(vec3<bool>(true, true, all(vec4<bool>(true, arg_0, arg_0, arg_0)))) == true);
    let var_1 = abs(firstTrailingBit(~(~(~vec3<u32>(54588u, 86557u, 0u)))));
    let var_2 = vec2<bool>(true, any(func_4(Struct_1(u_input.b.x < -2147483647i, _wgslsmith_f_op_vec2_f32(func_2(var_0, 16576i, vec3<bool>(arg_0, var_0, var_0), Struct_1(true, vec2<f32>(248f, -225f), -1i))), u_input.b.x), Struct_1(arg_0, _wgslsmith_f_op_vec2_f32(func_3(arg_0, Struct_1(false, vec2<f32>(1846f, 138f), u_input.b.x), u_input.b.zzw)), _wgslsmith_mult_i32(2147483647i, u_input.b.x)), vec2<f32>(-1511f, -473f), u_input.b.zy)));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(arg_0, Struct_1(arg_0, vec2<f32>(-815f, -915f), -3004i), firstTrailingBit(vec3<i32>(u_input.b.x, 0i, -2147483647i)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1294f, 406f) + vec2<f32>(-377f, 635f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1627f, -881f)))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(2137f, -411f) + vec2<f32>(-1000f, 1367f))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(417f, 1663f), vec2<f32>(1166f, -1158f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1895f, -763f), vec2<f32>(2161f, -309f), var_0)))), func_4(Struct_1(var_2.x, vec2<f32>(-107f, 949f), u_input.b.x), Struct_1(var_2.x, vec2<f32>(1368f, -801f), -44920i), vec2<f32>(1f, 1f), -vec2<i32>(1i, u_input.b.x)).xy)) * vec2<f32>(634f, _wgslsmith_f_op_vec2_f32(func_2(true, ~u_input.b.x, vec3<bool>(true, false, true), Struct_1(true, vec2<f32>(-793f, -1000f), u_input.b.x))).x)));
    global0 = 32351u;
    return !(!(-1061f < _wgslsmith_f_op_vec2_f32(func_3(true, Struct_1(true, vec2<f32>(189f, 906f), -2147483647i), ~u_input.b.xwz)).x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(any(!vec2<bool>(true, func_1(true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(293f, 776f) - vec2<f32>(1023f, 715f)) * vec2<f32>(-1000f, 2085f)))), 1i);
    var var_1 = _wgslsmith_f_op_vec2_f32(func_3(false, Struct_1(all(vec3<bool>(322f > var_0.b.x, u_input.a <= 4294967295u, var_0.b.x != var_0.b.x)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b)), var_0.b)), ~(-2147483647i) ^ (_wgslsmith_sub_i32(1i, -16488i) & var_0.c)), vec3<i32>(select(-13148i, reverseBits(var_0.c), true), u_input.b.x >> (u_input.a % 32u), reverseBits(0i)) ^ u_input.b.zxw)).x;
    var var_2 = Struct_1(any(vec3<bool>(true, any(func_4(Struct_1(var_0.a, vec2<f32>(var_0.b.x, var_0.b.x), u_input.b.x), Struct_1(false, vec2<f32>(-594f, var_0.b.x), 10512i), var_0.b, u_input.b.zy)), true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.x, 255f) - _wgslsmith_f_op_vec2_f32(-var_0.b)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_0.b, vec2<f32>(var_0.b.x, var_0.b.x)))))), ~_wgslsmith_sub_i32(u_input.b.x, countOneBits(var_0.c)) ^ 6698i);
    global0 = u_input.a;
    var_0 = Struct_1(any(vec4<bool>(var_0.a, false, !var_0.a, var_0.a)) && all(vec3<bool>(true, false, false & var_0.a)), _wgslsmith_f_op_vec2_f32(-var_2.b), var_0.c);
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(1319f + -663f), _wgslsmith_f_op_f32(floor(772f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(var_2.b.x))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(799f, -104f, var_2.a)))))));
    let var_4 = vec3<u32>(_wgslsmith_mult_u32(0u, 19331u), ~firstTrailingBit(~u_input.a >> (min(1u, 4294967295u) % 32u)), (~(u_input.a >> (0u % 32u)) & select(_wgslsmith_mult_u32(u_input.a, 0u), u_input.a, false)) >> (u_input.a % 32u));
    var var_5 = Struct_1(any(select(select(vec3<bool>(false, true, true), vec3<bool>(var_2.a, false, false), false), vec3<bool>(var_0.a & true, true || var_0.a, all(vec3<bool>(var_0.a, false, false))), func_4(Struct_1(false, var_0.b, u_input.b.x), Struct_1(false, var_0.b, var_0.c), vec2<f32>(var_2.b.x, var_2.b.x), -vec2<i32>(-133i, var_2.c)).x)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(var_0.b))))), _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(2147483647i, -2147483647i, 2147483647i, 4124i) << (vec4<u32>(1u, 4294967295u, 24401u, var_4.x) % vec4<u32>(32u))) ^ _wgslsmith_dot_vec4_i32(u_input.b, u_input.b));
    var var_6 = Struct_1(true, _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_5.b, _wgslsmith_f_op_vec2_f32(-var_0.b), all(vec3<bool>(false, var_5.a, true)))), var_3.zz), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.b) + vec2<f32>(var_5.b.x, _wgslsmith_f_op_f32(f32(-1f) * -890f)))), -7495i);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~(~u_input.a), 29639u, var_4.x), firstLeadingBit(-2147483647i), ~vec4<u32>(~(~var_4.x), _wgslsmith_mult_u32(var_4.x, min(1u, 4294967295u)), 4294967295u, 1u));
}

