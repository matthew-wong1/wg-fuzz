struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec3<i32>,
    d: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: vec3<u32>, arg_1: u32, arg_2: vec2<u32>) -> bool {
    let var_0 = !select(true, false, true);
    let var_1 = Struct_1(u_input.d, vec3<bool>(!var_0, !var_0, true), _wgslsmith_clamp_vec3_i32(countOneBits(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d, -19251i, -588i), vec3<i32>(u_input.d, -23015i, u_input.d)) | vec3<i32>(13047i, -31032i, -2147483647i)), firstTrailingBit(abs(vec3<i32>(u_input.d, u_input.d, u_input.d))), vec3<i32>(u_input.b.x, -1i, ~u_input.b.x)), true);
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-334f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1128f) + _wgslsmith_f_op_f32(874f + -1000f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(742f * -1216f))), 219f);
    var var_3 = -1000f;
    var_3 = _wgslsmith_f_op_f32(select(251f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.x, _wgslsmith_f_op_f32(f32(-1f) * -1204f), select(var_0, var_0, var_0)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2.x)))), true));
    return var_1.b.x;
}

fn func_3(arg_0: Struct_2) -> u32 {
    var var_0 = select(!vec2<bool>(true, -u_input.b.x == 22232i), select(select(vec2<bool>(true, true), vec2<bool>(false, any(vec3<bool>(false, false, false))), (i32(-1i) * -1i) <= (u_input.d >> (25966u % 32u))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec4<bool>(false, false, true, true))), !select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), _wgslsmith_mult_u32(u_input.c, 0u) >= 26233u), !(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)))), select(!(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false))), !vec2<bool>(func_2(vec3<u32>(u_input.a, 1u, 1u), 0u, vec2<u32>(1u, 4294967295u)), true), func_2(~vec3<u32>(u_input.c, u_input.a, u_input.a), ~877u, _wgslsmith_div_vec2_u32(vec2<u32>(46463u, u_input.c), vec2<u32>(u_input.a, u_input.a)) >> (vec2<u32>(u_input.a, 0u) % vec2<u32>(32u)))));
    var var_1 = _wgslsmith_mult_vec4_u32(vec4<u32>(firstTrailingBit(u_input.a), u_input.c >> (64212u % 32u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 94408u, u_input.a), vec3<u32>(24789u, 12588u, 0u)) | ~(~u_input.e), firstLeadingBit(1u)), abs(abs(vec4<u32>(~u_input.e, _wgslsmith_add_u32(u_input.c, 15007u), u_input.c, ~u_input.e))));
    var_0 = vec2<bool>(true, var_0.x);
    var var_2 = vec4<i32>(-(_wgslsmith_mod_i32(abs(-2147483647i), arg_0.b << (37943u % 32u)) >> (0u % 32u)), -23074i, 1i, -1i);
    var var_3 = arg_0;
    return _wgslsmith_dot_vec3_u32(select(vec3<u32>(31620u, 4294967295u, 29421u) | _wgslsmith_mult_vec3_u32(var_1.ywy, ~var_1.xww), ~countOneBits(vec3<u32>(22770u, 12319u, u_input.e)), vec3<bool>(true, !(var_3.a.x == 2438i), all(vec2<bool>(false, false)))), var_1.ywx);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = u_input.d;
    var var_1 = arg_2.c;
    let var_2 = _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, _wgslsmith_sub_i32(var_1.x, countOneBits(1i))), _wgslsmith_clamp_vec2_i32(select(arg_2.c.yx, vec2<i32>(-12663i, var_0), vec2<bool>(arg_0.x, arg_0.x)), vec2<i32>(arg_2.a, -1i), arg_2.c.zz) >> (arg_1.zy % vec2<u32>(32u))), ~_wgslsmith_mod_i32(reverseBits(-1i), 27747i));
    var var_3 = -countOneBits(vec3<i32>(select(_wgslsmith_div_i32(var_1.x, -53989i), 0i, any(arg_2.b.zy)), var_0, abs(_wgslsmith_dot_vec3_i32(vec3<i32>(26203i, var_0, -33500i), arg_2.c))));
    var var_4 = reverseBits(~arg_1);
    return Struct_1(var_3.x, !vec3<bool>(!(false || arg_2.b.x), any(arg_2.b) && arg_2.d, any(!vec3<bool>(arg_0.x, false, true))), vec3<i32>(var_1.x, -(~var_3.x), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(-2147483647i, var_2, 2147483647i, -2147483647i)) | _wgslsmith_div_vec4_i32(vec4<i32>(0i, -15101i, -58956i, 2147483647i), vec4<i32>(var_1.x, var_1.x, 2147483647i, arg_2.c.x)), max(~vec4<i32>(8658i, var_1.x, -1i, 48594i), vec4<i32>(1i, var_2, u_input.b.x, arg_2.a)))), var_4.x >= 108095u);
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: u32) -> f32 {
    var var_0 = u_input.c;
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1012f, -248f))) * vec2<f32>(_wgslsmith_div_f32(-613f, 107f), _wgslsmith_f_op_f32(max(1062f, -196f)))))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(475f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) + _wgslsmith_f_op_f32(max(694f, -2492f)))))));
    var_0 = ~4294967295u;
    var_0 = ~22879u;
    var var_2 = func_4(vec2<bool>(select(true, true, func_2(vec3<u32>(41150u, 16827u, 2230u), 1u, vec2<u32>(1u, 4294967295u))) & ((arg_0.a.x << (u_input.a % 32u)) <= _wgslsmith_add_i32(arg_1, 6052i)), false), _wgslsmith_sub_vec4_u32(vec4<u32>(func_3(Struct_2(vec4<i32>(arg_1, 1i, u_input.d, arg_1), 1i)), u_input.c ^ 108204u, 1u, min(~u_input.c, arg_2 >> (arg_2 % 32u))), vec4<u32>(1u, u_input.e, u_input.c, 4294967295u)), Struct_1(~abs(u_input.d), vec3<bool>(false, all(select(vec2<bool>(true, false), vec2<bool>(false, false), false)), !any(vec3<bool>(true, false, false))), arg_0.a.xwx >> (vec3<u32>(_wgslsmith_div_u32(u_input.a, u_input.c), ~u_input.e, min(arg_2, arg_2)) % vec3<u32>(32u)), any(vec3<bool>(true, true, true))));
    return -894f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~3557u;
    var var_1 = 1432f;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_2(vec4<i32>(1i, u_input.d, u_input.d, 1i), -1i & u_input.d), -u_input.b.x ^ _wgslsmith_sub_i32(u_input.d, 0i), _wgslsmith_clamp_u32(~1u, _wgslsmith_add_u32(u_input.e, u_input.a), var_0)))) + _wgslsmith_div_f32(-1284f, -866f));
    let var_3 = ~vec2<u32>(var_0, abs(~1u >> ((u_input.e & 4294967295u) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(-492f, _wgslsmith_f_op_f32(f32(-1f) * -671f), -496f));
}

