struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<i32>,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: f32;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> i32 {
    var var_0 = 0i;
    let var_1 = Struct_2(vec3<bool>(any(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false))), any(vec3<bool>(true, true, true)), all(!select(vec2<bool>(false, false), vec2<bool>(true, false), false))), abs(~vec4<i32>(-2147483647i, -9845i, 0i, 17288i)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(global0.x, 4294967295u, 0u, u_input.a.x ^ 4294967295u), countOneBits(~vec4<u32>(71412u, 16713u, u_input.c, 1u))) % vec4<u32>(32u)));
    var var_2 = Struct_1(vec2<u32>(global0.x, u_input.c), _wgslsmith_add_i32(_wgslsmith_div_i32(abs(-1i) << ((u_input.b.x << (0u % 32u)) % 32u), var_1.b.x), -(_wgslsmith_dot_vec4_i32(var_1.b, var_1.b) ^ 2147483647i)), vec2<i32>(6820i, 1i), -6925i);
    var var_3 = _wgslsmith_sub_u32(~(select(_wgslsmith_mult_u32(u_input.c, u_input.a.x), _wgslsmith_add_u32(4294967295u, var_2.a.x), var_1.a.x) << (abs(~69290u) % 32u)), ~_wgslsmith_add_u32(select(51674u, countOneBits(64217u), false), _wgslsmith_mod_u32(0u, global0.x)));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(830f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(965f)) - -784f))) == _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-757f + -745f)) + _wgslsmith_f_op_f32(abs(-491f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, -1341f)))), true));
    return ~(~_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, 1i, -2147483647i), vec3<i32>(var_1.b.x, -1i, -38463i)), _wgslsmith_add_vec3_i32(vec3<i32>(-1i, 53982i, var_2.c.x), var_1.b.xxz)), var_1.b.wxx));
}

fn func_2(arg_0: vec2<bool>) -> u32 {
    var var_0 = 4294967295u;
    var var_1 = Struct_3(Struct_1(~u_input.a.yy, ~(-_wgslsmith_mod_i32(5652i, -29449i)), firstLeadingBit(reverseBits(vec2<i32>(-2147483647i, -1i) << (u_input.b % vec2<u32>(32u)))), (i32(-1i) * -1i) | ~func_3()), ((!arg_0.x == true) && false) || all(select(vec4<bool>(false, arg_0.x, true, arg_0.x), !vec4<bool>(arg_0.x, true, true, true), true & arg_0.x)), Struct_1(~firstTrailingBit(~u_input.a.xx), -1i, ~(-vec2<i32>(-1i, 2147483647i)), -1i));
    global1 = _wgslsmith_f_op_f32(select(416f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2024f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -543f), _wgslsmith_f_op_f32(sign(697f))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-424f - -1185f), _wgslsmith_f_op_f32(sign(-424f)))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(184f, -286f)))))), var_1.b));
    var_1 = Struct_3(Struct_1(vec2<u32>(9229u, u_input.c), var_1.c.d, select(firstLeadingBit(select(vec2<i32>(var_1.c.d, var_1.a.d), vec2<i32>(26948i, 16910i), vec2<bool>(false, false))), select(select(vec2<i32>(var_1.c.c.x, -48591i), var_1.c.c, true), var_1.c.c, true), !vec2<bool>(var_1.b, arg_0.x)), var_1.a.c.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(136f, -253f))), _wgslsmith_f_op_f32(-926f * 1068f)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-1777f)), -671f, any(vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x)))) - 740f), var_1.c);
    var_1 = Struct_3(Struct_1(vec2<u32>(abs(u_input.a.x), ~(~global0.x)), _wgslsmith_dot_vec4_i32(select(~vec4<i32>(-2147483647i, var_1.a.b, 9368i, var_1.a.b), vec4<i32>(var_1.a.d, -60368i, var_1.a.c.x, -2147483647i) & vec4<i32>(-13647i, var_1.a.d, var_1.c.c.x, 1i), var_1.b || arg_0.x), _wgslsmith_div_vec4_i32(vec4<i32>(33638i, var_1.c.d, 2147483647i, var_1.a.c.x) ^ vec4<i32>(-44398i, var_1.a.d, 275i, -44195i), countOneBits(vec4<i32>(var_1.a.b, var_1.c.b, var_1.c.d, 1i)))), _wgslsmith_div_vec2_i32(var_1.c.c, var_1.c.c), -(~(-var_1.c.d))), false, Struct_1(~select(u_input.b, ~u_input.b, true), func_3(), vec2<i32>(_wgslsmith_mod_i32(var_1.a.d, ~var_1.a.b), ~var_1.a.b), -49362i));
    return u_input.a.x;
}

fn func_1(arg_0: vec2<u32>) -> Struct_1 {
    global0 = vec3<u32>(arg_0.x, ~global0.x, 9732u);
    global0 = u_input.a;
    var var_0 = ~vec2<i32>(1i, 1i) ^ _wgslsmith_div_vec2_i32(vec2<i32>(~2408i, 0i) << (vec2<u32>(global0.x, 111116u) % vec2<u32>(32u)), reverseBits(vec2<i32>(-2147483647i, min(0i, 1i))));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) * 685f), -504f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-284f - _wgslsmith_f_op_f32(f32(-1f) * -1090f)) + -2254f)));
    let var_1 = _wgslsmith_mod_vec4_u32(vec4<u32>(4467u, ~(func_2(vec2<bool>(true, false)) << (abs(0u) % 32u)), arg_0.x, max(~(~global0.x), global0.x)), ~vec4<u32>(~(~48320u), global0.x, u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a.x, global0.x, global0.x) ^ vec4<u32>(arg_0.x, 37251u, global0.x, arg_0.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(40024u, global0.x, global0.x, u_input.a.x), vec4<u32>(global0.x, arg_0.x, global0.x, global0.x), vec4<u32>(arg_0.x, arg_0.x, 4294967295u, u_input.a.x)))));
    return Struct_1(countOneBits(~arg_0), _wgslsmith_add_i32(select(firstLeadingBit(_wgslsmith_mod_i32(1i, -30184i)), abs(-var_0.x), select(true, true, true)), -1i), ~vec2<i32>(var_0.x, -8531i), -firstLeadingBit(var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-865f)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(621f, 910f)))))));
    var var_1 = _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(firstLeadingBit(u_input.b), ~((global0.yy >> (vec2<u32>(u_input.c, 0u) % vec2<u32>(32u))) & ~global0.xx)), global0.yz);
    var var_2 = func_1(global0.xx);
    let var_3 = Struct_2(vec3<bool>(true, all(select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(false, false))), _wgslsmith_div_u32(24193u, _wgslsmith_sub_u32(u_input.b.x, 1u)) <= _wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_2.a.x, global0.x, global0.x), abs(vec4<u32>(var_2.a.x, 4294967295u, 0u, u_input.a.x)))), vec4<i32>(_wgslsmith_add_i32(var_2.b, -7376i), var_2.c.x, -26459i, -4143i));
    let var_4 = _wgslsmith_mult_i32(~0i, var_2.c.x);
    var var_5 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -219f, _wgslsmith_f_op_f32(trunc(-573f)), -282f)))));
    var_1 = ~min(_wgslsmith_mult_u32(u_input.a.x, ~1u & ~global0.x), ~(~var_2.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(-76045i, 172f, _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(countOneBits(var_3.b.yz), -vec2<i32>(1673i, -22108i) & (var_2.c | var_2.c)), _wgslsmith_mod_vec2_i32(firstTrailingBit(firstTrailingBit(vec2<i32>(var_4, -23315i))), ~vec2<i32>(var_4, -2147483647i))), var_0, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_5.wy) - vec2<f32>(var_0, 1000f))), _wgslsmith_div_vec2_f32(var_5.yy, _wgslsmith_f_op_vec2_f32(-var_5.xx)))));
}

