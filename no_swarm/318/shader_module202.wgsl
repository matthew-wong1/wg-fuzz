struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
    d: vec3<bool>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 21>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2, arg_3: vec2<f32>) -> vec4<u32> {
    var var_0 = arg_2.a.c.xwy;
    global0 = array<Struct_2, 21>();
    let var_1 = u_input.b >> (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 16413u, 18954u), vec3<u32>(u_input.e.x, u_input.e.x, arg_2.a.a)) % 32u)), abs(~vec2<u32>(arg_0.a.a, 0u))) % 32u);
    let var_2 = Struct_4(Struct_1(~51434u, true, ~(~(~arg_0.a.c))), Struct_3(Struct_1(min(4294967295u, _wgslsmith_div_u32(var_1, 4294967295u)), arg_2.a.b, ~_wgslsmith_add_vec4_i32(arg_0.a.c, arg_0.a.c)), ~max(max(vec4<u32>(6450u, 39988u, arg_2.a.a, 69593u), vec4<u32>(u_input.d, 12961u, 0u, arg_0.a.a)), vec4<u32>(0u, u_input.d, var_1, u_input.d)), arg_2.a, !select(!vec3<bool>(true, false, arg_0.a.b), select(vec3<bool>(arg_0.a.b, arg_2.a.b, false), vec3<bool>(arg_0.a.b, false, arg_2.a.b), arg_2.a.b), arg_0.a.b), arg_0));
    let var_3 = arg_0.a.a;
    return ~_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(countOneBits(var_2.b.b), vec4<u32>(13607u, var_2.b.b.x | 4294967295u, 35473u, var_3)), vec4<u32>(~82287u, var_1, (var_1 >> (arg_0.a.a % 32u)) ^ firstLeadingBit(var_2.a.a), 42641u));
}

fn func_2() -> Struct_2 {
    global0 = array<Struct_2, 21>();
    let var_0 = Struct_3(Struct_1(u_input.d, true, _wgslsmith_mod_vec4_i32(max(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, -2147483647i, u_input.a, 0i), vec4<i32>(u_input.c, 36667i, u_input.c, -13215i)), vec4<i32>(-5556i, 2147483647i, u_input.a, 0i)), vec4<i32>(abs(2147483647i), ~(-9801i), ~u_input.a, ~u_input.a))), reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.d, 4294967295u, 21438u) << (vec4<u32>(4294967295u, u_input.b, u_input.e.x, u_input.b) % vec4<u32>(32u)), vec4<u32>(u_input.e.x, 0u, 0u, 1u))) | ~func_3(Struct_2(Struct_1(0u, true, vec4<i32>(u_input.c, 1i, u_input.c, u_input.c))), _wgslsmith_clamp_i32(0i, -2147483647i, -21019i), Struct_2(Struct_1(u_input.b, false, vec4<i32>(u_input.a, 0i, u_input.a, -1i))), _wgslsmith_f_op_vec2_f32(vec2<f32>(643f, 1018f) * vec2<f32>(451f, -516f))), Struct_1(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(17965u, u_input.d, u_input.d)) << ((vec3<u32>(50383u, u_input.d, u_input.b) | vec3<u32>(u_input.d, u_input.e.x, u_input.d)) % vec3<u32>(32u)), ~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 33124u, 55420u), vec3<u32>(0u, u_input.e.x, u_input.e.x))), true, vec4<i32>(2147483647i, 13613i, -1i, u_input.a) >> (_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.e.x, 0u, u_input.e.x, u_input.b), vec4<u32>(u_input.e.x, 4294967295u, u_input.e.x, u_input.e.x)) % vec4<u32>(32u))), vec3<bool>(true, true, true), Struct_2(Struct_1(max(4294967295u, 45820u) ^ _wgslsmith_add_u32(u_input.d, u_input.b), true, ~vec4<i32>(0i, 2147483647i, -15855i, u_input.a) ^ _wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, -2147483647i, u_input.c, u_input.c), vec4<i32>(u_input.a, u_input.a, u_input.a, 2147483647i)))));
    let var_1 = ~max(var_0.c.c, max(_wgslsmith_mod_vec4_i32(var_0.a.c, vec4<i32>(1i, 24534i, var_0.e.a.c.x, -1i)), vec4<i32>(1i, u_input.a, 32859i, 0i)) ^ -(~var_0.c.c));
    global0 = array<Struct_2, 21>();
    let var_2 = u_input.b;
    return Struct_2(Struct_1(_wgslsmith_sub_u32(select(u_input.b & u_input.e.x, ~4294967295u, all(var_0.d)), abs(u_input.d << (var_0.c.a % 32u))), true & all(vec2<bool>(true, var_0.a.b)), min(vec4<i32>(u_input.a, -1i, var_1.x, -var_0.a.c.x), var_0.e.a.c)));
}

fn func_1(arg_0: vec2<u32>) -> bool {
    global0 = array<Struct_2, 21>();
    let var_0 = func_2();
    var var_1 = func_2();
    global0 = array<Struct_2, 21>();
    let var_2 = _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(~(~vec4<u32>(var_1.a.a, u_input.b, 0u, 73827u)), countOneBits(vec4<u32>(1u, var_0.a.a, var_0.a.a, var_1.a.a))), vec4<u32>(firstTrailingBit(_wgslsmith_dot_vec2_u32(u_input.e, u_input.e)), 4294967295u, 0u, var_0.a.a)), select(vec4<u32>(~var_0.a.a, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 26874u, arg_0.x, 24117u), vec4<u32>(35726u, var_1.a.a, 26532u, 1u)), 4294967295u, u_input.d), _wgslsmith_mult_vec4_u32(~vec4<u32>(arg_0.x, var_1.a.a, 13109u, var_0.a.a), vec4<u32>(u_input.b, var_1.a.a, var_1.a.a, var_1.a.a)), vec4<bool>(var_0.a.b, all(vec4<bool>(true, true, false, true)), true, false)) | reverseBits(countOneBits(~vec4<u32>(0u, 1u, var_1.a.a, 0u))));
    return true;
}

fn func_4(arg_0: vec2<bool>, arg_1: i32, arg_2: vec3<bool>, arg_3: Struct_2) -> Struct_1 {
    var var_0 = ~13212u;
    var_0 = 0u;
    global0 = array<Struct_2, 21>();
    global0 = array<Struct_2, 21>();
    var var_1 = min(-1031i, max(u_input.c, i32(-1i) * -35454i));
    return arg_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(vec2<bool>(true, true), _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(u_input.c, u_input.c), u_input.c, 23863i, -1i >> (u_input.e.x % 32u)), _wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.c, u_input.c, -7048i, 72162i), vec4<i32>(u_input.a, 2147483647i, u_input.a, 2147483647i))), -2147483647i, u_input.c), select(select(select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false), any(vec2<bool>(true, false))), vec3<bool>(false, true, false), vec3<bool>(true, true, u_input.d == u_input.b)), vec3<bool>(false, true, true), select(true, !func_1(u_input.e), true)), Struct_2(func_2().a));
    var var_1 = var_0.a | var_0.a;
    global0 = array<Struct_2, 21>();
    global0 = array<Struct_2, 21>();
    var var_2 = vec2<u32>(~1u, ~1u);
    var var_3 = ~select(_wgslsmith_mult_vec4_i32(var_0.c >> (~vec4<u32>(var_2.x, 4294967295u, 7081u, var_2.x) % vec4<u32>(32u)), var_0.c), var_0.c | (~var_0.c >> (vec4<u32>(4294967295u, 0u, 22394u, 0u) % vec4<u32>(32u))), (u_input.c ^ -8940i) < var_0.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(~(vec3<u32>(var_2.x, var_2.x, ~u_input.e.x) ^ ~countOneBits(vec3<u32>(u_input.b, 1u, u_input.d))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) - _wgslsmith_f_op_f32(ceil(1099f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-702f * 1902f) + _wgslsmith_f_op_f32(f32(-1f) * -1503f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-361f, 1907f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2891f, -722f))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(116f, -735f, 760f, -763f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(536f, -849f, -221f, -438f) * vec4<f32>(-1343f, -1698f, -160f, 1530f))), vec4<f32>(_wgslsmith_div_f32(-506f, -611f), _wgslsmith_f_op_f32(1000f + -421f), _wgslsmith_div_f32(1539f, 485f), _wgslsmith_f_op_f32(step(1567f, 701f))))));
}

