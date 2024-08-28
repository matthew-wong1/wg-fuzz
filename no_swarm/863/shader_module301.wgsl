struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<f32>,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 20>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> f32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(921f * 925f)) + -628f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1222f, 323f))) - _wgslsmith_f_op_f32(f32(-1f) * -952f))), _wgslsmith_mult_i32(u_input.a.x | -1i, 38405i), select(vec4<i32>(~u_input.a.x, 14503i, u_input.d, min(~45738i, max(u_input.d, 2147483647i))), vec4<i32>(u_input.d, u_input.d, u_input.a.x | 1i, ~(~u_input.a.x)), !any(vec2<bool>(false, false))));
    global0 = array<Struct_4, 20>();
    var_0 = Struct_2(Struct_1(var_0.a.b, -797f), 4629i, var_0.c);
    let var_1 = Struct_3(var_0.a);
    global0 = array<Struct_4, 20>();
    return 209f;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_4(Struct_2(Struct_1(_wgslsmith_f_op_f32(-563f + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-793f + -541f))), u_input.a.x, u_input.a), Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1533f + 507f), _wgslsmith_f_op_f32(max(127f, 1500f)))), _wgslsmith_f_op_f32(-614f - _wgslsmith_f_op_f32(ceil(349f))), 2147483647i == u_input.a.x)), 1000f), u_input.b, Struct_2(Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1123f - -229f))), -26933i, vec4<i32>(0i, ~_wgslsmith_dot_vec4_i32(u_input.a, u_input.a), ~_wgslsmith_mod_i32(u_input.a.x, 27550i), abs(u_input.d))));
    let var_1 = var_0.d.a;
    let var_2 = var_0.a.a;
    var var_3 = Struct_2(var_0.b, 19509i, vec4<i32>(~(~(-26444i)), ~u_input.d, -_wgslsmith_mod_i32(1i, ~u_input.a.x), ~_wgslsmith_mod_i32(-15720i & u_input.a.x, _wgslsmith_sub_i32(u_input.d, 1i))));
    let var_4 = vec4<u32>(_wgslsmith_dot_vec2_u32(~firstLeadingBit(vec2<u32>(1u, 27217u) | vec2<u32>(var_0.c, u_input.c)), ~vec2<u32>(firstLeadingBit(0u), ~u_input.b)), 20920u, ~(19933u & u_input.c) | ~0u, max(u_input.c, _wgslsmith_add_u32(90971u, 0u)));
    return var_0.d.a;
}

fn func_1(arg_0: vec4<bool>, arg_1: bool) -> vec3<u32> {
    var var_0 = u_input.d;
    var var_1 = Struct_4(Struct_2(func_2(), ~_wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.d, u_input.d), -u_input.a.x), abs(_wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.d, -10711i, u_input.a.x, -1i), ~u_input.a))), func_2(), _wgslsmith_mult_u32(u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.b, u_input.b, u_input.c ^ u_input.c), ~abs(vec3<u32>(56176u, 43497u, u_input.b)))), Struct_2(Struct_1(_wgslsmith_f_op_f32(-266f - _wgslsmith_f_op_f32(floor(1082f))), _wgslsmith_f_op_f32(min(1012f, _wgslsmith_f_op_f32(f32(-1f) * -109f)))), u_input.d >> (_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.c, 44644u), ~vec2<u32>(4294967295u, u_input.b)) % 32u), u_input.a));
    var_0 = 1i;
    var_0 = u_input.d;
    var_0 = u_input.d ^ _wgslsmith_div_i32(var_1.a.c.x, firstTrailingBit(_wgslsmith_add_i32(9702i, select(0i, 5608i, arg_1))));
    return vec3<u32>(u_input.b, _wgslsmith_clamp_u32(~u_input.b, _wgslsmith_div_u32(_wgslsmith_clamp_u32(102121u, reverseBits(var_1.c), var_1.c), var_1.c), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(42799u, var_1.c), abs(vec2<u32>(1u, 63981u))), vec2<u32>(u_input.c, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 12153u, 1u), vec3<u32>(1u, 0u, 0u))))), max(_wgslsmith_sub_u32(21435u, var_1.c << (var_1.c % 32u)), abs(15992u | var_1.c) ^ var_1.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(-(i32(-1i) * -1i), abs(abs(_wgslsmith_div_i32(~(-1i), u_input.a.x))), u_input.a.x, ~u_input.a.x);
    var var_1 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.zw, vec4<u32>(firstLeadingBit(4294967295u), 47550u, ~63353u, ~((u_input.b << (u_input.b % 32u)) & _wgslsmith_mod_u32(u_input.c, u_input.c))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(475f, -309f, -1078f, -567f)) + vec4<f32>(-616f, _wgslsmith_f_op_f32(1843f + 1084f), _wgslsmith_f_op_f32(-852f - -557f), _wgslsmith_f_op_f32(round(107f))))), vec3<u32>(~_wgslsmith_div_u32(u_input.c, u_input.b), ~70010u, reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 1u), vec2<u32>(16178u, u_input.b)))) & func_1(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), !all(vec3<bool>(true, true, false))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-273f))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-533f, -175f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-749f - _wgslsmith_f_op_f32(ceil(229f)))))));
}

