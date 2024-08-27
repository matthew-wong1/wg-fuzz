struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec4<f32>,
    d: vec2<f32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: f32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: Struct_4, arg_3: vec4<u32>) -> u32 {
    return abs(_wgslsmith_div_u32(~arg_3.x << (min(~arg_3.x, arg_3.x >> (30608u % 32u)) % 32u), 4294967295u));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3, arg_2: u32, arg_3: vec4<u32>) -> vec3<bool> {
    let var_0 = vec3<i32>(global0.x, ~firstLeadingBit(~_wgslsmith_add_i32(-25936i, 15624i)), -2147483647i);
    let var_1 = Struct_3(arg_1.a, abs(u_input.b.x));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c.x, 220f, arg_0.d.x) * arg_1.a.d))));
    global0 = reverseBits(~(~(vec2<i32>(0i, var_1.a.b.x) & var_1.a.b.zx)) >> (vec2<u32>(0u, _wgslsmith_mult_u32(12146u, _wgslsmith_clamp_u32(var_1.b, 0u, 4294967295u))) % vec2<u32>(32u)));
    var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.c.xyy - arg_1.a.d));
    return arg_0.a.xwz;
}

fn func_3(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: f32, arg_3: vec3<f32>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(250f - arg_0.a.d.x)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(739f)))));
    return arg_0.a.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(~_wgslsmith_mult_u32(~1u, _wgslsmith_add_u32(func_1(Struct_1(vec4<bool>(true, false, true, false), false, vec4<f32>(1456f, 943f, 2031f, -259f), vec2<f32>(-1559f, 1776f), vec4<bool>(true, true, true, true)), true, Struct_4(-1000f), vec4<u32>(u_input.c.x, u_input.d, 118158u, 43342u)), ~1u)));
    global0 = vec2<i32>(-1i, -2147483647i);
    let var_1 = select(!(!vec3<bool>(true, any(vec2<bool>(true, false)), true)), vec3<bool>(any(select(vec3<bool>(true, true, true), func_2(Struct_1(vec4<bool>(true, false, false, false), false, vec4<f32>(-784f, -1249f, 1296f, -835f), vec2<f32>(1448f, 1237f), vec4<bool>(true, true, false, true)), Struct_3(Struct_2(20044i, vec3<i32>(u_input.a, global0.x, global0.x), u_input.a, vec3<f32>(-1000f, -1000f, 1226f)), 88679u), var_0.a, vec4<u32>(var_0.a, u_input.d, u_input.b.x, 1u)), true)), any(vec2<bool>(all(vec3<bool>(true, true, false)), true)), !select(true, false, true)), true && !all(vec4<bool>(true, true, false, false)));
    global0 = countOneBits(~vec2<i32>(_wgslsmith_mod_i32(u_input.e, global0.x), u_input.a));
    global0 = _wgslsmith_add_vec2_i32(vec2<i32>(func_3(Struct_3(Struct_2(30469i, vec3<i32>(global0.x, u_input.e, -2147483647i), -30312i, vec3<f32>(-170f, -698f, 619f)), ~14413u), abs(_wgslsmith_sub_vec4_i32(vec4<i32>(global0.x, u_input.e, global0.x, 47069i), vec4<i32>(global0.x, -1i, global0.x, global0.x))), -768f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(904f, 1078f, -971f) + vec3<f32>(-1033f, 917f, 1257f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(465f, -445f, -1254f)))), _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(2147483647i, global0.x, 1i, 37125i) >> (vec4<u32>(39340u, var_0.a, 33073u, u_input.b.x) % vec4<u32>(32u))), _wgslsmith_mod_vec4_i32(max(vec4<i32>(global0.x, global0.x, global0.x, global0.x), vec4<i32>(u_input.a, 0i, global0.x, global0.x)), -vec4<i32>(u_input.e, global0.x, global0.x, global0.x)))), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, global0.x), -(~min(vec2<i32>(2147483647i, -27832i), vec2<i32>(global0.x, u_input.a)))));
    global0 = select(abs(~vec2<i32>(global0.x, u_input.e) | ~vec2<i32>(-19042i, u_input.e)), select(~vec2<i32>(global0.x, u_input.a), max(vec2<i32>(u_input.a, global0.x), vec2<i32>(9947i, u_input.e)) >> (vec2<u32>(55322u, 4294967295u) % vec2<u32>(32u)), func_2(Struct_1(vec4<bool>(true, false, false, true), var_1.x, vec4<f32>(-614f, -1646f, -506f, -821f), vec2<f32>(1031f, 768f), vec4<bool>(true, false, false, var_1.x)), Struct_3(Struct_2(-2147483647i, vec3<i32>(-1i, global0.x, u_input.e), -2147483647i, vec3<f32>(-297f, -1369f, -630f)), var_0.a), 0u, firstTrailingBit(vec4<u32>(var_0.a, var_0.a, 0u, var_0.a))).yy), any(func_2(Struct_1(vec4<bool>(var_1.x, var_1.x, var_1.x, true), var_1.x, vec4<f32>(-1281f, 1000f, -1775f, -637f), vec2<f32>(-846f, -313f), vec4<bool>(false, var_1.x, false, false)), Struct_3(Struct_2(global0.x, vec3<i32>(9352i, 1i, -2147483647i), u_input.a, vec3<f32>(194f, -715f, -1000f)), u_input.c.x), ~69290u, vec4<u32>(var_0.a, 1u, u_input.c.x, 74620u)))) & _wgslsmith_mult_vec2_i32(-(abs(vec2<i32>(-28435i, -24549i)) << (u_input.b.yz % vec2<u32>(32u))), -(vec2<i32>(-34131i, 2147483647i) ^ vec2<i32>(u_input.a, -10027i)) | vec2<i32>(u_input.a, _wgslsmith_mult_i32(-1i, global0.x)));
    global0 = -vec2<i32>(_wgslsmith_div_i32(abs(47496i), abs(u_input.e)), u_input.a) >> (_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(~u_input.c.yz, u_input.c.zx), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.d, ~u_input.d), vec2<u32>(34817u, 4294967295u))) % vec2<u32>(32u));
    let var_2 = Struct_3(Struct_2(select(global0.x, ~func_3(Struct_3(Struct_2(u_input.a, vec3<i32>(30637i, 61265i, 0i), u_input.e, vec3<f32>(-801f, -240f, -520f)), 1u), vec4<i32>(0i, u_input.a, 0i, 43641i), 595f, vec3<f32>(655f, 926f, 847f)), func_2(Struct_1(vec4<bool>(var_1.x, var_1.x, false, false), var_1.x, vec4<f32>(-1111f, 1859f, -1847f, -1000f), vec2<f32>(2151f, -1542f), vec4<bool>(var_1.x, true, true, var_1.x)), Struct_3(Struct_2(global0.x, vec3<i32>(u_input.e, u_input.a, -2147483647i), 2147483647i, vec3<f32>(274f, 1000f, -179f)), var_0.a), _wgslsmith_div_u32(1u, var_0.a), vec4<u32>(u_input.b.x, 4294967295u, 71262u, 1u) << (vec4<u32>(4294967295u, var_0.a, var_0.a, var_0.a) % vec4<u32>(32u))).x), _wgslsmith_mod_vec3_i32(vec3<i32>(max(global0.x, u_input.e), ~1i, u_input.a), vec3<i32>(global0.x, abs(0i), u_input.a)), 0i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-370f, -166f, 526f))) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(504f, 639f, 739f))))), var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(-1050f, _wgslsmith_f_op_f32(max(var_2.a.d.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2.a.d.x - -771f), var_2.a.d.x))))), var_2.a.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.d.x))), 1000f), 354f, max(var_0.a, abs(~_wgslsmith_div_u32(var_2.b, 0u))));
}

