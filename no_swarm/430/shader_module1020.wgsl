struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: bool,
    c: f32,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
    d: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: i32,
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: f32, arg_1: vec4<f32>) -> bool {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(arg_0, arg_0)))))), -240f, arg_0, _wgslsmith_f_op_f32(step(-471f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_1.x, 1159f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0, -1332f))))))));
    var var_1 = ~vec3<u32>(31518u, u_input.c.x, 52230u) | vec3<u32>(18478u, ~u_input.c.x, ~1u);
    var_1 = u_input.c.zxw;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.zx));
    return !(!(!any(vec4<bool>(true, true, true, true))));
}

fn func_3(arg_0: vec2<f32>) -> i32 {
    var var_0 = countOneBits(u_input.c.yzy);
    var_0 = ~(u_input.c.wzx << (~(~(vec3<u32>(u_input.c.x, 18401u, 39612u) >> (vec3<u32>(var_0.x, 54101u, 30876u) % vec3<u32>(32u)))) % vec3<u32>(32u)));
    var var_1 = _wgslsmith_add_vec3_u32(vec3<u32>(var_0.x, ~13568u, ~select(var_0.x, 0u, false)), _wgslsmith_sub_vec3_u32(~vec3<u32>(32973u, 49064u, var_0.x) << (~u_input.c.xzz % vec3<u32>(32u)), ~(~vec3<u32>(u_input.c.x, u_input.c.x, 1u)))) >> ((~_wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, var_0.x, var_0.x), vec3<u32>(4294967295u, var_0.x, 67401u), vec3<u32>(u_input.c.x, var_0.x, 5581u)), vec3<u32>(77613u, var_0.x, 1u) ^ vec3<u32>(1u, 23987u, var_0.x)) << (abs((vec3<u32>(1u, 1u, var_0.x) & u_input.c.xyz) & u_input.c.yzw) % vec3<u32>(32u))) % vec3<u32>(32u));
    let var_2 = select(vec2<bool>(true, true), select(!vec2<bool>(true, arg_0.x == arg_0.x), select(select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(false, false), true), vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(false, false), vec2<bool>(false, false), true), true)), vec2<bool>(select(true, true, true), _wgslsmith_f_op_f32(arg_0.x - 292f) <= -1000f)), !any(!select(vec2<bool>(true, false), vec2<bool>(false, false), true)));
    var var_3 = u_input.b;
    return _wgslsmith_mult_i32(-min(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.b), -u_input.a.yx), min(u_input.a.x, u_input.a.x)), _wgslsmith_mod_i32(i32(-1i) * -56096i, max(i32(-1i) * -1i, u_input.b)));
}

fn func_2(arg_0: vec2<i32>, arg_1: bool, arg_2: i32) -> f32 {
    var var_0 = arg_1 || false;
    var var_1 = Struct_2(vec3<i32>(1i, max(func_3(vec2<f32>(1141f, -724f)), i32(-1i) * -19709i) & (abs(1i) << (1u % 32u)), _wgslsmith_mult_i32(~firstLeadingBit(u_input.a.x), -arg_2)), !(_wgslsmith_clamp_i32(u_input.a.x, arg_2, -1i) == ~arg_2) || all(vec4<bool>(false, arg_1, arg_1, true)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(386f)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - 481f))), Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-425f, 168f), vec2<f32>(967f, -1000f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(303f + -444f))), arg_1), _wgslsmith_f_op_f32(f32(-1f) * -557f));
    var_0 = !select(any(vec2<bool>(false, var_1.b)), !(!all(vec3<bool>(true, arg_1, var_1.d.c))), arg_1);
    var var_2 = _wgslsmith_f_op_vec2_f32(max(var_1.d.a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.d.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.d.a.x, -1304f) * vec2<f32>(var_1.d.b, var_1.e)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c, var_1.d.a.x) + var_1.d.a))) * vec2<f32>(var_1.e, _wgslsmith_div_f32(var_1.e, 1448f))))));
    var_1 = Struct_2(var_1.a, arg_1, var_2.x, Struct_1(_wgslsmith_f_op_vec2_f32(abs(var_1.d.a)), var_2.x, arg_1), _wgslsmith_f_op_f32(633f + var_2.x));
    return var_2.x;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<bool>) -> StorageBuffer {
    var var_0 = vec4<u32>(select(10350u, 0u, all(select(!vec4<bool>(false, arg_2.c, false, arg_3.x), select(vec4<bool>(true, false, arg_1.c, arg_3.x), vec4<bool>(true, false, arg_1.c, true), vec4<bool>(arg_3.x, arg_1.c, true, arg_0)), vec4<bool>(arg_2.c, true, false, arg_3.x)))), 11047u, countOneBits(1u), _wgslsmith_mult_u32(u_input.c.x, 0u));
    var_0 = u_input.c;
    let var_1 = Struct_3(u_input.c.zwz, ~(~u_input.c.wzx), u_input.b, u_input.a.x);
    var_0 = _wgslsmith_mult_vec4_u32(u_input.c, u_input.c);
    let var_2 = _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(abs(vec4<i32>(~2147483647i, u_input.b, var_1.c, -u_input.a.x)), -vec4<i32>(_wgslsmith_clamp_i32(-47022i, u_input.a.x, u_input.b), var_1.c, var_1.d, -2147483647i)), _wgslsmith_sub_vec4_i32(~(~vec4<i32>(u_input.a.x, var_1.d, 0i, -86613i) >> (u_input.c % vec4<u32>(32u))), select(~(-vec4<i32>(-8205i, -44271i, u_input.b, -46632i)), -select(vec4<i32>(u_input.b, -2147483647i, u_input.a.x, var_1.c), vec4<i32>(u_input.b, 1i, 0i, 0i), vec4<bool>(true, true, arg_1.c, true)), select(!vec4<bool>(arg_0, true, arg_1.c, arg_1.c), !vec4<bool>(arg_1.c, true, true, arg_3.x), false != arg_1.c))));
    return StorageBuffer(vec3<u32>(_wgslsmith_sub_u32(~var_1.b.x, _wgslsmith_mod_u32(u_input.c.x, 25536u)) >> (4294967295u % 32u), _wgslsmith_div_u32(_wgslsmith_add_u32(57253u, abs(var_1.b.x)), _wgslsmith_add_u32(~var_1.b.x, 4294967295u)), ~(~71424u)), select(vec3<i32>(7384i, firstTrailingBit(_wgslsmith_clamp_i32(1i, 2147483647i, 1i)), var_2), u_input.a, !arg_3), abs(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(32306i, var_2, u_input.b) << (vec3<u32>(u_input.c.x, 31489u, 88657u) % vec3<u32>(32u)), firstTrailingBit(u_input.a)), func_3(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_2.a.x, 218f)))))), func_3(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(arg_2.a))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 40804i;
    let var_1 = Struct_3(~_wgslsmith_add_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, 1u), vec3<u32>(0u, 50839u, u_input.c.x)), vec3<u32>(u_input.c.x, u_input.c.x, 25400u) >> (~u_input.c.xzy % vec3<u32>(32u))), vec3<u32>(40439u, 1u, _wgslsmith_mod_u32(u_input.c.x >> (u_input.c.x % 32u), ~u_input.c.x)) & vec3<u32>(_wgslsmith_sub_u32(u_input.c.x, 24542u) ^ 1u, u_input.c.x, _wgslsmith_clamp_u32(~u_input.c.x, ~u_input.c.x, u_input.c.x)), -_wgslsmith_sub_i32(u_input.a.x, var_0), -u_input.b ^ abs(_wgslsmith_add_i32(~u_input.a.x, i32(-1i) * -2147483647i)));
    var var_2 = true;
    let x = u_input.a;
    s_output = func_4(true | (all(vec4<bool>(false, true, false, true)) && (func_1(-203f, vec4<f32>(-391f, -374f, 1532f, -1649f)) & (2147483647i <= var_1.c))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(918f, -1000f), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(620f, -2658f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(u_input.a.yy, true, -u_input.a.x)) * _wgslsmith_f_op_f32(-874f - 372f)), true), Struct_1(vec2<f32>(1097f, 744f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(521f)), 1f), true), !(!select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), true), vec3<bool>(false, true, true), all(vec4<bool>(true, true, false, false)))));
}

