struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
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

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(2264f, -580f, -2153f) + vec3<f32>(-627f, 1539f, -1236f))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -284f), _wgslsmith_f_op_f32(f32(-1f) * -1780f), _wgslsmith_f_op_f32(trunc(1039f)))))) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1528f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * -1721f) - 105f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(285f)))))));
    let var_1 = Struct_3(select(vec4<bool>(!arg_0.b.x, true, arg_0.b.x, arg_0.b.x), select(arg_0.b, select(!vec4<bool>(false, false, arg_0.b.x, arg_0.b.x), arg_0.b, arg_0.b), true), arg_0.b.x));
    var var_2 = Struct_3(!vec4<bool>(true, all(vec3<bool>(false, false, false)), true, false));
    var_2 = Struct_3(!select(!(!var_2.a), var_1.a, !(!var_2.a)));
    let var_3 = 0i;
    return all(vec2<bool>(!any(var_2.a.zzz), !(arg_0.a == 4294967295u) || true));
}

fn func_1(arg_0: vec3<u32>, arg_1: u32, arg_2: vec3<bool>) -> u32 {
    let var_0 = firstTrailingBit(~vec4<i32>(-2147483647i, _wgslsmith_mod_i32(_wgslsmith_sub_i32(1559i, u_input.c), -1i), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, -2147483647i, u_input.c, -20081i), vec4<i32>(u_input.c, -1i, -2147483647i, 2147483647i)), select(vec4<i32>(-1i, 0i, 1i, u_input.b.x), vec4<i32>(u_input.c, 49160i, 1i, u_input.c), arg_2.x)), -2147483647i));
    var var_1 = arg_2.x;
    var_1 = !any(select(arg_2, arg_2, !func_2(Struct_1(arg_0.x, vec4<bool>(arg_2.x, arg_2.x, arg_2.x, true), u_input.b.x, u_input.d))));
    var var_2 = Struct_5(Struct_1(1u, vec4<bool>(true, all(arg_2.xy), arg_2.x, true), countOneBits(max(u_input.b.x, var_0.x)), 18379u), Struct_3(vec4<bool>(~50402u == u_input.d, arg_2.x | arg_2.x, arg_2.x, !(arg_2.x != false))), Struct_4(false));
    var_2 = Struct_5(Struct_1(_wgslsmith_sub_u32(var_2.a.d, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 6792u, var_2.a.d, 1u), vec4<u32>(arg_0.x, 40997u, arg_0.x, u_input.e))), select(vec4<bool>(true, arg_2.x, true, !var_2.c.a), select(var_2.a.b, select(vec4<bool>(arg_2.x, var_2.b.a.x, var_2.c.a, var_2.c.a), vec4<bool>(var_2.a.b.x, false, false, true), arg_2.x), !var_2.a.b), !(var_2.b.a.x && var_2.a.b.x)), u_input.c, abs(39986u)), Struct_3(var_2.b.a), var_2.c);
    return u_input.d;
}

fn func_3(arg_0: i32, arg_1: bool) -> u32 {
    let var_0 = _wgslsmith_clamp_vec3_i32((vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(u_input.b.x, u_input.b.x)), -12850i, arg_0) & abs(vec3<i32>(u_input.b.x, u_input.b.x, arg_0) & vec3<i32>(arg_0, -29384i, 0i))) << (select(~_wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.a, u_input.d), vec3<u32>(3702u, 56755u, u_input.d)), vec3<u32>(u_input.a >> (67274u % 32u), _wgslsmith_mult_u32(70347u, 6222u), 1u), !(u_input.b.x < -2147483647i)) % vec3<u32>(32u)), max(max(vec3<i32>(_wgslsmith_clamp_i32(9380i, 0i, 0i), ~u_input.c, arg_0), vec3<i32>(abs(u_input.b.x), -32505i << (u_input.a % 32u), _wgslsmith_mod_i32(1i, 44846i))), ~(vec3<i32>(-1i) * -vec3<i32>(arg_0, 1i, 4810i))), vec3<i32>(25493i, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(arg_0, arg_0), 88650i, -2147483647i), vec3<i32>(u_input.b.x & arg_0, 1i, -16995i)), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(-25872i, -995i), u_input.b.x, u_input.c), _wgslsmith_dot_vec3_i32(select(vec3<i32>(1i, -55299i, 1i), vec3<i32>(u_input.b.x, -1i, u_input.b.x), true), vec3<i32>(0i, u_input.c, 16550i)))));
    let var_1 = min(-30792i, ~(-u_input.b.x));
    let var_2 = vec3<u32>(u_input.a, 4294967295u, _wgslsmith_sub_u32(~u_input.e, u_input.d));
    var var_3 = 17450i;
    let var_4 = !vec3<bool>(true, true, func_2(Struct_1(6012u, select(vec4<bool>(arg_1, arg_1, true, arg_1), vec4<bool>(true, arg_1, arg_1, true), arg_1), ~var_0.x, ~21967u)));
    return firstLeadingBit(~(~_wgslsmith_dot_vec2_u32(var_2.yz & var_2.zz, min(vec2<u32>(u_input.d, 47683u), vec2<u32>(1u, var_2.x)))));
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: vec2<u32>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(492f + 430f);
    var var_1 = select(~(arg_0 | 1u) == 0u, arg_1.b.b.x, arg_1.b.b.x) | all(arg_1.b.b.yw);
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -781f);
    let var_3 = any(!vec2<bool>(false, !any(vec3<bool>(true, false, false))));
    var_1 = all(vec3<bool>(true, true, false));
    return firstLeadingBit(arg_1.b.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(true, true, true, true);
    var var_1 = ~((func_1(vec3<u32>(3615u, u_input.d, 1u) ^ vec3<u32>(22u, u_input.a, u_input.d), ~u_input.e, vec3<bool>(true, true, true)) | ~_wgslsmith_div_u32(u_input.a, 34664u)) ^ 23079u);
    var_1 = ~u_input.a;
    var var_2 = Struct_1(max(_wgslsmith_sub_u32(u_input.d, u_input.a), 4336u), !(!select(var_0, var_0, var_0.x)), func_4((~0u ^ (u_input.d << (14423u % 32u))) >> (55953u % 32u), Struct_2(34780u, Struct_1(func_3(u_input.c, var_0.x), select(var_0, var_0, var_0), 37105i, ~1u)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.d, 2366u), _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(0u, 5681u), vec2<u32>(u_input.a, u_input.d)), abs(vec2<u32>(1u, 23618u))))), ~(~abs(3774u)));
    let var_3 = Struct_4(false);
    var_1 = countOneBits(~_wgslsmith_mod_u32(_wgslsmith_mod_u32(var_2.a, 27453u), 11467u)) << (4294967295u % 32u);
    let var_4 = u_input.c;
    var var_5 = ~(~_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(~u_input.b, -u_input.b), _wgslsmith_mod_i32(33221i, var_4)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 24827u), vec2<u32>(var_2.a, u_input.e)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.e, 1u), vec2<u32>(1u, 5423u))), _wgslsmith_add_vec2_u32(select(vec2<u32>(100078u, 1u), vec2<u32>(975u, 97815u), true), ~vec2<u32>(u_input.e, 29022u)))));
}

