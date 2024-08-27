struct Struct_1 {
    a: i32,
    b: u32,
    c: u32,
    d: f32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: u32,
}

struct Struct_4 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 21>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32) -> u32 {
    global0 = array<vec4<bool>, 21>();
    let var_0 = vec4<i32>(select(_wgslsmith_div_i32(firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(7207i, 0i), vec2<i32>(u_input.d, u_input.d))), u_input.d), firstTrailingBit(_wgslsmith_div_i32(~u_input.d, -u_input.d)), true || any(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true)))), ~u_input.d, 1i, -27285i);
    let var_1 = Struct_3(max(~vec4<i32>(var_0.x, max(17612i, var_0.x), u_input.d, var_0.x), _wgslsmith_sub_vec4_i32(-var_0, -var_0)), arg_0);
    let var_2 = Struct_3(abs(countOneBits(-vec4<i32>(u_input.d, var_1.a.x, var_1.a.x, u_input.d))), ~(~(~3874u) & max(abs(1u), u_input.c.x)));
    let var_3 = Struct_4(_wgslsmith_f_op_f32(-546f * _wgslsmith_div_f32(-541f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-929f - -1539f)))), true);
    return arg_0;
}

fn func_2(arg_0: Struct_3) -> Struct_4 {
    var var_0 = Struct_1(_wgslsmith_dot_vec2_i32(arg_0.a.xz, ~_wgslsmith_sub_vec2_i32(~arg_0.a.xx, arg_0.a.yz)), ~reverseBits(func_3(1u)), 1u, -587f, ~(u_input.c & u_input.c));
    var var_1 = 841f;
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(-836f)), var_0.d, _wgslsmith_div_f32(-221f, _wgslsmith_div_f32(var_0.d, var_0.d))));
    var_0 = Struct_1(_wgslsmith_clamp_i32(u_input.d, select(select(u_input.d, 9019i & var_0.a, var_0.d != -461f), u_input.d, 1i >= var_0.a), 2147483647i ^ countOneBits(u_input.d << (arg_0.b % 32u))), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, ~var_0.e.x), select(_wgslsmith_add_vec2_u32(var_0.e.wz, u_input.c.yy), ~vec2<u32>(u_input.a, u_input.a), false)) & _wgslsmith_dot_vec4_u32(~reverseBits(vec4<u32>(u_input.c.x, u_input.c.x, var_0.b, u_input.c.x)), vec4<u32>(1u, 47383u, arg_0.b & u_input.b, ~u_input.a)), var_0.b, var_0.d, var_0.e);
    let var_3 = Struct_2(Struct_1(-31897i, arg_0.b, u_input.a, -770f, var_0.e));
    return Struct_4(1551f, !all(select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), true)));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: vec3<i32>) -> Struct_4 {
    return func_2(Struct_3(vec4<i32>(arg_2.x, _wgslsmith_div_i32(u_input.d, 6936i), _wgslsmith_div_i32(0i, abs(-49862i)), _wgslsmith_mod_i32(u_input.d, max(-2147483647i, u_input.d))), ~4294967295u));
}

fn func_1() -> Struct_1 {
    let var_0 = func_4(!(!vec3<bool>(true, true, all(vec4<bool>(true, false, false, false)))), func_2(Struct_3(vec4<i32>(-2147483647i, 2147483647i, u_input.d, 1i) << ((vec4<u32>(37311u, u_input.a, 5281u, u_input.a) & vec4<u32>(4294967295u, 4294967295u, u_input.a, 25071u)) % vec4<u32>(32u)), ~u_input.b)), select(vec3<i32>(u_input.d, -1i, i32(-1i) * -1i), abs(abs(vec3<i32>(-54436i, u_input.d, u_input.d))), -(~u_input.d) < -u_input.d));
    global0 = array<vec4<bool>, 21>();
    global0 = array<vec4<bool>, 21>();
    var var_1 = 115f;
    var_1 = var_0.a;
    return Struct_1(0i, ~u_input.a, ~(~(~u_input.b)), 1135f, _wgslsmith_mult_vec4_u32(vec4<u32>(24370u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.c.x, u_input.c.x, 22548u), u_input.c), firstLeadingBit(~u_input.a), u_input.b, ~19785u), _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(reverseBits(u_input.c), u_input.c), ~u_input.c)));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_2) -> StorageBuffer {
    var var_0 = firstLeadingBit(_wgslsmith_dot_vec2_i32(abs(min(~vec2<i32>(1i, u_input.d), vec2<i32>(arg_2.a.a, 2147483647i))), ~((vec2<i32>(-8470i, 31476i) & vec2<i32>(u_input.d, 15088i)) | countOneBits(vec2<i32>(arg_0.a, 1i)))));
    let var_1 = arg_0.a;
    global0 = array<vec4<bool>, 21>();
    var var_2 = max(~var_1, -_wgslsmith_mult_i32(min(13793i ^ arg_0.a, select(arg_0.a, -4572i, true)), 16232i));
    var var_3 = Struct_3(_wgslsmith_add_vec4_i32(min(_wgslsmith_add_vec4_i32(vec4<i32>(-16141i, arg_0.a, -16637i, -1i), vec4<i32>(1i, 1i, 2147483647i, arg_0.a)), _wgslsmith_mod_vec4_i32(vec4<i32>(34050i, 38893i, -14857i, -2147483647i), vec4<i32>(arg_0.a, 0i, var_1, 1i))), (vec4<i32>(u_input.d, -31389i, arg_2.a.a, 2147483647i) >> (arg_2.a.e % vec4<u32>(32u))) & -vec4<i32>(-14665i, -2147483647i, -2147483647i, 11613i)) << (arg_0.e % vec4<u32>(32u)), _wgslsmith_mult_u32(1u, _wgslsmith_clamp_u32(firstLeadingBit(1u), u_input.b, 1u)));
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-arg_1))))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(687f, 549f, arg_0.d)))))), -_wgslsmith_sub_i32(_wgslsmith_add_i32(func_1().a, ~3344i), -2147483647i), -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 21>();
    global0 = array<vec4<bool>, 21>();
    let x = u_input.a;
    s_output = func_5(func_1(), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(133f, 245f, 341f) * vec3<f32>(-1705f, 594f, -918f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(904f, 430f, 638f) * vec3<f32>(514f, -210f, -255f))) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-249f, 806f, -631f))))), Struct_2(func_1()));
}

