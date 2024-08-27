struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
    d: f32,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: vec3<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec2<f32>,
    d: u32,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_4) -> i32 {
    global0 = arg_1;
    let var_0 = _wgslsmith_add_u32(~0u, _wgslsmith_mod_u32(3115u, _wgslsmith_mult_u32(_wgslsmith_div_u32(1u, firstTrailingBit(1u)), (34121u ^ global0.d) >> (max(arg_1.d, u_input.a) % 32u))));
    var var_1 = arg_1;
    let var_2 = 44720i == u_input.d.x;
    var var_3 = Struct_4(Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.c.x, global0.a.a.x))))), !vec4<bool>((arg_1.a.a.x >= -1000f) || true, any(!vec4<bool>(false, false, true, var_2)), !all(vec2<bool>(global0.e.a, false)), !(global0.b.x | false)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1685f, arg_0.x))) + global0.e.c.a))), ~48565u, Struct_3(!var_1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - -147f)), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.a.a) - arg_1.e.c.a)), var_1.a, vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.x * -287f))), arg_1.a.a.x, 1540f)));
    return u_input.b.x;
}

fn func_2(arg_0: f32) -> vec4<bool> {
    var var_0 = u_input.c;
    let var_1 = _wgslsmith_add_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, _wgslsmith_add_i32(u_input.c.x, u_input.b.x)), ~vec3<i32>(_wgslsmith_div_i32(22734i, -2147483647i), u_input.c.x, _wgslsmith_mod_i32(u_input.c.x, 2147483647i))) | (vec3<i32>(_wgslsmith_div_i32(u_input.b.x, firstLeadingBit(-1i)), firstLeadingBit(-26109i), _wgslsmith_add_i32(1i, _wgslsmith_div_i32(11798i, var_0.x))) | u_input.d.ywy);
    let var_2 = vec3<bool>(true, global0.e.a, true);
    var var_3 = Struct_2(-_wgslsmith_add_vec3_i32(var_1, var_1), vec4<i32>(~_wgslsmith_div_i32(_wgslsmith_sub_i32(var_1.x, var_0.x), u_input.c.x), -3895i, _wgslsmith_clamp_i32(~_wgslsmith_add_i32(var_1.x, 3027i), ~(-29684i), max(15240i, var_1.x) ^ 2147483647i), -32618i), ~_wgslsmith_dot_vec4_i32(max(select(vec4<i32>(0i, var_1.x, u_input.c.x, u_input.d.x), vec4<i32>(-49782i, -2147483647i, u_input.b.x, var_0.x), global0.b), _wgslsmith_sub_vec4_i32(vec4<i32>(var_0.x, u_input.c.x, var_0.x, u_input.b.x), vec4<i32>(1i, var_0.x, var_0.x, 1i))), _wgslsmith_mod_vec4_i32(~vec4<i32>(-48942i, u_input.b.x, var_0.x, 2147483647i), u_input.d)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1635f + -574f), -1000f) * arg_0));
    var var_4 = _wgslsmith_mod_u32(u_input.a, global0.d);
    return select(global0.b, vec4<bool>(arg_0 <= -1000f, any(!var_2.xy), (func_3(vec4<f32>(-2203f, -935f, var_3.d, 1707f), Struct_4(global0.a, global0.b, vec2<f32>(arg_0, var_3.d), 7939u, global0.e)) > ~var_3.a.x) | !any(vec2<bool>(var_2.x, var_2.x)), true), any(!global0.b.wxz));
}

fn func_1(arg_0: vec3<u32>) -> Struct_4 {
    global0 = Struct_4(Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-global0.a.a), global0.e.e.zy))), !select(!vec4<bool>(false, global0.b.x, global0.e.a, false), !select(vec4<bool>(true, true, global0.e.a, false), vec4<bool>(true, true, true, false), global0.e.a), global0.b), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1219f, global0.e.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -296f) * _wgslsmith_f_op_f32(-global0.a.a.x))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(global0.c))), global0.e.c.a)), 1u, global0.e);
    global0 = Struct_4(global0.a, global0.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.c.x, global0.c.x) - global0.a.a))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.e.b, global0.c.x) * _wgslsmith_div_vec2_f32(vec2<f32>(global0.e.c.a.x, 879f), vec2<f32>(global0.e.c.a.x, global0.e.e.x))))), ~(~firstTrailingBit(~16638u)), global0.e);
    global0 = Struct_4(global0.a, !(!(!func_2(-2172f))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(round(global0.e.d.a.x))), global0.a.a.x))), ~40257u, global0.e);
    let var_0 = -2147483647i >> (_wgslsmith_mod_u32(max(~0u, 31962u), 1u) % 32u);
    var var_1 = Struct_3(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-604f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.c.x), global0.a.a.x)))), global0.a, Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(global0.c, vec2<f32>(global0.c.x, global0.e.b)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-455f, global0.a.a.x, -191f) - vec3<f32>(global0.c.x, 927f, -673f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.a.a.x, -321f, global0.e.d.a.x), vec3<f32>(586f, global0.c.x, -335f))) - global0.e.e) + global0.e.e)));
    return Struct_4(var_1.d, !vec4<bool>(true, var_1.a, any(vec2<bool>(global0.e.a, false)) && (var_1.a & global0.b.x), -var_0 > var_0), global0.a.a, 68136u, global0.e);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3, arg_2: vec3<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -662f)))), -128f)));
    var var_1 = func_1(firstLeadingBit(vec3<u32>(global0.d, ~abs(4158u), 4294967295u))).e;
    var var_2 = ~_wgslsmith_mult_vec2_i32(abs(vec2<i32>(_wgslsmith_mult_i32(u_input.d.x, 56217i), 1i)), vec2<i32>(-1i) * -_wgslsmith_sub_vec2_i32(u_input.c, u_input.d.xx));
    var_2 = vec2<i32>(-17486i, 1i);
    var var_3 = 20330u;
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_4(func_4(func_1(countOneBits(~vec3<u32>(65033u, global0.d, u_input.a))), global0.e, global0.e.e), !global0.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(944f, -1225f) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(global0.c)), func_4(Struct_4(global0.a, global0.b, vec2<f32>(global0.e.c.a.x, -720f), global0.d, Struct_3(global0.e.a, global0.e.e.x, global0.a, global0.a, global0.e.e)), Struct_3(true, 1686f, global0.a, global0.e.c, global0.e.e), vec3<f32>(global0.c.x, 893f, global0.e.d.a.x)).a)))), _wgslsmith_dot_vec4_u32(select((vec4<u32>(0u, global0.d, 28480u, 117941u) & vec4<u32>(0u, global0.d, 40446u, 0u)) | vec4<u32>(1u, global0.d, u_input.a, global0.d), firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(14009u, 85097u, 4294967295u, 1u), vec4<u32>(4294967295u, u_input.a, u_input.a, global0.d))), global0.b.x), vec4<u32>(_wgslsmith_mult_u32(global0.d, abs(35511u)), _wgslsmith_div_u32(_wgslsmith_sub_u32(global0.d, global0.d), max(global0.d, u_input.a)), 1u, _wgslsmith_mod_u32(_wgslsmith_mod_u32(1u, 4294967295u), 1u & global0.d))), func_1(~(~(vec3<u32>(4294967295u, global0.d, u_input.a) ^ vec3<u32>(u_input.a, 5238u, 11578u)))).e);
    var var_0 = u_input.a;
    let var_1 = abs(~1u) | _wgslsmith_dot_vec3_u32(~vec3<u32>(71873u, ~28509u, _wgslsmith_clamp_u32(1u, global0.d, 64712u)), vec3<u32>(u_input.a, _wgslsmith_clamp_u32(u_input.a, 1u ^ global0.d, 4294967295u), select(~global0.d, _wgslsmith_mult_u32(u_input.a, u_input.a), global0.e.a)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-724f - 1f) + 377f);
    var_0 = 4294967295u;
    let var_3 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(~(-u_input.d.wwy) ^ -_wgslsmith_sub_vec3_i32(u_input.d.www << (vec3<u32>(4294967295u, u_input.a, 58965u) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(u_input.d.zxy, u_input.d.wxy, u_input.d.wyx)), 51817i, ~vec2<u32>(4294967295u, global0.d | ~global0.d));
}

