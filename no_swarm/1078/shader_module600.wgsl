struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec2<i32>,
    c: Struct_2,
    d: u32,
    e: u32,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_5) -> vec3<f32> {
    let var_0 = arg_0.c.d.x;
    var var_1 = arg_0.c.d;
    var var_2 = max(vec2<u32>(1u, u_input.e), abs(u_input.a.zy));
    var var_3 = vec2<f32>(arg_1.a, _wgslsmith_f_op_f32(arg_0.c.b.x * arg_1.a));
    var var_4 = arg_1;
    return arg_0.c.a;
}

fn func_2(arg_0: f32) -> vec4<i32> {
    var var_0 = Struct_3(Struct_1(~u_input.d, ~46535i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-405f, 1064f, arg_0, -1182f))), vec4<f32>(1803f, arg_0, arg_0, arg_0))) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(arg_0 - arg_0), 1f, arg_0, arg_0)))), Struct_2(vec3<f32>(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(arg_0 * -1000f)), _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(f32(-1f) * -374f)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2321f), -130f, arg_0), u_input.b, -abs(vec3<i32>(u_input.b, u_input.b, -2147483647i)), 0i), Struct_2(_wgslsmith_f_op_vec3_f32(func_3(Struct_4(false, ~vec2<i32>(u_input.b, u_input.b), Struct_2(vec3<f32>(311f, -752f, arg_0), vec3<f32>(arg_0, -1846f, -515f), -20053i, vec3<i32>(u_input.b, -1i, -1i), -2147483647i), 21887u, select(u_input.d.x, 30674u, false)), Struct_5(arg_0))), _wgslsmith_f_op_vec3_f32(func_3(Struct_4(all(vec4<bool>(false, true, true, false)), vec2<i32>(u_input.b, u_input.b) & vec2<i32>(u_input.b, 0i), Struct_2(vec3<f32>(arg_0, 917f, -1426f), vec3<f32>(-1320f, arg_0, 325f), u_input.b, vec3<i32>(u_input.b, 1i, -24134i), 21558i), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, 4294967295u, 55414u, 6673u), vec4<u32>(u_input.e, u_input.e, 4294967295u, u_input.d.x)), u_input.a.x), Struct_5(_wgslsmith_f_op_f32(595f * -1922f)))), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-2344i, u_input.b), vec2<i32>(u_input.b, 1i)), vec2<i32>(-1i, 9775i)), vec3<i32>(u_input.b << (4294967295u % 32u), u_input.b, u_input.b << (select(u_input.e, u_input.c, false) % 32u)), -1i));
    var_0 = Struct_3(var_0.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.b + vec4<f32>(var_0.c.a.x, 1540f, var_0.b.x, arg_0)), _wgslsmith_f_op_vec4_f32(-var_0.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.b) * var_0.b)) + var_0.b), Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.d.b.x), 1782f, _wgslsmith_f_op_f32(arg_0 * 1137f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 336f, -886f) * var_0.c.b))), _wgslsmith_f_op_vec3_f32(func_3(Struct_4(false, abs(var_0.c.d.zz), var_0.d, 35185u, 17729u), Struct_5(-1000f))), u_input.b, vec3<i32>(21219i, ~u_input.b, abs(var_0.d.d.x)) ^ ~(~var_0.c.d), _wgslsmith_clamp_i32(firstLeadingBit(var_0.c.c & var_0.a.b), -1i, var_0.d.e)), var_0.c);
    var_0 = Struct_3(var_0.a, _wgslsmith_div_vec4_f32(var_0.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -2024f, var_0.c.a.x, -1000f) + vec4<f32>(1290f, -838f, arg_0, -111f)))))), Struct_2(_wgslsmith_f_op_vec3_f32(var_0.b.zyw * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(var_0.b.wyy + vec3<f32>(arg_0, 2127f, 622f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-985f, 385f, var_0.c.a.x))))), var_0.b.wwx, _wgslsmith_clamp_i32(select(var_0.a.b, 0i, true) >> ((1u | var_0.a.a.x) % 32u), 6128i, -19806i), vec3<i32>(-28379i, -(~(-43212i)), abs(firstLeadingBit(u_input.b))), _wgslsmith_sub_i32(u_input.b, firstTrailingBit(~u_input.b))), var_0.c);
    var var_1 = vec4<i32>(-3530i, 0i, -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, ~var_0.a.b), -var_0.d.d.xy >> (reverseBits(vec2<u32>(17200u, 20059u)) % vec2<u32>(32u))), -countOneBits(-34412i & countOneBits(var_0.a.b)));
    let var_2 = -1000f;
    return firstLeadingBit(vec4<i32>(var_1.x, abs(min(-1i, -2147483647i)), u_input.b, countOneBits(41162i & -u_input.b)));
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: Struct_2) -> bool {
    let var_0 = firstTrailingBit(arg_1);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.b.x - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_2.b.x + _wgslsmith_f_op_f32(f32(-1f) * -832f))))) * -643f);
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1607f);
    let var_2 = min(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(arg_2.d.x, 1i, arg_2.c, arg_0), vec4<i32>(arg_2.d.x, arg_1, u_input.b, 0i)), func_2(arg_2.a.x)), ~_wgslsmith_mult_vec4_i32(vec4<i32>(1777i, -24833i, -1i, var_0), vec4<i32>(-27182i, var_0, 0i, arg_0))), vec4<i32>(0i, -2147483647i | arg_2.d.x, -(arg_0 << (u_input.e % 32u)), -2147483647i)), -(~abs(0i)));
    var var_3 = Struct_5(_wgslsmith_f_op_f32(-arg_2.b.x));
    return any(select(vec4<bool>(true, true, true, true), vec4<bool>(any(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), true)), func_2(1000f).x < arg_1, !select(true, false, true), true), !vec4<bool>(true, select(false, true, true), true, false)));
}

fn func_4(arg_0: vec3<bool>, arg_1: f32) -> Struct_1 {
    let var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 76712u), vec2<u32>(firstLeadingBit(0u), _wgslsmith_dot_vec2_u32(vec2<u32>(~4294967295u, u_input.d.x), ~select(u_input.d.xz, u_input.a.zz, vec2<bool>(arg_0.x, arg_0.x)))));
    var var_1 = arg_0.x;
    let var_2 = -vec4<i32>(_wgslsmith_add_i32(u_input.b, u_input.b), u_input.b, u_input.b, u_input.b);
    let var_3 = ~_wgslsmith_mult_u32(min(~firstLeadingBit(u_input.e), 1u), 4294967295u);
    var var_4 = var_3;
    return Struct_1(u_input.d << (_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1u, u_input.e >> (var_0 % 32u), _wgslsmith_sub_u32(var_3, 939u)), vec4<u32>(~var_3, firstTrailingBit(1u), ~82554u, ~51551u)) % vec4<u32>(32u)), ~(_wgslsmith_mult_i32(_wgslsmith_add_i32(2147483647i, var_2.x), u_input.b) ^ (_wgslsmith_sub_i32(u_input.b, u_input.b) & u_input.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(select(vec3<bool>(true, true, all(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)))), vec3<bool>(true, false, func_1(0i, 0i, Struct_2(vec3<f32>(795f, -2761f, -182f), vec3<f32>(1000f, 118f, -196f), 0i, vec3<i32>(u_input.b, 36064i, u_input.b), 28179i))), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_div_f32(-436f, _wgslsmith_f_op_f32(-521f + 269f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1273f))));
    var var_1 = firstLeadingBit(reverseBits(1u));
    var_1 = 78139u;
    let var_2 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(400f, 1562f)))))));
    var_1 = min(firstLeadingBit(u_input.e), var_0.a.x);
    var var_3 = Struct_3(Struct_1(reverseBits(var_0.a), -2147483647i), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1062f, var_2.a, -353f, var_2.a))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1517f, var_2.a, -1359f, 1038f), vec4<f32>(var_2.a, var_2.a, -1000f, -430f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1563f, var_2.a, var_2.a, var_2.a))))), Struct_2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(980f, 1642f, var_2.a)) - vec3<f32>(528f, var_2.a, -934f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_2.a, var_2.a, var_2.a))), vec3<f32>(-989f, -1364f, _wgslsmith_f_op_f32(var_2.a + -829f)), vec3<bool>(any(vec4<bool>(false, true, true, true)), true, select(false, true, false)))), _wgslsmith_mod_i32(15311i, 1i), _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(-4989i, var_0.b, var_0.b)), max(vec3<i32>(48945i, u_input.b, var_0.b), vec3<i32>(u_input.b, -1i, u_input.b))), _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.b, -39682i, -2147483647i), vec3<i32>(2147483647i, 34431i, 2147483647i)), ~vec3<i32>(u_input.b, var_0.b, var_0.b))), _wgslsmith_mult_i32(1i, _wgslsmith_mult_i32(-18998i, u_input.b))), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-897f, var_2.a, var_2.a)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a, -2439f, var_2.a)), 1i, _wgslsmith_mult_vec3_i32(-(~vec3<i32>(1i, 55766i, 29272i)), -vec3<i32>(var_0.b, u_input.b, -94317i)), 5606i));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(var_0.a.x, ~(~_wgslsmith_add_u32(var_0.a.x, 79292u)), _wgslsmith_dot_vec2_u32(var_3.a.a.yw, var_0.a.yw), 30409u), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-874f, _wgslsmith_f_op_f32(exp2(var_2.a)))), -389f)), -var_3.a.b);
}

