struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: Struct_3,
    e: Struct_2,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec3<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -211f)), _wgslsmith_f_op_f32(sign(-816f))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1463f, -355f))))))));
    let var_1 = Struct_4(Struct_1(firstLeadingBit(vec3<i32>(arg_0, u_input.a, 14869i)) & vec3<i32>(u_input.a, arg_0, 2147483647i)), Struct_1(-vec3<i32>(-14121i, arg_0, -23051i) ^ vec3<i32>(-43795i, arg_0, ~2147483647i)), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.a), vec2<i32>(_wgslsmith_mod_i32(-1i, 2147483647i), i32(-1i) * -40115i)), Struct_3(~vec3<u32>(1u, ~u_input.c, firstTrailingBit(u_input.b.x)), Struct_1(vec3<i32>(1i, u_input.a & arg_0, u_input.a)), Struct_1(_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, arg_0, arg_0), vec3<i32>(-39666i, 0i, u_input.a)) ^ select(vec3<i32>(1i, 1i, 2147483647i), vec3<i32>(-22765i, -11556i, arg_0), true))), Struct_2(countOneBits(_wgslsmith_mult_vec2_u32(~vec2<u32>(0u, u_input.b.x), u_input.b)), 1i >> ((~u_input.c ^ u_input.b.x) % 32u)));
    var var_2 = vec4<u32>(u_input.d.x, var_1.e.a.x, 4294967295u, firstLeadingBit(_wgslsmith_mult_u32(36655u, 1u)));
    var_2 = vec4<u32>(~(~34025u), ~abs(2179u), ~4294967295u, max(1u, var_2.x));
    var_2 = _wgslsmith_add_vec4_u32(~_wgslsmith_sub_vec4_u32(min(select(vec4<u32>(var_2.x, 1u, 68413u, var_1.d.a.x), vec4<u32>(var_1.e.a.x, 0u, 22742u, var_2.x), vec4<bool>(true, false, false, false)), vec4<u32>(48710u, 0u, u_input.c, u_input.d.x) | vec4<u32>(var_1.d.a.x, 15537u, u_input.b.x, var_1.d.a.x)), vec4<u32>(select(1u, 1u, false), var_2.x, var_2.x, 15296u)), vec4<u32>(var_2.x, ~select(_wgslsmith_sub_u32(var_2.x, 4294967295u), var_1.d.a.x | u_input.b.x, arg_0 <= -5951i), 0u, u_input.b.x));
    return select(vec3<i32>(-1i) * -countOneBits(var_1.a.a), min(vec3<i32>(6491i, u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(41256i, var_1.c, arg_0) & vec3<i32>(var_1.d.b.a.x, var_1.b.a.x, u_input.a), vec3<i32>(-1i, arg_0, -22527i))), var_1.b.a), select(!vec3<bool>(all(vec4<bool>(true, true, true, false)), false, true), vec3<bool>(all(vec3<bool>(true, true, true)), select(true, true, -2147483647i <= arg_0), true), any(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), false))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: u32) -> vec3<u32> {
    var var_0 = Struct_2(u_input.b << (firstTrailingBit(vec2<u32>(arg_2, _wgslsmith_mod_u32(31859u, 1u))) % vec2<u32>(32u)), 30732i);
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), -1070f));
    var_0 = Struct_2(vec2<u32>(arg_2, reverseBits(firstLeadingBit(81719u))), arg_0.a.x);
    var var_2 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + var_1) - _wgslsmith_f_op_f32(sign(arg_1.x))));
    let var_3 = arg_0;
    return abs(vec3<u32>(arg_2, _wgslsmith_add_u32(abs(arg_2), _wgslsmith_add_u32(_wgslsmith_mult_u32(arg_2, 57637u), _wgslsmith_mod_u32(arg_2, u_input.b.x))), 0u));
}

fn func_2(arg_0: vec3<u32>) -> u32 {
    let var_0 = false;
    let var_1 = abs(vec3<u32>(~arg_0.x, u_input.d.x, 0u));
    let var_2 = Struct_3(func_4(Struct_1(~func_3(u_input.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1130f, 522f, 1434f, -1000f))), ~4294967295u), Struct_1(_wgslsmith_mod_vec3_i32(func_3(~0i), ~vec3<i32>(0i, 2147483647i, 1i))), Struct_1(-_wgslsmith_add_vec3_i32(~vec3<i32>(-43583i, -1i, -6256i), vec3<i32>(u_input.a, u_input.a, -5142i) ^ vec3<i32>(0i, u_input.a, 3919i))));
    let var_3 = u_input.a;
    let var_4 = Struct_4(var_2.b, var_2.c, _wgslsmith_div_i32(~u_input.a & -5840i, _wgslsmith_sub_i32(_wgslsmith_div_i32(var_3, -20235i), _wgslsmith_sub_i32(u_input.a, -68291i))) << (~(~(~64814u)) % 32u), Struct_3((var_1 << (vec3<u32>(1u, 1u, 24720u) % vec3<u32>(32u))) & select(select(vec3<u32>(var_1.x, u_input.d.x, var_2.a.x), vec3<u32>(var_1.x, 35216u, var_2.a.x), var_0), vec3<u32>(86975u, var_1.x, 4294967295u), var_0), Struct_1(abs(~vec3<i32>(u_input.a, var_3, -19634i))), var_2.b), Struct_2(_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(max(vec2<u32>(1u, u_input.d.x), vec2<u32>(0u, 24306u)), _wgslsmith_div_vec2_u32(u_input.b, var_1.zx)), select(vec2<u32>(arg_0.x, arg_0.x), ~vec2<u32>(4712u, 40755u), vec2<bool>(false, false))), ~var_3));
    return var_1.x;
}

fn func_1() -> StorageBuffer {
    let var_0 = _wgslsmith_clamp_u32(firstLeadingBit(select(59245u, countOneBits(50594u), false)), u_input.c, func_2(abs(vec3<u32>(u_input.d.x, 26635u, u_input.d.x) >> (abs(vec3<u32>(u_input.b.x, 33214u, 49806u)) % vec3<u32>(32u)))));
    var var_1 = vec3<i32>(_wgslsmith_add_i32(15903i & -u_input.a, u_input.a), u_input.a, u_input.a);
    var var_2 = ~((vec2<u32>(u_input.c, 17763u) << (_wgslsmith_add_vec2_u32(u_input.d, vec2<u32>(u_input.d.x, 15739u)) % vec2<u32>(32u))) ^ ~(abs(u_input.b) >> (vec2<u32>(u_input.c, u_input.b.x) % vec2<u32>(32u))));
    var var_3 = 2147483647i;
    let var_4 = vec4<i32>(_wgslsmith_add_i32(u_input.a, ~abs(var_1.x)), ~u_input.a, -2147483647i, select(27106i, min(var_1.x, var_1.x), false));
    return StorageBuffer(vec3<f32>(-165f, _wgslsmith_div_f32(-609f, -1283f), -179f), u_input.a, _wgslsmith_add_vec3_u32(vec3<u32>(var_2.x, u_input.c, _wgslsmith_clamp_u32(_wgslsmith_add_u32(68965u, var_2.x), max(0u, var_2.x), _wgslsmith_sub_u32(var_2.x, var_2.x))), select(~_wgslsmith_clamp_vec3_u32(vec3<u32>(115608u, 0u, u_input.d.x), vec3<u32>(10025u, 1u, u_input.c), vec3<u32>(var_0, u_input.b.x, var_2.x)), vec3<u32>(~28229u, min(23407u, u_input.b.x), u_input.c), true)), ~select(vec2<i32>(2147483647i, var_1.x), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, -2147483647i) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)), -vec2<i32>(-16881i, 1i)), all(select(vec2<bool>(false, false), vec2<bool>(true, true), true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    let var_1 = Struct_5(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-375f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1003f) - -164f)), 1f)));
    var_0 = 35269i << (u_input.b.x % 32u);
    var_0 = _wgslsmith_add_i32(1i, u_input.a);
    var var_2 = !(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)));
    let x = u_input.a;
    s_output = func_1();
}

