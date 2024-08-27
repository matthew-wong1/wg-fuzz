struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_3, arg_1: i32, arg_2: vec3<f32>) -> vec2<f32> {
    let var_0 = true;
    var var_1 = Struct_1(_wgslsmith_div_vec2_i32(u_input.a, reverseBits(u_input.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.b.x * arg_2.x), -964f), 993f)), countOneBits(arg_0.a.x));
    var_1 = Struct_1(vec2<i32>(arg_1, arg_1), _wgslsmith_f_op_vec3_f32(sign(var_1.b)), arg_0.a.x);
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.b.x), arg_0.b.x);
    var var_3 = Struct_2(Struct_1(firstTrailingBit(-vec2<i32>(u_input.a.x, arg_1)), arg_2, _wgslsmith_clamp_u32(54266u, arg_0.a.x, 1u) & ~4294967295u), all(vec3<bool>(~3718i < _wgslsmith_clamp_i32(-61295i, var_1.a.x, 1i), all(vec3<bool>(false, false, var_0)), 76044u > var_1.c)), Struct_1(vec2<i32>(-1i) * -vec2<i32>(arg_1, arg_1), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)), 814f, -393f), min(~60785u, 4294967295u)));
    return vec2<f32>(arg_2.x, -1061f);
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<f32>, arg_2: Struct_2) -> Struct_1 {
    let var_0 = select(~vec4<u32>(4294967295u, arg_2.a.c, 0u, (1u << (1u % 32u)) | arg_2.c.c), _wgslsmith_mod_vec4_u32(firstLeadingBit(~(~vec4<u32>(39330u, arg_2.c.c, 4294967295u, 0u))), ~(~vec4<u32>(4294967295u, arg_2.c.c, 4294967295u, arg_2.a.c)) >> (vec4<u32>(arg_2.c.c, ~arg_2.c.c, 63217u, arg_2.a.c) % vec4<u32>(32u))), !select(!select(vec4<bool>(true, arg_2.b, arg_2.b, arg_2.b), vec4<bool>(arg_2.b, arg_2.b, true, arg_2.b), vec4<bool>(false, arg_2.b, false, arg_2.b)), !select(vec4<bool>(true, false, arg_2.b, true), vec4<bool>(arg_2.b, arg_2.b, arg_2.b, arg_2.b), arg_2.b), vec4<bool>(arg_2.b, false, any(vec3<bool>(true, true, arg_2.b)), !arg_2.b)));
    var var_1 = arg_2.c.a.x;
    var var_2 = abs(vec3<i32>(2147483647i, -2147483647i, ~(-(~78824i))));
    var_2 = _wgslsmith_mod_vec3_i32(select(vec3<i32>(2147483647i, ~(-34750i), -select(1i, u_input.a.x, arg_2.b)), -_wgslsmith_add_vec3_i32(vec3<i32>(var_2.x, 20590i, -1i), firstTrailingBit(vec3<i32>(-22116i, u_input.a.x, var_2.x))), true), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-29380i, u_input.a.x, 19180i, 69918i) << (var_0 % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_2.a.a.x, -56096i, var_2.x, u_input.a.x), vec4<i32>(var_2.x, u_input.a.x, -51390i, var_2.x))) | _wgslsmith_mult_i32(_wgslsmith_clamp_i32(2147483647i, u_input.a.x, arg_2.a.a.x), 6173i), select(_wgslsmith_dot_vec4_i32(~vec4<i32>(-2147483647i, 14716i, -6341i, -1i), vec4<i32>(-98515i, var_2.x, -26004i, -2147483647i)), 1779i, false), arg_2.a.a.x));
    var_2 = -(~firstTrailingBit(-vec3<i32>(19138i, -23955i, 9655i)));
    return Struct_1(vec2<i32>(var_2.x, -1i), arg_2.c.b, ~(~(~_wgslsmith_mod_u32(1u, arg_2.c.c))));
}

fn func_1() -> vec3<bool> {
    var var_0 = _wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u >> (0u % 32u), abs(1u), abs(4294967295u)), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 8591u, 0u), vec3<u32>(1u, 1u, 1u))), ~(~(~vec3<u32>(1u, 1u, 1u))));
    var var_1 = Struct_2(Struct_1(vec2<i32>(-28332i, -2147483647i), vec3<f32>(_wgslsmith_f_op_f32(-824f + _wgslsmith_f_op_f32(f32(-1f) * -327f)), 1053f, _wgslsmith_div_f32(_wgslsmith_div_f32(1382f, 787f), 1f)), 36161u), true, func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(-559f, -876f, false)), -1000f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1722f, 1024f), vec2<f32>(-207f, 706f), false)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1577f, 2358f), vec2<f32>(1029f, -192f))) * _wgslsmith_f_op_vec2_f32(func_2(Struct_3(vec2<u32>(0u, 63316u), vec2<f32>(-805f, -1181f)), u_input.a.x, vec3<f32>(648f, -968f, 1321f))))), Struct_2(Struct_1(u_input.a, vec3<f32>(-1049f, -1000f, -1586f), ~55459u), any(vec3<bool>(true, true, false)), Struct_1(vec2<i32>(u_input.a.x, -19152i) | vec2<i32>(31205i, 85846i), vec3<f32>(672f, -1000f, -877f), ~4294967295u))));
    let var_2 = Struct_1(var_1.c.a, var_1.c.b, _wgslsmith_mult_u32(firstTrailingBit(0u), _wgslsmith_dot_vec2_u32(~max(vec2<u32>(16410u, 0u), vec2<u32>(var_1.a.c, var_1.a.c)), (vec2<u32>(var_1.c.c, var_1.c.c) & vec2<u32>(var_1.a.c, var_1.c.c)) >> (~vec2<u32>(1u, var_1.a.c) % vec2<u32>(32u)))));
    let var_3 = ~(~(vec2<i32>(i32(-1i) * -51710i, 13300i) & min(_wgslsmith_mod_vec2_i32(var_1.c.a, u_input.a), vec2<i32>(-14707i, var_1.a.a.x))));
    return select(!vec3<bool>(!(!var_1.b), var_1.b, var_1.b), !(!(!vec3<bool>(var_1.b, var_1.b, var_1.b))), !all(vec2<bool>(!var_1.b, false)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !all(!func_1());
    let var_1 = ~firstLeadingBit(vec2<u32>(~(~1u), select(max(1u, 4294967295u), func_3(vec2<f32>(340f, 1190f), vec2<f32>(-1000f, -1485f), Struct_2(Struct_1(u_input.a, vec3<f32>(576f, 1000f, 875f), 45940u), true, Struct_1(vec2<i32>(u_input.a.x, u_input.a.x), vec3<f32>(681f, -616f, -465f), 4294967295u))).c, !var_0)));
    var var_2 = _wgslsmith_add_u32(4294967295u, ~(0u << (_wgslsmith_clamp_u32(var_1.x, ~var_1.x, _wgslsmith_mult_u32(var_1.x, var_1.x)) % 32u)));
    var var_3 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(-2051f)), -403f, _wgslsmith_f_op_f32(745f * 1000f), _wgslsmith_f_op_f32(max(-1000f, -1000f)))), vec4<f32>(3416f, -1000f, _wgslsmith_div_f32(1068f, -1131f), _wgslsmith_f_op_f32(-277f * _wgslsmith_f_op_vec2_f32(func_2(Struct_3(var_1, vec2<f32>(-647f, 2821f)), 1i, vec3<f32>(-1132f, -1000f, 604f))).x))))));
    let var_4 = func_3(_wgslsmith_f_op_vec2_f32(-var_3.ww), var_3.ww, Struct_2(Struct_1(-u_input.a, _wgslsmith_div_vec3_f32(vec3<f32>(var_3.x, var_3.x, var_3.x), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_3.x, 689f, -1567f), var_3.wxy))), 8326u), false, Struct_1(vec2<i32>(countOneBits(41105i), _wgslsmith_mult_i32(2147483647i, u_input.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(984f, -947f, var_3.x)))), var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -204f)) * -304f), ~(~_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, var_4.c, var_4.c, var_4.c), vec4<u32>(14959u, var_1.x, 38653u, 4294967295u)), var_4.c)));
}

