struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<u32>,
    d: vec2<f32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: bool,
    c: Struct_1,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<u32>, arg_2: u32, arg_3: Struct_4) -> i32 {
    let var_0 = vec3<i32>(abs(_wgslsmith_mod_i32(arg_3.c.a, ~(~arg_3.c.a))), u_input.d.x, -_wgslsmith_clamp_i32(_wgslsmith_div_i32(max(arg_3.e.a.a, 17574i), u_input.d.x >> (arg_2 % 32u)), _wgslsmith_mult_i32(~arg_3.c.a, arg_3.e.a.a), -_wgslsmith_dot_vec2_i32(vec2<i32>(0i, arg_3.c.a), vec2<i32>(4998i, arg_3.a.x))));
    var var_1 = Struct_1(14381i, arg_3.b | (_wgslsmith_div_i32(arg_3.e.a.a, -42856i) == firstTrailingBit(_wgslsmith_sub_i32(-1i, -2147483647i))), ~(~vec4<u32>(8877u, u_input.b.x, 0u, arg_1.x)) >> ((vec4<u32>(~arg_2, firstTrailingBit(arg_3.c.c.x), 1u, _wgslsmith_clamp_u32(59141u, 17242u, arg_3.c.c.x)) << (vec4<u32>(~2718u, arg_3.e.a.c.x, ~63245u, ~17512u) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(128f, arg_0.x) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-421f, -843f))))), vec4<bool>(true, !arg_3.e.a.e.x, false, arg_3.c.d.x == _wgslsmith_f_op_f32(arg_3.e.a.d.x + _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    return 2147483647i;
}

fn func_2(arg_0: bool) -> vec4<bool> {
    let var_0 = Struct_4(min(select(vec2<i32>(-u_input.a.x, _wgslsmith_mult_i32(0i, 2100i)), vec2<i32>(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(u_input.c, 0i, u_input.c, u_input.a.x)), -15958i), false), vec2<i32>(max(-u_input.c, u_input.d.x), u_input.a.x)), 0u <= _wgslsmith_mod_u32(select(~47546u, ~83894u, arg_0), u_input.b.x), Struct_1(-24957i, true, ~select(vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, 0u), vec4<u32>(1u, 56053u, u_input.b.x, 1u), vec4<bool>(arg_0, true, arg_0, false)) | firstLeadingBit(select(vec4<u32>(u_input.b.x, 0u, 4294967295u, u_input.b.x), vec4<u32>(1u, 16224u, u_input.b.x, u_input.b.x), vec4<bool>(arg_0, false, false, arg_0))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), select(vec4<bool>(true, arg_0, all(vec4<bool>(arg_0, arg_0, arg_0, arg_0)), false), !select(vec4<bool>(true, arg_0, true, true), vec4<bool>(true, arg_0, arg_0, true), vec4<bool>(arg_0, arg_0, arg_0, arg_0)), vec4<bool>(u_input.b.x < 1u, all(vec3<bool>(false, true, arg_0)), false, arg_0 != arg_0))), all(vec2<bool>(arg_0, false)), Struct_2(Struct_1(func_3(vec4<f32>(1616f, -1299f, 663f, 208f), vec2<u32>(u_input.b.x, 81646u), 0u << (u_input.b.x % 32u), Struct_4(u_input.a.yz, arg_0, Struct_1(0i, arg_0, vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, 1u), vec2<f32>(-485f, -322f), vec4<bool>(false, false, false, arg_0)), true, Struct_2(Struct_1(u_input.d.x, arg_0, vec4<u32>(1u, u_input.b.x, 109530u, 31089u), vec2<f32>(-382f, -528f), vec4<bool>(true, false, false, arg_0))))), any(select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(true, arg_0, arg_0), false)), _wgslsmith_sub_vec4_u32(min(vec4<u32>(u_input.b.x, u_input.b.x, 71358u, u_input.b.x), vec4<u32>(4294967295u, 19392u, u_input.b.x, 4294967295u)), ~vec4<u32>(24934u, u_input.b.x, 1536u, u_input.b.x)), vec2<f32>(_wgslsmith_f_op_f32(step(-680f, 2871f)), _wgslsmith_f_op_f32(f32(-1f) * -933f)), !vec4<bool>(arg_0, true, arg_0, false))));
    var var_1 = var_0.e.a.d;
    var var_2 = Struct_4(_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(33542i, var_0.e.a.a), var_0.a), var_0.a), false, Struct_1(firstLeadingBit(1i), var_0.b, var_0.c.c, vec2<f32>(var_1.x, _wgslsmith_f_op_f32(-var_1.x)), select(var_0.e.a.e, vec4<bool>(var_0.d, any(var_0.e.a.e.yx), false & var_0.d, true), var_0.e.a.e)), !arg_0, var_0.e);
    let var_3 = var_0.e.a;
    var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.c.d * var_3.d) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_2.c.d.x, var_0.c.d.x), var_0.e.a.d))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1323f, -538f), vec2<f32>(var_2.e.a.d.x, -1000f)), _wgslsmith_f_op_vec2_f32(-var_0.c.d)), !var_2.c.e.wx)), vec2<f32>(-1924f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(var_2.e.a.d.x)))))))));
    return !vec4<bool>(select(all(var_3.e), any(vec3<bool>(false, false, var_2.d)), all(!vec2<bool>(false, var_2.b))), all(vec3<bool>(var_3.e.x && var_3.b, true, any(vec3<bool>(var_2.c.b, true, true)))), all(select(var_3.e, var_0.e.a.e, vec4<bool>(var_3.e.x, false, var_0.d, false))) && arg_0, (firstTrailingBit(0u) | 11382u) > abs(0u | var_0.c.c.x));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_2) -> vec4<bool> {
    let var_0 = ~u_input.a;
    var var_1 = vec2<i32>(~(-(~(~var_0.x))), ~(-1i));
    let var_2 = arg_1.a.c;
    let var_3 = !vec2<bool>(arg_0.x, arg_0.x);
    let var_4 = 1114f;
    return select(!(!func_2(any(vec2<bool>(arg_1.a.e.x, arg_1.a.b)))), vec4<bool>(arg_0.x, arg_1.a.b, !(!arg_1.a.e.x) & arg_0.x, all(func_2(true).xw)), !vec4<bool>(arg_0.x, true, false, var_3.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(-2147483647i ^ firstLeadingBit(u_input.d.x));
    var var_1 = any(func_1(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)), Struct_2(Struct_1(abs(0i), all(vec2<bool>(false, false)), abs(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 51463u)), vec2<f32>(-216f, -961f), vec4<bool>(true, false, false, false)))));
    var var_2 = Struct_3(343f);
    var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.a - _wgslsmith_f_op_f32(var_2.a + 420f)), var_2.a) - var_2.a));
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

