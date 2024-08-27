struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec3<u32>,
    d: i32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec4<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<u32>,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 17>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    var var_0 = Struct_1(false, ~vec4<i32>(-7307i, -u_input.a, ~max(u_input.a, 12710i), 0i), vec3<u32>(4294967295u, ~70756u, 1u), abs(-(~_wgslsmith_mult_i32(u_input.a, u_input.a))), vec2<bool>(!any(vec2<bool>(false, false)), true));
    let var_1 = var_0.c;
    var var_2 = select(vec3<bool>(true, var_0.e.x, ~var_1.x != firstLeadingBit(_wgslsmith_sub_u32(var_1.x, 7618u))), vec3<bool>(false, true, !(!select(var_0.e.x, var_0.e.x, false))), select(select(vec3<bool>(u_input.a >= var_0.d, var_0.e.x, select(var_0.a, var_0.e.x, true)), !vec3<bool>(var_0.e.x, true, false), var_0.a), !vec3<bool>(!var_0.e.x, select(true, var_0.e.x, var_0.e.x), true), !(1u != var_0.c.x)));
    var var_3 = Struct_2(i32(-1i) * -30765i, _wgslsmith_dot_vec2_i32(~vec2<i32>(var_0.d | u_input.a, -u_input.a), ~max(vec2<i32>(var_0.b.x, u_input.a), firstLeadingBit(vec2<i32>(11352i, -18529i)))), Struct_1(true, var_0.b, var_0.c, var_0.b.x, !vec2<bool>(true, var_2.x || var_0.a)), Struct_1(true, var_0.b, vec3<u32>(~10787u, ~40493u, _wgslsmith_sub_u32(var_1.x, var_1.x)) >> (countOneBits(~vec3<u32>(var_1.x, var_0.c.x, var_1.x)) % vec3<u32>(32u)), _wgslsmith_add_i32(abs(var_0.d), _wgslsmith_mod_i32(-40240i, max(-12823i, 25348i))), var_2.xz));
    let var_4 = var_0.b.x;
    return ~(~_wgslsmith_mod_u32(~1u, countOneBits(95807u)));
}

fn func_2(arg_0: f32) -> Struct_1 {
    let var_0 = true;
    return Struct_1(var_0, _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, u_input.a, u_input.a, abs(countOneBits(u_input.a))), _wgslsmith_add_vec4_i32(vec4<i32>(6307i, abs(u_input.a), abs(-26298i), _wgslsmith_dot_vec3_i32(vec3<i32>(31312i, -7776i, -2147483647i), vec3<i32>(u_input.a, u_input.a, 2147483647i))), -vec4<i32>(20973i, 1i, 1i, u_input.a))), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, ~4294967295u, func_3() << (countOneBits(32907u) % 32u)), vec3<u32>(1u, 1u, 1u)), u_input.a, !vec2<bool>(!(u_input.a == -2147483647i), !(!var_0)));
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    global0 = array<vec4<f32>, 17>();
    let var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1000f, 511f)) * _wgslsmith_div_f32(1007f, -983f))))));
    global0 = array<vec4<f32>, 17>();
    let var_2 = arg_1.d;
    return var_0.c.c.x;
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(~21059u, 60161u, ~(~select(3554u, 1u, false)), func_4(true, Struct_2(2147483647i, u_input.a, Struct_1(true, vec4<i32>(16088i, u_input.a, -12137i, u_input.a), vec3<u32>(30071u, 1u, 32768u), -5625i, vec2<bool>(false, true)), Struct_1(true, vec4<i32>(u_input.a, 1i, u_input.a, u_input.a), vec3<u32>(4294967295u, 2109u, 1u), 0i, vec2<bool>(false, true))), func_2(-631f), func_2(1429f)) | ~(~44098u)), _wgslsmith_add_vec4_u32(min(vec4<u32>(4294967295u, 0u, ~4294967295u, 1u), ~abs(vec4<u32>(6449u, 1u, 4294967295u, 38040u))), _wgslsmith_add_vec4_u32(select(vec4<u32>(10926u, 1u, 4294967295u, 0u), vec4<u32>(59771u, 62560u, 1u, 0u), true) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 2669u, 67529u, 0u), vec4<u32>(13079u, 1u, 0u, 0u), vec4<u32>(4294967295u, 1088u, 9975u, 0u)) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(0u, 4294967295u, 14785u, 3890u)))));
    var_0 = ~(~(4294967295u << (_wgslsmith_div_u32(1u, ~10529u) % 32u)));
    let var_1 = Struct_3(firstLeadingBit(select(49157u, 1u, true)), Struct_2(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 47763i, 50766i), vec3<i32>(2147483647i, u_input.a, u_input.a)), -u_input.a, u_input.a), _wgslsmith_sub_vec4_i32(vec4<i32>(0i, 2147483647i, u_input.a, 2147483647i), vec4<i32>(24175i, u_input.a, u_input.a, 1i))), 0i, Struct_1(true, ~vec4<i32>(-3372i, 2147483647i, 0i, u_input.a) ^ vec4<i32>(-32022i, 0i, 300i, u_input.a), ~abs(vec3<u32>(3637u, 46174u, 21527u)), select(firstLeadingBit(u_input.a), _wgslsmith_mod_i32(u_input.a, u_input.a), true), select(vec2<bool>(true, true), vec2<bool>(true, true), true)), func_2(360f)), vec4<bool>(true, true, true, true), Struct_1(false, ~_wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(4087i, u_input.a, -2147483647i, 0i)), -vec4<i32>(u_input.a, -1562i, 1i, u_input.a)), ~vec3<u32>(0u >> (1u % 32u), 1u, ~1u), 0i, func_2(_wgslsmith_f_op_f32(-749f + -1690f)).e));
    let var_2 = vec3<f32>(-213f, 808f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(390f, -1935f)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-116f, -1000f)), _wgslsmith_f_op_f32(step(-1526f, -926f)), any(var_1.c)))));
    global0 = array<vec4<f32>, 17>();
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = ~_wgslsmith_dot_vec2_u32(~var_0.c.c.xx, vec2<u32>(~var_0.c.c.x, 40435u)) >> (~(~0u) % 32u);
    let var_2 = ~firstLeadingBit(~u_input.a) < select(-(var_0.c.d >> (~47011u % 32u)), u_input.a, var_0.d.e.x);
    global0 = array<vec4<f32>, 17>();
    var var_3 = _wgslsmith_add_u32(~firstLeadingBit(var_0.c.c.x), abs(~abs(var_0.d.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~24465u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-645f, 699f, any(vec4<bool>(true, true, false, true))))), vec3<u32>(_wgslsmith_mult_u32(abs(var_0.d.c.x), ~(var_0.c.c.x >> (var_0.c.c.x % 32u))), ~countOneBits(_wgslsmith_mult_u32(var_0.c.c.x, var_0.d.c.x)), var_0.d.c.x), func_1().a, _wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(var_0.c.c.x, 39u), 17u)] - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1009f, _wgslsmith_div_f32(1719f, 1242f), 1145f, _wgslsmith_div_f32(1001f, 1237f))))));
}

