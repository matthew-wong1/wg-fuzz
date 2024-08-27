struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<u32>, arg_2: Struct_2) -> u32 {
    var var_0 = -(vec4<i32>(u_input.b, _wgslsmith_add_i32(u_input.b ^ -2147483647i, abs(-1i)), _wgslsmith_mult_i32(u_input.b, -28210i) << (_wgslsmith_add_u32(0u, arg_1.x) % 32u), 1i) | vec4<i32>(u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 2147483647i, u_input.b), vec3<i32>(-89422i, -30898i, 1i)) ^ 1i, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, -2147483647i, 28019i), vec3<i32>(-2147483647i, -2147483647i, u_input.c.x), u_input.c), vec3<i32>(u_input.c.x, 1i, u_input.a)), u_input.c.x));
    let var_1 = _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(19496i, ~var_0.x, -var_0.x, -u_input.a), _wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(var_0.x, -23530i, u_input.b, var_0.x)), vec4<i32>(1i, -2147483647i, u_input.a, u_input.c.x))), vec4<i32>(var_0.x, -countOneBits(28868i), firstTrailingBit(~(-2147483647i)), ~(var_0.x << (7441u % 32u)))), select(_wgslsmith_add_vec4_i32(abs(abs(vec4<i32>(var_0.x, u_input.b, var_0.x, 1i))), ~vec4<i32>(19858i, u_input.a, 4888i, u_input.c.x)), countOneBits(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, u_input.b, var_0.x, var_0.x) & vec4<i32>(u_input.a, 1i, var_0.x, u_input.c.x), vec4<i32>(var_0.x, 5187i, -28132i, 2147483647i) << (vec4<u32>(arg_2.b, 17273u, 9817u, arg_1.x) % vec4<u32>(32u)))), arg_2.a.x >= _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.a.x, arg_2.a.x) * 1f)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2685f - 490f) * arg_2.a.x) - -231f));
    let var_3 = Struct_2(vec3<f32>(-661f, 848f, arg_2.a.x), reverseBits(~arg_1.x));
    let var_4 = arg_2;
    return abs(abs(~(~1u)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: vec4<i32>) -> bool {
    var var_0 = _wgslsmith_add_u32(func_3(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), all(vec4<bool>(true, false, false, true)))), min(vec4<u32>(select(1u, 42407u, true), ~98871u, 5442u, 1u), ~vec4<u32>(18633u, 0u, 4294967295u, arg_0.b)), Struct_2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_2.x, -114f, -762f))), arg_1.b | _wgslsmith_add_u32(arg_1.b, arg_0.b))), 4294967295u);
    var_0 = 0u;
    var var_1 = Struct_1(true, min(firstTrailingBit(~vec2<u32>(arg_1.b, 1u)) | _wgslsmith_add_vec2_u32(~vec2<u32>(4405u, arg_1.b), min(vec2<u32>(arg_0.b, 25139u), vec2<u32>(0u, arg_0.b))), _wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.b, arg_1.b) | vec2<u32>(arg_0.b, arg_1.b), min(vec2<u32>(arg_1.b, 8828u), vec2<u32>(7535u, 57613u))) >> ((vec2<u32>(arg_0.b, 33225u) & ~vec2<u32>(43924u, arg_1.b)) % vec2<u32>(32u))), select(!vec2<bool>(all(vec2<bool>(true, true)), true), select(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), true), true), vec2<bool>((arg_3.x << (73855u % 32u)) < _wgslsmith_dot_vec4_i32(arg_3, vec4<i32>(9001i, u_input.b, arg_3.x, 2147483647i)), true & (arg_1.b >= 64862u))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(arg_0.a - vec3<f32>(_wgslsmith_f_op_f32(select(755f, _wgslsmith_f_op_f32(-arg_1.a.x), true)), _wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(select(arg_2.x, arg_0.a.x, false))), _wgslsmith_f_op_f32(ceil(-840f)))), select(firstTrailingBit(_wgslsmith_sub_u32(min(36569u, 50945u), 116412u | var_1.b.x)), var_1.b.x, true));
    return any(select(vec3<bool>(true, var_1.c.x, -24891i >= u_input.b), !(!vec3<bool>(var_1.a, false, false)), !(!select(vec3<bool>(true, false, false), vec3<bool>(var_1.c.x, false, true), var_1.c.x))));
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    return Struct_2(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -778f)), _wgslsmith_f_op_f32(f32(-1f) * -953f)), -153f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-278f, -1349f)), _wgslsmith_f_op_f32(round(1636f)))))), 130403u);
}

fn func_1() -> f32 {
    var var_0 = vec3<i32>(21484i, u_input.a, u_input.a);
    var var_1 = func_4(Struct_1(func_2(Struct_2(vec3<f32>(-717f, -1177f, -350f), 24390u), Struct_2(vec3<f32>(-1658f, -561f, -211f), 4294967295u), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(402f, -1402f, -2157f), vec3<f32>(1159f, 445f, -539f))), reverseBits(vec4<i32>(-981i, 3780i, var_0.x, u_input.b))) & true, vec2<u32>(1u, 1u), !vec2<bool>(false, func_2(Struct_2(vec3<f32>(1610f, -369f, 627f), 4294967295u), Struct_2(vec3<f32>(1414f, -1086f, 287f), 0u), vec3<f32>(-1000f, 723f, -1000f), vec4<i32>(-1i, var_0.x, 5411i, var_0.x)))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)))) * _wgslsmith_f_op_f32(max(func_4(Struct_1(select(true, true, false), ~vec2<u32>(var_1.b, 1u), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)))).a.x, -1000f)));
    var var_3 = func_4(Struct_1(true, abs(~vec2<u32>(var_1.b, var_1.b)), vec2<bool>(u_input.c.x >= var_0.x, false)));
    var var_4 = ~0i;
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_3.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - -632f), _wgslsmith_f_op_f32(round(-458f))))), 1f, _wgslsmith_f_op_f32(f32(-1f) * -424f));
    var var_1 = u_input.c.x;
    var_1 = _wgslsmith_clamp_i32(u_input.c.x, -22347i, 20202i);
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, _wgslsmith_div_f32(var_0.x, -535f), _wgslsmith_f_op_f32(func_1()))) + vec3<f32>(var_0.x, func_4(Struct_1(true, select(vec2<u32>(1u, 63718u), vec2<u32>(0u, 0u), vec2<bool>(false, false)), vec2<bool>(true, true))).a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(func_1())))))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(func_4(Struct_1(false, vec2<u32>(0u, 27723u), vec2<bool>(false, false))).a.x)), _wgslsmith_f_op_f32(floor(-1000f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-127f)) - _wgslsmith_f_op_f32(ceil(-486f))) + var_0.x) + _wgslsmith_div_f32(var_0.x, var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~(-select(vec4<i32>(2147483647i, 11491i, u_input.a, u_input.c.x), vec4<i32>(2147483647i, 1i, u_input.b, u_input.a), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, 1173f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2, var_0.x), vec2<f32>(var_0.x, 674f), false))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_0.yz, var_0.yy, true)) + _wgslsmith_div_vec2_f32(vec2<f32>(-333f, var_2), var_0.xz))), vec2<f32>(_wgslsmith_div_f32(-617f, -1746f), var_2)), firstTrailingBit(_wgslsmith_div_i32(u_input.c.x, -1i ^ u_input.c.x)));
}

