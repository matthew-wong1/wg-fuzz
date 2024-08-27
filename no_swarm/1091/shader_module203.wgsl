struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<f32>,
    d: vec3<u32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: u32,
    b: bool,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: vec2<i32>,
    d: Struct_3,
    e: vec2<f32>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec4<bool>) -> bool {
    let var_0 = ~(-(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, -10055i, u_input.b), vec3<i32>(4866i, u_input.b, -2147483647i) ^ vec3<i32>(u_input.b, -1i, u_input.b)) ^ ~(-vec3<i32>(u_input.b, -14903i, u_input.b))));
    global0 = u_input.b;
    let var_1 = vec2<u32>(1u, 1u);
    var var_2 = -779f;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1460f)) * 211f) - -1356f)), ~1u, vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -2007f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - 2169f) + 1f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1500f))))), max(~vec3<u32>(var_1.x, u_input.c, 28375u), _wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_1.x, var_1.x, 5633u), vec3<u32>(var_1.x, 43652u, 1u)), abs(vec3<u32>(45490u, 28890u, var_1.x)), ~vec3<u32>(0u, var_1.x, 1u))) & ~firstLeadingBit(vec3<u32>(u_input.c, 63831u, 1u) ^ vec3<u32>(0u, 10523u, var_1.x)), -(~var_0.x));
    return any(vec2<bool>(!arg_0.x, select(arg_0.x || all(vec2<bool>(false, true)), true, false)));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<u32>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-179f - -2717f), _wgslsmith_f_op_f32(step(-550f, -526f)))))))) - 2162f);
    let var_1 = Struct_4(vec3<f32>(-1000f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(var_0)), var_0)), 1703f), vec2<bool>(false, true), abs(-_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, -19397i), vec2<i32>(u_input.b, u_input.b)) & -vec2<i32>(0i, u_input.b)), arg_0, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1972f, var_0)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(702f, -1301f) - vec2<f32>(-1198f, 898f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, -1903f)))))));
    var var_2 = 4294967295u;
    return !arg_0.b;
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_3(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.a, 4294967295u, 61306u, u_input.d)) << ((vec4<u32>(u_input.d, 75569u, 62334u, 0u) << (vec4<u32>(6030u, 0u, u_input.a, 764u) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<u32>(4294967295u, 1287u >> (u_input.d % 32u), 4294967295u, abs(0u))) ^ u_input.d, !func_4(Struct_3(reverseBits(1u), func_3(vec4<bool>(false, false, true, true))), vec4<u32>(65020u, firstLeadingBit(u_input.a), u_input.d, 4294967295u)));
    var var_1 = ~4294967295u;
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(511f - _wgslsmith_f_op_f32(trunc(910f))) + -364f)));
    var var_3 = Struct_5(~select(select(vec4<u32>(var_0.a, 0u, 0u, 3125u), firstLeadingBit(vec4<u32>(8020u, 4294967295u, u_input.c, var_0.a)), func_3(vec4<bool>(var_0.b, var_0.b, false, false))), ~(~vec4<u32>(1u, var_0.a, u_input.a, var_0.a)), !(!var_0.b)), Struct_1(var_2, var_0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, -1838f, var_2))))), vec3<u32>(abs(_wgslsmith_mod_u32(4294967295u, u_input.a)), _wgslsmith_mult_u32(u_input.d, ~var_0.a), _wgslsmith_clamp_u32(min(4294967295u, 3510u), reverseBits(4294967295u), var_0.a & var_0.a)), 9202i));
    global0 = u_input.b >> (~(~((11528u | var_3.a.x) << (34244u % 32u))) % 32u);
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(var_2)))) * _wgslsmith_f_op_f32(-var_3.b.a)), var_0.a, _wgslsmith_f_op_vec3_f32(-var_3.b.c), _wgslsmith_clamp_vec3_u32(countOneBits(var_3.b.d) | var_3.b.d, _wgslsmith_add_vec3_u32(~vec3<u32>(1u, var_3.a.x, var_0.a), _wgslsmith_add_vec3_u32(var_3.b.d, var_3.a.zwz)), vec3<u32>(var_0.a, 1u, ~var_0.a)), _wgslsmith_mult_i32(var_3.b.e, ~1i ^ abs(var_3.b.e))), (~1i & var_3.b.e) & (i32(-1i) * -firstLeadingBit(-1i)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec4<bool>) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.a) + 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(2583f, arg_0.a.a)) * arg_0.a.c.x))));
    let var_1 = false;
    var var_2 = arg_0.a;
    var var_3 = arg_2.x;
    var var_4 = min(var_2.b, 1u >> (~(arg_1.a << (u_input.d % 32u)) % 32u));
    return Struct_4(arg_0.a.c, !arg_2.xx, vec2<i32>(_wgslsmith_sub_i32(u_input.b, -31847i), select(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, u_input.b, var_2.e, -5885i), vec4<i32>(arg_0.a.e, 33676i, 14626i, 49354i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_2.e, u_input.b, var_2.e, 2147483647i), vec4<i32>(var_2.e, 2147483647i, var_2.e, arg_0.b), vec4<i32>(var_2.e, 649i, 2147483647i, u_input.b))), arg_0.b, arg_2.x)), Struct_3(96665u, true), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -147f), _wgslsmith_f_op_f32(var_2.a + arg_0.a.a))))), _wgslsmith_f_op_f32(-1591f * var_0)));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = func_5(func_2(), Struct_3(arg_0.d.x, false), vec4<bool>(select(all(vec2<bool>(true, true)), any(vec4<bool>(true, true, false, true)), false), false, 0i > min(u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.e, arg_0.e, 1i, u_input.b), vec4<i32>(arg_0.e, 2147483647i, u_input.b, -2147483647i))), !(!all(vec4<bool>(true, true, false, false)))));
    var var_1 = func_2().a.c.yy;
    let var_2 = Struct_2(arg_0, ~(~(~_wgslsmith_mult_i32(u_input.b, -71407i))));
    var var_3 = 1u;
    let var_4 = var_0.d.a;
    return arg_0;
}

fn func_6(arg_0: Struct_1, arg_1: i32, arg_2: Struct_3) -> Struct_5 {
    global0 = u_input.b;
    global0 = _wgslsmith_clamp_i32(u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, ~(-2147483647i), _wgslsmith_add_i32(u_input.b, arg_0.e)), ~vec3<i32>(arg_0.e, -33163i, 38006i)) | _wgslsmith_add_i32(arg_1, func_1(arg_0).e), arg_0.e);
    global0 = _wgslsmith_dot_vec2_i32(firstLeadingBit(select(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, -1i, arg_0.e), vec3<i32>(-1i, arg_0.e, arg_0.e)), 11601i), _wgslsmith_sub_vec2_i32(-vec2<i32>(arg_1, arg_0.e), _wgslsmith_mod_vec2_i32(vec2<i32>(arg_1, -48790i), vec2<i32>(2147483647i, arg_0.e))), !select(vec2<bool>(arg_2.b, false), vec2<bool>(arg_2.b, arg_2.b), arg_2.b))), _wgslsmith_mult_vec2_i32(~(vec2<i32>(u_input.b, -18648i) >> (arg_0.d.xz % vec2<u32>(32u))), _wgslsmith_mult_vec2_i32(~vec2<i32>(-1i, arg_1), ~vec2<i32>(-2147483647i, arg_1))) | -func_5(func_2(), Struct_3(u_input.c, arg_2.b), !vec4<bool>(arg_2.b, false, true, false)).c);
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -199f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-404f, arg_0.c.x)) * -771f) + arg_0.a) + _wgslsmith_f_op_f32(arg_0.a * arg_0.c.x))));
    global0 = arg_1;
    return Struct_5(vec4<u32>(1u, arg_2.a, ~select(func_1(arg_0).b, arg_0.b, arg_2.b | false), select(func_5(func_2(), Struct_3(1u, arg_2.b), select(vec4<bool>(true, true, arg_2.b, arg_2.b), vec4<bool>(arg_2.b, false, false, arg_2.b), vec4<bool>(true, arg_2.b, arg_2.b, arg_2.b))).d.a, u_input.d, any(select(vec4<bool>(true, arg_2.b, arg_2.b, false), vec4<bool>(false, true, true, arg_2.b), vec4<bool>(arg_2.b, false, arg_2.b, true))))), arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, 1u, 4294967295u, u_input.a), ~vec4<u32>(4294967295u, u_input.d, 11902u, u_input.a)), vec4<u32>(~u_input.d, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, u_input.a, u_input.d), vec4<u32>(29946u, u_input.a, u_input.c, u_input.c)), u_input.a ^ 4294967295u, 1u)), ~(~vec4<u32>(u_input.a, u_input.d, 0u, u_input.a))));
    var var_1 = select(select(vec2<bool>(true, true), vec2<bool>(!select(false, false, true), true), true), vec2<bool>(1u < _wgslsmith_mod_u32(4294967295u, var_0.x), !all(vec2<bool>(true, true))), vec2<bool>(true, true && (var_0.x > var_0.x)));
    let var_2 = func_6(func_1(Struct_1(812f, ~_wgslsmith_mult_u32(4294967295u, var_0.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1774f, 115f, -293f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1026f, 2677f, -261f) - vec3<f32>(-1000f, 1428f, -343f))), var_0.wyz, ~u_input.b)), max(-4185i, u_input.b), Struct_3(0u, var_1.x));
    let var_3 = Struct_2(func_2().a, -var_2.b.e);
    let var_4 = vec2<i32>(u_input.b, 1i);
    let x = u_input.a;
    s_output = StorageBuffer(var_4, 33787u, ~_wgslsmith_mod_u32(4294967295u, _wgslsmith_mult_u32(var_0.x, 4294967295u)), select(vec4<u32>(0u, ~_wgslsmith_mult_u32(var_0.x, 29943u), var_2.b.b, _wgslsmith_mod_u32(66390u, var_0.x)), _wgslsmith_add_vec4_u32(min(min(vec4<u32>(0u, 1u, u_input.d, var_2.a.x), vec4<u32>(25610u, 0u, var_0.x, u_input.d)), var_2.a), _wgslsmith_mod_vec4_u32(firstLeadingBit(var_2.a), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 115826u, var_0.x, 38746u), var_2.a))), vec4<bool>(!var_1.x, any(vec4<bool>(true, false, var_1.x, var_1.x)), !var_1.x, -var_4.x > var_4.x)));
}

