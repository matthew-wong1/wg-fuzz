struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: f32,
    d: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_4) -> u32 {
    var var_0 = !(!(!select(vec2<bool>(arg_0.b.d, arg_0.b.b), vec2<bool>(true, true), true)));
    let var_1 = u_input.d;
    let var_2 = vec3<i32>(~u_input.d, -abs(~0i ^ reverseBits(var_1)), u_input.a >> (~arg_0.b.a.b % 32u));
    let var_3 = (38970u >> (arg_0.a.a.c.x % 32u)) << (_wgslsmith_add_u32(select(12109u << (_wgslsmith_clamp_u32(u_input.c, 1u, u_input.c) % 32u), _wgslsmith_mult_u32(~57769u, arg_0.a.a.b), true | all(vec4<bool>(false, true, arg_0.b.b, true))), _wgslsmith_div_u32(4294967295u, 33712u)) % 32u);
    var var_4 = Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.c)), arg_0.b.c), ~_wgslsmith_clamp_u32(1u, 0u, 7429u), ~abs(_wgslsmith_div_vec2_u32(arg_0.a.a.c, vec2<u32>(u_input.c, arg_0.b.a.c.x)))));
    return _wgslsmith_sub_u32(~firstTrailingBit(34898u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_3, var_4.a.c.x), vec3<u32>(arg_0.a.a.c.x, 0u, 4294967295u)) % 32u)), (_wgslsmith_dot_vec3_u32(vec3<u32>(24327u, var_3, 13330u) << (vec3<u32>(var_4.a.b, 4294967295u, 898u) % vec3<u32>(32u)), select(vec3<u32>(var_4.a.c.x, var_4.a.c.x, var_3), vec3<u32>(var_4.a.c.x, 4294967295u, var_3), vec3<bool>(true, false, false))) >> (_wgslsmith_mult_u32(u_input.c, ~arg_0.b.a.b) % 32u)) >> (45121u % 32u));
}

fn func_2() -> Struct_3 {
    var var_0 = vec3<u32>(u_input.c, func_3(Struct_4(Struct_2(Struct_1(1481f, u_input.c, vec2<u32>(u_input.c, u_input.c))), Struct_3(Struct_1(-1129f, 0u, vec2<u32>(u_input.c, u_input.c)), true, -422f, true))), 5969u);
    var var_1 = ~(~(~((vec3<u32>(0u, var_0.x, u_input.c) >> (vec3<u32>(var_0.x, 1u, u_input.c) % vec3<u32>(32u))) ^ _wgslsmith_add_vec3_u32(vec3<u32>(var_0.x, u_input.c, 82929u), vec3<u32>(1u, var_0.x, 4294967295u)))));
    var var_2 = _wgslsmith_mult_vec3_i32(vec3<i32>(~(~(-u_input.a)), ~(~(-20060i)), abs(countOneBits(-2147483647i))), vec3<i32>(u_input.a, -1i, ~(~_wgslsmith_div_i32(u_input.b, -20319i))));
    var_1 = ~vec3<u32>(var_1.x, ~func_3(Struct_4(Struct_2(Struct_1(1849f, 39621u, var_0.yy)), Struct_3(Struct_1(993f, var_1.x, var_1.xx), true, -322f, true))), u_input.c);
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-132f * 2184f), 149f, all(vec4<bool>(true, false, false, false))))), _wgslsmith_div_u32(4294967295u | u_input.c, var_0.x >> (4294967295u % 32u)) << (~u_input.c % 32u), ~var_0.xz));
    return Struct_3(var_3.a, false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_3.a.a))), true);
}

fn func_1() -> i32 {
    var var_0 = func_2();
    let var_1 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1041f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1463f)) - _wgslsmith_div_f32(-769f, _wgslsmith_f_op_f32(floor(894f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2().c - _wgslsmith_f_op_f32(-var_0.c)) + -830f))));
    var_0 = Struct_3(Struct_1(683f, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(81345u, u_input.c, var_0.a.c.x) >> (vec3<u32>(u_input.c, 0u, 16853u) % vec3<u32>(32u)), ~vec3<u32>(9763u, 54320u, 87060u)), u_input.c), vec2<u32>(~abs(74324u), ~1u)), var_0.b, -206f, true);
    var_0 = func_2();
    let var_2 = _wgslsmith_mult_vec3_u32(vec3<u32>(var_0.a.c.x, ~(~select(u_input.c, 13807u, var_0.b)), _wgslsmith_mult_u32(countOneBits(var_0.a.b), var_0.a.c.x)), _wgslsmith_mod_vec3_u32(select(vec3<u32>(var_0.a.b, 4294967295u, u_input.c) >> (vec3<u32>(var_0.a.b, var_0.a.b, u_input.c) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, var_0.a.b, 0u), vec3<u32>(var_0.a.c.x, var_0.a.c.x, u_input.c)), !var_0.b), _wgslsmith_clamp_vec3_u32(vec3<u32>(13053u, u_input.c, 13987u), abs(vec3<u32>(18517u, 4294967295u, 4294967295u)), vec3<u32>(31556u, 31138u, 62276u) >> (vec3<u32>(u_input.c, var_0.a.b, 1u) % vec3<u32>(32u)))) | ~_wgslsmith_div_vec3_u32(vec3<u32>(0u, 1u, var_0.a.c.x), ~vec3<u32>(u_input.c, 4294967295u, u_input.c)));
    return ~(-39835i);
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: i32, arg_3: f32) -> Struct_1 {
    let var_0 = !(all(vec3<bool>(true, all(vec3<bool>(false, false, false)), any(vec3<bool>(false, true, true)))) || !(!any(vec4<bool>(false, true, false, true))));
    let var_1 = vec3<u32>(~14881u, abs(_wgslsmith_div_u32(reverseBits(u_input.c) << (_wgslsmith_div_u32(4294967295u, arg_0.a.c.x) % 32u), func_3(Struct_4(arg_0, Struct_3(arg_0.a, true, arg_3, var_0))))), ~24433u ^ (min(~u_input.c, ~0u) >> ((reverseBits(arg_0.a.b) >> (0u % 32u)) % 32u)));
    var var_2 = !(!(!(!select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, false), vec2<bool>(false, var_0)))));
    var_2 = !select(!vec2<bool>(any(vec2<bool>(true, var_2.x)), true), vec2<bool>(true, var_2.x), !all(vec3<bool>(true, true, var_0)));
    let var_3 = vec4<bool>(all(vec4<bool>(var_0, true, any(!vec4<bool>(true, var_2.x, false, var_2.x)), var_0)), true, !all(!select(vec4<bool>(false, var_0, var_0, true), vec4<bool>(false, var_0, var_0, var_2.x), vec4<bool>(true, var_0, var_2.x, var_0))), var_0);
    return func_2().a;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<u32>) -> f32 {
    var var_0 = func_2();
    return _wgslsmith_f_op_f32(sign(-633f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(true, true, any(vec3<bool>(true, false, true)));
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-595f * 574f) * _wgslsmith_f_op_f32(round(311f))))))), _wgslsmith_f_op_f32(420f * _wgslsmith_f_op_f32(func_5(Struct_2(Struct_1(766f, 4294967295u, vec2<u32>(4294967295u, u_input.c))), func_4(Struct_2(Struct_1(-313f, u_input.c, vec2<u32>(u_input.c, 0u))), u_input.d >> (u_input.c % 32u), func_1(), _wgslsmith_div_f32(113f, 616f)), ~(~vec2<u32>(u_input.c, u_input.c))))), var_0.x));
    var_0 = vec3<bool>(true, all(select(select(select(vec2<bool>(var_0.x, false), var_0.zx, var_0.xy), select(vec2<bool>(var_0.x, var_0.x), var_0.yz, false), vec2<bool>(var_0.x, true)), select(var_0.xy, select(vec2<bool>(var_0.x, var_0.x), var_0.yx, var_0.x), var_0.x), select(vec2<bool>(false, false), var_0.zy, all(vec4<bool>(true, true, var_0.x, var_0.x))))), !all(vec3<bool>(var_0.x, true, var_0.x)));
    let var_2 = ~(~u_input.c);
    var_0 = !vec3<bool>(true, 10001u < ~firstTrailingBit(var_2), true);
    let var_3 = -_wgslsmith_mod_i32(-u_input.b, u_input.d);
    let x = u_input.a;
    s_output = StorageBuffer(abs(~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c, 0u) ^ vec2<u32>(4294967295u, 1u), vec2<u32>(var_2, u_input.c) | vec2<u32>(var_2, var_2))), _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, var_3, var_3), vec3<i32>(-53166i, u_input.d, -83981i)), var_3 | 0i, var_3), select(~vec3<i32>(-1i, 9924i, u_input.b), firstTrailingBit(vec3<i32>(-21120i, var_3, var_3)), var_0.x)) | (vec3<i32>(u_input.d, 1i, -1i) << (~(~vec3<u32>(u_input.c, 4294967295u, 4294967295u)) % vec3<u32>(32u))));
}

