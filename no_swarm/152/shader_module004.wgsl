struct Struct_1 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: bool,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec4<i32>,
    d: bool,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 1>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec3<bool>) -> Struct_2 {
    global0 = array<Struct_3, 1>();
    var var_0 = Struct_2(Struct_1(-u_input.a >= countOneBits(u_input.b), !vec3<bool>(!arg_0.x, !arg_0.x, arg_0.x)), true, any(!(!vec3<bool>(true, arg_0.x, true))));
    let var_1 = arg_0.x;
    var var_2 = -1000f;
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(230f, 1003f, 1430f, 2261f)) - vec4<f32>(791f, -426f, 627f, 1219f)), any(select(vec3<bool>(var_1, true, false), vec3<bool>(arg_0.x, false, var_1), vec3<bool>(false, true, var_0.b))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1355f, -706f, -650f, -1413f) - vec4<f32>(-633f, -1000f, 1000f, -226f))), vec4<f32>(-1541f, -1589f, _wgslsmith_f_op_f32(f32(-1f) * -516f), 1000f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-156f + -529f), -551f, _wgslsmith_f_op_f32(-1448f + 1027f), 393f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1726f, -342f, -439f, 191f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -289f, 2330f, 234f)), !vec4<bool>(arg_0.x, true, var_1, false))), select(all(vec3<bool>(true, true, false)), !var_0.a.a, true)))));
    return Struct_2(var_0.a, true, -_wgslsmith_sub_i32(firstTrailingBit(u_input.c), ~0i) >= -(~_wgslsmith_add_i32(u_input.a, 1i)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2) -> Struct_2 {
    var var_0 = ~1u;
    var_0 = _wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(~vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)), abs(vec2<u32>(~(~2032u), _wgslsmith_dot_vec4_u32(~vec4<u32>(69270u, 0u, 4294967295u, 1u), vec4<u32>(1u, 1u, 1u, 1u)))));
    global0 = array<Struct_3, 1>();
    var var_1 = firstLeadingBit(-9090i) == u_input.b;
    var_0 = ~abs(14601u);
    return arg_1;
}

fn func_1(arg_0: vec4<f32>, arg_1: i32, arg_2: vec3<f32>, arg_3: u32) -> Struct_4 {
    global0 = array<Struct_3, 1>();
    global0 = array<Struct_3, 1>();
    global0 = array<Struct_3, 1>();
    var var_0 = func_3(_wgslsmith_clamp_vec4_i32(vec4<i32>(-(~1i), arg_1, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, u_input.a, -12388i), vec3<i32>(arg_1, -2147483647i, -37017i)) & -1i, arg_1), -_wgslsmith_add_vec4_i32(vec4<i32>(arg_1, 61708i, -1i, u_input.c) & vec4<i32>(1i, 2147483647i, 27790i, arg_1), vec4<i32>(u_input.a, arg_1, 10646i, arg_1)), vec4<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.b, 13727i, -57507i, arg_1), vec4<i32>(0i, -2147483647i, arg_1, 2147483647i) >> (vec4<u32>(arg_3, arg_3, 4294967295u, arg_3) % vec4<u32>(32u))), abs(_wgslsmith_sub_i32(0i, u_input.a)), select(4979i, _wgslsmith_sub_i32(48954i, -17770i), false), firstTrailingBit(arg_1) << (1u % 32u))), func_2(vec3<bool>(!any(vec2<bool>(true, false)), firstLeadingBit(32960i) != (arg_1 | -2147483647i), true)));
    global0 = array<Struct_3, 1>();
    return Struct_4(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-280f * arg_2.x) + _wgslsmith_f_op_f32(-arg_0.x)) + arg_0.x), arg_2.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2.x))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x + arg_2.x), _wgslsmith_f_op_f32(max(arg_0.x, 535f))), 256f, true))), firstTrailingBit(~select(select(vec4<u32>(0u, arg_3, arg_3, 54527u), vec4<u32>(arg_3, arg_3, arg_3, 4294967295u), vec4<bool>(true, var_0.b, true, var_0.c)), vec4<u32>(arg_3, arg_3, arg_3, 1u), !vec4<bool>(false, true, var_0.c, true))), vec2<i32>(u_input.b, 1i), global0[_wgslsmith_index_u32(~(firstLeadingBit(arg_3) << (72065u % 32u)), 1u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-679f - _wgslsmith_f_op_f32(round(382f)))), 1102f, _wgslsmith_f_op_f32(f32(-1f) * -784f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-201f, 826f, false)))))), u_input.a, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1362f)) + -528f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-561f + 1232f), -556f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(559f * -1466f))), _wgslsmith_f_op_f32(-1319f - _wgslsmith_f_op_f32(-398f + _wgslsmith_f_op_f32(2502f + 2550f)))), _wgslsmith_add_u32(_wgslsmith_div_u32(1u, 53897u), _wgslsmith_mod_u32(countOneBits(_wgslsmith_clamp_u32(17381u, 47003u, 16762u)), 1u)));
    var var_1 = _wgslsmith_div_i32(var_0.c.x, (_wgslsmith_add_i32(firstTrailingBit(-1i), var_0.d.c.x) << (var_0.b.x % 32u)) >> (10928u % 32u));
    let var_2 = var_0.d.a;
    let var_3 = false;
    var_1 = -1i;
    let var_4 = func_1(var_0.a, abs(2147483647i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(760f + 1000f), _wgslsmith_f_op_f32(trunc(var_0.a.x)), 206f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a.yzw))) * vec3<f32>(var_0.a.x, -162f, 719f)), ~var_0.b.x).d.b;
    var var_5 = !var_4.b.yz;
    let var_6 = func_3(~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.d.c.x, -51609i), vec2<i32>(3787i, var_0.c.x)), ~(-1i), u_input.c << (var_0.b.x % 32u)), var_0.d.c), Struct_2(func_2(vec3<bool>(true, any(var_4.b.yx), true)).a, !(!var_0.d.d && var_0.d.d), (~var_0.b.x <= max(var_0.b.x, var_0.b.x)) | func_2(var_0.d.b.b).a.a)).a;
    var_5 = var_4.b.zx;
    let x = u_input.a;
    s_output = StorageBuffer(-select(max(reverseBits(var_0.c), vec2<i32>(u_input.b, var_0.d.c.x)), vec2<i32>(_wgslsmith_div_i32(u_input.a, u_input.a), _wgslsmith_add_i32(u_input.b, var_0.c.x)), !(!var_4.b.x)), 253f, -4288i);
}

