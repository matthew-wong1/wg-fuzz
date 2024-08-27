struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec2<u32>,
    d: f32,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: vec4<bool>,
}

struct Struct_5 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_4) -> u32 {
    let var_0 = Struct_3(arg_2.b.a, true, ~vec2<u32>(_wgslsmith_mod_u32(countOneBits(u_input.b), ~26747u), u_input.b), 326f);
    return ~min(firstTrailingBit(min(u_input.b, _wgslsmith_add_u32(var_0.a.b, arg_0.b.a.b))), arg_2.b.a.b);
}

fn func_2(arg_0: Struct_3, arg_1: Struct_3) -> f32 {
    let var_0 = _wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.a.a, arg_1.a.a, arg_1.a.b), ~(~_wgslsmith_add_vec3_u32(~vec3<u32>(1u, u_input.b, u_input.b), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_1.a.b, arg_0.c.x, 4294967295u), vec3<u32>(0u, u_input.b, u_input.d)))));
    var var_1 = 1i;
    var var_2 = Struct_3(Struct_1(u_input.d, func_3(Struct_4(u_input.c.x >> (u_input.d % 32u), Struct_2(arg_0.a), vec4<bool>(true, true, arg_1.a.c.x, false)), arg_1.a, Struct_4(_wgslsmith_sub_i32(u_input.c.x, u_input.c.x), Struct_2(arg_1.a), select(vec4<bool>(arg_1.a.c.x, true, arg_1.b, true), vec4<bool>(true, arg_0.b, arg_0.a.c.x, false), arg_1.b))), !vec4<bool>(!arg_1.a.c.x, u_input.c.x <= 43926i, arg_0.b, arg_0.a.c.x)), true, arg_1.c, -767f);
    var var_3 = Struct_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_2.d, var_2.d), vec2<f32>(var_2.d, -1652f))) * vec2<f32>(_wgslsmith_f_op_f32(arg_0.d - 1682f), _wgslsmith_f_op_f32(exp2(var_2.d)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.d, 267f)))));
    let var_4 = ~_wgslsmith_add_vec3_u32(max(~(~var_0), countOneBits(~vec3<u32>(71058u, 4294967295u, 0u))), var_0);
    return arg_0.d;
}

fn func_1(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_3) -> Struct_3 {
    let var_0 = arg_2;
    var var_1 = _wgslsmith_mult_u32(var_0.c.x, 0u);
    var_1 = arg_2.c.x;
    var var_2 = Struct_3(Struct_1(max(var_0.a.a, ~0u), ~(~0u), arg_2.a.c), any(select(vec2<bool>(-1i == u_input.a, all(arg_2.a.c.yzy)), !select(var_0.a.c.wz, vec2<bool>(arg_2.a.c.x, arg_0), arg_0), all(vec4<bool>(arg_0, true, true, true)))), ~arg_2.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_3(Struct_1(0u, u_input.d, vec4<bool>(var_0.a.c.x, var_0.a.c.x, arg_0, arg_2.b)), false, vec2<u32>(arg_2.a.a, 4294967295u), -196f), var_0)) + 1090f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2603f), -425f) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_2.d), arg_2.d, any(vec4<bool>(arg_2.a.c.x, false, arg_0, false)))))));
    var_2 = Struct_3(Struct_1(select(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.c.x, var_2.a.b, 1u), vec3<u32>(arg_2.c.x, u_input.d, u_input.d)) ^ 18634u, var_2.a.b ^ 1u, !var_2.a.c.x), ~u_input.b, select(var_0.a.c, !(!vec4<bool>(arg_2.a.c.x, arg_2.b, false, var_2.a.c.x)), arg_2.b)), all(select(vec4<bool>(false, arg_1.x <= arg_1.x, !var_2.b, var_2.b & var_2.a.c.x), var_2.a.c, !var_0.a.c)), _wgslsmith_sub_vec2_u32(~(~_wgslsmith_add_vec2_u32(vec2<u32>(1u, var_0.c.x), vec2<u32>(u_input.b, arg_2.c.x))), var_2.c), 1135f);
    return Struct_3(arg_2.a, false, var_0.c, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_2.d + _wgslsmith_f_op_f32(func_2(Struct_3(Struct_1(var_2.a.b, var_2.c.x, vec4<bool>(true, false, true, var_0.b)), false, vec2<u32>(6228u, var_2.a.a), arg_2.d), var_0))))))));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: vec4<u32>, arg_3: f32) -> vec2<f32> {
    let var_0 = _wgslsmith_sub_vec3_u32(arg_2.yxx, vec3<u32>(arg_0.a.a, func_1(false, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3, -105f)), Struct_3(Struct_1(u_input.d, 0u, vec4<bool>(false, false, false, arg_0.b)), arg_0.a.c.x, vec2<u32>(arg_0.c.x, 24355u), 847f)).c.x ^ 113592u, 25374u));
    let var_1 = !(!vec3<bool>(arg_0.a.c.x, all(arg_0.a.c), true));
    var var_2 = arg_1.x;
    var var_3 = Struct_4(0i, Struct_2(Struct_1(arg_2.x, ~_wgslsmith_sub_u32(3377u, u_input.d), !vec4<bool>(true, true, var_1.x, arg_0.a.c.x))), arg_0.a.c);
    var_3 = Struct_4(firstLeadingBit(_wgslsmith_dot_vec3_i32(-(vec3<i32>(arg_1.x, 1i, 21711i) << (vec3<u32>(4294967295u, var_0.x, 33306u) % vec3<u32>(32u))), vec3<i32>(var_3.a, _wgslsmith_sub_i32(u_input.c.x, u_input.c.x), -1i))), var_3.b, vec4<bool>(true, true || func_1(var_1.x, vec2<f32>(arg_0.d, arg_0.d), func_1(true, vec2<f32>(arg_3, -499f), Struct_3(Struct_1(4294967295u, 19019u, var_3.c), true, vec2<u32>(arg_2.x, arg_2.x), arg_0.d))).a.c.x, true, any(func_1(!var_1.x, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1000f, 685f))), func_1(true, vec2<f32>(arg_0.d, 115f), arg_0)).a.c)));
    return _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1193f)), _wgslsmith_f_op_f32(f32(-1f) * -647f)), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1025f), _wgslsmith_f_op_f32(-arg_3))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(236f, arg_3))), true))));
}

fn func_5(arg_0: Struct_5, arg_1: Struct_2, arg_2: vec4<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_mod_vec3_u32(vec3<u32>(func_1(arg_1.a.c.x, vec2<f32>(-254f, _wgslsmith_f_op_f32(arg_0.a.x * arg_0.a.x)), Struct_3(func_1(arg_1.a.c.x, vec2<f32>(arg_0.a.x, 267f), Struct_3(Struct_1(1u, arg_1.a.b, vec4<bool>(false, true, arg_1.a.c.x, arg_1.a.c.x)), arg_1.a.c.x, vec2<u32>(4883u, u_input.b), -550f)).a, true, vec2<u32>(11368u, arg_2.x), arg_0.a.x)).a.b, ~_wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.b, 13668u), ~1u), 0u >> (firstTrailingBit(u_input.d) % 32u)), vec3<u32>(select(u_input.b, abs(0u), arg_1.a.c.x), arg_1.a.b, 4294967295u));
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(func_1(true, vec2<f32>(661f, -1185f), Struct_3(Struct_1(u_input.b, u_input.d, vec4<bool>(false, false, true, true)), false, vec2<u32>(1u, 1u), -461f)), u_input.c.zz, select(vec4<u32>(u_input.b, u_input.d, 1u, 1u), vec4<u32>(22072u, u_input.d, 34226u, u_input.d), vec4<bool>(true, false, true, true)), 840f)) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1991f, -569f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2137f, -126f)))))), Struct_2(Struct_1(abs(0u), u_input.d, !func_1(false, vec2<f32>(-147f, -1000f), Struct_3(Struct_1(1u, 1u, vec4<bool>(false, false, true, true)), false, vec2<u32>(u_input.d, u_input.b), -275f)).a.c)), _wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(4294967295u, 69475u, u_input.d, 0u)) | _wgslsmith_div_vec4_u32(vec4<u32>(u_input.d, 4294967295u, u_input.d, 4294967295u), vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d)), (vec4<u32>(17046u, u_input.b, u_input.b, 1u) << (vec4<u32>(u_input.d, 1u, 1u, 63313u) % vec4<u32>(32u))) & min(vec4<u32>(1u, u_input.d, 4294967295u, 1u), vec4<u32>(u_input.b, 41343u, 6219u, 0u))) ^ vec4<u32>(1u, ~(~u_input.d), 0u, u_input.d));
    var var_1 = Struct_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1000f, 376f)))))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1591f - 1243f) + _wgslsmith_f_op_f32(step(-969f, -1067f))), _wgslsmith_f_op_f32(-1265f * -522f))));
    let var_2 = Struct_2(func_1(true, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.a) + var_1.a), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(397f, var_1.a.x)))), func_1(!var_0.c.x, var_1.a, Struct_3(func_1(true, var_1.a, Struct_3(var_0, true, vec2<u32>(var_0.a, u_input.d), var_1.a.x)).a, u_input.c.x <= u_input.a, ~vec2<u32>(0u, 8107u), -1000f))).a);
    var_1 = Struct_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(var_1.a.x, 761f, var_0.c.x)), _wgslsmith_f_op_f32(-var_1.a.x))) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.x, -644f)))))));
    var var_3 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(firstLeadingBit(var_2.a.b << (u_input.d % 32u)) << (~var_0.b % 32u), var_0.a, ~firstTrailingBit(6388u)), _wgslsmith_add_vec3_u32(vec3<u32>(17301u, var_0.b, _wgslsmith_mult_u32(u_input.d, var_0.b)) & _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(16431u, var_0.a, 4294967295u), vec3<u32>(16932u, var_2.a.a, u_input.b)), select(vec3<u32>(var_2.a.b, 1u, u_input.b), vec3<u32>(var_2.a.a, 18103u, 50656u), vec3<bool>(false, var_2.a.c.x, true))), ~abs(vec3<u32>(var_0.b, var_2.a.a, var_0.a))), 0u, var_1.a.x, var_1.a.x);
}

