struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: vec2<f32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec4<f32>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: u32,
    c: Struct_2,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 10>;

var<private> global1: array<Struct_2, 8>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_1(arg_0: i32, arg_1: Struct_5, arg_2: Struct_4, arg_3: bool) -> f32 {
    global0 = array<Struct_2, 10>();
    global1 = array<Struct_2, 8>();
    var var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_2.c * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(arg_2.c, vec4<f32>(513f, arg_1.c.b.c.x, 387f, arg_1.c.b.c.x)))))))));
    var var_1 = min(arg_2.a.a.zw, -u_input.b.xx);
    var var_2 = u_input.a.x;
    return _wgslsmith_f_op_f32(-var_0.x);
}

fn func_3(arg_0: vec3<bool>) -> bool {
    let var_0 = Struct_5(vec4<bool>(!arg_0.x, select(arg_0.x, true, true), (false && (u_input.a.x <= u_input.a.x)) || !arg_0.x, arg_0.x & arg_0.x), _wgslsmith_mult_u32(firstLeadingBit(max(1u, u_input.a.x)), 40677u) & ((_wgslsmith_dot_vec2_u32(u_input.a, u_input.a) << (_wgslsmith_dot_vec3_u32(vec3<u32>(47418u, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, 0u)) % 32u)) ^ (firstLeadingBit(u_input.a.x) & reverseBits(u_input.a.x))), global1[_wgslsmith_index_u32(1u, 8u)], u_input.c);
    global1 = array<Struct_2, 8>();
    global1 = array<Struct_2, 8>();
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.c.b.c.x)));
    var var_2 = var_0.a.x;
    return !(!select(true, var_0.c.b.b.x, select(arg_0.x & arg_0.x, var_0.a.x, arg_0.x)));
}

fn func_2() -> vec4<bool> {
    var var_0 = Struct_1(_wgslsmith_add_vec4_i32(u_input.b, abs(vec4<i32>(u_input.b.x, -11776i, u_input.b.x, 2147483647i))) | vec4<i32>(1i, -_wgslsmith_div_i32(u_input.b.x, -2147483647i), _wgslsmith_dot_vec3_i32(u_input.b.zxx, vec3<i32>(u_input.b.x, 2147483647i, u_input.b.x)), _wgslsmith_mult_i32(u_input.d, u_input.c.x & u_input.c.x)), select(select(select(vec3<bool>(false, true, false), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), vec3<bool>(all(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true))), func_3(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false)), any(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false))), true), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-618f, 1826f)) * vec2<f32>(1f, 1f)))), vec2<f32>(2017f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -535f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1008f, 563f)))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-var_0.d);
    global0 = array<Struct_2, 10>();
    global1 = array<Struct_2, 8>();
    let var_2 = Struct_4(Struct_1(-abs(var_0.a), var_0.b, vec2<f32>(var_0.d.x, 489f), vec2<f32>(_wgslsmith_div_f32(var_0.c.x, _wgslsmith_f_op_f32(-var_0.d.x)), _wgslsmith_f_op_f32(min(var_0.c.x, 145f)))), vec3<bool>(!any(vec4<bool>(false, var_0.b.x, var_0.b.x, var_0.b.x)), !any(select(vec4<bool>(var_0.b.x, var_0.b.x, true, var_0.b.x), vec4<bool>(false, true, true, var_0.b.x), true)), select(true, var_0.b.x, true)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.x, -469f, var_0.c.x, var_0.d.x), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.x, var_0.d.x, -1662f, -1010f))))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, var_0.d.x, var_0.c.x, var_1.x) * vec4<f32>(var_1.x, var_0.c.x, -344f, var_0.c.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.x, var_0.d.x, 390f, var_0.d.x) + vec4<f32>(var_0.c.x, 517f, var_1.x, 888f)))))), false)));
    return !select(!select(select(vec4<bool>(var_0.b.x, true, var_2.b.x, var_0.b.x), vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, false), var_2.a.b.x), select(vec4<bool>(false, var_2.b.x, var_2.a.b.x, var_2.b.x), vec4<bool>(false, false, var_0.b.x, var_2.b.x), vec4<bool>(false, false, false, false)), vec4<bool>(var_0.b.x, var_2.b.x, var_2.b.x, var_2.a.b.x)), !(!select(vec4<bool>(true, var_2.a.b.x, var_2.b.x, true), vec4<bool>(var_2.b.x, true, true, true), var_0.b.x)), -25328i != var_2.a.a.x);
}

fn func_4(arg_0: Struct_5, arg_1: vec3<bool>) -> f32 {
    let var_0 = Struct_1(_wgslsmith_mod_vec4_i32(arg_0.c.b.a, u_input.b), arg_0.c.b.b, arg_0.c.b.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-448f, _wgslsmith_div_f32(arg_0.c.b.d.x, arg_0.c.b.d.x))))));
    let var_1 = all(func_2());
    let var_2 = arg_0.c.b;
    let var_3 = max(abs(var_2.a) << (_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, arg_0.b, arg_0.b), vec4<u32>(31843u, u_input.a.x, arg_0.b, u_input.a.x)), ~vec4<u32>(arg_0.b, arg_0.b, 67261u, arg_0.b)) % vec4<u32>(32u)), (~u_input.b >> (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 4289u), vec4<u32>(3568u, arg_0.b, 4294967295u, u_input.a.x)) % vec4<u32>(32u))) ^ -max(u_input.b, var_0.a)) | vec4<i32>(1i, u_input.b.x, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(var_0.a.zy, vec2<i32>(2147483647i, 67353i)), var_2.a.x), var_2.a.x, -firstTrailingBit(var_0.a.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.a.x, var_2.a.x, u_input.b.x, arg_0.d.x) & var_0.a, ~(-arg_0.c.b.a)));
    var var_4 = !var_0.b;
    return _wgslsmith_f_op_f32(-var_2.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-1438f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-799f * 578f), _wgslsmith_f_op_f32(f32(-1f) * -282f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-404f, -930f)), _wgslsmith_f_op_f32(min(856f, 897f)), u_input.a.x > 20927u)))));
    let var_1 = true | any(vec3<bool>(!(u_input.a.x != 1u), any(vec4<bool>(true, true, false, false)), true));
    var_0 = 478f;
    var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1533f, -254f), _wgslsmith_f_op_f32(max(-434f, 2666f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(-1i, Struct_5(vec4<bool>(false, var_1, var_1, var_1), 16381u, global1[_wgslsmith_index_u32(13075u, 8u)], u_input.b.yz), Struct_4(Struct_1(u_input.b, vec3<bool>(true, var_1, false), vec2<f32>(202f, 237f), vec2<f32>(451f, -673f)), vec3<bool>(var_1, var_1, false), vec4<f32>(1043f, -364f, -253f, 371f)), false)))))), _wgslsmith_f_op_f32(func_4(Struct_5(select(vec4<bool>(var_1, true, true, var_1), func_2(), !vec4<bool>(true, var_1, var_1, var_1)), u_input.a.x, global1[_wgslsmith_index_u32(15904u, 8u)], vec2<i32>(_wgslsmith_sub_i32(u_input.c.x, u_input.c.x), ~(-10262i))), vec3<bool>(func_2().x & var_1, func_2().x, true))), !(!var_1)));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(326f + _wgslsmith_f_op_f32(f32(-1f) * -109f))), 1971f);
    let var_3 = Struct_5(!vec4<bool>(true, (u_input.a.x >= u_input.a.x) & var_1, true, false), ~(~4294967295u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 22054u, 3129u), abs(vec4<u32>(u_input.a.x, 19615u, 53964u, 25687u)))), global1[_wgslsmith_index_u32(u_input.a.x, 8u)], vec2<i32>(-reverseBits(-u_input.d), i32(-1i) * -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, u_input.d, u_input.c.x), u_input.b.xyw)));
    global1 = array<Struct_2, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1571u, var_3.b, 21167u), vec3<u32>(0u, 66390u, 28809u)), ~7125u), 21673u), var_3.c.b.c.x, vec2<i32>(-1i) * -(~vec2<i32>(-1i, -5316i)));
}

