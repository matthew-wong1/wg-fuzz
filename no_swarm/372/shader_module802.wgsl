struct Struct_1 {
    a: u32,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec2<f32>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec3<bool>,
    d: vec2<i32>,
    e: vec4<f32>,
}

struct Struct_5 {
    a: u32,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
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

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<u32>) -> i32 {
    var var_0 = _wgslsmith_add_u32(0u, reverseBits(~64583u) ^ ~(~(u_input.a.x << (10773u % 32u))));
    var_0 = u_input.a.x;
    let var_1 = Struct_2(Struct_1(4294967295u, firstTrailingBit(_wgslsmith_mult_i32(1i, ~(-1i))), ~arg_1.x));
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1501f - 830f) - _wgslsmith_f_op_f32(floor(-352f))), -1240f))), 594f, any(!select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), true))));
    var_0 = _wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(arg_0.yzx, _wgslsmith_mod_vec3_u32(arg_0.ywx, vec3<u32>(0u, arg_0.x, arg_1.x))) << (~firstTrailingBit(var_1.a.c) % 32u), _wgslsmith_div_u32(~var_1.a.c, var_1.a.a)), _wgslsmith_sub_u32(firstLeadingBit(var_1.a.a), _wgslsmith_sub_u32(abs(abs(arg_1.x)), ~u_input.a.x ^ (arg_0.x << (arg_0.x % 32u)))));
    return _wgslsmith_dot_vec2_i32(vec2<i32>(0i, ~abs(4394i)) << (abs(arg_1) % vec2<u32>(32u)), ~vec2<i32>(var_1.a.b, (i32(-1i) * -2147483647i) >> ((26449u | u_input.a.x) % 32u)));
}

fn func_2(arg_0: bool) -> vec2<bool> {
    var var_0 = Struct_1((u_input.a.x ^ u_input.a.x) >> (1u % 32u), func_3(~vec4<u32>(reverseBits(37147u), 43170u, ~4294967295u, 1u), firstTrailingBit(vec2<u32>(max(u_input.a.x, u_input.a.x), _wgslsmith_add_u32(58105u, u_input.a.x)))), u_input.a.x | ~(~1u));
    var_0 = Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(~0u, ~var_0.a, var_0.c), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, u_input.a.x, 0u), _wgslsmith_div_vec3_u32(vec3<u32>(0u, var_0.a, 138247u), vec3<u32>(0u, var_0.c, u_input.a.x))) >> (vec3<u32>(41437u, 140515u, _wgslsmith_clamp_u32(var_0.a, u_input.a.x, var_0.c)) % vec3<u32>(32u))), 27829i, ~_wgslsmith_sub_u32(var_0.c, var_0.c));
    let var_1 = select(~_wgslsmith_sub_vec3_u32(abs(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.a, 4294967295u, u_input.a.x), vec3<u32>(1u, 4294967295u, 39340u))), vec3<u32>(0u, ~var_0.a, ~var_0.c)), _wgslsmith_clamp_vec3_u32(~select(vec3<u32>(4294967295u, u_input.a.x, 6715u), vec3<u32>(164620u, u_input.a.x, 0u), vec3<bool>(arg_0, arg_0, arg_0)), vec3<u32>(var_0.c, var_0.c, var_0.c), select(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(0u, 1u, var_0.a)), abs(vec3<u32>(0u, u_input.a.x, 1u)), !arg_0)) >> (_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 1u, 0u) >> (vec3<u32>(8719u, u_input.a.x, var_0.c) % vec3<u32>(32u)), ~_wgslsmith_add_vec3_u32(vec3<u32>(var_0.c, var_0.a, 1u), vec3<u32>(u_input.a.x, var_0.c, 1u))) % vec3<u32>(32u)), true);
    var_0 = Struct_1(~4294967295u, max(var_0.b, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(0i, 0i, 30254i)), -vec3<i32>(1i, -34768i, -1i)) | -1i), ~_wgslsmith_sub_u32(_wgslsmith_mod_u32(~0u, var_1.x), abs(abs(1u))));
    let var_2 = Struct_1(~(~(7793u ^ var_0.a) ^ ~52292u), _wgslsmith_mod_i32(func_3(~abs(vec4<u32>(var_1.x, var_1.x, 86928u, u_input.a.x)), _wgslsmith_sub_vec2_u32(~vec2<u32>(55063u, 32837u), vec2<u32>(u_input.a.x, 26047u))), var_0.b | var_0.b), 20076u);
    return vec2<bool>(arg_0, arg_0);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: vec3<f32>, arg_3: vec4<i32>) -> f32 {
    let var_0 = Struct_2(Struct_1(u_input.a.x, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(arg_3.x, arg_3.x), vec2<i32>(arg_3.x, arg_3.x)), vec2<i32>(-2147483647i, arg_3.x)), _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_3.x, 0i), arg_3.zw, vec2<i32>(79865i, 0i)) & vec2<i32>(-20355i, -1i)), 17400u));
    var var_1 = arg_2;
    return var_1.x;
}

fn func_1() -> i32 {
    let var_0 = Struct_5(_wgslsmith_dot_vec2_u32(vec2<u32>(~55590u, 1u) | firstTrailingBit(_wgslsmith_sub_vec2_u32(u_input.a, u_input.a)), vec2<u32>(29805u, 1u)), true, _wgslsmith_f_op_f32(func_4(func_2(-1117f != _wgslsmith_f_op_f32(sign(-1844f))), !(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(599f, -706f, -746f)))) - vec3<f32>(_wgslsmith_f_op_f32(abs(-1612f)), _wgslsmith_f_op_f32(min(-529f, -1996f)), _wgslsmith_f_op_f32(floor(-2887f)))), _wgslsmith_clamp_vec4_i32(-firstTrailingBit(vec4<i32>(2147483647i, 1i, 2147483647i, -1i)), firstTrailingBit(vec4<i32>(0i, 2147483647i, 0i, 70252i) >> (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u))), max(vec4<i32>(0i, -2147483647i, 38842i, -2147483647i), vec4<i32>(5200i, -1i, -32645i, 1i)) << (firstLeadingBit(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 16326u)) % vec4<u32>(32u))))));
    let var_1 = _wgslsmith_sub_u32(abs(_wgslsmith_mult_u32(abs(~var_0.a), 35111u)), ~120792u | var_0.a);
    var var_2 = var_0;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-773f, 1f));
    var_2 = Struct_5(var_2.a, true, -261f);
    return func_3(max(vec4<u32>(var_1, 4294967295u, 23458u, 114491u), vec4<u32>(u_input.a.x, var_2.a, 4294967295u, 4294967295u)) | _wgslsmith_mod_vec4_u32(~vec4<u32>(1u, var_0.a, 70085u, u_input.a.x), _wgslsmith_mod_vec4_u32(vec4<u32>(var_2.a, 12818u, var_0.a, var_1), vec4<u32>(1u, var_2.a, 8721u, var_2.a))), _wgslsmith_mod_vec2_u32(reverseBits(u_input.a), vec2<u32>(var_2.a, 1u)) >> (vec2<u32>(firstLeadingBit(4294967295u), 4294967295u) % vec2<u32>(32u))) << (0u % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -firstLeadingBit(1i) | _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(-1i, 1i, 10215i), min(vec3<i32>(-1i, -1i, -1i), vec3<i32>(1i, 49880i, 1i))), func_1()), -select(vec2<i32>(-1i, 0i), _wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, -16155i), vec2<i32>(1i, -24170i)), true));
    let var_1 = !(!(!(max(69500u, 1u) <= min(u_input.a.x, u_input.a.x))));
    var var_2 = select(!select(select(!vec3<bool>(false, var_1, var_1), !vec3<bool>(var_1, true, var_1), true), !select(vec3<bool>(var_1, true, true), vec3<bool>(false, false, var_1), true), !select(vec3<bool>(var_1, false, var_1), vec3<bool>(var_1, true, var_1), false)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), !vec3<bool>(true, true, var_1), var_1), select(!vec3<bool>(var_1, var_1, var_1), vec3<bool>(true, true, true), vec3<bool>(true, true, u_input.a.x == 4294967295u))), !(!(!(!vec3<bool>(false, false, var_1)))));
    var var_3 = Struct_3(Struct_2(Struct_1(u_input.a.x, 1i, ~1u)), 393f, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1104f, -1006f))))), Struct_2(Struct_1(select(_wgslsmith_dot_vec3_u32(vec3<u32>(12918u, u_input.a.x, 1u), vec3<u32>(12382u, 72427u, 44972u)), ~u_input.a.x, true), ~2147483647i, abs(74290u))));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_3.c.x, _wgslsmith_f_op_f32(-var_3.b), all(vec3<bool>(all(var_2.xy), false, select(false, false, true))))));
    var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -712f));
    let var_5 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_3.b, var_3.c.x)))))), 1i);
}

