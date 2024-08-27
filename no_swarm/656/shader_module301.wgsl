struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: f32,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: vec4<bool>,
    d: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2) -> u32 {
    var var_0 = ~_wgslsmith_clamp_vec4_u32(abs(~countOneBits(vec4<u32>(0u, u_input.a, 53764u, arg_0.b.x))), vec4<u32>(4294967295u, u_input.a, arg_0.b.x & ~4294967295u, 1u), _wgslsmith_mod_vec4_u32(abs(abs(vec4<u32>(arg_0.b.x, 4294967295u, 1u, u_input.a))), vec4<u32>(0u, u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(44779u, u_input.a), arg_0.b), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u), arg_0.b))));
    let var_1 = Struct_2(arg_0.a, countOneBits(var_0.yz), arg_0.a.a.wxw);
    var var_2 = select(select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false))), vec3<bool>(true, true, true)), vec3<bool>(true & all(vec4<bool>(false, false, true, true)), all(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false))), -1i == (~1i & -arg_0.a.d)), select(vec3<bool>(true, any(vec4<bool>(false, false, true, true)), !any(vec2<bool>(false, false))), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), false)))));
    var_2 = !(!(!select(select(vec3<bool>(var_2.x, var_2.x, false), vec3<bool>(true, false, var_2.x), false), select(vec3<bool>(var_2.x, var_2.x, false), vec3<bool>(false, var_2.x, var_2.x), vec3<bool>(false, true, true)), false)));
    let var_3 = max(~_wgslsmith_add_i32(abs(~1i), ~arg_0.a.d), _wgslsmith_div_i32(abs(-(~arg_0.a.a.x)), 2147483647i));
    return 1u;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>) -> Struct_1 {
    let var_0 = Struct_4(Struct_1(countOneBits(arg_0.a), arg_0.c, _wgslsmith_f_op_f32(arg_0.b - arg_0.c), -1i & abs(_wgslsmith_add_i32(arg_0.e, arg_0.a.x)), arg_0.d));
    let var_1 = var_0.a;
    let var_2 = Struct_2(var_1, vec2<u32>(u_input.a, func_3(Struct_2(var_1, vec2<u32>(u_input.a, u_input.a), _wgslsmith_mult_vec3_i32(vec3<i32>(-44723i, -61300i, arg_0.a.x), var_0.a.a.zwz)))), vec3<i32>(arg_0.e, var_1.a.x, _wgslsmith_mult_i32(-10497i, _wgslsmith_dot_vec3_i32(vec3<i32>(6323i, 68301i, arg_0.e), vec3<i32>(-83491i, var_0.a.e, var_1.d)) >> (u_input.a % 32u))));
    let var_3 = ~_wgslsmith_sub_vec2_u32(abs(_wgslsmith_add_vec2_u32(~var_2.b, var_2.b ^ var_2.b)), ~(~(vec2<u32>(var_2.b.x, 96822u) & vec2<u32>(4294967295u, u_input.a))));
    let var_4 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(var_1.c)))), var_2.a.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(669f - 372f))), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(arg_0.c)))), -1000f)));
    return Struct_1(select(var_1.a, reverseBits(vec4<i32>(~var_2.c.x, abs(-19826i), _wgslsmith_clamp_i32(arg_0.d, var_0.a.a.x, var_0.a.e), _wgslsmith_div_i32(arg_0.d, var_0.a.d))), !select(!vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true), select(vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), arg_1.x), true)), 545f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_0.a.b, 1297f)), _wgslsmith_f_op_f32(-var_1.b))), -205f)), _wgslsmith_add_i32(-(_wgslsmith_dot_vec4_i32(var_2.a.a, vec4<i32>(var_1.d, var_1.e, var_0.a.e, var_0.a.e)) | -19025i), -var_2.a.e), 1i);
}

fn func_1(arg_0: bool, arg_1: vec4<f32>, arg_2: vec3<bool>) -> Struct_1 {
    let var_0 = 1f;
    var var_1 = func_2(Struct_1(-countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(-27860i, -46309i, -2147483647i, 0i), vec4<i32>(59778i, 17604i, -1i, 2147483647i))), 1383f, arg_1.x, 1i, max(_wgslsmith_div_i32(-12818i, 21759i), -81111i) << (_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(u_input.a, u_input.a, 63764u), 0u, u_input.a ^ u_input.a) % 32u)), select(!(!select(arg_2, vec3<bool>(false, true, false), arg_2)), vec3<bool>(any(select(vec4<bool>(arg_0, arg_2.x, true, false), vec4<bool>(true, arg_2.x, arg_0, true), vec4<bool>(arg_2.x, arg_2.x, false, true))), all(!arg_2), arg_0), arg_2));
    let var_2 = var_0;
    let var_3 = var_1.d;
    global0 = -var_1.d;
    return func_2(Struct_1(-_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_1.a.x, -2147483647i, var_1.a.x, 12589i), vec4<i32>(var_1.d, var_1.a.x, var_1.e, var_1.a.x)), vec4<i32>(var_1.d, var_1.a.x, -41913i, var_1.e)), var_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_2)) * 1f), -2147483647i, var_1.e), arg_2);
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: vec4<u32>) -> Struct_3 {
    var var_0 = Struct_4(Struct_1(~(-vec4<i32>(arg_1.a.e, arg_1.a.d, arg_1.a.a.x, 0i)), _wgslsmith_f_op_f32(-499f + arg_1.a.b), arg_1.a.c, arg_1.a.e, countOneBits(1i)));
    let var_1 = arg_1;
    let var_2 = Struct_1(-(~(~vec4<i32>(arg_1.a.e, var_0.a.a.x, arg_1.a.e, 0i))), 607f, _wgslsmith_f_op_f32(arg_1.a.b - arg_1.a.b), -_wgslsmith_div_i32(-(~2147483647i), -2147483647i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -56361i, -37412i, var_1.a.e), arg_1.a.a)), -37047i);
    var_0 = Struct_4(arg_1.a);
    var var_3 = func_2(Struct_1(_wgslsmith_mult_vec4_i32(firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, var_2.e, var_2.e, arg_1.a.d), vec4<i32>(var_1.a.d, arg_1.a.e, var_2.d, var_2.a.x))), ~abs(var_2.a)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(arg_1.a.b)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-2185f, -148f, true)))), 1i | var_2.d, -abs(var_2.e >> (8570u % 32u))), !select(select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true), false), vec3<bool>(false, true, all(vec3<bool>(false, false, false))), select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true), any(vec3<bool>(false, false, false)))));
    return Struct_3(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(floor(var_0.a.c)), var_3.c, _wgslsmith_f_op_f32(trunc(-303f)), _wgslsmith_f_op_f32(-arg_1.a.c)))))), Struct_2(func_1(firstLeadingBit(u_input.a) == _wgslsmith_mod_u32(0u, 41906u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-621f, 705f, var_1.a.c, var_0.a.b)) + vec4<f32>(var_1.a.b, arg_1.a.c, -1262f, -511f)), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true)))), arg_2.zz, _wgslsmith_add_vec3_i32(-(vec3<i32>(arg_1.a.d, 0i, var_1.a.a.x) | var_1.a.a.zwz), firstTrailingBit(~vec3<i32>(var_3.d, -61658i, var_2.e)))), select(vec4<bool>(true, true, true, all(vec3<bool>(true, false, false))), !(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), true)), select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, false), 10954u < arg_2.x), vec4<bool>(true, true, true, true), any(vec3<bool>(true, true, true)))), arg_2.xy);
}

fn func_5(arg_0: vec2<u32>, arg_1: u32, arg_2: Struct_3, arg_3: Struct_2) -> StorageBuffer {
    var var_0 = all(arg_2.c.xz);
    var var_1 = vec4<u32>(0u, ~62294u, ~_wgslsmith_clamp_u32(~(arg_3.b.x >> (14299u % 32u)), ~abs(arg_0.x), ~(~4294967295u)), u_input.a);
    var var_2 = vec3<u32>(~0u, 6276u, 1u);
    var_2 = ~(~select(vec3<u32>(~u_input.a, ~4294967295u, ~var_2.x), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, var_1.x, arg_3.b.x), var_1.yww | vec3<u32>(arg_0.x, arg_2.d.x, 4294967295u)), any(!arg_2.c.wwx)));
    var var_3 = Struct_4(Struct_1(-vec4<i32>(arg_2.b.c.x, arg_2.b.a.e, arg_2.b.a.a.x, arg_3.a.a.x) & select(arg_3.a.a & arg_3.a.a, _wgslsmith_div_vec4_i32(arg_2.b.a.a, arg_3.a.a), arg_2.c.x), arg_3.a.c, func_2(func_1(arg_3.b.x < u_input.a, arg_2.a, !arg_2.c.wyw), !vec3<bool>(true, false, arg_2.c.x)).b, arg_2.b.a.d, _wgslsmith_mult_i32(0i, arg_2.b.c.x)));
    return StorageBuffer(_wgslsmith_f_op_f32(sign(-1449f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~vec4<i32>(2147483647i, -(i32(-1i) * -31294i), select(1i, 2147483647i, true), countOneBits(reverseBits(1i))), _wgslsmith_f_op_f32(f32(-1f) * -1884f), -1449f, 1418i, ~(~(-1i)));
    let x = u_input.a;
    s_output = func_5(_wgslsmith_div_vec2_u32(vec2<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 0u), vec3<u32>(8140u, u_input.a, 0u)), 4294967295u), vec2<u32>(271u, u_input.a)), 38256u, func_4(19230u, Struct_4(func_1(all(vec4<bool>(false, false, false, true)), vec4<f32>(-271f, 177f, -292f, var_0.b), vec3<bool>(true, true, true))), ~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 0u, 18646u, u_input.a), vec4<u32>(10486u, u_input.a, u_input.a, 113057u), vec4<u32>(u_input.a, 4294967295u, 16859u, 11647u)))), func_4(_wgslsmith_mod_u32(1u, u_input.a) | u_input.a, Struct_4(Struct_1(~vec4<i32>(-76064i, var_0.d, var_0.d, 2147483647i), func_1(true, vec4<f32>(var_0.c, 274f, 1035f, 1000f), vec3<bool>(true, true, true)).b, var_0.c, 18104i, var_0.d)), ~reverseBits(vec4<u32>(u_input.a, u_input.a, u_input.a, 48591u))).b);
}

