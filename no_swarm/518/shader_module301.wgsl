struct Struct_1 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: bool,
    c: vec2<f32>,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: vec2<u32>,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec2<f32>) -> vec3<bool> {
    global0 = 1u;
    let var_0 = true;
    var var_1 = ~abs(min(i32(-1i) * -1i, ~min(12418i, 41940i)));
    var var_2 = Struct_2(select(min(vec3<i32>(1i, 2147483647i, 1i) << (vec3<u32>(104280u, 4294967295u, u_input.a.x) % vec3<u32>(32u)), abs(vec3<i32>(-2147483647i, -2147483647i, 2147483647i))) | _wgslsmith_mod_vec3_i32(-vec3<i32>(-54110i, 2147483647i, -13889i), select(vec3<i32>(1i, -2147483647i, 34003i), vec3<i32>(0i, -50258i, 36731i), vec3<bool>(var_0, false, var_0))), ~(~vec3<i32>(-44740i, -29652i, 2147483647i) << (vec3<u32>(u_input.a.x, u_input.a.x, 49265u) % vec3<u32>(32u))), ~(~(-2147483647i)) != (-5786i >> (~u_input.a.x % 32u))), false, arg_0);
    global0 = u_input.a.x;
    return !vec3<bool>(var_2.b, true, var_2.b);
}

fn func_2(arg_0: i32) -> vec3<i32> {
    global0 = ~66300u;
    global0 = min(~((~u_input.a.x >> (u_input.a.x % 32u)) ^ 1u), 4294967295u);
    let var_0 = select(select(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), !(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true))), false), select(!vec3<bool>(any(vec3<bool>(false, false, true)), select(true, false, false), true), !select(vec3<bool>(false, false, true), func_3(vec2<f32>(-1654f, 181f)), true), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), all(vec4<bool>(true, false, true, true)))), select(func_3(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(360f, -850f) - vec2<f32>(-504f, 627f))))), !(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), false)), select(select(vec3<bool>(true, false, false), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -173f)));
    return vec3<i32>(reverseBits(-(i32(-1i) * -1i)), _wgslsmith_mod_i32(1i, min(_wgslsmith_add_i32(-arg_0, firstLeadingBit(arg_0)), -38515i)), reverseBits(-_wgslsmith_dot_vec2_i32(-vec2<i32>(-76099i, 2147483647i), ~vec2<i32>(arg_0, 680i))));
}

fn func_1(arg_0: vec4<f32>) -> vec4<u32> {
    var var_0 = Struct_2(_wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(func_2(10566i), vec3<i32>(33888i, 13452i, 3485i)), ~abs(vec3<i32>(-34038i, 0i, 5738i))), vec3<i32>(1i, 1i, 1i) << (((vec3<u32>(0u, u_input.a.x, 1u) & vec3<u32>(0u, u_input.a.x, 1u)) & abs(vec3<u32>(u_input.a.x, 42990u, u_input.a.x))) % vec3<u32>(32u)), max(~firstTrailingBit(vec3<i32>(1i, -1i, 1i)), vec3<i32>(1i, ~23871i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -33884i, -38895i), vec3<i32>(-14626i, 2147483647i, 1i))))), true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-1000f, arg_0.x), _wgslsmith_f_op_f32(floor(arg_0.x))))));
    let var_1 = vec4<bool>(!var_0.b, !(~(~u_input.a.x) > firstTrailingBit(u_input.a.x)), any(vec3<bool>(var_0.b && true, !func_3(var_0.c).x, func_3(_wgslsmith_f_op_vec2_f32(sign(var_0.c))).x)), false);
    let var_2 = vec3<bool>(false, true, false);
    let var_3 = Struct_4(abs(min(_wgslsmith_mod_i32(var_0.a.x, var_0.a.x) | _wgslsmith_dot_vec2_i32(var_0.a.zy, var_0.a.zy), -23789i)), Struct_1(var_1.wyy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.x, 1094f), vec2<f32>(var_0.c.x, arg_0.x)))), all(vec3<bool>(!var_1.x, var_1.x, -1000f < arg_0.x))), min(vec2<u32>(u_input.a.x, 4294967295u), vec2<u32>(u_input.a.x, ~20609u)), false, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(383f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(var_0.c.x, arg_0.x))))), _wgslsmith_f_op_f32(sign(-312f)))));
    let var_4 = Struct_2(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, var_0.a.x, 30261i), var_0.a), -var_3.a), (vec3<i32>(-60684i, 2448i, -55290i) >> (~vec3<u32>(1u, 0u, var_3.c.x) % vec3<u32>(32u))) & ~var_0.a), var_1.x, var_0.c);
    return ~select(~vec4<u32>(var_3.c.x, firstTrailingBit(u_input.a.x), _wgslsmith_mult_u32(103287u, 0u), countOneBits(u_input.a.x)), vec4<u32>(min(2247u, 561u), u_input.a.x, _wgslsmith_sub_u32(~1u, ~24212u), var_3.c.x), false);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(1i, ~(~1u), -2147483647i, ~(~(~func_1(vec4<f32>(-655f, 768f, 1058f, -913f)))), ~0u);
}

