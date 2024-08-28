struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 6> = array<vec2<u32>, 6>(vec2<u32>(1u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 62876u), vec2<u32>(4294967295u, 0u), vec2<u32>(49334u, 0u), vec2<u32>(1u, 4294967295u));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<i32>) -> i32 {
    var var_0 = Struct_1(select(false, all(select(select(vec2<bool>(true, false), vec2<bool>(false, arg_1.a), arg_1.a), vec2<bool>(arg_1.a, true), arg_2.a)), true));
    var var_1 = arg_3;
    let var_2 = 4294967295u ^ u_input.a.x;
    var_0 = Struct_1(var_0.a);
    var var_3 = Struct_2(_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(var_2, u_input.a.x, arg_0, arg_0)) | _wgslsmith_sub_vec4_u32(vec4<u32>(63176u, 19385u, arg_0, 0u), vec4<u32>(0u, u_input.a.x, 33197u, 4294967295u)), ~(vec4<u32>(0u, arg_0, 50413u, arg_0) >> (vec4<u32>(var_2, var_2, u_input.b, 4294967295u) % vec4<u32>(32u)))), vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.a, vec3<u32>(0u, arg_0, var_2)), _wgslsmith_mult_vec3_u32(vec3<u32>(arg_0, var_2, var_2), u_input.a)), arg_0, countOneBits(1u), reverseBits(select(arg_0, var_2, true)))), ~firstTrailingBit(arg_3), Struct_1(true), ~4294967295u, Struct_1(true));
    return ~(-14216i) ^ var_3.b.x;
}

fn func_2() -> i32 {
    global0 = array<vec2<u32>, 6>();
    var var_0 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-657f * 894f), _wgslsmith_f_op_f32(round(2099f))) * _wgslsmith_f_op_f32(-1264f - _wgslsmith_f_op_f32(f32(-1f) * -159f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1025f)) * _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_div_f32(-1855f, 1361f))))), Struct_1(true), ~u_input.b, Struct_1(false), u_input.c);
    let var_1 = true;
    var var_2 = ~(vec3<i32>(_wgslsmith_sub_i32(~var_0.e, -21381i), _wgslsmith_mult_i32(~u_input.c, var_0.e), -u_input.c) >> (vec3<u32>(u_input.b, 48340u, ~(u_input.a.x >> (0u % 32u))) % vec3<u32>(32u)));
    let var_3 = vec4<bool>(var_1, !var_0.d.a, true, any(select(vec2<bool>(!var_0.d.a, var_0.d.a), select(select(vec2<bool>(var_0.b.a, false), vec2<bool>(var_0.d.a, false), false), select(vec2<bool>(false, false), vec2<bool>(false, var_0.b.a), vec2<bool>(var_1, var_1)), true), all(!vec3<bool>(var_0.b.a, false, true)))));
    return func_3(u_input.a.x, var_0.d, Struct_1(false), _wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(var_0.e, -15974i), vec2<i32>(-21329i, -2147483647i)), abs(var_2.xy), _wgslsmith_add_vec2_i32(var_2.xz, vec2<i32>(u_input.c, 0i))), var_2.xz, -(~var_2.zy))) ^ u_input.c;
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: u32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(990f, arg_0.a, 235f, -482f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a), 348f, 1f, -840f)))));
    global0 = array<vec2<u32>, 6>();
    let var_1 = Struct_1(false);
    var var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(1435f)), var_0.x))));
    global0 = array<vec2<u32>, 6>();
    return arg_0.d;
}

fn func_1(arg_0: vec3<f32>) -> Struct_3 {
    return Struct_3(_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-643f))), _wgslsmith_f_op_f32(arg_0.x + 383f))), func_4(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.x))), Struct_1(true), u_input.b, Struct_1(true), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c), vec4<i32>(u_input.c, u_input.c, -62072i, u_input.c))), func_2(), ~(~u_input.b ^ _wgslsmith_add_u32(u_input.b, u_input.a.x))), _wgslsmith_sub_u32(~min(1u, 16230u), ~(~min(10787u, 63367u))), func_4(Struct_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(arg_0.x)), 1464f)), func_4(Struct_3(arg_0.x, Struct_1(false), 71906u, Struct_1(true), u_input.c), 2147483647i, ~u_input.b), 51969u, Struct_1(0u >= u_input.a.x), -_wgslsmith_sub_i32(u_input.c, -2147483647i)), -1i, 1u), firstTrailingBit(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, -25205i, 41957i), vec3<i32>(2147483647i, u_input.c, -40377i)), vec3<i32>(u_input.c, 0i, u_input.c), -vec3<i32>(u_input.c, -16147i, u_input.c)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c, 29775i, 1i) ^ vec3<i32>(u_input.c, 11727i, u_input.c), vec3<i32>(u_input.c, 8599i, u_input.c), vec3<i32>(-1i, u_input.c, u_input.c)))));
}

fn func_5(arg_0: f32, arg_1: u32, arg_2: Struct_3) -> StorageBuffer {
    global0 = array<vec2<u32>, 6>();
    global0 = array<vec2<u32>, 6>();
    global0 = array<vec2<u32>, 6>();
    var var_0 = Struct_2(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(u_input.b, 30482u, 26275u, 25333u)) & countOneBits(vec4<u32>(0u, arg_2.c, 1u, 30788u)), ~vec4<u32>(u_input.b, arg_2.c, 0u, arg_2.c) & _wgslsmith_mult_vec4_u32(vec4<u32>(arg_1, 1u, u_input.a.x, 0u), vec4<u32>(arg_1, arg_1, u_input.a.x, u_input.a.x))) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1, 1u, ~u_input.a.x, max(1u, 109846u)), vec4<u32>(25216u, ~arg_1, u_input.a.x | u_input.a.x, ~arg_2.c), vec4<u32>(~45606u, arg_1, 4294967295u, arg_2.c >> (74465u % 32u))) % vec4<u32>(32u)), max(vec2<i32>(_wgslsmith_add_i32(-u_input.c, arg_2.e), 0i), -_wgslsmith_mod_vec2_i32(vec2<i32>(-32440i, -61685i) ^ vec2<i32>(u_input.c, 44794i), _wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, arg_2.e), vec2<i32>(1i, 1i)))), Struct_1(true), _wgslsmith_add_u32(~(~u_input.a.x ^ reverseBits(4294967295u)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b, 781u), ~u_input.a)), arg_2.b);
    var_0 = Struct_2(vec4<u32>(func_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a, arg_2.a, 1242f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a, arg_0, arg_0))))).c, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 32150u, 67825u), vec3<u32>(var_0.a.x, 10655u, 1u)) ^ 4294967295u, _wgslsmith_sub_u32(10409u, ~u_input.b)), _wgslsmith_mult_u32(_wgslsmith_mod_u32(~arg_2.c, ~1u), 4294967295u), _wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.b, arg_1), _wgslsmith_sub_u32(1u, arg_1)) >> (~max(var_0.d, 14985u) % 32u)), var_0.b, arg_2.d, 4294967295u, Struct_1(any(!vec2<bool>(arg_2.b.a, var_0.c.a)) || !(!arg_2.d.a)));
    return StorageBuffer(var_0.b, _wgslsmith_div_u32(~(~(var_0.d >> (14037u % 32u))), 0u), i32(-1i) * -(u_input.c ^ ~arg_2.e), vec3<i32>(_wgslsmith_mod_i32(arg_2.e, ~11460i), ~0i, reverseBits(u_input.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -331f) + -393f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1689f - 1041f))))) * -622f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1095f) * _wgslsmith_f_op_f32(f32(-1f) * -1601f)) - -781f), false));
    var var_1 = 0u;
    var_1 = 3233u;
    var_1 = ~(u_input.a.x << (u_input.a.x % 32u));
    let var_2 = Struct_1(true);
    let x = u_input.a;
    s_output = func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -300f) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-2236f * -529f)))), firstLeadingBit(u_input.b), func_1(vec3<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2377f * 114f) + -831f), _wgslsmith_f_op_f32(-573f + _wgslsmith_f_op_f32(-400f * -1000f)))));
}

