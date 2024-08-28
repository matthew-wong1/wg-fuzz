struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 21> = array<vec2<i32>, 21>(vec2<i32>(1249i, 22382i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(-1i, 21674i), vec2<i32>(-76767i, 2147483647i), vec2<i32>(0i, 0i), vec2<i32>(-4133i, i32(-2147483648)), vec2<i32>(-1i, -1380i), vec2<i32>(-21198i, -23558i), vec2<i32>(27968i, 2147483647i), vec2<i32>(-1i, 2147483647i), vec2<i32>(0i, -1i), vec2<i32>(-32331i, 2147483647i), vec2<i32>(-36049i, -22953i), vec2<i32>(-17759i, 86412i), vec2<i32>(2147483647i, -103837i), vec2<i32>(4994i, 13696i), vec2<i32>(-1i, 14935i), vec2<i32>(-45181i, 2147483647i), vec2<i32>(i32(-2147483648), 568i), vec2<i32>(-35472i, 0i), vec2<i32>(2147483647i, -51619i));

var<private> global1: vec3<i32> = vec3<i32>(2147483647i, 1i, 2147483647i);

var<private> global2: vec3<bool> = vec3<bool>(false, false, true);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_4) -> vec4<i32> {
    return _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(-12903i, global1.x, -5218i, global1.x) | vec4<i32>(arg_0.a, 0i, 3944i, u_input.c.x), ~firstTrailingBit(vec4<i32>(global1.x, -2147483647i, global1.x, global1.x))), select(vec4<i32>(arg_0.a, global1.x >> (arg_0.b % 32u), 80494i, -29909i), -select(vec4<i32>(arg_0.a, 0i, u_input.d.x, arg_0.a), vec4<i32>(13393i, arg_0.a, global1.x, global1.x), vec4<bool>(true, global2.x, global2.x, global2.x)), !all(vec3<bool>(global2.x, global2.x, global2.x)))) & ~vec4<i32>(-54314i, u_input.c.x, ~1i, firstLeadingBit(1i));
}

fn func_2(arg_0: Struct_1) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(1195f - _wgslsmith_f_op_f32(floor(1000f)));
    let var_1 = max(-(func_3(Struct_4(-36344i, 56714u, -341f)) ^ ~_wgslsmith_div_vec4_i32(vec4<i32>(global1.x, global1.x, u_input.c.x, global1.x), vec4<i32>(23800i, global1.x, 71930i, global1.x))), -vec4<i32>(_wgslsmith_div_i32(~global1.x, -u_input.a), countOneBits(abs(41179i)), ~3596i, 19853i));
    global1 = ~var_1.ywz;
    let var_2 = Struct_3(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-819f * -1000f) + -794f), _wgslsmith_f_op_f32(f32(-1f) * -638f), var_0), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(433f, var_0, -1000f), vec3<f32>(var_0, var_0, 181f), !vec3<bool>(arg_0.a, false, arg_0.a))))), Struct_1(global2.x), Struct_1(false));
    global2 = vec3<bool>((select(min(u_input.b, u_input.b), u_input.b, all(vec4<bool>(false, global2.x, global2.x, false))) < (~u_input.b | ~4294967295u)) && !(!var_2.c.a), all(global2.yz), all(!select(vec4<bool>(global2.x, arg_0.a, var_2.b.a, false), !vec4<bool>(arg_0.a, arg_0.a, global2.x, arg_0.a), true)));
    return var_2;
}

fn func_4(arg_0: Struct_3) -> i32 {
    let var_0 = -(~min(~vec2<i32>(23103i, u_input.d.x), ~vec2<i32>(0i, 1i))) << ((~max(select(vec2<u32>(u_input.b, 0u), vec2<u32>(0u, 4294967295u), global2.x), max(vec2<u32>(4294967295u, 1047u), vec2<u32>(u_input.b, u_input.b))) >> (min(_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, u_input.b)), vec2<u32>(u_input.b, 11091u)), _wgslsmith_mod_vec2_u32(vec2<u32>(14786u, u_input.b), vec2<u32>(u_input.b, 1u)) | vec2<u32>(25758u, u_input.b)) % vec2<u32>(32u))) % vec2<u32>(32u));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a.x, arg_0.a.x) - _wgslsmith_f_op_f32(arg_0.a.x - arg_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-185f, -414f)), _wgslsmith_f_op_f32(arg_0.a.x * arg_0.a.x), func_2(func_2(arg_0.c).b).b.a))));
    global2 = vec3<bool>(arg_0.b.a, all(select(vec3<bool>(false, true, global2.x), !select(vec3<bool>(false, arg_0.b.a, global2.x), vec3<bool>(true, global2.x, global2.x), global2.x), select(vec3<bool>(arg_0.c.a, true, global2.x), vec3<bool>(false, arg_0.b.a, arg_0.c.a), vec3<bool>(arg_0.b.a, arg_0.c.a, true)))), arg_0.b.a);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(560f, -2856f)))) + arg_0.a.x)) + _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1000f, arg_0.a.x))));
    var_2 = func_2(arg_0.c).a.x;
    return ~select(16490i, max(var_0.x, ~u_input.c.x >> (u_input.b % 32u)), all(!select(vec3<bool>(true, false, arg_0.b.a), vec3<bool>(global2.x, arg_0.c.a, false), true)));
}

fn func_5(arg_0: i32, arg_1: vec2<u32>, arg_2: i32, arg_3: Struct_4) -> vec3<f32> {
    var var_0 = -718f;
    global1 = vec3<i32>(~_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(-vec3<i32>(0i, arg_0, -2147483647i), -vec3<i32>(35117i, arg_2, arg_3.a)), vec3<i32>(global1.x, 2147483647i, 0i) << (vec3<u32>(arg_3.b, arg_1.x, arg_1.x) % vec3<u32>(32u))), -481i, arg_3.a);
    global0 = array<vec2<i32>, 21>();
    global2 = select(!select(!vec3<bool>(global2.x, global2.x, true), select(vec3<bool>(false, global2.x, global2.x), select(vec3<bool>(global2.x, true, global2.x), vec3<bool>(global2.x, false, global2.x), vec3<bool>(true, true, false)), !vec3<bool>(true, global2.x, false)), select(!vec3<bool>(global2.x, global2.x, global2.x), select(vec3<bool>(true, true, global2.x), vec3<bool>(false, global2.x, true), false), true)), vec3<bool>(global1.x > u_input.c.x, false, func_2(func_2(Struct_1(global2.x)).c).c.a), !((arg_3.b != _wgslsmith_add_u32(arg_1.x, 22495u)) & !select(global2.x, false, true)));
    var_0 = arg_3.c;
    return vec3<f32>(arg_3.c, arg_3.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1776f * _wgslsmith_f_op_f32(arg_3.c * arg_3.c)), arg_3.c));
}

fn func_6(arg_0: vec3<bool>, arg_1: vec3<f32>, arg_2: vec2<i32>) -> Struct_1 {
    global0 = array<vec2<i32>, 21>();
    let var_0 = _wgslsmith_f_op_f32(exp2(arg_1.x));
    let var_1 = (_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 1u, u_input.b, u_input.b) ^ vec4<u32>(u_input.b, 38899u, 4294967295u, u_input.b), ~vec4<u32>(4294967295u, 9535u, u_input.b, 1648u)), ~(~vec4<u32>(u_input.b, 4294967295u, u_input.b, u_input.b))) ^ ~vec4<u32>(33968u, min(24802u, 3693u), u_input.b, 1u)) & vec4<u32>(_wgslsmith_div_u32(~(~u_input.b), 0u), u_input.b, u_input.b, u_input.b);
    return func_2(func_2(Struct_1(global2.x)).c).b;
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<f32>) -> vec3<i32> {
    var var_0 = 315f;
    var var_1 = arg_2;
    global2 = vec3<bool>(true, var_1.a, true);
    var var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_3.x, -131f, 1000f), arg_3))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -885f)), -389f, arg_3.x), !vec3<bool>(all(vec3<bool>(global2.x, false, false)), true, false))), func_6(select(select(!vec3<bool>(false, arg_0, true), select(vec3<bool>(arg_1.a, global2.x, arg_1.a), vec3<bool>(arg_2.a, var_1.a, var_1.a), vec3<bool>(var_1.a, true, arg_1.a)), vec3<bool>(var_1.a, true, var_1.a)), !vec3<bool>(true, true, global2.x), vec3<bool>(!global2.x, global2.x, arg_1.a)), _wgslsmith_f_op_vec3_f32(func_5(func_4(func_2(arg_1)), _wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.b, u_input.b), vec2<u32>(1u, 4294967295u)), -38867i, Struct_4(4719i, 1u, _wgslsmith_f_op_f32(f32(-1f) * -425f)))), reverseBits(_wgslsmith_sub_vec2_i32(u_input.d, countOneBits(vec2<i32>(44089i, 33850i))))), func_6(select(!vec3<bool>(global2.x, var_1.a, true), !(!vec3<bool>(global2.x, true, arg_1.a)), all(vec3<bool>(false, false, arg_1.a)) == arg_0), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_div_f32(arg_3.x, arg_3.x), arg_3.x, arg_3.x))), u_input.c));
    var var_3 = _wgslsmith_mult_i32(16144i, _wgslsmith_sub_i32(~_wgslsmith_mult_i32(u_input.d.x, 4173i), 1i)) <= (u_input.a << (65212u % 32u));
    return vec3<i32>(~global1.x, global1.x, -53243i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_mult_vec3_i32(-countOneBits(vec3<i32>(global1.x, -2147483647i, ~global1.x)), vec3<i32>(-1i) * -_wgslsmith_mult_vec3_i32(func_1(false, Struct_1(true), Struct_1(global2.x), vec3<f32>(1160f, -1338f, 1886f)), ~vec3<i32>(global1.x, global1.x, 2147483647i)));
    let var_0 = _wgslsmith_mult_vec3_i32(-(vec3<i32>(-1i) * -vec3<i32>(40762i, global1.x, global1.x)), select(vec3<i32>(reverseBits(-2147483647i), 0i, 1i) & select(~vec3<i32>(1i, 0i, 41968i), _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, 0i, -41099i), vec3<i32>(0i, global1.x, 72690i)), u_input.b != u_input.b), abs(func_1(global2.x, Struct_1(global2.x), Struct_1(true), vec3<f32>(-1000f, -1782f, -1198f)) & func_1(false, Struct_1(true), Struct_1(true), vec3<f32>(-587f, 117f, -338f))), global2.x));
    let var_1 = global1.zx;
    var var_2 = Struct_1(select(all(select(vec3<bool>(global2.x, global2.x, true), vec3<bool>(global2.x, global2.x, global2.x), vec3<bool>(global2.x, false, global2.x))), true, func_2(Struct_1(false)).b.a) & select(any(vec4<bool>(global2.x, false, global2.x, global2.x)), all(vec3<bool>(global2.x, global2.x, false)), true));
    var var_3 = Struct_4(_wgslsmith_mod_i32(var_0.x, func_3(Struct_4(-52045i, 0u, 1000f)).x) | var_0.x, abs(u_input.b >> (_wgslsmith_clamp_u32(4294967295u, abs(u_input.b), _wgslsmith_dot_vec3_u32(vec3<u32>(10543u, u_input.b, u_input.b), vec3<u32>(u_input.b, 1u, u_input.b))) % 32u)), 576f);
    global0 = array<vec2<i32>, 21>();
    global0 = array<vec2<i32>, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, _wgslsmith_mult_vec4_u32(~vec4<u32>(var_3.b ^ 1u, _wgslsmith_clamp_u32(var_3.b, 1u, var_3.b), 0u, u_input.b), firstTrailingBit(firstLeadingBit(~vec4<u32>(var_3.b, u_input.b, var_3.b, 55933u)))));
}

