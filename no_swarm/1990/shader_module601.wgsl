struct Struct_1 {
    a: vec2<f32>,
    b: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: vec4<u32>,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: Struct_1,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_1(arg_0: i32, arg_1: vec4<u32>, arg_2: u32) -> vec3<i32> {
    return vec3<i32>(abs(35254i), arg_0, _wgslsmith_mod_i32(u_input.e, u_input.a.x) >> (~81769u % 32u)) | (_wgslsmith_div_vec3_i32(~vec3<i32>(arg_0, 1i, arg_0), -firstTrailingBit(vec3<i32>(arg_0, arg_0, u_input.a.x))) & vec3<i32>(firstTrailingBit(_wgslsmith_div_i32(arg_0, u_input.a.x)), arg_0, arg_0 | arg_0));
}

fn func_3(arg_0: f32) -> vec3<i32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-730f, _wgslsmith_f_op_f32(select(arg_0, 137f, false))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0, 246f), vec2<f32>(-669f, arg_0)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(840f, arg_0))))))), u_input.c.x);
    let var_1 = Struct_4(Struct_2(vec3<i32>(_wgslsmith_mult_i32(u_input.e, u_input.a.x), -u_input.a.x, firstLeadingBit(u_input.e & -24352i)), vec3<bool>(false, false, ~4294967295u != ~var_0.b), _wgslsmith_mod_vec4_u32(u_input.c, vec4<u32>(0u, 1u, 1u, ~u_input.b)), 13169u, Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.x, arg_0) + vec2<f32>(2442f, var_0.a.x)), _wgslsmith_mod_u32(79378u, 4294967295u))));
    var_0 = var_1.a.e;
    var var_2 = u_input.c;
    var_2 = ~vec4<u32>(~u_input.c.x, var_0.b, ~9683u, _wgslsmith_dot_vec3_u32(min(vec3<u32>(1u, var_0.b, var_2.x), var_2.yyz), ~_wgslsmith_add_vec3_u32(vec3<u32>(var_2.x, var_1.a.c.x, var_0.b), vec3<u32>(u_input.c.x, var_2.x, var_2.x))));
    return min(~vec3<i32>(35773i, ~0i, 1i), _wgslsmith_clamp_vec3_i32(~var_1.a.a & var_1.a.a, var_1.a.a, func_1(-var_1.a.a.x, ~var_1.a.c, _wgslsmith_mult_u32(var_1.a.d, 46753u))) >> (countOneBits(select(vec3<u32>(var_1.a.e.b, var_2.x, var_2.x), _wgslsmith_sub_vec3_u32(vec3<u32>(41149u, 16154u, 56516u), vec3<u32>(1u, u_input.c.x, var_1.a.c.x)), select(var_1.a.b, vec3<bool>(false, var_1.a.b.x, var_1.a.b.x), vec3<bool>(var_1.a.b.x, var_1.a.b.x, false)))) % vec3<u32>(32u)));
}

fn func_2(arg_0: Struct_5, arg_1: Struct_5) -> vec3<i32> {
    var var_0 = arg_1.c.a.x;
    let var_1 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(step(1273f, _wgslsmith_f_op_f32(-arg_1.c.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-186f, arg_0.c.a.x, false != arg_1.a.x)))), _wgslsmith_f_op_vec2_f32(-arg_0.c.a)));
    let var_2 = arg_1;
    var_0 = -828f;
    var_0 = 673f;
    return func_3(arg_1.c.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(~(-2147483647i) < _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e, 55776i, u_input.a.x) & vec3<i32>(u_input.a.x, u_input.e, 1i), func_1(-1i, vec4<u32>(0u, u_input.d, u_input.c.x, 12952u), u_input.d))) && all(vec2<bool>(true, true));
    let var_1 = vec2<bool>(var_0, all(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, var_0, var_0), vec3<bool>(false, false, true)))));
    let var_2 = vec3<i32>(-u_input.a.x, _wgslsmith_dot_vec3_i32(reverseBits(func_2(Struct_5(vec3<bool>(var_0, var_0, var_0), vec4<u32>(u_input.b, u_input.c.x, u_input.b, u_input.d), Struct_1(vec2<f32>(673f, -372f), 17786u), -17680i, 0i), Struct_5(vec3<bool>(true, true, false), u_input.c, Struct_1(vec2<f32>(100f, 1154f), u_input.b), u_input.e, 2147483647i)) >> (vec3<u32>(u_input.c.x, 4294967295u, u_input.d) % vec3<u32>(32u))), vec3<i32>(_wgslsmith_mult_i32(max(u_input.e, 30857i), ~(-2147483647i)), u_input.e, 21654i)), u_input.a.x);
    var var_3 = Struct_4(Struct_2(var_2, select(vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(true, true, var_0 & false), vec3<bool>(true, false && var_1.x, true)), vec4<u32>(1u, firstLeadingBit(u_input.d), reverseBits(u_input.c.x), _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(u_input.c.x, 66777u)), u_input.c.zw << (u_input.c.yw % vec2<u32>(32u)))), u_input.b, Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(983f, 993f)), _wgslsmith_mod_u32(9541u, u_input.d) >> (~u_input.b % 32u))));
    let var_4 = Struct_3(select(vec2<bool>(false, var_0), !var_1, true || any(!vec4<bool>(var_0, var_0, false, false))), Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(var_3.a.e.a - var_3.a.e.a))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(894f, var_3.a.e.a.x))), var_3.a.e.a), var_3.a.b.xx)), _wgslsmith_div_u32(max(u_input.c.x, reverseBits(15634u)), _wgslsmith_mult_u32(~4294967295u, var_3.a.d))), Struct_2(_wgslsmith_sub_vec3_i32(vec3<i32>(-24978i << (u_input.d % 32u), max(u_input.e, u_input.e), -var_2.x), select(vec3<i32>(-1i, 0i, var_3.a.a.x), ~vec3<i32>(var_2.x, -12561i, var_3.a.a.x), true)), select(!vec3<bool>(var_0, var_0, var_3.a.b.x), !select(vec3<bool>(true, false, var_3.a.b.x), var_3.a.b, var_3.a.b), vec3<bool>(false, false, any(var_3.a.b.yy))), u_input.c, ~firstTrailingBit(~0u), var_3.a.e));
    let var_5 = Struct_3(var_3.a.b.xx, var_4.c.e, Struct_2(func_1(var_2.x, var_3.a.c | _wgslsmith_add_vec4_u32(var_4.c.c, vec4<u32>(0u, var_3.a.d, 21516u, var_4.c.d)), 12976u), select(select(select(vec3<bool>(var_3.a.b.x, true, var_4.c.b.x), var_4.c.b, var_3.a.b), !var_4.c.b, var_4.c.b), vec3<bool>(true, true, select(var_4.c.b.x, true, true)), false), select(vec4<u32>(var_3.a.e.b, _wgslsmith_mod_u32(var_4.c.c.x, var_3.a.d), _wgslsmith_dot_vec4_u32(var_4.c.c, vec4<u32>(u_input.c.x, u_input.d, var_3.a.d, 0u)), firstTrailingBit(33928u)), vec4<u32>(var_3.a.d ^ 7164u, _wgslsmith_sub_u32(var_4.c.d, 47197u), reverseBits(4294967295u), u_input.b), select(vec4<bool>(true, true, var_1.x, var_0), !vec4<bool>(false, var_0, true, var_0), !var_3.a.b.x)), 25304u, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-647f, var_4.b.a.x)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.a.e.a.x, -143f) + vec2<f32>(var_4.b.a.x, var_4.b.a.x))), ~_wgslsmith_mod_u32(0u, var_4.c.c.x))));
    var_3 = Struct_4(Struct_2(-var_4.c.a, !var_5.c.b, u_input.c, 1172u, Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_5.b.a.x, var_4.c.e.a.x)))), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(u_input.c, var_5.c.c), vec4<u32>(var_5.c.e.b, u_input.b, var_5.c.c.x, 1u)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(4294967295u & select(~70320u, firstLeadingBit(var_4.b.b), true), var_5.c.e.b, select(_wgslsmith_dot_vec3_u32(max(u_input.c.yzz, vec3<u32>(u_input.c.x, 4386u, 14802u)), ~var_3.a.c.ywx), var_5.b.b, any(vec4<bool>(true, true, false, var_0)))));
}

