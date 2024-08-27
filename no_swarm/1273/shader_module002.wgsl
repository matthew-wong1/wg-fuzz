struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<u32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -398f);
    let var_1 = select(vec2<bool>(!all(select(vec2<bool>(true, false), vec2<bool>(false, false), true)), !(!all(vec3<bool>(true, true, false)))), select(!vec2<bool>(u_input.a.x > 2147483647i, global0.x == var_0), !select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true), all(vec2<bool>(true, true))), vec2<bool>(all(select(vec2<bool>(false, false), vec2<bool>(false, true), false)), false)), !(!(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)))));
    let var_2 = Struct_2(Struct_1(~((vec4<i32>(-1i, 2147483647i, -1i, u_input.a.x) ^ u_input.a) | vec4<i32>(u_input.a.x, 44453i, u_input.a.x, u_input.a.x)), _wgslsmith_clamp_vec2_u32(u_input.b.xz, ~(~u_input.b.xw), _wgslsmith_mult_vec2_u32(vec2<u32>(15146u, u_input.b.x), vec2<u32>(0u, 5657u) | arg_0.ww))), Struct_1(-_wgslsmith_add_vec4_i32(u_input.a, -vec4<i32>(u_input.a.x, 19169i, -36830i, u_input.a.x)), firstLeadingBit(firstLeadingBit(u_input.b.xy))));
    let var_3 = -1i << (~u_input.b.x % 32u);
    var var_4 = _wgslsmith_dot_vec3_u32(~(~_wgslsmith_add_vec3_u32(vec3<u32>(931u, var_2.b.b.x, arg_0.x), arg_0.yxw) & vec3<u32>(reverseBits(arg_0.x), ~var_2.b.b.x, max(4182u, 1u))), arg_0.wwz);
    return global0.x;
}

fn func_2(arg_0: u32, arg_1: vec2<u32>, arg_2: f32, arg_3: Struct_2) -> vec3<bool> {
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-214f + -1000f)) + 562f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(select(vec4<u32>(59150u, u_input.b.x, arg_3.a.b.x, u_input.b.x), vec4<u32>(arg_3.a.b.x, 1u, 1u, 4294967295u), true))) - _wgslsmith_f_op_f32(-arg_2))));
    let var_0 = _wgslsmith_f_op_f32(trunc(-677f));
    var var_1 = vec2<bool>(true, true);
    let var_2 = countOneBits(_wgslsmith_mult_vec3_i32(select(-vec3<i32>(arg_3.b.a.x, u_input.a.x, 36024i), countOneBits(~vec3<i32>(arg_3.b.a.x, -1i, -1i)), all(select(vec3<bool>(true, var_1.x, true), vec3<bool>(var_1.x, true, var_1.x), var_1.x))), select(select(-vec3<i32>(arg_3.b.a.x, u_input.a.x, u_input.a.x), vec3<i32>(-24509i, arg_3.b.a.x, u_input.a.x), select(vec3<bool>(false, false, false), vec3<bool>(var_1.x, false, true), vec3<bool>(var_1.x, var_1.x, var_1.x))), vec3<i32>(-2147483647i, arg_3.b.a.x, 1i), !(true | var_1.x))));
    var_1 = vec2<bool>(any(select(vec2<bool>(true, var_1.x), select(!vec2<bool>(var_1.x, var_1.x), select(vec2<bool>(true, false), vec2<bool>(var_1.x, false), vec2<bool>(true, var_1.x)), any(vec4<bool>(var_1.x, true, false, var_1.x))), vec2<bool>(true, u_input.b.x < arg_3.a.b.x))), true);
    return vec3<bool>(true, false, var_1.x);
}

fn func_1(arg_0: vec2<u32>) -> Struct_1 {
    var var_0 = any(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), func_2(24112u, arg_0, -1485f, Struct_2(Struct_1(vec4<i32>(u_input.a.x, -50430i, -55675i, u_input.a.x), arg_0), Struct_1(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -1651i), vec2<u32>(arg_0.x, 0u))))), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), select(false && any(vec3<bool>(false, true, true)), true, true)));
    var_0 = true;
    var var_1 = u_input.a.xw;
    var_0 = true;
    var_1 = vec2<i32>(-(i32(-1i) * -(~u_input.a.x)), 1i);
    return Struct_1(~u_input.a, ~vec2<u32>(1u, _wgslsmith_clamp_u32(_wgslsmith_div_u32(0u, 1u), u_input.b.x >> (u_input.b.x % 32u), ~arg_0.x)));
}

fn func_4(arg_0: Struct_1) -> f32 {
    var var_0 = Struct_3(~vec2<u32>(~4294967295u, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_0.b.x), vec2<u32>(4294967295u, u_input.b.x)), 1u)), arg_0, Struct_2(arg_0, arg_0), global0.x);
    var_0 = Struct_3(vec2<u32>(1u, _wgslsmith_clamp_u32(~var_0.a.x | 5304u, arg_0.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 28272u), _wgslsmith_clamp_vec2_u32(arg_0.b, vec2<u32>(u_input.b.x, var_0.a.x), vec2<u32>(42390u, arg_0.b.x))))), Struct_1(vec4<i32>(-9143i, _wgslsmith_mult_i32(0i, arg_0.a.x) ^ (u_input.a.x | -53471i), 0i, -var_0.c.b.a.x), u_input.b.wx ^ arg_0.b), var_0.c, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(942f)))));
    var_0 = Struct_3(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.b.x, ~(~var_0.c.b.b.x)), vec2<u32>(arg_0.b.x, 0u)), var_0.c.a, Struct_2(Struct_1(-(~vec4<i32>(arg_0.a.x, 1i, 27485i, 14479i)), vec2<u32>(var_0.b.b.x, ~u_input.b.x)), func_1(firstTrailingBit(~var_0.c.b.b))), var_0.d);
    let var_1 = Struct_2(func_1(vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.b.x, var_0.b.b.x), 37895u), 13066u)), arg_0);
    var var_2 = false;
    return _wgslsmith_div_f32(var_0.d, global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))))), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_4(func_1(vec2<u32>(0u, 1u)))), -1878f, func_2(_wgslsmith_add_u32(4294967295u, u_input.b.x), func_1(u_input.b.xy).b, global0.x, Struct_2(Struct_1(u_input.a, u_input.b.yy), Struct_1(vec4<i32>(0i, 2147483647i, u_input.a.x, -19651i), u_input.b.yy))).x)), global0.x));
    let var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(565f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-709f, global0.x))))), 120f, global0.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, global0.x, global0.x, 532f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, -390f) + vec4<f32>(1231f, 446f, global0.x, -774f))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, -914f, 687f, global0.x), vec4<f32>(-324f, global0.x, global0.x, 188f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.x, 902f, 660f, -964f))), vec4<bool>(true, true, true, true))))));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -265f))), var_0.x);
    let var_1 = -1256f;
    let var_2 = false;
    global0 = var_0.yw;
    var var_3 = func_1(vec2<u32>(1u >> (~u_input.b.x % 32u), _wgslsmith_sub_u32(firstLeadingBit(u_input.b.x), u_input.b.x >> (u_input.b.x % 32u)) >> (countOneBits(firstLeadingBit(89525u)) % 32u)));
    let var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_u32(~(u_input.b.x ^ var_3.b.x), _wgslsmith_div_u32(var_3.b.x, min(var_3.b.x, u_input.b.x))), 2147483647i, vec4<i32>(var_3.a.x, _wgslsmith_div_i32(-1i, _wgslsmith_mult_i32(var_3.a.x, 15499i)) ^ func_1(vec2<u32>(94652u, 26005u)).a.x, u_input.a.x, _wgslsmith_mult_i32(var_3.a.x, func_1(_wgslsmith_mod_vec2_u32(vec2<u32>(9499u, 39384u), var_3.b)).a.x)));
}

